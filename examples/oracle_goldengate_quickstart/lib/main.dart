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
      localName: 'ora_vpc',
      name: .literal('terradart-ora-vpc'),
      autoCreateSubnetworks: .literal(false),
      dependsOn: apiDeps,
    );
    add(vpc);

    final odbNetwork = GoogleOracleDatabaseOdbNetwork(
      localName: 'odb_net',
      location: .literal(location),
      odbNetworkId: .literal(odbNetworkId),
      network: vpc.ref,
      dependsOn: [...apiDeps, ResourceDependency(vpc)],
    );
    add(odbNetwork);

    final odbSubnet = GoogleOracleDatabaseOdbSubnet(
      localName: 'odb_sub',
      location: .literal(location),
      odbnetwork: .literal(odbNetworkId),
      odbSubnetId: .literal(odbSubnetId),
      cidrRange: .literal('10.20.0.0/24'),
      purpose: .literal(.clientSubnet),
      dependsOn: [...apiDeps, ResourceDependency(odbNetwork)],
    );
    add(odbSubnet);

    final deployment = GoogleOracleDatabaseGoldengateDeployment(
      localName: 'replication',
      location: .literal(location),
      goldengateDeploymentId: .literal(deploymentId),
      displayName: .literal('TerraDart GoldenGate deployment'),
      odbSubnet: .ref(odbSubnet.nameRef),
      odbNetwork: .ref(odbNetwork.nameRef),
      properties: .literal({
        'deployment_type': 'DATA_REPLICATION',
        'ogg_data': {
          'admin_username': 'admin',
          'deployment': 'terradart-ogg',
          'admin_password': 'placeholder-password',
        },
      }),
      deletionPolicy: .literal(.delete),
      dependsOn: [...apiDeps, ResourceDependency(odbSubnet)],
    );
    add(deployment);

    final connection = GoogleOracleDatabaseGoldengateConnection(
      localName: 'source',
      location: .literal(location),
      goldengateConnectionId: .literal(connectionId),
      properties: .literal({
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
        location: .literal(location),
        goldengateConnectionAssignmentId: .literal(assignmentId),
        properties: .literal({
          'goldengate_connection': TfArg.ref(connection.nameRef),
          'goldengate_deployment': TfArg.ref(deployment.nameRef),
        }),
        displayName: .literal('TerraDart connection assignment'),
        dependsOn: [
          ...apiDeps,
          ResourceDependency(deployment),
          ResourceDependency(connection),
        ],
      ),
    );
  }
}
