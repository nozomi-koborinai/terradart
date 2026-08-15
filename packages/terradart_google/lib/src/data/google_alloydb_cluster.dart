// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_alloydb_cluster`.
const Set<String> _googleAlloydbClusterSensitive = <String>{};

/// Factory wrapper for `google_alloydb_cluster`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleAlloydbCluster extends Data {
  static const String tfType = 'google_alloydb_cluster';

  DataGoogleAlloydbCluster({
    required super.localName,
    required TfArg<String> clusterId,
    TfArg<String>? location,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_id': clusterId,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleAlloydbClusterSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `annotations` attribute.
  TfRef<Map<String, String>> get annotations =>
      TfRef.attribute<Map<String, String>>(this, 'annotations');

  /// Reference to `automated_backup_policy` attribute.
  TfRef<List<Map<String, Object?>>> get automatedBackupPolicy =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'automated_backup_policy',
      );

  /// Reference to `backup_source` attribute.
  TfRef<List<Map<String, Object?>>> get backupSource =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'backup_source');

  /// Reference to `backupdr_backup_source` attribute.
  TfRef<List<Map<String, Object?>>> get backupdrBackupSource =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'backupdr_backup_source',
      );

  /// Reference to `cluster_type` attribute.
  TfRef<String> get clusterType =>
      TfRef.attribute<String>(this, 'cluster_type');

  /// Reference to `continuous_backup_config` attribute.
  TfRef<List<Map<String, Object?>>> get continuousBackupConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'continuous_backup_config',
      );

  /// Reference to `continuous_backup_info` attribute.
  TfRef<List<Map<String, Object?>>> get continuousBackupInfo =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'continuous_backup_info',
      );

  /// Reference to `database_version` attribute.
  TfRef<String> get databaseVersion =>
      TfRef.attribute<String>(this, 'database_version');

  /// Reference to `dataplex_config` attribute.
  TfRef<List<Map<String, Object?>>> get dataplexConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'dataplex_config');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deletion_protection` attribute.
  TfRef<bool> get deletionProtection =>
      TfRef.attribute<bool>(this, 'deletion_protection');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `effective_annotations` attribute.
  TfRef<Map<String, String>> get effectiveAnnotations =>
      TfRef.attribute<Map<String, String>>(this, 'effective_annotations');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `encryption_config` attribute.
  TfRef<List<Map<String, Object?>>> get encryptionConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'encryption_config');

  /// Reference to `encryption_info` attribute.
  TfRef<List<Map<String, Object?>>> get encryptionInfo =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'encryption_info');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `initial_user` attribute.
  TfRef<List<Map<String, Object?>>> get initialUser =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'initial_user');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `maintenance_update_policy` attribute.
  TfRef<List<Map<String, Object?>>> get maintenanceUpdatePolicy =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'maintenance_update_policy',
      );

  /// Reference to `migration_source` attribute.
  TfRef<List<Map<String, Object?>>> get migrationSource =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'migration_source');

  /// Reference to `network_config` attribute.
  TfRef<List<Map<String, Object?>>> get networkConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'network_config');

  /// Reference to `psc_config` attribute.
  TfRef<List<Map<String, Object?>>> get pscConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'psc_config');

  /// Reference to `reconciling` attribute.
  TfRef<bool> get reconciling => TfRef.attribute<bool>(this, 'reconciling');

  /// Reference to `restore_backup_source` attribute.
  TfRef<List<Map<String, Object?>>> get restoreBackupSource =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'restore_backup_source',
      );

  /// Reference to `restore_backupdr_backup_source` attribute.
  TfRef<List<Map<String, Object?>>> get restoreBackupdrBackupSource =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'restore_backupdr_backup_source',
      );

  /// Reference to `restore_backupdr_pitr_source` attribute.
  TfRef<List<Map<String, Object?>>> get restoreBackupdrPitrSource =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'restore_backupdr_pitr_source',
      );

  /// Reference to `restore_continuous_backup_source` attribute.
  TfRef<List<Map<String, Object?>>> get restoreContinuousBackupSource =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'restore_continuous_backup_source',
      );

  /// Reference to `secondary_config` attribute.
  TfRef<List<Map<String, Object?>>> get secondaryConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'secondary_config');

  /// Reference to `skip_await_major_version_upgrade` attribute.
  TfRef<bool> get skipAwaitMajorVersionUpgrade =>
      TfRef.attribute<bool>(this, 'skip_await_major_version_upgrade');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `subscription_type` attribute.
  TfRef<String> get subscriptionType =>
      TfRef.attribute<String>(this, 'subscription_type');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `trial_metadata` attribute.
  TfRef<List<Map<String, Object?>>> get trialMetadata =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'trial_metadata');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');
}
