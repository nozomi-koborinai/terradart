// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;
import '../subnet/azurerm_subnet.dart' show AzurermSubnet;

/// Sensitive field paths for `azurerm_route_server`.
const Set<String> _azurermRouteServerSensitive = <String>{};

/// Route Server Hub Routing enum for `hub_routing_preference`.
extension type const RouteServerHubRoutingPreference._(TfArg<String> _)
    implements TfArg<String> {
  RouteServerHubRoutingPreference.variable(String name)
    : this._(TfArg.variable(name));
  RouteServerHubRoutingPreference.expression(String template)
    : this._(TfArg.expression(template));
  const RouteServerHubRoutingPreference.arg(TfArg<String> arg) : this._(arg);

  static const aspath = RouteServerHubRoutingPreference._(
    TfArgLiteral('ASPath'),
  );
  static const expressroute = RouteServerHubRoutingPreference._(
    TfArgLiteral('ExpressRoute'),
  );
  static const vpngateway = RouteServerHubRoutingPreference._(
    TfArgLiteral('VpnGateway'),
  );

  static const List<RouteServerHubRoutingPreference> values = [
    aspath,
    expressroute,
    vpngateway,
  ];
}

/// Route Server enum for `sku`.
extension type const RouteServerSku._(TfArg<String> _)
    implements TfArg<String> {
  RouteServerSku.variable(String name) : this._(TfArg.variable(name));
  RouteServerSku.expression(String template)
    : this._(TfArg.expression(template));
  const RouteServerSku.arg(TfArg<String> arg) : this._(arg);

  static const standard = RouteServerSku._(TfArgLiteral('Standard'));

  static const List<RouteServerSku> values = [standard];
}

/// Factory wrapper for `azurerm_route_server`.
final class AzurermRouteServer extends Resource {
  static const String tfType = 'azurerm_route_server';

  AzurermRouteServer(
    super.localName, {
    TfArg<bool>? branchToBranchTrafficEnabled,
    RouteServerHubRoutingPreference? hubRoutingPreference,
    required TfArg<String> location,
    required TfArg<String> name,
    required TfArg<String> publicIpAddressId,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required RouteServerSku sku,
    required RefTo<AzurermSubnet> subnetId,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'branch_to_branch_traffic_enabled': ?branchToBranchTrafficEnabled,
           'hub_routing_preference': ?hubRoutingPreference,
           'location': location,
           'name': name,
           'public_ip_address_id': publicIpAddressId,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'sku': sku,
           'subnet_id': subnetId.encodeAs('id'),
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermRouteServerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermRouteServer>`.
  RefTo<AzurermRouteServer> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `routing_state` attribute.
  TfRef<String> get routingState =>
      TfRef.attribute<String>(this, 'routing_state');

  /// Reference to `virtual_router_asn` attribute.
  TfRef<num> get virtualRouterAsn =>
      TfRef.attribute<num>(this, 'virtual_router_asn');

  /// Reference to `virtual_router_ips` attribute.
  TfRef<List<String>> get virtualRouterIps =>
      TfRef.attribute<List<String>>(this, 'virtual_router_ips');

  /// Reference to `branch_to_branch_traffic_enabled` attribute.
  TfRef<bool> get branchToBranchTrafficEnabled =>
      TfRef.attribute<bool>(this, 'branch_to_branch_traffic_enabled');

  /// Reference to `hub_routing_preference` attribute.
  TfRef<String> get hubRoutingPreference =>
      TfRef.attribute<String>(this, 'hub_routing_preference');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `public_ip_address_id` attribute.
  TfRef<String> get publicIpAddressId =>
      TfRef.attribute<String>(this, 'public_ip_address_id');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `sku` attribute.
  TfRef<String> get sku => TfRef.attribute<String>(this, 'sku');

  /// Reference to `subnet_id` attribute.
  TfRef<String> get subnetId => TfRef.attribute<String>(this, 'subnet_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
