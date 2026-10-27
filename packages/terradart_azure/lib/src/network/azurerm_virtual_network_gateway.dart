// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_virtual_network_gateway`.
const Set<String> _azurermVirtualNetworkGatewaySensitive = <String>{
  'vpn_client_configuration.radius_server.secret',
  'vpn_client_configuration.radius_server_secret',
};

/// Virtual Network Gateway enum for `generation`.
extension type const VirtualNetworkGatewayGeneration._(TfArg<String> _)
    implements TfArg<String> {
  VirtualNetworkGatewayGeneration.variable(String name)
    : this._(TfArg.variable(name));
  VirtualNetworkGatewayGeneration.expression(String template)
    : this._(TfArg.expression(template));
  const VirtualNetworkGatewayGeneration.arg(TfArg<String> arg) : this._(arg);

  static const generation1 = VirtualNetworkGatewayGeneration._(
    TfArgLiteral('Generation1'),
  );
  static const generation2 = VirtualNetworkGatewayGeneration._(
    TfArgLiteral('Generation2'),
  );
  static const none = VirtualNetworkGatewayGeneration._(TfArgLiteral('None'));

  static const List<VirtualNetworkGatewayGeneration> values = [
    generation1,
    generation2,
    none,
  ];
}

/// Virtual Network Gateway Vpn enum for `vpn_type`.
extension type const VirtualNetworkGatewayVpnType._(TfArg<String> _)
    implements TfArg<String> {
  VirtualNetworkGatewayVpnType.variable(String name)
    : this._(TfArg.variable(name));
  VirtualNetworkGatewayVpnType.expression(String template)
    : this._(TfArg.expression(template));
  const VirtualNetworkGatewayVpnType.arg(TfArg<String> arg) : this._(arg);

  static const policybased = VirtualNetworkGatewayVpnType._(
    TfArgLiteral('PolicyBased'),
  );
  static const routebased = VirtualNetworkGatewayVpnType._(
    TfArgLiteral('RouteBased'),
  );

  static const List<VirtualNetworkGatewayVpnType> values = [
    policybased,
    routebased,
  ];
}

/// Typed helper for the `bgp_settings` block of
/// `azurerm_virtual_network_gateway` (derived from provider schema).
@immutable
final class VirtualNetworkGatewayBgpSettings {
  const VirtualNetworkGatewayBgpSettings({
    this.asn,
    this.peerWeight,
    this.peeringAddresses,
  });

  final TfArg<num>? asn;

  final TfArg<num>? peerWeight;

  final List<VirtualNetworkGatewayPeeringAddresses>? peeringAddresses;

  @internal
  Map<String, Object?> encode() => {
    'asn': ?asn?.toTfJson(),
    'peer_weight': ?peerWeight?.toTfJson(),
    if (peeringAddresses != null)
      'peering_addresses': [for (final e in peeringAddresses!) e.encode()],
  };
}

/// Typed helper for the `bgp_settings.peering_addresses` block of
/// `azurerm_virtual_network_gateway` (derived from provider schema).
@immutable
final class VirtualNetworkGatewayPeeringAddresses {
  const VirtualNetworkGatewayPeeringAddresses({
    this.apipaAddresses,
    this.ipConfigurationName,
  });

  final TfArg<List<String>>? apipaAddresses;

  final TfArg<String>? ipConfigurationName;

  @internal
  Map<String, Object?> encode() => {
    'apipa_addresses': ?apipaAddresses?.toTfJson(),
    'ip_configuration_name': ?ipConfigurationName?.toTfJson(),
  };
}

/// Typed helper for the `custom_route` block of
/// `azurerm_virtual_network_gateway` (derived from provider schema).
@immutable
final class VirtualNetworkGatewayCustomRoute {
  const VirtualNetworkGatewayCustomRoute({this.addressPrefixes});

  final TfArg<List<String>>? addressPrefixes;

  @internal
  Map<String, Object?> encode() => {
    'address_prefixes': ?addressPrefixes?.toTfJson(),
  };
}

