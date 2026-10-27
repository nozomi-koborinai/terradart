// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_api_management_group_user`.
const Set<String> _azurermApiManagementGroupUserSensitive = <String>{};

/// Factory wrapper for `azurerm_api_management_group_user`.
final class AzurermApiManagementGroupUser extends Resource {
  static const String tfType = 'azurerm_api_management_group_user';

  AzurermApiManagementGroupUser(
    super.localName, {
    required TfArg<String> apiManagementName,
    required TfArg<String> groupName,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> userId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_management_name': apiManagementName,
           'group_name': groupName,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'user_id': userId,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermApiManagementGroupUserSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermApiManagementGroupUser>`.
  RefTo<AzurermApiManagementGroupUser> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_management_name` attribute.
  TfRef<String> get apiManagementName =>
      TfRef.attribute<String>(this, 'api_management_name');

  /// Reference to `group_name` attribute.
  TfRef<String> get groupName => TfRef.attribute<String>(this, 'group_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `user_id` attribute.
  TfRef<String> get userId => TfRef.attribute<String>(this, 'user_id');
}
