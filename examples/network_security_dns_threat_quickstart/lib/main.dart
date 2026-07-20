/// Network Security DNS threat detector (DNS Armor) quickstart.
///
/// Enables `networksecurity.googleapis.com` and creates a global DNS threat
/// detector with provider `INFOBLOX`. At most one detector exists per project.
/// Creating the detector enables DNS Armor usage-based billing when workloads
/// produce internet-bound DNS queries.
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/network.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

/// Network Security stack: DNS Armor threat detector.
final class NetworkSecurityDnsThreatStack extends Stack {
  NetworkSecurityDnsThreatStack({required String projectId})
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
      GoogleNetworkSecurityDnsThreatDetector(
        localName: 'dns_threat',
        name: TfArg.literal('terradart-dns-threat'),
        location: TfArg.literal('global'),
        threatDetectorProvider: TfArg.literal(
          NetworkSecurityDnsThreatDetectorThreatDetectorProvider.infoblox,
        ),
        dependsOn: [ResourceDependency(apiNetworkSecurity)],
      ),
    );
  }
}
