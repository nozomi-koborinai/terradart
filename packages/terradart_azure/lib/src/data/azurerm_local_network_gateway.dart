// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../network/azurerm_local_network_gateway.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_local_network_gateway`.
const Set<String> _azurermLocalNetworkGatewaySensitive = <String>{};

/// Factory wrapper for `azurerm_local_network_gateway`.
final class DataAzurermLocalNetworkGateway extends Data {
  static const String tfType = 'azurerm_local_network_gateway';

  DataAzurermLocalNetworkGateway(
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
  Set<String> get sensitiveFields => _azurermLocalNetworkGatewaySensitive;

  /// A reference to the `azurerm_local_network_gateway` this data source reads, for
  /// arguments typed `RefTo<AzurermLocalNetworkGateway>`.
  RefTo<AzurermLocalNetworkGateway> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `address_space` attribute.
  TfRef<List<String>> get addressSpace =>
      TfRef.attribute<List<String>>(this, 'address_space');

  /// Reference to `bgp_settings` attribute.
  TfRef<List<Map<String, Object?>>> get bgpSettings =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'bgp_settings');

  /// Reference to `gateway_address` attribute.
  TfRef<String> get gatewayAddress =>
      TfRef.attribute<String>(this, 'gateway_address');

  /// Reference to `gateway_fqdn` attribute.
  TfRef<String> get gatewayFqdn =>
      TfRef.attribute<String>(this, 'gateway_fqdn');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
