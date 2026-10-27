// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_vpn_gateway_connection`.
const Set<String> _azurermVpnGatewayConnectionSensitive = <String>{};

/// Typed helper for the `routing` block of
/// `azurerm_vpn_gateway_connection` (derived from provider schema).
@immutable
final class VpnGatewayConnectionRouting {
  const VpnGatewayConnectionRouting({
    required this.associatedRouteTable,
    this.inboundRouteMapId,
    this.outboundRouteMapId,
    this.propagatedRouteTable,
  });

  final TfArg<String> associatedRouteTable;

  final TfArg<String>? inboundRouteMapId;

  final TfArg<String>? outboundRouteMapId;

  final VpnGatewayConnectionPropagatedRouteTable? propagatedRouteTable;

  @internal
  Map<String, Object?> encode() => {
    'associated_route_table': associatedRouteTable.toTfJson(),
    'inbound_route_map_id': ?inboundRouteMapId?.toTfJson(),
    'outbound_route_map_id': ?outboundRouteMapId?.toTfJson(),
    'propagated_route_table': ?propagatedRouteTable?.encode(),
  };
}

/// Typed helper for the `routing.propagated_route_table` block of
/// `azurerm_vpn_gateway_connection` (derived from provider schema).
@immutable
final class VpnGatewayConnectionPropagatedRouteTable {
  const VpnGatewayConnectionPropagatedRouteTable({
    this.labels,
    required this.routeTableIds,
  });

  final TfArg<List<String>>? labels;

  final TfArg<List<String>> routeTableIds;

  @internal
  Map<String, Object?> encode() => {
    'labels': ?labels?.toTfJson(),
    'route_table_ids': routeTableIds.toTfJson(),
  };
}

/// Typed helper for the `traffic_selector_policy` block of
/// `azurerm_vpn_gateway_connection` (derived from provider schema).
@immutable
final class VpnGatewayConnectionTrafficSelectorPolicy {
  const VpnGatewayConnectionTrafficSelectorPolicy({
    required this.localAddressRanges,
    required this.remoteAddressRanges,
  });

  final TfArg<List<String>> localAddressRanges;

  final TfArg<List<String>> remoteAddressRanges;

  @internal
  Map<String, Object?> encode() => {
    'local_address_ranges': localAddressRanges.toTfJson(),
    'remote_address_ranges': remoteAddressRanges.toTfJson(),
  };
}

/// Typed helper for the `vpn_link` block of
/// `azurerm_vpn_gateway_connection` (derived from provider schema).
@immutable
final class VpnGatewayConnectionVpnLink {
  const VpnGatewayConnectionVpnLink({
    this.bandwidthMbps,
    this.bgpEnabled,
    this.connectionMode,
    this.dpdTimeoutSeconds,
    this.egressNatRuleIds,
    this.ingressNatRuleIds,
    this.localAzureIpAddressEnabled,
    required this.name,
    this.policyBasedTrafficSelectorEnabled,
    this.protocol,
    this.ratelimitEnabled,
    this.routeWeight,
    this.sharedKey,
    required this.vpnSiteLinkId,
    this.customBgpAddress,
    this.ipsecPolicy,
  });

  final TfArg<num>? bandwidthMbps;

  final TfArg<bool>? bgpEnabled;

  final VpnGatewayConnectionMode? connectionMode;

  final TfArg<num>? dpdTimeoutSeconds;

  final TfArg<List<String>>? egressNatRuleIds;

  final TfArg<List<String>>? ingressNatRuleIds;

  final TfArg<bool>? localAzureIpAddressEnabled;

  final TfArg<String> name;

  final TfArg<bool>? policyBasedTrafficSelectorEnabled;

  final VpnGatewayConnectionProtocol? protocol;

  final TfArg<bool>? ratelimitEnabled;

  final TfArg<num>? routeWeight;

  final TfArg<String>? sharedKey;

  final TfArg<String> vpnSiteLinkId;

  final List<VpnGatewayConnectionCustomBgpAddress>? customBgpAddress;

  final List<VpnGatewayConnectionIpsecPolicy>? ipsecPolicy;

