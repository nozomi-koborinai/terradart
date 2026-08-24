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

  final TfArg<String>? bundleMethod;

  final TfArg<String>? certificateAuthority;

  final TfArg<bool>? cloudflareBranding;

  final TfArg<String>? customCertificate;

  final TfArg<String>? customCsrId;

  final TfArg<String>? customKey;

  final TfArg<String>? method;

  final TfArg<String>? type;

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

  final TfArg<String>? earlyHints;

  final TfArg<String>? http2;

  final TfArg<String>? minTlsVersion;

  final TfArg<String>? tls13;

  Map<String, Object?> encode() => {
    if (ciphers != null) 'ciphers': ciphers!.toTfJson(),
    if (earlyHints != null) 'early_hints': earlyHints!.toTfJson(),
    if (http2 != null) 'http2': http2!.toTfJson(),
    if (minTlsVersion != null) 'min_tls_version': minTlsVersion!.toTfJson(),
    if (tls13 != null) 'tls_1_3': tls13!.toTfJson(),
  };
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
