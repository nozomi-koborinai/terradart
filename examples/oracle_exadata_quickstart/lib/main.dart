/// Oracle Exadata quickstart — ODB networking, Exascale vault, ExaDB and Exadata stacks.
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
      localName: 'ora_vpc',
      name: TfArg.literal('terradart-exa-vpc'),
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

    final clientSubnet = GoogleOracleDatabaseOdbSubnet(
      localName: 'client_sub',
      location: TfArg.literal(location),
      odbnetwork: TfArg.literal(odbNetworkId),
      odbSubnetId: TfArg.literal(clientSubnetId),
      cidrRange: TfArg.literal('10.50.0.0/24'),
      purpose: TfArg.literal(OracleDatabaseOdbSubnetPurpose.clientSubnet),
      dependsOn: [...apiDeps, ResourceDependency(odbNetwork)],
    );
    add(clientSubnet);

    final backupSubnet = GoogleOracleDatabaseOdbSubnet(
      localName: 'backup_sub',
      location: TfArg.literal(location),
      odbnetwork: TfArg.literal(odbNetworkId),
      odbSubnetId: TfArg.literal(backupSubnetId),
      cidrRange: TfArg.literal('10.51.0.0/24'),
      purpose: TfArg.literal(OracleDatabaseOdbSubnetPurpose.backupSubnet),
      dependsOn: [...apiDeps, ResourceDependency(odbNetwork)],
    );
    add(backupSubnet);

    final storageVault = GoogleOracleDatabaseExascaleDbStorageVault(
      localName: 'exascale_vault',
      location: TfArg.literal(location),
      exascaleDbStorageVaultId: TfArg.literal(vaultId),
      displayName: TfArg.literal('TerraDart Exascale vault'),
      properties: TfArg.literal({
        'exascale_db_storage_details': {'total_size_gbs': 512},
      }),
      dependsOn: apiDeps,
    );
    add(storageVault);

    final exadbVmCluster = GoogleOracleDatabaseExadbVmCluster(
      localName: 'exadb_cluster',
      location: TfArg.literal(location),
      exadbVmClusterId: TfArg.literal(exadbClusterId),
      displayName: TfArg.literal('TerraDart ExaDB cluster'),
      odbSubnet: TfArg.ref(clientSubnet.nameRef),
      backupOdbSubnet: TfArg.ref(backupSubnet.nameRef),
      odbNetwork: TfArg.ref(odbNetwork.nameRef),
      properties: TfArg.literal({
        'enabled_ecpu_count_per_node': 8,
        'exascale_db_storage_vault': TfArg.ref(storageVault.id),
        'grid_image_id': _placeholderGridImageId,
        'hostname_prefix': 'exadb1',
        'node_count': 1,
        'shape_attribute': 'SMART_STORAGE',
        'ssh_public_keys': [_placeholderSshPublicKey],
        'vm_file_system_storage': {'size_in_gbs_per_node': 220},
      }),
      dependsOn: [
        ...apiDeps,
        ResourceDependency(clientSubnet),
        ResourceDependency(backupSubnet),
        ResourceDependency(storageVault),
      ],
    );
    add(exadbVmCluster);

    final exadata = GoogleOracleDatabaseCloudExadataInfrastructure(
      localName: 'exadata',
      location: TfArg.literal(location),
      cloudExadataInfrastructureId: TfArg.literal(exadataId),
      displayName: TfArg.literal('TerraDart Exadata infrastructure'),
      properties: TfArg.literal({
        'shape': 'Exadata.X9M',
        'compute_count': 2,
        'storage_count': 3,
      }),
      dependsOn: apiDeps,
    );
    add(exadata);

    add(
      GoogleOracleDatabaseCloudVmCluster(
        localName: 'vm_cluster',
        location: TfArg.literal(location),
        cloudVmClusterId: TfArg.literal(vmClusterId),
        displayName: TfArg.literal('TerraDart Exadata VM cluster'),
        exadataInfrastructure: TfArg.ref(exadata.id),
        odbNetwork: TfArg.ref(odbNetwork.nameRef),
        odbSubnet: TfArg.ref(clientSubnet.nameRef),
        backupOdbSubnet: TfArg.ref(backupSubnet.nameRef),
        properties: TfArg.literal({
          'license_type': 'LICENSE_INCLUDED',
          'cpu_core_count': 4,
          'gi_version': '19.0.0.0',
          'hostname_prefix': 'exa1',
          'ssh_public_keys': [_placeholderSshPublicKey],
        }),
        dependsOn: [
          ...apiDeps,
          ResourceDependency(exadata),
          ResourceDependency(clientSubnet),
          ResourceDependency(backupSubnet),
        ],
      ),
    );
  }
}
