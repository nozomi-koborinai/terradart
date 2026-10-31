// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_page_shield_cookies_list`.
const Set<String> _cloudflarePageShieldCookiesListSensitive = <String>{};

/// Data Page Shield Cookies List enum for `direction`.
extension type const DataPageShieldCookiesListDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataPageShieldCookiesListDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataPageShieldCookiesListDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataPageShieldCookiesListDirection.arg(TfArg<String> arg) : this._(arg);

  static const asc = DataPageShieldCookiesListDirection._(TfArgLiteral('asc'));
  static const desc = DataPageShieldCookiesListDirection._(
    TfArgLiteral('desc'),
  );

  static const List<DataPageShieldCookiesListDirection> values = [asc, desc];
}

/// Data Page Shield Cookies List enum for `export`.
extension type const DataPageShieldCookiesListExport._(TfArg<String> _)
    implements TfArg<String> {
  DataPageShieldCookiesListExport.variable(String name)
    : this._(TfArg.variable(name));
  DataPageShieldCookiesListExport.expression(String template)
    : this._(TfArg.expression(template));
  const DataPageShieldCookiesListExport.arg(TfArg<String> arg) : this._(arg);

  static const csv = DataPageShieldCookiesListExport._(TfArgLiteral('csv'));

  static const List<DataPageShieldCookiesListExport> values = [csv];
}

/// Data Page Shield Cookies List Order enum for `order_by`.
extension type const DataPageShieldCookiesListOrderBy._(TfArg<String> _)
    implements TfArg<String> {
  DataPageShieldCookiesListOrderBy.variable(String name)
    : this._(TfArg.variable(name));
  DataPageShieldCookiesListOrderBy.expression(String template)
    : this._(TfArg.expression(template));
  const DataPageShieldCookiesListOrderBy.arg(TfArg<String> arg) : this._(arg);

  static const firstSeenAt = DataPageShieldCookiesListOrderBy._(
    TfArgLiteral('first_seen_at'),
  );
  static const lastSeenAt = DataPageShieldCookiesListOrderBy._(
    TfArgLiteral('last_seen_at'),
  );

  static const List<DataPageShieldCookiesListOrderBy> values = [
    firstSeenAt,
    lastSeenAt,
  ];
}

/// Data Page Shield Cookies List Same enum for `same_site`.
extension type const DataPageShieldCookiesListSameSite._(TfArg<String> _)
    implements TfArg<String> {
  DataPageShieldCookiesListSameSite.variable(String name)
    : this._(TfArg.variable(name));
  DataPageShieldCookiesListSameSite.expression(String template)
    : this._(TfArg.expression(template));
  const DataPageShieldCookiesListSameSite.arg(TfArg<String> arg) : this._(arg);

  static const lax = DataPageShieldCookiesListSameSite._(TfArgLiteral('lax'));
  static const strict = DataPageShieldCookiesListSameSite._(
    TfArgLiteral('strict'),
  );
  static const none = DataPageShieldCookiesListSameSite._(TfArgLiteral('none'));

  static const List<DataPageShieldCookiesListSameSite> values = [
    lax,
    strict,
    none,
  ];
}

/// Data Page Shield Cookies List enum for `type`.
extension type const DataPageShieldCookiesListType._(TfArg<String> _)
    implements TfArg<String> {
  DataPageShieldCookiesListType.variable(String name)
    : this._(TfArg.variable(name));
  DataPageShieldCookiesListType.expression(String template)
    : this._(TfArg.expression(template));
  const DataPageShieldCookiesListType.arg(TfArg<String> arg) : this._(arg);

  static const firstParty = DataPageShieldCookiesListType._(
    TfArgLiteral('first_party'),
  );
  static const unknown = DataPageShieldCookiesListType._(
    TfArgLiteral('unknown'),
  );

  static const List<DataPageShieldCookiesListType> values = [
    firstParty,
    unknown,
  ];
}

/// Factory wrapper for `cloudflare_page_shield_cookies_list`.
///
/// Accepted Permissions
///
/// - `Domain Page Shield` - `Domain Page Shield Read` - `Page Shield` - `Page
/// Shield Read` - `Zone Settings Read` - `Zone Settings Write`
final class DataCloudflarePageShieldCookiesList extends Data {
  static const String tfType = 'cloudflare_page_shield_cookies_list';

  DataCloudflarePageShieldCookiesList(
    super.localName, {
    DataPageShieldCookiesListDirection? direction,
    TfArg<String>? domain,
    DataPageShieldCookiesListExport? export,
    TfArg<String>? hosts,
    TfArg<bool>? httpOnly,
    TfArg<num>? maxItems,
    TfArg<String>? name,
    DataPageShieldCookiesListOrderBy? orderBy,
    TfArg<String>? page,
    TfArg<String>? pageUrl,
    TfArg<String>? path,
    TfArg<num>? perPage,
    DataPageShieldCookiesListSameSite? sameSite,
    TfArg<bool>? secure,
    DataPageShieldCookiesListType? type,
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
