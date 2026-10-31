// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_virtual_network_gateway_connection`.
const Set<String> _azurermVirtualNetworkGatewayConnectionSensitive = <String>{
  'authorization_key',
  'shared_key',
};

/// Virtual Network Gateway Connection enum for `connection_mode`.
extension type const VirtualNetworkGatewayConnectionMode._(TfArg<String> _)
    implements TfArg<String> {
  VirtualNetworkGatewayConnectionMode.variable(String name)
    : this._(TfArg.variable(name));
  VirtualNetworkGatewayConnectionMode.expression(String template)
    : this._(TfArg.expression(template));
  const VirtualNetworkGatewayConnectionMode.arg(TfArg<String> arg)
    : this._(arg);

  static const defaultCase = VirtualNetworkGatewayConnectionMode._(
    TfArgLiteral('Default'),
  );
  static const initiatoronly = VirtualNetworkGatewayConnectionMode._(
    TfArgLiteral('InitiatorOnly'),
  );
  static const responderonly = VirtualNetworkGatewayConnectionMode._(
    TfArgLiteral('ResponderOnly'),
  );

  static const List<VirtualNetworkGatewayConnectionMode> values = [
    defaultCase,
    initiatoronly,
    responderonly,
  ];
}

/// Virtual Network Gateway Connection enum for `connection_protocol`.
extension type const VirtualNetworkGatewayConnectionProtocol._(TfArg<String> _)
    implements TfArg<String> {
  VirtualNetworkGatewayConnectionProtocol.variable(String name)
    : this._(TfArg.variable(name));
  VirtualNetworkGatewayConnectionProtocol.expression(String template)
    : this._(TfArg.expression(template));
  const VirtualNetworkGatewayConnectionProtocol.arg(TfArg<String> arg)
    : this._(arg);

  static const ikev1 = VirtualNetworkGatewayConnectionProtocol._(
    TfArgLiteral('IKEv1'),
  );
  static const ikev2 = VirtualNetworkGatewayConnectionProtocol._(
    TfArgLiteral('IKEv2'),
  );

  static const List<VirtualNetworkGatewayConnectionProtocol> values = [
    ikev1,
    ikev2,
  ];
}

/// Virtual Network Gateway Connection enum for `type`.
extension type const VirtualNetworkGatewayConnectionType._(TfArg<String> _)
    implements TfArg<String> {
  VirtualNetworkGatewayConnectionType.variable(String name)
    : this._(TfArg.variable(name));
  VirtualNetworkGatewayConnectionType.expression(String template)
    : this._(TfArg.expression(template));
  const VirtualNetworkGatewayConnectionType.arg(TfArg<String> arg)
    : this._(arg);

  static const expressroute = VirtualNetworkGatewayConnectionType._(
    TfArgLiteral('ExpressRoute'),
  );
  static const ipsec = VirtualNetworkGatewayConnectionType._(
    TfArgLiteral('IPsec'),
  );
  static const vnet2vnet = VirtualNetworkGatewayConnectionType._(
    TfArgLiteral('Vnet2Vnet'),
  );

  static const List<VirtualNetworkGatewayConnectionType> values = [
    expressroute,
    ipsec,
    vnet2vnet,
  ];
}

/// Typed helper for the `custom_bgp_addresses` block of
/// `azurerm_virtual_network_gateway_connection` (derived from provider schema).
@immutable
final class VirtualNetworkGatewayConnectionCustomBgpAddresses {
  const VirtualNetworkGatewayConnectionCustomBgpAddresses({
    required this.primary,
    this.secondary,
  });

  final TfArg<String> primary;

  final TfArg<String>? secondary;

  @internal
  Map<String, Object?> encode() => {
    'primary': primary.toTfJson(),
    'secondary': ?secondary?.toTfJson(),
  };
}