/// Typed helper for the `ip_configuration` block of
/// `azurerm_virtual_network_gateway` (derived from provider schema).
@immutable
final class VirtualNetworkGatewayIpConfiguration {
  const VirtualNetworkGatewayIpConfiguration({
    this.name,
    this.privateIpAddressAllocation,
    this.publicIpAddressId,
    required this.subnetId,
  });

  final TfArg<String>? name;

  final VirtualNetworkGatewayPrivateIpAddressAllocation?
  privateIpAddressAllocation;

  final TfArg<String>? publicIpAddressId;

  final TfArg<String> subnetId;

  @internal
  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'private_ip_address_allocation': ?privateIpAddressAllocation?.toTfJson(),
    'public_ip_address_id': ?publicIpAddressId?.toTfJson(),
    'subnet_id': subnetId.toTfJson(),
  };
}

/// `private_ip_address_allocation` — derived from the provider schema description.
extension type const VirtualNetworkGatewayPrivateIpAddressAllocation._(
  TfArg<String> _
) implements TfArg<String> {
  VirtualNetworkGatewayPrivateIpAddressAllocation.variable(String name)
    : this._(TfArg.variable(name));
  VirtualNetworkGatewayPrivateIpAddressAllocation.expression(String template)
    : this._(TfArg.expression(template));
  const VirtualNetworkGatewayPrivateIpAddressAllocation.arg(TfArg<String> arg)
    : this._(arg);

  static const dynamic = VirtualNetworkGatewayPrivateIpAddressAllocation._(
    TfArgLiteral('Dynamic'),
  );
  static const static = VirtualNetworkGatewayPrivateIpAddressAllocation._(
    TfArgLiteral('Static'),
  );

  static const List<VirtualNetworkGatewayPrivateIpAddressAllocation> values = [
    dynamic,
    static,
  ];
}

/// Typed helper for the `policy_group` block of
/// `azurerm_virtual_network_gateway` (derived from provider schema).
@immutable
final class VirtualNetworkGatewayPolicyGroup {
  const VirtualNetworkGatewayPolicyGroup({
    this.isDefault,
    required this.name,
    this.priority,
    required this.policyMember,
  });

  final TfArg<bool>? isDefault;

  final TfArg<String> name;

  final TfArg<num>? priority;

  final List<VirtualNetworkGatewayPolicyMember> policyMember;

  @internal
  Map<String, Object?> encode() => {
    'is_default': ?isDefault?.toTfJson(),
    'name': name.toTfJson(),
    'priority': ?priority?.toTfJson(),
    'policy_member': [for (final e in policyMember) e.encode()],
  };
}

/// Typed helper for the `policy_group.policy_member` block of
/// `azurerm_virtual_network_gateway` (derived from provider schema).
@immutable
final class VirtualNetworkGatewayPolicyMember {
  const VirtualNetworkGatewayPolicyMember({
    required this.name,
    required this.type,
    required this.value,
  });

  final TfArg<String> name;

  final VirtualNetworkGatewayPolicyMemberType type;

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'type': type.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const VirtualNetworkGatewayPolicyMemberType._(TfArg<String> _)
    implements TfArg<String> {
  VirtualNetworkGatewayPolicyMemberType.variable(String name)
    : this._(TfArg.variable(name));
  VirtualNetworkGatewayPolicyMemberType.expression(String template)
    : this._(TfArg.expression(template));
  const VirtualNetworkGatewayPolicyMemberType.arg(TfArg<String> arg)
    : this._(arg);

  static const aadgroupid = VirtualNetworkGatewayPolicyMemberType._(
    TfArgLiteral('AADGroupId'),
  );
  static const certificategroupid = VirtualNetworkGatewayPolicyMemberType._(
    TfArgLiteral('CertificateGroupId'),
  );
  static const radiusazuregroupid = VirtualNetworkGatewayPolicyMemberType._(
    TfArgLiteral('RadiusAzureGroupId'),
  );

  static const List<VirtualNetworkGatewayPolicyMemberType> values = [
    aadgroupid,
    certificategroupid,
    radiusazuregroupid,
  ];
}

/// Typed helper for the `vpn_client_configuration` block of
/// `azurerm_virtual_network_gateway` (derived from provider schema).
@immutable
final class VirtualNetworkGatewayVpnClientConfiguration {
  const VirtualNetworkGatewayVpnClientConfiguration({
    this.aadAudience,
    this.aadIssuer,
    this.aadTenant,
    required this.addressSpace,
    this.radiusServerAddress,
    this.radiusServerSecret,
    this.vpnAuthTypes,
    this.vpnClientProtocols,
    this.ipsecPolicy,
    this.radiusServer,
    this.revokedCertificate,
    this.rootCertificate,
    this.virtualNetworkGatewayClientConnection,
  });

