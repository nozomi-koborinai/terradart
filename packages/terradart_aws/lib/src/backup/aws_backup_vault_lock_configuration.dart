// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_backup_vault_lock_configuration`.
const Set<String> _awsBackupVaultLockConfigurationSensitive = <String>{};

/// Factory wrapper for `aws_backup_vault_lock_configuration`.
final class AwsBackupVaultLockConfiguration extends Resource {
  static const String tfType = 'aws_backup_vault_lock_configuration';

  AwsBackupVaultLockConfiguration({
    required super.localName,
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
           if (changeableForDays != null)
             'changeable_for_days': changeableForDays,
           if (maxRetentionDays != null) 'max_retention_days': maxRetentionDays,
           if (minRetentionDays != null) 'min_retention_days': minRetentionDays,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBackupVaultLockConfigurationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `backup_vault_arn` attribute.
  TfRef<String> get backupVaultArn =>
      TfRef.attribute<String>(this, 'backup_vault_arn');
}
