// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../kms/aws_kms_key.dart' show AwsKmsKey;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_rds_cluster`.
const Set<String> _awsRdsClusterSensitive = <String>{
  'master_password',
  'master_password_wo',
};

/// Rds Cluster Scalability enum for `cluster_scalability_type`.
enum RdsClusterScalabilityType implements TerraformEnum {
  standard('standard'),
  limitless('limitless');

  const RdsClusterScalabilityType(this.terraformValue);
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
sealed class RdsClusterIdentifier {
  const RdsClusterIdentifier();

  /// Sets `cluster_identifier`.
  const factory RdsClusterIdentifier.clusterIdentifier(
    TfArg<String> clusterIdentifier,
  ) = RdsClusterIdentifierChoice;

  /// Sets `cluster_identifier_prefix`.
  const factory RdsClusterIdentifier.clusterIdentifierPrefix(
    TfArg<String> clusterIdentifierPrefix,
  ) = RdsClusterIdentifierPrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [RdsClusterIdentifier.clusterIdentifier] choice: sets `cluster_identifier`.
final class RdsClusterIdentifierChoice extends RdsClusterIdentifier {
  const RdsClusterIdentifierChoice(this.clusterIdentifier);

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

/// The [RdsClusterIdentifier.clusterIdentifierPrefix] choice: sets `cluster_identifier_prefix`.
final class RdsClusterIdentifierPrefix extends RdsClusterIdentifier {
  const RdsClusterIdentifierPrefix(this.clusterIdentifierPrefix);

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
sealed class RdsClusterMasterPassword {
  const RdsClusterMasterPassword();

  /// Sets `manage_master_user_password`.
  const factory RdsClusterMasterPassword.manageMasterUserPassword(
    TfArg<bool> manageMasterUserPassword,
  ) = RdsClusterMasterPasswordManageMasterUserPassword;

  /// Sets `master_password`.
  const factory RdsClusterMasterPassword.masterPassword(
    TfArg<String> masterPassword,
  ) = RdsClusterMasterPasswordChoice;

