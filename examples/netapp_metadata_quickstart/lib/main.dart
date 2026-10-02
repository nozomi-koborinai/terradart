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

import 'package:terradart_google/netapp.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

/// NetApp metadata stack: vault + disabled policy + host group.
final class NetappMetadataStack extends Stack {
  NetappMetadataStack({required String projectId})
    : super(
        providers: [GoogleProvider(project: projectId, region: 'us-central1')],
      ) {
    const location = 'us-central1';

    final apiNetapp = add(
      GoogleProjectService(
        'api_netapp',
        service: .literal('netapp.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    add(
      GoogleNetappBackupVault(
        'vault',
        name: .literal('terradart-smoke-vault'),
        location: .literal(location),
        description: .literal('Empty vault for TerraDart smoke (no backups)'),
        dependsOn: [apiNetapp],
      ),
    );

    add(
      GoogleNetappBackupPolicy(
        'policy',
        name: .literal('terradart-smoke-policy'),
        location: .literal(location),
        dailyBackupLimit: .literal(2),
        weeklyBackupLimit: .literal(1),
        monthlyBackupLimit: .literal(1),
        // Keep disabled and unattached so no schedules can fire.
        enabled: .literal(false),
        description: .literal('Disabled schedule metadata (no volumes)'),
        dependsOn: [apiNetapp],
      ),
    );

    add(
      GoogleNetappHostGroup(
        'hosts',
        name: .literal('terradart-smoke-hosts'),
        location: .literal(location),
        type: .iscsiInitiator,
        osType: .linux,
        hosts: .literal(['iqn.1994-05.com.redhat:terradart-smoke-never']),
        description: .literal('Smoke initiator list (not wired to volumes)'),
        dependsOn: [apiNetapp],
      ),
    );
  }
}
