// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../network/azurerm_network_interface.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_network_interface`.
const Set<String> _azurermNetworkInterfaceSensitive = <String>{};

/// Factory wrapper for `azurerm_network_interface`.
final class DataAzurermNetworkInterface extends Data {
  static const String tfType = 'azurerm_network_interface';

  DataAzurermNetworkInterface(
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
  Set<String> get sensitiveFields => _azurermNetworkInterfaceSensitive;

  /// A reference to the `azurerm_network_interface` this data source reads, for
  /// arguments typed `RefTo<AzurermNetworkInterface>`.
  RefTo<AzurermNetworkInterface> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `accelerated_networking_enabled` attribute.
  TfRef<bool> get acceleratedNetworkingEnabled =>
      TfRef.attribute<bool>(this, 'accelerated_networking_enabled');

  /// Reference to `applied_dns_servers` attribute.
  TfRef<List<String>> get appliedDnsServers =>
      TfRef.attribute<List<String>>(this, 'applied_dns_servers');

  /// Reference to `auxiliary_mode` attribute.
  TfRef<String> get auxiliaryMode =>
      TfRef.attribute<String>(this, 'auxiliary_mode');

  /// Reference to `auxiliary_sku` attribute.
  TfRef<String> get auxiliarySku =>
      TfRef.attribute<String>(this, 'auxiliary_sku');

  /// Reference to `dns_servers` attribute.
  TfRef<List<String>> get dnsServers =>
      TfRef.attribute<List<String>>(this, 'dns_servers');

  /// Reference to `edge_zone` attribute.
  TfRef<String> get edgeZone => TfRef.attribute<String>(this, 'edge_zone');

  /// Reference to `internal_dns_name_label` attribute.
  TfRef<String> get internalDnsNameLabel =>
      TfRef.attribute<String>(this, 'internal_dns_name_label');

  /// Reference to `internal_domain_name_suffix` attribute.
  TfRef<String> get internalDomainNameSuffix =>
      TfRef.attribute<String>(this, 'internal_domain_name_suffix');

  /// Reference to `ip_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get ipConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'ip_configuration');

  /// Reference to `ip_forwarding_enabled` attribute.
  TfRef<bool> get ipForwardingEnabled =>
      TfRef.attribute<bool>(this, 'ip_forwarding_enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `mac_address` attribute.
  TfRef<String> get macAddress => TfRef.attribute<String>(this, 'mac_address');

  /// Reference to `network_security_group_id` attribute.
  TfRef<String> get networkSecurityGroupId =>
      TfRef.attribute<String>(this, 'network_security_group_id');

  /// Reference to `private_ip_address` attribute.
  TfRef<String> get privateIpAddress =>
      TfRef.attribute<String>(this, 'private_ip_address');

  /// Reference to `private_ip_addresses` attribute.
  TfRef<List<String>> get privateIpAddresses =>
      TfRef.attribute<List<String>>(this, 'private_ip_addresses');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `virtual_machine_id` attribute.
  TfRef<String> get virtualMachineId =>
      TfRef.attribute<String>(this, 'virtual_machine_id');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
