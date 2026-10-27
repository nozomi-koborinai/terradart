// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_servicebus_namespace_authorization_rule`.
const Set<String> _azurermServicebusNamespaceAuthorizationRuleSensitive =
    <String>{
      'primary_connection_string',
      'primary_connection_string_alias',
      'primary_key',
      'secondary_connection_string',
      'secondary_connection_string_alias',
      'secondary_key',
    };

/// Factory wrapper for `azurerm_servicebus_namespace_authorization_rule`.
final class AzurermServicebusNamespaceAuthorizationRule extends Resource {
  static const String tfType =
      'azurerm_servicebus_namespace_authorization_rule';

  AzurermServicebusNamespaceAuthorizationRule(
    super.localName, {
    TfArg<bool>? listen,
    TfArg<bool>? manage,
    required TfArg<String> name,
    required TfArg<String> namespaceId,
    TfArg<bool>? send,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'listen': ?listen,
           'manage': ?manage,
           'name': name,
           'namespace_id': namespaceId,
           'send': ?send,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermServicebusNamespaceAuthorizationRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermServicebusNamespaceAuthorizationRule>`.
  RefTo<AzurermServicebusNamespaceAuthorizationRule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `primary_connection_string` attribute.
  TfRef<String> get primaryConnectionString =>
      TfRef.attribute<String>(this, 'primary_connection_string');

  /// Reference to `primary_connection_string_alias` attribute.
  TfRef<String> get primaryConnectionStringAlias =>
      TfRef.attribute<String>(this, 'primary_connection_string_alias');

  /// Reference to `primary_key` attribute.
  TfRef<String> get primaryKey => TfRef.attribute<String>(this, 'primary_key');

  /// Reference to `secondary_connection_string` attribute.
  TfRef<String> get secondaryConnectionString =>
      TfRef.attribute<String>(this, 'secondary_connection_string');

  /// Reference to `secondary_connection_string_alias` attribute.
  TfRef<String> get secondaryConnectionStringAlias =>
      TfRef.attribute<String>(this, 'secondary_connection_string_alias');

  /// Reference to `secondary_key` attribute.
  TfRef<String> get secondaryKey =>
      TfRef.attribute<String>(this, 'secondary_key');

  /// Reference to `listen` attribute.
  TfRef<bool> get listen => TfRef.attribute<bool>(this, 'listen');

  /// Reference to `manage` attribute.
  TfRef<bool> get manage => TfRef.attribute<bool>(this, 'manage');

  /// Reference to `namespace_id` attribute.
  TfRef<String> get namespaceId =>
      TfRef.attribute<String>(this, 'namespace_id');

  /// Reference to `send` attribute.
  TfRef<bool> get send => TfRef.attribute<bool>(this, 'send');
}
