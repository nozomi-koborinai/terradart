// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_databricks_virtual_network_peering`.
const Set<String> _azurermDatabricksVirtualNetworkPeeringSensitive = <String>{};

/// Factory wrapper for `azurerm_databricks_virtual_network_peering`.
final class AzurermDatabricksVirtualNetworkPeering extends Resource {
  static const String tfType = 'azurerm_databricks_virtual_network_peering';

  AzurermDatabricksVirtualNetworkPeering(
    super.localName, {
    TfArg<bool>? allowForwardedTraffic,
    TfArg<bool>? allowGatewayTransit,
    TfArg<bool>? allowVirtualNetworkAccess,
    required TfArg<String> name,
    required TfArg<List<String>> remoteAddressSpacePrefixes,
    required TfArg<String> remoteVirtualNetworkId,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<bool>? useRemoteGateways,
    required TfArg<String> workspaceId,
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
           'name': name,
           'remote_address_space_prefixes': remoteAddressSpacePrefixes,
           'remote_virtual_network_id': remoteVirtualNetworkId,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'use_remote_gateways': ?useRemoteGateways,
           'workspace_id': workspaceId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDatabricksVirtualNetworkPeeringSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDatabricksVirtualNetworkPeering>`.
  RefTo<AzurermDatabricksVirtualNetworkPeering> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `address_space_prefixes` attribute.
  TfRef<List<String>> get addressSpacePrefixes =>
      TfRef.attribute<List<String>>(this, 'address_space_prefixes');

  /// Reference to `virtual_network_id` attribute.
  TfRef<String> get virtualNetworkId =>
      TfRef.attribute<String>(this, 'virtual_network_id');

  /// Reference to `allow_forwarded_traffic` attribute.
  TfRef<bool> get allowForwardedTraffic =>
      TfRef.attribute<bool>(this, 'allow_forwarded_traffic');

  /// Reference to `allow_gateway_transit` attribute.
  TfRef<bool> get allowGatewayTransit =>
      TfRef.attribute<bool>(this, 'allow_gateway_transit');

  /// Reference to `allow_virtual_network_access` attribute.
  TfRef<bool> get allowVirtualNetworkAccess =>
      TfRef.attribute<bool>(this, 'allow_virtual_network_access');

  /// Reference to `remote_address_space_prefixes` attribute.
  TfRef<List<String>> get remoteAddressSpacePrefixes =>
      TfRef.attribute<List<String>>(this, 'remote_address_space_prefixes');

  /// Reference to `remote_virtual_network_id` attribute.
  TfRef<String> get remoteVirtualNetworkId =>
      TfRef.attribute<String>(this, 'remote_virtual_network_id');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `use_remote_gateways` attribute.
  TfRef<bool> get useRemoteGateways =>
      TfRef.attribute<bool>(this, 'use_remote_gateways');

  /// Reference to `workspace_id` attribute.
  TfRef<String> get workspaceId =>
      TfRef.attribute<String>(this, 'workspace_id');
}