  final TfArg<String>? aadAudience;

  final TfArg<String>? aadIssuer;

  final TfArg<String>? aadTenant;

  final TfArg<List<String>> addressSpace;

  final TfArg<String>? radiusServerAddress;

  final Sensitive<String>? radiusServerSecret;

  final List<VirtualNetworkGatewayVpnAuthTypes>? vpnAuthTypes;

  final List<VirtualNetworkGatewayVpnClientProtocols>? vpnClientProtocols;

  final VirtualNetworkGatewayIpsecPolicy? ipsecPolicy;

  final List<VirtualNetworkGatewayRadiusServer>? radiusServer;

  final List<VirtualNetworkGatewayRevokedCertificate>? revokedCertificate;

  final List<VirtualNetworkGatewayRootCertificate>? rootCertificate;

  final List<VirtualNetworkGatewayClientConnection>?
  virtualNetworkGatewayClientConnection;

  @internal
  Map<String, Object?> encode() => {
    'aad_audience': ?aadAudience?.toTfJson(),
    'aad_issuer': ?aadIssuer?.toTfJson(),
    'aad_tenant': ?aadTenant?.toTfJson(),
    'address_space': addressSpace.toTfJson(),
    'radius_server_address': ?radiusServerAddress?.toTfJson(),
    'radius_server_secret': ?radiusServerSecret?.toTfJson(),
    if (vpnAuthTypes != null)
      'vpn_auth_types': [for (final e in vpnAuthTypes!) e.toTfJson()],
    if (vpnClientProtocols != null)
      'vpn_client_protocols': [
        for (final e in vpnClientProtocols!) e.toTfJson(),
      ],
    'ipsec_policy': ?ipsecPolicy?.encode(),
    if (radiusServer != null)
      'radius_server': [for (final e in radiusServer!) e.encode()],
    if (revokedCertificate != null)
      'revoked_certificate': [for (final e in revokedCertificate!) e.encode()],
    if (rootCertificate != null)
      'root_certificate': [for (final e in rootCertificate!) e.encode()],
    if (virtualNetworkGatewayClientConnection != null)
      'virtual_network_gateway_client_connection': [
        for (final e in virtualNetworkGatewayClientConnection!) e.encode(),
      ],
  };
}

/// `vpn_auth_types` — derived from the provider schema description.
extension type const VirtualNetworkGatewayVpnAuthTypes._(TfArg<String> _)
    implements TfArg<String> {
  VirtualNetworkGatewayVpnAuthTypes.variable(String name)
    : this._(TfArg.variable(name));
  VirtualNetworkGatewayVpnAuthTypes.expression(String template)
    : this._(TfArg.expression(template));
  const VirtualNetworkGatewayVpnAuthTypes.arg(TfArg<String> arg) : this._(arg);

  static const aad = VirtualNetworkGatewayVpnAuthTypes._(TfArgLiteral('AAD'));
  static const certificate = VirtualNetworkGatewayVpnAuthTypes._(
    TfArgLiteral('Certificate'),
  );
  static const radius = VirtualNetworkGatewayVpnAuthTypes._(
    TfArgLiteral('Radius'),
  );

  static const List<VirtualNetworkGatewayVpnAuthTypes> values = [
    aad,
    certificate,
    radius,
  ];
}

/// `vpn_client_protocols` — derived from the provider schema description.
extension type const VirtualNetworkGatewayVpnClientProtocols._(TfArg<String> _)
    implements TfArg<String> {
  VirtualNetworkGatewayVpnClientProtocols.variable(String name)
    : this._(TfArg.variable(name));
  VirtualNetworkGatewayVpnClientProtocols.expression(String template)
    : this._(TfArg.expression(template));
  const VirtualNetworkGatewayVpnClientProtocols.arg(TfArg<String> arg)
    : this._(arg);

  static const ikev2 = VirtualNetworkGatewayVpnClientProtocols._(
    TfArgLiteral('IkeV2'),
  );
  static const openvpn = VirtualNetworkGatewayVpnClientProtocols._(
    TfArgLiteral('OpenVPN'),
  );
  static const sstp = VirtualNetworkGatewayVpnClientProtocols._(
    TfArgLiteral('SSTP'),
  );

  static const List<VirtualNetworkGatewayVpnClientProtocols> values = [
    ikev2,
    openvpn,
    sstp,
  ];
}

/// Typed helper for the `vpn_client_configuration.ipsec_policy` block of
/// `azurerm_virtual_network_gateway` (derived from provider schema).
@immutable
final class VirtualNetworkGatewayIpsecPolicy {
  const VirtualNetworkGatewayIpsecPolicy({
    required this.dhGroup,
    required this.ikeEncryption,
    required this.ikeIntegrity,
    required this.ipsecEncryption,
    required this.ipsecIntegrity,
    required this.pfsGroup,
    required this.saDataSizeInKilobytes,
    required this.saLifetimeInSeconds,
  });

