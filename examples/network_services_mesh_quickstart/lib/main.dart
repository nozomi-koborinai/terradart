/// Network Services Mesh quickstart — a logical service-mesh namespace.
///
/// Enables `networkservices.googleapis.com` and provisions a global Mesh.
/// Creating a Mesh alone does not attach clusters or bill Anthos Service
/// Mesh cluster/endpoint SKUs.
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/network.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

/// Network Services stack: empty Mesh config object.
final class NetworkServicesMeshStack extends Stack {
  NetworkServicesMeshStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    final apiNetworkServices = add(
      GoogleProjectService(
        localName: 'api_networkservices',
        service: TfArg.literal('networkservices.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    add(
      GoogleNetworkServicesMesh(
        localName: 'app',
        name: TfArg.literal('terradart-mesh'),
        location: TfArg.literal('global'),
        description: TfArg.literal('TerraDart smoke mesh'),
        dependsOn: [ResourceDependency(apiNetworkServices)],
      ),
    );
  }
}
