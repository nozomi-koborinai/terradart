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
    final current = add(GoogleProject('current'));

    final apiClouddeploy = add(
      GoogleProjectService(
        'api_clouddeploy',
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
        'deployer',
        accountId: .literal('clouddeploy-deployer'),
        displayName: .literal('Cloud Deploy automation SA'),
      ),
    );

    final runTarget = add(
      GoogleClouddeployTarget(
        'prod_run',
        name: .literal('terradart-run-target'),
        location: .literal('us-central1'),
        description: .literal('Cloud Run production target'),
        run: ClouddeployTargetRun(
          location: .literal('projects/$projectId/locations/us-central1'),
        ),
        dependsOn: [apiClouddeploy],
      ),
    );

    final pipeline = add(
      GoogleClouddeployDeliveryPipeline(
        'app_pipeline',
        name: .literal('terradart-pipeline'),
        location: .literal('us-central1'),
        description: .literal('App delivery pipeline'),
        serialPipeline: ClouddeployDeliveryPipelineSerialPipeline(
          stages: [
            .new(
              targetId: .literal('terradart-run-target'),
              profiles: .literal([]),
            ),
          ],
        ),
        dependsOn: [apiClouddeploy, runTarget],
      ),
    );

    final customType = add(
      GoogleClouddeployCustomTargetType(
        'custom',
        name: .literal('terradart-custom-target-type'),
        location: .literal('us-central1'),
        description: .literal('Custom target type (render + deploy)'),
        actions: .customActions(
          .new(
            renderAction: .literal('render'),
            deployAction: .literal('deploy'),
          ),
        ),
        dependsOn: [apiClouddeploy],
      ),
    );

    // Resource-scoped viewer grants — prefer these over project-wide
    // `roles/clouddeploy.viewer` so the deployer SA only sees this stack.
    add(
      GoogleClouddeployTargetIamMember(
        'deployer_target_viewer',
        target: runTarget.ref,
        role: .literal('roles/clouddeploy.viewer'),
        member: deployer.principal,
        dependsOn: [runTarget, deployer],
      ),
    );

    add(
      GoogleClouddeployDeliveryPipelineIamMember(
        'deployer_pipeline_viewer',
        deliveryPipeline: pipeline.ref,
        role: .literal('roles/clouddeploy.viewer'),
        member: deployer.principal,
        dependsOn: [pipeline, deployer],
      ),
    );

    final pipelineReleaser = add(
      GoogleClouddeployDeliveryPipelineIamMember(
        'deployer_pipeline_releaser',
        deliveryPipeline: pipeline.ref,
        role: .literal('roles/clouddeploy.releaser'),
        member: deployer.principal,
        dependsOn: [pipeline, deployer],
      ),
    );

    // Cloud Deploy's service agent must impersonate the automation SA.
    final deployerActAs = add(
      GoogleServiceAccountIamMember(
        'deployer_actas',
        serviceAccount: deployer.ref,
        role: .literal('roles/iam.serviceAccountUser'),
        member: .serviceAccount(
          'service-${current.number.interpolation}'
          '@gcp-sa-clouddeploy.iam.gserviceaccount.com',
        ),
        dependsOn: [deployer],
      ),
    );

    add(
      GoogleClouddeployCustomTargetTypeIamMember(
        'deployer_custom_type_viewer',
        customTargetType: customType.ref,
        role: .literal('roles/clouddeploy.viewer'),
        member: deployer.principal,
        dependsOn: [customType, deployer],
      ),
    );

    // Suspended so apply never fires a promote/rollout. The rule still
    // exercises the nested `rules` / `selector` maps.
    add(
      GoogleClouddeployAutomation(
        'promote',
        name: .literal('terradart-automation'),
        location: .literal('us-central1'),
        deliveryPipeline: pipeline.ref,
        serviceAccount: deployer.ref,
        suspended: .literal(true),
        selector: ClouddeployAutomationSelector(
          targets: [.new(id: .literal('terradart-run-target'))],
        ),
        rules: [.promoteReleaseRule(.new(id: .literal('promote-release')))],
        dependsOn: [
          apiClouddeploy,
          pipeline,
          runTarget,
          deployer,
          pipelineReleaser,
          deployerActAs,
        ],
      ),
    );

    add(
      GoogleClouddeployDeployPolicy(
        'freeze',
        name: .literal('terradart-deploy-policy'),
        location: .literal('us-central1'),
        selectors: [
          ClouddeployDeployPolicySelectors(
            deliveryPipeline: .new(id: .literal('terradart-pipeline')),
          ),
        ],
        rules: [
          ClouddeployDeployPolicyRules(
            rolloutRestriction: .new(
              id: .literal('no-automation'),
              invokers: [.literal(.deployAutomation)],
            ),
          ),
        ],
        dependsOn: [apiClouddeploy, pipeline],
      ),
    );

    // Literal pipeline name -- emitted as a Dart constant at synth time.
    addConstant('pipelineName', .ref(pipeline.name));

    // Full target resource id -- Terraform output only (computed).
    addOutput('run_target_id', runTarget.id);
  }
}
