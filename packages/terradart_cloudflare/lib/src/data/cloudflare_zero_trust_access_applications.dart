// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_zero_trust_access_applications`.
const Set<String> _cloudflareZeroTrustAccessApplicationsSensitive = <String>{
  'result.saas_app.client_secret',
  'result.scim_config.authentication.client_secret',
  'result.scim_config.authentication.token',
};

/// Factory wrapper for `cloudflare_zero_trust_access_applications`.
final class DataCloudflareZeroTrustAccessApplications extends Data {
  static const String tfType = 'cloudflare_zero_trust_access_applications';

  DataCloudflareZeroTrustAccessApplications({
    required super.localName,
    RefTo<CloudflareAccount>? accountId,
    TfArg<String>? aud,
    TfArg<String>? domain,
    TfArg<bool>? exact,
    TfArg<num>? maxItems,
    TfArg<String>? name,
    TfArg<String>? search,
    RefTo<CloudflareZone>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'aud': ?aud,
           'domain': ?domain,
           'exact': ?exact,
           'max_items': ?maxItems,
           'name': ?name,
           'search': ?search,
           'zone_id': ?zoneId?.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustAccessApplicationsSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `aud` attribute.
  TfRef<String> get aud => TfRef.attribute<String>(this, 'aud');

  /// Reference to `domain` attribute.
  TfRef<String> get domain => TfRef.attribute<String>(this, 'domain');

  /// Reference to `exact` attribute.
  TfRef<bool> get exact => TfRef.attribute<bool>(this, 'exact');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `search` attribute.
  TfRef<String> get search => TfRef.attribute<String>(this, 'search');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
