// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../managed_redis/azurerm_managed_redis_access_policy_assignment.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_managed_redis_access_policy_assignment`.
const Set<String> _azurermManagedRedisAccessPolicyAssignmentSensitive =
    <String>{};

/// Factory wrapper for `azurerm_managed_redis_access_policy_assignment`.
final class DataAzurermManagedRedisAccessPolicyAssignment extends Data {
  static const String tfType = 'azurerm_managed_redis_access_policy_assignment';

  DataAzurermManagedRedisAccessPolicyAssignment(
    super.localName, {
    required TfArg<String> managedRedisName,
    required TfArg<String> objectId,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'managed_redis_name': managedRedisName,
           'object_id': objectId,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermManagedRedisAccessPolicyAssignmentSensitive;

  /// A reference to the `azurerm_managed_redis_access_policy_assignment` this data source reads, for
  /// arguments typed `RefTo<AzurermManagedRedisAccessPolicyAssignment>`.
  RefTo<AzurermManagedRedisAccessPolicyAssignment> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `managed_redis_name` attribute.
  TfRef<String> get managedRedisName =>
      TfRef.attribute<String>(this, 'managed_redis_name');

  /// Reference to `object_id` attribute.
  TfRef<String> get objectId => TfRef.attribute<String>(this, 'object_id');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
