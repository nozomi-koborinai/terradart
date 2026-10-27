// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_virtual_network`.
const Set<String> _azurermVirtualNetworkSensitive = <String>{};

/// Virtual Network Private Endpoint Vnet enum for `private_endpoint_vnet_policies`.
extension type const VirtualNetworkPrivateEndpointVnetPolicies._(
  TfArg<String> _
) implements TfArg<String> {
  VirtualNetworkPrivateEndpointVnetPolicies.variable(String name)
    : this._(TfArg.variable(name));
  VirtualNetworkPrivateEndpointVnetPolicies.expression(String template)
    : this._(TfArg.expression(template));
  const VirtualNetworkPrivateEndpointVnetPolicies.arg(TfArg<String> arg)
    : this._(arg);

  static const basic = VirtualNetworkPrivateEndpointVnetPolicies._(
    TfArgLiteral('Basic'),
  );
  static const disabled = VirtualNetworkPrivateEndpointVnetPolicies._(
    TfArgLiteral('Disabled'),
  );

  static const List<VirtualNetworkPrivateEndpointVnetPolicies> values = [
    basic,
    disabled,
  ];
}

/// Exactly one of `address_space`, `ip_address_pool` on `azurerm_virtual_network`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.addressSpace(...)`.
sealed class VirtualNetworkAddressSpaceOrIpAddressPool {
  const VirtualNetworkAddressSpaceOrIpAddressPool();

  /// Sets `address_space`.
  const factory VirtualNetworkAddressSpaceOrIpAddressPool.addressSpace(
    TfArg<List<String>> addressSpace,
  ) = VirtualNetworkAddressSpaceOrIpAddressPoolAddressSpace;

  /// Sets `ip_address_pool`.
  const factory VirtualNetworkAddressSpaceOrIpAddressPool.ipAddressPool(
    List<VirtualNetworkIpAddressPool> ipAddressPool,
  ) = VirtualNetworkAddressSpaceOrIpAddressPoolChoice;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [VirtualNetworkAddressSpaceOrIpAddressPool.addressSpace] choice: sets `address_space`.
final class VirtualNetworkAddressSpaceOrIpAddressPoolAddressSpace
    extends VirtualNetworkAddressSpaceOrIpAddressPool {
  const VirtualNetworkAddressSpaceOrIpAddressPoolAddressSpace(
    this.addressSpace,
  );

  final TfArg<List<String>> addressSpace;

  @internal
  @override
  String get blockKey => 'address_space';

  @internal
  @override
  Map<String, Object?> encode() => {'address_space': addressSpace.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'address_space': addressSpace};
}

/// The [VirtualNetworkAddressSpaceOrIpAddressPool.ipAddressPool] choice: sets `ip_address_pool`.
final class VirtualNetworkAddressSpaceOrIpAddressPoolChoice
    extends VirtualNetworkAddressSpaceOrIpAddressPool {
  const VirtualNetworkAddressSpaceOrIpAddressPoolChoice(this.ipAddressPool);

  final List<VirtualNetworkIpAddressPool> ipAddressPool;

  @internal
  @override
  String get blockKey => 'ip_address_pool';

  @internal
  @override
  Map<String, Object?> encode() => {
    'ip_address_pool': [for (final e in ipAddressPool) e.encode()],
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'ip_address_pool': TfArg.literal([
      for (final e in ipAddressPool) e.encode(),
    ]),
  };
}

/// Typed helper for the `ddos_protection_plan` block of
/// `azurerm_virtual_network` (derived from provider schema).
@immutable
final class VirtualNetworkDdosProtectionPlan {
  const VirtualNetworkDdosProtectionPlan({
    required this.enable,
    required this.id,
  });

  final TfArg<bool> enable;

  final TfArg<String> id;

  @internal
  Map<String, Object?> encode() => {
    'enable': enable.toTfJson(),
    'id': id.toTfJson(),
  };
}

/// Typed helper for the `encryption` block of
/// `azurerm_virtual_network` (derived from provider schema).
@immutable
final class VirtualNetworkEncryption {
  const VirtualNetworkEncryption({required this.enforcement});

  final VirtualNetworkEnforcement enforcement;

