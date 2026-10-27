// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../oracle/azurerm_oracle_autonomous_database_cross_region_disaster_recovery.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_oracle_autonomous_database_cross_region_disaster_recovery`.
const Set<String>
_azurermOracleAutonomousDatabaseCrossRegionDisasterRecoverySensitive =
    <String>{};

/// Factory wrapper for `azurerm_oracle_autonomous_database_cross_region_disaster_recovery`.
final class DataAzurermOracleAutonomousDatabaseCrossRegionDisasterRecovery
    extends Data {
  static const String tfType =
      'azurerm_oracle_autonomous_database_cross_region_disaster_recovery';

  DataAzurermOracleAutonomousDatabaseCrossRegionDisasterRecovery(
    super.localName, {
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermOracleAutonomousDatabaseCrossRegionDisasterRecoverySensitive;

  /// A reference to the `azurerm_oracle_autonomous_database_cross_region_disaster_recovery` this data source reads, for
  /// arguments typed `RefTo<AzurermOracleAutonomousDatabaseCrossRegionDisasterRecovery>`.
  RefTo<AzurermOracleAutonomousDatabaseCrossRegionDisasterRecovery> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `actual_used_data_storage_size_in_tb` attribute.
  TfRef<num> get actualUsedDataStorageSizeInTb =>
      TfRef.attribute<num>(this, 'actual_used_data_storage_size_in_tb');

  /// Reference to `allocated_storage_size_in_tb` attribute.
  TfRef<num> get allocatedStorageSizeInTb =>
      TfRef.attribute<num>(this, 'allocated_storage_size_in_tb');

  /// Reference to `auto_scaling_enabled` attribute.
  TfRef<bool> get autoScalingEnabled =>
      TfRef.attribute<bool>(this, 'auto_scaling_enabled');

  /// Reference to `auto_scaling_for_storage_enabled` attribute.
  TfRef<bool> get autoScalingForStorageEnabled =>
      TfRef.attribute<bool>(this, 'auto_scaling_for_storage_enabled');

  /// Reference to `available_upgrade_versions` attribute.
  TfRef<List<String>> get availableUpgradeVersions =>
      TfRef.attribute<List<String>>(this, 'available_upgrade_versions');

  /// Reference to `backup_retention_period_in_days` attribute.
  TfRef<num> get backupRetentionPeriodInDays =>
      TfRef.attribute<num>(this, 'backup_retention_period_in_days');

  /// Reference to `character_set` attribute.
  TfRef<String> get characterSet =>
      TfRef.attribute<String>(this, 'character_set');

  /// Reference to `compute_count` attribute.
  TfRef<num> get computeCount => TfRef.attribute<num>(this, 'compute_count');

  /// Reference to `cpu_core_count` attribute.
  TfRef<num> get cpuCoreCount => TfRef.attribute<num>(this, 'cpu_core_count');

  /// Reference to `customer_contacts` attribute.
  TfRef<List<String>> get customerContacts =>
      TfRef.attribute<List<String>>(this, 'customer_contacts');

  /// Reference to `data_storage_size_in_gb` attribute.
  TfRef<num> get dataStorageSizeInGb =>
      TfRef.attribute<num>(this, 'data_storage_size_in_gb');

  /// Reference to `data_storage_size_in_tb` attribute.
  TfRef<num> get dataStorageSizeInTb =>
      TfRef.attribute<num>(this, 'data_storage_size_in_tb');

  /// Reference to `database_type` attribute.
  TfRef<String> get databaseType =>
      TfRef.attribute<String>(this, 'database_type');

  /// Reference to `database_version` attribute.
  TfRef<String> get databaseVersion =>
      TfRef.attribute<String>(this, 'database_version');

  /// Reference to `database_workload` attribute.
  TfRef<String> get databaseWorkload =>
      TfRef.attribute<String>(this, 'database_workload');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `failed_data_recovery_in_seconds` attribute.
  TfRef<num> get failedDataRecoveryInSeconds =>
      TfRef.attribute<num>(this, 'failed_data_recovery_in_seconds');

  /// Reference to `in_memory_area_in_gb` attribute.
  TfRef<num> get inMemoryAreaInGb =>
      TfRef.attribute<num>(this, 'in_memory_area_in_gb');

  /// Reference to `license_model` attribute.
  TfRef<String> get licenseModel =>
      TfRef.attribute<String>(this, 'license_model');

  /// Reference to `lifecycle_details` attribute.
  TfRef<String> get lifecycleDetails =>
      TfRef.attribute<String>(this, 'lifecycle_details');

  /// Reference to `local_adg_auto_failover_maximum_data_loss_limit_in_seconds` attribute.
  TfRef<num> get localAdgAutoFailoverMaximumDataLossLimitInSeconds =>
      TfRef.attribute<num>(
        this,
        'local_adg_auto_failover_maximum_data_loss_limit_in_seconds',
      );

  /// Reference to `local_data_guard_enabled` attribute.
  TfRef<bool> get localDataGuardEnabled =>
      TfRef.attribute<bool>(this, 'local_data_guard_enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `memory_per_oracle_compute_unit_in_gb` attribute.
  TfRef<num> get memoryPerOracleComputeUnitInGb =>
      TfRef.attribute<num>(this, 'memory_per_oracle_compute_unit_in_gb');

  /// Reference to `mtls_connection_required` attribute.
  TfRef<bool> get mtlsConnectionRequired =>
      TfRef.attribute<bool>(this, 'mtls_connection_required');

  /// Reference to `national_character_set` attribute.
  TfRef<String> get nationalCharacterSet =>
      TfRef.attribute<String>(this, 'national_character_set');

  /// Reference to `next_long_term_backup_timestamp_in_utc` attribute.
  TfRef<String> get nextLongTermBackupTimestampInUtc =>
      TfRef.attribute<String>(this, 'next_long_term_backup_timestamp_in_utc');

  /// Reference to `oci_url` attribute.
  TfRef<String> get ociUrl => TfRef.attribute<String>(this, 'oci_url');

  /// Reference to `ocid` attribute.
  TfRef<String> get ocid => TfRef.attribute<String>(this, 'ocid');

  /// Reference to `peer_database_ids` attribute.
  TfRef<List<String>> get peerDatabaseIds =>
      TfRef.attribute<List<String>>(this, 'peer_database_ids');

  /// Reference to `preview` attribute.
  TfRef<bool> get preview => TfRef.attribute<bool>(this, 'preview');

  /// Reference to `preview_version_with_service_terms_accepted` attribute.
  TfRef<bool> get previewVersionWithServiceTermsAccepted =>
      TfRef.attribute<bool>(
        this,
        'preview_version_with_service_terms_accepted',
      );

  /// Reference to `private_endpoint_ip` attribute.
  TfRef<String> get privateEndpointIp =>
      TfRef.attribute<String>(this, 'private_endpoint_ip');

  /// Reference to `private_endpoint_label` attribute.
  TfRef<String> get privateEndpointLabel =>
      TfRef.attribute<String>(this, 'private_endpoint_label');

  /// Reference to `private_endpoint_url` attribute.
  TfRef<String> get privateEndpointUrl =>
      TfRef.attribute<String>(this, 'private_endpoint_url');

  /// Reference to `provisionable_cpus` attribute.
  TfRef<List<num>> get provisionableCpus =>
      TfRef.attribute<List<num>>(this, 'provisionable_cpus');

  /// Reference to `remote_data_guard_enabled` attribute.
  TfRef<bool> get remoteDataGuardEnabled =>
      TfRef.attribute<bool>(this, 'remote_data_guard_enabled');

  /// Reference to `remote_disaster_recovery_type` attribute.
  TfRef<String> get remoteDisasterRecoveryType =>
      TfRef.attribute<String>(this, 'remote_disaster_recovery_type');

  /// Reference to `replicate_automatic_backups_enabled` attribute.
  TfRef<bool> get replicateAutomaticBackupsEnabled =>
      TfRef.attribute<bool>(this, 'replicate_automatic_backups_enabled');

  /// Reference to `service_console_url` attribute.
  TfRef<String> get serviceConsoleUrl =>
      TfRef.attribute<String>(this, 'service_console_url');

  /// Reference to `source_autonomous_database_id` attribute.
  TfRef<String> get sourceAutonomousDatabaseId =>
      TfRef.attribute<String>(this, 'source_autonomous_database_id');

  /// Reference to `source_location` attribute.
  TfRef<String> get sourceLocation =>
      TfRef.attribute<String>(this, 'source_location');

  /// Reference to `source_ocid` attribute.
  TfRef<String> get sourceOcid => TfRef.attribute<String>(this, 'source_ocid');

  /// Reference to `source_type` attribute.
  TfRef<String> get sourceType => TfRef.attribute<String>(this, 'source_type');

  /// Reference to `sql_web_developer_url` attribute.
  TfRef<String> get sqlWebDeveloperUrl =>
      TfRef.attribute<String>(this, 'sql_web_developer_url');

  /// Reference to `subnet_id` attribute.
  TfRef<String> get subnetId => TfRef.attribute<String>(this, 'subnet_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `time_created_in_utc` attribute.
  TfRef<String> get timeCreatedInUtc =>
      TfRef.attribute<String>(this, 'time_created_in_utc');

  /// Reference to `time_data_guard_role_changed_in_utc` attribute.
  TfRef<String> get timeDataGuardRoleChangedInUtc =>
      TfRef.attribute<String>(this, 'time_data_guard_role_changed_in_utc');

  /// Reference to `time_deletion_of_free_autonomous_database_in_utc` attribute.
  TfRef<String> get timeDeletionOfFreeAutonomousDatabaseInUtc =>
      TfRef.attribute<String>(
        this,
        'time_deletion_of_free_autonomous_database_in_utc',
      );

  /// Reference to `time_local_data_guard_enabled_in_utc` attribute.
  TfRef<String> get timeLocalDataGuardEnabledInUtc =>
      TfRef.attribute<String>(this, 'time_local_data_guard_enabled_in_utc');

  /// Reference to `time_maintenance_begin_in_utc` attribute.
  TfRef<String> get timeMaintenanceBeginInUtc =>
      TfRef.attribute<String>(this, 'time_maintenance_begin_in_utc');

  /// Reference to `time_maintenance_end_in_utc` attribute.
  TfRef<String> get timeMaintenanceEndInUtc =>
      TfRef.attribute<String>(this, 'time_maintenance_end_in_utc');

  /// Reference to `time_of_last_failover_in_utc` attribute.
  TfRef<String> get timeOfLastFailoverInUtc =>
      TfRef.attribute<String>(this, 'time_of_last_failover_in_utc');

  /// Reference to `time_of_last_refresh_in_utc` attribute.
  TfRef<String> get timeOfLastRefreshInUtc =>
      TfRef.attribute<String>(this, 'time_of_last_refresh_in_utc');

  /// Reference to `time_of_last_refresh_point_in_utc` attribute.
  TfRef<String> get timeOfLastRefreshPointInUtc =>
      TfRef.attribute<String>(this, 'time_of_last_refresh_point_in_utc');

  /// Reference to `time_of_last_switchover_in_utc` attribute.
  TfRef<String> get timeOfLastSwitchoverInUtc =>
      TfRef.attribute<String>(this, 'time_of_last_switchover_in_utc');

  /// Reference to `time_reclamation_of_free_autonomous_database_in_utc` attribute.
  TfRef<String> get timeReclamationOfFreeAutonomousDatabaseInUtc =>
      TfRef.attribute<String>(
        this,
        'time_reclamation_of_free_autonomous_database_in_utc',
      );

  /// Reference to `used_data_storage_size_in_gb` attribute.
  TfRef<num> get usedDataStorageSizeInGb =>
      TfRef.attribute<num>(this, 'used_data_storage_size_in_gb');

  /// Reference to `used_data_storage_size_in_tb` attribute.
  TfRef<num> get usedDataStorageSizeInTb =>
      TfRef.attribute<num>(this, 'used_data_storage_size_in_tb');

  /// Reference to `virtual_network_id` attribute.
  TfRef<String> get virtualNetworkId =>
      TfRef.attribute<String>(this, 'virtual_network_id');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
