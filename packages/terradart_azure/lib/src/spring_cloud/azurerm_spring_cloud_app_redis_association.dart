// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_spring_cloud_app_redis_association`.
const Set<String> _azurermSpringCloudAppRedisAssociationSensitive = <String>{};

/// Factory wrapper for `azurerm_spring_cloud_app_redis_association`.
final class AzurermSpringCloudAppRedisAssociation extends Resource {
  static const String tfType = 'azurerm_spring_cloud_app_redis_association';

  AzurermSpringCloudAppRedisAssociation(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> redisAccessKey,
    required TfArg<String> redisCacheId,
    required TfArg<String> springCloudAppId,
    TfArg<bool>? sslEnabled,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'redis_access_key': redisAccessKey,
           'redis_cache_id': redisCacheId,
           'spring_cloud_app_id': springCloudAppId,
           'ssl_enabled': ?sslEnabled,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSpringCloudAppRedisAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSpringCloudAppRedisAssociation>`.
  RefTo<AzurermSpringCloudAppRedisAssociation> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `redis_access_key` attribute.
  TfRef<String> get redisAccessKey =>
      TfRef.attribute<String>(this, 'redis_access_key');

  /// Reference to `redis_cache_id` attribute.
  TfRef<String> get redisCacheId =>
      TfRef.attribute<String>(this, 'redis_cache_id');

  /// Reference to `spring_cloud_app_id` attribute.
  TfRef<String> get springCloudAppId =>
      TfRef.attribute<String>(this, 'spring_cloud_app_id');

  /// Reference to `ssl_enabled` attribute.
  TfRef<bool> get sslEnabled => TfRef.attribute<bool>(this, 'ssl_enabled');
}