/// Typed helper for the `ipsec_policy` block of
/// `azurerm_virtual_network_gateway_connection` (derived from provider schema).
@immutable
final class VirtualNetworkGatewayConnectionIpsecPolicy {
  const VirtualNetworkGatewayConnectionIpsecPolicy({
    required this.dhGroup,
    required this.ikeEncryption,
    required this.ikeIntegrity,
    required this.ipsecEncryption,
    required this.ipsecIntegrity,
    required this.pfsGroup,
    this.saDatasize,
    this.saLifetime,
  });

  final VirtualNetworkGatewayConnectionDhGroup dhGroup;

  final VirtualNetworkGatewayConnectionIkeEncryption ikeEncryption;

  final VirtualNetworkGatewayConnectionIkeIntegrity ikeIntegrity;

  final VirtualNetworkGatewayConnectionIpsecEncryption ipsecEncryption;

  final VirtualNetworkGatewayConnectionIpsecIntegrity ipsecIntegrity;

  final VirtualNetworkGatewayConnectionPfsGroup pfsGroup;

  final TfArg<num>? saDatasize;

  final TfArg<num>? saLifetime;

  @internal
  Map<String, Object?> encode() => {
    'dh_group': dhGroup.toTfJson(),
    'ike_encryption': ikeEncryption.toTfJson(),
    'ike_integrity': ikeIntegrity.toTfJson(),
    'ipsec_encryption': ipsecEncryption.toTfJson(),
    'ipsec_integrity': ipsecIntegrity.toTfJson(),
    'pfs_group': pfsGroup.toTfJson(),
    'sa_datasize': ?saDatasize?.toTfJson(),
    'sa_lifetime': ?saLifetime?.toTfJson(),
  };
}

/// `dh_group` — derived from the provider schema description.
extension type const VirtualNetworkGatewayConnectionDhGroup._(TfArg<String> _)
    implements TfArg<String> {
  VirtualNetworkGatewayConnectionDhGroup.variable(String name)
    : this._(TfArg.variable(name));
  VirtualNetworkGatewayConnectionDhGroup.expression(String template)
    : this._(TfArg.expression(template));
  const VirtualNetworkGatewayConnectionDhGroup.arg(TfArg<String> arg)
    : this._(arg);

  static const dhgroup1 = VirtualNetworkGatewayConnectionDhGroup._(
    TfArgLiteral('DHGroup1'),
  );
  static const dhgroup14 = VirtualNetworkGatewayConnectionDhGroup._(
    TfArgLiteral('DHGroup14'),
  );
  static const dhgroup2 = VirtualNetworkGatewayConnectionDhGroup._(
    TfArgLiteral('DHGroup2'),
  );
  static const dhgroup24 = VirtualNetworkGatewayConnectionDhGroup._(
    TfArgLiteral('DHGroup24'),
  );
  static const dhgroup2048 = VirtualNetworkGatewayConnectionDhGroup._(
    TfArgLiteral('DHGroup2048'),
  );
  static const ecp384 = VirtualNetworkGatewayConnectionDhGroup._(
    TfArgLiteral('ECP384'),
  );
  static const ecp256 = VirtualNetworkGatewayConnectionDhGroup._(
    TfArgLiteral('ECP256'),
  );
  static const none = VirtualNetworkGatewayConnectionDhGroup._(
    TfArgLiteral('None'),
  );

  static const List<VirtualNetworkGatewayConnectionDhGroup> values = [
    dhgroup1,
    dhgroup14,
    dhgroup2,
    dhgroup24,
    dhgroup2048,
    ecp384,
    ecp256,
    none,
  ];
}

