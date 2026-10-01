// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_authenticated_origin_pulls_hostname_certificate`.
const Set<String>
_cloudflareAuthenticatedOriginPullsHostnameCertificateSensitive = <String>{
  'private_key',
};

/// Factory wrapper for `cloudflare_authenticated_origin_pulls_hostname_certificate`.
final class CloudflareAuthenticatedOriginPullsHostnameCertificate
    extends Resource {
  static const String tfType =
      'cloudflare_authenticated_origin_pulls_hostname_certificate';

  CloudflareAuthenticatedOriginPullsHostnameCertificate(
    super.localName, {
    required TfArg<String> certificate,
    required TfArg<String> privateKey,
    required RefTo<CloudflareZone> zoneId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'certificate': certificate,
           'private_key': privateKey,
           'zone_id': zoneId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareAuthenticatedOriginPullsHostnameCertificateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareAuthenticatedOriginPullsHostnameCertificate>`.
  RefTo<CloudflareAuthenticatedOriginPullsHostnameCertificate> get ref =>
      RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

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

  /// Reference to `certificate` attribute.
  TfRef<String> get certificate => TfRef.attribute<String>(this, 'certificate');

  /// Reference to `private_key` attribute.
  TfRef<String> get privateKey => TfRef.attribute<String>(this, 'private_key');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
