/// GKE Hub Multi-Cluster Service Discovery feature quickstart.
///
/// Enables `gkehub.googleapis.com` + `multiclusterservicediscovery.googleapis.com`
/// and activates the hub feature (no cluster membership required), plus an
/// additive IAM grant for a fleet-reader service account.
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_google/container.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

/// GKE Hub feature stack: Multi-Cluster Service Discovery.
final class GkeHubFeatureStack extends Stack {
  GkeHubFeatureStack({required String projectId})
    : super(
        providers: [GoogleProvider(project: projectId, region: 'us-central1')],
      ) {
    final apiGkeHub = add(
      GoogleProjectService(
        'api_gkehub',
        service: .literal('gkehub.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    final apiMcsd = add(
      GoogleProjectService(
        'api_mcsd',
        service: .literal('multiclusterservicediscovery.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    final feature = add(
      GoogleGkeHubFeature(
        'mcsd',
        name: .literal('multiclusterservicediscovery'),
        location: .literal('global'),
        dependsOn: [apiGkeHub, apiMcsd],
      ),
    );

    // Resource-scoped `setIamPolicy` validates that the member exists, so the
    // grantee is an in-stack service account rather than a fabricated group.
    final fleetReader = add(
      GoogleServiceAccount(
        'fleet_reader',
        accountId: .literal('terradart-fleet-reader'),
        displayName: .literal('GKE Hub fleet reader'),
      ),
    );

    add(
      GoogleGkeHubFeatureIamMember(
        'mcsd_viewer',
        feature: feature.ref,
        role: .literal('roles/viewer'),
        member: fleetReader.principal,
        dependsOn: [feature, fleetReader],
      ),
    );
  }
}
