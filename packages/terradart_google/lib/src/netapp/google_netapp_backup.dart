// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_netapp_backup`.
const Set<String> _googleNetappBackupSensitive = <String>{};

/// Typed helper for the `ontap_source` block of
/// `google_netapp_backup` (derived from provider schema).
@immutable
final class NetappBackupOntapSource {
  const NetappBackupOntapSource({
    this.snapshotUuid,
    required this.storagePool,
    required this.volumeUuid,
  });

  final TfArg<String>? snapshotUuid;

  final TfArg<String> storagePool;

  final TfArg<String> volumeUuid;

  Map<String, Object?> encode() => {
    'snapshot_uuid': ?snapshotUuid?.toTfJson(),
    'storage_pool': storagePool.toTfJson(),
    'volume_uuid': volumeUuid.toTfJson(),
  };
}

/// Factory wrapper for `google_netapp_backup`.
///
/// NetApp Volumes supports volume backups, which are copies of your volumes
/// stored independently from the volume. Backups are stored in backup vaults,
/// which are containers for backups. If a volume is lost or deleted, you can
/// use backups to restore your data to a new volume.
///
/// When you create the first backup of a volume, all of the volume's used data
/// is sent to the backup vault. Subsequent backups of the same volume only
/// include data that has changed from the previous backup. This allows for fast
/// incremental-forever backups and reduces the required capacity inside the
/// backup vault.
///
/// You can create manual and scheduled backups. Manual backups can be taken
/// from a volume or from an existing volume snapshot. Scheduled backups require
/// a backup policy.
///
/// NetApp Volumes **backup** stored in a [GoogleNetappBackupVault].
///
/// **Cost / apply:** Backup Storage Charge us-central1 SKU `DCB6-FE72-5443`
/// **$0.045/GiBy·mo** (service `FC86-5113-7C81`) while backup data exists;
/// source volume sits on a never_apply [GoogleNetappStoragePool]. Debt-only
/// on `terradart-validate`. **Never** wire into apply-smoke.
final class GoogleNetappBackup extends Resource {
  static const String tfType = 'google_netapp_backup';

  GoogleNetappBackup(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> location,
    required TfArg<String> vaultName,
    TfArg<String>? sourceVolume,
    TfArg<String>? sourceSnapshot,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    NetappBackupOntapSource? ontapSource,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'vault_name': vaultName,
           'source_volume': ?sourceVolume,
           'source_snapshot': ?sourceSnapshot,
           'description': ?description,
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
           if (ontapSource != null)
             'ontap_source': TfArg.literal(ontapSource.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleNetappBackupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleNetappBackup>`.
  RefTo<GoogleNetappBackup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `backup_region` attribute.
  TfRef<String> get backupRegion =>
      TfRef.attribute<String>(this, 'backup_region');

  /// Reference to `backup_type` attribute.
  TfRef<String> get backupType => TfRef.attribute<String>(this, 'backup_type');

  /// Reference to `chain_storage_bytes` attribute.
  TfRef<String> get chainStorageBytes =>
      TfRef.attribute<String>(this, 'chain_storage_bytes');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `volume_region` attribute.
  TfRef<String> get volumeRegion =>
      TfRef.attribute<String>(this, 'volume_region');

  /// Reference to `volume_usage_bytes` attribute.
  TfRef<String> get volumeUsageBytes =>
      TfRef.attribute<String>(this, 'volume_usage_bytes');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `source_snapshot` attribute.
  TfRef<String> get sourceSnapshot =>
      TfRef.attribute<String>(this, 'source_snapshot');

  /// Reference to `source_volume` attribute.
  TfRef<String> get sourceVolume =>
      TfRef.attribute<String>(this, 'source_volume');

  /// Reference to `vault_name` attribute.
  TfRef<String> get vaultName => TfRef.attribute<String>(this, 'vault_name');
}
