// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_network_manager_subscription_connection`.
const Set<String> _azurermNetworkManagerSubscriptionConnectionSensitive =
    <String>{};

/// Factory wrapper for `azurerm_network_manager_subscription_connection`.
final class AzurermNetworkManagerSubscriptionConnection extends Resource {
  static const String tfType =
      'azurerm_network_manager_subscription_connection';

  AzurermNetworkManagerSubscriptionConnection(
    super.localName, {
    TfArg<String>? description,
    required TfArg<String> name,
    required TfArg<String> networkManagerId,
    required TfArg<String> subscriptionId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'name': name,
           'network_manager_id': networkManagerId,
           'subscription_id': subscriptionId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermNetworkManagerSubscriptionConnectionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermNetworkManagerSubscriptionConnection>`.
  RefTo<AzurermNetworkManagerSubscriptionConnection> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `connection_state` attribute.
  TfRef<String> get connectionState =>
      TfRef.attribute<String>(this, 'connection_state');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `network_manager_id` attribute.
  TfRef<String> get networkManagerId =>
      TfRef.attribute<String>(this, 'network_manager_id');

  /// Reference to `subscription_id` attribute.
  TfRef<String> get subscriptionId =>
      TfRef.attribute<String>(this, 'subscription_id');
}
