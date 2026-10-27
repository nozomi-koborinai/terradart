// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../api_management/azurerm_api_management_subscription.dart';

/// Sensitive field paths for `azurerm_api_management_subscription`.
const Set<String> _azurermApiManagementSubscriptionSensitive = <String>{
  'primary_key',
  'secondary_key',
};

/// Factory wrapper for `azurerm_api_management_subscription`.
final class DataAzurermApiManagementSubscription extends Data {
  static const String tfType = 'azurerm_api_management_subscription';

  DataAzurermApiManagementSubscription(
    super.localName, {
    required TfArg<String> apiManagementId,
    required TfArg<String> subscriptionId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_management_id': apiManagementId,
           'subscription_id': subscriptionId,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermApiManagementSubscriptionSensitive;

  /// A reference to the `azurerm_api_management_subscription` this data source reads, for
  /// arguments typed `RefTo<AzurermApiManagementSubscription>`.
  RefTo<AzurermApiManagementSubscription> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `allow_tracing` attribute.
  TfRef<bool> get allowTracing => TfRef.attribute<bool>(this, 'allow_tracing');

  /// Reference to `api_id` attribute.
  TfRef<String> get apiId => TfRef.attribute<String>(this, 'api_id');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `primary_key` attribute.
  TfRef<String> get primaryKey => TfRef.attribute<String>(this, 'primary_key');

  /// Reference to `product_id` attribute.
  TfRef<String> get productId => TfRef.attribute<String>(this, 'product_id');

  /// Reference to `secondary_key` attribute.
  TfRef<String> get secondaryKey =>
      TfRef.attribute<String>(this, 'secondary_key');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `user_id` attribute.
  TfRef<String> get userId => TfRef.attribute<String>(this, 'user_id');

  /// Reference to `api_management_id` attribute.
  TfRef<String> get apiManagementId =>
      TfRef.attribute<String>(this, 'api_management_id');

  /// Reference to `subscription_id` attribute.
  TfRef<String> get subscriptionId =>
      TfRef.attribute<String>(this, 'subscription_id');
}
