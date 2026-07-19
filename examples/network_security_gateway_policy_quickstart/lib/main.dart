/// Network Security gateway security policy quickstart.
///
/// Enables `networksecurity.googleapis.com` and creates an empty regional
/// gateway security policy. No Secure Web Proxy gateway or rules are attached.
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/network.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

/// Network Security stack: empty gateway security policy.
final class NetworkSecurityGatewayPolicyStack extends Stack {
  NetworkSecurityGatewayPolicyStack({required String projectId})
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
      GoogleNetworkSecurityGatewaySecurityPolicy(
        localName: 'swp',
        name: TfArg.literal('terradart-gateway-policy'),
        location: TfArg.literal('us-central1'),
        description: TfArg.literal('TerraDart smoke gateway security policy'),
        dependsOn: [ResourceDependency(apiNetworkSecurity)],
      ),
    );
  }
}
