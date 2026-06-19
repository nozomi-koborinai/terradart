/// Oracle GoldenGate quickstart — ODB network, subnet, deployment, connection.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/compute.dart';
import 'package:terradart_google/oracle.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/time.dart';

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
      localName: 'ora_vpc',
      name: TfArg.literal('terradart-ora-vpc'),
      autoCreateSubnetworks: TfArg.literal(false),
      dependsOn: apiDeps,
    );
    add(vpc);

    final odbNetwork = GoogleOracleDatabaseOdbNetwork(
      localName: 'odb_net',
      location: TfArg.literal(location),
      odbNetworkId: TfArg.literal(odbNetworkId),
      network: TfArg.ref(vpc.selfLink),
      dependsOn: [...apiDeps, ResourceDependency(vpc)],
    );
    add(odbNetwork);

    final odbSubnet = GoogleOracleDatabaseOdbSubnet(
      localName: 'odb_sub',
      location: TfArg.literal(location),
      odbnetwork: TfArg.literal(odbNetworkId),
      odbSubnetId: TfArg.literal(odbSubnetId),
      cidrRange: TfArg.literal('10.20.0.0/24'),
      purpose: TfArg.literal(OracleDatabaseOdbSubnetPurpose.clientSubnet),
      dependsOn: [...apiDeps, ResourceDependency(odbNetwork)],
    );
    add(odbSubnet);

    final deployment = GoogleOracleDatabaseGoldengateDeployment(
      localName: 'replication',
      location: TfArg.literal(location),
      goldengateDeploymentId: TfArg.literal(deploymentId),
      displayName: TfArg.literal('TerraDart GoldenGate deployment'),
      odbSubnet: TfArg.ref(odbSubnet.nameRef),
      odbNetwork: TfArg.ref(odbNetwork.nameRef),
      properties: TfArg.literal({
        'deployment_type': 'DATA_REPLICATION',
        'ogg_data': {
          'admin_username': 'admin',
          'deployment': 'terradart-ogg',
          'admin_password': 'placeholder-password',
        },
      }),
      deletionPolicy: TfArg.literal(
        OracleDatabaseGoldengateDeploymentDeletionPolicy.delete,
      ),
      dependsOn: [...apiDeps, ResourceDependency(odbSubnet)],
    );
    add(deployment);

    final connection = GoogleOracleDatabaseGoldengateConnection(
      localName: 'source',
      location: TfArg.literal(location),
      goldengateConnectionId: TfArg.literal(connectionId),
      properties: TfArg.literal({
        'connection_type': 'GENERIC',
        'display_name': 'TerraDart generic connection',
        'generic_connection_properties': {
          'host': 'db.example.com',
          'technology_type': 'GENERIC',
        },
      }),
      dependsOn: apiDeps,
    );
    add(connection);

    add(
      GoogleOracleDatabaseGoldengateConnectionAssignment(
        localName: 'bind',
        location: TfArg.literal(location),
        goldengateConnectionAssignmentId: TfArg.literal(assignmentId),
        properties: TfArg.literal({
          'goldengate_connection': TfArg.ref(connection.nameRef),
          'goldengate_deployment': TfArg.ref(deployment.nameRef),
        }),
        displayName: TfArg.literal('TerraDart connection assignment'),
        dependsOn: [
          ...apiDeps,
          ResourceDependency(deployment),
          ResourceDependency(connection),
        ],
      ),
    );
  }
}