/// `ike_encryption` — derived from the provider schema description.
extension type const VirtualNetworkGatewayConnectionIkeEncryption._(
  TfArg<String> _
) implements TfArg<String> {
  VirtualNetworkGatewayConnectionIkeEncryption.variable(String name)
    : this._(TfArg.variable(name));
  VirtualNetworkGatewayConnectionIkeEncryption.expression(String template)
    : this._(TfArg.expression(template));
  const VirtualNetworkGatewayConnectionIkeEncryption.arg(TfArg<String> arg)
    : this._(arg);

  static const aes192 = VirtualNetworkGatewayConnectionIkeEncryption._(
    TfArgLiteral('AES192'),
  );
  static const aes128 = VirtualNetworkGatewayConnectionIkeEncryption._(
    TfArgLiteral('AES128'),
  );
  static const aes256 = VirtualNetworkGatewayConnectionIkeEncryption._(
    TfArgLiteral('AES256'),
  );
  static const des = VirtualNetworkGatewayConnectionIkeEncryption._(
    TfArgLiteral('DES'),
  );
  static const des3 = VirtualNetworkGatewayConnectionIkeEncryption._(
    TfArgLiteral('DES3'),
  );
  static const gcmaes128 = VirtualNetworkGatewayConnectionIkeEncryption._(
    TfArgLiteral('GCMAES128'),
  );
  static const gcmaes256 = VirtualNetworkGatewayConnectionIkeEncryption._(
    TfArgLiteral('GCMAES256'),
  );

  static const List<VirtualNetworkGatewayConnectionIkeEncryption> values = [
    aes192,
    aes128,
    aes256,
    des,
    des3,
    gcmaes128,
    gcmaes256,
  ];
}

/// `ike_integrity` — derived from the provider schema description.
extension type const VirtualNetworkGatewayConnectionIkeIntegrity._(
  TfArg<String> _
) implements TfArg<String> {
  VirtualNetworkGatewayConnectionIkeIntegrity.variable(String name)
    : this._(TfArg.variable(name));
  VirtualNetworkGatewayConnectionIkeIntegrity.expression(String template)
    : this._(TfArg.expression(template));
  const VirtualNetworkGatewayConnectionIkeIntegrity.arg(TfArg<String> arg)
    : this._(arg);

  static const gcmaes128 = VirtualNetworkGatewayConnectionIkeIntegrity._(
    TfArgLiteral('GCMAES128'),
  );
  static const gcmaes256 = VirtualNetworkGatewayConnectionIkeIntegrity._(
    TfArgLiteral('GCMAES256'),
  );
  static const md5 = VirtualNetworkGatewayConnectionIkeIntegrity._(
    TfArgLiteral('MD5'),
  );
  static const sha1 = VirtualNetworkGatewayConnectionIkeIntegrity._(
    TfArgLiteral('SHA1'),
  );
  static const sha384 = VirtualNetworkGatewayConnectionIkeIntegrity._(
    TfArgLiteral('SHA384'),
  );
  static const sha256 = VirtualNetworkGatewayConnectionIkeIntegrity._(
    TfArgLiteral('SHA256'),
  );

  static const List<VirtualNetworkGatewayConnectionIkeIntegrity> values = [
    gcmaes128,
    gcmaes256,
    md5,
    sha1,
    sha384,
    sha256,
  ];
}

/// `ipsec_encryption` — derived from the provider schema description.
extension type const VirtualNetworkGatewayConnectionIpsecEncryption._(
  TfArg<String> _
) implements TfArg<String> {
  VirtualNetworkGatewayConnectionIpsecEncryption.variable(String name)
    : this._(TfArg.variable(name));
  VirtualNetworkGatewayConnectionIpsecEncryption.expression(String template)
    : this._(TfArg.expression(template));
  const VirtualNetworkGatewayConnectionIpsecEncryption.arg(TfArg<String> arg)
    : this._(arg);

  static const aes192 = VirtualNetworkGatewayConnectionIpsecEncryption._(
    TfArgLiteral('AES192'),
  );
  static const aes128 = VirtualNetworkGatewayConnectionIpsecEncryption._(
    TfArgLiteral('AES128'),
  );
  static const aes256 = VirtualNetworkGatewayConnectionIpsecEncryption._(
    TfArgLiteral('AES256'),
  );
  static const des = VirtualNetworkGatewayConnectionIpsecEncryption._(
    TfArgLiteral('DES'),
  );
  static const des3 = VirtualNetworkGatewayConnectionIpsecEncryption._(
    TfArgLiteral('DES3'),
  );
  static const gcmaes192 = VirtualNetworkGatewayConnectionIpsecEncryption._(
    TfArgLiteral('GCMAES192'),
  );
  static const gcmaes128 = VirtualNetworkGatewayConnectionIpsecEncryption._(
    TfArgLiteral('GCMAES128'),
  );
  static const gcmaes256 = VirtualNetworkGatewayConnectionIpsecEncryption._(
    TfArgLiteral('GCMAES256'),
  );
  static const none = VirtualNetworkGatewayConnectionIpsecEncryption._(
    TfArgLiteral('None'),
  );

  static const List<VirtualNetworkGatewayConnectionIpsecEncryption> values = [
    aes192,
    aes128,
    aes256,
    des,
    des3,
    gcmaes192,
    gcmaes128,
    gcmaes256,
    none,
  ];
}

