// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_backup_vault_lock_configuration`.
const Set<String> _awsBackupVaultLockConfigurationSensitive = <String>{};

/// Factory wrapper for `aws_backup_vault_lock_configuration`.
final class AwsBackupVaultLockConfiguration extends Resource {
  static const String tfType = 'aws_backup_vault_lock_configuration';

  AwsBackupVaultLockConfiguration(
    super.localName, {
    required TfArg<String> backupVaultName,
    TfArg<num>? changeableForDays,
    TfArg<num>? maxRetentionDays,
    TfArg<num>? minRetentionDays,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'backup_vault_name': backupVaultName,
           'changeable_for_days': ?changeableForDays,
           'max_retention_days': ?maxRetentionDays,
           'min_retention_days': ?minRetentionDays,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBackupVaultLockConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsBackupVaultLockConfiguration>`.
  RefTo<AwsBackupVaultLockConfiguration> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `backup_vault_arn` attribute.
  TfRef<String> get backupVaultArn =>
      TfRef.attribute<String>(this, 'backup_vault_arn');

  /// Reference to `backup_vault_name` attribute.
  TfRef<String> get backupVaultName =>
      TfRef.attribute<String>(this, 'backup_vault_name');

  /// Reference to `changeable_for_days` attribute.
  TfRef<num> get changeableForDays =>
      TfRef.attribute<num>(this, 'changeable_for_days');

  /// Reference to `max_retention_days` attribute.
  TfRef<num> get maxRetentionDays =>
      TfRef.attribute<num>(this, 'max_retention_days');

  /// Reference to `min_retention_days` attribute.
  TfRef<num> get minRetentionDays =>
      TfRef.attribute<num>(this, 'min_retention_days');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
