// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_route`.
const Set<String> _azurermRouteSensitive = <String>{};

/// Route Next Hop enum for `next_hop_type`.
extension type const RouteNextHopType._(TfArg<String> _)
    implements TfArg<String> {
  RouteNextHopType.variable(String name) : this._(TfArg.variable(name));
  RouteNextHopType.expression(String template)
    : this._(TfArg.expression(template));
  const RouteNextHopType.arg(TfArg<String> arg) : this._(arg);

  static const internet = RouteNextHopType._(TfArgLiteral('Internet'));
  static const none = RouteNextHopType._(TfArgLiteral('None'));
  static const virtualappliance = RouteNextHopType._(
    TfArgLiteral('VirtualAppliance'),
  );
  static const virtualapplianceecmp = RouteNextHopType._(
    TfArgLiteral('VirtualApplianceEcmp'),
  );
  static const virtualnetworkgateway = RouteNextHopType._(
    TfArgLiteral('VirtualNetworkGateway'),
  );
  static const vnetlocal = RouteNextHopType._(TfArgLiteral('VnetLocal'));

  static const List<RouteNextHopType> values = [
    internet,
    none,
    virtualappliance,
    virtualapplianceecmp,
    virtualnetworkgateway,
    vnetlocal,
  ];
}

/// Factory wrapper for `azurerm_route`.
final class AzurermRoute extends Resource {
  static const String tfType = 'azurerm_route';

  AzurermRoute(
    super.localName, {
    required TfArg<String> addressPrefix,
    required TfArg<String> name,
    TfArg<String>? nextHopInIpAddress,
    required RouteNextHopType nextHopType,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> routeTableName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'address_prefix': addressPrefix,
           'name': name,
           'next_hop_in_ip_address': ?nextHopInIpAddress,
           'next_hop_type': nextHopType,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'route_table_name': routeTableName,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermRouteSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermRoute>`.
  RefTo<AzurermRoute> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `address_prefix` attribute.
  TfRef<String> get addressPrefix =>
      TfRef.attribute<String>(this, 'address_prefix');

  /// Reference to `next_hop_in_ip_address` attribute.
  TfRef<String> get nextHopInIpAddress =>
      TfRef.attribute<String>(this, 'next_hop_in_ip_address');

  /// Reference to `next_hop_type` attribute.
  TfRef<String> get nextHopType =>
      TfRef.attribute<String>(this, 'next_hop_type');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `route_table_name` attribute.
  TfRef<String> get routeTableName =>
      TfRef.attribute<String>(this, 'route_table_name');
}
