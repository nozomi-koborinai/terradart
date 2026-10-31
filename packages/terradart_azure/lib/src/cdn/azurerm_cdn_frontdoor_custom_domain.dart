// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_cdn_frontdoor_custom_domain`.
const Set<String> _azurermCdnFrontdoorCustomDomainSensitive = <String>{};

/// Typed helper for the `tls` block of
/// `azurerm_cdn_frontdoor_custom_domain` (derived from provider schema).
@immutable
final class CdnFrontdoorCustomDomainTls {
  const CdnFrontdoorCustomDomainTls({
    this.cdnFrontdoorSecretId,
    this.certificateType,
    this.minimumVersion,
    this.cipherSuite,
  });

  final TfArg<String>? cdnFrontdoorSecretId;

  final CdnFrontdoorCustomDomainCertificateType? certificateType;

  final CdnFrontdoorCustomDomainMinimumVersion? minimumVersion;

  final CdnFrontdoorCustomDomainCipherSuite? cipherSuite;

  @internal
  Map<String, Object?> encode() => {
    'cdn_frontdoor_secret_id': ?cdnFrontdoorSecretId?.toTfJson(),
    'certificate_type': ?certificateType?.toTfJson(),
    'minimum_version': ?minimumVersion?.toTfJson(),
    'cipher_suite': ?cipherSuite?.encode(),
  };
}

/// `certificate_type` — derived from the provider schema description.
extension type const CdnFrontdoorCustomDomainCertificateType._(TfArg<String> _)
    implements TfArg<String> {
  CdnFrontdoorCustomDomainCertificateType.variable(String name)
    : this._(TfArg.variable(name));
  CdnFrontdoorCustomDomainCertificateType.expression(String template)
    : this._(TfArg.expression(template));
  const CdnFrontdoorCustomDomainCertificateType.arg(TfArg<String> arg)
    : this._(arg);

  static const customercertificate = CdnFrontdoorCustomDomainCertificateType._(
    TfArgLiteral('CustomerCertificate'),
  );
  static const managedcertificate = CdnFrontdoorCustomDomainCertificateType._(
    TfArgLiteral('ManagedCertificate'),
  );

  static const List<CdnFrontdoorCustomDomainCertificateType> values = [
    customercertificate,
    managedcertificate,
  ];
}

/// `minimum_version` — derived from the provider schema description.
extension type const CdnFrontdoorCustomDomainMinimumVersion._(TfArg<String> _)
    implements TfArg<String> {
  CdnFrontdoorCustomDomainMinimumVersion.variable(String name)
    : this._(TfArg.variable(name));
  CdnFrontdoorCustomDomainMinimumVersion.expression(String template)
    : this._(TfArg.expression(template));
  const CdnFrontdoorCustomDomainMinimumVersion.arg(TfArg<String> arg)
    : this._(arg);

  static const tls12 = CdnFrontdoorCustomDomainMinimumVersion._(
    TfArgLiteral('TLS12'),
  );

  static const List<CdnFrontdoorCustomDomainMinimumVersion> values = [tls12];
}

/// Typed helper for the `tls.cipher_suite` block of
/// `azurerm_cdn_frontdoor_custom_domain` (derived from provider schema).
@immutable
final class CdnFrontdoorCustomDomainCipherSuite {
  const CdnFrontdoorCustomDomainCipherSuite({
    required this.type,
    this.customCiphers,
  });

  final CdnFrontdoorCustomDomainType type;

  final CdnFrontdoorCustomDomainCustomCiphers? customCiphers;

  @internal
  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'custom_ciphers': ?customCiphers?.encode(),
  };
}

/// `type` — derived from the provider schema description.
extension type const CdnFrontdoorCustomDomainType._(TfArg<String> _)
    implements TfArg<String> {
  CdnFrontdoorCustomDomainType.variable(String name)
    : this._(TfArg.variable(name));
  CdnFrontdoorCustomDomainType.expression(String template)
    : this._(TfArg.expression(template));
  const CdnFrontdoorCustomDomainType.arg(TfArg<String> arg) : this._(arg);

  static const customized = CdnFrontdoorCustomDomainType._(
    TfArgLiteral('Customized'),
  );
  static const tls122023 = CdnFrontdoorCustomDomainType._(
    TfArgLiteral('TLS12_2023'),
  );
  static const tls122022 = CdnFrontdoorCustomDomainType._(
    TfArgLiteral('TLS12_2022'),
  );

  static const List<CdnFrontdoorCustomDomainType> values = [
    customized,
    tls122023,
    tls122022,
  ];
}

/// Typed helper for the `tls.cipher_suite.custom_ciphers` block of
/// `azurerm_cdn_frontdoor_custom_domain` (derived from provider schema).
@immutable
final class CdnFrontdoorCustomDomainCustomCiphers {
  const CdnFrontdoorCustomDomainCustomCiphers({this.tls12, this.tls13});

