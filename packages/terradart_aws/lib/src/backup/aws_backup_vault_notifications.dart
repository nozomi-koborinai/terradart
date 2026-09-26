// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_backup_vault_notifications`.
const Set<String> _awsBackupVaultNotificationsSensitive = <String>{};

/// Factory wrapper for `aws_backup_vault_notifications`.
final class AwsBackupVaultNotifications extends Resource {
  static const String tfType = 'aws_backup_vault_notifications';

  AwsBackupVaultNotifications({
    required super.localName,
    required TfArg<List<String>> backupVaultEvents,
    required TfArg<String> backupVaultName,
    TfArg<String>? region,
    required TfArg<String> snsTopicArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'backup_vault_events': backupVaultEvents,
           'backup_vault_name': backupVaultName,
           if (region != null) 'region': region,
           'sns_topic_arn': snsTopicArn,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBackupVaultNotificationsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `backup_vault_arn` attribute.
  TfRef<String> get backupVaultArn =>
      TfRef.attribute<String>(this, 'backup_vault_arn');
}
