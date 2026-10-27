// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../api_management/azurerm_api_management_user.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_api_management_user`.
const Set<String> _azurermApiManagementUserSensitive = <String>{};

/// Factory wrapper for `azurerm_api_management_user`.
final class DataAzurermApiManagementUser extends Data {
  static const String tfType = 'azurerm_api_management_user';

  DataAzurermApiManagementUser(
    super.localName, {
    required TfArg<String> apiManagementName,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> userId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_management_name': apiManagementName,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'user_id': userId,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermApiManagementUserSensitive;

  /// A reference to the `azurerm_api_management_user` this data source reads, for
  /// arguments typed `RefTo<AzurermApiManagementUser>`.
  RefTo<AzurermApiManagementUser> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `email` attribute.
  TfRef<String> get email => TfRef.attribute<String>(this, 'email');

  /// Reference to `first_name` attribute.
  TfRef<String> get firstName => TfRef.attribute<String>(this, 'first_name');

  /// Reference to `last_name` attribute.
  TfRef<String> get lastName => TfRef.attribute<String>(this, 'last_name');

  /// Reference to `note` attribute.
  TfRef<String> get note => TfRef.attribute<String>(this, 'note');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `api_management_name` attribute.
  TfRef<String> get apiManagementName =>
      TfRef.attribute<String>(this, 'api_management_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `user_id` attribute.
  TfRef<String> get userId => TfRef.attribute<String>(this, 'user_id');
}