/// `ipsec_integrity` — derived from the provider schema description.
extension type const VirtualNetworkGatewayConnectionIpsecIntegrity._(
  TfArg<String> _
) implements TfArg<String> {
  VirtualNetworkGatewayConnectionIpsecIntegrity.variable(String name)
    : this._(TfArg.variable(name));
  VirtualNetworkGatewayConnectionIpsecIntegrity.expression(String template)
    : this._(TfArg.expression(template));
  const VirtualNetworkGatewayConnectionIpsecIntegrity.arg(TfArg<String> arg)
    : this._(arg);

  static const gcmaes192 = VirtualNetworkGatewayConnectionIpsecIntegrity._(
    TfArgLiteral('GCMAES192'),
  );
  static const gcmaes128 = VirtualNetworkGatewayConnectionIpsecIntegrity._(
    TfArgLiteral('GCMAES128'),
  );
  static const gcmaes256 = VirtualNetworkGatewayConnectionIpsecIntegrity._(
    TfArgLiteral('GCMAES256'),
  );
  static const md5 = VirtualNetworkGatewayConnectionIpsecIntegrity._(
    TfArgLiteral('MD5'),
  );
  static const sha1 = VirtualNetworkGatewayConnectionIpsecIntegrity._(
    TfArgLiteral('SHA1'),
  );
  static const sha256 = VirtualNetworkGatewayConnectionIpsecIntegrity._(
    TfArgLiteral('SHA256'),
  );

  static const List<VirtualNetworkGatewayConnectionIpsecIntegrity> values = [
    gcmaes192,
    gcmaes128,
    gcmaes256,
    md5,
    sha1,
    sha256,
  ];
}

/// `pfs_group` — derived from the provider schema description.
extension type const VirtualNetworkGatewayConnectionPfsGroup._(TfArg<String> _)
    implements TfArg<String> {
  VirtualNetworkGatewayConnectionPfsGroup.variable(String name)
    : this._(TfArg.variable(name));
  VirtualNetworkGatewayConnectionPfsGroup.expression(String template)
    : this._(TfArg.expression(template));
  const VirtualNetworkGatewayConnectionPfsGroup.arg(TfArg<String> arg)
    : this._(arg);

  static const ecp384 = VirtualNetworkGatewayConnectionPfsGroup._(
    TfArgLiteral('ECP384'),
  );
  static const ecp256 = VirtualNetworkGatewayConnectionPfsGroup._(
    TfArgLiteral('ECP256'),
  );
  static const none = VirtualNetworkGatewayConnectionPfsGroup._(
    TfArgLiteral('None'),
  );
  static const pfsmm = VirtualNetworkGatewayConnectionPfsGroup._(
    TfArgLiteral('PFSMM'),
  );
  static const pfs1 = VirtualNetworkGatewayConnectionPfsGroup._(
    TfArgLiteral('PFS1'),
  );
  static const pfs14 = VirtualNetworkGatewayConnectionPfsGroup._(
    TfArgLiteral('PFS14'),
  );
  static const pfs2 = VirtualNetworkGatewayConnectionPfsGroup._(
    TfArgLiteral('PFS2'),
  );
  static const pfs24 = VirtualNetworkGatewayConnectionPfsGroup._(
    TfArgLiteral('PFS24'),
  );
  static const pfs2048 = VirtualNetworkGatewayConnectionPfsGroup._(
    TfArgLiteral('PFS2048'),
  );

  static const List<VirtualNetworkGatewayConnectionPfsGroup> values = [
    ecp384,
    ecp256,
    none,
    pfsmm,
    pfs1,
    pfs14,
    pfs2,
    pfs24,
    pfs2048,
  ];
}

