/// Oracle DB System quickstart — VPC, ODB network, subnet, Base Database.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/compute.dart';
import 'package:terradart_google/oracle.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_time/terradart_time.dart';

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
      name: .literal('terradart-dbs-vpc'),
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
      cidrRange: .literal('10.40.0.0/24'),
      purpose: .literal(.clientSubnet),
      dependsOn: [...apiDeps, ResourceDependency(odbNetwork)],
    );
    add(odbSubnet);

    add(
      GoogleOracleDatabaseDbSystem(
        localName: 'base_db',
        location: .literal(location),
        dbSystemId: .literal('terradart-dbs'),
        displayName: .literal('TerraDart DB System'),
        odbSubnet: odbSubnet.ref,
        odbNetwork: odbNetwork.ref,
        properties: OracleDatabaseDbSystemProperties(
          shape: .literal('VM.Standard2.1'),
          computeCount: .literal(2),
          databaseEdition: .literal(.enterpriseEdition),
          initialDataStorageSizeGb: .literal(256),
          licenseModel: .literal(.licenseIncluded),
          sshPublicKeys: .literal([_placeholderSshPublicKey]),
          dbHome: OracleDatabaseDbSystemDbHome(
            dbVersion: .literal('19'),
            database: OracleDatabaseDbSystemDatabase(
              databaseId: .literal('terradartdb'),
              adminPassword: .literal('Placeholder-Pass1'),
            ),
          ),
        ),
        dependsOn: [...apiDeps, ResourceDependency(odbSubnet)],
      ),
    );
  }
}
