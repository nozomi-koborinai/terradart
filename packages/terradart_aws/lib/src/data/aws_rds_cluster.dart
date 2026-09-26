// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_rds_cluster`.
const Set<String> _awsRdsClusterSensitive = <String>{};

/// Factory wrapper for `aws_rds_cluster`.
final class DataAwsRdsCluster extends Data {
  static const String tfType = 'aws_rds_cluster';

  DataAwsRdsCluster({
    required super.localName,
    required TfArg<String> clusterIdentifier,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_identifier': clusterIdentifier,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRdsClusterSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `availability_zones` attribute.
  TfRef<List<String>> get availabilityZones =>
      TfRef.attribute<List<String>>(this, 'availability_zones');

  /// Reference to `backtrack_window` attribute.
  TfRef<num> get backtrackWindow =>
      TfRef.attribute<num>(this, 'backtrack_window');

  /// Reference to `backup_retention_period` attribute.
  TfRef<num> get backupRetentionPeriod =>
      TfRef.attribute<num>(this, 'backup_retention_period');

  /// Reference to `cluster_members` attribute.
  TfRef<List<String>> get clusterMembers =>
      TfRef.attribute<List<String>>(this, 'cluster_members');

  /// Reference to `cluster_resource_id` attribute.
  TfRef<String> get clusterResourceId =>
      TfRef.attribute<String>(this, 'cluster_resource_id');

  /// Reference to `cluster_scalability_type` attribute.
  TfRef<String> get clusterScalabilityType =>
      TfRef.attribute<String>(this, 'cluster_scalability_type');

  /// Reference to `database_insights_mode` attribute.
  TfRef<String> get databaseInsightsMode =>
      TfRef.attribute<String>(this, 'database_insights_mode');

  /// Reference to `database_name` attribute.
  TfRef<String> get databaseName =>
      TfRef.attribute<String>(this, 'database_name');

  /// Reference to `db_cluster_parameter_group_name` attribute.
  TfRef<String> get dbClusterParameterGroupName =>
      TfRef.attribute<String>(this, 'db_cluster_parameter_group_name');

  /// Reference to `db_subnet_group_name` attribute.
  TfRef<String> get dbSubnetGroupName =>
      TfRef.attribute<String>(this, 'db_subnet_group_name');

  /// Reference to `db_system_id` attribute.
  TfRef<String> get dbSystemId => TfRef.attribute<String>(this, 'db_system_id');

  /// Reference to `deletion_protection` attribute.
  TfRef<bool> get deletionProtection =>
      TfRef.attribute<bool>(this, 'deletion_protection');

  /// Reference to `enabled_cloudwatch_logs_exports` attribute.
  TfRef<List<String>> get enabledCloudwatchLogsExports =>
      TfRef.attribute<List<String>>(this, 'enabled_cloudwatch_logs_exports');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `engine` attribute.
  TfRef<String> get engine => TfRef.attribute<String>(this, 'engine');

  /// Reference to `engine_mode` attribute.
  TfRef<String> get engineMode => TfRef.attribute<String>(this, 'engine_mode');

  /// Reference to `engine_version` attribute.
  TfRef<String> get engineVersion =>
      TfRef.attribute<String>(this, 'engine_version');

  /// Reference to `final_snapshot_identifier` attribute.
  TfRef<String> get finalSnapshotIdentifier =>
      TfRef.attribute<String>(this, 'final_snapshot_identifier');

  /// Reference to `hosted_zone_id` attribute.
  TfRef<String> get hostedZoneId =>
      TfRef.attribute<String>(this, 'hosted_zone_id');

  /// Reference to `iam_database_authentication_enabled` attribute.
  TfRef<bool> get iamDatabaseAuthenticationEnabled =>
      TfRef.attribute<bool>(this, 'iam_database_authentication_enabled');

  /// Reference to `iam_roles` attribute.
  TfRef<List<String>> get iamRoles =>
      TfRef.attribute<List<String>>(this, 'iam_roles');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyId => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `master_user_secret` attribute.
  TfRef<List<Map<String, Object?>>> get masterUserSecret =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'master_user_secret');

  /// Reference to `master_username` attribute.
  TfRef<String> get masterUsername =>
      TfRef.attribute<String>(this, 'master_username');

  /// Reference to `monitoring_interval` attribute.
  TfRef<num> get monitoringInterval =>
      TfRef.attribute<num>(this, 'monitoring_interval');

  /// Reference to `monitoring_role_arn` attribute.
  TfRef<String> get monitoringRoleArn =>
      TfRef.attribute<String>(this, 'monitoring_role_arn');

  /// Reference to `network_type` attribute.
  TfRef<String> get networkType =>
      TfRef.attribute<String>(this, 'network_type');

  /// Reference to `port` attribute.
  TfRef<num> get port => TfRef.attribute<num>(this, 'port');

  /// Reference to `preferred_backup_window` attribute.
  TfRef<String> get preferredBackupWindow =>
      TfRef.attribute<String>(this, 'preferred_backup_window');

  /// Reference to `preferred_maintenance_window` attribute.
  TfRef<String> get preferredMaintenanceWindow =>
      TfRef.attribute<String>(this, 'preferred_maintenance_window');

  /// Reference to `reader_endpoint` attribute.
  TfRef<String> get readerEndpoint =>
      TfRef.attribute<String>(this, 'reader_endpoint');

  /// Reference to `replication_source_identifier` attribute.
  TfRef<String> get replicationSourceIdentifier =>
      TfRef.attribute<String>(this, 'replication_source_identifier');

  /// Reference to `storage_encrypted` attribute.
  TfRef<bool> get storageEncrypted =>
      TfRef.attribute<bool>(this, 'storage_encrypted');

  /// Reference to `upgrade_rollout_order` attribute.
  TfRef<String> get upgradeRolloutOrder =>
      TfRef.attribute<String>(this, 'upgrade_rollout_order');

  /// Reference to `vpc_security_group_ids` attribute.
  TfRef<List<String>> get vpcSecurityGroupIds =>
      TfRef.attribute<List<String>>(this, 'vpc_security_group_ids');
}
