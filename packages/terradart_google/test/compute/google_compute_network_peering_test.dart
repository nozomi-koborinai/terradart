import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/compute.dart';
import 'package:test/test.dart';

void main() {
  test('stackType / updateStrategy are typed enums and serialize raw', () {
    final peering = GoogleComputeNetworkPeering(
      localName: 'peer',
      name: TfArg.literal('peer'),
      network: TfArg.literal('net-a'),
      peerNetwork: TfArg.literal('net-b'),
      stackType: TfArg.literal(ComputeNetworkPeeringStackType.ipv4Ipv6),
      updateStrategy:
          TfArg.literal(ComputeNetworkPeeringUpdateStrategy.consensus),
    );
    expect(peering.argMap['stack_type']!.toTfJson(), 'IPV4_IPV6');
    expect(peering.argMap['update_strategy']!.toTfJson(), 'CONSENSUS');
  });
}
