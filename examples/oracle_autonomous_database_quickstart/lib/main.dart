/// Oracle Autonomous Database quickstart — VPC, ODB network, subnet, ADB.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/compute.dart';
import 'package:terradart_google/oracle.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/time.dart';

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

    final apiDeps = Apis.enable(
      this,
      barrels: [Barrels.oracle, Barrels.compute],
      propagationDelay: const Duration(seconds: 60),
    );

    final vpc = GoogleComputeNetwork(
      localName: 'ora_vpc',
      name: TfArg.literal('terradart-adb-vpc'),
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
      cidrRange: TfArg.literal('10.30.0.0/24'),
      purpose: TfArg.literal(OracleDatabaseOdbSubnetPurpose.clientSubnet),
      dependsOn: [...apiDeps, ResourceDependency(odbNetwork)],
    );
    add(odbSubnet);

    add(
      GoogleOracleDatabaseAutonomousDatabase(
        localName: 'oltp',
        location: TfArg.literal(location),
        autonomousDatabaseId: TfArg.literal('terradart-adb'),
        database: TfArg.literal('terradartdb'),
        displayName: TfArg.literal('TerraDart Autonomous Database'),
        adminPassword: TfArg.literal('Placeholder-Pass1'),
        odbSubnet: TfArg.ref(odbSubnet.nameRef),
        odbNetwork: TfArg.ref(odbNetwork.nameRef),
        properties: TfArg.literal({
          'db_workload':
              OracleDatabaseAutonomousDatabaseDbWorkload.oltp.terraformValue,
          'license_type': OracleDatabaseAutonomousDatabaseLicenseType
              .licenseIncluded.terraformValue,
        }),
        dependsOn: [...apiDeps, ResourceDependency(odbSubnet)],
      ),
    );
  }
}
