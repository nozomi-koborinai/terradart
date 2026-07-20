/// Compute Engine preview feature quickstart.
///
/// Enables `compute.googleapis.com` and manages
/// `google_compute_preview_feature` for Alpha API access (no VMs).
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/compute.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

/// Compute preview feature stack: `alpha-api-access` unspecified.
final class ComputePreviewFeatureStack extends Stack {
  ComputePreviewFeatureStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    final apiCompute = add(
      GoogleProjectService(
        localName: 'api_compute',
        service: TfArg.literal('compute.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    add(
      GoogleComputePreviewFeature(
        localName: 'alpha',
        name: TfArg.literal('alpha-api-access'),
        activationStatus: TfArg.literal(
          ComputePreviewFeatureActivationStatus.activationStateUnspecified,
        ),
        // API currently accepts only FAST_ROLLOUT (provider basic example).
        rolloutOperation: ComputePreviewFeatureRolloutOperation(
          rolloutInput: ComputePreviewFeatureRolloutOperationRolloutInput(
            predefinedRolloutPlan: TfArg.literal('ROLLOUT_PLAN_FAST_ROLLOUT'),
          ),
        ),
        dependsOn: [ResourceDependency(apiCompute)],
      ),
    );
  }
}
