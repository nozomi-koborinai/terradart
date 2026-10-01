// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;
import '../zone/cloudflare_zone.dart' show CloudflareZone;

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

  DataCloudflareZeroTrustAccessMtlsCertificates(
    super.localName, {
    RefTo<CloudflareAccount>? accountId,
    TfArg<num>? maxItems,
    RefTo<CloudflareZone>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'max_items': ?maxItems,
           'zone_id': ?zoneId?.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustAccessMtlsCertificatesSensitive;

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
