// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

  final TfArg<CustomHostnameSslBundleMethod>? bundleMethod;

  final TfArg<CustomHostnameSslCertificateAuthority>? certificateAuthority;

  final TfArg<bool>? cloudflareBranding;

  final TfArg<String>? customCertificate;

  final TfArg<String>? customCsrId;

  final TfArg<String>? customKey;

  final TfArg<CustomHostnameSslMethod>? method;

  final TfArg<CustomHostnameSslType>? type;

  final TfArg<bool>? wildcard;

  final List<CustomHostnameSslCustomCertBundle>? customCertBundle;

  final CustomHostnameSslSettings? settings;

  Map<String, Object?> encode() => {
    if (bundleMethod != null) 'bundle_method': bundleMethod!.toTfJson(),
    if (certificateAuthority != null)
      'certificate_authority': certificateAuthority!.toTfJson(),
    if (cloudflareBranding != null)
      'cloudflare_branding': cloudflareBranding!.toTfJson(),
    if (customCertificate != null)
      'custom_certificate': customCertificate!.toTfJson(),
    if (customCsrId != null) 'custom_csr_id': customCsrId!.toTfJson(),
    if (customKey != null) 'custom_key': customKey!.toTfJson(),
    if (method != null) 'method': method!.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
    if (wildcard != null) 'wildcard': wildcard!.toTfJson(),
    if (customCertBundle != null)
      'custom_cert_bundle': [for (final e in customCertBundle!) e.encode()],
    if (settings != null) 'settings': settings!.encode(),
  };
}

/// `bundle_method` — derived from the provider schema description.
enum CustomHostnameSslBundleMethod implements TerraformEnum {
  ubiquitous('ubiquitous'),
  optimal('optimal'),
  force('force');

  const CustomHostnameSslBundleMethod(this.terraformValue);
  @override
  final String terraformValue;
}

/// `certificate_authority` — derived from the provider schema description.
enum CustomHostnameSslCertificateAuthority implements TerraformEnum {
  digicert('digicert'),
  google('google'),
  letsEncrypt('lets_encrypt'),
  sslCom('ssl_com');

  const CustomHostnameSslCertificateAuthority(this.terraformValue);
  @override
  final String terraformValue;
}

/// `method` — derived from the provider schema description.
enum CustomHostnameSslMethod implements TerraformEnum {
  http('http'),
  txt('txt'),
  email('email');

  const CustomHostnameSslMethod(this.terraformValue);
  @override
  final String terraformValue;
}

/// `type` — derived from the provider schema description.
enum CustomHostnameSslType implements TerraformEnum {
  dv('dv');

  const CustomHostnameSslType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `ssl.custom_cert_bundle` block of
/// `cloudflare_custom_hostname` (derived from provider schema).
@immutable
final class CustomHostnameSslCustomCertBundle {
  const CustomHostnameSslCustomCertBundle({
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
final class CustomHostnameSslSettings {
  const CustomHostnameSslSettings({
    this.ciphers,
    this.earlyHints,
    this.http2,
    this.minTlsVersion,
    this.tls13,
  });

  final TfArg<List<Object?>>? ciphers;

  final TfArg<CustomHostnameSslSettingsEarlyHints>? earlyHints;

  final TfArg<CustomHostnameSslSettingsHttp2>? http2;

  final TfArg<CustomHostnameSslSettingsMinTlsVersion>? minTlsVersion;

  final TfArg<CustomHostnameSslSettingsTls13>? tls13;

  Map<String, Object?> encode() => {
    if (ciphers != null) 'ciphers': ciphers!.toTfJson(),
    if (earlyHints != null) 'early_hints': earlyHints!.toTfJson(),
    if (http2 != null) 'http2': http2!.toTfJson(),
    if (minTlsVersion != null) 'min_tls_version': minTlsVersion!.toTfJson(),
    if (tls13 != null) 'tls_1_3': tls13!.toTfJson(),
  };
}

/// `early_hints` — derived from the provider schema description.
enum CustomHostnameSslSettingsEarlyHints implements TerraformEnum {
  on('on'),
  off('off');

  const CustomHostnameSslSettingsEarlyHints(this.terraformValue);
  @override
  final String terraformValue;
}

/// `http2` — derived from the provider schema description.
enum CustomHostnameSslSettingsHttp2 implements TerraformEnum {
  on('on'),
  off('off');

  const CustomHostnameSslSettingsHttp2(this.terraformValue);
  @override
  final String terraformValue;
}

/// `min_tls_version` — derived from the provider schema description.
enum CustomHostnameSslSettingsMinTlsVersion implements TerraformEnum {
  v1p0('1.0'),
  v1p1('1.1'),
  v1p2('1.2'),
  v1p3('1.3');

  const CustomHostnameSslSettingsMinTlsVersion(this.terraformValue);
  @override
  final String terraformValue;
}

/// `tls_1_3` — derived from the provider schema description.
enum CustomHostnameSslSettingsTls13 implements TerraformEnum {
  on('on'),
  off('off');

  const CustomHostnameSslSettingsTls13(this.terraformValue);
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

  CloudflareCustomHostname({
    required super.localName,
    TfArg<Map<String, String>>? customMetadata,
    TfArg<String>? customOriginServer,
    TfArg<String>? customOriginSni,
    required TfArg<String> hostname,
    required TfArg<String> zoneId,
    CustomHostnameSsl? ssl,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (customMetadata != null) 'custom_metadata': customMetadata,
           if (customOriginServer != null)
             'custom_origin_server': customOriginServer,
           if (customOriginSni != null) 'custom_origin_sni': customOriginSni,
           'hostname': hostname,
           'zone_id': zoneId,
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
}
