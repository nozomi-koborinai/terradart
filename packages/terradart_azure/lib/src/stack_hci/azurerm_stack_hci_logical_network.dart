// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_stack_hci_logical_network`.
const Set<String> _azurermStackHciLogicalNetworkSensitive = <String>{};

/// Typed helper for the `subnet` block of
/// `azurerm_stack_hci_logical_network` (derived from provider schema).
@immutable
final class StackHciLogicalNetworkSubnet {
  const StackHciLogicalNetworkSubnet({
    this.addressPrefix,
    required this.ipAllocationMethod,
    this.vlanId,
    this.ipPool,
    this.route,
  });

  final TfArg<String>? addressPrefix;

  final StackHciLogicalNetworkIpAllocationMethod ipAllocationMethod;

  final TfArg<num>? vlanId;

  final List<StackHciLogicalNetworkIpPool>? ipPool;

  final StackHciLogicalNetworkRoute? route;

  @internal
  Map<String, Object?> encode() => {
    'address_prefix': ?addressPrefix?.toTfJson(),
    'ip_allocation_method': ipAllocationMethod.toTfJson(),
    'vlan_id': ?vlanId?.toTfJson(),
    if (ipPool != null) 'ip_pool': [for (final e in ipPool!) e.encode()],
    'route': ?route?.encode(),
  };
}

/// `ip_allocation_method` — derived from the provider schema description.
extension type const StackHciLogicalNetworkIpAllocationMethod._(TfArg<String> _)
    implements TfArg<String> {
  StackHciLogicalNetworkIpAllocationMethod.variable(String name)
    : this._(TfArg.variable(name));
  StackHciLogicalNetworkIpAllocationMethod.expression(String template)
    : this._(TfArg.expression(template));
  const StackHciLogicalNetworkIpAllocationMethod.arg(TfArg<String> arg)
    : this._(arg);

  static const dynamic = StackHciLogicalNetworkIpAllocationMethod._(
    TfArgLiteral('Dynamic'),
  );
  static const static = StackHciLogicalNetworkIpAllocationMethod._(
    TfArgLiteral('Static'),
  );

  static const List<StackHciLogicalNetworkIpAllocationMethod> values = [
    dynamic,
    static,
  ];
}

/// Typed helper for the `subnet.ip_pool` block of
/// `azurerm_stack_hci_logical_network` (derived from provider schema).
@immutable
final class StackHciLogicalNetworkIpPool {
  const StackHciLogicalNetworkIpPool({required this.end, required this.start});

  final TfArg<String> end;

  final TfArg<String> start;

  @internal
  Map<String, Object?> encode() => {
    'end': end.toTfJson(),
    'start': start.toTfJson(),
  };
}

/// Typed helper for the `subnet.route` block of
/// `azurerm_stack_hci_logical_network` (derived from provider schema).
@immutable
final class StackHciLogicalNetworkRoute {
  const StackHciLogicalNetworkRoute({
    required this.addressPrefix,
    this.name,
    required this.nextHopIpAddress,
  });

  final TfArg<String> addressPrefix;

  final TfArg<String>? name;

  final TfArg<String> nextHopIpAddress;

  @internal
  Map<String, Object?> encode() => {
    'address_prefix': addressPrefix.toTfJson(),
    'name': ?name?.toTfJson(),
    'next_hop_ip_address': nextHopIpAddress.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_stack_hci_logical_network`.
final class AzurermStackHciLogicalNetwork extends Resource {
  static const String tfType = 'azurerm_stack_hci_logical_network';

  AzurermStackHciLogicalNetwork(
    super.localName, {
    required TfArg<String> customLocationId,
    TfArg<List<String>>? dnsServers,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> virtualSwitchName,
    required StackHciLogicalNetworkSubnet subnet,
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
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           'virtual_switch_name': virtualSwitchName,
           'subnet': TfArg.literal(subnet.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermStackHciLogicalNetworkSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermStackHciLogicalNetwork>`.
  RefTo<AzurermStackHciLogicalNetwork> get ref => RefTo.of(this);

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

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `virtual_switch_name` attribute.
  TfRef<String> get virtualSwitchName =>
      TfRef.attribute<String>(this, 'virtual_switch_name');
}
