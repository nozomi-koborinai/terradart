// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_virtual_hub_connection`.
const Set<String> _azurermVirtualHubConnectionSensitive = <String>{};

/// Typed helper for the `routing` block of
/// `azurerm_virtual_hub_connection` (derived from provider schema).
@immutable
final class VirtualHubConnectionRouting {
  const VirtualHubConnectionRouting({
    this.associatedRouteTableId,
    this.inboundRouteMapId,
    this.outboundRouteMapId,
    this.staticVnetLocalRouteOverrideCriteria,
    this.staticVnetPropagateStaticRoutesEnabled,
    this.propagatedRouteTable,
    this.staticVnetRoute,
  });

  final TfArg<String>? associatedRouteTableId;

  final TfArg<String>? inboundRouteMapId;

  final TfArg<String>? outboundRouteMapId;

  final VirtualHubConnectionStaticVnetLocalRouteOverrideCriteria?
  staticVnetLocalRouteOverrideCriteria;

  final TfArg<bool>? staticVnetPropagateStaticRoutesEnabled;

  final VirtualHubConnectionPropagatedRouteTable? propagatedRouteTable;

  final List<VirtualHubConnectionStaticVnetRoute>? staticVnetRoute;

  @internal
  Map<String, Object?> encode() => {
    'associated_route_table_id': ?associatedRouteTableId?.toTfJson(),
    'inbound_route_map_id': ?inboundRouteMapId?.toTfJson(),
    'outbound_route_map_id': ?outboundRouteMapId?.toTfJson(),
    'static_vnet_local_route_override_criteria':
        ?staticVnetLocalRouteOverrideCriteria?.toTfJson(),
    'static_vnet_propagate_static_routes_enabled':
        ?staticVnetPropagateStaticRoutesEnabled?.toTfJson(),
    'propagated_route_table': ?propagatedRouteTable?.encode(),
    if (staticVnetRoute != null)
      'static_vnet_route': [for (final e in staticVnetRoute!) e.encode()],
  };
}

/// `static_vnet_local_route_override_criteria` — derived from the provider schema description.
extension type const VirtualHubConnectionStaticVnetLocalRouteOverrideCriteria._(
  TfArg<String> _
) implements TfArg<String> {
  VirtualHubConnectionStaticVnetLocalRouteOverrideCriteria.variable(String name)
    : this._(TfArg.variable(name));
  VirtualHubConnectionStaticVnetLocalRouteOverrideCriteria.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const VirtualHubConnectionStaticVnetLocalRouteOverrideCriteria.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const contains =
      VirtualHubConnectionStaticVnetLocalRouteOverrideCriteria._(
        TfArgLiteral('Contains'),
      );
  static const equal =
      VirtualHubConnectionStaticVnetLocalRouteOverrideCriteria._(
        TfArgLiteral('Equal'),
      );

  static const List<VirtualHubConnectionStaticVnetLocalRouteOverrideCriteria>
  values = [contains, equal];
}

/// Typed helper for the `routing.propagated_route_table` block of
/// `azurerm_virtual_hub_connection` (derived from provider schema).
@immutable
final class VirtualHubConnectionPropagatedRouteTable {
  const VirtualHubConnectionPropagatedRouteTable({
    this.labels,
    this.routeTableIds,
  });

  final TfArg<List<String>>? labels;

  final TfArg<List<String>>? routeTableIds;

  @internal
  Map<String, Object?> encode() => {
    'labels': ?labels?.toTfJson(),
    'route_table_ids': ?routeTableIds?.toTfJson(),
  };
}

/// Typed helper for the `routing.static_vnet_route` block of
/// `azurerm_virtual_hub_connection` (derived from provider schema).
@immutable
final class VirtualHubConnectionStaticVnetRoute {
  const VirtualHubConnectionStaticVnetRoute({
    this.addressPrefixes,
    this.name,
    this.nextHopIpAddress,
  });

  final TfArg<List<String>>? addressPrefixes;

  final TfArg<String>? name;

  final TfArg<String>? nextHopIpAddress;

  @internal
  Map<String, Object?> encode() => {
    'address_prefixes': ?addressPrefixes?.toTfJson(),
    'name': ?name?.toTfJson(),
    'next_hop_ip_address': ?nextHopIpAddress?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_virtual_hub_connection`.
final class AzurermVirtualHubConnection extends Resource {
  static const String tfType = 'azurerm_virtual_hub_connection';

  AzurermVirtualHubConnection(
    super.localName, {
    TfArg<bool>? internetSecurityEnabled,
    required TfArg<String> name,
    required TfArg<String> remoteVirtualNetworkId,
    required TfArg<String> virtualHubId,
    VirtualHubConnectionRouting? routing,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'internet_security_enabled': ?internetSecurityEnabled,
           'name': name,
           'remote_virtual_network_id': remoteVirtualNetworkId,
           'virtual_hub_id': virtualHubId,
           if (routing != null) 'routing': TfArg.literal(routing.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermVirtualHubConnectionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermVirtualHubConnection>`.
  RefTo<AzurermVirtualHubConnection> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `internet_security_enabled` attribute.
  TfRef<bool> get internetSecurityEnabled =>
      TfRef.attribute<bool>(this, 'internet_security_enabled');

  /// Reference to `remote_virtual_network_id` attribute.
  TfRef<String> get remoteVirtualNetworkId =>
      TfRef.attribute<String>(this, 'remote_virtual_network_id');

  /// Reference to `virtual_hub_id` attribute.
  TfRef<String> get virtualHubId =>
      TfRef.attribute<String>(this, 'virtual_hub_id');
}
