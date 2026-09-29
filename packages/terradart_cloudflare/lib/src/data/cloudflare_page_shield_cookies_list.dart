// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_page_shield_cookies_list`.
const Set<String> _cloudflarePageShieldCookiesListSensitive = <String>{};

/// Factory wrapper for `cloudflare_page_shield_cookies_list`.
///
/// Accepted Permissions
///
/// - `Domain Page Shield` - `Domain Page Shield Read` - `Page Shield` - `Page
/// Shield Read` - `Zone Settings Read` - `Zone Settings Write`
final class DataCloudflarePageShieldCookiesList extends Data {
  static const String tfType = 'cloudflare_page_shield_cookies_list';

  DataCloudflarePageShieldCookiesList({
    required super.localName,
    TfArg<String>? direction,
    TfArg<String>? domain,
    TfArg<String>? export,
    TfArg<String>? hosts,
    TfArg<bool>? httpOnly,
    TfArg<num>? maxItems,
    TfArg<String>? name,
    TfArg<String>? orderBy,
    TfArg<String>? page,
    TfArg<String>? pageUrl,
    TfArg<String>? path,
    TfArg<num>? perPage,
    TfArg<String>? sameSite,
    TfArg<bool>? secure,
    TfArg<String>? type,
    TfArg<String>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'direction': ?direction,
           'domain': ?domain,
           'export': ?export,
           'hosts': ?hosts,
           'http_only': ?httpOnly,
           'max_items': ?maxItems,
           'name': ?name,
           'order_by': ?orderBy,
           'page': ?page,
           'page_url': ?pageUrl,
           'path': ?path,
           'per_page': ?perPage,
           'same_site': ?sameSite,
           'secure': ?secure,
           'type': ?type,
           'zone_id': ?zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflarePageShieldCookiesListSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
