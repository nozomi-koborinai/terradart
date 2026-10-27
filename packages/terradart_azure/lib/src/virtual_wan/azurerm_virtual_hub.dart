// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_virtual_hub`.
const Set<String> _azurermVirtualHubSensitive = <String>{};

/// Virtual Hub Routing enum for `hub_routing_preference`.
extension type const VirtualHubRoutingPreference._(TfArg<String> _)
    implements TfArg<String> {
  VirtualHubRoutingPreference.variable(String name)
    : this._(TfArg.variable(name));
  VirtualHubRoutingPreference.expression(String template)
    : this._(TfArg.expression(template));
  const VirtualHubRoutingPreference.arg(TfArg<String> arg) : this._(arg);

  static const aspath = VirtualHubRoutingPreference._(TfArgLiteral('ASPath'));
  static const expressroute = VirtualHubRoutingPreference._(
    TfArgLiteral('ExpressRoute'),
  );
  static const vpngateway = VirtualHubRoutingPreference._(
    TfArgLiteral('VpnGateway'),
  );

  static const List<VirtualHubRoutingPreference> values = [
    aspath,
    expressroute,
    vpngateway,
  ];
}

/// Virtual Hub enum for `sku`.
extension type const VirtualHubSku._(TfArg<String> _) implements TfArg<String> {
  VirtualHubSku.variable(String name) : this._(TfArg.variable(name));
  VirtualHubSku.expression(String template)
    : this._(TfArg.expression(template));
  const VirtualHubSku.arg(TfArg<String> arg) : this._(arg);

  static const basic = VirtualHubSku._(TfArgLiteral('Basic'));
  static const standard = VirtualHubSku._(TfArgLiteral('Standard'));

  static const List<VirtualHubSku> values = [basic, standard];
}

/// Typed helper for the `route` block of
/// `azurerm_virtual_hub` (derived from provider schema).
@immutable
final class VirtualHubRoute {
  const VirtualHubRoute({
    required this.addressPrefixes,
    required this.nextHopIpAddress,
  });

  final TfArg<List<String>> addressPrefixes;

  final TfArg<String> nextHopIpAddress;

  @internal
  Map<String, Object?> encode() => {
    'address_prefixes': addressPrefixes.toTfJson(),
    'next_hop_ip_address': nextHopIpAddress.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_virtual_hub`.
final class AzurermVirtualHub extends Resource {
  static const String tfType = 'azurerm_virtual_hub';

  AzurermVirtualHub(
    super.localName, {
    TfArg<String>? addressPrefix,
    TfArg<bool>? branchToBranchTrafficEnabled,
    VirtualHubRoutingPreference? hubRoutingPreference,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    VirtualHubSku? sku,
    TfArg<Map<String, String>>? tags,
    TfArg<num>? virtualRouterAutoScaleMinCapacity,
    TfArg<String>? virtualWanId,
    List<VirtualHubRoute>? route,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'address_prefix': ?addressPrefix,
           'branch_to_branch_traffic_enabled': ?branchToBranchTrafficEnabled,
           'hub_routing_preference': ?hubRoutingPreference,
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'sku': ?sku,
           'tags': ?tags,
           'virtual_router_auto_scale_min_capacity':
               ?virtualRouterAutoScaleMinCapacity,
           'virtual_wan_id': ?virtualWanId,
           if (route != null)
             'route': TfArg.literal([for (final e in route) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermVirtualHubSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermVirtualHub>`.
  RefTo<AzurermVirtualHub> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `default_route_table_id` attribute.
  TfRef<String> get defaultRouteTableId =>
      TfRef.attribute<String>(this, 'default_route_table_id');

  /// Reference to `virtual_router_asn` attribute.
  TfRef<num> get virtualRouterAsn =>
      TfRef.attribute<num>(this, 'virtual_router_asn');

  /// Reference to `virtual_router_ips` attribute.
  TfRef<List<String>> get virtualRouterIps =>
      TfRef.attribute<List<String>>(this, 'virtual_router_ips');

  /// Reference to `address_prefix` attribute.
  TfRef<String> get addressPrefix =>
      TfRef.attribute<String>(this, 'address_prefix');

  /// Reference to `branch_to_branch_traffic_enabled` attribute.
  TfRef<bool> get branchToBranchTrafficEnabled =>
      TfRef.attribute<bool>(this, 'branch_to_branch_traffic_enabled');

  /// Reference to `hub_routing_preference` attribute.
  TfRef<String> get hubRoutingPreference =>
      TfRef.attribute<String>(this, 'hub_routing_preference');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `sku` attribute.
  TfRef<String> get sku => TfRef.attribute<String>(this, 'sku');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `virtual_router_auto_scale_min_capacity` attribute.
  TfRef<num> get virtualRouterAutoScaleMinCapacity =>
      TfRef.attribute<num>(this, 'virtual_router_auto_scale_min_capacity');

  /// Reference to `virtual_wan_id` attribute.
  TfRef<String> get virtualWanId =>
      TfRef.attribute<String>(this, 'virtual_wan_id');
}
