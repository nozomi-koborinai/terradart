// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_network_manager_admin_rule_collection`.
const Set<String> _azurermNetworkManagerAdminRuleCollectionSensitive =
    <String>{};

/// Factory wrapper for `azurerm_network_manager_admin_rule_collection`.
final class AzurermNetworkManagerAdminRuleCollection extends Resource {
  static const String tfType = 'azurerm_network_manager_admin_rule_collection';

  AzurermNetworkManagerAdminRuleCollection(
    super.localName, {
    TfArg<String>? description,
    required TfArg<String> name,
    required TfArg<List<String>> networkGroupIds,
    required TfArg<String> securityAdminConfigurationId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'name': name,
           'network_group_ids': networkGroupIds,
           'security_admin_configuration_id': securityAdminConfigurationId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermNetworkManagerAdminRuleCollectionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermNetworkManagerAdminRuleCollection>`.
  RefTo<AzurermNetworkManagerAdminRuleCollection> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `network_group_ids` attribute.
  TfRef<List<String>> get networkGroupIds =>
      TfRef.attribute<List<String>>(this, 'network_group_ids');

  /// Reference to `security_admin_configuration_id` attribute.
  TfRef<String> get securityAdminConfigurationId =>
      TfRef.attribute<String>(this, 'security_admin_configuration_id');
}
