// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_backup_vault_policy`.
const Set<String> _awsBackupVaultPolicySensitive = <String>{};

/// Factory wrapper for `aws_backup_vault_policy`.
final class AwsBackupVaultPolicy extends Resource {
  static const String tfType = 'aws_backup_vault_policy';

  AwsBackupVaultPolicy({
    required super.localName,
    required TfArg<String> backupVaultName,
    required TfArg<String> policy,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'backup_vault_name': backupVaultName,
           'policy': policy,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBackupVaultPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `backup_vault_arn` attribute.
  TfRef<String> get backupVaultArn =>
      TfRef.attribute<String>(this, 'backup_vault_arn');
}
