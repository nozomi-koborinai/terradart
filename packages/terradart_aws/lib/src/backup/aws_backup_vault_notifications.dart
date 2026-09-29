// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_backup_vault_notifications`.
const Set<String> _awsBackupVaultNotificationsSensitive = <String>{};

/// Backup Vault Notifications Backup Vault enum for `backup_vault_events`.
enum BackupVaultNotificationsBackupVaultEvents implements TerraformEnum {
  backupJobStarted('BACKUP_JOB_STARTED'),
  backupJobCompleted('BACKUP_JOB_COMPLETED'),
  backupJobSuccessful('BACKUP_JOB_SUCCESSFUL'),
  backupJobFailed('BACKUP_JOB_FAILED'),
  backupJobExpired('BACKUP_JOB_EXPIRED'),
  restoreJobStarted('RESTORE_JOB_STARTED'),
  restoreJobCompleted('RESTORE_JOB_COMPLETED'),
  restoreJobSuccessful('RESTORE_JOB_SUCCESSFUL'),
  restoreJobFailed('RESTORE_JOB_FAILED'),
  copyJobStarted('COPY_JOB_STARTED'),
  copyJobSuccessful('COPY_JOB_SUCCESSFUL'),
  copyJobFailed('COPY_JOB_FAILED'),
  recoveryPointModified('RECOVERY_POINT_MODIFIED'),
  backupPlanCreated('BACKUP_PLAN_CREATED'),
  backupPlanModified('BACKUP_PLAN_MODIFIED'),
  s3BackupObjectFailed('S3_BACKUP_OBJECT_FAILED'),
  s3RestoreObjectFailed('S3_RESTORE_OBJECT_FAILED'),
  continuousBackupInterrupted('CONTINUOUS_BACKUP_INTERRUPTED'),
  recoveryPointIndexCompleted('RECOVERY_POINT_INDEX_COMPLETED'),
  recoveryPointIndexDeleted('RECOVERY_POINT_INDEX_DELETED'),
  recoveryPointIndexingFailed('RECOVERY_POINT_INDEXING_FAILED'),
  eksRestoreObjectFailed('EKS_RESTORE_OBJECT_FAILED'),
  eksRestoreObjectSkipped('EKS_RESTORE_OBJECT_SKIPPED'),
  eksBackupObjectFailed('EKS_BACKUP_OBJECT_FAILED'),
  accessPointAvailable('ACCESS_POINT_AVAILABLE'),
  accessPointCreationFailed('ACCESS_POINT_CREATION_FAILED'),
  accessPointDeleted('ACCESS_POINT_DELETED'),
  accessPointDeletionFailed('ACCESS_POINT_DELETION_FAILED'),
  accessPointExpired('ACCESS_POINT_EXPIRED'),
  accessPointDisassociated('ACCESS_POINT_DISASSOCIATED');

  const BackupVaultNotificationsBackupVaultEvents(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_backup_vault_notifications`.
final class AwsBackupVaultNotifications extends Resource {
  static const String tfType = 'aws_backup_vault_notifications';

  AwsBackupVaultNotifications({
    required super.localName,
    required List<TfArg<BackupVaultNotificationsBackupVaultEvents>>
    backupVaultEvents,
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
           'backup_vault_events': TfArg.literal([
             for (final e in backupVaultEvents) e.toTfJson(),
           ]),
           'backup_vault_name': backupVaultName,
           if (region != null) 'region': region,
           'sns_topic_arn': snsTopicArn,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBackupVaultNotificationsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsBackupVaultNotifications>`.
  RefTo<AwsBackupVaultNotifications> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `backup_vault_arn` attribute.
  TfRef<String> get backupVaultArn =>
      TfRef.attribute<String>(this, 'backup_vault_arn');
}
