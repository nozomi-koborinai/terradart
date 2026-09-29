/// Network Connectivity quickstart — Partner CCI transport on a VPC.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/compute.dart';
import 'package:terradart_google/network.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_time/terradart_time.dart';

final class NetworkConnectivityStack extends Stack {
  NetworkConnectivityStack({required String projectId})
    : super(
        providers: [
          GoogleProvider(project: projectId, region: 'us-east4'),
          const TimeProvider(),
        ],
      ) {
    const region = 'us-east4';

    final apiDeps = Apis.enable(
      this,
      barrels: [Barrels.compute, Barrels.network],
      propagationDelay: const Duration(seconds: 60),
    );

    final vpc = add(
      GoogleComputeNetwork(
        localName: 'cci_vpc',
        name: .literal('terradart-cci-vpc'),
        autoCreateSubnetworks: .literal(false),
        dependsOn: apiDeps,
      ),
    );

    add(
      GoogleNetworkConnectivityTransport(
        localName: 'aws_cci',
        name: .literal('terradart-aws-transport'),
        region: .literal(region),
        network: .ref(vpc.nameRef),
        description: .literal('Sample Partner CCI transport'),
        remoteProfile: .literal(
          'https://networkconnectivity.googleapis.com/v1/projects/$projectId/locations/$region/remoteTransportProfiles/aws-us-east-1',
        ),
        bandwidth: .literal('BPS_1G'),
        remoteAccountId: .literal('123'),
        dependsOn: [...apiDeps, ResourceDependency(vpc)],
      ),
    );
  }
}
