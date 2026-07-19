/// Network Security backend authentication config quickstart.
///
/// Enables `networksecurity.googleapis.com` and creates a global backend
/// authentication config with public trust roots. Creating the config alone
/// does not attach it to a BackendService or bill Network Security data-plane
/// SKUs.
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/network.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

/// Network Security stack: backend authentication config metadata.
final class NetworkSecurityBackendAuthStack extends Stack {
  NetworkSecurityBackendAuthStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    final apiNetworkSecurity = add(
      GoogleProjectService(
        localName: 'api_networksecurity',
        service: TfArg.literal('networksecurity.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    add(
      GoogleNetworkSecurityBackendAuthenticationConfig(
        localName: 'backend_auth',
        name: TfArg.literal('terradart-backend-auth'),
        location: TfArg.literal('global'),
        description: TfArg.literal('TerraDart smoke backend authentication'),
        wellKnownRoots: TfArg.literal(
          NetworkSecurityBackendAuthenticationConfigWellKnownRoots.publicRoots,
        ),
        dependsOn: [ResourceDependency(apiNetworkSecurity)],
      ),
    );
  }
}
