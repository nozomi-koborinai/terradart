// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_rds_cluster`.
const Set<String> _awsRdsClusterSensitive = <String>{
  'master_password',
  'master_password_wo',
};

/// Rds Cluster Cluster Scalability enum for `cluster_scalability_type`.
enum RdsClusterClusterScalabilityType implements TerraformEnum {
  standard('standard'),
  limitless('limitless');

  const RdsClusterClusterScalabilityType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Rds Cluster Database Insights enum for `database_insights_mode`.
enum RdsClusterDatabaseInsightsMode implements TerraformEnum {
  standard('standard'),
  advanced('advanced');

  const RdsClusterDatabaseInsightsMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Rds Cluster Enabled Cloudwatch Logs enum for `enabled_cloudwatch_logs_exports`.
enum RdsClusterEnabledCloudwatchLogsExports implements TerraformEnum {
  audit('audit'),
  error('error'),
  general('general'),
  iamDbAuthError('iam-db-auth-error'),
  instance('instance'),
  postgresql('postgresql'),
  slowquery('slowquery'),
  upgrade('upgrade');

  const RdsClusterEnabledCloudwatchLogsExports(this.terraformValue);
  @override
  final String terraformValue;
}

/// Rds Cluster Engine Lifecycle enum for `engine_lifecycle_support`.
enum RdsClusterEngineLifecycleSupport implements TerraformEnum {
  openSourceRdsExtendedSupport('open-source-rds-extended-support'),
  openSourceRdsExtendedSupportDisabled(
    'open-source-rds-extended-support-disabled',
  );

  const RdsClusterEngineLifecycleSupport(this.terraformValue);
  @override
  final String terraformValue;
}

/// Rds Cluster Engine enum for `engine_mode`.
enum RdsClusterEngineMode implements TerraformEnum {
  global('global'),
  multimaster('multimaster'),
  parallelquery('parallelquery'),
  provisioned('provisioned'),
  serverless('serverless'),
  empty('');

  const RdsClusterEngineMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Rds Cluster Network enum for `network_type`.
enum RdsClusterNetworkType implements TerraformEnum {
  dual('DUAL'),
  ipv4('IPV4');

