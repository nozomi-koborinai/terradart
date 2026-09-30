// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;
import '../zone/cloudflare_zone.dart' show CloudflareZone;

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
      _cloudflareZeroTrustAccessShortLivedCertificatesSensitive;

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItemsRef => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneIdRef => TfRef.attribute<String>(this, 'zone_id');
}
