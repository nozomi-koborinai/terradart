// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_point_to_site_vpn_gateway`.
const Set<String> _azurermPointToSiteVpnGatewaySensitive = <String>{};

/// Typed helper for the `connection_configuration` block of
/// `azurerm_point_to_site_vpn_gateway` (derived from provider schema).
@immutable
final class PointToSiteVpnGatewayConnectionConfiguration {
  const PointToSiteVpnGatewayConnectionConfiguration({
    this.internetSecurityEnabled,
    required this.name,
    this.route,
    required this.vpnClientAddressPool,
  });

  final TfArg<bool>? internetSecurityEnabled;

  final TfArg<String> name;

  final PointToSiteVpnGatewayRoute? route;

  final PointToSiteVpnGatewayVpnClientAddressPool vpnClientAddressPool;

  @internal
  Map<String, Object?> encode() => {
    'internet_security_enabled': ?internetSecurityEnabled?.toTfJson(),
    'name': name.toTfJson(),
    'route': ?route?.encode(),
    'vpn_client_address_pool': vpnClientAddressPool.encode(),
  };
}

/// Typed helper for the `connection_configuration.route` block of
/// `azurerm_point_to_site_vpn_gateway` (derived from provider schema).
@immutable
final class PointToSiteVpnGatewayRoute {
  const PointToSiteVpnGatewayRoute({
    required this.associatedRouteTableId,
    this.inboundRouteMapId,
    this.outboundRouteMapId,
    this.propagatedRouteTable,
  });

  final TfArg<String> associatedRouteTableId;

  final TfArg<String>? inboundRouteMapId;

  final TfArg<String>? outboundRouteMapId;

  final PointToSiteVpnGatewayPropagatedRouteTable? propagatedRouteTable;

  @internal
  Map<String, Object?> encode() => {
    'associated_route_table_id': associatedRouteTableId.toTfJson(),
    'inbound_route_map_id': ?inboundRouteMapId?.toTfJson(),
    'outbound_route_map_id': ?outboundRouteMapId?.toTfJson(),
    'propagated_route_table': ?propagatedRouteTable?.encode(),
  };
}

/// Typed helper for the `connection_configuration.route.propagated_route_table` block of
/// `azurerm_point_to_site_vpn_gateway` (derived from provider schema).
@immutable
final class PointToSiteVpnGatewayPropagatedRouteTable {
  const PointToSiteVpnGatewayPropagatedRouteTable({
    required this.ids,
    this.labels,
  });

  final TfArg<List<String>> ids;

  final TfArg<List<String>>? labels;

  @internal
  Map<String, Object?> encode() => {
    'ids': ids.toTfJson(),
    'labels': ?labels?.toTfJson(),
  };
}

/// Typed helper for the `connection_configuration.vpn_client_address_pool` block of
/// `azurerm_point_to_site_vpn_gateway` (derived from provider schema).
@immutable
final class PointToSiteVpnGatewayVpnClientAddressPool {
  const PointToSiteVpnGatewayVpnClientAddressPool({
    required this.addressPrefixes,
  });

  final TfArg<List<String>> addressPrefixes;

  @internal
  Map<String, Object?> encode() => {
    'address_prefixes': addressPrefixes.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_point_to_site_vpn_gateway`.
final class AzurermPointToSiteVpnGateway extends Resource {
  static const String tfType = 'azurerm_point_to_site_vpn_gateway';

  AzurermPointToSiteVpnGateway(
    super.localName, {
    TfArg<List<String>>? dnsServers,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<bool>? routingPreferenceInternetEnabled,
    required TfArg<num> scaleUnit,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> virtualHubId,
    required TfArg<String> vpnServerConfigurationId,
    required List<PointToSiteVpnGatewayConnectionConfiguration>
    connectionConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dns_servers': ?dnsServers,
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'routing_preference_internet_enabled':
               ?routingPreferenceInternetEnabled,
           'scale_unit': scaleUnit,
           'tags': ?tags,
           'virtual_hub_id': virtualHubId,
           'vpn_server_configuration_id': vpnServerConfigurationId,
           'connection_configuration': TfArg.literal([
             for (final e in connectionConfiguration) e.encode(),
           ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermPointToSiteVpnGatewaySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermPointToSiteVpnGateway>`.
  RefTo<AzurermPointToSiteVpnGateway> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `dns_servers` attribute.
  TfRef<List<String>> get dnsServers =>
      TfRef.attribute<List<String>>(this, 'dns_servers');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `routing_preference_internet_enabled` attribute.
  TfRef<bool> get routingPreferenceInternetEnabled =>
      TfRef.attribute<bool>(this, 'routing_preference_internet_enabled');

  /// Reference to `scale_unit` attribute.
  TfRef<num> get scaleUnit => TfRef.attribute<num>(this, 'scale_unit');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `virtual_hub_id` attribute.
  TfRef<String> get virtualHubId =>
      TfRef.attribute<String>(this, 'virtual_hub_id');

  /// Reference to `vpn_server_configuration_id` attribute.
  TfRef<String> get vpnServerConfigurationId =>
      TfRef.attribute<String>(this, 'vpn_server_configuration_id');
}
