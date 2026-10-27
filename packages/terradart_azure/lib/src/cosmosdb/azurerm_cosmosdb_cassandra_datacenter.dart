// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_cosmosdb_cassandra_datacenter`.
const Set<String> _azurermCosmosdbCassandraDatacenterSensitive = <String>{};

/// Factory wrapper for `azurerm_cosmosdb_cassandra_datacenter`.
final class AzurermCosmosdbCassandraDatacenter extends Resource {
  static const String tfType = 'azurerm_cosmosdb_cassandra_datacenter';

  AzurermCosmosdbCassandraDatacenter(
    super.localName, {
    TfArg<bool>? availabilityZonesEnabled,
    TfArg<String>? backupStorageCustomerKeyUri,
    TfArg<String>? base64EncodedYamlFragment,
    required TfArg<String> cassandraClusterId,
    required TfArg<String> delegatedManagementSubnetId,
    TfArg<num>? diskCount,
    TfArg<String>? diskSku,
    required TfArg<String> location,
    TfArg<String>? managedDiskCustomerKeyUri,
    required TfArg<String> name,
    TfArg<num>? nodeCount,
    TfArg<String>? skuName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'availability_zones_enabled': ?availabilityZonesEnabled,
           'backup_storage_customer_key_uri': ?backupStorageCustomerKeyUri,
           'base64_encoded_yaml_fragment': ?base64EncodedYamlFragment,
           'cassandra_cluster_id': cassandraClusterId,
           'delegated_management_subnet_id': delegatedManagementSubnetId,
           'disk_count': ?diskCount,
           'disk_sku': ?diskSku,
           'location': location,
           'managed_disk_customer_key_uri': ?managedDiskCustomerKeyUri,
           'name': name,
           'node_count': ?nodeCount,
           'sku_name': ?skuName,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermCosmosdbCassandraDatacenterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermCosmosdbCassandraDatacenter>`.
  RefTo<AzurermCosmosdbCassandraDatacenter> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `seed_node_ip_addresses` attribute.
  TfRef<List<String>> get seedNodeIpAddresses =>
      TfRef.attribute<List<String>>(this, 'seed_node_ip_addresses');

  /// Reference to `availability_zones_enabled` attribute.
  TfRef<bool> get availabilityZonesEnabled =>
      TfRef.attribute<bool>(this, 'availability_zones_enabled');

  /// Reference to `backup_storage_customer_key_uri` attribute.
  TfRef<String> get backupStorageCustomerKeyUri =>
      TfRef.attribute<String>(this, 'backup_storage_customer_key_uri');

  /// Reference to `base64_encoded_yaml_fragment` attribute.
  TfRef<String> get base64EncodedYamlFragment =>
      TfRef.attribute<String>(this, 'base64_encoded_yaml_fragment');

  /// Reference to `cassandra_cluster_id` attribute.
  TfRef<String> get cassandraClusterId =>
      TfRef.attribute<String>(this, 'cassandra_cluster_id');

  /// Reference to `delegated_management_subnet_id` attribute.
  TfRef<String> get delegatedManagementSubnetId =>
      TfRef.attribute<String>(this, 'delegated_management_subnet_id');

  /// Reference to `disk_count` attribute.
  TfRef<num> get diskCount => TfRef.attribute<num>(this, 'disk_count');

  /// Reference to `disk_sku` attribute.
  TfRef<String> get diskSku => TfRef.attribute<String>(this, 'disk_sku');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `managed_disk_customer_key_uri` attribute.
  TfRef<String> get managedDiskCustomerKeyUri =>
      TfRef.attribute<String>(this, 'managed_disk_customer_key_uri');

  /// Reference to `node_count` attribute.
  TfRef<num> get nodeCount => TfRef.attribute<num>(this, 'node_count');

  /// Reference to `sku_name` attribute.
  TfRef<String> get skuName => TfRef.attribute<String>(this, 'sku_name');
}
