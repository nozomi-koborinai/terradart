// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_access_short_lived_certificate`.
const Set<String> _cloudflareZeroTrustAccessShortLivedCertificateSensitive =
    <String>{};

/// Factory wrapper for `cloudflare_zero_trust_access_short_lived_certificate`.
///
/// Accepted Permissions
///
/// - `Access: Apps and Policies Read` - `Access: Apps and Policies Write`
final class DataCloudflareZeroTrustAccessShortLivedCertificate extends Data {
  static const String tfType =
      'cloudflare_zero_trust_access_short_lived_certificate';

  DataCloudflareZeroTrustAccessShortLivedCertificate({
    required super.localName,
    TfArg<String>? accountId,
    required TfArg<String> appId,
    TfArg<String>? zoneId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           'app_id': appId,
           if (zoneId != null) 'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustAccessShortLivedCertificateSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `aud` attribute.
  TfRef<String> get aud => TfRef.attribute<String>(this, 'aud');

  /// Reference to `public_key` attribute.
  TfRef<String> get publicKey => TfRef.attribute<String>(this, 'public_key');
}
