// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_vpn_server_configuration`.
const Set<String> _azurermVpnServerConfigurationSensitive = <String>{
  'radius.server.secret',
};

/// Vpn Server Configuration Vpn Authentication enum for `vpn_authentication_types`.
extension type const VpnServerConfigurationVpnAuthenticationTypes._(
  TfArg<String> _
) implements TfArg<String> {
  VpnServerConfigurationVpnAuthenticationTypes.variable(String name)
    : this._(TfArg.variable(name));
  VpnServerConfigurationVpnAuthenticationTypes.expression(String template)
    : this._(TfArg.expression(template));
  const VpnServerConfigurationVpnAuthenticationTypes.arg(TfArg<String> arg)
    : this._(arg);

  static const aad = VpnServerConfigurationVpnAuthenticationTypes._(
    TfArgLiteral('AAD'),
  );
  static const certificate = VpnServerConfigurationVpnAuthenticationTypes._(
    TfArgLiteral('Certificate'),
  );
  static const radius = VpnServerConfigurationVpnAuthenticationTypes._(
    TfArgLiteral('Radius'),
  );

  static const List<VpnServerConfigurationVpnAuthenticationTypes> values = [
    aad,
    certificate,
    radius,
  ];
}

/// Vpn Server Configuration Vpn enum for `vpn_protocols`.
extension type const VpnServerConfigurationVpnProtocols._(TfArg<String> _)
    implements TfArg<String> {
  VpnServerConfigurationVpnProtocols.variable(String name)
    : this._(TfArg.variable(name));
  VpnServerConfigurationVpnProtocols.expression(String template)
    : this._(TfArg.expression(template));
  const VpnServerConfigurationVpnProtocols.arg(TfArg<String> arg) : this._(arg);

  static const ikev2 = VpnServerConfigurationVpnProtocols._(
    TfArgLiteral('IkeV2'),
  );
  static const openvpn = VpnServerConfigurationVpnProtocols._(
    TfArgLiteral('OpenVPN'),
  );

  static const List<VpnServerConfigurationVpnProtocols> values = [
    ikev2,
    openvpn,
  ];
}

/// Typed helper for the `azure_active_directory_authentication` block of
/// `azurerm_vpn_server_configuration` (derived from provider schema).
@immutable
final class VpnServerConfigurationAzureActiveDirectoryAuthentication {
  const VpnServerConfigurationAzureActiveDirectoryAuthentication({
    required this.audience,
    required this.issuer,
    required this.tenant,
  });

  final TfArg<String> audience;

  final TfArg<String> issuer;

  final TfArg<String> tenant;

  @internal
  Map<String, Object?> encode() => {
    'audience': audience.toTfJson(),
    'issuer': issuer.toTfJson(),
    'tenant': tenant.toTfJson(),
  };
}

