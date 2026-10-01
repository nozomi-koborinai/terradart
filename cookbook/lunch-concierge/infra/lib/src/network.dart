import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/compute.dart';
import 'package:terradart_google/service_networking.dart';

import 'constants.dart';

final class LunchNetwork {
  const LunchNetwork({
    required this.vpc,
    required this.subnet,
    required this.psaRange,
    required this.psaConnection,
  });

  final GoogleComputeNetwork vpc;
  final GoogleComputeSubnetwork subnet;
  final GoogleComputeGlobalAddress psaRange;
  final GoogleServiceNetworkingConnection psaConnection;
}

LunchNetwork addNetwork(Stack stack, List<ResourceDependency> apiDeps) {
  final vpc = stack.add(
    GoogleComputeNetwork(
      localName: 'lunch_vpc',
      name: .literal(vpcName),
      autoCreateSubnetworks: .literal(false),
      dependsOn: apiDeps,
    ),
  );

  final subnet = stack.add(
    GoogleComputeSubnetwork(
      localName: 'lunch_subnet',
      name: .literal(subnetName),
      region: .literal(region),
      network: vpc.ref,
      ipCidrRange: .literal(subnetCidr),
      privateIpGoogleAccess: .literal(true),
      dependsOn: [ResourceDependency(vpc)],
    ),
  );

  final psaRange = stack.add(
    GoogleComputeGlobalAddress(
      localName: 'psa_range',
      name: .literal(psaRangeName),
      addressType: .literal(.internal),
      purpose: .literal(.vpcPeering),
      prefixLength: .literal(16),
      network: vpc.ref,
      dependsOn: [ResourceDependency(vpc)],
    ),
  );

  final psaConnection = stack.add(
    GoogleServiceNetworkingConnection(
      localName: 'psa',
      network: vpc.ref,
      service: .literal('servicenetworking.googleapis.com'),
      reservedPeeringRanges: .literal([psaRange.name.interpolation]),
      dependsOn: [...apiDeps, ResourceDependency(psaRange)],
    ),
  );

  return LunchNetwork(
    vpc: vpc,
    subnet: subnet,
    psaRange: psaRange,
    psaConnection: psaConnection,
  );
}
