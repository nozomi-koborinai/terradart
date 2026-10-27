// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../subnet/azurerm_subnet.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_subnet`.
const Set<String> _azurermSubnetSensitive = <String>{};

/// Factory wrapper for `azurerm_subnet`.
final class DataAzurermSubnet extends Data {
  static const String tfType = 'azurerm_subnet';

  DataAzurermSubnet(
    super.localName, {
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> virtualNetworkName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'virtual_network_name': virtualNetworkName,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermSubnetSensitive;

  /// A reference to the `azurerm_subnet` this data source reads, for
  /// arguments typed `RefTo<AzurermSubnet>`.
  RefTo<AzurermSubnet> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `address_prefix` attribute.
  TfRef<String> get addressPrefix =>
      TfRef.attribute<String>(this, 'address_prefix');

  /// Reference to `address_prefixes` attribute.
  TfRef<List<String>> get addressPrefixes =>
      TfRef.attribute<List<String>>(this, 'address_prefixes');

  /// Reference to `default_outbound_access_enabled` attribute.
  TfRef<bool> get defaultOutboundAccessEnabled =>
      TfRef.attribute<bool>(this, 'default_outbound_access_enabled');

  /// Reference to `network_security_group_id` attribute.
  TfRef<String> get networkSecurityGroupId =>
      TfRef.attribute<String>(this, 'network_security_group_id');

  /// Reference to `private_endpoint_network_policies` attribute.
  TfRef<String> get privateEndpointNetworkPolicies =>
      TfRef.attribute<String>(this, 'private_endpoint_network_policies');

  /// Reference to `private_link_service_network_policies_enabled` attribute.
  TfRef<bool> get privateLinkServiceNetworkPoliciesEnabled =>
      TfRef.attribute<bool>(
        this,
        'private_link_service_network_policies_enabled',
      );

  /// Reference to `route_table_id` attribute.
  TfRef<String> get routeTableId =>
      TfRef.attribute<String>(this, 'route_table_id');

  /// Reference to `service_endpoint` attribute.
  TfRef<List<Map<String, Object?>>> get serviceEndpoint =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'service_endpoint');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `virtual_network_name` attribute.
  TfRef<String> get virtualNetworkName =>
      TfRef.attribute<String>(this, 'virtual_network_name');
}
