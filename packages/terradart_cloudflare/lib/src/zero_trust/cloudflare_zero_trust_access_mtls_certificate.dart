// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
final class CloudflareZeroTrustAccessMtlsCertificate extends Resource {
  static const String tfType = 'cloudflare_zero_trust_access_mtls_certificate';

  CloudflareZeroTrustAccessMtlsCertificate({
    required super.localName,
    RefTo<CloudflareAccount>? accountId,
    TfArg<List<String>>? associatedHostnames,
    required TfArg<String> certificate,
    required TfArg<String> name,
    RefTo<CloudflareZone>? zoneId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'associated_hostnames': ?associatedHostnames,
           'certificate': certificate,
           'name': name,
           'zone_id': ?zoneId?.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustAccessMtlsCertificateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareZeroTrustAccessMtlsCertificate>`.
  RefTo<CloudflareZeroTrustAccessMtlsCertificate> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `expires_on` attribute.
  TfRef<String> get expiresOn => TfRef.attribute<String>(this, 'expires_on');

  /// Reference to `fingerprint` attribute.
  TfRef<String> get fingerprint => TfRef.attribute<String>(this, 'fingerprint');
}
