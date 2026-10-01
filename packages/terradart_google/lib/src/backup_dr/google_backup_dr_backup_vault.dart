// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_backup_dr_backup_vault`.
const Set<String> _googleBackupDrBackupVaultSensitive = <String>{};

/// Backup Dr Backup Vault Access enum for `access_restriction`.
extension type const BackupDrBackupVaultAccessRestriction._(TfArg<String> _)
    implements TfArg<String> {
  BackupDrBackupVaultAccessRestriction.variable(String name)
    : this._(TfArg.variable(name));
  BackupDrBackupVaultAccessRestriction.expression(String template)
    : this._(TfArg.expression(template));
  const BackupDrBackupVaultAccessRestriction.arg(TfArg<String> arg)
    : this._(arg);

  static const accessRestrictionUnspecified =
      BackupDrBackupVaultAccessRestriction._(
        TfArgLiteral('ACCESS_RESTRICTION_UNSPECIFIED'),
      );
  static const withinProject = BackupDrBackupVaultAccessRestriction._(
    TfArgLiteral('WITHIN_PROJECT'),
  );
  static const withinOrganization = BackupDrBackupVaultAccessRestriction._(
    TfArgLiteral('WITHIN_ORGANIZATION'),
  );
  static const unrestricted = BackupDrBackupVaultAccessRestriction._(
    TfArgLiteral('UNRESTRICTED'),
  );
  static const withinOrgButUnrestrictedForBa =
      BackupDrBackupVaultAccessRestriction._(
        TfArgLiteral('WITHIN_ORG_BUT_UNRESTRICTED_FOR_BA'),
      );

  static const List<BackupDrBackupVaultAccessRestriction> values = [
    accessRestrictionUnspecified,
    withinProject,
    withinOrganization,
    unrestricted,
    withinOrgButUnrestrictedForBa,
  ];
}

/// Backup Dr Backup Vault Backup Retention enum for `backup_retention_inheritance`.
extension type const BackupDrBackupVaultBackupRetentionInheritance._(
  TfArg<String> _
) implements TfArg<String> {
  BackupDrBackupVaultBackupRetentionInheritance.variable(String name)
    : this._(TfArg.variable(name));
  BackupDrBackupVaultBackupRetentionInheritance.expression(String template)
    : this._(TfArg.expression(template));
  const BackupDrBackupVaultBackupRetentionInheritance.arg(TfArg<String> arg)
    : this._(arg);

  static const backupRetentionInheritanceUnspecified =
      BackupDrBackupVaultBackupRetentionInheritance._(
        TfArgLiteral('BACKUP_RETENTION_INHERITANCE_UNSPECIFIED'),
      );
  static const inheritVaultRetention =
      BackupDrBackupVaultBackupRetentionInheritance._(
        TfArgLiteral('INHERIT_VAULT_RETENTION'),
      );
  static const matchBackupExpireTime =
      BackupDrBackupVaultBackupRetentionInheritance._(
        TfArgLiteral('MATCH_BACKUP_EXPIRE_TIME'),
      );

  static const List<BackupDrBackupVaultBackupRetentionInheritance> values = [
    backupRetentionInheritanceUnspecified,
    inheritVaultRetention,
    matchBackupExpireTime,
  ];
}

/// Typed helper for the `encryption_config` block of
/// `google_backup_dr_backup_vault` (derived from provider schema).
@immutable
final class BackupDrBackupVaultEncryptionConfig {
  const BackupDrBackupVaultEncryptionConfig({this.kmsKeyName});

  final RefTo<GoogleKmsCryptoKey>? kmsKeyName;

  Map<String, Object?> encode() => {
    'kms_key_name': ?kmsKeyName?.encodeAs('id').toTfJson(),
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
///   'vault',
///   backupVaultId: TfArg.literal('terradart-vault'),
///   location: TfArg.literal('us-central1'),
///   backupMinimumEnforcedRetentionDuration: TfArg.literal('2592000s'), // 30d
/// );
/// ```
final class GoogleBackupDrBackupVault extends Resource {
  static const String tfType = 'google_backup_dr_backup_vault';

  GoogleBackupDrBackupVault(
    super.localName, {
    required TfArg<String> backupVaultId,
    required TfArg<String> location,
    required TfArg<String> backupMinimumEnforcedRetentionDuration,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    TfArg<Map<String, String>>? annotations,
    BackupDrBackupVaultAccessRestriction? accessRestriction,
    BackupDrBackupVaultBackupRetentionInheritance? backupRetentionInheritance,
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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'backup_vault_id': backupVaultId,
           'location': location,
           'backup_minimum_enforced_retention_duration':
               backupMinimumEnforcedRetentionDuration,
           'description': ?description,
           'labels': ?labels,
           'annotations': ?annotations,
           'access_restriction': ?accessRestriction,
           'backup_retention_inheritance': ?backupRetentionInheritance,
           if (encryptionConfig != null)
             'encryption_config': TfArg.literal(encryptionConfig.encode()),
           'effective_time': ?effectiveTime,
           'force_update': ?forceUpdate,
           'force_delete': ?forceDelete,
           'allow_missing': ?allowMissing,
           'ignore_backup_plan_references': ?ignoreBackupPlanReferences,
           'ignore_inactive_datasources': ?ignoreInactiveDatasources,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBackupDrBackupVaultSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBackupDrBackupVault>`.
  RefTo<GoogleBackupDrBackupVault> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `access_restriction` attribute.
  TfRef<String> get accessRestriction =>
      TfRef.attribute<String>(this, 'access_restriction');

  /// Reference to `allow_missing` attribute.
  TfRef<bool> get allowMissing => TfRef.attribute<bool>(this, 'allow_missing');

  /// Reference to `annotations` attribute.
  TfRef<Map<String, String>> get annotations =>
      TfRef.attribute<Map<String, String>>(this, 'annotations');

  /// Reference to `backup_minimum_enforced_retention_duration` attribute.
  TfRef<String> get backupMinimumEnforcedRetentionDuration =>
      TfRef.attribute<String>(
        this,
        'backup_minimum_enforced_retention_duration',
      );

  /// Reference to `backup_retention_inheritance` attribute.
  TfRef<String> get backupRetentionInheritance =>
      TfRef.attribute<String>(this, 'backup_retention_inheritance');

  /// Reference to `backup_vault_id` attribute.
  TfRef<String> get backupVaultId =>
      TfRef.attribute<String>(this, 'backup_vault_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `effective_time` attribute.
  TfRef<String> get effectiveTime =>
      TfRef.attribute<String>(this, 'effective_time');

  /// Reference to `force_delete` attribute.
  TfRef<bool> get forceDelete => TfRef.attribute<bool>(this, 'force_delete');

  /// Reference to `force_update` attribute.
  TfRef<bool> get forceUpdate => TfRef.attribute<bool>(this, 'force_update');

  /// Reference to `force_update_access_restriction` attribute.
  TfRef<bool> get forceUpdateAccessRestriction =>
      TfRef.attribute<bool>(this, 'force_update_access_restriction');

  /// Reference to `ignore_backup_plan_references` attribute.
  TfRef<bool> get ignoreBackupPlanReferences =>
      TfRef.attribute<bool>(this, 'ignore_backup_plan_references');

  /// Reference to `ignore_inactive_datasources` attribute.
  TfRef<bool> get ignoreInactiveDatasources =>
      TfRef.attribute<bool>(this, 'ignore_inactive_datasources');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
