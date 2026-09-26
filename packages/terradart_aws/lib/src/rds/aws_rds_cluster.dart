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

/// Typed helper for the `restore_to_point_in_time` block of
/// `aws_rds_cluster` (derived from provider schema).
@immutable
final class RdsClusterRestoreToPointInTime {
  const RdsClusterRestoreToPointInTime({
    this.restoreToTime,
    this.restoreType,
    this.sourceClusterIdentifier,
    this.sourceClusterResourceId,
    this.useLatestRestorableTime,
  });

  final TfArg<String>? restoreToTime;

  final TfArg<String>? restoreType;

  final TfArg<String>? sourceClusterIdentifier;

  final TfArg<String>? sourceClusterResourceId;

  final TfArg<bool>? useLatestRestorableTime;

  Map<String, Object?> encode() => {
    if (restoreToTime != null) 'restore_to_time': restoreToTime!.toTfJson(),
    if (restoreType != null) 'restore_type': restoreType!.toTfJson(),
    if (sourceClusterIdentifier != null)
      'source_cluster_identifier': sourceClusterIdentifier!.toTfJson(),
    if (sourceClusterResourceId != null)
      'source_cluster_resource_id': sourceClusterResourceId!.toTfJson(),
    if (useLatestRestorableTime != null)
      'use_latest_restorable_time': useLatestRestorableTime!.toTfJson(),
  };
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

  final TfArg<String>? timeoutAction;

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
    TfArg<String>? clusterIdentifier,
    TfArg<String>? clusterIdentifierPrefix,
    TfArg<List<String>>? clusterMembers,
    TfArg<String>? clusterScalabilityType,
    TfArg<bool>? copyTagsToSnapshot,
    TfArg<String>? databaseInsightsMode,
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
    TfArg<List<String>>? enabledCloudwatchLogsExports,
    required TfArg<String> engine,
    TfArg<String>? engineLifecycleSupport,
    TfArg<String>? engineMode,
    TfArg<String>? engineVersion,
    TfArg<String>? finalSnapshotIdentifier,
    TfArg<String>? globalClusterIdentifier,
    TfArg<bool>? iamDatabaseAuthenticationEnabled,
    TfArg<List<String>>? iamRoles,
    TfArg<num>? iops,
    TfArg<String>? kmsKeyId,
    TfArg<bool>? manageMasterUserPassword,
    TfArg<String>? masterPassword,
    TfArg<String>? masterPasswordWo,
    TfArg<num>? masterPasswordWoVersion,
    TfArg<String>? masterUserSecretKmsKeyId,
    TfArg<String>? masterUsername,
    TfArg<num>? monitoringInterval,
    TfArg<String>? monitoringRoleArn,
    TfArg<String>? networkType,
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
           if (clusterIdentifier != null)
             'cluster_identifier': clusterIdentifier,
           if (clusterIdentifierPrefix != null)
             'cluster_identifier_prefix': clusterIdentifierPrefix,
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
             'enabled_cloudwatch_logs_exports': enabledCloudwatchLogsExports,
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
           if (manageMasterUserPassword != null)
             'manage_master_user_password': manageMasterUserPassword,
           if (masterPassword != null) 'master_password': masterPassword,
           if (masterPasswordWo != null) 'master_password_wo': masterPasswordWo,
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
