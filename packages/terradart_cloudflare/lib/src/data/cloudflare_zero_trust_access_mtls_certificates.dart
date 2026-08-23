// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_access_mtls_certificates`.
const Set<String> _cloudflareZeroTrustAccessMtlsCertificatesSensitive =
    <String>{};

/// Factory wrapper for `cloudflare_zero_trust_access_mtls_certificates`.
///
/// Accepted Permissions
///
/// - `Access: Mutual TLS Certificates Read` - `Access: Mutual TLS Certificates
/// Write`
final class DataCloudflareZeroTrustAccessMtlsCertificates extends Data {
  static const String tfType = 'cloudflare_zero_trust_access_mtls_certificates';

  DataCloudflareZeroTrustAccessMtlsCertificates({
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
      _cloudflareZeroTrustAccessMtlsCertificatesSensitive;
}