  final EnumList<CdnFrontdoorCustomDomainTls12>? tls12;

  final EnumList<CdnFrontdoorCustomDomainTls13>? tls13;

  @internal
  Map<String, Object?> encode() => {
    'tls12': ?tls12?.toTfJson(),
    'tls13': ?tls13?.toTfJson(),
  };
}

/// `tls12` — derived from the provider schema description.
extension type const CdnFrontdoorCustomDomainTls12._(TfArg<String> _)
    implements TfArg<String> {
  CdnFrontdoorCustomDomainTls12.variable(String name)
    : this._(TfArg.variable(name));
  CdnFrontdoorCustomDomainTls12.expression(String template)
    : this._(TfArg.expression(template));
  const CdnFrontdoorCustomDomainTls12.arg(TfArg<String> arg) : this._(arg);

  static const ecdheRsaAes128GcmSha256 = CdnFrontdoorCustomDomainTls12._(
    TfArgLiteral('ECDHE_RSA_AES128_GCM_SHA256'),
  );
  static const ecdheRsaAes256GcmSha384 = CdnFrontdoorCustomDomainTls12._(
    TfArgLiteral('ECDHE_RSA_AES256_GCM_SHA384'),
  );
  static const ecdheRsaAes128Sha256 = CdnFrontdoorCustomDomainTls12._(
    TfArgLiteral('ECDHE_RSA_AES128_SHA256'),
  );
  static const ecdheRsaAes256Sha384 = CdnFrontdoorCustomDomainTls12._(
    TfArgLiteral('ECDHE_RSA_AES256_SHA384'),
  );

  static const List<CdnFrontdoorCustomDomainTls12> values = [
    ecdheRsaAes128GcmSha256,
    ecdheRsaAes256GcmSha384,
    ecdheRsaAes128Sha256,
    ecdheRsaAes256Sha384,
  ];
}

/// `tls13` — derived from the provider schema description.
extension type const CdnFrontdoorCustomDomainTls13._(TfArg<String> _)
    implements TfArg<String> {
  CdnFrontdoorCustomDomainTls13.variable(String name)
    : this._(TfArg.variable(name));
  CdnFrontdoorCustomDomainTls13.expression(String template)
    : this._(TfArg.expression(template));
  const CdnFrontdoorCustomDomainTls13.arg(TfArg<String> arg) : this._(arg);

  static const tlsAes128GcmSha256 = CdnFrontdoorCustomDomainTls13._(
    TfArgLiteral('TLS_AES_128_GCM_SHA256'),
  );
  static const tlsAes256GcmSha384 = CdnFrontdoorCustomDomainTls13._(
    TfArgLiteral('TLS_AES_256_GCM_SHA384'),
  );

  static const List<CdnFrontdoorCustomDomainTls13> values = [
    tlsAes128GcmSha256,
    tlsAes256GcmSha384,
  ];
}

/// Factory wrapper for `azurerm_cdn_frontdoor_custom_domain`.
final class AzurermCdnFrontdoorCustomDomain extends Resource {
  static const String tfType = 'azurerm_cdn_frontdoor_custom_domain';

  AzurermCdnFrontdoorCustomDomain(
    super.localName, {
    required TfArg<String> cdnFrontdoorProfileId,
    TfArg<String>? dnsZoneId,
    required TfArg<String> hostName,
    required TfArg<String> name,
    required CdnFrontdoorCustomDomainTls tls,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cdn_frontdoor_profile_id': cdnFrontdoorProfileId,
           'dns_zone_id': ?dnsZoneId,
           'host_name': hostName,
           'name': name,
           'tls': TfArg.literal(tls.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermCdnFrontdoorCustomDomainSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermCdnFrontdoorCustomDomain>`.
  RefTo<AzurermCdnFrontdoorCustomDomain> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `expiration_date` attribute.
  TfRef<String> get expirationDate =>
      TfRef.attribute<String>(this, 'expiration_date');

  /// Reference to `validation_token` attribute.
  TfRef<String> get validationToken =>
      TfRef.attribute<String>(this, 'validation_token');

  /// Reference to `cdn_frontdoor_profile_id` attribute.
  TfRef<String> get cdnFrontdoorProfileId =>
      TfRef.attribute<String>(this, 'cdn_frontdoor_profile_id');

  /// Reference to `dns_zone_id` attribute.
  TfRef<String> get dnsZoneId => TfRef.attribute<String>(this, 'dns_zone_id');

  /// Reference to `host_name` attribute.
  TfRef<String> get hostName => TfRef.attribute<String>(this, 'host_name');
}
