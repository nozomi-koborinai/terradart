// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../oracle/azurerm_oracle_exascale_database_storage_vault.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_oracle_exascale_database_storage_vault`.
const Set<String> _azurermOracleExascaleDatabaseStorageVaultSensitive =
    <String>{};

/// Factory wrapper for `azurerm_oracle_exascale_database_storage_vault`.
final class DataAzurermOracleExascaleDatabaseStorageVault extends Data {
  static const String tfType = 'azurerm_oracle_exascale_database_storage_vault';

  DataAzurermOracleExascaleDatabaseStorageVault(
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
      _azurermOracleExascaleDatabaseStorageVaultSensitive;

  /// A reference to the `azurerm_oracle_exascale_database_storage_vault` this data source reads, for
  /// arguments typed `RefTo<AzurermOracleExascaleDatabaseStorageVault>`.
  RefTo<AzurermOracleExascaleDatabaseStorageVault> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `additional_flash_cache_percentage` attribute.
  TfRef<num> get additionalFlashCachePercentage =>
      TfRef.attribute<num>(this, 'additional_flash_cache_percentage');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `high_capacity_database_storage` attribute.
  TfRef<List<Map<String, Object?>>> get highCapacityDatabaseStorage =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'high_capacity_database_storage',
      );

  /// Reference to `lifecycle_details` attribute.
  TfRef<String> get lifecycleDetails =>
      TfRef.attribute<String>(this, 'lifecycle_details');

  /// Reference to `lifecycle_state` attribute.
  TfRef<String> get lifecycleState =>
      TfRef.attribute<String>(this, 'lifecycle_state');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `oci_url` attribute.
  TfRef<String> get ociUrl => TfRef.attribute<String>(this, 'oci_url');

  /// Reference to `ocid` attribute.
  TfRef<String> get ocid => TfRef.attribute<String>(this, 'ocid');

  /// Reference to `time_zone` attribute.
  TfRef<String> get timeZone => TfRef.attribute<String>(this, 'time_zone');

  /// Reference to `virtual_machine_cluster_count` attribute.
  TfRef<num> get virtualMachineClusterCount =>
      TfRef.attribute<num>(this, 'virtual_machine_cluster_count');

  /// Reference to `zones` attribute.
  TfRef<List<String>> get zones => TfRef.attribute<List<String>>(this, 'zones');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
