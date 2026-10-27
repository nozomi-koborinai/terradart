// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_web_app_hybrid_connection`.
const Set<String> _azurermWebAppHybridConnectionSensitive = <String>{
  'send_key_value',
};

/// Factory wrapper for `azurerm_web_app_hybrid_connection`.
final class AzurermWebAppHybridConnection extends Resource {
  static const String tfType = 'azurerm_web_app_hybrid_connection';

  AzurermWebAppHybridConnection(
    super.localName, {
    required TfArg<String> hostname,
    required TfArg<num> port,
    required TfArg<String> relayId,
    TfArg<String>? sendKeyName,
    required TfArg<String> webAppId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'hostname': hostname,
           'port': port,
           'relay_id': relayId,
           'send_key_name': ?sendKeyName,
           'web_app_id': webAppId,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermWebAppHybridConnectionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermWebAppHybridConnection>`.
  RefTo<AzurermWebAppHybridConnection> get ref => RefTo.of(this);

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

  /// Reference to `hostname` attribute.
  TfRef<String> get hostname => TfRef.attribute<String>(this, 'hostname');

  /// Reference to `port` attribute.
  TfRef<num> get port => TfRef.attribute<num>(this, 'port');

  /// Reference to `relay_id` attribute.
  TfRef<String> get relayId => TfRef.attribute<String>(this, 'relay_id');

  /// Reference to `send_key_name` attribute.
  TfRef<String> get sendKeyName =>
      TfRef.attribute<String>(this, 'send_key_name');

  /// Reference to `web_app_id` attribute.
  TfRef<String> get webAppId => TfRef.attribute<String>(this, 'web_app_id');
}
