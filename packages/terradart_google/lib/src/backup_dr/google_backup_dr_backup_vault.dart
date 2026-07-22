// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_backup_dr_backup_vault`.
const Set<String> _googleBackupDrBackupVaultSensitive = <String>{};

/// Backup Dr Backup Vault Access enum for `access_restriction`.
enum BackupDrBackupVaultAccessRestriction implements TerraformEnum {
  accessRestrictionUnspecified('ACCESS_RESTRICTION_UNSPECIFIED'),
  withinProject('WITHIN_PROJECT'),
  withinOrganization('WITHIN_ORGANIZATION'),
  unrestricted('UNRESTRICTED'),
  withinOrgButUnrestrictedForBa('WITHIN_ORG_BUT_UNRESTRICTED_FOR_BA');

  const BackupDrBackupVaultAccessRestriction(this.terraformValue);
  @override
  final String terraformValue;
}

/// Backup Dr Backup Vault Backup Retention enum for `backup_retention_inheritance`.
enum BackupDrBackupVaultBackupRetentionInheritance implements TerraformEnum {
  backupRetentionInheritanceUnspecified(
    'BACKUP_RETENTION_INHERITANCE_UNSPECIFIED',
  ),
  inheritVaultRetention('INHERIT_VAULT_RETENTION'),
  matchBackupExpireTime('MATCH_BACKUP_EXPIRE_TIME');

  const BackupDrBackupVaultBackupRetentionInheritance(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `encryption_config` block of
/// `google_backup_dr_backup_vault` (derived from provider schema).
@immutable
final class BackupDrBackupVaultEncryptionConfig {
  const BackupDrBackupVaultEncryptionConfig({this.kmsKeyName});

  final TfArg<String>? kmsKeyName;

  Map<String, Object?> encode() => {
    if (kmsKeyName != null) 'kms_key_name': kmsKeyName!.toTfJson(),
  };
}

/// Factory wrapper for `google_backup_dr_backup_vault`.
///
/// Container to store and organize immutable and indelible backups.
///
/// Backup and DR Service **backup vault** — stores protected backups with
/// an enforced minimum retention.
///
/// **Cost:** Cloud Billing Catalog service `3DAD-299B-0D94` bills BackupDR
/// **storage** while backups exist (us-central1 Long-Term Standard SKU
/// `5A13-2468-31B1` **$0.045/GiBy·mo**) plus **management** fees for
/// protected resources (GCE VM management SKU `0456-5BF2-438E`
/// **$0.02/GiBy·mo`). Destroying the vault does not erase cost risk if
/// retention blocks delete. Too expensive for apply-smoke — factories
/// ship without a quickstart.
///
/// Enable `backupdr.googleapis.com` via [GoogleProjectService] before apply.
///
/// Example:
/// ```dart
/// GoogleBackupDrBackupVault(
///   localName: 'vault',
///   backupVaultId: TfArg.literal('terradart-vault'),
///   location: TfArg.literal('us-central1'),
///   backupMinimumEnforcedRetentionDuration: TfArg.literal('2592000s'), // 30d
/// );
/// ```
final class GoogleBackupDrBackupVault extends Resource {
  static const String tfType = 'google_backup_dr_backup_vault';

  GoogleBackupDrBackupVault({
    required super.localName,
    required TfArg<String> backupVaultId,
    required TfArg<String> location,
    required TfArg<String> backupMinimumEnforcedRetentionDuration,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    TfArg<Map<String, String>>? annotations,
    TfArg<BackupDrBackupVaultAccessRestriction>? accessRestriction,
    TfArg<BackupDrBackupVaultBackupRetentionInheritance>?
    backupRetentionInheritance,
    BackupDrBackupVaultEncryptionConfig? encryptionConfig,
    TfArg<String>? effectiveTime,
    TfArg<bool>? forceUpdate,
    TfArg<bool>? forceDelete,
    TfArg<bool>? allowMissing,
    TfArg<bool>? ignoreBackupPlanReferences,
    TfArg<bool>? ignoreInactiveDatasources,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'backup_vault_id': backupVaultId,
           'location': location,
           'backup_minimum_enforced_retention_duration':
               backupMinimumEnforcedRetentionDuration,
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
           if (annotations != null) 'annotations': annotations,
           if (accessRestriction != null)
             'access_restriction': accessRestriction,
           if (backupRetentionInheritance != null)
             'backup_retention_inheritance': backupRetentionInheritance,
           if (encryptionConfig != null)
             'encryption_config': TfArg.literal(encryptionConfig.encode()),
           if (effectiveTime != null) 'effective_time': effectiveTime,
           if (forceUpdate != null) 'force_update': forceUpdate,
           if (forceDelete != null) 'force_delete': forceDelete,
           if (allowMissing != null) 'allow_missing': allowMissing,
           if (ignoreBackupPlanReferences != null)
             'ignore_backup_plan_references': ignoreBackupPlanReferences,
           if (ignoreInactiveDatasources != null)
             'ignore_inactive_datasources': ignoreInactiveDatasources,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBackupDrBackupVaultSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `backup_count` attribute.
  TfRef<String> get backupCount =>
      TfRef.attribute<String>(this, 'backup_count');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `deletable` attribute.
  TfRef<bool> get deletable => TfRef.attribute<bool>(this, 'deletable');

  /// Reference to `effective_annotations` attribute.
  TfRef<Map<String, String>> get effectiveAnnotations =>
      TfRef.attribute<Map<String, String>>(this, 'effective_annotations');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `service_account` attribute.
  TfRef<String> get serviceAccount =>
      TfRef.attribute<String>(this, 'service_account');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `total_stored_bytes` attribute.
  TfRef<String> get totalStoredBytes =>
      TfRef.attribute<String>(this, 'total_stored_bytes');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `backup_vault_id` attribute.
  TfRef<String> get backupVaultIdRef =>
      TfRef.attribute<String>(this, 'backup_vault_id');
}
