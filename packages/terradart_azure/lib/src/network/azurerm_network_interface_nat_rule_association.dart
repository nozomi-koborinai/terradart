// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_network_interface_nat_rule_association`.
const Set<String> _azurermNetworkInterfaceNatRuleAssociationSensitive =
    <String>{};

/// Factory wrapper for `azurerm_network_interface_nat_rule_association`.
final class AzurermNetworkInterfaceNatRuleAssociation extends Resource {
  static const String tfType = 'azurerm_network_interface_nat_rule_association';

  AzurermNetworkInterfaceNatRuleAssociation(
    super.localName, {
    required TfArg<String> ipConfigurationName,
    required TfArg<String> natRuleId,
    required TfArg<String> networkInterfaceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'ip_configuration_name': ipConfigurationName,
           'nat_rule_id': natRuleId,
           'network_interface_id': networkInterfaceId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermNetworkInterfaceNatRuleAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermNetworkInterfaceNatRuleAssociation>`.
  RefTo<AzurermNetworkInterfaceNatRuleAssociation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ip_configuration_name` attribute.
  TfRef<String> get ipConfigurationName =>
      TfRef.attribute<String>(this, 'ip_configuration_name');

  /// Reference to `nat_rule_id` attribute.
  TfRef<String> get natRuleId => TfRef.attribute<String>(this, 'nat_rule_id');

  /// Reference to `network_interface_id` attribute.
  TfRef<String> get networkInterfaceId =>
      TfRef.attribute<String>(this, 'network_interface_id');
}
