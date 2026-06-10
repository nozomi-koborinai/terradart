// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_region_ssl_certificate`.
const Set<String> _googleComputeRegionSslCertificateSensitive = <String>{
  'certificate',
  'private_key',
};

/// Factory wrapper for `google_compute_region_ssl_certificate`.
///
/// Regional self-managed SSL certificate for regional HTTPS load balancers.
/// Pair with [GoogleComputeRegionTargetHttpsProxy].
///
/// Example:
/// ```dart
/// GoogleComputeRegionSslCertificate(
///   localName: 'regional_cert',
///   name: TfArg.literal('regional-cert'),
///   certificate: TfArg.literal(pemCertificate),
///   privateKey: TfArg.literal(pemPrivateKey),
///   region: TfArg.literal('asia-northeast1'),
/// );
/// ```
final class GoogleComputeRegionSslCertificate extends Resource {
  static const String tfType = 'google_compute_region_ssl_certificate';

  GoogleComputeRegionSslCertificate({
    required super.localName,
    required TfArg<String> certificate,
    TfArg<String>? privateKey,
    TfArg<String>? name,
    TfArg<String>? description,
    TfArg<String>? region,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'certificate': certificate,
           if (privateKey != null) 'private_key': privateKey,
           if (name != null) 'name': name,
           if (description != null) 'description': description,
           if (region != null) 'region': region,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeRegionSslCertificateSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `certificate_id` attribute.
  TfRef<num> get certificateId => TfRef.attribute<num>(this, 'certificate_id');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `expire_time` attribute.
  TfRef<String> get expireTime => TfRef.attribute<String>(this, 'expire_time');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
  TfRef<String> get selfLinkRef => TfRef.attribute<String>(this, 'self_link');
}
