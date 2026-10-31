// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_network_interface`.
const Set<String> _azurermNetworkInterfaceSensitive = <String>{};

/// Network Interface Auxiliary enum for `auxiliary_mode`.
extension type const NetworkInterfaceAuxiliaryMode._(TfArg<String> _)
    implements TfArg<String> {
  NetworkInterfaceAuxiliaryMode.variable(String name)
    : this._(TfArg.variable(name));
  NetworkInterfaceAuxiliaryMode.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkInterfaceAuxiliaryMode.arg(TfArg<String> arg) : this._(arg);

  static const acceleratedconnections = NetworkInterfaceAuxiliaryMode._(
    TfArgLiteral('AcceleratedConnections'),
  );
  static const floating = NetworkInterfaceAuxiliaryMode._(
    TfArgLiteral('Floating'),
  );
  static const maxconnections = NetworkInterfaceAuxiliaryMode._(
    TfArgLiteral('MaxConnections'),
  );

  static const List<NetworkInterfaceAuxiliaryMode> values = [
    acceleratedconnections,
    floating,
    maxconnections,
  ];
}

/// Network Interface Auxiliary enum for `auxiliary_sku`.
extension type const NetworkInterfaceAuxiliarySku._(TfArg<String> _)
    implements TfArg<String> {
  NetworkInterfaceAuxiliarySku.variable(String name)
    : this._(TfArg.variable(name));
  NetworkInterfaceAuxiliarySku.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkInterfaceAuxiliarySku.arg(TfArg<String> arg) : this._(arg);

  static const a8 = NetworkInterfaceAuxiliarySku._(TfArgLiteral('A8'));
  static const a4 = NetworkInterfaceAuxiliarySku._(TfArgLiteral('A4'));
  static const a1 = NetworkInterfaceAuxiliarySku._(TfArgLiteral('A1'));
  static const a2 = NetworkInterfaceAuxiliarySku._(TfArgLiteral('A2'));

  static const List<NetworkInterfaceAuxiliarySku> values = [a8, a4, a1, a2];
}

/// Typed helper for the `ip_configuration` block of
/// `azurerm_network_interface` (derived from provider schema).
@immutable
final class NetworkInterfaceIpConfiguration {
  const NetworkInterfaceIpConfiguration({
    this.gatewayLoadBalancerFrontendIpConfigurationId,
    required this.name,
    this.primary,
    this.privateIpAddress,
    required this.privateIpAddressAllocation,
    this.privateIpAddressVersion,
    this.publicIpAddressId,
    this.subnetId,
  });

  final TfArg<String>? gatewayLoadBalancerFrontendIpConfigurationId;

  final TfArg<String> name;

  final TfArg<bool>? primary;

  final TfArg<String>? privateIpAddress;

  final NetworkInterfacePrivateIpAddressAllocation privateIpAddressAllocation;

  final NetworkInterfacePrivateIpAddressVersion? privateIpAddressVersion;

  final TfArg<String>? publicIpAddressId;

  final TfArg<String>? subnetId;

  @internal
  Map<String, Object?> encode() => {
    'gateway_load_balancer_frontend_ip_configuration_id':
        ?gatewayLoadBalancerFrontendIpConfigurationId?.toTfJson(),
    'name': name.toTfJson(),
    'primary': ?primary?.toTfJson(),
    'private_ip_address': ?privateIpAddress?.toTfJson(),
    'private_ip_address_allocation': privateIpAddressAllocation.toTfJson(),
    'private_ip_address_version': ?privateIpAddressVersion?.toTfJson(),
    'public_ip_address_id': ?publicIpAddressId?.toTfJson(),
    'subnet_id': ?subnetId?.toTfJson(),
  };
}

