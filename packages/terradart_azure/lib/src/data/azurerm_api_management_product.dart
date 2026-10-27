// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../api_management/azurerm_api_management_product.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_api_management_product`.
const Set<String> _azurermApiManagementProductSensitive = <String>{};

/// Factory wrapper for `azurerm_api_management_product`.
final class DataAzurermApiManagementProduct extends Data {
  static const String tfType = 'azurerm_api_management_product';

  DataAzurermApiManagementProduct(
    super.localName, {
    required TfArg<String> apiManagementName,
    required TfArg<String> productId,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_management_name': apiManagementName,
           'product_id': productId,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermApiManagementProductSensitive;

  /// A reference to the `azurerm_api_management_product` this data source reads, for
  /// arguments typed `RefTo<AzurermApiManagementProduct>`.
  RefTo<AzurermApiManagementProduct> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `approval_required` attribute.
  TfRef<bool> get approvalRequired =>
      TfRef.attribute<bool>(this, 'approval_required');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `published` attribute.
  TfRef<bool> get published => TfRef.attribute<bool>(this, 'published');

  /// Reference to `subscription_required` attribute.
  TfRef<bool> get subscriptionRequired =>
      TfRef.attribute<bool>(this, 'subscription_required');

  /// Reference to `subscriptions_limit` attribute.
  TfRef<num> get subscriptionsLimit =>
      TfRef.attribute<num>(this, 'subscriptions_limit');

  /// Reference to `terms` attribute.
  TfRef<String> get terms => TfRef.attribute<String>(this, 'terms');

  /// Reference to `api_management_name` attribute.
  TfRef<String> get apiManagementName =>
      TfRef.attribute<String>(this, 'api_management_name');

  /// Reference to `product_id` attribute.
  TfRef<String> get productId => TfRef.attribute<String>(this, 'product_id');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
