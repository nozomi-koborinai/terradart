import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/compute.dart';
import 'package:test/test.dart';

void main() {
  test('advertiseMode is a typed enum and serializes raw', () {
    final peer = GoogleComputeRouterPeer(
      'peer',
      name: TfArg.literal('peer'),
      router: RefTo.literal('router'),
      interface: TfArg.literal('if-0'),
      peerAsn: TfArg.literal(65001),
      advertiseMode: ComputeRouterPeerAdvertiseMode.custom,
    );
    expect(peer.argMap['advertise_mode']!.toTfJson(), 'CUSTOM');
  });
}
