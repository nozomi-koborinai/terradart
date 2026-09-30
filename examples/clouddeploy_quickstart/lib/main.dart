/// Cloud Deploy quickstart -- an end-to-end terradart example.
///
/// Defines a `DeployStack` that enables the Cloud Deploy API and provisions:
/// - a Cloud Run delivery target,
/// - a delivery pipeline with a single stage targeting it,
/// - a custom target type (render/deploy via a custom action),
/// - a suspended automation (promote-release rule; does not fire rollouts),
/// - a deploy policy that restricts automation-driven rollouts,
/// - resource-scoped IAM members so a deployer SA can view each of the three
///   plus `roles/clouddeploy.releaser` on the pipeline (needed to attach the
///   automation SA).
///
/// Nested config blocks are passed as structured maps (the thin curated
/// factories expose them as `TfArg<Map<String, dynamic>>`). Pipelines, targets,
/// custom target types, automations, and deploy policies are config resources
/// (the catalog SKU is for *active multi-target* pipelines; this stack keeps
/// a single target and `suspended: true` on the automation), so the stack
/// creates and destroys cleanly in a single project.
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/clouddeploy.dart';
import 'package:terradart_google/data.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

/// Cloud Deploy Stack: a Run target + pipeline + custom type + automation +
/// deploy policy.
final class DeployStack extends Stack {
  DeployStack({required String projectId})
    : super(
        providers: [GoogleProvider(project: projectId, region: 'us-central1')],
        appExports: AppExports('lib/generated/deploy_stack.app.dart'),
      ) {
    final current = addData(GoogleProject(localName: 'current'));

    final apiClouddeploy = add(
      GoogleProjectService(
        localName: 'api_clouddeploy',
        service: .literal('clouddeploy.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    // Identity for the resource-scoped IAM members below. Create the SA
    // in-stack so apply does not fail on a nonexistent principal. The same
    // SA is the Cloud Deploy automation identity (suspended, so it never
    // actually promotes a release).
    final deployer = add(
      GoogleServiceAccount(
        localName: 'deployer',
        accountId: .literal('clouddeploy-deployer'),
        displayName: .literal('Cloud Deploy automation SA'),
      ),
    );

    final runTarget = add(
      GoogleClouddeployTarget(
        localName: 'prod_run',
        name: .literal('terradart-run-target'),
        location: .literal('us-central1'),
        description: .literal('Cloud Run production target'),
        run: ClouddeployTargetRun(
          location: .literal('projects/$projectId/locations/us-central1'),
        ),
        dependsOn: [ResourceDependency(apiClouddeploy)],
      ),
    );

    final pipeline = add(
      GoogleClouddeployDeliveryPipeline(
        localName: 'app_pipeline',
        name: .literal('terradart-pipeline'),
        location: .literal('us-central1'),
        description: .literal('App delivery pipeline'),
        serialPipeline: ClouddeployDeliveryPipelineSerialPipeline(
          stages: [
            ClouddeployDeliveryPipelineSerialPipelineStages(
              targetId: .literal('terradart-run-target'),
              profiles: .literal([]),
            ),
          ],
        ),
        dependsOn: [
          ResourceDependency(apiClouddeploy),
          ResourceDependency(runTarget),
        ],
      ),
    );

    final customType = add(
      GoogleClouddeployCustomTargetType(
        localName: 'custom',
        name: .literal('terradart-custom-target-type'),
        location: .literal('us-central1'),
        description: .literal('Custom target type (render + deploy)'),
        actions: .customActions(
          ClouddeployCustomTargetTypeCustomActions(
            renderAction: .literal('render'),
            deployAction: .literal('deploy'),
          ),
        ),
        dependsOn: [ResourceDependency(apiClouddeploy)],
      ),
    );

    // Resource-scoped viewer grants — prefer these over project-wide
    // `roles/clouddeploy.viewer` so the deployer SA only sees this stack.
    add(
      GoogleClouddeployTargetIamMember(
        localName: 'deployer_target_viewer',
        name: .ref(runTarget.nameRef),
        location: .literal('us-central1'),
        role: .literal('roles/clouddeploy.viewer'),
        member: .ref(deployer.iamMember),
        dependsOn: [
          ResourceDependency(runTarget),
          ResourceDependency(deployer),
        ],
      ),
    );

    add(
      GoogleClouddeployDeliveryPipelineIamMember(
        localName: 'deployer_pipeline_viewer',
        name: .ref(pipeline.nameRef),
        location: .literal('us-central1'),
        role: .literal('roles/clouddeploy.viewer'),
        member: .ref(deployer.iamMember),
        dependsOn: [ResourceDependency(pipeline), ResourceDependency(deployer)],
      ),
    );

    final pipelineReleaser = add(
      GoogleClouddeployDeliveryPipelineIamMember(
        localName: 'deployer_pipeline_releaser',
        name: .ref(pipeline.nameRef),
        location: .literal('us-central1'),
        role: .literal('roles/clouddeploy.releaser'),
        member: .ref(deployer.iamMember),
        dependsOn: [ResourceDependency(pipeline), ResourceDependency(deployer)],
      ),
    );

    // Cloud Deploy's service agent must impersonate the automation SA.
    final deployerActAs = add(
      GoogleServiceAccountIamMember(
        localName: 'deployer_actas',
        serviceAccountId: deployer.ref,
        role: .literal('roles/iam.serviceAccountUser'),
        member: .literal(
          'serviceAccount:service-${current.number.interpolation}'
          '@gcp-sa-clouddeploy.iam.gserviceaccount.com',
        ),
        dependsOn: [ResourceDependency(deployer)],
      ),
    );

    add(
      GoogleClouddeployCustomTargetTypeIamMember(
        localName: 'deployer_custom_type_viewer',
        name: .ref(customType.nameRef),
        location: .literal('us-central1'),
        role: .literal('roles/clouddeploy.viewer'),
        member: .ref(deployer.iamMember),
        dependsOn: [
          ResourceDependency(customType),
          ResourceDependency(deployer),
        ],
      ),
    );

    // Suspended so apply never fires a promote/rollout. The rule still
    // exercises the nested `rules` / `selector` maps.
    add(
      GoogleClouddeployAutomation(
        localName: 'promote',
        name: .literal('terradart-automation'),
        location: .literal('us-central1'),
        deliveryPipeline: .ref(pipeline.nameRef),
        serviceAccount: deployer.ref,
        suspended: .literal(true),
        selector: ClouddeployAutomationSelector(
          targets: [
            ClouddeployAutomationSelectorTargets(
              id: .literal('terradart-run-target'),
            ),
          ],
        ),
        rules: [
          .promoteReleaseRule(
            ClouddeployAutomationRulesPromoteReleaseRule(
              id: .literal('promote-release'),
            ),
          ),
        ],
        dependsOn: [
          ResourceDependency(apiClouddeploy),
          ResourceDependency(pipeline),
          ResourceDependency(runTarget),
          ResourceDependency(deployer),
          ResourceDependency(pipelineReleaser),
          ResourceDependency(deployerActAs),
        ],
      ),
    );

    add(
      GoogleClouddeployDeployPolicy(
        localName: 'freeze',
        name: .literal('terradart-deploy-policy'),
        location: .literal('us-central1'),
        selectors: [
          ClouddeployDeployPolicySelectors(
            deliveryPipeline: ClouddeployDeployPolicySelectorsDeliveryPipeline(
              id: .literal('terradart-pipeline'),
            ),
          ),
        ],
        rules: [
          ClouddeployDeployPolicyRules(
            rolloutRestriction: ClouddeployDeployPolicyRulesRolloutRestriction(
              id: .literal('no-automation'),
              invokers: [.literal(.deployAutomation)],
            ),
          ),
        ],
        dependsOn: [
          ResourceDependency(apiClouddeploy),
          ResourceDependency(pipeline),
        ],
      ),
    );

    // Literal pipeline name -- emitted as a Dart constant at synth time.
    addConstant('pipelineName', .ref(pipeline.nameRef));

    // Full target resource id -- Terraform output only (computed).
    addOutput('run_target_id', .ref(runTarget.id));
  }
}
