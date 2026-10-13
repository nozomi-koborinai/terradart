// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../odb/aws_odb_autonomous_database.dart';

/// Sensitive field paths for `aws_odb_autonomous_database`.
const Set<String> _awsOdbAutonomousDatabaseSensitive = <String>{};

/// Factory wrapper for `aws_odb_autonomous_database`.
final class DataAwsOdbAutonomousDatabase extends Data {
  static const String tfType = 'aws_odb_autonomous_database';

  DataAwsOdbAutonomousDatabase(
    super.localName, {
    required TfArg<String> id,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'id': id, 'region': ?region});

  @override
  Set<String> get sensitiveFields => _awsOdbAutonomousDatabaseSensitive;

  /// A reference to the `aws_odb_autonomous_database` this data source reads, for
  /// arguments typed `RefTo<AwsOdbAutonomousDatabase>`.
  RefTo<AwsOdbAutonomousDatabase> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `actual_used_data_storage_size_in_tbs` attribute.
  TfRef<num> get actualUsedDataStorageSizeInTbs =>
      TfRef.attribute<num>(this, 'actual_used_data_storage_size_in_tbs');

  /// Reference to `admin_password_source` attribute.
  TfRef<List<Map<String, Object?>>> get adminPasswordSource =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'admin_password_source',
      );

  /// Reference to `allocated_storage_size_in_tbs` attribute.
  TfRef<num> get allocatedStorageSizeInTbs =>
      TfRef.attribute<num>(this, 'allocated_storage_size_in_tbs');

  /// Reference to `allowlisted_ips` attribute.
  TfRef<List<String>> get allowlistedIps =>
      TfRef.attribute<List<String>>(this, 'allowlisted_ips');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `auto_refresh_frequency_in_seconds` attribute.
  TfRef<num> get autoRefreshFrequencyInSeconds =>
      TfRef.attribute<num>(this, 'auto_refresh_frequency_in_seconds');

  /// Reference to `auto_refresh_point_lag_in_seconds` attribute.
  TfRef<num> get autoRefreshPointLagInSeconds =>
      TfRef.attribute<num>(this, 'auto_refresh_point_lag_in_seconds');

  /// Reference to `autonomous_maintenance_schedule_type` attribute.
  TfRef<String> get autonomousMaintenanceScheduleType =>
      TfRef.attribute<String>(this, 'autonomous_maintenance_schedule_type');

  /// Reference to `availability_zone` attribute.
  TfRef<String> get availabilityZone =>
      TfRef.attribute<String>(this, 'availability_zone');

  /// Reference to `availability_zone_id` attribute.
  TfRef<String> get availabilityZoneId =>
      TfRef.attribute<String>(this, 'availability_zone_id');

  /// Reference to `available_upgrade_versions` attribute.
  TfRef<List<String>> get availableUpgradeVersions =>
      TfRef.attribute<List<String>>(this, 'available_upgrade_versions');

  /// Reference to `backup_retention_period_in_days` attribute.
  TfRef<num> get backupRetentionPeriodInDays =>
      TfRef.attribute<num>(this, 'backup_retention_period_in_days');

  /// Reference to `byol_compute_count_limit` attribute.
  TfRef<num> get byolComputeCountLimit =>
      TfRef.attribute<num>(this, 'byol_compute_count_limit');

  /// Reference to `character_set` attribute.
  TfRef<String> get characterSet =>
      TfRef.attribute<String>(this, 'character_set');

  /// Reference to `compute_count` attribute.
  TfRef<num> get computeCount => TfRef.attribute<num>(this, 'compute_count');

  /// Reference to `compute_model` attribute.
  TfRef<String> get computeModel =>
      TfRef.attribute<String>(this, 'compute_model');

  /// Reference to `cpu_core_count` attribute.
  TfRef<num> get cpuCoreCount => TfRef.attribute<num>(this, 'cpu_core_count');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `customer_contacts_to_send_to_oci` attribute.
  TfRef<List<Map<String, Object?>>> get customerContactsToSendToOci =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'customer_contacts_to_send_to_oci',
      );

  /// Reference to `data_storage_size_in_gbs` attribute.
  TfRef<num> get dataStorageSizeInGbs =>
      TfRef.attribute<num>(this, 'data_storage_size_in_gbs');

  /// Reference to `data_storage_size_in_tbs` attribute.
  TfRef<num> get dataStorageSizeInTbs =>
      TfRef.attribute<num>(this, 'data_storage_size_in_tbs');

  /// Reference to `database_edition` attribute.
  TfRef<String> get databaseEdition =>
      TfRef.attribute<String>(this, 'database_edition');

  /// Reference to `database_type` attribute.
  TfRef<String> get databaseType =>
      TfRef.attribute<String>(this, 'database_type');

  /// Reference to `db_name` attribute.
  TfRef<String> get dbName => TfRef.attribute<String>(this, 'db_name');

  /// Reference to `db_tools_details` attribute.
  TfRef<List<Map<String, Object?>>> get dbToolsDetails =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'db_tools_details');

  /// Reference to `db_version` attribute.
  TfRef<String> get dbVersion => TfRef.attribute<String>(this, 'db_version');

  /// Reference to `db_workload` attribute.
  TfRef<String> get dbWorkload => TfRef.attribute<String>(this, 'db_workload');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `encryption_key_provider` attribute.
  TfRef<String> get encryptionKeyProvider =>
      TfRef.attribute<String>(this, 'encryption_key_provider');

  /// Reference to `is_auto_scaling_enabled` attribute.
  TfRef<bool> get isAutoScalingEnabled =>
      TfRef.attribute<bool>(this, 'is_auto_scaling_enabled');

  /// Reference to `is_auto_scaling_for_storage_enabled` attribute.
  TfRef<bool> get isAutoScalingForStorageEnabled =>
      TfRef.attribute<bool>(this, 'is_auto_scaling_for_storage_enabled');

  /// Reference to `is_backup_retention_locked` attribute.
  TfRef<bool> get isBackupRetentionLocked =>
      TfRef.attribute<bool>(this, 'is_backup_retention_locked');

  /// Reference to `is_local_data_guard_enabled` attribute.
  TfRef<bool> get isLocalDataGuardEnabled =>
      TfRef.attribute<bool>(this, 'is_local_data_guard_enabled');

  /// Reference to `is_mtls_connection_required` attribute.
  TfRef<bool> get isMtlsConnectionRequired =>
      TfRef.attribute<bool>(this, 'is_mtls_connection_required');

  /// Reference to `is_refreshable_clone` attribute.
  TfRef<bool> get isRefreshableClone =>
      TfRef.attribute<bool>(this, 'is_refreshable_clone');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyId => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `license_model` attribute.
  TfRef<String> get licenseModel =>
      TfRef.attribute<String>(this, 'license_model');

  /// Reference to `local_adg_auto_failover_max_data_loss_limit` attribute.
  TfRef<num> get localAdgAutoFailoverMaxDataLossLimit =>
      TfRef.attribute<num>(this, 'local_adg_auto_failover_max_data_loss_limit');

  /// Reference to `long_term_backup_schedule` attribute.
  TfRef<List<Map<String, Object?>>> get longTermBackupSchedule =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'long_term_backup_schedule',
      );

  /// Reference to `ncharacter_set` attribute.
  TfRef<String> get ncharacterSet =>
      TfRef.attribute<String>(this, 'ncharacter_set');

  /// Reference to `oci_resource_anchor_name` attribute.
  TfRef<String> get ociResourceAnchorName =>
      TfRef.attribute<String>(this, 'oci_resource_anchor_name');

  /// Reference to `oci_url` attribute.
  TfRef<String> get ociUrl => TfRef.attribute<String>(this, 'oci_url');

  /// Reference to `ocid` attribute.
  TfRef<String> get ocid => TfRef.attribute<String>(this, 'ocid');

  /// Reference to `odb_network_arn` attribute.
  TfRef<String> get odbNetworkArn =>
      TfRef.attribute<String>(this, 'odb_network_arn');

  /// Reference to `odb_network_id` attribute.
  TfRef<String> get odbNetworkId =>
      TfRef.attribute<String>(this, 'odb_network_id');

  /// Reference to `open_mode` attribute.
  TfRef<String> get openMode => TfRef.attribute<String>(this, 'open_mode');

  /// Reference to `percent_progress` attribute.
  TfRef<num> get percentProgress =>
      TfRef.attribute<num>(this, 'percent_progress');

  /// Reference to `permission_level` attribute.
  TfRef<String> get permissionLevel =>
      TfRef.attribute<String>(this, 'permission_level');

  /// Reference to `private_endpoint` attribute.
  TfRef<String> get privateEndpoint =>
      TfRef.attribute<String>(this, 'private_endpoint');

  /// Reference to `private_endpoint_ip` attribute.
  TfRef<String> get privateEndpointIp =>
      TfRef.attribute<String>(this, 'private_endpoint_ip');

  /// Reference to `private_endpoint_label` attribute.
  TfRef<String> get privateEndpointLabel =>
      TfRef.attribute<String>(this, 'private_endpoint_label');

  /// Reference to `refreshable_mode` attribute.
  TfRef<String> get refreshableMode =>
      TfRef.attribute<String>(this, 'refreshable_mode');

  /// Reference to `resource_pool_leader_id` attribute.
  TfRef<String> get resourcePoolLeaderId =>
      TfRef.attribute<String>(this, 'resource_pool_leader_id');

  /// Reference to `resource_pool_summary` attribute.
  TfRef<List<Map<String, Object?>>> get resourcePoolSummary =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'resource_pool_summary',
      );

  /// Reference to `scheduled_operations` attribute.
  TfRef<List<Map<String, Object?>>> get scheduledOperations =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'scheduled_operations');

  /// Reference to `service_console_url` attribute.
  TfRef<String> get serviceConsoleUrl =>
      TfRef.attribute<String>(this, 'service_console_url');

  /// Reference to `source_id` attribute.
  TfRef<String> get sourceId => TfRef.attribute<String>(this, 'source_id');

  /// Reference to `sql_web_developer_url` attribute.
  TfRef<String> get sqlWebDeveloperUrl =>
      TfRef.attribute<String>(this, 'sql_web_developer_url');

  /// Reference to `standby_allowlisted_ips` attribute.
  TfRef<List<String>> get standbyAllowlistedIps =>
      TfRef.attribute<List<String>>(this, 'standby_allowlisted_ips');

  /// Reference to `standby_allowlisted_ips_source` attribute.
  TfRef<String> get standbyAllowlistedIpsSource =>
      TfRef.attribute<String>(this, 'standby_allowlisted_ips_source');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `status_reason` attribute.
  TfRef<String> get statusReason =>
      TfRef.attribute<String>(this, 'status_reason');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `time_of_auto_refresh_start` attribute.
  TfRef<String> get timeOfAutoRefreshStart =>
      TfRef.attribute<String>(this, 'time_of_auto_refresh_start');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
