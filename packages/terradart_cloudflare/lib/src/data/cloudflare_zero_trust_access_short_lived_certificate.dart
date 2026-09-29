// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../zero_trust/cloudflare_zero_trust_access_short_lived_certificate.dart';

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
    super.provider,
    super.timeouts,
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

  /// A reference to the `cloudflare_zero_trust_access_short_lived_certificate` this data source reads, for
  /// arguments typed `RefTo<CloudflareZeroTrustAccessShortLivedCertificate>`.
  RefTo<CloudflareZeroTrustAccessShortLivedCertificate> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `aud` attribute.
  TfRef<String> get aud => TfRef.attribute<String>(this, 'aud');

  /// Reference to `public_key` attribute.
  TfRef<String> get publicKey => TfRef.attribute<String>(this, 'public_key');
}
