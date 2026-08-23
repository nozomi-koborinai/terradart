// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_authenticated_origin_pulls_certificate`.
const Set<String> _cloudflareAuthenticatedOriginPullsCertificateSensitive =
    <String>{};

/// Factory wrapper for `cloudflare_authenticated_origin_pulls_certificate`.
final class DataCloudflareAuthenticatedOriginPullsCertificate extends Data {
  static const String tfType =
      'cloudflare_authenticated_origin_pulls_certificate';

  DataCloudflareAuthenticatedOriginPullsCertificate({
    required super.localName,
    required TfArg<String> certificateId,
    required TfArg<String> zoneId,
  }) : super(
         terraformType: tfType,
         argMap: {'certificate_id': certificateId, 'zone_id': zoneId},
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareAuthenticatedOriginPullsCertificateSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `certificate` attribute.
  TfRef<String> get certificate => TfRef.attribute<String>(this, 'certificate');

  /// Reference to `expires_on` attribute.
  TfRef<String> get expiresOn => TfRef.attribute<String>(this, 'expires_on');

  /// Reference to `issuer` attribute.
  TfRef<String> get issuer => TfRef.attribute<String>(this, 'issuer');

  /// Reference to `serial_number` attribute.
  TfRef<String> get serialNumber =>
      TfRef.attribute<String>(this, 'serial_number');

  /// Reference to `signature` attribute.
  TfRef<String> get signature => TfRef.attribute<String>(this, 'signature');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `uploaded_on` attribute.
  TfRef<String> get uploadedOn => TfRef.attribute<String>(this, 'uploaded_on');
}
