// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_api_management_product`.
const Set<String> _azurermApiManagementProductSensitive = <String>{};

/// Factory wrapper for `azurerm_api_management_product`.
final class AzurermApiManagementProduct extends Resource {
  static const String tfType = 'azurerm_api_management_product';

  AzurermApiManagementProduct(
    super.localName, {
    required TfArg<String> apiManagementName,
    TfArg<bool>? approvalRequired,
    TfArg<String>? description,
    required TfArg<String> displayName,
    required TfArg<String> productId,
    required TfArg<bool> published,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<bool>? subscriptionRequired,
    TfArg<num>? subscriptionsLimit,
    TfArg<String>? terms,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_management_name': apiManagementName,
           'approval_required': ?approvalRequired,
           'description': ?description,
           'display_name': displayName,
           'product_id': productId,
           'published': published,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'subscription_required': ?subscriptionRequired,
           'subscriptions_limit': ?subscriptionsLimit,
           'terms': ?terms,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermApiManagementProductSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermApiManagementProduct>`.
  RefTo<AzurermApiManagementProduct> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_management_name` attribute.
  TfRef<String> get apiManagementName =>
      TfRef.attribute<String>(this, 'api_management_name');

  /// Reference to `approval_required` attribute.
  TfRef<bool> get approvalRequired =>
      TfRef.attribute<bool>(this, 'approval_required');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `product_id` attribute.
  TfRef<String> get productId => TfRef.attribute<String>(this, 'product_id');

  /// Reference to `published` attribute.
  TfRef<bool> get published => TfRef.attribute<bool>(this, 'published');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `subscription_required` attribute.
  TfRef<bool> get subscriptionRequired =>
      TfRef.attribute<bool>(this, 'subscription_required');

  /// Reference to `subscriptions_limit` attribute.
  TfRef<num> get subscriptionsLimit =>
      TfRef.attribute<num>(this, 'subscriptions_limit');

  /// Reference to `terms` attribute.
  TfRef<String> get terms => TfRef.attribute<String>(this, 'terms');
}
