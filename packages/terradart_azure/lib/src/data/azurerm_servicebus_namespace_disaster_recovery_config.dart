// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../servicebus/azurerm_servicebus_namespace_disaster_recovery_config.dart';

/// Sensitive field paths for `azurerm_servicebus_namespace_disaster_recovery_config`.
const Set<String> _azurermServicebusNamespaceDisasterRecoveryConfigSensitive =
    <String>{
      'default_primary_key',
      'default_secondary_key',
      'primary_connection_string_alias',
      'secondary_connection_string_alias',
    };

/// Factory wrapper for `azurerm_servicebus_namespace_disaster_recovery_config`.
final class DataAzurermServicebusNamespaceDisasterRecoveryConfig extends Data {
  static const String tfType =
      'azurerm_servicebus_namespace_disaster_recovery_config';

  DataAzurermServicebusNamespaceDisasterRecoveryConfig(
    super.localName, {
    TfArg<String>? aliasAuthorizationRuleId,
    required TfArg<String> name,
    required TfArg<String> namespaceId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'alias_authorization_rule_id': ?aliasAuthorizationRuleId,
           'name': name,
           'namespace_id': namespaceId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermServicebusNamespaceDisasterRecoveryConfigSensitive;

  /// A reference to the `azurerm_servicebus_namespace_disaster_recovery_config` this data source reads, for
  /// arguments typed `RefTo<AzurermServicebusNamespaceDisasterRecoveryConfig>`.
  RefTo<AzurermServicebusNamespaceDisasterRecoveryConfig> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `default_primary_key` attribute.
  TfRef<String> get defaultPrimaryKey =>
      TfRef.attribute<String>(this, 'default_primary_key');

  /// Reference to `default_secondary_key` attribute.
  TfRef<String> get defaultSecondaryKey =>
      TfRef.attribute<String>(this, 'default_secondary_key');

  /// Reference to `partner_namespace_id` attribute.
  TfRef<String> get partnerNamespaceId =>
      TfRef.attribute<String>(this, 'partner_namespace_id');

  /// Reference to `primary_connection_string_alias` attribute.
  TfRef<String> get primaryConnectionStringAlias =>
      TfRef.attribute<String>(this, 'primary_connection_string_alias');

  /// Reference to `secondary_connection_string_alias` attribute.
  TfRef<String> get secondaryConnectionStringAlias =>
      TfRef.attribute<String>(this, 'secondary_connection_string_alias');

  /// Reference to `alias_authorization_rule_id` attribute.
  TfRef<String> get aliasAuthorizationRuleId =>
      TfRef.attribute<String>(this, 'alias_authorization_rule_id');

  /// Reference to `namespace_id` attribute.
  TfRef<String> get namespaceId =>
      TfRef.attribute<String>(this, 'namespace_id');
}
