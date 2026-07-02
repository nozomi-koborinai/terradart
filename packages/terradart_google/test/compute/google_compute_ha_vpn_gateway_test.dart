import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/compute.dart';
import 'package:test/test.dart';

void main() {
  test('gatewayIpVersion / stackType are typed enums and serialize raw', () {
    final gw = GoogleComputeHaVpnGateway(
      localName: 'gw',
      name: TfArg.literal('gw'),
      network: TfArg.literal('net'),
      gatewayIpVersion: TfArg.literal(ComputeHaVpnGatewayGatewayIpVersion.ipv6),
      stackType: TfArg.literal(ComputeHaVpnGatewayStackType.ipv4Ipv6),
    );
    expect(gw.argMap['gateway_ip_version']!.toTfJson(), 'IPV6');
    expect(gw.argMap['stack_type']!.toTfJson(), 'IPV4_IPV6');
  });
}
