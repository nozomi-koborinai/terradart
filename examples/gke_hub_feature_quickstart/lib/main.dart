/// GKE Hub Multi-Cluster Service Discovery feature quickstart.
///
/// Enables `gkehub.googleapis.com` + `multiclusterservicediscovery.googleapis.com`
/// and activates the hub feature (no cluster membership required), plus an
/// additive IAM grant for a fleet-reader service account.
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/container.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

/// GKE Hub feature stack: Multi-Cluster Service Discovery.
final class GkeHubFeatureStack extends Stack {
  GkeHubFeatureStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    final apiGkeHub = add(
      GoogleProjectService(
        localName: 'api_gkehub',
        service: TfArg.literal('gkehub.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    final apiMcsd = add(
      GoogleProjectService(
        localName: 'api_mcsd',
        service: TfArg.literal('multiclusterservicediscovery.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    final feature = add(
      GoogleGkeHubFeature(
        localName: 'mcsd',
        name: TfArg.literal('multiclusterservicediscovery'),
        location: TfArg.literal('global'),
        dependsOn: [
          ResourceDependency(apiGkeHub),
          ResourceDependency(apiMcsd),
        ],
      ),
    );

    // Resource-scoped `setIamPolicy` validates that the member exists, so the
    // grantee is an in-stack service account rather than a fabricated group.
    final fleetReader = add(
      GoogleServiceAccount(
        localName: 'fleet_reader',
        accountId: TfArg.literal('terradart-fleet-reader'),
        displayName: TfArg.literal('GKE Hub fleet reader'),
      ),
    );

    add(
      GoogleGkeHubFeatureIamMember(
        localName: 'mcsd_viewer',
        name: TfArg.ref(feature.nameRef),
        location: TfArg.literal('global'),
        role: TfArg.literal('roles/viewer'),
        member: TfArg.ref(fleetReader.iamMember),
        dependsOn: [
          ResourceDependency(feature),
          ResourceDependency(fleetReader),
        ],
      ),
    );
  }
}
