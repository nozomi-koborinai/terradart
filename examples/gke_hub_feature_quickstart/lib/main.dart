/// GKE Hub Multi-Cluster Service Discovery feature quickstart.
///
/// Enables `gkehub.googleapis.com` + `multiclusterservicediscovery.googleapis.com`
/// and activates the hub feature (no cluster membership required).
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/container.dart';
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

    add(
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
  }
}
