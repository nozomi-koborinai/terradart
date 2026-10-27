// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../cosmosdb/azurerm_cosmosdb_account.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_cosmosdb_account`.
const Set<String> _azurermCosmosdbAccountSensitive = <String>{
  'primary_key',
  'primary_mongodb_connection_string',
  'primary_readonly_key',
  'primary_readonly_mongodb_connection_string',
  'primary_readonly_sql_connection_string',
  'primary_sql_connection_string',
  'secondary_key',
  'secondary_mongodb_connection_string',
  'secondary_readonly_key',
  'secondary_readonly_mongodb_connection_string',
  'secondary_readonly_sql_connection_string',
  'secondary_sql_connection_string',
};

/// Factory wrapper for `azurerm_cosmosdb_account`.
final class DataAzurermCosmosdbAccount extends Data {
  static const String tfType = 'azurerm_cosmosdb_account';

  DataAzurermCosmosdbAccount(
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
  Set<String> get sensitiveFields => _azurermCosmosdbAccountSensitive;

  /// A reference to the `azurerm_cosmosdb_account` this data source reads, for
  /// arguments typed `RefTo<AzurermCosmosdbAccount>`.
  RefTo<AzurermCosmosdbAccount> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `kind` attribute.
  TfRef<String> get kindAttr => TfRef.attribute<String>(this, 'kind');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `automatic_failover_enabled` attribute.
  TfRef<bool> get automaticFailoverEnabled =>
      TfRef.attribute<bool>(this, 'automatic_failover_enabled');

  /// Reference to `capabilities` attribute.
  TfRef<List<Map<String, Object?>>> get capabilities =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'capabilities');

  /// Reference to `consistency_policy` attribute.
  TfRef<List<Map<String, Object?>>> get consistencyPolicy =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'consistency_policy');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `free_tier_enabled` attribute.
  TfRef<bool> get freeTierEnabled =>
      TfRef.attribute<bool>(this, 'free_tier_enabled');

  /// Reference to `geo_location` attribute.
  TfRef<List<Map<String, Object?>>> get geoLocation =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'geo_location');

  /// Reference to `ip_range_filter` attribute.
  TfRef<List<String>> get ipRangeFilter =>
      TfRef.attribute<List<String>>(this, 'ip_range_filter');

  /// Reference to `is_virtual_network_filter_enabled` attribute.
  TfRef<bool> get isVirtualNetworkFilterEnabled =>
      TfRef.attribute<bool>(this, 'is_virtual_network_filter_enabled');

  /// Reference to `key_vault_key_id` attribute.
  TfRef<String> get keyVaultKeyId =>
      TfRef.attribute<String>(this, 'key_vault_key_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `multiple_write_locations_enabled` attribute.
  TfRef<bool> get multipleWriteLocationsEnabled =>
      TfRef.attribute<bool>(this, 'multiple_write_locations_enabled');

  /// Reference to `offer_type` attribute.
  TfRef<String> get offerType => TfRef.attribute<String>(this, 'offer_type');

  /// Reference to `primary_key` attribute.
  TfRef<String> get primaryKey => TfRef.attribute<String>(this, 'primary_key');

  /// Reference to `primary_mongodb_connection_string` attribute.
  TfRef<String> get primaryMongodbConnectionString =>
      TfRef.attribute<String>(this, 'primary_mongodb_connection_string');

  /// Reference to `primary_readonly_key` attribute.
  TfRef<String> get primaryReadonlyKey =>
      TfRef.attribute<String>(this, 'primary_readonly_key');

  /// Reference to `primary_readonly_mongodb_connection_string` attribute.
  TfRef<String> get primaryReadonlyMongodbConnectionString =>
      TfRef.attribute<String>(
        this,
        'primary_readonly_mongodb_connection_string',
      );

  /// Reference to `primary_readonly_sql_connection_string` attribute.
  TfRef<String> get primaryReadonlySqlConnectionString =>
      TfRef.attribute<String>(this, 'primary_readonly_sql_connection_string');

  /// Reference to `primary_sql_connection_string` attribute.
  TfRef<String> get primarySqlConnectionString =>
      TfRef.attribute<String>(this, 'primary_sql_connection_string');

  /// Reference to `read_endpoints` attribute.
  TfRef<List<String>> get readEndpoints =>
      TfRef.attribute<List<String>>(this, 'read_endpoints');

  /// Reference to `secondary_key` attribute.
  TfRef<String> get secondaryKey =>
      TfRef.attribute<String>(this, 'secondary_key');

  /// Reference to `secondary_mongodb_connection_string` attribute.
  TfRef<String> get secondaryMongodbConnectionString =>
      TfRef.attribute<String>(this, 'secondary_mongodb_connection_string');

  /// Reference to `secondary_readonly_key` attribute.
  TfRef<String> get secondaryReadonlyKey =>
      TfRef.attribute<String>(this, 'secondary_readonly_key');

  /// Reference to `secondary_readonly_mongodb_connection_string` attribute.
  TfRef<String> get secondaryReadonlyMongodbConnectionString =>
      TfRef.attribute<String>(
        this,
        'secondary_readonly_mongodb_connection_string',
      );

  /// Reference to `secondary_readonly_sql_connection_string` attribute.
  TfRef<String> get secondaryReadonlySqlConnectionString =>
      TfRef.attribute<String>(this, 'secondary_readonly_sql_connection_string');

  /// Reference to `secondary_sql_connection_string` attribute.
  TfRef<String> get secondarySqlConnectionString =>
      TfRef.attribute<String>(this, 'secondary_sql_connection_string');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `virtual_network_rule` attribute.
  TfRef<List<Map<String, Object?>>> get virtualNetworkRule =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'virtual_network_rule');

  /// Reference to `write_endpoints` attribute.
  TfRef<List<String>> get writeEndpoints =>
      TfRef.attribute<List<String>>(this, 'write_endpoints');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
