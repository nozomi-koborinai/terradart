/// Network Connectivity quickstart — Partner CCI transport on a VPC.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/compute.dart';
import 'package:terradart_google/network.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/time.dart';

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
        name: TfArg.literal('terradart-cci-vpc'),
        autoCreateSubnetworks: TfArg.literal(false),
        dependsOn: apiDeps,
      ),
    );

    add(
      GoogleNetworkConnectivityTransport(
        localName: 'aws_cci',
        name: TfArg.literal('terradart-aws-transport'),
        region: TfArg.literal(region),
        network: TfArg.ref(vpc.nameRef),
        description: TfArg.literal('Sample Partner CCI transport'),
        remoteProfile: TfArg.literal(
          'https://networkconnectivity.googleapis.com/v1/projects/$projectId/locations/$region/remoteTransportProfiles/aws-us-east-1',
        ),
        bandwidth: TfArg.literal('BPS_1G'),
        remoteAccountId: TfArg.literal('123'),
        dependsOn: [...apiDeps, ResourceDependency(vpc)],
      ),
    );
  }
}
