/// Compute Engine default network tier quickstart.
///
/// Enables `compute.googleapis.com` and sets the project singleton
/// `google_compute_project_default_network_tier` to `STANDARD` (cheaper
/// regional default for new external IPs).
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/compute.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

/// Compute default network tier Stack: project STANDARD singleton.
final class ComputeDefaultNetworkTierStack extends Stack {
  ComputeDefaultNetworkTierStack({required String projectId})
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
      GoogleComputeProjectDefaultNetworkTier(
        localName: 'defaults',
        networkTier: TfArg.literal(
          ComputeProjectDefaultNetworkTier.standard,
        ),
        dependsOn: [ResourceDependency(apiCompute)],
      ),
    );
  }
}
