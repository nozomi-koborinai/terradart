// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_stack_hci_network_interface`.
const Set<String> _azurermStackHciNetworkInterfaceSensitive = <String>{};

/// Typed helper for the `ip_configuration` block of
/// `azurerm_stack_hci_network_interface` (derived from provider schema).
@immutable
final class StackHciNetworkInterfaceIpConfiguration {
  const StackHciNetworkInterfaceIpConfiguration({
    this.privateIpAddress,
    required this.subnetId,
  });

  final TfArg<String>? privateIpAddress;

  final TfArg<String> subnetId;

  @internal
  Map<String, Object?> encode() => {
    'private_ip_address': ?privateIpAddress?.toTfJson(),
    'subnet_id': subnetId.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_stack_hci_network_interface`.
final class AzurermStackHciNetworkInterface extends Resource {
  static const String tfType = 'azurerm_stack_hci_network_interface';

  AzurermStackHciNetworkInterface(
    super.localName, {
    required TfArg<String> customLocationId,
    TfArg<List<String>>? dnsServers,
    required TfArg<String> location,
    TfArg<String>? macAddress,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    required StackHciNetworkInterfaceIpConfiguration ipConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'custom_location_id': customLocationId,
           'dns_servers': ?dnsServers,
           'location': location,
           'mac_address': ?macAddress,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           'ip_configuration': TfArg.literal(ipConfiguration.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermStackHciNetworkInterfaceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermStackHciNetworkInterface>`.
  RefTo<AzurermStackHciNetworkInterface> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `custom_location_id` attribute.
  TfRef<String> get customLocationId =>
      TfRef.attribute<String>(this, 'custom_location_id');

  /// Reference to `dns_servers` attribute.
  TfRef<List<String>> get dnsServers =>
      TfRef.attribute<List<String>>(this, 'dns_servers');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `mac_address` attribute.
  TfRef<String> get macAddress => TfRef.attribute<String>(this, 'mac_address');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
