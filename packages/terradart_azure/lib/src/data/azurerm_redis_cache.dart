// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../redis/azurerm_redis_cache.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_redis_cache`.
const Set<String> _azurermRedisCacheSensitive = <String>{
  'primary_access_key',
  'primary_connection_string',
  'secondary_access_key',
  'secondary_connection_string',
};

/// Factory wrapper for `azurerm_redis_cache`.
final class DataAzurermRedisCache extends Data {
  static const String tfType = 'azurerm_redis_cache';

  DataAzurermRedisCache(
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
  Set<String> get sensitiveFields => _azurermRedisCacheSensitive;

  /// A reference to the `azurerm_redis_cache` this data source reads, for
  /// arguments typed `RefTo<AzurermRedisCache>`.
  RefTo<AzurermRedisCache> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `access_keys_authentication_enabled` attribute.
  TfRef<bool> get accessKeysAuthenticationEnabled =>
      TfRef.attribute<bool>(this, 'access_keys_authentication_enabled');

  /// Reference to `capacity` attribute.
  TfRef<num> get capacity => TfRef.attribute<num>(this, 'capacity');

  /// Reference to `family` attribute.
  TfRef<String> get family => TfRef.attribute<String>(this, 'family');

  /// Reference to `hostname` attribute.
  TfRef<String> get hostname => TfRef.attribute<String>(this, 'hostname');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `minimum_tls_version` attribute.
  TfRef<String> get minimumTlsVersion =>
      TfRef.attribute<String>(this, 'minimum_tls_version');

  /// Reference to `non_ssl_port_enabled` attribute.
  TfRef<bool> get nonSslPortEnabled =>
      TfRef.attribute<bool>(this, 'non_ssl_port_enabled');

  /// Reference to `patch_schedule` attribute.
  TfRef<List<Map<String, Object?>>> get patchSchedule =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'patch_schedule');

  /// Reference to `port` attribute.
  TfRef<num> get port => TfRef.attribute<num>(this, 'port');

  /// Reference to `primary_access_key` attribute.
  TfRef<String> get primaryAccessKey =>
      TfRef.attribute<String>(this, 'primary_access_key');

  /// Reference to `primary_connection_string` attribute.
  TfRef<String> get primaryConnectionString =>
      TfRef.attribute<String>(this, 'primary_connection_string');

  /// Reference to `private_static_ip_address` attribute.
  TfRef<String> get privateStaticIpAddress =>
      TfRef.attribute<String>(this, 'private_static_ip_address');

  /// Reference to `redis_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get redisConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'redis_configuration');

  /// Reference to `secondary_access_key` attribute.
  TfRef<String> get secondaryAccessKey =>
      TfRef.attribute<String>(this, 'secondary_access_key');

  /// Reference to `secondary_connection_string` attribute.
  TfRef<String> get secondaryConnectionString =>
      TfRef.attribute<String>(this, 'secondary_connection_string');

  /// Reference to `shard_count` attribute.
  TfRef<num> get shardCount => TfRef.attribute<num>(this, 'shard_count');

  /// Reference to `sku_name` attribute.
  TfRef<String> get skuName => TfRef.attribute<String>(this, 'sku_name');

  /// Reference to `ssl_port` attribute.
  TfRef<num> get sslPort => TfRef.attribute<num>(this, 'ssl_port');

  /// Reference to `subnet_id` attribute.
  TfRef<String> get subnetId => TfRef.attribute<String>(this, 'subnet_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `zones` attribute.
  TfRef<List<String>> get zones => TfRef.attribute<List<String>>(this, 'zones');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
