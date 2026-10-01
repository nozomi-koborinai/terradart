/// Network Security gateway security policy quickstart.
///
/// Enables `networksecurity.googleapis.com` and creates a regional
/// gateway security policy plus one ALLOW rule. No Secure Web Proxy
/// gateway is attached, so the stack does not inspect traffic.
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/network.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

/// Network Security stack: gateway security policy + ALLOW rule.
final class NetworkSecurityGatewayPolicyStack extends Stack {
  NetworkSecurityGatewayPolicyStack({required String projectId})
    : super(
        providers: [GoogleProvider(project: projectId, region: 'us-central1')],
      ) {
    final apiNetworkSecurity = add(
      GoogleProjectService(
        localName: 'api_networksecurity',
        service: .literal('networksecurity.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    final policy = add(
      GoogleNetworkSecurityGatewaySecurityPolicy(
        localName: 'swp',
        name: .literal('terradart-gateway-policy'),
        location: .literal('us-central1'),
        description: .literal('TerraDart smoke gateway security policy'),
        dependsOn: [apiNetworkSecurity],
      ),
    );

    add(
      GoogleNetworkSecurityGatewaySecurityPolicyRule(
        localName: 'allow_example',
        name: .literal('terradart-allow-example'),
        location: .literal('us-central1'),
        gatewaySecurityPolicy: policy.ref,
        enabled: .literal(true),
        priority: .literal(1),
        sessionMatcher: .literal("host() == 'example.com'"),
        basicProfile: .literal(.allow),
        dependsOn: [policy],
      ),
    );
  }
}
