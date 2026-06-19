/// Network Security ULL mirroring quickstart — engine, collector, and rule.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/network.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/time.dart';

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
      location: TfArg.literal(zone),
      ullMirroringEngineId: TfArg.literal('terradart-ull-engine'),
      dependsOn: apiDeps,
    );
    add(engine);

    final collector = GoogleNetworkSecurityUllMirroringCollector(
      localName: 'appliance',
      location: TfArg.literal(zone),
      ullMirroringCollectorId: TfArg.literal('terradart-ull-collector'),
      engine: TfArg.ref(engine.nameRef),
      forwardingRule: TfArg.literal(
        'projects/$projectId/regions/us-south1/forwardingRules/terradart-ull-fr',
      ),
      dependsOn: [...apiDeps, ResourceDependency(engine)],
    );
    add(collector);

    add(
      GoogleNetworkSecurityUllMirroringCollectorRule(
        localName: 'mirror_tcp',
        location: TfArg.literal(zone),
        ullMirroringCollector: TfArg.ref(collector.nameRef),
        ullMirroringCollectorRuleId: TfArg.literal('terradart-ull-rule'),
        match: NetworkSecurityUllMirroringCollectorRuleMatch(
          direction: NetworkSecurityUllMirroringCollectorRuleDirection.ingress,
          ipProtocols: [TfArg.literal('tcp')],
          srcIpRanges: [TfArg.literal('10.0.0.0/8')],
        ),
        dependsOn: [...apiDeps, ResourceDependency(collector)],
      ),
    );
  }
}
