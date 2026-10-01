// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../zero_trust/cloudflare_zero_trust_access_short_lived_certificate.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;
import '../zone/cloudflare_zone.dart' show CloudflareZone;

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

  DataCloudflareZeroTrustAccessShortLivedCertificate(
    super.localName, {
    RefTo<CloudflareAccount>? accountId,
    required TfArg<String> appId,
    RefTo<CloudflareZone>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'app_id': appId,
           'zone_id': ?zoneId?.encodeAs('id'),
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

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `app_id` attribute.
  TfRef<String> get appId => TfRef.attribute<String>(this, 'app_id');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
