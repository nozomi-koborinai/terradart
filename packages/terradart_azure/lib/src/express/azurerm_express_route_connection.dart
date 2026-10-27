// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_express_route_connection`.
const Set<String> _azurermExpressRouteConnectionSensitive = <String>{};

/// Typed helper for the `routing` block of
/// `azurerm_express_route_connection` (derived from provider schema).
@immutable
final class ExpressRouteConnectionRouting {
  const ExpressRouteConnectionRouting({
    this.associatedRouteTableId,
    this.inboundRouteMapId,
    this.outboundRouteMapId,
    this.propagatedRouteTable,
  });

  final TfArg<String>? associatedRouteTableId;

  final TfArg<String>? inboundRouteMapId;

  final TfArg<String>? outboundRouteMapId;

  final ExpressRouteConnectionPropagatedRouteTable? propagatedRouteTable;

  @internal
  Map<String, Object?> encode() => {
    'associated_route_table_id': ?associatedRouteTableId?.toTfJson(),
    'inbound_route_map_id': ?inboundRouteMapId?.toTfJson(),
    'outbound_route_map_id': ?outboundRouteMapId?.toTfJson(),
    'propagated_route_table': ?propagatedRouteTable?.encode(),
  };
}

/// Typed helper for the `routing.propagated_route_table` block of
/// `azurerm_express_route_connection` (derived from provider schema).
@immutable
final class ExpressRouteConnectionPropagatedRouteTable {
  const ExpressRouteConnectionPropagatedRouteTable({
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

/// Factory wrapper for `azurerm_express_route_connection`.
final class AzurermExpressRouteConnection extends Resource {
  static const String tfType = 'azurerm_express_route_connection';

  AzurermExpressRouteConnection(
    super.localName, {
    TfArg<String>? authorizationKey,
    required TfArg<String> expressRouteCircuitPeeringId,
    TfArg<bool>? expressRouteGatewayBypassEnabled,
    required TfArg<String> expressRouteGatewayId,
    TfArg<bool>? internetSecurityEnabled,
    required TfArg<String> name,
    TfArg<num>? routingWeight,
    ExpressRouteConnectionRouting? routing,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'authorization_key': ?authorizationKey,
           'express_route_circuit_peering_id': expressRouteCircuitPeeringId,
           'express_route_gateway_bypass_enabled':
               ?expressRouteGatewayBypassEnabled,
           'express_route_gateway_id': expressRouteGatewayId,
           'internet_security_enabled': ?internetSecurityEnabled,
           'name': name,
           'routing_weight': ?routingWeight,
           if (routing != null) 'routing': TfArg.literal(routing.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermExpressRouteConnectionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermExpressRouteConnection>`.
  RefTo<AzurermExpressRouteConnection> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `authorization_key` attribute.
  TfRef<String> get authorizationKey =>
      TfRef.attribute<String>(this, 'authorization_key');

  /// Reference to `express_route_circuit_peering_id` attribute.
  TfRef<String> get expressRouteCircuitPeeringId =>
      TfRef.attribute<String>(this, 'express_route_circuit_peering_id');

  /// Reference to `express_route_gateway_bypass_enabled` attribute.
  TfRef<bool> get expressRouteGatewayBypassEnabled =>
      TfRef.attribute<bool>(this, 'express_route_gateway_bypass_enabled');

  /// Reference to `express_route_gateway_id` attribute.
  TfRef<String> get expressRouteGatewayId =>
      TfRef.attribute<String>(this, 'express_route_gateway_id');

  /// Reference to `internet_security_enabled` attribute.
  TfRef<bool> get internetSecurityEnabled =>
      TfRef.attribute<bool>(this, 'internet_security_enabled');

  /// Reference to `routing_weight` attribute.
  TfRef<num> get routingWeight => TfRef.attribute<num>(this, 'routing_weight');
}
