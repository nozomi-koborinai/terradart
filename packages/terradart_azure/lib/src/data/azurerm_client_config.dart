// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_client_config`.
const Set<String> _azurermClientConfigSensitive = <String>{};

/// Factory wrapper for `azurerm_client_config`.
final class DataAzurermClientConfig extends Data {
  static const String tfType = 'azurerm_client_config';

  DataAzurermClientConfig(super.localName, {super.provider, super.timeouts})
    : super(terraformType: tfType, argMap: {});

  @override
  Set<String> get sensitiveFields => _azurermClientConfigSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `client_id` attribute.
  TfRef<String> get clientId => TfRef.attribute<String>(this, 'client_id');

  /// Reference to `object_id` attribute.
  TfRef<String> get objectId => TfRef.attribute<String>(this, 'object_id');

  /// Reference to `subscription_id` attribute.
  TfRef<String> get subscriptionId =>
      TfRef.attribute<String>(this, 'subscription_id');

  /// Reference to `tenant_id` attribute.
  TfRef<String> get tenantId => TfRef.attribute<String>(this, 'tenant_id');
}