  final VirtualNetworkGatewayDhGroup dhGroup;

  final VirtualNetworkGatewayIkeEncryption ikeEncryption;

  final VirtualNetworkGatewayIkeIntegrity ikeIntegrity;

  final VirtualNetworkGatewayIpsecEncryption ipsecEncryption;

  final VirtualNetworkGatewayIpsecIntegrity ipsecIntegrity;

  final VirtualNetworkGatewayPfsGroup pfsGroup;

  final TfArg<num> saDataSizeInKilobytes;

  final TfArg<num> saLifetimeInSeconds;

  @internal
  Map<String, Object?> encode() => {
    'dh_group': dhGroup.toTfJson(),
    'ike_encryption': ikeEncryption.toTfJson(),
    'ike_integrity': ikeIntegrity.toTfJson(),
    'ipsec_encryption': ipsecEncryption.toTfJson(),
    'ipsec_integrity': ipsecIntegrity.toTfJson(),
    'pfs_group': pfsGroup.toTfJson(),
    'sa_data_size_in_kilobytes': saDataSizeInKilobytes.toTfJson(),
    'sa_lifetime_in_seconds': saLifetimeInSeconds.toTfJson(),
  };
}

/// `dh_group` — derived from the provider schema description.
extension type const VirtualNetworkGatewayDhGroup._(TfArg<String> _)
    implements TfArg<String> {
  VirtualNetworkGatewayDhGroup.variable(String name)
    : this._(TfArg.variable(name));
  VirtualNetworkGatewayDhGroup.expression(String template)
    : this._(TfArg.expression(template));
  const VirtualNetworkGatewayDhGroup.arg(TfArg<String> arg) : this._(arg);

  static const dhgroup1 = VirtualNetworkGatewayDhGroup._(
    TfArgLiteral('DHGroup1'),
  );
  static const dhgroup14 = VirtualNetworkGatewayDhGroup._(
    TfArgLiteral('DHGroup14'),
  );
  static const dhgroup2 = VirtualNetworkGatewayDhGroup._(
    TfArgLiteral('DHGroup2'),
  );
  static const dhgroup24 = VirtualNetworkGatewayDhGroup._(
    TfArgLiteral('DHGroup24'),
  );
  static const dhgroup2048 = VirtualNetworkGatewayDhGroup._(
    TfArgLiteral('DHGroup2048'),
  );
  static const ecp384 = VirtualNetworkGatewayDhGroup._(TfArgLiteral('ECP384'));
  static const ecp256 = VirtualNetworkGatewayDhGroup._(TfArgLiteral('ECP256'));
  static const none = VirtualNetworkGatewayDhGroup._(TfArgLiteral('None'));

  static const List<VirtualNetworkGatewayDhGroup> values = [
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
extension type const VirtualNetworkGatewayIkeEncryption._(TfArg<String> _)
    implements TfArg<String> {
  VirtualNetworkGatewayIkeEncryption.variable(String name)
    : this._(TfArg.variable(name));
  VirtualNetworkGatewayIkeEncryption.expression(String template)
    : this._(TfArg.expression(template));
  const VirtualNetworkGatewayIkeEncryption.arg(TfArg<String> arg) : this._(arg);

  static const aes192 = VirtualNetworkGatewayIkeEncryption._(
    TfArgLiteral('AES192'),
  );
  static const aes128 = VirtualNetworkGatewayIkeEncryption._(
    TfArgLiteral('AES128'),
  );
  static const aes256 = VirtualNetworkGatewayIkeEncryption._(
    TfArgLiteral('AES256'),
  );
  static const des = VirtualNetworkGatewayIkeEncryption._(TfArgLiteral('DES'));
  static const des3 = VirtualNetworkGatewayIkeEncryption._(
    TfArgLiteral('DES3'),
  );
  static const gcmaes128 = VirtualNetworkGatewayIkeEncryption._(
    TfArgLiteral('GCMAES128'),
  );
  static const gcmaes256 = VirtualNetworkGatewayIkeEncryption._(
    TfArgLiteral('GCMAES256'),
  );

  static const List<VirtualNetworkGatewayIkeEncryption> values = [
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
extension type const VirtualNetworkGatewayIkeIntegrity._(TfArg<String> _)
    implements TfArg<String> {
  VirtualNetworkGatewayIkeIntegrity.variable(String name)
    : this._(TfArg.variable(name));
  VirtualNetworkGatewayIkeIntegrity.expression(String template)
    : this._(TfArg.expression(template));
  const VirtualNetworkGatewayIkeIntegrity.arg(TfArg<String> arg) : this._(arg);

  static const gcmaes128 = VirtualNetworkGatewayIkeIntegrity._(
    TfArgLiteral('GCMAES128'),
  );
  static const gcmaes256 = VirtualNetworkGatewayIkeIntegrity._(
    TfArgLiteral('GCMAES256'),
  );
  static const md5 = VirtualNetworkGatewayIkeIntegrity._(TfArgLiteral('MD5'));
  static const sha1 = VirtualNetworkGatewayIkeIntegrity._(TfArgLiteral('SHA1'));
  static const sha384 = VirtualNetworkGatewayIkeIntegrity._(
    TfArgLiteral('SHA384'),
  );
  static const sha256 = VirtualNetworkGatewayIkeIntegrity._(
    TfArgLiteral('SHA256'),
  );

  static const List<VirtualNetworkGatewayIkeIntegrity> values = [
    gcmaes128,
    gcmaes256,
    md5,
    sha1,
    sha384,
    sha256,
  ];
}

/// `ipsec_encryption` — derived from the provider schema description.
extension type const VirtualNetworkGatewayIpsecEncryption._(TfArg<String> _)
    implements TfArg<String> {
  VirtualNetworkGatewayIpsecEncryption.variable(String name)
    : this._(TfArg.variable(name));
  VirtualNetworkGatewayIpsecEncryption.expression(String template)
    : this._(TfArg.expression(template));
  const VirtualNetworkGatewayIpsecEncryption.arg(TfArg<String> arg)
    : this._(arg);

  static const aes192 = VirtualNetworkGatewayIpsecEncryption._(
    TfArgLiteral('AES192'),
  );
  static const aes128 = VirtualNetworkGatewayIpsecEncryption._(
    TfArgLiteral('AES128'),
  );
  static const aes256 = VirtualNetworkGatewayIpsecEncryption._(
    TfArgLiteral('AES256'),
  );
  static const des = VirtualNetworkGatewayIpsecEncryption._(
    TfArgLiteral('DES'),
  );
  static const des3 = VirtualNetworkGatewayIpsecEncryption._(
    TfArgLiteral('DES3'),
  );
  static const gcmaes192 = VirtualNetworkGatewayIpsecEncryption._(
    TfArgLiteral('GCMAES192'),
  );
  static const gcmaes128 = VirtualNetworkGatewayIpsecEncryption._(
    TfArgLiteral('GCMAES128'),
  );
  static const gcmaes256 = VirtualNetworkGatewayIpsecEncryption._(
    TfArgLiteral('GCMAES256'),
  );
  static const none = VirtualNetworkGatewayIpsecEncryption._(
    TfArgLiteral('None'),
  );

  static const List<VirtualNetworkGatewayIpsecEncryption> values = [
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
extension type const VirtualNetworkGatewayIpsecIntegrity._(TfArg<String> _)
    implements TfArg<String> {
  VirtualNetworkGatewayIpsecIntegrity.variable(String name)
    : this._(TfArg.variable(name));
  VirtualNetworkGatewayIpsecIntegrity.expression(String template)
    : this._(TfArg.expression(template));
  const VirtualNetworkGatewayIpsecIntegrity.arg(TfArg<String> arg)
    : this._(arg);

  static const gcmaes192 = VirtualNetworkGatewayIpsecIntegrity._(
    TfArgLiteral('GCMAES192'),
  );
  static const gcmaes128 = VirtualNetworkGatewayIpsecIntegrity._(
    TfArgLiteral('GCMAES128'),
  );
  static const gcmaes256 = VirtualNetworkGatewayIpsecIntegrity._(
    TfArgLiteral('GCMAES256'),
  );
  static const md5 = VirtualNetworkGatewayIpsecIntegrity._(TfArgLiteral('MD5'));
  static const sha1 = VirtualNetworkGatewayIpsecIntegrity._(
    TfArgLiteral('SHA1'),
  );
  static const sha256 = VirtualNetworkGatewayIpsecIntegrity._(
    TfArgLiteral('SHA256'),
  );

  static const List<VirtualNetworkGatewayIpsecIntegrity> values = [
    gcmaes192,
    gcmaes128,
    gcmaes256,
    md5,
    sha1,
    sha256,
  ];
}

/// `pfs_group` — derived from the provider schema description.
extension type const VirtualNetworkGatewayPfsGroup._(TfArg<String> _)
    implements TfArg<String> {
  VirtualNetworkGatewayPfsGroup.variable(String name)
    : this._(TfArg.variable(name));
  VirtualNetworkGatewayPfsGroup.expression(String template)
    : this._(TfArg.expression(template));
  const VirtualNetworkGatewayPfsGroup.arg(TfArg<String> arg) : this._(arg);

  static const ecp384 = VirtualNetworkGatewayPfsGroup._(TfArgLiteral('ECP384'));
  static const ecp256 = VirtualNetworkGatewayPfsGroup._(TfArgLiteral('ECP256'));
  static const none = VirtualNetworkGatewayPfsGroup._(TfArgLiteral('None'));
  static const pfsmm = VirtualNetworkGatewayPfsGroup._(TfArgLiteral('PFSMM'));
  static const pfs1 = VirtualNetworkGatewayPfsGroup._(TfArgLiteral('PFS1'));
  static const pfs14 = VirtualNetworkGatewayPfsGroup._(TfArgLiteral('PFS14'));
  static const pfs2 = VirtualNetworkGatewayPfsGroup._(TfArgLiteral('PFS2'));
  static const pfs24 = VirtualNetworkGatewayPfsGroup._(TfArgLiteral('PFS24'));
  static const pfs2048 = VirtualNetworkGatewayPfsGroup._(
    TfArgLiteral('PFS2048'),
  );

  static const List<VirtualNetworkGatewayPfsGroup> values = [
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

/// Typed helper for the `vpn_client_configuration.radius_server` block of
/// `azurerm_virtual_network_gateway` (derived from provider schema).
@immutable
final class VirtualNetworkGatewayRadiusServer {
  const VirtualNetworkGatewayRadiusServer({
    required this.address,
    required this.score,
    required this.secret,
  });

  final TfArg<String> address;

  final TfArg<num> score;

  final Sensitive<String> secret;

  @internal
  Map<String, Object?> encode() => {
    'address': address.toTfJson(),
    'score': score.toTfJson(),
    'secret': secret.toTfJson(),
  };
}

/// Typed helper for the `vpn_client_configuration.revoked_certificate` block of
/// `azurerm_virtual_network_gateway` (derived from provider schema).
@immutable
final class VirtualNetworkGatewayRevokedCertificate {
  const VirtualNetworkGatewayRevokedCertificate({
    required this.name,
    required this.thumbprint,
  });

  final TfArg<String> name;

  final TfArg<String> thumbprint;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'thumbprint': thumbprint.toTfJson(),
  };
}

/// Typed helper for the `vpn_client_configuration.root_certificate` block of
/// `azurerm_virtual_network_gateway` (derived from provider schema).
@immutable
final class VirtualNetworkGatewayRootCertificate {
  const VirtualNetworkGatewayRootCertificate({
    required this.name,
    required this.publicCertData,
  });

  final TfArg<String> name;

  final TfArg<String> publicCertData;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'public_cert_data': publicCertData.toTfJson(),
  };
}

/// Typed helper for the `vpn_client_configuration.virtual_network_gateway_client_connection` block of
/// `azurerm_virtual_network_gateway` (derived from provider schema).
@immutable
final class VirtualNetworkGatewayClientConnection {
  const VirtualNetworkGatewayClientConnection({
    required this.addressPrefixes,
    required this.name,
    required this.policyGroupNames,
  });

  final TfArg<List<String>> addressPrefixes;

  final TfArg<String> name;

  final TfArg<List<String>> policyGroupNames;

  @internal
  Map<String, Object?> encode() => {
    'address_prefixes': addressPrefixes.toTfJson(),
    'name': name.toTfJson(),
    'policy_group_names': policyGroupNames.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_virtual_network_gateway`.
final class AzurermVirtualNetworkGateway extends Resource {
  static const String tfType = 'azurerm_virtual_network_gateway';

  AzurermVirtualNetworkGateway(
    super.localName, {
    TfArg<bool>? activeActive,
    TfArg<bool>? bgpEnabled,
    TfArg<bool>? bgpRouteTranslationForNatEnabled,
    TfArg<String>? defaultLocalNetworkGatewayId,
    TfArg<bool>? dnsForwardingEnabled,
    TfArg<String>? edgeZone,
    VirtualNetworkGatewayGeneration? generation,
    TfArg<bool>? ipSecReplayProtectionEnabled,
    required TfArg<String> location,
    TfArg<num>? maximumScaleUnit,
    TfArg<num>? minimumScaleUnit,
    required TfArg<String> name,
    TfArg<bool>? privateIpAddressEnabled,
    TfArg<bool>? remoteVnetTrafficEnabled,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> sku,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> type,
    TfArg<bool>? virtualWanTrafficEnabled,
    VirtualNetworkGatewayVpnType? vpnType,
    VirtualNetworkGatewayBgpSettings? bgpSettings,
    VirtualNetworkGatewayCustomRoute? customRoute,
    required List<VirtualNetworkGatewayIpConfiguration> ipConfiguration,
    List<VirtualNetworkGatewayPolicyGroup>? policyGroup,
    VirtualNetworkGatewayVpnClientConfiguration? vpnClientConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'active_active': ?activeActive,
           'bgp_enabled': ?bgpEnabled,
           'bgp_route_translation_for_nat_enabled':
               ?bgpRouteTranslationForNatEnabled,
           'default_local_network_gateway_id': ?defaultLocalNetworkGatewayId,
           'dns_forwarding_enabled': ?dnsForwardingEnabled,
           'edge_zone': ?edgeZone,
           'generation': ?generation,
           'ip_sec_replay_protection_enabled': ?ipSecReplayProtectionEnabled,
           'location': location,
           'maximum_scale_unit': ?maximumScaleUnit,
           'minimum_scale_unit': ?minimumScaleUnit,
           'name': name,
           'private_ip_address_enabled': ?privateIpAddressEnabled,
           'remote_vnet_traffic_enabled': ?remoteVnetTrafficEnabled,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'sku': sku,
           'tags': ?tags,
           'type': type,
           'virtual_wan_traffic_enabled': ?virtualWanTrafficEnabled,
           'vpn_type': ?vpnType,
           if (bgpSettings != null)
             'bgp_settings': TfArg.literal(bgpSettings.encode()),
           if (customRoute != null)
             'custom_route': TfArg.literal(customRoute.encode()),
           'ip_configuration': TfArg.literal([
             for (final e in ipConfiguration) e.encode(),
           ]),
           if (policyGroup != null)
             'policy_group': TfArg.literal([
               for (final e in policyGroup) e.encode(),
             ]),
           if (vpnClientConfiguration != null)
             'vpn_client_configuration': TfArg.literal(
               vpnClientConfiguration.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermVirtualNetworkGatewaySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermVirtualNetworkGateway>`.
  RefTo<AzurermVirtualNetworkGateway> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `active_active` attribute.
  TfRef<bool> get activeActive => TfRef.attribute<bool>(this, 'active_active');

  /// Reference to `bgp_enabled` attribute.
  TfRef<bool> get bgpEnabled => TfRef.attribute<bool>(this, 'bgp_enabled');

  /// Reference to `bgp_route_translation_for_nat_enabled` attribute.
  TfRef<bool> get bgpRouteTranslationForNatEnabled =>
      TfRef.attribute<bool>(this, 'bgp_route_translation_for_nat_enabled');

  /// Reference to `default_local_network_gateway_id` attribute.
  TfRef<String> get defaultLocalNetworkGatewayId =>
      TfRef.attribute<String>(this, 'default_local_network_gateway_id');

  /// Reference to `dns_forwarding_enabled` attribute.
  TfRef<bool> get dnsForwardingEnabled =>
      TfRef.attribute<bool>(this, 'dns_forwarding_enabled');

  /// Reference to `edge_zone` attribute.
  TfRef<String> get edgeZone => TfRef.attribute<String>(this, 'edge_zone');

  /// Reference to `generation` attribute.
  TfRef<String> get generation => TfRef.attribute<String>(this, 'generation');

  /// Reference to `ip_sec_replay_protection_enabled` attribute.
  TfRef<bool> get ipSecReplayProtectionEnabled =>
      TfRef.attribute<bool>(this, 'ip_sec_replay_protection_enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `maximum_scale_unit` attribute.
  TfRef<num> get maximumScaleUnit =>
      TfRef.attribute<num>(this, 'maximum_scale_unit');

  /// Reference to `minimum_scale_unit` attribute.
  TfRef<num> get minimumScaleUnit =>
      TfRef.attribute<num>(this, 'minimum_scale_unit');

  /// Reference to `private_ip_address_enabled` attribute.
  TfRef<bool> get privateIpAddressEnabled =>
      TfRef.attribute<bool>(this, 'private_ip_address_enabled');

  /// Reference to `remote_vnet_traffic_enabled` attribute.
  TfRef<bool> get remoteVnetTrafficEnabled =>
      TfRef.attribute<bool>(this, 'remote_vnet_traffic_enabled');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `sku` attribute.
  TfRef<String> get sku => TfRef.attribute<String>(this, 'sku');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `virtual_wan_traffic_enabled` attribute.
  TfRef<bool> get virtualWanTrafficEnabled =>
      TfRef.attribute<bool>(this, 'virtual_wan_traffic_enabled');

  /// Reference to `vpn_type` attribute.
  TfRef<String> get vpnType => TfRef.attribute<String>(this, 'vpn_type');
}
