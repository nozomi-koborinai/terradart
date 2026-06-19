/// Oracle DB System quickstart — VPC, ODB network, subnet, Base Database.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/compute.dart';
import 'package:terradart_google/oracle.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/time.dart';

/// Placeholder SSH public key for synth/validate only (not a real secret).
const _placeholderSshPublicKey =
    'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC7vbRAT9N4rebfQoXdHhHb7srkJTzSHNRs92NnmfMF79+2wfxRsiru93eD9rYzYLqZisr02PfruZR4bbeAXqd3kRjWzV16fOi/+X7+z4LKDo7maYHsC7KfehRQ3ApMhnEktnkbnoeHNVEv8AmZZi/lJj8s0FZ9Qy3Ph5VL2PZKEQ8xL8YsCPeerwXr6Or18shFwQh58vEpFW0L2rETio/rGxNQ+09zjmFRf+8ys49KTIMoir/fSp/FienKKPqC+u5F2vCZRw+XEwr+bGyerxsYzo1Rx1Sgti7okb6bBmo859hr0XcMO9XIh/Jz/VzBHsqljQ2xXNjUwsskxSuZcZ9TftPBwH/M terradart@example.com';

final class OracleDbSystemStack extends Stack {
  OracleDbSystemStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-east4'),
            const TimeProvider(),
          ],
        ) {
    const location = 'us-east4';
    const odbNetworkId = 'terradart-dbs-odbnet';
    const odbSubnetId = 'terradart-dbs-odbsub';

    final apiDeps = Apis.enable(
      this,
      barrels: [Barrels.oracle, Barrels.compute],
      propagationDelay: const Duration(seconds: 60),
    );

    final vpc = GoogleComputeNetwork(
      localName: 'ora_vpc',
      name: TfArg.literal('terradart-dbs-vpc'),
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
      cidrRange: TfArg.literal('10.40.0.0/24'),
      purpose: TfArg.literal(OracleDatabaseOdbSubnetPurpose.clientSubnet),
      dependsOn: [...apiDeps, ResourceDependency(odbNetwork)],
    );
    add(odbSubnet);

    add(
      GoogleOracleDatabaseDbSystem(
        localName: 'base_db',
        location: TfArg.literal(location),
        dbSystemId: TfArg.literal('terradart-dbs'),
        displayName: TfArg.literal('TerraDart DB System'),
        odbSubnet: TfArg.ref(odbSubnet.nameRef),
        odbNetwork: TfArg.ref(odbNetwork.nameRef),
        properties: TfArg.literal({
          'shape': 'VM.Standard2.1',
          'compute_count': 2,
          'database_edition': OracleDatabaseDbSystemDatabaseEdition
              .enterpriseEdition.terraformValue,
          'initial_data_storage_size_gb': 256,
          'license_model':
              OracleDatabaseDbSystemLicenseModel.licenseIncluded.terraformValue,
          'ssh_public_keys': [_placeholderSshPublicKey],
          'db_home': {
            'db_version': '19',
            'database': {
              'database_id': 'terradartdb',
              'admin_password': 'Placeholder-Pass1',
            },
          },
        }),
        dependsOn: [...apiDeps, ResourceDependency(odbSubnet)],
      ),
    );
  }
}
