// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../oracle/azurerm_oracle_exadata_infrastructure.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_oracle_exadata_infrastructure`.
const Set<String> _azurermOracleExadataInfrastructureSensitive = <String>{};

/// Factory wrapper for `azurerm_oracle_exadata_infrastructure`.
final class DataAzurermOracleExadataInfrastructure extends Data {
  static const String tfType = 'azurerm_oracle_exadata_infrastructure';

  DataAzurermOracleExadataInfrastructure(
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
      _azurermOracleExadataInfrastructureSensitive;

  /// A reference to the `azurerm_oracle_exadata_infrastructure` this data source reads, for
  /// arguments typed `RefTo<AzurermOracleExadataInfrastructure>`.
  RefTo<AzurermOracleExadataInfrastructure> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `activated_storage_count` attribute.
  TfRef<num> get activatedStorageCount =>
      TfRef.attribute<num>(this, 'activated_storage_count');

  /// Reference to `additional_storage_count` attribute.
  TfRef<num> get additionalStorageCount =>
      TfRef.attribute<num>(this, 'additional_storage_count');

  /// Reference to `available_storage_size_in_gbs` attribute.
  TfRef<num> get availableStorageSizeInGbs =>
      TfRef.attribute<num>(this, 'available_storage_size_in_gbs');

  /// Reference to `compute_count` attribute.
  TfRef<num> get computeCount => TfRef.attribute<num>(this, 'compute_count');

  /// Reference to `compute_model` attribute.
  TfRef<String> get computeModel =>
      TfRef.attribute<String>(this, 'compute_model');

  /// Reference to `cpu_count` attribute.
  TfRef<num> get cpuCount => TfRef.attribute<num>(this, 'cpu_count');

  /// Reference to `customer_contacts` attribute.
  TfRef<List<String>> get customerContacts =>
      TfRef.attribute<List<String>>(this, 'customer_contacts');

  /// Reference to `data_storage_size_in_tbs` attribute.
  TfRef<num> get dataStorageSizeInTbs =>
      TfRef.attribute<num>(this, 'data_storage_size_in_tbs');

  /// Reference to `database_server_type` attribute.
  TfRef<String> get databaseServerType =>
      TfRef.attribute<String>(this, 'database_server_type');

  /// Reference to `db_node_storage_size_in_gbs` attribute.
  TfRef<num> get dbNodeStorageSizeInGbs =>
      TfRef.attribute<num>(this, 'db_node_storage_size_in_gbs');

  /// Reference to `db_server_version` attribute.
  TfRef<String> get dbServerVersion =>
      TfRef.attribute<String>(this, 'db_server_version');

  /// Reference to `defined_file_system_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get definedFileSystemConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'defined_file_system_configuration',
      );

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `estimated_patching_time` attribute.
  TfRef<List<Map<String, Object?>>> get estimatedPatchingTime =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'estimated_patching_time',
      );

  /// Reference to `last_maintenance_run_id` attribute.
  TfRef<String> get lastMaintenanceRunId =>
      TfRef.attribute<String>(this, 'last_maintenance_run_id');

  /// Reference to `lifecycle_details` attribute.
  TfRef<String> get lifecycleDetails =>
      TfRef.attribute<String>(this, 'lifecycle_details');

  /// Reference to `lifecycle_state` attribute.
  TfRef<String> get lifecycleState =>
      TfRef.attribute<String>(this, 'lifecycle_state');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `maintenance_window` attribute.
  TfRef<List<Map<String, Object?>>> get maintenanceWindow =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'maintenance_window');

  /// Reference to `max_cpu_count` attribute.
  TfRef<num> get maxCpuCount => TfRef.attribute<num>(this, 'max_cpu_count');

  /// Reference to `max_data_storage_in_tbs` attribute.
  TfRef<num> get maxDataStorageInTbs =>
      TfRef.attribute<num>(this, 'max_data_storage_in_tbs');

  /// Reference to `max_db_node_storage_size_in_gbs` attribute.
  TfRef<num> get maxDbNodeStorageSizeInGbs =>
      TfRef.attribute<num>(this, 'max_db_node_storage_size_in_gbs');

  /// Reference to `max_memory_in_gbs` attribute.
  TfRef<num> get maxMemoryInGbs =>
      TfRef.attribute<num>(this, 'max_memory_in_gbs');

  /// Reference to `memory_size_in_gbs` attribute.
  TfRef<num> get memorySizeInGbs =>
      TfRef.attribute<num>(this, 'memory_size_in_gbs');

  /// Reference to `monthly_db_server_version` attribute.
  TfRef<String> get monthlyDbServerVersion =>
      TfRef.attribute<String>(this, 'monthly_db_server_version');

  /// Reference to `monthly_storage_server_version` attribute.
  TfRef<String> get monthlyStorageServerVersion =>
      TfRef.attribute<String>(this, 'monthly_storage_server_version');

  /// Reference to `next_maintenance_run_id` attribute.
  TfRef<String> get nextMaintenanceRunId =>
      TfRef.attribute<String>(this, 'next_maintenance_run_id');

  /// Reference to `oci_url` attribute.
  TfRef<String> get ociUrl => TfRef.attribute<String>(this, 'oci_url');

  /// Reference to `ocid` attribute.
  TfRef<String> get ocid => TfRef.attribute<String>(this, 'ocid');

  /// Reference to `shape` attribute.
  TfRef<String> get shape => TfRef.attribute<String>(this, 'shape');

  /// Reference to `storage_count` attribute.
  TfRef<num> get storageCount => TfRef.attribute<num>(this, 'storage_count');

  /// Reference to `storage_server_type` attribute.
  TfRef<String> get storageServerType =>
      TfRef.attribute<String>(this, 'storage_server_type');

  /// Reference to `storage_server_version` attribute.
  TfRef<String> get storageServerVersion =>
      TfRef.attribute<String>(this, 'storage_server_version');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `time_created` attribute.
  TfRef<String> get timeCreated =>
      TfRef.attribute<String>(this, 'time_created');

  /// Reference to `total_storage_size_in_gbs` attribute.
  TfRef<num> get totalStorageSizeInGbs =>
      TfRef.attribute<num>(this, 'total_storage_size_in_gbs');

  /// Reference to `zones` attribute.
  TfRef<List<String>> get zones => TfRef.attribute<List<String>>(this, 'zones');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
