/// Oracle GoldenGate quickstart — ODB network, subnet, deployment, connection.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/compute.dart';
import 'package:terradart_google/oracle.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_time/terradart_time.dart';

final class OracleGoldengateStack extends Stack {
  OracleGoldengateStack({required String projectId})
    : super(
        providers: [
          GoogleProvider(project: projectId, region: 'us-east4'),
          const TimeProvider(),
        ],
      ) {
    const location = 'us-east4';
    const odbNetworkId = 'terradart-odbnet';
    const odbSubnetId = 'terradart-odbsub';
    const connectionId = 'terradart-gg-conn';
    const deploymentId = 'terradart-gg-deploy';
    const assignmentId = 'terradart-gg-assign';

    final apiDeps = Apis.enable(
      this,
      barrels: [Barrels.oracle, Barrels.compute],
      propagationDelay: const Duration(seconds: 60),
    );

    final vpc = GoogleComputeNetwork(
      'ora_vpc',
      name: .literal('terradart-ora-vpc'),
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
      cidrRange: .literal('10.20.0.0/24'),
      purpose: .literal(.clientSubnet),
      dependsOn: [...apiDeps, odbNetwork],
    );
    add(odbSubnet);

    final deployment = GoogleOracleDatabaseGoldengateDeployment(
      'replication',
      location: .literal(location),
      goldengateDeploymentId: .literal(deploymentId),
      displayName: .literal('TerraDart GoldenGate deployment'),
      odbSubnet: odbSubnet.ref,
      odbNetwork: odbNetwork.ref,
      properties: OracleDatabaseGoldengateDeploymentProperties(
        deploymentType: .literal('DATA_REPLICATION'),
        oggData: .new(
          adminUsername: .literal('admin'),
          deployment: .literal('terradart-ogg'),
          adminPassword: .literal('placeholder-password'),
        ),
      ),
      deletionPolicy: .literal(.delete),
      dependsOn: [...apiDeps, odbSubnet],
    );
    add(deployment);

    final connection = GoogleOracleDatabaseGoldengateConnection(
      'source',
      location: .literal(location),
      goldengateConnectionId: .literal(connectionId),
      properties: OracleDatabaseGoldengateConnectionProperties(
        connectionType: .literal('GENERIC'),
        displayName: .literal('TerraDart generic connection'),
        genericConnectionProperties: .new(
          host: .literal('db.example.com'),
          technologyType: .literal('GENERIC'),
        ),
      ),
      dependsOn: apiDeps,
    );
    add(connection);

    add(
      GoogleOracleDatabaseGoldengateConnectionAssignment(
        'bind',
        location: .literal(location),
        goldengateConnectionAssignmentId: .literal(assignmentId),
        properties: OracleDatabaseGoldengateConnectionAssignmentProperties(
          goldengateConnection: connection.ref,
          goldengateDeployment: deployment.ref,
        ),
        displayName: .literal('TerraDart connection assignment'),
        dependsOn: [...apiDeps, deployment, connection],
      ),
    );
  }
}