  const RdsClusterNetworkType(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `cluster_identifier`, `cluster_identifier_prefix` on `aws_rds_cluster`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.clusterIdentifier(...)`.
sealed class RdsClusterClusterIdentifierOrClusterIdentifierPrefix {
  const RdsClusterClusterIdentifierOrClusterIdentifierPrefix();

  /// Sets `cluster_identifier`.
  const factory RdsClusterClusterIdentifierOrClusterIdentifierPrefix.clusterIdentifier(
    TfArg<String> clusterIdentifier,
  ) = RdsClusterClusterIdentifierOrClusterIdentifierPrefixClusterIdentifier;

  /// Sets `cluster_identifier_prefix`.
  const factory RdsClusterClusterIdentifierOrClusterIdentifierPrefix.clusterIdentifierPrefix(
    TfArg<String> clusterIdentifierPrefix,
  ) = RdsClusterClusterIdentifierOrClusterIdentifierPrefixClusterIdentifierPrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [RdsClusterClusterIdentifierOrClusterIdentifierPrefix.clusterIdentifier] choice: sets `cluster_identifier`.
final class RdsClusterClusterIdentifierOrClusterIdentifierPrefixClusterIdentifier
    extends RdsClusterClusterIdentifierOrClusterIdentifierPrefix {
  const RdsClusterClusterIdentifierOrClusterIdentifierPrefixClusterIdentifier(
    this.clusterIdentifier,
  );

  final TfArg<String> clusterIdentifier;

  @override
  String get blockKey => 'cluster_identifier';

  @override
  Map<String, Object?> encode() => {
    'cluster_identifier': clusterIdentifier.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'cluster_identifier': clusterIdentifier,
  };
}

/// The [RdsClusterClusterIdentifierOrClusterIdentifierPrefix.clusterIdentifierPrefix] choice: sets `cluster_identifier_prefix`.
final class RdsClusterClusterIdentifierOrClusterIdentifierPrefixClusterIdentifierPrefix
    extends RdsClusterClusterIdentifierOrClusterIdentifierPrefix {
  const RdsClusterClusterIdentifierOrClusterIdentifierPrefixClusterIdentifierPrefix(
    this.clusterIdentifierPrefix,
  );

  final TfArg<String> clusterIdentifierPrefix;

  @override
  String get blockKey => 'cluster_identifier_prefix';

  @override
  Map<String, Object?> encode() => {
    'cluster_identifier_prefix': clusterIdentifierPrefix.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'cluster_identifier_prefix': clusterIdentifierPrefix,
  };
}

/// At most one of `manage_master_user_password`, `master_password`, `master_password_wo` on `aws_rds_cluster`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.manageMasterUserPassword(...)`.
sealed class RdsClusterManageMasterUserPasswordOrMasterPasswordOrMasterPasswordWo {
  const RdsClusterManageMasterUserPasswordOrMasterPasswordOrMasterPasswordWo();

  /// Sets `manage_master_user_password`.
  const factory RdsClusterManageMasterUserPasswordOrMasterPasswordOrMasterPasswordWo.manageMasterUserPassword(
    TfArg<bool> manageMasterUserPassword,
  ) = RdsClusterManageMasterUserPasswordOrMasterPasswordOrMasterPasswordWoManageMasterUserPassword;

  /// Sets `master_password`.
  const factory RdsClusterManageMasterUserPasswordOrMasterPasswordOrMasterPasswordWo.masterPassword(
    TfArg<String> masterPassword,
  ) = RdsClusterManageMasterUserPasswordOrMasterPasswordOrMasterPasswordWoMasterPassword;

  /// Sets `master_password_wo`.
  const factory RdsClusterManageMasterUserPasswordOrMasterPasswordOrMasterPasswordWo.masterPasswordWo(
    TfArg<String> masterPasswordWo,
  ) = RdsClusterManageMasterUserPasswordOrMasterPasswordOrMasterPasswordWoMasterPasswordWo;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [RdsClusterManageMasterUserPasswordOrMasterPasswordOrMasterPasswordWo.manageMasterUserPassword] choice: sets `manage_master_user_password`.
final class RdsClusterManageMasterUserPasswordOrMasterPasswordOrMasterPasswordWoManageMasterUserPassword
    extends
        RdsClusterManageMasterUserPasswordOrMasterPasswordOrMasterPasswordWo {
  const RdsClusterManageMasterUserPasswordOrMasterPasswordOrMasterPasswordWoManageMasterUserPassword(
    this.manageMasterUserPassword,
  );

  final TfArg<bool> manageMasterUserPassword;

  @override
  String get blockKey => 'manage_master_user_password';

  @override
  Map<String, Object?> encode() => {
    'manage_master_user_password': manageMasterUserPassword.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'manage_master_user_password': manageMasterUserPassword,
  };
}

/// The [RdsClusterManageMasterUserPasswordOrMasterPasswordOrMasterPasswordWo.masterPassword] choice: sets `master_password`.
final class RdsClusterManageMasterUserPasswordOrMasterPasswordOrMasterPasswordWoMasterPassword
    extends
        RdsClusterManageMasterUserPasswordOrMasterPasswordOrMasterPasswordWo {
  const RdsClusterManageMasterUserPasswordOrMasterPasswordOrMasterPasswordWoMasterPassword(
    this.masterPassword,
  );

  final TfArg<String> masterPassword;

  @override
  String get blockKey => 'master_password';

  @override
  Map<String, Object?> encode() => {
    'master_password': masterPassword.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {'master_password': masterPassword};
}

/// The [RdsClusterManageMasterUserPasswordOrMasterPasswordOrMasterPasswordWo.masterPasswordWo] choice: sets `master_password_wo`.
final class RdsClusterManageMasterUserPasswordOrMasterPasswordOrMasterPasswordWoMasterPasswordWo
    extends
        RdsClusterManageMasterUserPasswordOrMasterPasswordOrMasterPasswordWo {
  const RdsClusterManageMasterUserPasswordOrMasterPasswordOrMasterPasswordWoMasterPasswordWo(
    this.masterPasswordWo,
  );

  final TfArg<String> masterPasswordWo;

  @override
  String get blockKey => 'master_password_wo';

  @override
  Map<String, Object?> encode() => {
    'master_password_wo': masterPasswordWo.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'master_password_wo': masterPasswordWo,
  };
}

/// Typed helper for the `restore_to_point_in_time` block of
/// `aws_rds_cluster` (derived from provider schema).
@immutable
final class RdsClusterRestoreToPointInTime {
  const RdsClusterRestoreToPointInTime({
    required this.restoreToTimeOrUseLatestRestorableTime,
    this.restoreType,
    required this.sourceClusterIdentifierOrSourceClusterResourceId,
  });

  final RdsClusterRestoreToPointInTimeRestoreToTimeOrUseLatestRestorableTime
  restoreToTimeOrUseLatestRestorableTime;

  final TfArg<RdsClusterRestoreToPointInTimeRestoreType>? restoreType;

  final RdsClusterRestoreToPointInTimeSourceClusterIdentifierOrSourceClusterResourceId
  sourceClusterIdentifierOrSourceClusterResourceId;

  Map<String, Object?> encode() => {
    ...restoreToTimeOrUseLatestRestorableTime.encode(),
    if (restoreType != null) 'restore_type': restoreType!.toTfJson(),
    ...sourceClusterIdentifierOrSourceClusterResourceId.encode(),
  };
}

/// Exactly one of `restore_to_time`, `use_latest_restorable_time` on the `restore_to_point_in_time` block of `aws_rds_cluster`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.restoreToTime(...)`.
sealed class RdsClusterRestoreToPointInTimeRestoreToTimeOrUseLatestRestorableTime {
  const RdsClusterRestoreToPointInTimeRestoreToTimeOrUseLatestRestorableTime();

  /// Sets `restore_to_time`.
  const factory RdsClusterRestoreToPointInTimeRestoreToTimeOrUseLatestRestorableTime.restoreToTime(
    TfArg<String> restoreToTime,
  ) = RdsClusterRestoreToPointInTimeRestoreToTimeOrUseLatestRestorableTimeRestoreToTime;

  /// Sets `use_latest_restorable_time`.
  const factory RdsClusterRestoreToPointInTimeRestoreToTimeOrUseLatestRestorableTime.useLatestRestorableTime(
    TfArg<bool> useLatestRestorableTime,
  ) = RdsClusterRestoreToPointInTimeRestoreToTimeOrUseLatestRestorableTimeUseLatestRestorableTime;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [RdsClusterRestoreToPointInTimeRestoreToTimeOrUseLatestRestorableTime.restoreToTime] choice: sets `restore_to_time`.
final class RdsClusterRestoreToPointInTimeRestoreToTimeOrUseLatestRestorableTimeRestoreToTime
    extends
        RdsClusterRestoreToPointInTimeRestoreToTimeOrUseLatestRestorableTime {
  const RdsClusterRestoreToPointInTimeRestoreToTimeOrUseLatestRestorableTimeRestoreToTime(
    this.restoreToTime,
  );

  final TfArg<String> restoreToTime;

  @override
  String get blockKey => 'restore_to_time';

  @override
  Map<String, Object?> encode() => {
    'restore_to_time': restoreToTime.toTfJson(),
  };
}

/// The [RdsClusterRestoreToPointInTimeRestoreToTimeOrUseLatestRestorableTime.useLatestRestorableTime] choice: sets `use_latest_restorable_time`.
final class RdsClusterRestoreToPointInTimeRestoreToTimeOrUseLatestRestorableTimeUseLatestRestorableTime
    extends
        RdsClusterRestoreToPointInTimeRestoreToTimeOrUseLatestRestorableTime {
  const RdsClusterRestoreToPointInTimeRestoreToTimeOrUseLatestRestorableTimeUseLatestRestorableTime(
    this.useLatestRestorableTime,
  );

  final TfArg<bool> useLatestRestorableTime;

  @override
  String get blockKey => 'use_latest_restorable_time';

  @override
  Map<String, Object?> encode() => {
    'use_latest_restorable_time': useLatestRestorableTime.toTfJson(),
  };
}

/// Exactly one of `source_cluster_identifier`, `source_cluster_resource_id` on the `restore_to_point_in_time` block of `aws_rds_cluster`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.sourceClusterIdentifier(...)`.
sealed class RdsClusterRestoreToPointInTimeSourceClusterIdentifierOrSourceClusterResourceId {
  const RdsClusterRestoreToPointInTimeSourceClusterIdentifierOrSourceClusterResourceId();

  /// Sets `source_cluster_identifier`.
  const factory RdsClusterRestoreToPointInTimeSourceClusterIdentifierOrSourceClusterResourceId.sourceClusterIdentifier(
    TfArg<String> sourceClusterIdentifier,
  ) = RdsClusterRestoreToPointInTimeSourceClusterIdentifierOrSourceClusterResourceIdSourceClusterIdentifier;

  /// Sets `source_cluster_resource_id`.
  const factory RdsClusterRestoreToPointInTimeSourceClusterIdentifierOrSourceClusterResourceId.sourceClusterResourceId(
    TfArg<String> sourceClusterResourceId,
  ) = RdsClusterRestoreToPointInTimeSourceClusterIdentifierOrSourceClusterResourceIdSourceClusterResourceId;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [RdsClusterRestoreToPointInTimeSourceClusterIdentifierOrSourceClusterResourceId.sourceClusterIdentifier] choice: sets `source_cluster_identifier`.
final class RdsClusterRestoreToPointInTimeSourceClusterIdentifierOrSourceClusterResourceIdSourceClusterIdentifier
    extends
        RdsClusterRestoreToPointInTimeSourceClusterIdentifierOrSourceClusterResourceId {
  const RdsClusterRestoreToPointInTimeSourceClusterIdentifierOrSourceClusterResourceIdSourceClusterIdentifier(
    this.sourceClusterIdentifier,
  );

  final TfArg<String> sourceClusterIdentifier;

  @override
  String get blockKey => 'source_cluster_identifier';

  @override
  Map<String, Object?> encode() => {
    'source_cluster_identifier': sourceClusterIdentifier.toTfJson(),
  };
}

/// The [RdsClusterRestoreToPointInTimeSourceClusterIdentifierOrSourceClusterResourceId.sourceClusterResourceId] choice: sets `source_cluster_resource_id`.
final class RdsClusterRestoreToPointInTimeSourceClusterIdentifierOrSourceClusterResourceIdSourceClusterResourceId
    extends
        RdsClusterRestoreToPointInTimeSourceClusterIdentifierOrSourceClusterResourceId {
  const RdsClusterRestoreToPointInTimeSourceClusterIdentifierOrSourceClusterResourceIdSourceClusterResourceId(
    this.sourceClusterResourceId,
  );

  final TfArg<String> sourceClusterResourceId;

  @override
  String get blockKey => 'source_cluster_resource_id';

  @override
  Map<String, Object?> encode() => {
    'source_cluster_resource_id': sourceClusterResourceId.toTfJson(),
  };
}

/// `restore_type` — derived from the provider schema description.
enum RdsClusterRestoreToPointInTimeRestoreType implements TerraformEnum {
  copyOnWrite('copy-on-write'),
  fullCopy('full-copy');

  const RdsClusterRestoreToPointInTimeRestoreType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `s3_import` block of
/// `aws_rds_cluster` (derived from provider schema).
@immutable
final class RdsClusterS3Import {
  const RdsClusterS3Import({
    required this.bucketName,
    this.bucketPrefix,
    required this.ingestionRole,
    required this.sourceEngine,
    required this.sourceEngineVersion,
  });

  final TfArg<String> bucketName;

  final TfArg<String>? bucketPrefix;

  final TfArg<String> ingestionRole;

  final TfArg<String> sourceEngine;

  final TfArg<String> sourceEngineVersion;

  Map<String, Object?> encode() => {
    'bucket_name': bucketName.toTfJson(),
    if (bucketPrefix != null) 'bucket_prefix': bucketPrefix!.toTfJson(),
    'ingestion_role': ingestionRole.toTfJson(),
    'source_engine': sourceEngine.toTfJson(),
    'source_engine_version': sourceEngineVersion.toTfJson(),
  };
}

/// Typed helper for the `scaling_configuration` block of
/// `aws_rds_cluster` (derived from provider schema).
@immutable
final class RdsClusterScalingConfiguration {
  const RdsClusterScalingConfiguration({
    this.autoPause,
    this.maxCapacity,
    this.minCapacity,
    this.secondsBeforeTimeout,
    this.secondsUntilAutoPause,
    this.timeoutAction,
  });

  final TfArg<bool>? autoPause;

  final TfArg<num>? maxCapacity;

  final TfArg<num>? minCapacity;

  final TfArg<num>? secondsBeforeTimeout;

  final TfArg<num>? secondsUntilAutoPause;

  final TfArg<RdsClusterScalingConfigurationTimeoutAction>? timeoutAction;

  Map<String, Object?> encode() => {
    if (autoPause != null) 'auto_pause': autoPause!.toTfJson(),
    if (maxCapacity != null) 'max_capacity': maxCapacity!.toTfJson(),
    if (minCapacity != null) 'min_capacity': minCapacity!.toTfJson(),
    if (secondsBeforeTimeout != null)
      'seconds_before_timeout': secondsBeforeTimeout!.toTfJson(),
    if (secondsUntilAutoPause != null)
      'seconds_until_auto_pause': secondsUntilAutoPause!.toTfJson(),
    if (timeoutAction != null) 'timeout_action': timeoutAction!.toTfJson(),
  };
}

/// `timeout_action` — derived from the provider schema description.
enum RdsClusterScalingConfigurationTimeoutAction implements TerraformEnum {
  forceapplycapacitychange('ForceApplyCapacityChange'),
  rollbackcapacitychange('RollbackCapacityChange');

  const RdsClusterScalingConfigurationTimeoutAction(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `serverlessv2_scaling_configuration` block of
/// `aws_rds_cluster` (derived from provider schema).
@immutable
final class RdsClusterServerlessv2ScalingConfiguration {
  const RdsClusterServerlessv2ScalingConfiguration({
    required this.maxCapacity,
    required this.minCapacity,
    this.secondsUntilAutoPause,
  });

  final TfArg<num> maxCapacity;

  final TfArg<num> minCapacity;

  final TfArg<num>? secondsUntilAutoPause;

  Map<String, Object?> encode() => {
    'max_capacity': maxCapacity.toTfJson(),
    'min_capacity': minCapacity.toTfJson(),
    if (secondsUntilAutoPause != null)
      'seconds_until_auto_pause': secondsUntilAutoPause!.toTfJson(),
  };
}

/// Factory wrapper for `aws_rds_cluster`.
final class AwsRdsCluster extends Resource {
  static const String tfType = 'aws_rds_cluster';

  AwsRdsCluster({
    required super.localName,
    TfArg<num>? allocatedStorage,
    TfArg<bool>? allowMajorVersionUpgrade,
    TfArg<bool>? applyImmediately,
    TfArg<bool>? autoMinorVersionUpgrade,
    TfArg<List<String>>? availabilityZones,
    TfArg<num>? backtrackWindow,
    TfArg<num>? backupRetentionPeriod,
    TfArg<String>? caCertificateIdentifier,
    RdsClusterClusterIdentifierOrClusterIdentifierPrefix?
    clusterIdentifierOrClusterIdentifierPrefix,
    TfArg<List<String>>? clusterMembers,
    TfArg<RdsClusterClusterScalabilityType>? clusterScalabilityType,
    TfArg<bool>? copyTagsToSnapshot,
    TfArg<RdsClusterDatabaseInsightsMode>? databaseInsightsMode,
    TfArg<String>? databaseName,
    TfArg<String>? dbClusterInstanceClass,
    TfArg<String>? dbClusterParameterGroupName,
    TfArg<String>? dbInstanceParameterGroupName,
    TfArg<String>? dbSubnetGroupName,
    TfArg<String>? dbSystemId,
    TfArg<bool>? deleteAutomatedBackups,
    TfArg<bool>? deletionProtection,
    TfArg<String>? domain,
    TfArg<String>? domainIamRoleName,
    TfArg<bool>? enableGlobalWriteForwarding,
    TfArg<bool>? enableHttpEndpoint,
    TfArg<bool>? enableLocalWriteForwarding,
    List<TfArg<RdsClusterEnabledCloudwatchLogsExports>>?
    enabledCloudwatchLogsExports,
    required TfArg<String> engine,
    TfArg<RdsClusterEngineLifecycleSupport>? engineLifecycleSupport,
    TfArg<RdsClusterEngineMode>? engineMode,
    TfArg<String>? engineVersion,
    TfArg<String>? finalSnapshotIdentifier,
    TfArg<String>? globalClusterIdentifier,
    TfArg<bool>? iamDatabaseAuthenticationEnabled,
    TfArg<List<String>>? iamRoles,
    TfArg<num>? iops,
    TfArg<String>? kmsKeyId,
    RdsClusterManageMasterUserPasswordOrMasterPasswordOrMasterPasswordWo?
    manageMasterUserPasswordOrMasterPasswordOrMasterPasswordWo,
    TfArg<num>? masterPasswordWoVersion,
    TfArg<String>? masterUserSecretKmsKeyId,
    TfArg<String>? masterUsername,
    TfArg<num>? monitoringInterval,
    TfArg<String>? monitoringRoleArn,
    TfArg<RdsClusterNetworkType>? networkType,
    TfArg<bool>? performanceInsightsEnabled,
    TfArg<String>? performanceInsightsKmsKeyId,
    TfArg<num>? performanceInsightsRetentionPeriod,
    TfArg<num>? port,
    TfArg<String>? preferredBackupWindow,
    TfArg<String>? preferredMaintenanceWindow,
    TfArg<String>? region,
    TfArg<String>? replicationSourceIdentifier,
    TfArg<bool>? skipFinalSnapshot,
    TfArg<String>? snapshotIdentifier,
    TfArg<String>? sourceRegion,
    TfArg<bool>? storageEncrypted,
    TfArg<String>? storageType,
    TfArg<Map<String, String>>? tags,
    TfArg<List<String>>? vpcSecurityGroupIds,
    TfArg<List<String>>? warningEventCategories,
    RdsClusterRestoreToPointInTime? restoreToPointInTime,
    RdsClusterS3Import? s3Import,
    RdsClusterScalingConfiguration? scalingConfiguration,
    RdsClusterServerlessv2ScalingConfiguration?
    serverlessv2ScalingConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (allocatedStorage != null) 'allocated_storage': allocatedStorage,
           if (allowMajorVersionUpgrade != null)
             'allow_major_version_upgrade': allowMajorVersionUpgrade,
           if (applyImmediately != null) 'apply_immediately': applyImmediately,
           if (autoMinorVersionUpgrade != null)
             'auto_minor_version_upgrade': autoMinorVersionUpgrade,
           if (availabilityZones != null)
             'availability_zones': availabilityZones,
           if (backtrackWindow != null) 'backtrack_window': backtrackWindow,
           if (backupRetentionPeriod != null)
             'backup_retention_period': backupRetentionPeriod,
           if (caCertificateIdentifier != null)
             'ca_certificate_identifier': caCertificateIdentifier,
           ...?clusterIdentifierOrClusterIdentifierPrefix?.argMap,
           if (clusterMembers != null) 'cluster_members': clusterMembers,
           if (clusterScalabilityType != null)
             'cluster_scalability_type': clusterScalabilityType,
           if (copyTagsToSnapshot != null)
             'copy_tags_to_snapshot': copyTagsToSnapshot,
           if (databaseInsightsMode != null)
             'database_insights_mode': databaseInsightsMode,
           if (databaseName != null) 'database_name': databaseName,
           if (dbClusterInstanceClass != null)
             'db_cluster_instance_class': dbClusterInstanceClass,
           if (dbClusterParameterGroupName != null)
             'db_cluster_parameter_group_name': dbClusterParameterGroupName,
           if (dbInstanceParameterGroupName != null)
             'db_instance_parameter_group_name': dbInstanceParameterGroupName,
           if (dbSubnetGroupName != null)
             'db_subnet_group_name': dbSubnetGroupName,
           if (dbSystemId != null) 'db_system_id': dbSystemId,
           if (deleteAutomatedBackups != null)
             'delete_automated_backups': deleteAutomatedBackups,
           if (deletionProtection != null)
             'deletion_protection': deletionProtection,
           if (domain != null) 'domain': domain,
           if (domainIamRoleName != null)
             'domain_iam_role_name': domainIamRoleName,
           if (enableGlobalWriteForwarding != null)
             'enable_global_write_forwarding': enableGlobalWriteForwarding,
           if (enableHttpEndpoint != null)
             'enable_http_endpoint': enableHttpEndpoint,
           if (enableLocalWriteForwarding != null)
             'enable_local_write_forwarding': enableLocalWriteForwarding,
           if (enabledCloudwatchLogsExports != null)
             'enabled_cloudwatch_logs_exports': TfArg.literal([
               for (final e in enabledCloudwatchLogsExports) e.toTfJson(),
             ]),
           'engine': engine,
           if (engineLifecycleSupport != null)
             'engine_lifecycle_support': engineLifecycleSupport,
           if (engineMode != null) 'engine_mode': engineMode,
           if (engineVersion != null) 'engine_version': engineVersion,
           if (finalSnapshotIdentifier != null)
             'final_snapshot_identifier': finalSnapshotIdentifier,
           if (globalClusterIdentifier != null)
             'global_cluster_identifier': globalClusterIdentifier,
           if (iamDatabaseAuthenticationEnabled != null)
             'iam_database_authentication_enabled':
                 iamDatabaseAuthenticationEnabled,
           if (iamRoles != null) 'iam_roles': iamRoles,
           if (iops != null) 'iops': iops,
           if (kmsKeyId != null) 'kms_key_id': kmsKeyId,
           ...?manageMasterUserPasswordOrMasterPasswordOrMasterPasswordWo
               ?.argMap,
           if (masterPasswordWoVersion != null)
             'master_password_wo_version': masterPasswordWoVersion,
           if (masterUserSecretKmsKeyId != null)
             'master_user_secret_kms_key_id': masterUserSecretKmsKeyId,
           if (masterUsername != null) 'master_username': masterUsername,
           if (monitoringInterval != null)
             'monitoring_interval': monitoringInterval,
           if (monitoringRoleArn != null)
             'monitoring_role_arn': monitoringRoleArn,
           if (networkType != null) 'network_type': networkType,
           if (performanceInsightsEnabled != null)
             'performance_insights_enabled': performanceInsightsEnabled,
           if (performanceInsightsKmsKeyId != null)
             'performance_insights_kms_key_id': performanceInsightsKmsKeyId,
           if (performanceInsightsRetentionPeriod != null)
             'performance_insights_retention_period':
                 performanceInsightsRetentionPeriod,
           if (port != null) 'port': port,
           if (preferredBackupWindow != null)
             'preferred_backup_window': preferredBackupWindow,
           if (preferredMaintenanceWindow != null)
             'preferred_maintenance_window': preferredMaintenanceWindow,
           if (region != null) 'region': region,
           if (replicationSourceIdentifier != null)
             'replication_source_identifier': replicationSourceIdentifier,
           if (skipFinalSnapshot != null)
             'skip_final_snapshot': skipFinalSnapshot,
           if (snapshotIdentifier != null)
             'snapshot_identifier': snapshotIdentifier,
           if (sourceRegion != null) 'source_region': sourceRegion,
           if (storageEncrypted != null) 'storage_encrypted': storageEncrypted,
           if (storageType != null) 'storage_type': storageType,
           if (tags != null) 'tags': tags,
           if (vpcSecurityGroupIds != null)
             'vpc_security_group_ids': vpcSecurityGroupIds,
           if (warningEventCategories != null)
             'warning_event_categories': warningEventCategories,
           if (restoreToPointInTime != null)
             'restore_to_point_in_time': TfArg.literal(
               restoreToPointInTime.encode(),
             ),
           if (s3Import != null) 's3_import': TfArg.literal(s3Import.encode()),
           if (scalingConfiguration != null)
             'scaling_configuration': TfArg.literal(
               scalingConfiguration.encode(),
             ),
           if (serverlessv2ScalingConfiguration != null)
             'serverlessv2_scaling_configuration': TfArg.literal(
               serverlessv2ScalingConfiguration.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRdsClusterSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `ca_certificate_valid_till` attribute.
  TfRef<String> get caCertificateValidTill =>
      TfRef.attribute<String>(this, 'ca_certificate_valid_till');

  /// Reference to `cluster_resource_id` attribute.
  TfRef<String> get clusterResourceId =>
      TfRef.attribute<String>(this, 'cluster_resource_id');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `engine_version_actual` attribute.
  TfRef<String> get engineVersionActual =>
      TfRef.attribute<String>(this, 'engine_version_actual');

  /// Reference to `hosted_zone_id` attribute.
  TfRef<String> get hostedZoneId =>
      TfRef.attribute<String>(this, 'hosted_zone_id');

  /// Reference to `master_user_secret` attribute.
  TfRef<List<Map<String, Object?>>> get masterUserSecret =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'master_user_secret');

  /// Reference to `reader_endpoint` attribute.
  TfRef<String> get readerEndpoint =>
      TfRef.attribute<String>(this, 'reader_endpoint');

  /// Reference to `upgrade_rollout_order` attribute.
  TfRef<String> get upgradeRolloutOrder =>
      TfRef.attribute<String>(this, 'upgrade_rollout_order');
}
