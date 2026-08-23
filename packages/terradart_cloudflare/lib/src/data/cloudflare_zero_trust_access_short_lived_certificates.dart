// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_access_short_lived_certificates`.
const Set<String> _cloudflareZeroTrustAccessShortLivedCertificatesSensitive =
    <String>{};

/// Factory wrapper for `cloudflare_zero_trust_access_short_lived_certificates`.
///
/// Accepted Permissions
///
/// - `Access: Apps and Policies Read` - `Access: Apps and Policies Write`
final class DataCloudflareZeroTrustAccessShortLivedCertificates extends Data {
  static const String tfType =
      'cloudflare_zero_trust_access_short_lived_certificates';

  DataCloudflareZeroTrustAccessShortLivedCertificates({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<num>? maxItems,
    TfArg<String>? zoneId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (maxItems != null) 'max_items': maxItems,
           if (zoneId != null) 'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustAccessShortLivedCertificatesSensitive;
}
