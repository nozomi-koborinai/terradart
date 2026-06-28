/// Tier 2: Network (VPC + private services peering).
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/compute.dart';
import 'package:terradart_google/service_networking.dart';

GoogleComputeNetwork buildVpc() => GoogleComputeNetwork(
      localName: 'coffee_vpc',
      name: TfArg.literal('coffee-shop-vpc'),
      autoCreateSubnetworks: TfArg.literal(false),
    );

GoogleComputeGlobalAddress buildPsaRange(GoogleComputeNetwork vpc) =>
    GoogleComputeGlobalAddress(
      localName: 'psa_range',
      name: TfArg.literal('coffee-shop-psa-range'),
      addressType: TfArg.literal(GlobalAddressType.internal),
      purpose: TfArg.literal(GlobalAddressPurpose.vpcPeering),
      prefixLength: TfArg.literal(16),
      network: TfArg.ref(vpc.selfLink),
    );

GoogleServiceNetworkingConnection buildPsaConnection(
        GoogleComputeNetwork vpc) =>
    GoogleServiceNetworkingConnection(
      localName: 'psa',
      network: TfArg.ref(vpc.selfLink),
      service: TfArg.literal('servicenetworking.googleapis.com'),
      reservedPeeringRanges: TfArg.literal([
        '\${google_compute_global_address.psa_range.name}',
      ]),
    );
