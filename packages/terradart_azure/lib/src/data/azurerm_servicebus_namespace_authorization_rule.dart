// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../servicebus/azurerm_servicebus_namespace_authorization_rule.dart';

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
final class DataAzurermServicebusNamespaceAuthorizationRule extends Data {
  static const String tfType =
      'azurerm_servicebus_namespace_authorization_rule';

  DataAzurermServicebusNamespaceAuthorizationRule(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> namespaceId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, 'namespace_id': namespaceId},
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermServicebusNamespaceAuthorizationRuleSensitive;

  /// A reference to the `azurerm_servicebus_namespace_authorization_rule` this data source reads, for
  /// arguments typed `RefTo<AzurermServicebusNamespaceAuthorizationRule>`.
  RefTo<AzurermServicebusNamespaceAuthorizationRule> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

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

  /// Reference to `namespace_id` attribute.
  TfRef<String> get namespaceId =>
      TfRef.attribute<String>(this, 'namespace_id');
}
