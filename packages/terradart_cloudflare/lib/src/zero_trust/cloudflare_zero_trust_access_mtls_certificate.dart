// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    TfArg<String>? accountId,
    TfArg<List<String>>? associatedHostnames,
    required TfArg<String> certificate,
    required TfArg<String> name,
    TfArg<String>? zoneId,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (associatedHostnames != null)
             'associated_hostnames': associatedHostnames,
           'certificate': certificate,
           'name': name,
           if (zoneId != null) 'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustAccessMtlsCertificateSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `expires_on` attribute.
  TfRef<String> get expiresOn => TfRef.attribute<String>(this, 'expires_on');

  /// Reference to `fingerprint` attribute.
  TfRef<String> get fingerprint => TfRef.attribute<String>(this, 'fingerprint');
}
