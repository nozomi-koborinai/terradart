/// Cloud Deploy quickstart -- an end-to-end terradart example.
///
/// Defines a `DeployStack` that enables the Cloud Deploy API and provisions:
/// - a Cloud Run delivery target,
/// - a delivery pipeline with a single stage targeting it,
/// - a custom target type (render/deploy via a custom action),
/// - resource-scoped IAM members so a deployer SA can view each of the three.
///
/// Nested config blocks are passed as structured maps (the thin curated
/// factories expose them as `TfArg<Map<String, dynamic>>`). Pipelines, targets,
/// and custom target types are free config resources (you are billed per
/// rollout, not per pipeline/target), so the stack creates and destroys cleanly
/// in a single project.
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/clouddeploy.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

/// Cloud Deploy Stack: a Run target + delivery pipeline + custom target type.
final class DeployStack extends Stack {
  DeployStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    final apiClouddeploy = add(
      GoogleProjectService(
        localName: 'api_clouddeploy',
        service: TfArg.literal('clouddeploy.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    // Identity for the resource-scoped IAM members below. Create the SA
    // in-stack so apply does not fail on a nonexistent principal.
    final deployer = add(
      GoogleServiceAccount(
        localName: 'deployer',
        accountId: TfArg.literal('clouddeploy-deployer'),
        displayName: TfArg.literal('Cloud Deploy viewer (IAM demo)'),
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
