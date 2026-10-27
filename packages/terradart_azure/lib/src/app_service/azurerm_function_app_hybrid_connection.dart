// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_function_app_hybrid_connection`.
const Set<String> _azurermFunctionAppHybridConnectionSensitive = <String>{
  'send_key_value',
};

/// Factory wrapper for `azurerm_function_app_hybrid_connection`.
final class AzurermFunctionAppHybridConnection extends Resource {
  static const String tfType = 'azurerm_function_app_hybrid_connection';

  AzurermFunctionAppHybridConnection(
    super.localName, {
    required TfArg<String> functionAppId,
    required TfArg<String> hostname,
    required TfArg<num> port,
    required TfArg<String> relayId,
    TfArg<String>? sendKeyName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'function_app_id': functionAppId,
           'hostname': hostname,
           'port': port,
           'relay_id': relayId,
           'send_key_name': ?sendKeyName,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermFunctionAppHybridConnectionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermFunctionAppHybridConnection>`.
  RefTo<AzurermFunctionAppHybridConnection> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `namespace_name` attribute.
  TfRef<String> get namespaceName =>
      TfRef.attribute<String>(this, 'namespace_name');

  /// Reference to `relay_name` attribute.
  TfRef<String> get relayName => TfRef.attribute<String>(this, 'relay_name');

  /// Reference to `send_key_value` attribute.
  TfRef<String> get sendKeyValue =>
      TfRef.attribute<String>(this, 'send_key_value');

  /// Reference to `service_bus_namespace` attribute.
  TfRef<String> get serviceBusNamespace =>
      TfRef.attribute<String>(this, 'service_bus_namespace');

  /// Reference to `service_bus_suffix` attribute.
  TfRef<String> get serviceBusSuffix =>
      TfRef.attribute<String>(this, 'service_bus_suffix');

  /// Reference to `function_app_id` attribute.
  TfRef<String> get functionAppId =>
      TfRef.attribute<String>(this, 'function_app_id');

  /// Reference to `hostname` attribute.
  TfRef<String> get hostname => TfRef.attribute<String>(this, 'hostname');

  /// Reference to `port` attribute.
  TfRef<num> get port => TfRef.attribute<num>(this, 'port');

  /// Reference to `relay_id` attribute.
  TfRef<String> get relayId => TfRef.attribute<String>(this, 'relay_id');

  /// Reference to `send_key_name` attribute.
  TfRef<String> get sendKeyName =>
      TfRef.attribute<String>(this, 'send_key_name');
}
