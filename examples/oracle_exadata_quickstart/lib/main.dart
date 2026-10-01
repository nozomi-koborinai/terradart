/// Oracle Exadata quickstart — ODB networking, Exascale vault, ExaDB and Exadata stacks.
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

/// Placeholder grid image OCID for synth/validate only.
const _placeholderGridImageId =
    'ocid1.dbpatch.oc1.uk-london-1.anwgiljrt5t4sqqa7anvfhtjk3kukfffjqwjyu2fv435wlcw3hzto6iqyngq';

final class OracleExadataStack extends Stack {
  OracleExadataStack({required String projectId})
    : super(
        providers: [
          GoogleProvider(project: projectId, region: 'us-east4'),
          const TimeProvider(),
        ],
      ) {
    const location = 'us-east4';
    const odbNetworkId = 'terradart-exa-odbnet';
    const clientSubnetId = 'terradart-exa-client';
    const backupSubnetId = 'terradart-exa-backup';
    const vaultId = 'terradart-exa-vault';
    const exadbClusterId = 'terradart-exadb';
    const exadataId = 'terradart-exadata';
    const vmClusterId = 'terradart-vmcluster';

    final apiDeps = Apis.enable(
      this,
      barrels: [Barrels.oracle, Barrels.compute],
      propagationDelay: const Duration(seconds: 60),
    );

    final vpc = GoogleComputeNetwork(
      'ora_vpc',
      name: .literal('terradart-exa-vpc'),
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

    final clientSubnet = GoogleOracleDatabaseOdbSubnet(
      'client_sub',
      location: .literal(location),
      odbnetwork: .literal(odbNetworkId),
      odbSubnetId: .literal(clientSubnetId),
      cidrRange: .literal('10.50.0.0/24'),
      purpose: .clientSubnet,
      dependsOn: [...apiDeps, odbNetwork],
    );
    add(clientSubnet);

    final backupSubnet = GoogleOracleDatabaseOdbSubnet(
      'backup_sub',
      location: .literal(location),
      odbnetwork: .literal(odbNetworkId),
      odbSubnetId: .literal(backupSubnetId),
      cidrRange: .literal('10.51.0.0/24'),
      purpose: .backupSubnet,
      dependsOn: [...apiDeps, odbNetwork],
    );
    add(backupSubnet);

    final storageVault = GoogleOracleDatabaseExascaleDbStorageVault(
      'exascale_vault',
      location: .literal(location),
      exascaleDbStorageVaultId: .literal(vaultId),
      displayName: .literal('TerraDart Exascale vault'),
      properties: OracleDatabaseExascaleDbStorageVaultProperties(
        exascaleDbStorageDetails: .new(totalSizeGbs: .literal(512)),
      ),
      dependsOn: apiDeps,
    );
    add(storageVault);

    final exadbVmCluster = GoogleOracleDatabaseExadbVmCluster(
      'exadb_cluster',
      location: .literal(location),
      exadbVmClusterId: .literal(exadbClusterId),
      displayName: .literal('TerraDart ExaDB cluster'),
      odbSubnet: clientSubnet.ref,
      backupOdbSubnet: backupSubnet.ref,
      odbNetwork: odbNetwork.ref,
      properties: OracleDatabaseExadbVmClusterProperties(
        enabledEcpuCountPerNode: .literal(8),
        exascaleDbStorageVault: storageVault.ref,
        gridImageId: .literal(_placeholderGridImageId),
        hostnamePrefix: .literal('exadb1'),
        nodeCount: .literal(1),
        shapeAttribute: .literal('SMART_STORAGE'),
        sshPublicKeys: .literal([_placeholderSshPublicKey]),
        vmFileSystemStorage: .new(sizeInGbsPerNode: .literal(220)),
      ),
      dependsOn: [...apiDeps, clientSubnet, backupSubnet, storageVault],
    );
    add(exadbVmCluster);

    final exadata = GoogleOracleDatabaseCloudExadataInfrastructure(
      'exadata',
      location: .literal(location),
      cloudExadataInfrastructureId: .literal(exadataId),
      displayName: .literal('TerraDart Exadata infrastructure'),
      properties: OracleDatabaseCloudExadataInfrastructureProperties(
        shape: .literal('Exadata.X9M'),
        computeCount: .literal(2),
        storageCount: .literal(3),
      ),
      dependsOn: apiDeps,
    );
    add(exadata);

    add(
      GoogleOracleDatabaseCloudVmCluster(
        'vm_cluster',
        location: .literal(location),
        cloudVmClusterId: .literal(vmClusterId),
        displayName: .literal('TerraDart Exadata VM cluster'),
        exadataInfrastructure: exadata.ref,
        odbNetwork: odbNetwork.ref,
        odbSubnet: clientSubnet.ref,
        backupOdbSubnet: backupSubnet.ref,
        properties: OracleDatabaseCloudVmClusterProperties(
          licenseType: .literal('LICENSE_INCLUDED'),
          cpuCoreCount: .literal(4),
          giVersion: .literal('19.0.0.0'),
          hostnamePrefix: .literal('exa1'),
          sshPublicKeys: .literal([_placeholderSshPublicKey]),
        ),
        dependsOn: [...apiDeps, exadata, clientSubnet, backupSubnet],
      ),
    );
  }
}
