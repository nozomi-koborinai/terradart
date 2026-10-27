// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_network_manager_routing_configuration`.
const Set<String> _azurermNetworkManagerRoutingConfigurationSensitive =
    <String>{};

/// Network Manager Routing Configuration Route Table Usage enum for `route_table_usage_mode`.
extension type const NetworkManagerRoutingConfigurationRouteTableUsageMode._(
  TfArg<String> _
) implements TfArg<String> {
  NetworkManagerRoutingConfigurationRouteTableUsageMode.variable(String name)
    : this._(TfArg.variable(name));
  NetworkManagerRoutingConfigurationRouteTableUsageMode.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const NetworkManagerRoutingConfigurationRouteTableUsageMode.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const managedonly =
      NetworkManagerRoutingConfigurationRouteTableUsageMode._(
        TfArgLiteral('ManagedOnly'),
      );
  static const useexisting =
      NetworkManagerRoutingConfigurationRouteTableUsageMode._(
        TfArgLiteral('UseExisting'),
      );

  static const List<NetworkManagerRoutingConfigurationRouteTableUsageMode>
  values = [managedonly, useexisting];
}

/// Factory wrapper for `azurerm_network_manager_routing_configuration`.
final class AzurermNetworkManagerRoutingConfiguration extends Resource {
  static const String tfType = 'azurerm_network_manager_routing_configuration';

  AzurermNetworkManagerRoutingConfiguration(
    super.localName, {
    TfArg<String>? description,
    required TfArg<String> name,
    required TfArg<String> networkManagerId,
    NetworkManagerRoutingConfigurationRouteTableUsageMode? routeTableUsageMode,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'name': name,
           'network_manager_id': networkManagerId,
           'route_table_usage_mode': ?routeTableUsageMode,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermNetworkManagerRoutingConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermNetworkManagerRoutingConfiguration>`.
  RefTo<AzurermNetworkManagerRoutingConfiguration> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `network_manager_id` attribute.
  TfRef<String> get networkManagerId =>
      TfRef.attribute<String>(this, 'network_manager_id');

  /// Reference to `route_table_usage_mode` attribute.
  TfRef<String> get routeTableUsageMode =>
      TfRef.attribute<String>(this, 'route_table_usage_mode');
}
