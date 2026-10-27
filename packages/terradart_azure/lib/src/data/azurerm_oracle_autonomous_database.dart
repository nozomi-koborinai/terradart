// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../oracle/azurerm_oracle_autonomous_database.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_oracle_autonomous_database`.
const Set<String> _azurermOracleAutonomousDatabaseSensitive = <String>{};

/// Factory wrapper for `azurerm_oracle_autonomous_database`.
final class DataAzurermOracleAutonomousDatabase extends Data {
  static const String tfType = 'azurerm_oracle_autonomous_database';

  DataAzurermOracleAutonomousDatabase(
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
  Set<String> get sensitiveFields => _azurermOracleAutonomousDatabaseSensitive;

  /// A reference to the `azurerm_oracle_autonomous_database` this data source reads, for
  /// arguments typed `RefTo<AzurermOracleAutonomousDatabase>`.
  RefTo<AzurermOracleAutonomousDatabase> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `actual_used_data_storage_size_in_tbs` attribute.
  TfRef<num> get actualUsedDataStorageSizeInTbs =>
      TfRef.attribute<num>(this, 'actual_used_data_storage_size_in_tbs');

  /// Reference to `allocated_storage_size_in_tbs` attribute.
  TfRef<num> get allocatedStorageSizeInTbs =>
      TfRef.attribute<num>(this, 'allocated_storage_size_in_tbs');

  /// Reference to `allowed_ips` attribute.
  TfRef<List<num>> get allowedIps =>
      TfRef.attribute<List<num>>(this, 'allowed_ips');

  /// Reference to `auto_scaling_enabled` attribute.
  TfRef<bool> get autoScalingEnabled =>
      TfRef.attribute<bool>(this, 'auto_scaling_enabled');

  /// Reference to `auto_scaling_for_storage_enabled` attribute.
  TfRef<bool> get autoScalingForStorageEnabled =>
      TfRef.attribute<bool>(this, 'auto_scaling_for_storage_enabled');

  /// Reference to `autonomous_database_id` attribute.
  TfRef<String> get autonomousDatabaseId =>
      TfRef.attribute<String>(this, 'autonomous_database_id');

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

  /// Reference to `data_storage_size_in_gbs` attribute.
  TfRef<num> get dataStorageSizeInGbs =>
      TfRef.attribute<num>(this, 'data_storage_size_in_gbs');

  /// Reference to `data_storage_size_in_tbs` attribute.
  TfRef<num> get dataStorageSizeInTbs =>
      TfRef.attribute<num>(this, 'data_storage_size_in_tbs');

  /// Reference to `db_node_storage_size_in_gbs` attribute.
  TfRef<num> get dbNodeStorageSizeInGbs =>
      TfRef.attribute<num>(this, 'db_node_storage_size_in_gbs');

  /// Reference to `db_version` attribute.
  TfRef<String> get dbVersion => TfRef.attribute<String>(this, 'db_version');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `failed_data_recovery_in_seconds` attribute.
  TfRef<num> get failedDataRecoveryInSeconds =>
      TfRef.attribute<num>(this, 'failed_data_recovery_in_seconds');

  /// Reference to `in_memory_area_in_gbs` attribute.
  TfRef<num> get inMemoryAreaInGbs =>
      TfRef.attribute<num>(this, 'in_memory_area_in_gbs');

  /// Reference to `lifecycle_details` attribute.
  TfRef<String> get lifecycleDetails =>
      TfRef.attribute<String>(this, 'lifecycle_details');

  /// Reference to `local_adg_auto_failover_max_data_loss_limit` attribute.
  TfRef<num> get localAdgAutoFailoverMaxDataLossLimit =>
      TfRef.attribute<num>(this, 'local_adg_auto_failover_max_data_loss_limit');

  /// Reference to `local_data_guard_enabled` attribute.
  TfRef<bool> get localDataGuardEnabled =>
      TfRef.attribute<bool>(this, 'local_data_guard_enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `long_term_backup_schedule` attribute.
  TfRef<List<Map<String, Object?>>> get longTermBackupSchedule =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'long_term_backup_schedule',
      );

  /// Reference to `memory_per_oracle_compute_unit_in_gbs` attribute.
  TfRef<num> get memoryPerOracleComputeUnitInGbs =>
      TfRef.attribute<num>(this, 'memory_per_oracle_compute_unit_in_gbs');

  /// Reference to `mtls_connection_required` attribute.
  TfRef<bool> get mtlsConnectionRequired =>
      TfRef.attribute<bool>(this, 'mtls_connection_required');

  /// Reference to `national_character_set` attribute.
  TfRef<String> get nationalCharacterSet =>
      TfRef.attribute<String>(this, 'national_character_set');

  /// Reference to `next_long_term_backup_time_stamp` attribute.
  TfRef<String> get nextLongTermBackupTimeStamp =>
      TfRef.attribute<String>(this, 'next_long_term_backup_time_stamp');

  /// Reference to `oci_url` attribute.
  TfRef<String> get ociUrl => TfRef.attribute<String>(this, 'oci_url');

  /// Reference to `ocid` attribute.
  TfRef<String> get ocid => TfRef.attribute<String>(this, 'ocid');

  /// Reference to `peer_db_id` attribute.
  TfRef<String> get peerDbId => TfRef.attribute<String>(this, 'peer_db_id');

  /// Reference to `peer_db_ids` attribute.
  TfRef<List<String>> get peerDbIds =>
      TfRef.attribute<List<String>>(this, 'peer_db_ids');

  /// Reference to `preview` attribute.
  TfRef<bool> get preview => TfRef.attribute<bool>(this, 'preview');

  /// Reference to `preview_version_with_service_terms_accepted` attribute.
  TfRef<bool> get previewVersionWithServiceTermsAccepted =>
      TfRef.attribute<bool>(
        this,
        'preview_version_with_service_terms_accepted',
      );

  /// Reference to `private_endpoint` attribute.
  TfRef<String> get privateEndpoint =>
      TfRef.attribute<String>(this, 'private_endpoint');

  /// Reference to `private_endpoint_ip` attribute.
  TfRef<String> get privateEndpointIp =>
      TfRef.attribute<String>(this, 'private_endpoint_ip');

  /// Reference to `private_endpoint_label` attribute.
  TfRef<String> get privateEndpointLabel =>
      TfRef.attribute<String>(this, 'private_endpoint_label');

  /// Reference to `provisionable_cpus` attribute.
  TfRef<List<num>> get provisionableCpus =>
      TfRef.attribute<List<num>>(this, 'provisionable_cpus');

  /// Reference to `remote_data_guard_enabled` attribute.
  TfRef<bool> get remoteDataGuardEnabled =>
      TfRef.attribute<bool>(this, 'remote_data_guard_enabled');

  /// Reference to `service_console_url` attribute.
  TfRef<String> get serviceConsoleUrl =>
      TfRef.attribute<String>(this, 'service_console_url');

  /// Reference to `sql_web_developer_url` attribute.
  TfRef<String> get sqlWebDeveloperUrl =>
      TfRef.attribute<String>(this, 'sql_web_developer_url');

  /// Reference to `subnet_id` attribute.
  TfRef<String> get subnetId => TfRef.attribute<String>(this, 'subnet_id');

  /// Reference to `supported_regions_to_clone_to` attribute.
  TfRef<List<String>> get supportedRegionsToCloneTo =>
      TfRef.attribute<List<String>>(this, 'supported_regions_to_clone_to');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `time_created` attribute.
  TfRef<String> get timeCreated =>
      TfRef.attribute<String>(this, 'time_created');

  /// Reference to `time_data_guard_role_changed` attribute.
  TfRef<String> get timeDataGuardRoleChanged =>
      TfRef.attribute<String>(this, 'time_data_guard_role_changed');

  /// Reference to `time_deletion_of_free_autonomous_database` attribute.
  TfRef<String> get timeDeletionOfFreeAutonomousDatabase =>
      TfRef.attribute<String>(
        this,
        'time_deletion_of_free_autonomous_database',
      );

  /// Reference to `time_local_data_guard_enabled_on` attribute.
  TfRef<String> get timeLocalDataGuardEnabledOn =>
      TfRef.attribute<String>(this, 'time_local_data_guard_enabled_on');

  /// Reference to `time_maintenance_begin` attribute.
  TfRef<String> get timeMaintenanceBegin =>
      TfRef.attribute<String>(this, 'time_maintenance_begin');

  /// Reference to `time_maintenance_end` attribute.
  TfRef<String> get timeMaintenanceEnd =>
      TfRef.attribute<String>(this, 'time_maintenance_end');

  /// Reference to `time_of_last_failover` attribute.
  TfRef<String> get timeOfLastFailover =>
      TfRef.attribute<String>(this, 'time_of_last_failover');

  /// Reference to `time_of_last_refresh` attribute.
  TfRef<String> get timeOfLastRefresh =>
      TfRef.attribute<String>(this, 'time_of_last_refresh');

  /// Reference to `time_of_last_refresh_point` attribute.
  TfRef<String> get timeOfLastRefreshPoint =>
      TfRef.attribute<String>(this, 'time_of_last_refresh_point');

  /// Reference to `time_of_last_switchover` attribute.
  TfRef<String> get timeOfLastSwitchover =>
      TfRef.attribute<String>(this, 'time_of_last_switchover');

  /// Reference to `time_reclamation_of_free_autonomous_database` attribute.
  TfRef<String> get timeReclamationOfFreeAutonomousDatabase =>
      TfRef.attribute<String>(
        this,
        'time_reclamation_of_free_autonomous_database',
      );

  /// Reference to `used_data_storage_size_in_gbs` attribute.
  TfRef<num> get usedDataStorageSizeInGbs =>
      TfRef.attribute<num>(this, 'used_data_storage_size_in_gbs');

  /// Reference to `used_data_storage_size_in_tbs` attribute.
  TfRef<num> get usedDataStorageSizeInTbs =>
      TfRef.attribute<num>(this, 'used_data_storage_size_in_tbs');

  /// Reference to `virtual_network_id` attribute.
  TfRef<String> get virtualNetworkId =>
      TfRef.attribute<String>(this, 'virtual_network_id');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
