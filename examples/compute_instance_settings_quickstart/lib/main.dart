/// Compute Engine zonal instance settings quickstart.
///
/// Enables `compute.googleapis.com` and manages
/// `google_compute_instance_settings` for `us-central1-a` with a single
/// metadata item. No VMs are provisioned.
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/compute.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

/// Zonal instance settings Stack: metadata defaults only.
final class ComputeInstanceSettingsStack extends Stack {
  ComputeInstanceSettingsStack({required String projectId})
    : super(
        providers: [GoogleProvider(project: projectId, region: 'us-central1')],
      ) {
    final apiCompute = add(
      GoogleProjectService(
        localName: 'api_compute',
        service: .literal('compute.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    add(
      GoogleComputeInstanceSettings(
        localName: 'zonal',
        zone: .literal('us-central1-a'),
        metadata: ComputeInstanceSettingsMetadata(
          items: .literal({'terradart-smoke': '1'}),
        ),
        dependsOn: [apiCompute],
      ),
    );
  }
}
