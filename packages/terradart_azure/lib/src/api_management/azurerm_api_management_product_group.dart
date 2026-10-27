// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_api_management_product_group`.
const Set<String> _azurermApiManagementProductGroupSensitive = <String>{};

/// Factory wrapper for `azurerm_api_management_product_group`.
final class AzurermApiManagementProductGroup extends Resource {
  static const String tfType = 'azurerm_api_management_product_group';

  AzurermApiManagementProductGroup(
    super.localName, {
    required TfArg<String> apiManagementName,
    required TfArg<String> groupName,
    required TfArg<String> productId,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_management_name': apiManagementName,
           'group_name': groupName,
           'product_id': productId,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermApiManagementProductGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermApiManagementProductGroup>`.
  RefTo<AzurermApiManagementProductGroup> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_management_name` attribute.
  TfRef<String> get apiManagementName =>
      TfRef.attribute<String>(this, 'api_management_name');

  /// Reference to `group_name` attribute.
  TfRef<String> get groupName => TfRef.attribute<String>(this, 'group_name');

  /// Reference to `product_id` attribute.
  TfRef<String> get productId => TfRef.attribute<String>(this, 'product_id');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
