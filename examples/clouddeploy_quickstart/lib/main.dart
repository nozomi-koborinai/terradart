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
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    final current = addData(GoogleProject(localName: 'current'));

    final apiClouddeploy = add(
      GoogleProjectService(
        localName: 'api_clouddeploy',
        service: TfArg.literal('clouddeploy.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    // Identity for the resource-scoped IAM members below. Create the SA
    // in-stack so apply does not fail on a nonexistent principal. The same
    // SA is the Cloud Deploy automation identity (suspended, so it never
    // actually promotes a release).
    final deployer = add(
      GoogleServiceAccount(
        localName: 'deployer',
        accountId: TfArg.literal('clouddeploy-deployer'),
        displayName: TfArg.literal('Cloud Deploy automation SA'),
      ),
    );

    final runTarget = add(
      GoogleClouddeployTarget(
        localName: 'prod_run',
        name: TfArg.literal('terradart-run-target'),
        location: TfArg.literal('us-central1'),
        description: TfArg.literal('Cloud Run production target'),
        run: TfArg.literal(<String, Object?>{
          'location': 'projects/$projectId/locations/us-central1',
        }),
        dependsOn: [ResourceDependency(apiClouddeploy)],
      ),
    );

    final pipeline = add(
      GoogleClouddeployDeliveryPipeline(
        localName: 'app_pipeline',
        name: TfArg.literal('terradart-pipeline'),
        location: TfArg.literal('us-central1'),
        description: TfArg.literal('App delivery pipeline'),
        serialPipeline: TfArg.literal(<String, Object?>{
          'stages': [
            {
              'target_id': 'terradart-run-target',
              'profiles': <String>[],
            },
          ],
        }),
        dependsOn: [
          ResourceDependency(apiClouddeploy),
          ResourceDependency(runTarget),
        ],
      ),
    );

    final customType = add(
      GoogleClouddeployCustomTargetType(
        localName: 'custom',
        name: TfArg.literal('terradart-custom-target-type'),
        location: TfArg.literal('us-central1'),
        description: TfArg.literal('Custom target type (render + deploy)'),
        customActions: TfArg.literal(<String, Object?>{
          'render_action': 'render',
          'deploy_action': 'deploy',
        }),
        dependsOn: [ResourceDependency(apiClouddeploy)],
      ),
    );

    // Resource-scoped viewer grants — prefer these over project-wide
    // `roles/clouddeploy.viewer` so the deployer SA only sees this stack.
    add(
      GoogleClouddeployTargetIamMember(
        localName: 'deployer_target_viewer',
        name: TfArg.ref(runTarget.nameRef),
        location: TfArg.literal('us-central1'),
        role: TfArg.literal('roles/clouddeploy.viewer'),
        member: TfArg.ref(deployer.iamMember),
        dependsOn: [
          ResourceDependency(runTarget),
          ResourceDependency(deployer),
        ],
      ),
    );

    add(
      GoogleClouddeployDeliveryPipelineIamMember(
        localName: 'deployer_pipeline_viewer',
        name: TfArg.ref(pipeline.nameRef),
        location: TfArg.literal('us-central1'),
        role: TfArg.literal('roles/clouddeploy.viewer'),
        member: TfArg.ref(deployer.iamMember),
        dependsOn: [
          ResourceDependency(pipeline),
          ResourceDependency(deployer),
        ],
      ),
    );

    final pipelineReleaser = add(
      GoogleClouddeployDeliveryPipelineIamMember(
        localName: 'deployer_pipeline_releaser',
        name: TfArg.ref(pipeline.nameRef),
        location: TfArg.literal('us-central1'),
        role: TfArg.literal('roles/clouddeploy.releaser'),
        member: TfArg.ref(deployer.iamMember),
        dependsOn: [
          ResourceDependency(pipeline),
          ResourceDependency(deployer),
        ],
      ),
    );

    // Cloud Deploy's service agent must impersonate the automation SA.
    final deployerActAs = add(
      GoogleServiceAccountIamMember(
        localName: 'deployer_actas',
        serviceAccountId: TfArg.ref(deployer.name),
        role: TfArg.literal('roles/iam.serviceAccountUser'),
        member: TfArg.literal(
          'serviceAccount:service-${current.number.interpolation}'
          '@gcp-sa-clouddeploy.iam.gserviceaccount.com',
        ),
        dependsOn: [ResourceDependency(deployer)],
      ),
    );

    add(
      GoogleClouddeployCustomTargetTypeIamMember(
        localName: 'deployer_custom_type_viewer',
        name: TfArg.ref(customType.nameRef),
        location: TfArg.literal('us-central1'),
        role: TfArg.literal('roles/clouddeploy.viewer'),
        member: TfArg.ref(deployer.iamMember),
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
        name: TfArg.literal('terradart-automation'),
        location: TfArg.literal('us-central1'),
        deliveryPipeline: TfArg.ref(pipeline.nameRef),
        serviceAccount: TfArg.ref(deployer.email),
        suspended: TfArg.literal(true),
        selector: TfArg.literal(<String, Object?>{
          'targets': [
            {'id': 'terradart-run-target'},
          ],
        }),
        rules: TfArg.literal([
          {
            'promote_release_rule': {'id': 'promote-release'},
          },
        ]),
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
        name: TfArg.literal('terradart-deploy-policy'),
        location: TfArg.literal('us-central1'),
        selectors: TfArg.literal([
          {
            'delivery_pipeline': {'id': 'terradart-pipeline'},
          },
        ]),
        rules: TfArg.literal([
          {
            'rollout_restriction': {
              'id': 'no-automation',
              'invokers': ['DEPLOY_AUTOMATION'],
            },
          },
        ]),
        dependsOn: [
          ResourceDependency(apiClouddeploy),
          ResourceDependency(pipeline),
        ],
      ),
    );

    // Literal pipeline name -- emitted as a Dart constant at synth time.
    addExport('PIPELINE_NAME', StringExport('terradart-pipeline'));

    // Full target resource id -- Terraform output only (computed).
    addExport(
      'RUN_TARGET_ID',
      ResourceIdExport(runTarget.id, emitTerraformOutput: true),
    );

    setAppExportsOutputPath('lib/generated/deploy_stack.app.dart');
  }
}
