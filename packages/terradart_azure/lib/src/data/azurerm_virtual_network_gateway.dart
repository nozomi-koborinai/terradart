// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../network/azurerm_virtual_network_gateway.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_virtual_network_gateway`.
const Set<String> _azurermVirtualNetworkGatewaySensitive = <String>{};

/// Factory wrapper for `azurerm_virtual_network_gateway`.
final class DataAzurermVirtualNetworkGateway extends Data {
  static const String tfType = 'azurerm_virtual_network_gateway';

  DataAzurermVirtualNetworkGateway(
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
  Set<String> get sensitiveFields => _azurermVirtualNetworkGatewaySensitive;

  /// A reference to the `azurerm_virtual_network_gateway` this data source reads, for
  /// arguments typed `RefTo<AzurermVirtualNetworkGateway>`.
  RefTo<AzurermVirtualNetworkGateway> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `active_active` attribute.
  TfRef<bool> get activeActive => TfRef.attribute<bool>(this, 'active_active');

  /// Reference to `bgp_enabled` attribute.
  TfRef<bool> get bgpEnabled => TfRef.attribute<bool>(this, 'bgp_enabled');

  /// Reference to `bgp_settings` attribute.
  TfRef<List<Map<String, Object?>>> get bgpSettings =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'bgp_settings');

  /// Reference to `custom_route` attribute.
  TfRef<List<Map<String, Object?>>> get customRoute =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'custom_route');

  /// Reference to `default_local_network_gateway_id` attribute.
  TfRef<String> get defaultLocalNetworkGatewayId =>
      TfRef.attribute<String>(this, 'default_local_network_gateway_id');

  /// Reference to `generation` attribute.
  TfRef<String> get generation => TfRef.attribute<String>(this, 'generation');

  /// Reference to `ip_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get ipConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'ip_configuration');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `private_ip_address_enabled` attribute.
  TfRef<bool> get privateIpAddressEnabled =>
      TfRef.attribute<bool>(this, 'private_ip_address_enabled');

  /// Reference to `sku` attribute.
  TfRef<String> get sku => TfRef.attribute<String>(this, 'sku');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `vpn_client_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get vpnClientConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'vpn_client_configuration',
      );

  /// Reference to `vpn_type` attribute.
  TfRef<String> get vpnType => TfRef.attribute<String>(this, 'vpn_type');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
