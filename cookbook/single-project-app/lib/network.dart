/// Tier 2: Network (VPC + private services peering).
library;

import 'package:terradart_google/compute.dart';
import 'package:terradart_google/service_networking.dart';

GoogleComputeNetwork buildVpc() => GoogleComputeNetwork(
  'coffee_vpc',
  name: .literal('coffee-shop-vpc'),
  autoCreateSubnetworks: .literal(false),
);

GoogleComputeGlobalAddress buildPsaRange(GoogleComputeNetwork vpc) =>
    GoogleComputeGlobalAddress(
      'psa_range',
      name: .literal('coffee-shop-psa-range'),
      addressType: .internal,
      purpose: .vpcPeering,
      prefixLength: .literal(16),
      network: vpc.ref,
    );

GoogleServiceNetworkingConnection buildPsaConnection(
  GoogleComputeNetwork vpc,
) => GoogleServiceNetworkingConnection(
  'psa',
  network: vpc.ref,
  service: .literal('servicenetworking.googleapis.com'),
  reservedPeeringRanges: .literal([
    '\${google_compute_global_address.psa_range.name}',
  ]),
);
