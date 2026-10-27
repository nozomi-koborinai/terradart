// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../network/azurerm_virtual_network.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_virtual_network`.
const Set<String> _azurermVirtualNetworkSensitive = <String>{};

/// Factory wrapper for `azurerm_virtual_network`.
final class DataAzurermVirtualNetwork extends Data {
  static const String tfType = 'azurerm_virtual_network';

  DataAzurermVirtualNetwork(
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
  Set<String> get sensitiveFields => _azurermVirtualNetworkSensitive;

  /// A reference to the `azurerm_virtual_network` this data source reads, for
  /// arguments typed `RefTo<AzurermVirtualNetwork>`.
  RefTo<AzurermVirtualNetwork> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `address_space` attribute.
  TfRef<List<String>> get addressSpace =>
      TfRef.attribute<List<String>>(this, 'address_space');

  /// Reference to `dns_servers` attribute.
  TfRef<List<String>> get dnsServers =>
      TfRef.attribute<List<String>>(this, 'dns_servers');

  /// Reference to `guid` attribute.
  TfRef<String> get guid => TfRef.attribute<String>(this, 'guid');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `subnets` attribute.
  TfRef<List<String>> get subnets =>
      TfRef.attribute<List<String>>(this, 'subnets');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `vnet_peerings` attribute.
  TfRef<Map<String, String>> get vnetPeerings =>
      TfRef.attribute<Map<String, String>>(this, 'vnet_peerings');

  /// Reference to `vnet_peerings_addresses` attribute.
  TfRef<List<String>> get vnetPeeringsAddresses =>
      TfRef.attribute<List<String>>(this, 'vnet_peerings_addresses');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
