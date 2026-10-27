// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_redis_cache_access_policy_assignment`.
const Set<String> _azurermRedisCacheAccessPolicyAssignmentSensitive =
    <String>{};

/// Factory wrapper for `azurerm_redis_cache_access_policy_assignment`.
final class AzurermRedisCacheAccessPolicyAssignment extends Resource {
  static const String tfType = 'azurerm_redis_cache_access_policy_assignment';

  AzurermRedisCacheAccessPolicyAssignment(
    super.localName, {
    required TfArg<String> accessPolicyName,
    required TfArg<String> name,
    required TfArg<String> objectId,
    required TfArg<String> objectIdAlias,
    required TfArg<String> redisCacheId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'access_policy_name': accessPolicyName,
           'name': name,
           'object_id': objectId,
           'object_id_alias': objectIdAlias,
           'redis_cache_id': redisCacheId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermRedisCacheAccessPolicyAssignmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermRedisCacheAccessPolicyAssignment>`.
  RefTo<AzurermRedisCacheAccessPolicyAssignment> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `access_policy_name` attribute.
  TfRef<String> get accessPolicyName =>
      TfRef.attribute<String>(this, 'access_policy_name');

  /// Reference to `object_id` attribute.
  TfRef<String> get objectId => TfRef.attribute<String>(this, 'object_id');

  /// Reference to `object_id_alias` attribute.
  TfRef<String> get objectIdAlias =>
      TfRef.attribute<String>(this, 'object_id_alias');

  /// Reference to `redis_cache_id` attribute.
  TfRef<String> get redisCacheId =>
      TfRef.attribute<String>(this, 'redis_cache_id');
}