  @internal
  Map<String, Object?> encode() => {
    'bandwidth_mbps': ?bandwidthMbps?.toTfJson(),
    'bgp_enabled': ?bgpEnabled?.toTfJson(),
    'connection_mode': ?connectionMode?.toTfJson(),
    'dpd_timeout_seconds': ?dpdTimeoutSeconds?.toTfJson(),
    'egress_nat_rule_ids': ?egressNatRuleIds?.toTfJson(),
    'ingress_nat_rule_ids': ?ingressNatRuleIds?.toTfJson(),
    'local_azure_ip_address_enabled': ?localAzureIpAddressEnabled?.toTfJson(),
    'name': name.toTfJson(),
    'policy_based_traffic_selector_enabled': ?policyBasedTrafficSelectorEnabled
        ?.toTfJson(),
    'protocol': ?protocol?.toTfJson(),
    'ratelimit_enabled': ?ratelimitEnabled?.toTfJson(),
    'route_weight': ?routeWeight?.toTfJson(),
    'shared_key': ?sharedKey?.toTfJson(),
    'vpn_site_link_id': vpnSiteLinkId.toTfJson(),
    if (customBgpAddress != null)
      'custom_bgp_address': [for (final e in customBgpAddress!) e.encode()],
    if (ipsecPolicy != null)
      'ipsec_policy': [for (final e in ipsecPolicy!) e.encode()],
  };
}

/// `connection_mode` — derived from the provider schema description.
extension type const VpnGatewayConnectionMode._(TfArg<String> _)
    implements TfArg<String> {
  VpnGatewayConnectionMode.variable(String name) : this._(TfArg.variable(name));
  VpnGatewayConnectionMode.expression(String template)
    : this._(TfArg.expression(template));
  const VpnGatewayConnectionMode.arg(TfArg<String> arg) : this._(arg);

  static const defaultCase = VpnGatewayConnectionMode._(
    TfArgLiteral('Default'),
  );
  static const initiatoronly = VpnGatewayConnectionMode._(
    TfArgLiteral('InitiatorOnly'),
  );
  static const responderonly = VpnGatewayConnectionMode._(
    TfArgLiteral('ResponderOnly'),
  );

  static const List<VpnGatewayConnectionMode> values = [
    defaultCase,
    initiatoronly,
    responderonly,
  ];
}

/// `protocol` — derived from the provider schema description.
extension type const VpnGatewayConnectionProtocol._(TfArg<String> _)
    implements TfArg<String> {
  VpnGatewayConnectionProtocol.variable(String name)
    : this._(TfArg.variable(name));
  VpnGatewayConnectionProtocol.expression(String template)
    : this._(TfArg.expression(template));
  const VpnGatewayConnectionProtocol.arg(TfArg<String> arg) : this._(arg);

  static const ikev1 = VpnGatewayConnectionProtocol._(TfArgLiteral('IKEv1'));
  static const ikev2 = VpnGatewayConnectionProtocol._(TfArgLiteral('IKEv2'));

  static const List<VpnGatewayConnectionProtocol> values = [ikev1, ikev2];
}

/// Typed helper for the `vpn_link.custom_bgp_address` block of
/// `azurerm_vpn_gateway_connection` (derived from provider schema).
@immutable
final class VpnGatewayConnectionCustomBgpAddress {
  const VpnGatewayConnectionCustomBgpAddress({
    required this.ipAddress,
    required this.ipConfigurationId,
  });

  final TfArg<String> ipAddress;

  final TfArg<String> ipConfigurationId;

  @internal
  Map<String, Object?> encode() => {
    'ip_address': ipAddress.toTfJson(),
    'ip_configuration_id': ipConfigurationId.toTfJson(),
  };
}

/// Typed helper for the `vpn_link.ipsec_policy` block of
/// `azurerm_vpn_gateway_connection` (derived from provider schema).
@immutable
final class VpnGatewayConnectionIpsecPolicy {
  const VpnGatewayConnectionIpsecPolicy({
    required this.dhGroup,
    required this.encryptionAlgorithm,
    required this.ikeEncryptionAlgorithm,
    required this.ikeIntegrityAlgorithm,
    required this.integrityAlgorithm,
    required this.pfsGroup,
    required this.saDataSizeKb,
    required this.saLifetimeSec,
  });

  final VpnGatewayConnectionDhGroup dhGroup;

  final VpnGatewayConnectionEncryptionAlgorithm encryptionAlgorithm;

