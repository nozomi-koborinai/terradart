/// Network Connectivity quickstart — Partner CCI transport on a VPC.
library;

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

    final apis = [
      for (final (name, api) in [
        ('compute', GoogleApi.compute),
        ('networkconnectivity', GoogleApi.networkconnectivity),
        ('networkmanagement', GoogleApi.networkmanagement),
        ('networksecurity', GoogleApi.networksecurity),
        ('networkservices', GoogleApi.networkservices),
      ])
        add(
          GoogleProjectService(
            'api_$name',
            service: api,
            disableOnDestroy: .literal(false),
          ),
        ),
    ];
    final apiDeps = [
      add(
        TimeSleep(
          'api_propagation',
          createDuration: .duration(const Duration(seconds: 60)),
          triggers: .literal({
            for (final api in apis) api.localName: api.id.interpolation,
          }),
          dependsOn: apis,
        ),
      ),
    ];

    final vpc = add(
      GoogleComputeNetwork(
        'cci_vpc',
        name: .literal('terradart-cci-vpc'),
        autoCreateSubnetworks: .literal(false),
        dependsOn: apiDeps,
      ),
    );

    add(
      GoogleNetworkConnectivityTransport(
        'aws_cci',
        name: .literal('terradart-aws-transport'),
        region: .literal(region),
        network: vpc.ref,
        description: .literal('Sample Partner CCI transport'),
        remoteProfile: .literal(
          'https://networkconnectivity.googleapis.com/v1/projects/$projectId/locations/$region/remoteTransportProfiles/aws-us-east-1',
        ),
        bandwidth: .bps1g,
        remoteAccountId: .literal('123'),
        dependsOn: [...apiDeps, vpc],
      ),
    );
  }
}
