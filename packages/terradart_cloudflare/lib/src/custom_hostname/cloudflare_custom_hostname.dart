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

  final TfArg<CustomHostnameBundleMethod>? bundleMethod;

  final TfArg<CustomHostnameCertificateAuthority>? certificateAuthority;

  final TfArg<bool>? cloudflareBranding;

  final TfArg<String>? customCertificate;

  final TfArg<String>? customCsrId;

  final TfArg<String>? customKey;

  final TfArg<CustomHostnameMethod>? method;

  final TfArg<CustomHostnameType>? type;

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
enum CustomHostnameBundleMethod implements TerraformEnum {
  ubiquitous('ubiquitous'),
  optimal('optimal'),
  force('force');

  const CustomHostnameBundleMethod(this.terraformValue);
  @override
  final String terraformValue;
}

/// `certificate_authority` — derived from the provider schema description.
enum CustomHostnameCertificateAuthority implements TerraformEnum {
  digicert('digicert'),
  google('google'),
  letsEncrypt('lets_encrypt'),
  sslCom('ssl_com');

  const CustomHostnameCertificateAuthority(this.terraformValue);
  @override
  final String terraformValue;
}

/// `method` — derived from the provider schema description.
enum CustomHostnameMethod implements TerraformEnum {
  http('http'),
  txt('txt'),
  email('email');

  const CustomHostnameMethod(this.terraformValue);
  @override
  final String terraformValue;
}

/// `type` — derived from the provider schema description.
enum CustomHostnameType implements TerraformEnum {
  dv('dv');

  const CustomHostnameType(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<String> customKey;

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

  final TfArg<CustomHostnameEarlyHints>? earlyHints;

  final TfArg<CustomHostnameHttp2>? http2;

  final TfArg<CustomHostnameMinTlsVersion>? minTlsVersion;

  final TfArg<CustomHostnameTls13>? tls13;

  Map<String, Object?> encode() => {
    'ciphers': ?ciphers?.toTfJson(),
    'early_hints': ?earlyHints?.toTfJson(),
    'http2': ?http2?.toTfJson(),
    'min_tls_version': ?minTlsVersion?.toTfJson(),
    'tls_1_3': ?tls13?.toTfJson(),
  };
}

/// `early_hints` — derived from the provider schema description.
enum CustomHostnameEarlyHints implements TerraformEnum {
  on('on'),
  off('off');

  const CustomHostnameEarlyHints(this.terraformValue);
  @override
  final String terraformValue;
}

/// `http2` — derived from the provider schema description.
enum CustomHostnameHttp2 implements TerraformEnum {
  on('on'),
  off('off');

  const CustomHostnameHttp2(this.terraformValue);
  @override
  final String terraformValue;
}

/// `min_tls_version` — derived from the provider schema description.
enum CustomHostnameMinTlsVersion implements TerraformEnum {
  v1p0('1.0'),
  v1p1('1.1'),
  v1p2('1.2'),
  v1p3('1.3');

  const CustomHostnameMinTlsVersion(this.terraformValue);
  @override
  final String terraformValue;
}

/// `tls_1_3` — derived from the provider schema description.
enum CustomHostnameTls13 implements TerraformEnum {
  on('on'),
  off('off');

  const CustomHostnameTls13(this.terraformValue);
  @override
  final String terraformValue;
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
