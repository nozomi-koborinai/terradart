// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../sns/aws_sns_topic.dart' show AwsSnsTopic;

/// Sensitive field paths for `aws_backup_vault_notifications`.
const Set<String> _awsBackupVaultNotificationsSensitive = <String>{};

/// Backup Vault Notifications Backup Vault enum for `backup_vault_events`.
extension type const BackupVaultNotificationsBackupVaultEvents._(
  TfArg<String> _
) implements TfArg<String> {
  BackupVaultNotificationsBackupVaultEvents.variable(String name)
    : this._(TfArg.variable(name));
  BackupVaultNotificationsBackupVaultEvents.expression(String template)
    : this._(TfArg.expression(template));
  const BackupVaultNotificationsBackupVaultEvents.arg(TfArg<String> arg)
    : this._(arg);

  static const backupJobStarted = BackupVaultNotificationsBackupVaultEvents._(
    TfArgLiteral('BACKUP_JOB_STARTED'),
  );
  static const backupJobCompleted = BackupVaultNotificationsBackupVaultEvents._(
    TfArgLiteral('BACKUP_JOB_COMPLETED'),
  );
  static const backupJobSuccessful =
      BackupVaultNotificationsBackupVaultEvents._(
        TfArgLiteral('BACKUP_JOB_SUCCESSFUL'),
      );
  static const backupJobFailed = BackupVaultNotificationsBackupVaultEvents._(
    TfArgLiteral('BACKUP_JOB_FAILED'),
  );
  static const backupJobExpired = BackupVaultNotificationsBackupVaultEvents._(
    TfArgLiteral('BACKUP_JOB_EXPIRED'),
  );
  static const restoreJobStarted = BackupVaultNotificationsBackupVaultEvents._(
    TfArgLiteral('RESTORE_JOB_STARTED'),
  );
  static const restoreJobCompleted =
      BackupVaultNotificationsBackupVaultEvents._(
        TfArgLiteral('RESTORE_JOB_COMPLETED'),
      );
  static const restoreJobSuccessful =
      BackupVaultNotificationsBackupVaultEvents._(
        TfArgLiteral('RESTORE_JOB_SUCCESSFUL'),
      );
  static const restoreJobFailed = BackupVaultNotificationsBackupVaultEvents._(
    TfArgLiteral('RESTORE_JOB_FAILED'),
  );
  static const copyJobStarted = BackupVaultNotificationsBackupVaultEvents._(
    TfArgLiteral('COPY_JOB_STARTED'),
  );
  static const copyJobSuccessful = BackupVaultNotificationsBackupVaultEvents._(
    TfArgLiteral('COPY_JOB_SUCCESSFUL'),
  );
  static const copyJobFailed = BackupVaultNotificationsBackupVaultEvents._(
    TfArgLiteral('COPY_JOB_FAILED'),
  );
  static const recoveryPointModified =
      BackupVaultNotificationsBackupVaultEvents._(
        TfArgLiteral('RECOVERY_POINT_MODIFIED'),
      );
  static const backupPlanCreated = BackupVaultNotificationsBackupVaultEvents._(
    TfArgLiteral('BACKUP_PLAN_CREATED'),
  );
  static const backupPlanModified = BackupVaultNotificationsBackupVaultEvents._(
    TfArgLiteral('BACKUP_PLAN_MODIFIED'),
  );
  static const s3BackupObjectFailed =
      BackupVaultNotificationsBackupVaultEvents._(
        TfArgLiteral('S3_BACKUP_OBJECT_FAILED'),
      );
  static const s3RestoreObjectFailed =
      BackupVaultNotificationsBackupVaultEvents._(
        TfArgLiteral('S3_RESTORE_OBJECT_FAILED'),
      );
  static const continuousBackupInterrupted =
      BackupVaultNotificationsBackupVaultEvents._(
        TfArgLiteral('CONTINUOUS_BACKUP_INTERRUPTED'),
      );
  static const recoveryPointIndexCompleted =
      BackupVaultNotificationsBackupVaultEvents._(
        TfArgLiteral('RECOVERY_POINT_INDEX_COMPLETED'),
      );
  static const recoveryPointIndexDeleted =
      BackupVaultNotificationsBackupVaultEvents._(
        TfArgLiteral('RECOVERY_POINT_INDEX_DELETED'),
      );
  static const recoveryPointIndexingFailed =
      BackupVaultNotificationsBackupVaultEvents._(
        TfArgLiteral('RECOVERY_POINT_INDEXING_FAILED'),
      );
  static const eksRestoreObjectFailed =
      BackupVaultNotificationsBackupVaultEvents._(
        TfArgLiteral('EKS_RESTORE_OBJECT_FAILED'),
      );
  static const eksRestoreObjectSkipped =
      BackupVaultNotificationsBackupVaultEvents._(
        TfArgLiteral('EKS_RESTORE_OBJECT_SKIPPED'),
      );
  static const eksBackupObjectFailed =
      BackupVaultNotificationsBackupVaultEvents._(
        TfArgLiteral('EKS_BACKUP_OBJECT_FAILED'),
      );
  static const accessPointAvailable =
      BackupVaultNotificationsBackupVaultEvents._(
        TfArgLiteral('ACCESS_POINT_AVAILABLE'),
      );
  static const accessPointCreationFailed =
      BackupVaultNotificationsBackupVaultEvents._(
        TfArgLiteral('ACCESS_POINT_CREATION_FAILED'),
      );
  static const accessPointDeleted = BackupVaultNotificationsBackupVaultEvents._(
    TfArgLiteral('ACCESS_POINT_DELETED'),
  );
  static const accessPointDeletionFailed =
      BackupVaultNotificationsBackupVaultEvents._(
        TfArgLiteral('ACCESS_POINT_DELETION_FAILED'),
      );
  static const accessPointExpired = BackupVaultNotificationsBackupVaultEvents._(
    TfArgLiteral('ACCESS_POINT_EXPIRED'),
  );
  static const accessPointDisassociated =
      BackupVaultNotificationsBackupVaultEvents._(
        TfArgLiteral('ACCESS_POINT_DISASSOCIATED'),
      );

  static const List<BackupVaultNotificationsBackupVaultEvents> values = [
    backupJobStarted,
    backupJobCompleted,
    backupJobSuccessful,
    backupJobFailed,
    backupJobExpired,
    restoreJobStarted,
    restoreJobCompleted,
    restoreJobSuccessful,
    restoreJobFailed,
    copyJobStarted,
    copyJobSuccessful,
    copyJobFailed,
    recoveryPointModified,
    backupPlanCreated,
    backupPlanModified,
    s3BackupObjectFailed,
    s3RestoreObjectFailed,
    continuousBackupInterrupted,
    recoveryPointIndexCompleted,
    recoveryPointIndexDeleted,
    recoveryPointIndexingFailed,
    eksRestoreObjectFailed,
    eksRestoreObjectSkipped,
    eksBackupObjectFailed,
    accessPointAvailable,
    accessPointCreationFailed,
    accessPointDeleted,
    accessPointDeletionFailed,
    accessPointExpired,
    accessPointDisassociated,
  ];
}

/// Factory wrapper for `aws_backup_vault_notifications`.
final class AwsBackupVaultNotifications extends Resource {
  static const String tfType = 'aws_backup_vault_notifications';

  AwsBackupVaultNotifications(
    super.localName, {
    required List<BackupVaultNotificationsBackupVaultEvents> backupVaultEvents,
    required TfArg<String> backupVaultName,
    TfArg<String>? region,
    required RefTo<AwsSnsTopic> snsTopicArn,
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
           'region': ?region,
           'sns_topic_arn': snsTopicArn.encodeAs('arn'),
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

  /// Reference to `backup_vault_events` attribute.
  TfRef<List<String>> get backupVaultEvents =>
      TfRef.attribute<List<String>>(this, 'backup_vault_events');

  /// Reference to `backup_vault_name` attribute.
  TfRef<String> get backupVaultName =>
      TfRef.attribute<String>(this, 'backup_vault_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `sns_topic_arn` attribute.
  TfRef<String> get snsTopicArn =>
      TfRef.attribute<String>(this, 'sns_topic_arn');
}
