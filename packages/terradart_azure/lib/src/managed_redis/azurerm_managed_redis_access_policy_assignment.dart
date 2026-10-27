// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_managed_redis_access_policy_assignment`.
const Set<String> _azurermManagedRedisAccessPolicyAssignmentSensitive =
    <String>{};

/// Factory wrapper for `azurerm_managed_redis_access_policy_assignment`.
final class AzurermManagedRedisAccessPolicyAssignment extends Resource {
  static const String tfType = 'azurerm_managed_redis_access_policy_assignment';

  AzurermManagedRedisAccessPolicyAssignment(
    super.localName, {
    required TfArg<String> managedRedisId,
    required TfArg<String> objectId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'managed_redis_id': managedRedisId, 'object_id': objectId},
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermManagedRedisAccessPolicyAssignmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermManagedRedisAccessPolicyAssignment>`.
  RefTo<AzurermManagedRedisAccessPolicyAssignment> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `managed_redis_id` attribute.
  TfRef<String> get managedRedisId =>
      TfRef.attribute<String>(this, 'managed_redis_id');

  /// Reference to `object_id` attribute.
  TfRef<String> get objectId => TfRef.attribute<String>(this, 'object_id');
}
