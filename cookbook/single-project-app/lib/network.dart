/// Tier 2: Network (VPC + private services peering).
library;

import 'package:terradart_google/compute.dart';
import 'package:terradart_google/service_networking.dart';

GoogleComputeNetwork buildVpc() => GoogleComputeNetwork(
  localName: 'coffee_vpc',
  name: .literal('coffee-shop-vpc'),
  autoCreateSubnetworks: .literal(false),
);

GoogleComputeGlobalAddress buildPsaRange(GoogleComputeNetwork vpc) =>
    GoogleComputeGlobalAddress(
      localName: 'psa_range',
      name: .literal('coffee-shop-psa-range'),
      addressType: .literal(.internal),
      purpose: .literal(.vpcPeering),
      prefixLength: .literal(16),
      network: .ref(vpc.selfLink),
    );

GoogleServiceNetworkingConnection buildPsaConnection(
  GoogleComputeNetwork vpc,
) => GoogleServiceNetworkingConnection(
  localName: 'psa',
  network: .ref(vpc.selfLink),
  service: .literal('servicenetworking.googleapis.com'),
  reservedPeeringRanges: .literal([
    '\${google_compute_global_address.psa_range.name}',
  ]),
);
