// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_db_instance`.
const Set<String> _awsDbInstanceSensitive = <String>{};

/// Factory wrapper for `aws_db_instance`.
final class DataAwsDbInstance extends Data {
  static const String tfType = 'aws_db_instance';

  DataAwsDbInstance({
    required super.localName,
    TfArg<String>? dbInstanceIdentifier,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (dbInstanceIdentifier != null)
             'db_instance_identifier': dbInstanceIdentifier,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDbInstanceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `address` attribute.
  TfRef<String> get address => TfRef.attribute<String>(this, 'address');

  /// Reference to `allocated_storage` attribute.
  TfRef<num> get allocatedStorage =>
      TfRef.attribute<num>(this, 'allocated_storage');

  /// Reference to `auto_minor_version_upgrade` attribute.
  TfRef<bool> get autoMinorVersionUpgrade =>
      TfRef.attribute<bool>(this, 'auto_minor_version_upgrade');

  /// Reference to `availability_zone` attribute.
  TfRef<String> get availabilityZone =>
      TfRef.attribute<String>(this, 'availability_zone');

  /// Reference to `backup_retention_period` attribute.
  TfRef<num> get backupRetentionPeriod =>
      TfRef.attribute<num>(this, 'backup_retention_period');

  /// Reference to `ca_cert_identifier` attribute.
  TfRef<String> get caCertIdentifier =>
      TfRef.attribute<String>(this, 'ca_cert_identifier');

  /// Reference to `database_insights_mode` attribute.
  TfRef<String> get databaseInsightsMode =>
      TfRef.attribute<String>(this, 'database_insights_mode');

  /// Reference to `db_cluster_identifier` attribute.
  TfRef<String> get dbClusterIdentifier =>
      TfRef.attribute<String>(this, 'db_cluster_identifier');

  /// Reference to `db_instance_arn` attribute.
  TfRef<String> get dbInstanceArn =>
      TfRef.attribute<String>(this, 'db_instance_arn');

  /// Reference to `db_instance_class` attribute.
  TfRef<String> get dbInstanceClass =>
      TfRef.attribute<String>(this, 'db_instance_class');

  /// Reference to `db_instance_port` attribute.
  TfRef<num> get dbInstancePort =>
      TfRef.attribute<num>(this, 'db_instance_port');

  /// Reference to `db_name` attribute.
  TfRef<String> get dbName => TfRef.attribute<String>(this, 'db_name');

  /// Reference to `db_parameter_groups` attribute.
  TfRef<List<String>> get dbParameterGroups =>
      TfRef.attribute<List<String>>(this, 'db_parameter_groups');

  /// Reference to `db_subnet_group` attribute.
  TfRef<String> get dbSubnetGroup =>
      TfRef.attribute<String>(this, 'db_subnet_group');

  /// Reference to `enabled_cloudwatch_logs_exports` attribute.
  TfRef<List<String>> get enabledCloudwatchLogsExports =>
      TfRef.attribute<List<String>>(this, 'enabled_cloudwatch_logs_exports');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `engine` attribute.
  TfRef<String> get engine => TfRef.attribute<String>(this, 'engine');

  /// Reference to `engine_version` attribute.
  TfRef<String> get engineVersion =>
      TfRef.attribute<String>(this, 'engine_version');

  /// Reference to `hosted_zone_id` attribute.
  TfRef<String> get hostedZoneId =>
      TfRef.attribute<String>(this, 'hosted_zone_id');

  /// Reference to `iops` attribute.
  TfRef<num> get iops => TfRef.attribute<num>(this, 'iops');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyId => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `license_model` attribute.
  TfRef<String> get licenseModel =>
      TfRef.attribute<String>(this, 'license_model');

  /// Reference to `master_user_secret` attribute.
  TfRef<List<Map<String, Object?>>> get masterUserSecret =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'master_user_secret');

  /// Reference to `master_username` attribute.
  TfRef<String> get masterUsername =>
      TfRef.attribute<String>(this, 'master_username');

  /// Reference to `max_allocated_storage` attribute.
  TfRef<num> get maxAllocatedStorage =>
      TfRef.attribute<num>(this, 'max_allocated_storage');

  /// Reference to `monitoring_interval` attribute.
  TfRef<num> get monitoringInterval =>
      TfRef.attribute<num>(this, 'monitoring_interval');

  /// Reference to `monitoring_role_arn` attribute.
  TfRef<String> get monitoringRoleArn =>
      TfRef.attribute<String>(this, 'monitoring_role_arn');

  /// Reference to `multi_az` attribute.
  TfRef<bool> get multiAz => TfRef.attribute<bool>(this, 'multi_az');

  /// Reference to `network_type` attribute.
  TfRef<String> get networkType =>
      TfRef.attribute<String>(this, 'network_type');

  /// Reference to `option_group_memberships` attribute.
  TfRef<List<String>> get optionGroupMemberships =>
      TfRef.attribute<List<String>>(this, 'option_group_memberships');

  /// Reference to `port` attribute.
  TfRef<num> get port => TfRef.attribute<num>(this, 'port');

  /// Reference to `preferred_backup_window` attribute.
  TfRef<String> get preferredBackupWindow =>
      TfRef.attribute<String>(this, 'preferred_backup_window');

  /// Reference to `preferred_maintenance_window` attribute.
  TfRef<String> get preferredMaintenanceWindow =>
      TfRef.attribute<String>(this, 'preferred_maintenance_window');

  /// Reference to `publicly_accessible` attribute.
  TfRef<bool> get publiclyAccessible =>
      TfRef.attribute<bool>(this, 'publicly_accessible');

  /// Reference to `replicate_source_db` attribute.
  TfRef<String> get replicateSourceDb =>
      TfRef.attribute<String>(this, 'replicate_source_db');

  /// Reference to `resource_id` attribute.
  TfRef<String> get resourceId => TfRef.attribute<String>(this, 'resource_id');

  /// Reference to `storage_encrypted` attribute.
  TfRef<bool> get storageEncrypted =>
      TfRef.attribute<bool>(this, 'storage_encrypted');

  /// Reference to `storage_throughput` attribute.
  TfRef<num> get storageThroughput =>
      TfRef.attribute<num>(this, 'storage_throughput');

  /// Reference to `storage_type` attribute.
  TfRef<String> get storageType =>
      TfRef.attribute<String>(this, 'storage_type');

  /// Reference to `timezone` attribute.
  TfRef<String> get timezone => TfRef.attribute<String>(this, 'timezone');

  /// Reference to `upgrade_rollout_order` attribute.
  TfRef<String> get upgradeRolloutOrder =>
      TfRef.attribute<String>(this, 'upgrade_rollout_order');

  /// Reference to `vpc_security_groups` attribute.
  TfRef<List<String>> get vpcSecurityGroups =>
      TfRef.attribute<List<String>>(this, 'vpc_security_groups');
}
