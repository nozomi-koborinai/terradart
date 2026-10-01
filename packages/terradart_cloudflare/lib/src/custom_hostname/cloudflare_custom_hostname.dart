// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_custom_hostname`.
const Set<String> _cloudflareCustomHostnameSensitive = <String>{
  'ssl.custom_cert_bundle.custom_key',
  'ssl.custom_key',
};

/// Typed helper for the `ssl` block of
/// `cloudflare_custom_hostname` (derived from provider schema).
@immutable
final class CustomHostnameSsl {
  const CustomHostnameSsl({
    this.bundleMethod,
    this.certificateAuthority,
    this.cloudflareBranding,
    this.customCertificate,
    this.customCsrId,
    this.customKey,
    this.method,
    this.type,
    this.wildcard,
    this.customCertBundle,
    this.settings,
  });

  final CustomHostnameBundleMethod? bundleMethod;

  final CustomHostnameCertificateAuthority? certificateAuthority;

  final TfArg<bool>? cloudflareBranding;

  final TfArg<String>? customCertificate;

  final TfArg<String>? customCsrId;

  final Sensitive<String>? customKey;

  final CustomHostnameMethod? method;

  final CustomHostnameType? type;

  final TfArg<bool>? wildcard;

  final List<CustomHostnameCustomCertBundle>? customCertBundle;

  final CustomHostnameSettings? settings;

  Map<String, Object?> encode() => {
    'bundle_method': ?bundleMethod?.toTfJson(),
    'certificate_authority': ?certificateAuthority?.toTfJson(),
    'cloudflare_branding': ?cloudflareBranding?.toTfJson(),
    'custom_certificate': ?customCertificate?.toTfJson(),
    'custom_csr_id': ?customCsrId?.toTfJson(),
    'custom_key': ?customKey?.toTfJson(),
    'method': ?method?.toTfJson(),
    'type': ?type?.toTfJson(),
    'wildcard': ?wildcard?.toTfJson(),
    if (customCertBundle != null)
      'custom_cert_bundle': [for (final e in customCertBundle!) e.encode()],
    'settings': ?settings?.encode(),
  };
}

/// `bundle_method` — derived from the provider schema description.
extension type const CustomHostnameBundleMethod._(TfArg<String> _)
    implements TfArg<String> {
  CustomHostnameBundleMethod.variable(String name)
    : this._(TfArg.variable(name));
  CustomHostnameBundleMethod.expression(String template)
    : this._(TfArg.expression(template));
  const CustomHostnameBundleMethod.arg(TfArg<String> arg) : this._(arg);

  static const ubiquitous = CustomHostnameBundleMethod._(
    TfArgLiteral('ubiquitous'),
  );
  static const optimal = CustomHostnameBundleMethod._(TfArgLiteral('optimal'));
  static const force = CustomHostnameBundleMethod._(TfArgLiteral('force'));

  static const List<CustomHostnameBundleMethod> values = [
    ubiquitous,
    optimal,
    force,
  ];
}

/// `certificate_authority` — derived from the provider schema description.
extension type const CustomHostnameCertificateAuthority._(TfArg<String> _)
    implements TfArg<String> {
  CustomHostnameCertificateAuthority.variable(String name)
    : this._(TfArg.variable(name));
  CustomHostnameCertificateAuthority.expression(String template)
    : this._(TfArg.expression(template));
  const CustomHostnameCertificateAuthority.arg(TfArg<String> arg) : this._(arg);

  static const digicert = CustomHostnameCertificateAuthority._(
    TfArgLiteral('digicert'),
  );
  static const google = CustomHostnameCertificateAuthority._(
    TfArgLiteral('google'),
  );
  static const letsEncrypt = CustomHostnameCertificateAuthority._(
    TfArgLiteral('lets_encrypt'),
  );
  static const sslCom = CustomHostnameCertificateAuthority._(
    TfArgLiteral('ssl_com'),
  );

  static const List<CustomHostnameCertificateAuthority> values = [
    digicert,
    google,
    letsEncrypt,
    sslCom,
  ];
}

/// `method` — derived from the provider schema description.
extension type const CustomHostnameMethod._(TfArg<String> _)
    implements TfArg<String> {
  CustomHostnameMethod.variable(String name) : this._(TfArg.variable(name));
  CustomHostnameMethod.expression(String template)
    : this._(TfArg.expression(template));
  const CustomHostnameMethod.arg(TfArg<String> arg) : this._(arg);

  static const http = CustomHostnameMethod._(TfArgLiteral('http'));
  static const txt = CustomHostnameMethod._(TfArgLiteral('txt'));
  static const email = CustomHostnameMethod._(TfArgLiteral('email'));

  static const List<CustomHostnameMethod> values = [http, txt, email];
}

/// `type` — derived from the provider schema description.
extension type const CustomHostnameType._(TfArg<String> _)
    implements TfArg<String> {
  CustomHostnameType.variable(String name) : this._(TfArg.variable(name));
  CustomHostnameType.expression(String template)
    : this._(TfArg.expression(template));
  const CustomHostnameType.arg(TfArg<String> arg) : this._(arg);

  static const dv = CustomHostnameType._(TfArgLiteral('dv'));

  static const List<CustomHostnameType> values = [dv];
}

/// Typed helper for the `ssl.custom_cert_bundle` block of
/// `cloudflare_custom_hostname` (derived from provider schema).
@immutable
final class CustomHostnameCustomCertBundle {
  const CustomHostnameCustomCertBundle({
    required this.customCertificate,
    required this.customKey,
  });

  final TfArg<String> customCertificate;

  final Sensitive<String> customKey;

  Map<String, Object?> encode() => {
    'custom_certificate': customCertificate.toTfJson(),
    'custom_key': customKey.toTfJson(),
  };
}

