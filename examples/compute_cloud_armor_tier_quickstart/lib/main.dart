/// Compute Engine Cloud Armor tier quickstart.
///
/// Enables `compute.googleapis.com` and sets the project singleton
/// `google_compute_project_cloud_armor_tier` to `CA_STANDARD` (do not use
/// Enterprise tiers — Annual bills ~$3000/mo).
///
/// Terraform destroy is state-only (upstream `only_remove_from_state`).
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/compute.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

/// Cloud Armor tier Stack: project CA_STANDARD singleton.
final class ComputeCloudArmorTierStack extends Stack {
  ComputeCloudArmorTierStack({required String projectId})
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
      GoogleComputeProjectCloudArmorTier(
        localName: 'armor_tier',
        cloudArmorTier: TfArg.literal(
          ComputeProjectCloudArmorTier.caStandard,
        ),
        dependsOn: [ResourceDependency(apiCompute)],
      ),
    );
  }
}
