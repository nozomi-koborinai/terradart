/// Compute VPN gateway shells quickstart (no tunnels).
///
/// Enables `compute.googleapis.com` and provisions:
/// - a dedicated VPC,
/// - classic [GoogleComputeVpnGateway],
/// - [GoogleComputeHaVpnGateway],
/// - [GoogleComputeExternalVpnGateway] (TEST-NET peer IP shell).
///
/// **Cost:** gateway objects have no hourly Networking catalog SKU
/// (`E505-1604-58F8` keyword=gateway → NAT/SWG only; VPN SKUs are tunnel
/// hours). **Never** add `google_compute_vpn_tunnel` here (`sweep_only`
/// `B0D8-6A41-4771` family).
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/compute.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

/// VPN gateway stack: VPC + classic / HA / external gateway shells.
final class ComputeVpnGatewayStack extends Stack {
  ComputeVpnGatewayStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    const region = 'us-central1';

    final apiCompute = add(
      GoogleProjectService(
        localName: 'api_compute',
        service: TfArg.literal('compute.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    final vpc = add(
      GoogleComputeNetwork(
        localName: 'vpn_vpc',
        name: TfArg.literal('terradart-vpn-gw-vpc'),
        autoCreateSubnetworks: TfArg.literal(false),
        dependsOn: [ResourceDependency(apiCompute)],
      ),
    );

    add(
      GoogleComputeVpnGateway(
        localName: 'classic',
        name: TfArg.literal('terradart-classic-vpn-gw'),
        network: TfArg.ref(vpc.id),
        region: TfArg.literal(region),
        description: TfArg.literal('Classic VPN gateway shell (no tunnels)'),
        dependsOn: [
          ResourceDependency(apiCompute),
          ResourceDependency(vpc),
        ],
      ),
    );

    add(
      GoogleComputeHaVpnGateway(
        localName: 'ha',
        name: TfArg.literal('terradart-ha-vpn-gw'),
        network: TfArg.ref(vpc.id),
        region: TfArg.literal(region),
        description: TfArg.literal('HA VPN gateway shell (no tunnels)'),
        stackType: TfArg.literal(ComputeHaVpnGatewayStackType.ipv4Only),
        dependsOn: [
          ResourceDependency(apiCompute),
          ResourceDependency(vpc),
        ],
      ),
    );

    add(
      GoogleComputeExternalVpnGateway(
        localName: 'peer',
        name: TfArg.literal('terradart-external-vpn-gw'),
        description: TfArg.literal('External peer gateway shell (TEST-NET-3)'),
        redundancyType: TfArg.literal(
          ComputeExternalVpnGatewayRedundancyType.singleIpInternallyRedundant,
        ),
        interface: TfArg.literal([
          {
            'id': 0,
            // RFC 5737 TEST-NET-3 — documentation peer only; no tunnel attached.
            'ip_address': '203.0.113.1',
          },
        ]),
        dependsOn: [ResourceDependency(apiCompute)],
      ),
    );
  }
}
