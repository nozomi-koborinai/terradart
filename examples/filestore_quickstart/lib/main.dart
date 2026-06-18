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
import 'package:terradart_google/time.dart';

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
        localName: 'nfs_vpc',
        name: TfArg.literal('nfs-vpc'),
        autoCreateSubnetworks: TfArg.literal(false),
        routingMode: TfArg.literal(RoutingMode.regional),
        dependsOn: apiDeps,
      ),
    );

    add(
      GoogleComputeSubnetwork(
        localName: 'nfs_subnet',
        name: TfArg.literal('nfs-subnet'),
        region: TfArg.literal('us-central1'),
        network: TfArg.ref(nfsVpc.id),
        ipCidrRange: TfArg.literal('10.20.0.0/24'),
        dependsOn: apiDeps,
      ),
    );

    final snapshotNfs = add(
      GoogleFilestoreInstance(
        localName: 'snapshot_nfs',
        name: TfArg.literal('snapshot-nfs'),
        tier: TfArg.literal(FilestoreInstanceTier.highScaleSsd),
        location: TfArg.literal('us-central1-a'),
        fileShares: FilestoreInstanceFileShare(
          name: TfArg.literal('snapshot_share'),
          capacityGb: TfArg.literal(10240),
        ),
        networks: [
          FilestoreInstanceNetwork(
            network: TfArg.ref(nfsVpc.id),
            modes: const [FilestoreInstanceNetworkMode.modeIpv4],
          ),
        ],
        dependsOn: apiDeps,
      ),
    );

    add(
      GoogleFilestoreSnapshot(
        localName: 'snapshot_share_snap',
        name: TfArg.literal('snapshot-share-snap-1'),
        location: TfArg.literal('us-central1'),
        instance: TfArg.ref(snapshotNfs.id),
      ),
    );
  }
}
