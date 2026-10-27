// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_api_management_redis_cache`.
const Set<String> _azurermApiManagementRedisCacheSensitive = <String>{
  'connection_string',
};

/// Factory wrapper for `azurerm_api_management_redis_cache`.
final class AzurermApiManagementRedisCache extends Resource {
  static const String tfType = 'azurerm_api_management_redis_cache';

  AzurermApiManagementRedisCache(
    super.localName, {
    required TfArg<String> apiManagementId,
    TfArg<String>? cacheLocation,
    required Sensitive<String> connectionString,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? redisCacheId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_management_id': apiManagementId,
           'cache_location': ?cacheLocation,
           'connection_string': connectionString,
           'description': ?description,
           'name': name,
           'redis_cache_id': ?redisCacheId,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermApiManagementRedisCacheSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermApiManagementRedisCache>`.
  RefTo<AzurermApiManagementRedisCache> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_management_id` attribute.
  TfRef<String> get apiManagementId =>
      TfRef.attribute<String>(this, 'api_management_id');

  /// Reference to `cache_location` attribute.
  TfRef<String> get cacheLocation =>
      TfRef.attribute<String>(this, 'cache_location');

  /// Reference to `connection_string` attribute.
  TfRef<String> get connectionString =>
      TfRef.attribute<String>(this, 'connection_string');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `redis_cache_id` attribute.
  TfRef<String> get redisCacheId =>
      TfRef.attribute<String>(this, 'redis_cache_id');
}
