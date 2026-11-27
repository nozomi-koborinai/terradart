/// Oracle Autonomous Database quickstart — VPC, ODB network, subnet, ADB.
library;

import 'package:terradart_google/compute.dart';
import 'package:terradart_google/oracle.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_time/terradart_time.dart';

final class OracleAutonomousDatabaseStack extends Stack {
  OracleAutonomousDatabaseStack({required String projectId})
    : super(
        providers: [
          GoogleProvider(project: projectId, region: 'us-east4'),
          const TimeProvider(),
        ],
      ) {
    const location = 'us-east4';
    const odbNetworkId = 'terradart-odbnet';
    const odbSubnetId = 'terradart-odbsub';

    final apis = [
      for (final (name, api) in [
        ('compute', GoogleApi.compute),
        ('oracledatabase', GoogleApi.oracledatabase),
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

    final vpc = GoogleComputeNetwork(
      'ora_vpc',
      name: .literal('terradart-adb-vpc'),
      autoCreateSubnetworks: .literal(false),
      dependsOn: apiDeps,
    );
    add(vpc);

    final odbNetwork = GoogleOracleDatabaseOdbNetwork(
      'odb_net',
      location: .literal(location),
      odbNetworkId: .literal(odbNetworkId),
      network: vpc.ref,
      dependsOn: [...apiDeps, vpc],
    );
    add(odbNetwork);

    final odbSubnet = GoogleOracleDatabaseOdbSubnet(
      'odb_sub',
      location: .literal(location),
      odbnetwork: .literal(odbNetworkId),
      odbSubnetId: .literal(odbSubnetId),
      cidrRange: .literal('10.30.0.0/24'),
      purpose: .clientSubnet,
      dependsOn: [...apiDeps, odbNetwork],
    );
    add(odbSubnet);

    add(
      GoogleOracleDatabaseAutonomousDatabase(
        'oltp',
        location: .literal(location),
        autonomousDatabaseId: .literal('terradart-adb'),
        database: .literal('terradartdb'),
        displayName: .literal('TerraDart Autonomous Database'),
        adminPassword: .literal('Placeholder-Pass1'),
        odbSubnet: odbSubnet.ref,
        odbNetwork: odbNetwork.ref,
        properties: OracleDatabaseAutonomousDatabaseProperties(
          dbWorkload: .oltp,
          licenseType: .licenseIncluded,
        ),
        dependsOn: [...apiDeps, odbSubnet],
      ),
    );
  }
}
