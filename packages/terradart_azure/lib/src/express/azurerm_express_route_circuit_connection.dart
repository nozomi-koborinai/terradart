// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_express_route_circuit_connection`.
const Set<String> _azurermExpressRouteCircuitConnectionSensitive = <String>{
  'authorization_key',
};

/// Factory wrapper for `azurerm_express_route_circuit_connection`.
final class AzurermExpressRouteCircuitConnection extends Resource {
  static const String tfType = 'azurerm_express_route_circuit_connection';

  AzurermExpressRouteCircuitConnection(
    super.localName, {
    required TfArg<String> addressPrefixIpv4,
    TfArg<String>? addressPrefixIpv6,
    Sensitive<String>? authorizationKey,
    required TfArg<String> name,
    required TfArg<String> peerPeeringId,
    required TfArg<String> peeringId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'address_prefix_ipv4': addressPrefixIpv4,
           'address_prefix_ipv6': ?addressPrefixIpv6,
           'authorization_key': ?authorizationKey,
           'name': name,
           'peer_peering_id': peerPeeringId,
           'peering_id': peeringId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermExpressRouteCircuitConnectionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermExpressRouteCircuitConnection>`.
  RefTo<AzurermExpressRouteCircuitConnection> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `address_prefix_ipv4` attribute.
  TfRef<String> get addressPrefixIpv4 =>
      TfRef.attribute<String>(this, 'address_prefix_ipv4');

  /// Reference to `address_prefix_ipv6` attribute.
  TfRef<String> get addressPrefixIpv6 =>
      TfRef.attribute<String>(this, 'address_prefix_ipv6');

  /// Reference to `authorization_key` attribute.
  TfRef<String> get authorizationKey =>
      TfRef.attribute<String>(this, 'authorization_key');

  /// Reference to `peer_peering_id` attribute.
  TfRef<String> get peerPeeringId =>
      TfRef.attribute<String>(this, 'peer_peering_id');

  /// Reference to `peering_id` attribute.
  TfRef<String> get peeringId => TfRef.attribute<String>(this, 'peering_id');
}
