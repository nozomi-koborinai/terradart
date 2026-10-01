// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../zero_trust/cloudflare_zero_trust_access_mtls_certificate.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_zero_trust_access_mtls_certificate`.
const Set<String> _cloudflareZeroTrustAccessMtlsCertificateSensitive =
    <String>{};

/// Factory wrapper for `cloudflare_zero_trust_access_mtls_certificate`.
///
/// Accepted Permissions
///
/// - `Access: Mutual TLS Certificates Read` - `Access: Mutual TLS Certificates
/// Write`
final class DataCloudflareZeroTrustAccessMtlsCertificate extends Data {
  static const String tfType = 'cloudflare_zero_trust_access_mtls_certificate';

  DataCloudflareZeroTrustAccessMtlsCertificate(
    super.localName, {
    RefTo<CloudflareAccount>? accountId,
    required TfArg<String> certificateId,
    RefTo<CloudflareZone>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'certificate_id': certificateId,
           'zone_id': ?zoneId?.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustAccessMtlsCertificateSensitive;

  /// A reference to the `cloudflare_zero_trust_access_mtls_certificate` this data source reads, for
  /// arguments typed `RefTo<CloudflareZeroTrustAccessMtlsCertificate>`.
  RefTo<CloudflareZeroTrustAccessMtlsCertificate> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `associated_hostnames` attribute.
  TfRef<List<String>> get associatedHostnames =>
      TfRef.attribute<List<String>>(this, 'associated_hostnames');

  /// Reference to `expires_on` attribute.
  TfRef<String> get expiresOn => TfRef.attribute<String>(this, 'expires_on');

  /// Reference to `fingerprint` attribute.
  TfRef<String> get fingerprint => TfRef.attribute<String>(this, 'fingerprint');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `certificate_id` attribute.
  TfRef<String> get certificateId =>
      TfRef.attribute<String>(this, 'certificate_id');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
