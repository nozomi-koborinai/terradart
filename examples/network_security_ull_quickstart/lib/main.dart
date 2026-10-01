/// Network Security ULL mirroring quickstart — engine, collector, and rule.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/network.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_time/terradart_time.dart';

final class NetworkSecurityUllStack extends Stack {
  NetworkSecurityUllStack({required String projectId})
    : super(
        providers: [
          GoogleProvider(project: projectId, region: 'us-south1'),
          const TimeProvider(),
        ],
      ) {
    const zone = 'us-south1-d';

    final apiDeps = Apis.enable(
      this,
      barrels: [Barrels.network],
      propagationDelay: const Duration(seconds: 60),
    );

    final engine = GoogleNetworkSecurityUllMirroringEngine(
      localName: 'mirror',
      location: .literal(zone),
      ullMirroringEngineId: .literal('terradart-ull-engine'),
      dependsOn: apiDeps,
    );
    add(engine);

    final collector = GoogleNetworkSecurityUllMirroringCollector(
      localName: 'appliance',
      location: .literal(zone),
      ullMirroringCollectorId: .literal('terradart-ull-collector'),
      engine: engine.ref,
      forwardingRule: .literal(
        'projects/$projectId/regions/us-south1/forwardingRules/terradart-ull-fr',
      ),
      dependsOn: [...apiDeps, engine],
    );
    add(collector);

    add(
      GoogleNetworkSecurityUllMirroringCollectorRule(
        localName: 'mirror_tcp',
        location: .literal(zone),
        ullMirroringCollector: collector.ref,
        ullMirroringCollectorRuleId: .literal('terradart-ull-rule'),
        match: NetworkSecurityUllMirroringCollectorRuleMatch(
          direction: NetworkSecurityUllMirroringCollectorRuleDirection.ingress,
          ipProtocols: [.literal('tcp')],
          srcIpRanges: [.literal('10.0.0.0/8')],
        ),
        dependsOn: [...apiDeps, collector],
      ),
    );
  }
}
