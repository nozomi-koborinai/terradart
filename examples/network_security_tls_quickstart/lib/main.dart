/// Network Security TLS policies quickstart — client + server TLS configs.
///
/// Enables `networksecurity.googleapis.com` and provisions empty global
/// client/server TLS policies. Creating a policy alone does not attach it to
/// a backend/proxy or bill mesh SKUs.
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/network.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

/// Network Security TLS stack: client + server policy metadata.
final class NetworkSecurityTlsStack extends Stack {
  NetworkSecurityTlsStack({required String projectId})
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
      GoogleNetworkSecurityClientTlsPolicy(
        localName: 'backend',
        name: TfArg.literal('terradart-client-tls'),
        location: TfArg.literal('global'),
        description: TfArg.literal('TerraDart smoke client TLS policy'),
        dependsOn: [ResourceDependency(apiNetworkSecurity)],
      ),
    );

    add(
      GoogleNetworkSecurityServerTlsPolicy(
        localName: 'frontend',
        name: TfArg.literal('terradart-server-tls'),
        location: TfArg.literal('global'),
        description: TfArg.literal('TerraDart smoke server TLS policy'),
        allowOpen: TfArg.literal(true),
        dependsOn: [ResourceDependency(apiNetworkSecurity)],
      ),
    );
  }
}
