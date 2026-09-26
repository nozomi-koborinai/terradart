// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_docdb_cluster`.
const Set<String> _awsDocdbClusterSensitive = <String>{'master_password'};

/// Typed helper for the `restore_to_point_in_time` block of
/// `aws_docdb_cluster` (derived from provider schema).
@immutable
final class DocdbClusterRestoreToPointInTime {
  const DocdbClusterRestoreToPointInTime({
    this.restoreToTime,
    this.restoreType,
    required this.sourceClusterIdentifier,
    this.useLatestRestorableTime,
  });

  final TfArg<String>? restoreToTime;

  final TfArg<String>? restoreType;

  final TfArg<String> sourceClusterIdentifier;

  final TfArg<bool>? useLatestRestorableTime;

  Map<String, Object?> encode() => {
    if (restoreToTime != null) 'restore_to_time': restoreToTime!.toTfJson(),
    if (restoreType != null) 'restore_type': restoreType!.toTfJson(),
    'source_cluster_identifier': sourceClusterIdentifier.toTfJson(),
    if (useLatestRestorableTime != null)
      'use_latest_restorable_time': useLatestRestorableTime!.toTfJson(),
  };
}

/// Typed helper for the `serverless_v2_scaling_configuration` block of
/// `aws_docdb_cluster` (derived from provider schema).
@immutable
final class DocdbClusterServerlessV2ScalingConfiguration {
  const DocdbClusterServerlessV2ScalingConfiguration({
    required this.maxCapacity,
    required this.minCapacity,
  });

  final TfArg<num> maxCapacity;

  final TfArg<num> minCapacity;

  Map<String, Object?> encode() => {
    'max_capacity': maxCapacity.toTfJson(),
    'min_capacity': minCapacity.toTfJson(),
  };
}

/// Factory wrapper for `aws_docdb_cluster`.
final class AwsDocdbCluster extends Resource {
  static const String tfType = 'aws_docdb_cluster';

  AwsDocdbCluster({
    required super.localName,
    TfArg<bool>? allowMajorVersionUpgrade,
    TfArg<bool>? applyImmediately,
    TfArg<List<String>>? availabilityZones,
    TfArg<num>? backupRetentionPeriod,
    TfArg<String>? clusterIdentifier,
    TfArg<String>? clusterIdentifierPrefix,
    TfArg<List<String>>? clusterMembers,
    TfArg<String>? dbClusterParameterGroupName,
    TfArg<String>? dbSubnetGroupName,
    TfArg<bool>? deletionProtection,
    TfArg<List<String>>? enabledCloudwatchLogsExports,
    TfArg<String>? engine,
    TfArg<String>? engineVersion,
    TfArg<String>? finalSnapshotIdentifier,
    TfArg<String>? globalClusterIdentifier,
    TfArg<String>? kmsKeyId,
    TfArg<bool>? manageMasterUserPassword,
    TfArg<String>? masterPassword,
    TfArg<String>? masterPasswordWo,
    TfArg<num>? masterPasswordWoVersion,
    TfArg<String>? masterUsername,
    TfArg<String>? networkType,
    TfArg<num>? port,
    TfArg<String>? preferredBackupWindow,
    TfArg<String>? preferredMaintenanceWindow,
    TfArg<String>? region,
    TfArg<bool>? skipFinalSnapshot,
    TfArg<String>? snapshotIdentifier,
    TfArg<bool>? storageEncrypted,
    TfArg<String>? storageType,
    TfArg<Map<String, String>>? tags,
    TfArg<List<String>>? vpcSecurityGroupIds,
    DocdbClusterRestoreToPointInTime? restoreToPointInTime,
    DocdbClusterServerlessV2ScalingConfiguration?
    serverlessV2ScalingConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (allowMajorVersionUpgrade != null)
             'allow_major_version_upgrade': allowMajorVersionUpgrade,
           if (applyImmediately != null) 'apply_immediately': applyImmediately,
           if (availabilityZones != null)
             'availability_zones': availabilityZones,
           if (backupRetentionPeriod != null)
             'backup_retention_period': backupRetentionPeriod,
           if (clusterIdentifier != null)
             'cluster_identifier': clusterIdentifier,
           if (clusterIdentifierPrefix != null)
             'cluster_identifier_prefix': clusterIdentifierPrefix,
           if (clusterMembers != null) 'cluster_members': clusterMembers,
           if (dbClusterParameterGroupName != null)
             'db_cluster_parameter_group_name': dbClusterParameterGroupName,
           if (dbSubnetGroupName != null)
             'db_subnet_group_name': dbSubnetGroupName,
           if (deletionProtection != null)
             'deletion_protection': deletionProtection,
           if (enabledCloudwatchLogsExports != null)
             'enabled_cloudwatch_logs_exports': enabledCloudwatchLogsExports,
           if (engine != null) 'engine': engine,
           if (engineVersion != null) 'engine_version': engineVersion,
           if (finalSnapshotIdentifier != null)
             'final_snapshot_identifier': finalSnapshotIdentifier,
           if (globalClusterIdentifier != null)
             'global_cluster_identifier': globalClusterIdentifier,
           if (kmsKeyId != null) 'kms_key_id': kmsKeyId,
           if (manageMasterUserPassword != null)
             'manage_master_user_password': manageMasterUserPassword,
           if (masterPassword != null) 'master_password': masterPassword,
           if (masterPasswordWo != null) 'master_password_wo': masterPasswordWo,
           if (masterPasswordWoVersion != null)
             'master_password_wo_version': masterPasswordWoVersion,
           if (masterUsername != null) 'master_username': masterUsername,
           if (networkType != null) 'network_type': networkType,
           if (port != null) 'port': port,
           if (preferredBackupWindow != null)
             'preferred_backup_window': preferredBackupWindow,
           if (preferredMaintenanceWindow != null)
             'preferred_maintenance_window': preferredMaintenanceWindow,
           if (region != null) 'region': region,
           if (skipFinalSnapshot != null)
             'skip_final_snapshot': skipFinalSnapshot,
           if (snapshotIdentifier != null)
             'snapshot_identifier': snapshotIdentifier,
           if (storageEncrypted != null) 'storage_encrypted': storageEncrypted,
           if (storageType != null) 'storage_type': storageType,
           if (tags != null) 'tags': tags,
           if (vpcSecurityGroupIds != null)
             'vpc_security_group_ids': vpcSecurityGroupIds,
           if (restoreToPointInTime != null)
             'restore_to_point_in_time': TfArg.literal(
               restoreToPointInTime.encode(),
             ),
           if (serverlessV2ScalingConfiguration != null)
             'serverless_v2_scaling_configuration': TfArg.literal(
               serverlessV2ScalingConfiguration.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDocdbClusterSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `cluster_resource_id` attribute.
  TfRef<String> get clusterResourceId =>
      TfRef.attribute<String>(this, 'cluster_resource_id');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `hosted_zone_id` attribute.
  TfRef<String> get hostedZoneId =>
      TfRef.attribute<String>(this, 'hosted_zone_id');

  /// Reference to `master_user_secret` attribute.
  TfRef<List<Map<String, Object?>>> get masterUserSecret =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'master_user_secret');

  /// Reference to `reader_endpoint` attribute.
  TfRef<String> get readerEndpoint =>
      TfRef.attribute<String>(this, 'reader_endpoint');
}
