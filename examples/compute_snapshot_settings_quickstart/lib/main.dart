/// Compute Engine snapshot settings quickstart.
///
/// Enables `compute.googleapis.com` and sets the project singleton
/// `google_compute_snapshot_settings` storage location policy to
/// `LOCAL_REGION` (cheap default; Terraform destroy is state-only).
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/compute.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

/// Compute snapshot settings Stack: project default snapshot location policy.
final class ComputeSnapshotSettingsStack extends Stack {
  ComputeSnapshotSettingsStack({required String projectId})
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
      GoogleComputeSnapshotSettings(
        localName: 'defaults',
        storageLocation: ComputeSnapshotSettingsStorageLocation(
          policy: TfArg.literal(
            ComputeSnapshotSettingsStorageLocationPolicy.localRegion,
          ),
        ),
        dependsOn: [ResourceDependency(apiCompute)],
      ),
    );
  }
}
