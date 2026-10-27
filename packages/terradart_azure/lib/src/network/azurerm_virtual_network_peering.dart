// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_virtual_network_peering`.
const Set<String> _azurermVirtualNetworkPeeringSensitive = <String>{};

/// Factory wrapper for `azurerm_virtual_network_peering`.
final class AzurermVirtualNetworkPeering extends Resource {
  static const String tfType = 'azurerm_virtual_network_peering';

  AzurermVirtualNetworkPeering(
    super.localName, {
    TfArg<bool>? allowForwardedTraffic,
    TfArg<bool>? allowGatewayTransit,
    TfArg<bool>? allowVirtualNetworkAccess,
    TfArg<List<String>>? localSubnetNames,
    required TfArg<String> name,
    TfArg<bool>? onlyIpv6PeeringEnabled,
    TfArg<bool>? peerCompleteVirtualNetworksEnabled,
    TfArg<List<String>>? remoteSubnetNames,
    required TfArg<String> remoteVirtualNetworkId,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? triggers,
    TfArg<bool>? useRemoteGateways,
    required TfArg<String> virtualNetworkName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'allow_forwarded_traffic': ?allowForwardedTraffic,
           'allow_gateway_transit': ?allowGatewayTransit,
           'allow_virtual_network_access': ?allowVirtualNetworkAccess,
           'local_subnet_names': ?localSubnetNames,
           'name': name,
           'only_ipv6_peering_enabled': ?onlyIpv6PeeringEnabled,
           'peer_complete_virtual_networks_enabled':
               ?peerCompleteVirtualNetworksEnabled,
           'remote_subnet_names': ?remoteSubnetNames,
           'remote_virtual_network_id': remoteVirtualNetworkId,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'triggers': ?triggers,
           'use_remote_gateways': ?useRemoteGateways,
           'virtual_network_name': virtualNetworkName,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermVirtualNetworkPeeringSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermVirtualNetworkPeering>`.
  RefTo<AzurermVirtualNetworkPeering> get ref => RefTo.of(this);

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

  /// Reference to `local_subnet_names` attribute.
  TfRef<List<String>> get localSubnetNames =>
      TfRef.attribute<List<String>>(this, 'local_subnet_names');

  /// Reference to `only_ipv6_peering_enabled` attribute.
  TfRef<bool> get onlyIpv6PeeringEnabled =>
      TfRef.attribute<bool>(this, 'only_ipv6_peering_enabled');

  /// Reference to `peer_complete_virtual_networks_enabled` attribute.
  TfRef<bool> get peerCompleteVirtualNetworksEnabled =>
      TfRef.attribute<bool>(this, 'peer_complete_virtual_networks_enabled');

  /// Reference to `remote_subnet_names` attribute.
  TfRef<List<String>> get remoteSubnetNames =>
      TfRef.attribute<List<String>>(this, 'remote_subnet_names');

  /// Reference to `remote_virtual_network_id` attribute.
  TfRef<String> get remoteVirtualNetworkId =>
      TfRef.attribute<String>(this, 'remote_virtual_network_id');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `triggers` attribute.
  TfRef<Map<String, String>> get triggers =>
      TfRef.attribute<Map<String, String>>(this, 'triggers');

  /// Reference to `use_remote_gateways` attribute.
  TfRef<bool> get useRemoteGateways =>
      TfRef.attribute<bool>(this, 'use_remote_gateways');

  /// Reference to `virtual_network_name` attribute.
  TfRef<String> get virtualNetworkName =>
      TfRef.attribute<String>(this, 'virtual_network_name');
}
