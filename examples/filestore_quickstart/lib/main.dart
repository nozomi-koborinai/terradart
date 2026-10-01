/// Filestore quickstart — High Scale SSD instance + snapshot.
///
/// Uses `us-central1` because snapshot-capable Filestore tiers need
/// HighScaleSSD / Enterprise quota pools that `terradart-validate` lacks in
/// `asia-northeast1` (where [compute_quickstart] keeps the cheaper BASIC_HDD
/// backup path).
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/compute.dart';
import 'package:terradart_google/filestore.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_time/terradart_time.dart';

final class FilestoreSnapshotStack extends Stack {
  FilestoreSnapshotStack({required String projectId})
    : super(
        providers: [
          GoogleProvider(project: projectId, region: 'us-central1'),
          const TimeProvider(),
        ],
      ) {
    final apiDeps = Apis.enable(
      this,
      barrels: [Barrels.compute, Barrels.filestore],
      propagationDelay: const Duration(seconds: 60),
    );

    final nfsVpc = add(
      GoogleComputeNetwork(
        'nfs_vpc',
        name: .literal('nfs-vpc'),
        autoCreateSubnetworks: .literal(false),
        routingMode: .regional,
        dependsOn: apiDeps,
      ),
    );

    add(
      GoogleComputeSubnetwork(
        'nfs_subnet',
        name: .literal('nfs-subnet'),
        region: .literal('us-central1'),
        network: nfsVpc.ref,
        ipCidrRange: .literal('10.20.0.0/24'),
        dependsOn: apiDeps,
      ),
    );

    final snapshotNfs = add(
      GoogleFilestoreInstance(
        'snapshot_nfs',
        name: .literal('snapshot-nfs'),
        tier: .highScaleSsd,
        location: .literal('us-central1-a'),
        fileShares: FilestoreInstanceFileShares(
          name: .literal('snapshot_share'),
          capacityGb: .literal(10240),
        ),
        networks: [
          FilestoreInstanceNetworks(network: nfsVpc.ref, modes: [.modeIpv4]),
        ],
        dependsOn: apiDeps,
      ),
    );

    add(
      GoogleFilestoreSnapshot(
        'snapshot_share_snap',
        name: .literal('snapshot-share-snap-1'),
        location: .literal('us-central1'),
        instance: snapshotNfs.ref,
      ),
    );
  }
}
