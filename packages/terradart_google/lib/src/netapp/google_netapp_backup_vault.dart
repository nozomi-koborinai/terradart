// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_netapp_backup_vault`.
const Set<String> _googleNetappBackupVaultSensitive = <String>{};

/// Netapp Backup Vault enum for `backup_vault_type`.
enum NetappBackupVaultType implements TerraformEnum {
  backupVaultTypeUnspecified('BACKUP_VAULT_TYPE_UNSPECIFIED'),
  inRegion('IN_REGION'),
  crossRegion('CROSS_REGION');

  const NetappBackupVaultType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Netapp Backup Vault Encryption enum for `encryption_state`.
enum NetappBackupVaultEncryptionState implements TerraformEnum {
  encryptionStateUnspecified('ENCRYPTION_STATE_UNSPECIFIED'),
  encryptionStatePending('ENCRYPTION_STATE_PENDING'),
  encryptionStateCompleted('ENCRYPTION_STATE_COMPLETED'),
  encryptionStateInProgress('ENCRYPTION_STATE_IN_PROGRESS'),
  encryptionStateFailed('ENCRYPTION_STATE_FAILED');

  const NetappBackupVaultEncryptionState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `backup_retention_policy` block of
/// `google_netapp_backup_vault` (derived from provider schema).
@immutable
final class NetappBackupVaultBackupRetentionPolicy {
  const NetappBackupVaultBackupRetentionPolicy({
    required this.backupMinimumEnforcedRetentionDays,
    this.dailyBackupImmutable,
    this.manualBackupImmutable,
    this.monthlyBackupImmutable,
    this.weeklyBackupImmutable,
  });

  final TfArg<num> backupMinimumEnforcedRetentionDays;

  final TfArg<bool>? dailyBackupImmutable;

  final TfArg<bool>? manualBackupImmutable;

  final TfArg<bool>? monthlyBackupImmutable;

  final TfArg<bool>? weeklyBackupImmutable;

  Map<String, Object?> encode() => {
    'backup_minimum_enforced_retention_days': backupMinimumEnforcedRetentionDays
        .toTfJson(),
    'daily_backup_immutable': ?dailyBackupImmutable?.toTfJson(),
    'manual_backup_immutable': ?manualBackupImmutable?.toTfJson(),
    'monthly_backup_immutable': ?monthlyBackupImmutable?.toTfJson(),
    'weekly_backup_immutable': ?weeklyBackupImmutable?.toTfJson(),
  };
}

/// Factory wrapper for `google_netapp_backup_vault`.
///
/// A backup vault is the location where backups are stored. You can only create
/// one backup vault per region. A vault can hold multiple backups for multiple
/// volumes in that region.
///
/// NetApp Volumes **backup vault** — destination for volume backups.
///
/// **Cost:** Backup Storage Charge (us-central1 SKU `DCB6-FE72-5443`
/// **$0.045/GiBy·mo**) applies to stored backup data; an empty vault
/// has no capacity charge. Deferred with the pool Wave (no
/// apply-smoke quickstart).
///
/// Example:
/// ```dart
/// GoogleNetappBackupVault(
///   'vault',
///   name: TfArg.literal('terradart-vault'),
///   location: TfArg.literal('us-central1'),
/// );
/// ```
final class GoogleNetappBackupVault extends Resource {
  static const String tfType = 'google_netapp_backup_vault';

  GoogleNetappBackupVault(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> location,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? backupRegion,
    TfArg<String>? backupVaultType,
    NetappBackupVaultBackupRetentionPolicy? backupRetentionPolicy,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'description': ?description,
           'labels': ?labels,
           'backup_region': ?backupRegion,
           'backup_vault_type': ?backupVaultType,
           if (backupRetentionPolicy != null)
             'backup_retention_policy': TfArg.literal(
               backupRetentionPolicy.encode(),
             ),
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleNetappBackupVaultSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleNetappBackupVault>`.
  RefTo<GoogleNetappBackupVault> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `backups_crypto_key_version` attribute.
  TfRef<String> get backupsCryptoKeyVersion =>
      TfRef.attribute<String>(this, 'backups_crypto_key_version');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `destination_backup_vault` attribute.
  TfRef<String> get destinationBackupVault =>
      TfRef.attribute<String>(this, 'destination_backup_vault');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `encryption_state` attribute.
  TfRef<String> get encryptionState =>
      TfRef.attribute<String>(this, 'encryption_state');

  /// Reference to `source_backup_vault` attribute.
  TfRef<String> get sourceBackupVault =>
      TfRef.attribute<String>(this, 'source_backup_vault');

  /// Reference to `source_region` attribute.
  TfRef<String> get sourceRegion =>
      TfRef.attribute<String>(this, 'source_region');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `backup_region` attribute.
  TfRef<String> get backupRegion =>
      TfRef.attribute<String>(this, 'backup_region');

  /// Reference to `backup_vault_type` attribute.
  TfRef<String> get backupVaultType =>
      TfRef.attribute<String>(this, 'backup_vault_type');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `kms_config` attribute.
  TfRef<String> get kmsConfig => TfRef.attribute<String>(this, 'kms_config');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
