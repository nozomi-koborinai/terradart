// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../managed_redis/azurerm_managed_redis.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_managed_redis`.
const Set<String> _azurermManagedRedisSensitive = <String>{};

/// Factory wrapper for `azurerm_managed_redis`.
final class DataAzurermManagedRedis extends Data {
  static const String tfType = 'azurerm_managed_redis';

  DataAzurermManagedRedis(
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
  Set<String> get sensitiveFields => _azurermManagedRedisSensitive;

  /// A reference to the `azurerm_managed_redis` this data source reads, for
  /// arguments typed `RefTo<AzurermManagedRedis>`.
  RefTo<AzurermManagedRedis> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `customer_managed_key` attribute.
  TfRef<List<Map<String, Object?>>> get customerManagedKey =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'customer_managed_key');

  /// Reference to `default_database` attribute.
  TfRef<List<Map<String, Object?>>> get defaultDatabase =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'default_database');

  /// Reference to `high_availability_enabled` attribute.
  TfRef<bool> get highAvailabilityEnabled =>
      TfRef.attribute<bool>(this, 'high_availability_enabled');

  /// Reference to `hostname` attribute.
  TfRef<String> get hostname => TfRef.attribute<String>(this, 'hostname');

  /// Reference to `identity` attribute.
  TfRef<List<Map<String, Object?>>> get identity =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'identity');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `public_network_access` attribute.
  TfRef<String> get publicNetworkAccess =>
      TfRef.attribute<String>(this, 'public_network_access');

  /// Reference to `sku_name` attribute.
  TfRef<String> get skuName => TfRef.attribute<String>(this, 'sku_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
