/// NetApp Volumes metadata quickstart (no storage pool / volumes).
///
/// Enables `netapp.googleapis.com` and provisions:
/// - an empty [GoogleNetappBackupVault],
/// - a disabled [GoogleNetappBackupPolicy] (not attached to any volume),
/// - a [GoogleNetappHostGroup] with a smoke-only initiator IQN.
///
/// **Cost:** vault/policy/host-group are control-plane metadata. Backup
/// Storage Charge (us-central1 SKU `DCB6-FE72-5443` $0.045/GiBy·mo) applies
/// only when backup *data* exists — this stack never creates backups or
/// volumes. Host/policy have no catalog SKU. **Never** add
/// `google_netapp_storage_pool` here (`never_apply` capacity).
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/netapp.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

/// NetApp metadata stack: vault + disabled policy + host group.
final class NetappMetadataStack extends Stack {
  NetappMetadataStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    const location = 'us-central1';

    final apiNetapp = add(
      GoogleProjectService(
        localName: 'api_netapp',
        service: TfArg.literal('netapp.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    add(
      GoogleNetappBackupVault(
        localName: 'vault',
        name: TfArg.literal('terradart-smoke-vault'),
        location: TfArg.literal(location),
        description:
            TfArg.literal('Empty vault for TerraDart smoke (no backups)'),
        dependsOn: [ResourceDependency(apiNetapp)],
      ),
    );

    add(
      GoogleNetappBackupPolicy(
        localName: 'policy',
        name: TfArg.literal('terradart-smoke-policy'),
        location: TfArg.literal(location),
        dailyBackupLimit: TfArg.literal(2),
        weeklyBackupLimit: TfArg.literal(1),
        monthlyBackupLimit: TfArg.literal(1),
        // Keep disabled and unattached so no schedules can fire.
        enabled: TfArg.literal(false),
        description: TfArg.literal('Disabled schedule metadata (no volumes)'),
        dependsOn: [ResourceDependency(apiNetapp)],
      ),
    );

    add(
      GoogleNetappHostGroup(
        localName: 'hosts',
        name: TfArg.literal('terradart-smoke-hosts'),
        location: TfArg.literal(location),
        type: TfArg.literal(NetappHostGroupType.iscsiInitiator),
        osType: TfArg.literal(NetappHostGroupOsType.linux),
        hosts: TfArg.literal([
          'iqn.1994-05.com.redhat:terradart-smoke-never',
        ]),
        description:
            TfArg.literal('Smoke initiator list (not wired to volumes)'),
        dependsOn: [ResourceDependency(apiNetapp)],
      ),
    );
  }
}