/// `private_ip_address_allocation` — derived from the provider schema description.
extension type const NetworkInterfacePrivateIpAddressAllocation._(
  TfArg<String> _
) implements TfArg<String> {
  NetworkInterfacePrivateIpAddressAllocation.variable(String name)
    : this._(TfArg.variable(name));
  NetworkInterfacePrivateIpAddressAllocation.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkInterfacePrivateIpAddressAllocation.arg(TfArg<String> arg)
    : this._(arg);

  static const dynamic = NetworkInterfacePrivateIpAddressAllocation._(
    TfArgLiteral('Dynamic'),
  );
  static const static = NetworkInterfacePrivateIpAddressAllocation._(
    TfArgLiteral('Static'),
  );

  static const List<NetworkInterfacePrivateIpAddressAllocation> values = [
    dynamic,
    static,
  ];
}

/// `private_ip_address_version` — derived from the provider schema description.
extension type const NetworkInterfacePrivateIpAddressVersion._(TfArg<String> _)
    implements TfArg<String> {
  NetworkInterfacePrivateIpAddressVersion.variable(String name)
    : this._(TfArg.variable(name));
  NetworkInterfacePrivateIpAddressVersion.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkInterfacePrivateIpAddressVersion.arg(TfArg<String> arg)
    : this._(arg);

  static const ipv4 = NetworkInterfacePrivateIpAddressVersion._(
    TfArgLiteral('IPv4'),
  );
  static const ipv6 = NetworkInterfacePrivateIpAddressVersion._(
    TfArgLiteral('IPv6'),
  );

  static const List<NetworkInterfacePrivateIpAddressVersion> values = [
    ipv4,
    ipv6,
  ];
}

/// Factory wrapper for `azurerm_network_interface`.
final class AzurermNetworkInterface extends Resource {
  static const String tfType = 'azurerm_network_interface';

  AzurermNetworkInterface(
    super.localName, {
    TfArg<bool>? acceleratedNetworkingEnabled,
    NetworkInterfaceAuxiliaryMode? auxiliaryMode,
    NetworkInterfaceAuxiliarySku? auxiliarySku,
    TfArg<List<String>>? dnsServers,
    TfArg<String>? edgeZone,
    TfArg<String>? internalDnsNameLabel,
    TfArg<bool>? ipForwardingEnabled,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    required List<NetworkInterfaceIpConfiguration> ipConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'accelerated_networking_enabled': ?acceleratedNetworkingEnabled,
           'auxiliary_mode': ?auxiliaryMode,
           'auxiliary_sku': ?auxiliarySku,
           'dns_servers': ?dnsServers,
           'edge_zone': ?edgeZone,
           'internal_dns_name_label': ?internalDnsNameLabel,
           'ip_forwarding_enabled': ?ipForwardingEnabled,
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           'ip_configuration': TfArg.literal([
             for (final e in ipConfiguration) e.encode(),
           ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermNetworkInterfaceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermNetworkInterface>`.
  RefTo<AzurermNetworkInterface> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `applied_dns_servers` attribute.
  TfRef<List<String>> get appliedDnsServers =>
      TfRef.attribute<List<String>>(this, 'applied_dns_servers');

  /// Reference to `internal_domain_name_suffix` attribute.
  TfRef<String> get internalDomainNameSuffix =>
      TfRef.attribute<String>(this, 'internal_domain_name_suffix');

  /// Reference to `mac_address` attribute.
  TfRef<String> get macAddress => TfRef.attribute<String>(this, 'mac_address');

  /// Reference to `private_ip_address` attribute.
  TfRef<String> get privateIpAddress =>
      TfRef.attribute<String>(this, 'private_ip_address');

  /// Reference to `private_ip_addresses` attribute.
  TfRef<List<String>> get privateIpAddresses =>
      TfRef.attribute<List<String>>(this, 'private_ip_addresses');

  /// Reference to `virtual_machine_id` attribute.
  TfRef<String> get virtualMachineId =>
      TfRef.attribute<String>(this, 'virtual_machine_id');

  /// Reference to `accelerated_networking_enabled` attribute.
  TfRef<bool> get acceleratedNetworkingEnabled =>
      TfRef.attribute<bool>(this, 'accelerated_networking_enabled');

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

  /// Reference to `ip_forwarding_enabled` attribute.
  TfRef<bool> get ipForwardingEnabled =>
      TfRef.attribute<bool>(this, 'ip_forwarding_enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
