// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../network/azurerm_virtual_network_peering.dart';
import '../network/azurerm_virtual_network.dart' show AzurermVirtualNetwork;

/// Sensitive field paths for `azurerm_virtual_network_peering`.
const Set<String> _azurermVirtualNetworkPeeringSensitive = <String>{};

/// Factory wrapper for `azurerm_virtual_network_peering`.
final class DataAzurermVirtualNetworkPeering extends Data {
  static const String tfType = 'azurerm_virtual_network_peering';

  DataAzurermVirtualNetworkPeering(
    super.localName, {
    required TfArg<String> name,
    required RefTo<AzurermVirtualNetwork> virtualNetworkId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'virtual_network_id': virtualNetworkId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermVirtualNetworkPeeringSensitive;

  /// A reference to the `azurerm_virtual_network_peering` this data source reads, for
  /// arguments typed `RefTo<AzurermVirtualNetworkPeering>`.
  RefTo<AzurermVirtualNetworkPeering> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `allow_forwarded_traffic` attribute.
  TfRef<bool> get allowForwardedTraffic =>
      TfRef.attribute<bool>(this, 'allow_forwarded_traffic');

  /// Reference to `allow_gateway_transit` attribute.
  TfRef<bool> get allowGatewayTransit =>
      TfRef.attribute<bool>(this, 'allow_gateway_transit');

  /// Reference to `allow_virtual_network_access` attribute.
  TfRef<bool> get allowVirtualNetworkAccess =>
      TfRef.attribute<bool>(this, 'allow_virtual_network_access');

  /// Reference to `only_ipv6_peering_enabled` attribute.
  TfRef<bool> get onlyIpv6PeeringEnabled =>
      TfRef.attribute<bool>(this, 'only_ipv6_peering_enabled');

  /// Reference to `peer_complete_virtual_networks_enabled` attribute.
  TfRef<bool> get peerCompleteVirtualNetworksEnabled =>
      TfRef.attribute<bool>(this, 'peer_complete_virtual_networks_enabled');

  /// Reference to `remote_virtual_network_id` attribute.
  TfRef<String> get remoteVirtualNetworkId =>
      TfRef.attribute<String>(this, 'remote_virtual_network_id');

  /// Reference to `use_remote_gateways` attribute.
  TfRef<bool> get useRemoteGateways =>
      TfRef.attribute<bool>(this, 'use_remote_gateways');

  /// Reference to `virtual_network_id` attribute.
  TfRef<String> get virtualNetworkId =>
      TfRef.attribute<String>(this, 'virtual_network_id');
}
