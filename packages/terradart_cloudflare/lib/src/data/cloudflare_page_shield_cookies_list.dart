// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

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
    RefTo<CloudflareZone>? zoneId,
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
           'zone_id': ?zoneId?.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflarePageShieldCookiesListSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `direction` attribute.
  TfRef<String> get direction => TfRef.attribute<String>(this, 'direction');

  /// Reference to `domain` attribute.
  TfRef<String> get domain => TfRef.attribute<String>(this, 'domain');

  /// Reference to `export` attribute.
  TfRef<String> get export => TfRef.attribute<String>(this, 'export');

  /// Reference to `hosts` attribute.
  TfRef<String> get hosts => TfRef.attribute<String>(this, 'hosts');

  /// Reference to `http_only` attribute.
  TfRef<bool> get httpOnly => TfRef.attribute<bool>(this, 'http_only');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `order_by` attribute.
  TfRef<String> get orderBy => TfRef.attribute<String>(this, 'order_by');

  /// Reference to `page` attribute.
  TfRef<String> get page => TfRef.attribute<String>(this, 'page');

  /// Reference to `page_url` attribute.
  TfRef<String> get pageUrl => TfRef.attribute<String>(this, 'page_url');

  /// Reference to `path` attribute.
  TfRef<String> get path => TfRef.attribute<String>(this, 'path');

  /// Reference to `per_page` attribute.
  TfRef<num> get perPage => TfRef.attribute<num>(this, 'per_page');

  /// Reference to `same_site` attribute.
  TfRef<String> get sameSite => TfRef.attribute<String>(this, 'same_site');

  /// Reference to `secure` attribute.
  TfRef<bool> get secure => TfRef.attribute<bool>(this, 'secure');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