/// Typed helper for the `traffic_selector_policy` block of
/// `azurerm_virtual_network_gateway_connection` (derived from provider schema).
@immutable
final class VirtualNetworkGatewayConnectionTrafficSelectorPolicy {
  const VirtualNetworkGatewayConnectionTrafficSelectorPolicy({
    required this.localAddressCidrs,
    required this.remoteAddressCidrs,
  });

  final TfArg<List<String>> localAddressCidrs;

  final TfArg<List<String>> remoteAddressCidrs;

  @internal
  Map<String, Object?> encode() => {
    'local_address_cidrs': localAddressCidrs.toTfJson(),
    'remote_address_cidrs': remoteAddressCidrs.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_virtual_network_gateway_connection`.
final class AzurermVirtualNetworkGatewayConnection extends Resource {
  static const String tfType = 'azurerm_virtual_network_gateway_connection';

  AzurermVirtualNetworkGatewayConnection(
    super.localName, {
    Sensitive<String>? authorizationKey,
    TfArg<bool>? bgpEnabled,
    VirtualNetworkGatewayConnectionMode? connectionMode,
    VirtualNetworkGatewayConnectionProtocol? connectionProtocol,
    TfArg<num>? dpdTimeoutSeconds,
    TfArg<List<String>>? egressNatRuleIds,
    TfArg<String>? expressRouteCircuitId,
    TfArg<bool>? expressRouteGatewayBypass,
    TfArg<List<String>>? ingressNatRuleIds,
    TfArg<bool>? localAzureIpAddressEnabled,
    TfArg<String>? localNetworkGatewayId,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<String>? peerVirtualNetworkGatewayId,
    TfArg<bool>? privateLinkFastPathEnabled,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<num>? routingWeight,
    Sensitive<String>? sharedKey,
    TfArg<Map<String, String>>? tags,
    required VirtualNetworkGatewayConnectionType type,
    TfArg<bool>? usePolicyBasedTrafficSelectors,
    required TfArg<String> virtualNetworkGatewayId,
    VirtualNetworkGatewayConnectionCustomBgpAddresses? customBgpAddresses,
    VirtualNetworkGatewayConnectionIpsecPolicy? ipsecPolicy,
    List<VirtualNetworkGatewayConnectionTrafficSelectorPolicy>?
    trafficSelectorPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'authorization_key': ?authorizationKey,
           'bgp_enabled': ?bgpEnabled,
           'connection_mode': ?connectionMode,
           'connection_protocol': ?connectionProtocol,
           'dpd_timeout_seconds': ?dpdTimeoutSeconds,
           'egress_nat_rule_ids': ?egressNatRuleIds,
           'express_route_circuit_id': ?expressRouteCircuitId,
           'express_route_gateway_bypass': ?expressRouteGatewayBypass,
           'ingress_nat_rule_ids': ?ingressNatRuleIds,
           'local_azure_ip_address_enabled': ?localAzureIpAddressEnabled,
           'local_network_gateway_id': ?localNetworkGatewayId,
           'location': location,
           'name': name,
           'peer_virtual_network_gateway_id': ?peerVirtualNetworkGatewayId,
           'private_link_fast_path_enabled': ?privateLinkFastPathEnabled,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'routing_weight': ?routingWeight,
           'shared_key': ?sharedKey,
           'tags': ?tags,
           'type': type,
           'use_policy_based_traffic_selectors':
               ?usePolicyBasedTrafficSelectors,
           'virtual_network_gateway_id': virtualNetworkGatewayId,
           if (customBgpAddresses != null)
             'custom_bgp_addresses': TfArg.literal(customBgpAddresses.encode()),
           if (ipsecPolicy != null)
             'ipsec_policy': TfArg.literal(ipsecPolicy.encode()),
           if (trafficSelectorPolicy != null)
             'traffic_selector_policy': TfArg.literal([
               for (final e in trafficSelectorPolicy) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermVirtualNetworkGatewayConnectionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermVirtualNetworkGatewayConnection>`.
  RefTo<AzurermVirtualNetworkGatewayConnection> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `authorization_key` attribute.
  TfRef<String> get authorizationKey =>
      TfRef.attribute<String>(this, 'authorization_key');

  /// Reference to `bgp_enabled` attribute.
  TfRef<bool> get bgpEnabled => TfRef.attribute<bool>(this, 'bgp_enabled');

  /// Reference to `connection_mode` attribute.
  TfRef<String> get connectionMode =>
      TfRef.attribute<String>(this, 'connection_mode');

  /// Reference to `connection_protocol` attribute.
  TfRef<String> get connectionProtocol =>
      TfRef.attribute<String>(this, 'connection_protocol');

  /// Reference to `dpd_timeout_seconds` attribute.
  TfRef<num> get dpdTimeoutSeconds =>
      TfRef.attribute<num>(this, 'dpd_timeout_seconds');

  /// Reference to `egress_nat_rule_ids` attribute.
  TfRef<List<String>> get egressNatRuleIds =>
      TfRef.attribute<List<String>>(this, 'egress_nat_rule_ids');

  /// Reference to `express_route_circuit_id` attribute.
  TfRef<String> get expressRouteCircuitId =>
      TfRef.attribute<String>(this, 'express_route_circuit_id');

  /// Reference to `express_route_gateway_bypass` attribute.
  TfRef<bool> get expressRouteGatewayBypass =>
      TfRef.attribute<bool>(this, 'express_route_gateway_bypass');

  /// Reference to `ingress_nat_rule_ids` attribute.
  TfRef<List<String>> get ingressNatRuleIds =>
      TfRef.attribute<List<String>>(this, 'ingress_nat_rule_ids');

  /// Reference to `local_azure_ip_address_enabled` attribute.
  TfRef<bool> get localAzureIpAddressEnabled =>
      TfRef.attribute<bool>(this, 'local_azure_ip_address_enabled');

  /// Reference to `local_network_gateway_id` attribute.
  TfRef<String> get localNetworkGatewayId =>
      TfRef.attribute<String>(this, 'local_network_gateway_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `peer_virtual_network_gateway_id` attribute.
  TfRef<String> get peerVirtualNetworkGatewayId =>
      TfRef.attribute<String>(this, 'peer_virtual_network_gateway_id');

  /// Reference to `private_link_fast_path_enabled` attribute.
  TfRef<bool> get privateLinkFastPathEnabled =>
      TfRef.attribute<bool>(this, 'private_link_fast_path_enabled');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `routing_weight` attribute.
  TfRef<num> get routingWeight => TfRef.attribute<num>(this, 'routing_weight');

  /// Reference to `shared_key` attribute.
  TfRef<String> get sharedKey => TfRef.attribute<String>(this, 'shared_key');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `use_policy_based_traffic_selectors` attribute.
  TfRef<bool> get usePolicyBasedTrafficSelectors =>
      TfRef.attribute<bool>(this, 'use_policy_based_traffic_selectors');

  /// Reference to `virtual_network_gateway_id` attribute.
  TfRef<String> get virtualNetworkGatewayId =>
      TfRef.attribute<String>(this, 'virtual_network_gateway_id');
}
