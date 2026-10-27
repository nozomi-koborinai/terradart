// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../network/azurerm_virtual_network_gateway_connection.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_virtual_network_gateway_connection`.
const Set<String> _azurermVirtualNetworkGatewayConnectionSensitive = <String>{};

/// Factory wrapper for `azurerm_virtual_network_gateway_connection`.
final class DataAzurermVirtualNetworkGatewayConnection extends Data {
  static const String tfType = 'azurerm_virtual_network_gateway_connection';

  DataAzurermVirtualNetworkGatewayConnection(
    super.localName, {
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermVirtualNetworkGatewayConnectionSensitive;

  /// A reference to the `azurerm_virtual_network_gateway_connection` this data source reads, for
  /// arguments typed `RefTo<AzurermVirtualNetworkGatewayConnection>`.
  RefTo<AzurermVirtualNetworkGatewayConnection> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `authorization_key` attribute.
  TfRef<String> get authorizationKey =>
      TfRef.attribute<String>(this, 'authorization_key');

  /// Reference to `bgp_enabled` attribute.
  TfRef<bool> get bgpEnabled => TfRef.attribute<bool>(this, 'bgp_enabled');

  /// Reference to `connection_protocol` attribute.
  TfRef<String> get connectionProtocol =>
      TfRef.attribute<String>(this, 'connection_protocol');

  /// Reference to `dpd_timeout_seconds` attribute.
  TfRef<num> get dpdTimeoutSeconds =>
      TfRef.attribute<num>(this, 'dpd_timeout_seconds');

  /// Reference to `egress_bytes_transferred` attribute.
  TfRef<num> get egressBytesTransferred =>
      TfRef.attribute<num>(this, 'egress_bytes_transferred');

  /// Reference to `express_route_circuit_id` attribute.
  TfRef<String> get expressRouteCircuitId =>
      TfRef.attribute<String>(this, 'express_route_circuit_id');

  /// Reference to `express_route_gateway_bypass` attribute.
  TfRef<bool> get expressRouteGatewayBypass =>
      TfRef.attribute<bool>(this, 'express_route_gateway_bypass');

  /// Reference to `ingress_bytes_transferred` attribute.
  TfRef<num> get ingressBytesTransferred =>
      TfRef.attribute<num>(this, 'ingress_bytes_transferred');

  /// Reference to `ipsec_policy` attribute.
  TfRef<List<Map<String, Object?>>> get ipsecPolicy =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'ipsec_policy');

  /// Reference to `local_azure_ip_address_enabled` attribute.
  TfRef<bool> get localAzureIpAddressEnabled =>
      TfRef.attribute<bool>(this, 'local_azure_ip_address_enabled');

  /// Reference to `local_network_gateway_id` attribute.
  TfRef<String> get localNetworkGatewayId =>
      TfRef.attribute<String>(this, 'local_network_gateway_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `peer_virtual_network_gateway_id` attribute.
  TfRef<String> get peerVirtualNetworkGatewayId =>
      TfRef.attribute<String>(this, 'peer_virtual_network_gateway_id');

  /// Reference to `private_link_fast_path_enabled` attribute.
  TfRef<bool> get privateLinkFastPathEnabled =>
      TfRef.attribute<bool>(this, 'private_link_fast_path_enabled');

  /// Reference to `resource_guid` attribute.
  TfRef<String> get resourceGuid =>
      TfRef.attribute<String>(this, 'resource_guid');

  /// Reference to `routing_weight` attribute.
  TfRef<num> get routingWeight => TfRef.attribute<num>(this, 'routing_weight');

  /// Reference to `shared_key` attribute.
  TfRef<String> get sharedKey => TfRef.attribute<String>(this, 'shared_key');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `traffic_selector_policy` attribute.
  TfRef<List<Map<String, Object?>>> get trafficSelectorPolicy =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'traffic_selector_policy',
      );

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `use_policy_based_traffic_selectors` attribute.
  TfRef<bool> get usePolicyBasedTrafficSelectors =>
      TfRef.attribute<bool>(this, 'use_policy_based_traffic_selectors');

  /// Reference to `virtual_network_gateway_id` attribute.
  TfRef<String> get virtualNetworkGatewayId =>
      TfRef.attribute<String>(this, 'virtual_network_gateway_id');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