  final VpnGatewayConnectionIkeEncryptionAlgorithm ikeEncryptionAlgorithm;

  final VpnGatewayConnectionIkeIntegrityAlgorithm ikeIntegrityAlgorithm;

  final VpnGatewayConnectionIntegrityAlgorithm integrityAlgorithm;

  final VpnGatewayConnectionPfsGroup pfsGroup;

  final TfArg<num> saDataSizeKb;

  final TfArg<num> saLifetimeSec;

  @internal
  Map<String, Object?> encode() => {
    'dh_group': dhGroup.toTfJson(),
    'encryption_algorithm': encryptionAlgorithm.toTfJson(),
    'ike_encryption_algorithm': ikeEncryptionAlgorithm.toTfJson(),
    'ike_integrity_algorithm': ikeIntegrityAlgorithm.toTfJson(),
    'integrity_algorithm': integrityAlgorithm.toTfJson(),
    'pfs_group': pfsGroup.toTfJson(),
    'sa_data_size_kb': saDataSizeKb.toTfJson(),
    'sa_lifetime_sec': saLifetimeSec.toTfJson(),
  };
}

/// `dh_group` — derived from the provider schema description.
extension type const VpnGatewayConnectionDhGroup._(TfArg<String> _)
    implements TfArg<String> {
  VpnGatewayConnectionDhGroup.variable(String name)
    : this._(TfArg.variable(name));
  VpnGatewayConnectionDhGroup.expression(String template)
    : this._(TfArg.expression(template));
  const VpnGatewayConnectionDhGroup.arg(TfArg<String> arg) : this._(arg);

  static const dhgroup1 = VpnGatewayConnectionDhGroup._(
    TfArgLiteral('DHGroup1'),
  );
  static const dhgroup14 = VpnGatewayConnectionDhGroup._(
    TfArgLiteral('DHGroup14'),
  );
  static const dhgroup2 = VpnGatewayConnectionDhGroup._(
    TfArgLiteral('DHGroup2'),
  );
  static const dhgroup24 = VpnGatewayConnectionDhGroup._(
    TfArgLiteral('DHGroup24'),
  );
  static const dhgroup2048 = VpnGatewayConnectionDhGroup._(
    TfArgLiteral('DHGroup2048'),
  );
  static const ecp384 = VpnGatewayConnectionDhGroup._(TfArgLiteral('ECP384'));
  static const ecp256 = VpnGatewayConnectionDhGroup._(TfArgLiteral('ECP256'));
  static const none = VpnGatewayConnectionDhGroup._(TfArgLiteral('None'));

  static const List<VpnGatewayConnectionDhGroup> values = [
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

/// `encryption_algorithm` — derived from the provider schema description.
extension type const VpnGatewayConnectionEncryptionAlgorithm._(TfArg<String> _)
    implements TfArg<String> {
  VpnGatewayConnectionEncryptionAlgorithm.variable(String name)
    : this._(TfArg.variable(name));
  VpnGatewayConnectionEncryptionAlgorithm.expression(String template)
    : this._(TfArg.expression(template));
  const VpnGatewayConnectionEncryptionAlgorithm.arg(TfArg<String> arg)
    : this._(arg);

  static const aes192 = VpnGatewayConnectionEncryptionAlgorithm._(
    TfArgLiteral('AES192'),
  );
  static const aes128 = VpnGatewayConnectionEncryptionAlgorithm._(
    TfArgLiteral('AES128'),
  );
  static const aes256 = VpnGatewayConnectionEncryptionAlgorithm._(
    TfArgLiteral('AES256'),
  );
  static const des = VpnGatewayConnectionEncryptionAlgorithm._(
    TfArgLiteral('DES'),
  );
  static const des3 = VpnGatewayConnectionEncryptionAlgorithm._(
    TfArgLiteral('DES3'),
  );
  static const gcmaes192 = VpnGatewayConnectionEncryptionAlgorithm._(
    TfArgLiteral('GCMAES192'),
  );
  static const gcmaes128 = VpnGatewayConnectionEncryptionAlgorithm._(
    TfArgLiteral('GCMAES128'),
  );
  static const gcmaes256 = VpnGatewayConnectionEncryptionAlgorithm._(
    TfArgLiteral('GCMAES256'),
  );
  static const none = VpnGatewayConnectionEncryptionAlgorithm._(
    TfArgLiteral('None'),
  );

  static const List<VpnGatewayConnectionEncryptionAlgorithm> values = [
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

/// `ike_encryption_algorithm` — derived from the provider schema description.
extension type const VpnGatewayConnectionIkeEncryptionAlgorithm._(
  TfArg<String> _
) implements TfArg<String> {
  VpnGatewayConnectionIkeEncryptionAlgorithm.variable(String name)
    : this._(TfArg.variable(name));
  VpnGatewayConnectionIkeEncryptionAlgorithm.expression(String template)
    : this._(TfArg.expression(template));
  const VpnGatewayConnectionIkeEncryptionAlgorithm.arg(TfArg<String> arg)
    : this._(arg);

  static const aes192 = VpnGatewayConnectionIkeEncryptionAlgorithm._(
    TfArgLiteral('AES192'),
  );
  static const aes128 = VpnGatewayConnectionIkeEncryptionAlgorithm._(
    TfArgLiteral('AES128'),
  );
  static const aes256 = VpnGatewayConnectionIkeEncryptionAlgorithm._(
    TfArgLiteral('AES256'),
  );
  static const des = VpnGatewayConnectionIkeEncryptionAlgorithm._(
    TfArgLiteral('DES'),
  );
  static const des3 = VpnGatewayConnectionIkeEncryptionAlgorithm._(
    TfArgLiteral('DES3'),
  );
  static const gcmaes128 = VpnGatewayConnectionIkeEncryptionAlgorithm._(
    TfArgLiteral('GCMAES128'),
  );
  static const gcmaes256 = VpnGatewayConnectionIkeEncryptionAlgorithm._(
    TfArgLiteral('GCMAES256'),
  );

  static const List<VpnGatewayConnectionIkeEncryptionAlgorithm> values = [
    aes192,
    aes128,
    aes256,
    des,
    des3,
    gcmaes128,
    gcmaes256,
  ];
}

/// `ike_integrity_algorithm` — derived from the provider schema description.
extension type const VpnGatewayConnectionIkeIntegrityAlgorithm._(
  TfArg<String> _
) implements TfArg<String> {
  VpnGatewayConnectionIkeIntegrityAlgorithm.variable(String name)
    : this._(TfArg.variable(name));
  VpnGatewayConnectionIkeIntegrityAlgorithm.expression(String template)
    : this._(TfArg.expression(template));
  const VpnGatewayConnectionIkeIntegrityAlgorithm.arg(TfArg<String> arg)
    : this._(arg);

  static const gcmaes128 = VpnGatewayConnectionIkeIntegrityAlgorithm._(
    TfArgLiteral('GCMAES128'),
  );
  static const gcmaes256 = VpnGatewayConnectionIkeIntegrityAlgorithm._(
    TfArgLiteral('GCMAES256'),
  );
  static const md5 = VpnGatewayConnectionIkeIntegrityAlgorithm._(
    TfArgLiteral('MD5'),
  );
  static const sha1 = VpnGatewayConnectionIkeIntegrityAlgorithm._(
    TfArgLiteral('SHA1'),
  );
  static const sha384 = VpnGatewayConnectionIkeIntegrityAlgorithm._(
    TfArgLiteral('SHA384'),
  );
  static const sha256 = VpnGatewayConnectionIkeIntegrityAlgorithm._(
    TfArgLiteral('SHA256'),
  );

  static const List<VpnGatewayConnectionIkeIntegrityAlgorithm> values = [
    gcmaes128,
    gcmaes256,
    md5,
    sha1,
    sha384,
    sha256,
  ];
}

/// `integrity_algorithm` — derived from the provider schema description.
extension type const VpnGatewayConnectionIntegrityAlgorithm._(TfArg<String> _)
    implements TfArg<String> {
  VpnGatewayConnectionIntegrityAlgorithm.variable(String name)
    : this._(TfArg.variable(name));
  VpnGatewayConnectionIntegrityAlgorithm.expression(String template)
    : this._(TfArg.expression(template));
  const VpnGatewayConnectionIntegrityAlgorithm.arg(TfArg<String> arg)
    : this._(arg);

  static const gcmaes192 = VpnGatewayConnectionIntegrityAlgorithm._(
    TfArgLiteral('GCMAES192'),
  );
  static const gcmaes128 = VpnGatewayConnectionIntegrityAlgorithm._(
    TfArgLiteral('GCMAES128'),
  );
  static const gcmaes256 = VpnGatewayConnectionIntegrityAlgorithm._(
    TfArgLiteral('GCMAES256'),
  );
  static const md5 = VpnGatewayConnectionIntegrityAlgorithm._(
    TfArgLiteral('MD5'),
  );
  static const sha1 = VpnGatewayConnectionIntegrityAlgorithm._(
    TfArgLiteral('SHA1'),
  );
  static const sha256 = VpnGatewayConnectionIntegrityAlgorithm._(
    TfArgLiteral('SHA256'),
  );

  static const List<VpnGatewayConnectionIntegrityAlgorithm> values = [
    gcmaes192,
    gcmaes128,
    gcmaes256,
    md5,
    sha1,
    sha256,
  ];
}

/// `pfs_group` — derived from the provider schema description.
extension type const VpnGatewayConnectionPfsGroup._(TfArg<String> _)
    implements TfArg<String> {
  VpnGatewayConnectionPfsGroup.variable(String name)
    : this._(TfArg.variable(name));
  VpnGatewayConnectionPfsGroup.expression(String template)
    : this._(TfArg.expression(template));
  const VpnGatewayConnectionPfsGroup.arg(TfArg<String> arg) : this._(arg);

  static const ecp384 = VpnGatewayConnectionPfsGroup._(TfArgLiteral('ECP384'));
  static const ecp256 = VpnGatewayConnectionPfsGroup._(TfArgLiteral('ECP256'));
  static const none = VpnGatewayConnectionPfsGroup._(TfArgLiteral('None'));
  static const pfsmm = VpnGatewayConnectionPfsGroup._(TfArgLiteral('PFSMM'));
  static const pfs1 = VpnGatewayConnectionPfsGroup._(TfArgLiteral('PFS1'));
  static const pfs14 = VpnGatewayConnectionPfsGroup._(TfArgLiteral('PFS14'));
  static const pfs2 = VpnGatewayConnectionPfsGroup._(TfArgLiteral('PFS2'));
  static const pfs24 = VpnGatewayConnectionPfsGroup._(TfArgLiteral('PFS24'));
  static const pfs2048 = VpnGatewayConnectionPfsGroup._(
    TfArgLiteral('PFS2048'),
  );

  static const List<VpnGatewayConnectionPfsGroup> values = [
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

/// Factory wrapper for `azurerm_vpn_gateway_connection`.
final class AzurermVpnGatewayConnection extends Resource {
  static const String tfType = 'azurerm_vpn_gateway_connection';

  AzurermVpnGatewayConnection(
    super.localName, {
    TfArg<bool>? internetSecurityEnabled,
    required TfArg<String> name,
    required TfArg<String> remoteVpnSiteId,
    required TfArg<String> vpnGatewayId,
    VpnGatewayConnectionRouting? routing,
    List<VpnGatewayConnectionTrafficSelectorPolicy>? trafficSelectorPolicy,
    required List<VpnGatewayConnectionVpnLink> vpnLink,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'internet_security_enabled': ?internetSecurityEnabled,
           'name': name,
           'remote_vpn_site_id': remoteVpnSiteId,
           'vpn_gateway_id': vpnGatewayId,
           if (routing != null) 'routing': TfArg.literal(routing.encode()),
           if (trafficSelectorPolicy != null)
             'traffic_selector_policy': TfArg.literal([
               for (final e in trafficSelectorPolicy) e.encode(),
             ]),
           'vpn_link': TfArg.literal([for (final e in vpnLink) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermVpnGatewayConnectionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermVpnGatewayConnection>`.
  RefTo<AzurermVpnGatewayConnection> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `internet_security_enabled` attribute.
  TfRef<bool> get internetSecurityEnabled =>
      TfRef.attribute<bool>(this, 'internet_security_enabled');

  /// Reference to `remote_vpn_site_id` attribute.
  TfRef<String> get remoteVpnSiteId =>
      TfRef.attribute<String>(this, 'remote_vpn_site_id');

  /// Reference to `vpn_gateway_id` attribute.
  TfRef<String> get vpnGatewayId =>
      TfRef.attribute<String>(this, 'vpn_gateway_id');
}
