import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/compute.dart';
import 'package:terradart_google/service_networking.dart';

import 'constants.dart';

final class LunchNetwork {
  const LunchNetwork({
    required this.vpc,
    required this.subnet,
    required this.runConnector,
    required this.psaRange,
    required this.psaConnection,
  });

  final GoogleComputeNetwork vpc;
  final GoogleComputeSubnetwork subnet;
  final GoogleVpcAccessConnector runConnector;
  final GoogleComputeGlobalAddress psaRange;
  final GoogleServiceNetworkingConnection psaConnection;
}

LunchNetwork addNetwork(Stack stack, List<ResourceDependency> apiDeps) {
  final vpc = stack.add(
    GoogleComputeNetwork(
      localName: 'lunch_vpc',
      name: TfArg.literal(vpcName),
      autoCreateSubnetworks: TfArg.literal(false),
      dependsOn: apiDeps,
    ),
  );

  final subnet = stack.add(
    GoogleComputeSubnetwork(
      localName: 'lunch_subnet',
      name: TfArg.literal(subnetName),
      region: TfArg.literal(region),
      network: TfArg.ref(vpc.selfLink),
      ipCidrRange: TfArg.literal(subnetCidr),
      privateIpGoogleAccess: TfArg.literal(true),
      dependsOn: [ResourceDependency(vpc)],
    ),
  );

  final runConnector = stack.add(
    GoogleVpcAccessConnector(
      localName: 'run_connector',
      name: TfArg.literal(runConnectorName),
      region: TfArg.literal(region),
      ipCidrRange: TfArg.literal(runConnectorCidr),
      network: TfArg.ref(vpc.id),
      minInstances: TfArg.literal(2),
      maxInstances: TfArg.literal(3),
      dependsOn: [
        ...apiDeps,
        ResourceDependency(vpc),
      ],
    ),
  );

  final psaRange = stack.add(
    GoogleComputeGlobalAddress(
      localName: 'psa_range',
      name: TfArg.literal(psaRangeName),
      addressType: TfArg.literal(GlobalAddressType.internal),
      purpose: TfArg.literal(GlobalAddressPurpose.vpcPeering),
      prefixLength: TfArg.literal(16),
      network: TfArg.ref(vpc.selfLink),
      dependsOn: [ResourceDependency(vpc)],
    ),
  );

  final psaConnection = stack.add(
    GoogleServiceNetworkingConnection(
      localName: 'psa',
      network: TfArg.ref(vpc.selfLink),
      service: TfArg.literal('servicenetworking.googleapis.com'),
      reservedPeeringRanges: TfArg.literal([psaRange.nameRef.interpolation]),
      dependsOn: [
        ...apiDeps,
        ResourceDependency(psaRange),
      ],
    ),
  );

  return LunchNetwork(
    vpc: vpc,
    subnet: subnet,
    runConnector: runConnector,
    psaRange: psaRange,
    psaConnection: psaConnection,
  );
}
