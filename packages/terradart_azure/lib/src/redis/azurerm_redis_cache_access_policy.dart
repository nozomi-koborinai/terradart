// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_redis_cache_access_policy`.
const Set<String> _azurermRedisCacheAccessPolicySensitive = <String>{};

/// Factory wrapper for `azurerm_redis_cache_access_policy`.
final class AzurermRedisCacheAccessPolicy extends Resource {
  static const String tfType = 'azurerm_redis_cache_access_policy';

  AzurermRedisCacheAccessPolicy(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> permissions,
    required TfArg<String> redisCacheId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'permissions': permissions,
           'redis_cache_id': redisCacheId,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermRedisCacheAccessPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermRedisCacheAccessPolicy>`.
  RefTo<AzurermRedisCacheAccessPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `permissions` attribute.
  TfRef<String> get permissions => TfRef.attribute<String>(this, 'permissions');

  /// Reference to `redis_cache_id` attribute.
  TfRef<String> get redisCacheId =>
      TfRef.attribute<String>(this, 'redis_cache_id');
}