/// Typed helper for the `ssl.settings` block of
/// `cloudflare_custom_hostname` (derived from provider schema).
@immutable
final class CustomHostnameSettings {
  const CustomHostnameSettings({
    this.ciphers,
    this.earlyHints,
    this.http2,
    this.minTlsVersion,
    this.tls13,
  });

  final TfArg<List<String>>? ciphers;

  final CustomHostnameEarlyHints? earlyHints;

  final CustomHostnameHttp2? http2;

  final CustomHostnameMinTlsVersion? minTlsVersion;

  final CustomHostnameTls13? tls13;

  Map<String, Object?> encode() => {
    'ciphers': ?ciphers?.toTfJson(),
    'early_hints': ?earlyHints?.toTfJson(),
    'http2': ?http2?.toTfJson(),
    'min_tls_version': ?minTlsVersion?.toTfJson(),
    'tls_1_3': ?tls13?.toTfJson(),
  };
}

/// `early_hints` — derived from the provider schema description.
extension type const CustomHostnameEarlyHints._(TfArg<String> _)
    implements TfArg<String> {
  CustomHostnameEarlyHints.variable(String name) : this._(TfArg.variable(name));
  CustomHostnameEarlyHints.expression(String template)
    : this._(TfArg.expression(template));
  const CustomHostnameEarlyHints.arg(TfArg<String> arg) : this._(arg);

  static const on = CustomHostnameEarlyHints._(TfArgLiteral('on'));
  static const off = CustomHostnameEarlyHints._(TfArgLiteral('off'));

  static const List<CustomHostnameEarlyHints> values = [on, off];
}

/// `http2` — derived from the provider schema description.
extension type const CustomHostnameHttp2._(TfArg<String> _)
    implements TfArg<String> {
  CustomHostnameHttp2.variable(String name) : this._(TfArg.variable(name));
  CustomHostnameHttp2.expression(String template)
    : this._(TfArg.expression(template));
  const CustomHostnameHttp2.arg(TfArg<String> arg) : this._(arg);

  static const on = CustomHostnameHttp2._(TfArgLiteral('on'));
  static const off = CustomHostnameHttp2._(TfArgLiteral('off'));

  static const List<CustomHostnameHttp2> values = [on, off];
}

/// `min_tls_version` — derived from the provider schema description.
extension type const CustomHostnameMinTlsVersion._(TfArg<String> _)
    implements TfArg<String> {
  CustomHostnameMinTlsVersion.variable(String name)
    : this._(TfArg.variable(name));
  CustomHostnameMinTlsVersion.expression(String template)
    : this._(TfArg.expression(template));
  const CustomHostnameMinTlsVersion.arg(TfArg<String> arg) : this._(arg);

  static const v1p0 = CustomHostnameMinTlsVersion._(TfArgLiteral('1.0'));
  static const v1p1 = CustomHostnameMinTlsVersion._(TfArgLiteral('1.1'));
  static const v1p2 = CustomHostnameMinTlsVersion._(TfArgLiteral('1.2'));
  static const v1p3 = CustomHostnameMinTlsVersion._(TfArgLiteral('1.3'));

  static const List<CustomHostnameMinTlsVersion> values = [
    v1p0,
    v1p1,
    v1p2,
    v1p3,
  ];
}

/// `tls_1_3` — derived from the provider schema description.
extension type const CustomHostnameTls13._(TfArg<String> _)
    implements TfArg<String> {
  CustomHostnameTls13.variable(String name) : this._(TfArg.variable(name));
  CustomHostnameTls13.expression(String template)
    : this._(TfArg.expression(template));
  const CustomHostnameTls13.arg(TfArg<String> arg) : this._(arg);

  static const on = CustomHostnameTls13._(TfArgLiteral('on'));
  static const off = CustomHostnameTls13._(TfArgLiteral('off'));

  static const List<CustomHostnameTls13> values = [on, off];
}

/// Factory wrapper for `cloudflare_custom_hostname`.
///
/// Accepted Permissions
///
/// - `SSL and Certificates Read` - `SSL and Certificates Write`
final class CloudflareCustomHostname extends Resource {
  static const String tfType = 'cloudflare_custom_hostname';

  CloudflareCustomHostname(
    super.localName, {
    TfArg<Map<String, String>>? customMetadata,
    TfArg<String>? customOriginServer,
    TfArg<String>? customOriginSni,
    required TfArg<String> hostname,
    required RefTo<CloudflareZone> zoneId,
    CustomHostnameSsl? ssl,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'custom_metadata': ?customMetadata,
           'custom_origin_server': ?customOriginServer,
           'custom_origin_sni': ?customOriginSni,
           'hostname': hostname,
           'zone_id': zoneId.encodeAs('id'),
           if (ssl != null) 'ssl': TfArg.literal(ssl.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareCustomHostnameSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareCustomHostname>`.
  RefTo<CloudflareCustomHostname> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `verification_errors` attribute.
  TfRef<List<String>> get verificationErrors =>
      TfRef.attribute<List<String>>(this, 'verification_errors');

  /// Reference to `custom_metadata` attribute.
  TfRef<Map<String, String>> get customMetadata =>
      TfRef.attribute<Map<String, String>>(this, 'custom_metadata');

  /// Reference to `custom_origin_server` attribute.
  TfRef<String> get customOriginServer =>
      TfRef.attribute<String>(this, 'custom_origin_server');

  /// Reference to `custom_origin_sni` attribute.
  TfRef<String> get customOriginSni =>
      TfRef.attribute<String>(this, 'custom_origin_sni');

  /// Reference to `hostname` attribute.
  TfRef<String> get hostname => TfRef.attribute<String>(this, 'hostname');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