  @internal
  Map<String, Object?> encode() => {'enforcement': enforcement.toTfJson()};
}

/// `enforcement` — derived from the provider schema description.
extension type const VirtualNetworkEnforcement._(TfArg<String> _)
    implements TfArg<String> {
  VirtualNetworkEnforcement.variable(String name)
    : this._(TfArg.variable(name));
  VirtualNetworkEnforcement.expression(String template)
    : this._(TfArg.expression(template));
  const VirtualNetworkEnforcement.arg(TfArg<String> arg) : this._(arg);

  static const allowunencrypted = VirtualNetworkEnforcement._(
    TfArgLiteral('AllowUnencrypted'),
  );
  static const dropunencrypted = VirtualNetworkEnforcement._(
    TfArgLiteral('DropUnencrypted'),
  );

  static const List<VirtualNetworkEnforcement> values = [
    allowunencrypted,
    dropunencrypted,
  ];
}

/// Typed helper for the `ip_address_pool` block of
/// `azurerm_virtual_network` (derived from provider schema).
@immutable
final class VirtualNetworkIpAddressPool {
  const VirtualNetworkIpAddressPool({
    required this.id,
    required this.numberOfIpAddresses,
  });

  final TfArg<String> id;

  final TfArg<String> numberOfIpAddresses;

  @internal
  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    'number_of_ip_addresses': numberOfIpAddresses.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_virtual_network`.
final class AzurermVirtualNetwork extends Resource {
  static const String tfType = 'azurerm_virtual_network';

  AzurermVirtualNetwork(
    super.localName, {
    required VirtualNetworkAddressSpaceOrIpAddressPool
    addressSpaceOrIpAddressPool,
    TfArg<String>? bgpCommunity,
    TfArg<List<String>>? dnsServers,
    TfArg<String>? edgeZone,
    TfArg<num>? flowTimeoutInMinutes,
    required TfArg<String> location,
    required TfArg<String> name,
    VirtualNetworkPrivateEndpointVnetPolicies? privateEndpointVnetPolicies,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<List<Map<String, Object?>>>? subnet,
    TfArg<Map<String, String>>? tags,
    VirtualNetworkDdosProtectionPlan? ddosProtectionPlan,
    VirtualNetworkEncryption? encryption,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...addressSpaceOrIpAddressPool.argMap,
           'bgp_community': ?bgpCommunity,
           'dns_servers': ?dnsServers,
           'edge_zone': ?edgeZone,
           'flow_timeout_in_minutes': ?flowTimeoutInMinutes,
           'location': location,
           'name': name,
           'private_endpoint_vnet_policies': ?privateEndpointVnetPolicies,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'subnet': ?subnet,
           'tags': ?tags,
           if (ddosProtectionPlan != null)
             'ddos_protection_plan': TfArg.literal(ddosProtectionPlan.encode()),
           if (encryption != null)
             'encryption': TfArg.literal(encryption.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermVirtualNetworkSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermVirtualNetwork>`.
  RefTo<AzurermVirtualNetwork> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `guid` attribute.
  TfRef<String> get guid => TfRef.attribute<String>(this, 'guid');

  /// Reference to `address_space` attribute.
  TfRef<List<String>> get addressSpace =>
      TfRef.attribute<List<String>>(this, 'address_space');

  /// Reference to `bgp_community` attribute.
  TfRef<String> get bgpCommunity =>
      TfRef.attribute<String>(this, 'bgp_community');

  /// Reference to `dns_servers` attribute.
  TfRef<List<String>> get dnsServers =>
      TfRef.attribute<List<String>>(this, 'dns_servers');

  /// Reference to `edge_zone` attribute.
  TfRef<String> get edgeZone => TfRef.attribute<String>(this, 'edge_zone');

  /// Reference to `flow_timeout_in_minutes` attribute.
  TfRef<num> get flowTimeoutInMinutes =>
      TfRef.attribute<num>(this, 'flow_timeout_in_minutes');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `private_endpoint_vnet_policies` attribute.
  TfRef<String> get privateEndpointVnetPolicies =>
      TfRef.attribute<String>(this, 'private_endpoint_vnet_policies');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `subnet` attribute.
  TfRef<List<Map<String, Object?>>> get subnet =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'subnet');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
