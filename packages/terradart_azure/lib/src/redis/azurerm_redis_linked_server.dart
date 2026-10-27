// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_redis_linked_server`.
const Set<String> _azurermRedisLinkedServerSensitive = <String>{};

/// Redis Linked Server enum for `server_role`.
extension type const RedisLinkedServerRole._(TfArg<String> _)
    implements TfArg<String> {
  RedisLinkedServerRole.variable(String name) : this._(TfArg.variable(name));
  RedisLinkedServerRole.expression(String template)
    : this._(TfArg.expression(template));
  const RedisLinkedServerRole.arg(TfArg<String> arg) : this._(arg);

  static const primary = RedisLinkedServerRole._(TfArgLiteral('Primary'));
  static const secondary = RedisLinkedServerRole._(TfArgLiteral('Secondary'));

  static const List<RedisLinkedServerRole> values = [primary, secondary];
}

/// Factory wrapper for `azurerm_redis_linked_server`.
final class AzurermRedisLinkedServer extends Resource {
  static const String tfType = 'azurerm_redis_linked_server';

  AzurermRedisLinkedServer(
    super.localName, {
    required TfArg<String> linkedRedisCacheId,
    required TfArg<String> linkedRedisCacheLocation,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required RedisLinkedServerRole serverRole,
    required TfArg<String> targetRedisCacheName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'linked_redis_cache_id': linkedRedisCacheId,
           'linked_redis_cache_location': linkedRedisCacheLocation,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'server_role': serverRole,
           'target_redis_cache_name': targetRedisCacheName,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermRedisLinkedServerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermRedisLinkedServer>`.
  RefTo<AzurermRedisLinkedServer> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `geo_replicated_primary_host_name` attribute.
  TfRef<String> get geoReplicatedPrimaryHostName =>
      TfRef.attribute<String>(this, 'geo_replicated_primary_host_name');

  /// Reference to `linked_redis_cache_id` attribute.
  TfRef<String> get linkedRedisCacheId =>
      TfRef.attribute<String>(this, 'linked_redis_cache_id');

  /// Reference to `linked_redis_cache_location` attribute.
  TfRef<String> get linkedRedisCacheLocation =>
      TfRef.attribute<String>(this, 'linked_redis_cache_location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `server_role` attribute.
  TfRef<String> get serverRole => TfRef.attribute<String>(this, 'server_role');

  /// Reference to `target_redis_cache_name` attribute.
  TfRef<String> get targetRedisCacheName =>
      TfRef.attribute<String>(this, 'target_redis_cache_name');
}
