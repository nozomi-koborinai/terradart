import 'package:terradart_google/compute.dart';
import 'package:test/test.dart';

void main() {
  test('stackType / updateStrategy are typed enums and serialize raw', () {
    final peering = GoogleComputeNetworkPeering(
      'peer',
      name: const TfArg.literal('peer'),
      network: .literal('net-a'),
      peerNetwork: .literal('net-b'),
      stackType: ComputeNetworkPeeringStackType.ipv4Ipv6,
      updateStrategy: ComputeNetworkPeeringUpdateStrategy.consensus,
    );
    expect(peering.argMap['stack_type']!.toTfJson(), 'IPV4_IPV6');
    expect(peering.argMap['update_strategy']!.toTfJson(), 'CONSENSUS');
  });
}
