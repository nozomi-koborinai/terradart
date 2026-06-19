/// Oracle GoldenGate quickstart — deployment, connection, and assignment.
library;

import 'package:terradart_core/terradart_core.dart';
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
    const connectionId = 'terradart-gg-conn';
    const deploymentId = 'terradart-gg-deploy';
    const assignmentId = 'terradart-gg-assign';
    final odbNetwork =
        'projects/$projectId/locations/$location/odbNetworks/terradart-odbnet';
    final odbSubnet = '$odbNetwork/odbSubnets/terradart-odbsub';

    final apiDeps = Apis.enable(
      this,
      barrels: [Barrels.oracle],
      propagationDelay: const Duration(seconds: 60),
    );

    final deployment = GoogleOracleDatabaseGoldengateDeployment(
      localName: 'replication',
      location: TfArg.literal(location),
      goldengateDeploymentId: TfArg.literal(deploymentId),
      displayName: TfArg.literal('TerraDart GoldenGate deployment'),
      odbSubnet: TfArg.literal(odbSubnet),
      odbNetwork: TfArg.literal(odbNetwork),
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
      dependsOn: apiDeps,
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
          'goldengate_connection':
              'projects/$projectId/locations/$location/goldengateConnections/$connectionId',
          'goldengate_deployment':
              'projects/$projectId/locations/$location/goldengateDeployments/$deploymentId',
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