/// Typed helper for the `client_revoked_certificate` block of
/// `azurerm_vpn_server_configuration` (derived from provider schema).
@immutable
final class VpnServerConfigurationClientRevokedCertificate {
  const VpnServerConfigurationClientRevokedCertificate({
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

/// Typed helper for the `client_root_certificate` block of
/// `azurerm_vpn_server_configuration` (derived from provider schema).
@immutable
final class VpnServerConfigurationClientRootCertificate {
  const VpnServerConfigurationClientRootCertificate({
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

/// Typed helper for the `ipsec_policy` block of
/// `azurerm_vpn_server_configuration` (derived from provider schema).
@immutable
final class VpnServerConfigurationIpsecPolicy {
  const VpnServerConfigurationIpsecPolicy({
    required this.dhGroup,
    required this.ikeEncryption,
    required this.ikeIntegrity,
    required this.ipsecEncryption,
    required this.ipsecIntegrity,
    required this.pfsGroup,
    required this.saDataSizeKilobytes,
    required this.saLifetimeSeconds,
  });

  final VpnServerConfigurationDhGroup dhGroup;

  final VpnServerConfigurationIkeEncryption ikeEncryption;

  final VpnServerConfigurationIkeIntegrity ikeIntegrity;

  final VpnServerConfigurationIpsecEncryption ipsecEncryption;

  final VpnServerConfigurationIpsecIntegrity ipsecIntegrity;

  final VpnServerConfigurationPfsGroup pfsGroup;

  final TfArg<num> saDataSizeKilobytes;

  final TfArg<num> saLifetimeSeconds;

  @internal
  Map<String, Object?> encode() => {
    'dh_group': dhGroup.toTfJson(),
    'ike_encryption': ikeEncryption.toTfJson(),
    'ike_integrity': ikeIntegrity.toTfJson(),
    'ipsec_encryption': ipsecEncryption.toTfJson(),
    'ipsec_integrity': ipsecIntegrity.toTfJson(),
    'pfs_group': pfsGroup.toTfJson(),
    'sa_data_size_kilobytes': saDataSizeKilobytes.toTfJson(),
    'sa_lifetime_seconds': saLifetimeSeconds.toTfJson(),
  };
}

/// `dh_group` — derived from the provider schema description.
extension type const VpnServerConfigurationDhGroup._(TfArg<String> _)
    implements TfArg<String> {
  VpnServerConfigurationDhGroup.variable(String name)
    : this._(TfArg.variable(name));
  VpnServerConfigurationDhGroup.expression(String template)
    : this._(TfArg.expression(template));
  const VpnServerConfigurationDhGroup.arg(TfArg<String> arg) : this._(arg);

  static const dhgroup1 = VpnServerConfigurationDhGroup._(
    TfArgLiteral('DHGroup1'),
  );
  static const dhgroup14 = VpnServerConfigurationDhGroup._(
    TfArgLiteral('DHGroup14'),
  );
  static const dhgroup2 = VpnServerConfigurationDhGroup._(
    TfArgLiteral('DHGroup2'),
  );
  static const dhgroup24 = VpnServerConfigurationDhGroup._(
    TfArgLiteral('DHGroup24'),
  );
  static const dhgroup2048 = VpnServerConfigurationDhGroup._(
    TfArgLiteral('DHGroup2048'),
  );
  static const ecp384 = VpnServerConfigurationDhGroup._(TfArgLiteral('ECP384'));
  static const ecp256 = VpnServerConfigurationDhGroup._(TfArgLiteral('ECP256'));
  static const none = VpnServerConfigurationDhGroup._(TfArgLiteral('None'));

  static const List<VpnServerConfigurationDhGroup> values = [
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
extension type const VpnServerConfigurationIkeEncryption._(TfArg<String> _)
    implements TfArg<String> {
  VpnServerConfigurationIkeEncryption.variable(String name)
    : this._(TfArg.variable(name));
  VpnServerConfigurationIkeEncryption.expression(String template)
    : this._(TfArg.expression(template));
  const VpnServerConfigurationIkeEncryption.arg(TfArg<String> arg)
    : this._(arg);

  static const aes192 = VpnServerConfigurationIkeEncryption._(
    TfArgLiteral('AES192'),
  );
  static const aes128 = VpnServerConfigurationIkeEncryption._(
    TfArgLiteral('AES128'),
  );
  static const aes256 = VpnServerConfigurationIkeEncryption._(
    TfArgLiteral('AES256'),
  );
  static const des = VpnServerConfigurationIkeEncryption._(TfArgLiteral('DES'));
  static const des3 = VpnServerConfigurationIkeEncryption._(
    TfArgLiteral('DES3'),
  );
  static const gcmaes128 = VpnServerConfigurationIkeEncryption._(
    TfArgLiteral('GCMAES128'),
  );
  static const gcmaes256 = VpnServerConfigurationIkeEncryption._(
    TfArgLiteral('GCMAES256'),
  );

  static const List<VpnServerConfigurationIkeEncryption> values = [
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
extension type const VpnServerConfigurationIkeIntegrity._(TfArg<String> _)
    implements TfArg<String> {
  VpnServerConfigurationIkeIntegrity.variable(String name)
    : this._(TfArg.variable(name));
  VpnServerConfigurationIkeIntegrity.expression(String template)
    : this._(TfArg.expression(template));
  const VpnServerConfigurationIkeIntegrity.arg(TfArg<String> arg) : this._(arg);

  static const gcmaes128 = VpnServerConfigurationIkeIntegrity._(
    TfArgLiteral('GCMAES128'),
  );
  static const gcmaes256 = VpnServerConfigurationIkeIntegrity._(
    TfArgLiteral('GCMAES256'),
  );
  static const md5 = VpnServerConfigurationIkeIntegrity._(TfArgLiteral('MD5'));
  static const sha1 = VpnServerConfigurationIkeIntegrity._(
    TfArgLiteral('SHA1'),
  );
  static const sha384 = VpnServerConfigurationIkeIntegrity._(
    TfArgLiteral('SHA384'),
  );
  static const sha256 = VpnServerConfigurationIkeIntegrity._(
    TfArgLiteral('SHA256'),
  );

  static const List<VpnServerConfigurationIkeIntegrity> values = [
    gcmaes128,
    gcmaes256,
    md5,
    sha1,
    sha384,
    sha256,
  ];
}

/// `ipsec_encryption` — derived from the provider schema description.
extension type const VpnServerConfigurationIpsecEncryption._(TfArg<String> _)
    implements TfArg<String> {
  VpnServerConfigurationIpsecEncryption.variable(String name)
    : this._(TfArg.variable(name));
  VpnServerConfigurationIpsecEncryption.expression(String template)
    : this._(TfArg.expression(template));
  const VpnServerConfigurationIpsecEncryption.arg(TfArg<String> arg)
    : this._(arg);

  static const aes192 = VpnServerConfigurationIpsecEncryption._(
    TfArgLiteral('AES192'),
  );
  static const aes128 = VpnServerConfigurationIpsecEncryption._(
    TfArgLiteral('AES128'),
  );
  static const aes256 = VpnServerConfigurationIpsecEncryption._(
    TfArgLiteral('AES256'),
  );
  static const des = VpnServerConfigurationIpsecEncryption._(
    TfArgLiteral('DES'),
  );
  static const des3 = VpnServerConfigurationIpsecEncryption._(
    TfArgLiteral('DES3'),
  );
  static const gcmaes192 = VpnServerConfigurationIpsecEncryption._(
    TfArgLiteral('GCMAES192'),
  );
  static const gcmaes128 = VpnServerConfigurationIpsecEncryption._(
    TfArgLiteral('GCMAES128'),
  );
  static const gcmaes256 = VpnServerConfigurationIpsecEncryption._(
    TfArgLiteral('GCMAES256'),
  );
  static const none = VpnServerConfigurationIpsecEncryption._(
    TfArgLiteral('None'),
  );

  static const List<VpnServerConfigurationIpsecEncryption> values = [
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
extension type const VpnServerConfigurationIpsecIntegrity._(TfArg<String> _)
    implements TfArg<String> {
  VpnServerConfigurationIpsecIntegrity.variable(String name)
    : this._(TfArg.variable(name));
  VpnServerConfigurationIpsecIntegrity.expression(String template)
    : this._(TfArg.expression(template));
  const VpnServerConfigurationIpsecIntegrity.arg(TfArg<String> arg)
    : this._(arg);

  static const gcmaes192 = VpnServerConfigurationIpsecIntegrity._(
    TfArgLiteral('GCMAES192'),
  );
  static const gcmaes128 = VpnServerConfigurationIpsecIntegrity._(
    TfArgLiteral('GCMAES128'),
  );
  static const gcmaes256 = VpnServerConfigurationIpsecIntegrity._(
    TfArgLiteral('GCMAES256'),
  );
  static const md5 = VpnServerConfigurationIpsecIntegrity._(
    TfArgLiteral('MD5'),
  );
  static const sha1 = VpnServerConfigurationIpsecIntegrity._(
    TfArgLiteral('SHA1'),
  );
  static const sha256 = VpnServerConfigurationIpsecIntegrity._(
    TfArgLiteral('SHA256'),
  );

  static const List<VpnServerConfigurationIpsecIntegrity> values = [
    gcmaes192,
    gcmaes128,
    gcmaes256,
    md5,
    sha1,
    sha256,
  ];
}

/// `pfs_group` — derived from the provider schema description.
extension type const VpnServerConfigurationPfsGroup._(TfArg<String> _)
    implements TfArg<String> {
  VpnServerConfigurationPfsGroup.variable(String name)
    : this._(TfArg.variable(name));
  VpnServerConfigurationPfsGroup.expression(String template)
    : this._(TfArg.expression(template));
  const VpnServerConfigurationPfsGroup.arg(TfArg<String> arg) : this._(arg);

  static const ecp384 = VpnServerConfigurationPfsGroup._(
    TfArgLiteral('ECP384'),
  );
  static const ecp256 = VpnServerConfigurationPfsGroup._(
    TfArgLiteral('ECP256'),
  );
  static const none = VpnServerConfigurationPfsGroup._(TfArgLiteral('None'));
  static const pfsmm = VpnServerConfigurationPfsGroup._(TfArgLiteral('PFSMM'));
  static const pfs1 = VpnServerConfigurationPfsGroup._(TfArgLiteral('PFS1'));
  static const pfs14 = VpnServerConfigurationPfsGroup._(TfArgLiteral('PFS14'));
  static const pfs2 = VpnServerConfigurationPfsGroup._(TfArgLiteral('PFS2'));
  static const pfs24 = VpnServerConfigurationPfsGroup._(TfArgLiteral('PFS24'));
  static const pfs2048 = VpnServerConfigurationPfsGroup._(
    TfArgLiteral('PFS2048'),
  );

  static const List<VpnServerConfigurationPfsGroup> values = [
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

/// Typed helper for the `radius` block of
/// `azurerm_vpn_server_configuration` (derived from provider schema).
@immutable
final class VpnServerConfigurationRadius {
  const VpnServerConfigurationRadius({
    this.clientRootCertificate,
    this.server,
    this.serverRootCertificate,
  });

  final List<VpnServerConfigurationRadiusClientRootCertificate>?
  clientRootCertificate;

  final List<VpnServerConfigurationServer>? server;

  final List<VpnServerConfigurationServerRootCertificate>?
  serverRootCertificate;

  @internal
  Map<String, Object?> encode() => {
    if (clientRootCertificate != null)
      'client_root_certificate': [
        for (final e in clientRootCertificate!) e.encode(),
      ],
    if (server != null) 'server': [for (final e in server!) e.encode()],
    if (serverRootCertificate != null)
      'server_root_certificate': [
        for (final e in serverRootCertificate!) e.encode(),
      ],
  };
}

/// Typed helper for the `radius.client_root_certificate` block of
/// `azurerm_vpn_server_configuration` (derived from provider schema).
@immutable
final class VpnServerConfigurationRadiusClientRootCertificate {
  const VpnServerConfigurationRadiusClientRootCertificate({
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

/// Typed helper for the `radius.server` block of
/// `azurerm_vpn_server_configuration` (derived from provider schema).
@immutable
final class VpnServerConfigurationServer {
  const VpnServerConfigurationServer({
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

/// Typed helper for the `radius.server_root_certificate` block of
/// `azurerm_vpn_server_configuration` (derived from provider schema).
@immutable
final class VpnServerConfigurationServerRootCertificate {
  const VpnServerConfigurationServerRootCertificate({
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

/// Factory wrapper for `azurerm_vpn_server_configuration`.
final class AzurermVpnServerConfiguration extends Resource {
  static const String tfType = 'azurerm_vpn_server_configuration';

  AzurermVpnServerConfiguration(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    required List<VpnServerConfigurationVpnAuthenticationTypes>
    vpnAuthenticationTypes,
    List<VpnServerConfigurationVpnProtocols>? vpnProtocols,
    List<VpnServerConfigurationAzureActiveDirectoryAuthentication>?
    azureActiveDirectoryAuthentication,
    List<VpnServerConfigurationClientRevokedCertificate>?
    clientRevokedCertificate,
    List<VpnServerConfigurationClientRootCertificate>? clientRootCertificate,
    VpnServerConfigurationIpsecPolicy? ipsecPolicy,
    VpnServerConfigurationRadius? radius,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           'vpn_authentication_types': TfArg.literal([
             for (final e in vpnAuthenticationTypes) e.toTfJson(),
           ]),
           if (vpnProtocols != null)
             'vpn_protocols': TfArg.literal([
               for (final e in vpnProtocols) e.toTfJson(),
             ]),
           if (azureActiveDirectoryAuthentication != null)
             'azure_active_directory_authentication': TfArg.literal([
               for (final e in azureActiveDirectoryAuthentication) e.encode(),
             ]),
           if (clientRevokedCertificate != null)
             'client_revoked_certificate': TfArg.literal([
               for (final e in clientRevokedCertificate) e.encode(),
             ]),
           if (clientRootCertificate != null)
             'client_root_certificate': TfArg.literal([
               for (final e in clientRootCertificate) e.encode(),
             ]),
           if (ipsecPolicy != null)
             'ipsec_policy': TfArg.literal(ipsecPolicy.encode()),
           if (radius != null) 'radius': TfArg.literal(radius.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermVpnServerConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermVpnServerConfiguration>`.
  RefTo<AzurermVpnServerConfiguration> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `vpn_authentication_types` attribute.
  TfRef<List<String>> get vpnAuthenticationTypes =>
      TfRef.attribute<List<String>>(this, 'vpn_authentication_types');

  /// Reference to `vpn_protocols` attribute.
  TfRef<List<String>> get vpnProtocols =>
      TfRef.attribute<List<String>>(this, 'vpn_protocols');
}
