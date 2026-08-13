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

    final policy = add(
      GoogleNetworkSecurityGatewaySecurityPolicy(
        localName: 'swp',
        name: TfArg.literal('terradart-gateway-policy'),
        location: TfArg.literal('us-central1'),
        description: TfArg.literal('TerraDart smoke gateway security policy'),
        dependsOn: [ResourceDependency(apiNetworkSecurity)],
      ),
    );

    add(
      GoogleNetworkSecurityGatewaySecurityPolicyRule(
        localName: 'allow_example',
        name: TfArg.literal('terradart-allow-example'),
        location: TfArg.literal('us-central1'),
        gatewaySecurityPolicy: TfArg.ref(policy.nameRef),
        enabled: TfArg.literal(true),
        priority: TfArg.literal(1),
        sessionMatcher: TfArg.literal("host() == 'example.com'"),
        basicProfile: TfArg.literal(
          NetworkSecurityGatewaySecurityPolicyRuleBasicProfile.allow,
        ),
        dependsOn: [ResourceDependency(policy)],
      ),
    );
  }
}
