// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_network_manager_routing_rule_collection`.
const Set<String> _azurermNetworkManagerRoutingRuleCollectionSensitive =
    <String>{};

/// Factory wrapper for `azurerm_network_manager_routing_rule_collection`.
final class AzurermNetworkManagerRoutingRuleCollection extends Resource {
  static const String tfType =
      'azurerm_network_manager_routing_rule_collection';

  AzurermNetworkManagerRoutingRuleCollection(
    super.localName, {
    TfArg<bool>? bgpRoutePropagationEnabled,
    TfArg<String>? description,
    required TfArg<String> name,
    required TfArg<List<String>> networkGroupIds,
    required TfArg<String> routingConfigurationId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bgp_route_propagation_enabled': ?bgpRoutePropagationEnabled,
           'description': ?description,
           'name': name,
           'network_group_ids': networkGroupIds,
           'routing_configuration_id': routingConfigurationId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermNetworkManagerRoutingRuleCollectionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermNetworkManagerRoutingRuleCollection>`.
  RefTo<AzurermNetworkManagerRoutingRuleCollection> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `bgp_route_propagation_enabled` attribute.
  TfRef<bool> get bgpRoutePropagationEnabled =>
      TfRef.attribute<bool>(this, 'bgp_route_propagation_enabled');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `network_group_ids` attribute.
  TfRef<List<String>> get networkGroupIds =>
      TfRef.attribute<List<String>>(this, 'network_group_ids');

  /// Reference to `routing_configuration_id` attribute.
  TfRef<String> get routingConfigurationId =>
      TfRef.attribute<String>(this, 'routing_configuration_id');
}
