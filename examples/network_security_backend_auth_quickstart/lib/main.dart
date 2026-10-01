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
        providers: [GoogleProvider(project: projectId, region: 'us-central1')],
      ) {
    final apiNetworkSecurity = add(
      GoogleProjectService(
        'api_networksecurity',
        service: .literal('networksecurity.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    add(
      GoogleNetworkSecurityBackendAuthenticationConfig(
        'backend_auth',
        name: .literal('terradart-backend-auth'),
        location: .literal('global'),
        description: .literal('TerraDart smoke backend authentication'),
        wellKnownRoots: .literal(.publicRoots),
        dependsOn: [apiNetworkSecurity],
      ),
    );
  }
}