  /// Sets `master_password_wo`.
  const factory RdsClusterMasterPassword.masterPasswordWo(
    TfArg<String> masterPasswordWo,
  ) = RdsClusterMasterPasswordWo;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [RdsClusterMasterPassword.manageMasterUserPassword] choice: sets `manage_master_user_password`.
final class RdsClusterMasterPasswordManageMasterUserPassword
    extends RdsClusterMasterPassword {
  const RdsClusterMasterPasswordManageMasterUserPassword(
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

/// The [RdsClusterMasterPassword.masterPassword] choice: sets `master_password`.
final class RdsClusterMasterPasswordChoice extends RdsClusterMasterPassword {
  const RdsClusterMasterPasswordChoice(this.masterPassword);

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

/// The [RdsClusterMasterPassword.masterPasswordWo] choice: sets `master_password_wo`.
final class RdsClusterMasterPasswordWo extends RdsClusterMasterPassword {
  const RdsClusterMasterPasswordWo(this.masterPasswordWo);

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
    required this.target,
    this.restoreType,
    required this.sourceCluster,
  });

  final RdsClusterTarget target;

  final TfArg<RdsClusterRestoreType>? restoreType;

  final RdsClusterSourceCluster sourceCluster;

  Map<String, Object?> encode() => {
    ...target.encode(),
    'restore_type': ?restoreType?.toTfJson(),
    ...sourceCluster.encode(),
  };
}

/// Exactly one of `restore_to_time`, `use_latest_restorable_time` on the `restore_to_point_in_time` block of `aws_rds_cluster`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.restoreToTime(...)`.
sealed class RdsClusterTarget {
  const RdsClusterTarget();

  /// Sets `restore_to_time`.
  const factory RdsClusterTarget.restoreToTime(TfArg<String> restoreToTime) =
      RdsClusterTargetRestoreToTime;

  /// Sets `use_latest_restorable_time`.
  const factory RdsClusterTarget.useLatestRestorableTime(
    TfArg<bool> useLatestRestorableTime,
  ) = RdsClusterTargetUseLatestRestorableTime;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [RdsClusterTarget.restoreToTime] choice: sets `restore_to_time`.
final class RdsClusterTargetRestoreToTime extends RdsClusterTarget {
  const RdsClusterTargetRestoreToTime(this.restoreToTime);

  final TfArg<String> restoreToTime;

  @override
  String get blockKey => 'restore_to_time';

  @override
  Map<String, Object?> encode() => {
    'restore_to_time': restoreToTime.toTfJson(),
  };
}

/// The [RdsClusterTarget.useLatestRestorableTime] choice: sets `use_latest_restorable_time`.
final class RdsClusterTargetUseLatestRestorableTime extends RdsClusterTarget {
  const RdsClusterTargetUseLatestRestorableTime(this.useLatestRestorableTime);

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
sealed class RdsClusterSourceCluster {
  const RdsClusterSourceCluster();

  /// Sets `source_cluster_identifier`.
  const factory RdsClusterSourceCluster.sourceClusterIdentifier(
    TfArg<String> sourceClusterIdentifier,
  ) = RdsClusterSourceClusterIdentifier;

  /// Sets `source_cluster_resource_id`.
  const factory RdsClusterSourceCluster.sourceClusterResourceId(
    TfArg<String> sourceClusterResourceId,
  ) = RdsClusterSourceClusterResourceId;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [RdsClusterSourceCluster.sourceClusterIdentifier] choice: sets `source_cluster_identifier`.
final class RdsClusterSourceClusterIdentifier extends RdsClusterSourceCluster {
  const RdsClusterSourceClusterIdentifier(this.sourceClusterIdentifier);

  final TfArg<String> sourceClusterIdentifier;

  @override
  String get blockKey => 'source_cluster_identifier';

  @override
  Map<String, Object?> encode() => {
    'source_cluster_identifier': sourceClusterIdentifier.toTfJson(),
  };
}

/// The [RdsClusterSourceCluster.sourceClusterResourceId] choice: sets `source_cluster_resource_id`.
final class RdsClusterSourceClusterResourceId extends RdsClusterSourceCluster {
  const RdsClusterSourceClusterResourceId(this.sourceClusterResourceId);

  final TfArg<String> sourceClusterResourceId;

  @override
  String get blockKey => 'source_cluster_resource_id';

  @override
  Map<String, Object?> encode() => {
    'source_cluster_resource_id': sourceClusterResourceId.toTfJson(),
  };
}

/// `restore_type` — derived from the provider schema description.
enum RdsClusterRestoreType implements TerraformEnum {
  copyOnWrite('copy-on-write'),
  fullCopy('full-copy');

  const RdsClusterRestoreType(this.terraformValue);
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

  final RefTo<AwsS3Bucket> bucketName;

  final TfArg<String>? bucketPrefix;

  final TfArg<String> ingestionRole;

  final TfArg<String> sourceEngine;

  final TfArg<String> sourceEngineVersion;

  Map<String, Object?> encode() => {
    'bucket_name': bucketName.encodeAs('id').toTfJson(),
    'bucket_prefix': ?bucketPrefix?.toTfJson(),
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

  final TfArg<RdsClusterTimeoutAction>? timeoutAction;

  Map<String, Object?> encode() => {
    'auto_pause': ?autoPause?.toTfJson(),
    'max_capacity': ?maxCapacity?.toTfJson(),
    'min_capacity': ?minCapacity?.toTfJson(),
    'seconds_before_timeout': ?secondsBeforeTimeout?.toTfJson(),
    'seconds_until_auto_pause': ?secondsUntilAutoPause?.toTfJson(),
    'timeout_action': ?timeoutAction?.toTfJson(),
  };
}

/// `timeout_action` — derived from the provider schema description.
enum RdsClusterTimeoutAction implements TerraformEnum {
  forceapplycapacitychange('ForceApplyCapacityChange'),
  rollbackcapacitychange('RollbackCapacityChange');

  const RdsClusterTimeoutAction(this.terraformValue);
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
    'seconds_until_auto_pause': ?secondsUntilAutoPause?.toTfJson(),
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
    RdsClusterIdentifier? clusterIdentifier,
    TfArg<List<String>>? clusterMembers,
    TfArg<RdsClusterScalabilityType>? clusterScalabilityType,
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
    RefTo<AwsKmsKey>? kmsKeyId,
    RdsClusterMasterPassword? masterPassword,
    TfArg<num>? masterPasswordWoVersion,
    TfArg<String>? masterUserSecretKmsKeyId,
    TfArg<String>? masterUsername,
    TfArg<num>? monitoringInterval,
    TfArg<String>? monitoringRoleArn,
    TfArg<RdsClusterNetworkType>? networkType,
    TfArg<bool>? performanceInsightsEnabled,
    RefTo<AwsKmsKey>? performanceInsightsKmsKeyId,
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
    TfArg<List<RefTo<AwsSecurityGroup>>>? vpcSecurityGroupIds,
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
           'allocated_storage': ?allocatedStorage,
           'allow_major_version_upgrade': ?allowMajorVersionUpgrade,
           'apply_immediately': ?applyImmediately,
           'auto_minor_version_upgrade': ?autoMinorVersionUpgrade,
           'availability_zones': ?availabilityZones,
           'backtrack_window': ?backtrackWindow,
           'backup_retention_period': ?backupRetentionPeriod,
           'ca_certificate_identifier': ?caCertificateIdentifier,
           ...?clusterIdentifier?.argMap,
           'cluster_members': ?clusterMembers,
           'cluster_scalability_type': ?clusterScalabilityType,
           'copy_tags_to_snapshot': ?copyTagsToSnapshot,
           'database_insights_mode': ?databaseInsightsMode,
           'database_name': ?databaseName,
           'db_cluster_instance_class': ?dbClusterInstanceClass,
           'db_cluster_parameter_group_name': ?dbClusterParameterGroupName,
           'db_instance_parameter_group_name': ?dbInstanceParameterGroupName,
           'db_subnet_group_name': ?dbSubnetGroupName,
           'db_system_id': ?dbSystemId,
           'delete_automated_backups': ?deleteAutomatedBackups,
           'deletion_protection': ?deletionProtection,
           'domain': ?domain,
           'domain_iam_role_name': ?domainIamRoleName,
           'enable_global_write_forwarding': ?enableGlobalWriteForwarding,
           'enable_http_endpoint': ?enableHttpEndpoint,
           'enable_local_write_forwarding': ?enableLocalWriteForwarding,
           if (enabledCloudwatchLogsExports != null)
             'enabled_cloudwatch_logs_exports': TfArg.literal([
               for (final e in enabledCloudwatchLogsExports) e.toTfJson(),
             ]),
           'engine': engine,
           'engine_lifecycle_support': ?engineLifecycleSupport,
           'engine_mode': ?engineMode,
           'engine_version': ?engineVersion,
           'final_snapshot_identifier': ?finalSnapshotIdentifier,
           'global_cluster_identifier': ?globalClusterIdentifier,
           'iam_database_authentication_enabled':
               ?iamDatabaseAuthenticationEnabled,
           'iam_roles': ?iamRoles,
           'iops': ?iops,
           'kms_key_id': ?kmsKeyId?.encodeAs('arn'),
           ...?masterPassword?.argMap,
           'master_password_wo_version': ?masterPasswordWoVersion,
           'master_user_secret_kms_key_id': ?masterUserSecretKmsKeyId,
           'master_username': ?masterUsername,
           'monitoring_interval': ?monitoringInterval,
           'monitoring_role_arn': ?monitoringRoleArn,
           'network_type': ?networkType,
           'performance_insights_enabled': ?performanceInsightsEnabled,
           'performance_insights_kms_key_id': ?performanceInsightsKmsKeyId
               ?.encodeAs('arn'),
           'performance_insights_retention_period':
               ?performanceInsightsRetentionPeriod,
           'port': ?port,
           'preferred_backup_window': ?preferredBackupWindow,
           'preferred_maintenance_window': ?preferredMaintenanceWindow,
           'region': ?region,
           'replication_source_identifier': ?replicationSourceIdentifier,
           'skip_final_snapshot': ?skipFinalSnapshot,
           'snapshot_identifier': ?snapshotIdentifier,
           'source_region': ?sourceRegion,
           'storage_encrypted': ?storageEncrypted,
           'storage_type': ?storageType,
           'tags': ?tags,
           'vpc_security_group_ids': ?vpcSecurityGroupIds?.encodeAs('id'),
           'warning_event_categories': ?warningEventCategories,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRdsCluster>`.
  RefTo<AwsRdsCluster> get ref => RefTo.of(this);

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

  /// Reference to `allocated_storage` attribute.
  TfRef<num> get allocatedStorageRef =>
      TfRef.attribute<num>(this, 'allocated_storage');

  /// Reference to `allow_major_version_upgrade` attribute.
  TfRef<bool> get allowMajorVersionUpgradeRef =>
      TfRef.attribute<bool>(this, 'allow_major_version_upgrade');

  /// Reference to `apply_immediately` attribute.
  TfRef<bool> get applyImmediatelyRef =>
      TfRef.attribute<bool>(this, 'apply_immediately');

  /// Reference to `auto_minor_version_upgrade` attribute.
  TfRef<bool> get autoMinorVersionUpgradeRef =>
      TfRef.attribute<bool>(this, 'auto_minor_version_upgrade');

  /// Reference to `availability_zones` attribute.
  TfRef<List<String>> get availabilityZonesRef =>
      TfRef.attribute<List<String>>(this, 'availability_zones');

  /// Reference to `backtrack_window` attribute.
  TfRef<num> get backtrackWindowRef =>
      TfRef.attribute<num>(this, 'backtrack_window');

  /// Reference to `backup_retention_period` attribute.
  TfRef<num> get backupRetentionPeriodRef =>
      TfRef.attribute<num>(this, 'backup_retention_period');

  /// Reference to `ca_certificate_identifier` attribute.
  TfRef<String> get caCertificateIdentifierRef =>
      TfRef.attribute<String>(this, 'ca_certificate_identifier');

  /// Reference to `cluster_identifier` attribute.
  TfRef<String> get clusterIdentifierRef =>
      TfRef.attribute<String>(this, 'cluster_identifier');

  /// Reference to `cluster_identifier_prefix` attribute.
  TfRef<String> get clusterIdentifierPrefixRef =>
      TfRef.attribute<String>(this, 'cluster_identifier_prefix');

  /// Reference to `cluster_members` attribute.
  TfRef<List<String>> get clusterMembersRef =>
      TfRef.attribute<List<String>>(this, 'cluster_members');

  /// Reference to `cluster_scalability_type` attribute.
  TfRef<String> get clusterScalabilityTypeRef =>
      TfRef.attribute<String>(this, 'cluster_scalability_type');

  /// Reference to `copy_tags_to_snapshot` attribute.
  TfRef<bool> get copyTagsToSnapshotRef =>
      TfRef.attribute<bool>(this, 'copy_tags_to_snapshot');

  /// Reference to `database_insights_mode` attribute.
  TfRef<String> get databaseInsightsModeRef =>
      TfRef.attribute<String>(this, 'database_insights_mode');

  /// Reference to `database_name` attribute.
  TfRef<String> get databaseNameRef =>
      TfRef.attribute<String>(this, 'database_name');

  /// Reference to `db_cluster_instance_class` attribute.
  TfRef<String> get dbClusterInstanceClassRef =>
      TfRef.attribute<String>(this, 'db_cluster_instance_class');

  /// Reference to `db_cluster_parameter_group_name` attribute.
  TfRef<String> get dbClusterParameterGroupNameRef =>
      TfRef.attribute<String>(this, 'db_cluster_parameter_group_name');

  /// Reference to `db_instance_parameter_group_name` attribute.
  TfRef<String> get dbInstanceParameterGroupNameRef =>
      TfRef.attribute<String>(this, 'db_instance_parameter_group_name');

  /// Reference to `db_subnet_group_name` attribute.
  TfRef<String> get dbSubnetGroupNameRef =>
      TfRef.attribute<String>(this, 'db_subnet_group_name');

  /// Reference to `db_system_id` attribute.
  TfRef<String> get dbSystemIdRef =>
      TfRef.attribute<String>(this, 'db_system_id');

  /// Reference to `delete_automated_backups` attribute.
  TfRef<bool> get deleteAutomatedBackupsRef =>
      TfRef.attribute<bool>(this, 'delete_automated_backups');

  /// Reference to `deletion_protection` attribute.
  TfRef<bool> get deletionProtectionRef =>
      TfRef.attribute<bool>(this, 'deletion_protection');

  /// Reference to `domain` attribute.
  TfRef<String> get domainRef => TfRef.attribute<String>(this, 'domain');

  /// Reference to `domain_iam_role_name` attribute.
  TfRef<String> get domainIamRoleNameRef =>
      TfRef.attribute<String>(this, 'domain_iam_role_name');

  /// Reference to `enable_global_write_forwarding` attribute.
  TfRef<bool> get enableGlobalWriteForwardingRef =>
      TfRef.attribute<bool>(this, 'enable_global_write_forwarding');

  /// Reference to `enable_http_endpoint` attribute.
  TfRef<bool> get enableHttpEndpointRef =>
      TfRef.attribute<bool>(this, 'enable_http_endpoint');

  /// Reference to `enable_local_write_forwarding` attribute.
  TfRef<bool> get enableLocalWriteForwardingRef =>
      TfRef.attribute<bool>(this, 'enable_local_write_forwarding');

  /// Reference to `enabled_cloudwatch_logs_exports` attribute.
  TfRef<List<String>> get enabledCloudwatchLogsExportsRef =>
      TfRef.attribute<List<String>>(this, 'enabled_cloudwatch_logs_exports');

  /// Reference to `engine` attribute.
  TfRef<String> get engineRef => TfRef.attribute<String>(this, 'engine');

  /// Reference to `engine_lifecycle_support` attribute.
  TfRef<String> get engineLifecycleSupportRef =>
      TfRef.attribute<String>(this, 'engine_lifecycle_support');

  /// Reference to `engine_mode` attribute.
  TfRef<String> get engineModeRef =>
      TfRef.attribute<String>(this, 'engine_mode');

  /// Reference to `engine_version` attribute.
  TfRef<String> get engineVersionRef =>
      TfRef.attribute<String>(this, 'engine_version');

  /// Reference to `final_snapshot_identifier` attribute.
  TfRef<String> get finalSnapshotIdentifierRef =>
      TfRef.attribute<String>(this, 'final_snapshot_identifier');

  /// Reference to `global_cluster_identifier` attribute.
  TfRef<String> get globalClusterIdentifierRef =>
      TfRef.attribute<String>(this, 'global_cluster_identifier');

  /// Reference to `iam_database_authentication_enabled` attribute.
  TfRef<bool> get iamDatabaseAuthenticationEnabledRef =>
      TfRef.attribute<bool>(this, 'iam_database_authentication_enabled');

  /// Reference to `iam_roles` attribute.
  TfRef<List<String>> get iamRolesRef =>
      TfRef.attribute<List<String>>(this, 'iam_roles');

  /// Reference to `iops` attribute.
  TfRef<num> get iopsRef => TfRef.attribute<num>(this, 'iops');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyIdRef => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `manage_master_user_password` attribute.
  TfRef<bool> get manageMasterUserPasswordRef =>
      TfRef.attribute<bool>(this, 'manage_master_user_password');

  /// Reference to `master_password` attribute.
  TfRef<String> get masterPasswordRef =>
      TfRef.attribute<String>(this, 'master_password');

  /// Reference to `master_password_wo_version` attribute.
  TfRef<num> get masterPasswordWoVersionRef =>
      TfRef.attribute<num>(this, 'master_password_wo_version');

  /// Reference to `master_user_secret_kms_key_id` attribute.
  TfRef<String> get masterUserSecretKmsKeyIdRef =>
      TfRef.attribute<String>(this, 'master_user_secret_kms_key_id');

  /// Reference to `master_username` attribute.
  TfRef<String> get masterUsernameRef =>
      TfRef.attribute<String>(this, 'master_username');

  /// Reference to `monitoring_interval` attribute.
  TfRef<num> get monitoringIntervalRef =>
      TfRef.attribute<num>(this, 'monitoring_interval');

  /// Reference to `monitoring_role_arn` attribute.
  TfRef<String> get monitoringRoleArnRef =>
      TfRef.attribute<String>(this, 'monitoring_role_arn');

  /// Reference to `network_type` attribute.
  TfRef<String> get networkTypeRef =>
      TfRef.attribute<String>(this, 'network_type');

  /// Reference to `performance_insights_enabled` attribute.
  TfRef<bool> get performanceInsightsEnabledRef =>
      TfRef.attribute<bool>(this, 'performance_insights_enabled');

  /// Reference to `performance_insights_kms_key_id` attribute.
  TfRef<String> get performanceInsightsKmsKeyIdRef =>
      TfRef.attribute<String>(this, 'performance_insights_kms_key_id');

  /// Reference to `performance_insights_retention_period` attribute.
  TfRef<num> get performanceInsightsRetentionPeriodRef =>
      TfRef.attribute<num>(this, 'performance_insights_retention_period');

  /// Reference to `port` attribute.
  TfRef<num> get portRef => TfRef.attribute<num>(this, 'port');

  /// Reference to `preferred_backup_window` attribute.
  TfRef<String> get preferredBackupWindowRef =>
      TfRef.attribute<String>(this, 'preferred_backup_window');

  /// Reference to `preferred_maintenance_window` attribute.
  TfRef<String> get preferredMaintenanceWindowRef =>
      TfRef.attribute<String>(this, 'preferred_maintenance_window');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `replication_source_identifier` attribute.
  TfRef<String> get replicationSourceIdentifierRef =>
      TfRef.attribute<String>(this, 'replication_source_identifier');

  /// Reference to `skip_final_snapshot` attribute.
  TfRef<bool> get skipFinalSnapshotRef =>
      TfRef.attribute<bool>(this, 'skip_final_snapshot');

  /// Reference to `snapshot_identifier` attribute.
  TfRef<String> get snapshotIdentifierRef =>
      TfRef.attribute<String>(this, 'snapshot_identifier');

  /// Reference to `source_region` attribute.
  TfRef<String> get sourceRegionRef =>
      TfRef.attribute<String>(this, 'source_region');

  /// Reference to `storage_encrypted` attribute.
  TfRef<bool> get storageEncryptedRef =>
      TfRef.attribute<bool>(this, 'storage_encrypted');

  /// Reference to `storage_type` attribute.
  TfRef<String> get storageTypeRef =>
      TfRef.attribute<String>(this, 'storage_type');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `vpc_security_group_ids` attribute.
  TfRef<List<String>> get vpcSecurityGroupIdsRef =>
      TfRef.attribute<List<String>>(this, 'vpc_security_group_ids');

  /// Reference to `warning_event_categories` attribute.
  TfRef<List<String>> get warningEventCategoriesRef =>
      TfRef.attribute<List<String>>(this, 'warning_event_categories');
}
