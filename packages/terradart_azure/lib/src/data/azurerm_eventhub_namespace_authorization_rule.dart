// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../eventhub/azurerm_eventhub_namespace_authorization_rule.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_eventhub_namespace_authorization_rule`.
const Set<String> _azurermEventhubNamespaceAuthorizationRuleSensitive =
    <String>{
      'primary_connection_string',
      'primary_connection_string_alias',
      'primary_key',
      'secondary_connection_string',
      'secondary_connection_string_alias',
      'secondary_key',
    };

/// Factory wrapper for `azurerm_eventhub_namespace_authorization_rule`.
final class DataAzurermEventhubNamespaceAuthorizationRule extends Data {
  static const String tfType = 'azurerm_eventhub_namespace_authorization_rule';

  DataAzurermEventhubNamespaceAuthorizationRule(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> namespaceName,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'namespace_name': namespaceName,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermEventhubNamespaceAuthorizationRuleSensitive;

  /// A reference to the `azurerm_eventhub_namespace_authorization_rule` this data source reads, for
  /// arguments typed `RefTo<AzurermEventhubNamespaceAuthorizationRule>`.
  RefTo<AzurermEventhubNamespaceAuthorizationRule> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `listen` attribute.
  TfRef<bool> get listen => TfRef.attribute<bool>(this, 'listen');

  /// Reference to `manage` attribute.
  TfRef<bool> get manage => TfRef.attribute<bool>(this, 'manage');

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

  /// Reference to `send` attribute.
  TfRef<bool> get send => TfRef.attribute<bool>(this, 'send');

  /// Reference to `namespace_name` attribute.
  TfRef<String> get namespaceName =>
      TfRef.attribute<String>(this, 'namespace_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
