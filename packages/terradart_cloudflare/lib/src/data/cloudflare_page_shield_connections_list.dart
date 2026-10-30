// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_page_shield_connections_list`.
const Set<String> _cloudflarePageShieldConnectionsListSensitive = <String>{};

/// Data Page Shield Connections List enum for `direction`.
extension type const DataPageShieldConnectionsListDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataPageShieldConnectionsListDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataPageShieldConnectionsListDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataPageShieldConnectionsListDirection.arg(TfArg<String> arg)
    : this._(arg);

  static const asc = DataPageShieldConnectionsListDirection._(
    TfArgLiteral('asc'),
  );
  static const desc = DataPageShieldConnectionsListDirection._(
    TfArgLiteral('desc'),
  );

  static const List<DataPageShieldConnectionsListDirection> values = [
    asc,
    desc,
  ];
}

/// Data Page Shield Connections List enum for `export`.
extension type const DataPageShieldConnectionsListExport._(TfArg<String> _)
    implements TfArg<String> {
  DataPageShieldConnectionsListExport.variable(String name)
    : this._(TfArg.variable(name));
  DataPageShieldConnectionsListExport.expression(String template)
    : this._(TfArg.expression(template));
  const DataPageShieldConnectionsListExport.arg(TfArg<String> arg)
    : this._(arg);

  static const csv = DataPageShieldConnectionsListExport._(TfArgLiteral('csv'));

  static const List<DataPageShieldConnectionsListExport> values = [csv];
}

/// Data Page Shield Connections List Order enum for `order_by`.
extension type const DataPageShieldConnectionsListOrderBy._(TfArg<String> _)
    implements TfArg<String> {
  DataPageShieldConnectionsListOrderBy.variable(String name)
    : this._(TfArg.variable(name));
  DataPageShieldConnectionsListOrderBy.expression(String template)
    : this._(TfArg.expression(template));
  const DataPageShieldConnectionsListOrderBy.arg(TfArg<String> arg)
    : this._(arg);

  static const firstSeenAt = DataPageShieldConnectionsListOrderBy._(
    TfArgLiteral('first_seen_at'),
  );
  static const lastSeenAt = DataPageShieldConnectionsListOrderBy._(
    TfArgLiteral('last_seen_at'),
  );

  static const List<DataPageShieldConnectionsListOrderBy> values = [
    firstSeenAt,
    lastSeenAt,
  ];
}

/// Data Page Shield Connections List enum for `status`.
extension type const DataPageShieldConnectionsListStatus._(TfArg<String> _)
    implements TfArg<String> {
  DataPageShieldConnectionsListStatus.variable(String name)
    : this._(TfArg.variable(name));
  DataPageShieldConnectionsListStatus.expression(String template)
    : this._(TfArg.expression(template));
  const DataPageShieldConnectionsListStatus.arg(TfArg<String> arg)
    : this._(arg);

  static const active = DataPageShieldConnectionsListStatus._(
    TfArgLiteral('active'),
  );
  static const infrequent = DataPageShieldConnectionsListStatus._(
    TfArgLiteral('infrequent'),
  );
  static const inactive = DataPageShieldConnectionsListStatus._(
    TfArgLiteral('inactive'),
  );

  static const List<DataPageShieldConnectionsListStatus> values = [
    active,
    infrequent,
    inactive,
  ];
}

/// Factory wrapper for `cloudflare_page_shield_connections_list`.
///
/// Accepted Permissions
///
/// - `Domain Page Shield` - `Domain Page Shield Read` - `Page Shield` - `Page
/// Shield Read` - `Zone Settings Read` - `Zone Settings Write`
final class DataCloudflarePageShieldConnectionsList extends Data {
  static const String tfType = 'cloudflare_page_shield_connections_list';

  DataCloudflarePageShieldConnectionsList(
    super.localName, {
    DataPageShieldConnectionsListDirection? direction,
    TfArg<bool>? excludeCdnCgi,
    TfArg<String>? excludeUrls,
    DataPageShieldConnectionsListExport? export,
    TfArg<String>? hosts,
    TfArg<num>? maxItems,
    DataPageShieldConnectionsListOrderBy? orderBy,
    TfArg<String>? page,
    TfArg<String>? pageUrl,
    TfArg<num>? perPage,
    TfArg<bool>? prioritizeMalicious,
    DataPageShieldConnectionsListStatus? status,
    TfArg<String>? urls,
    RefTo<CloudflareZone>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'direction': ?direction,
           'exclude_cdn_cgi': ?excludeCdnCgi,
           'exclude_urls': ?excludeUrls,
           'export': ?export,
           'hosts': ?hosts,
           'max_items': ?maxItems,
           'order_by': ?orderBy,
           'page': ?page,
           'page_url': ?pageUrl,
           'per_page': ?perPage,
           'prioritize_malicious': ?prioritizeMalicious,
           'status': ?status,
           'urls': ?urls,
           'zone_id': ?zoneId?.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflarePageShieldConnectionsListSensitive;

  /// Reference to `direction` attribute.
  TfRef<String> get direction => TfRef.attribute<String>(this, 'direction');

  /// Reference to `exclude_cdn_cgi` attribute.
  TfRef<bool> get excludeCdnCgi =>
      TfRef.attribute<bool>(this, 'exclude_cdn_cgi');

  /// Reference to `exclude_urls` attribute.
  TfRef<String> get excludeUrls =>
      TfRef.attribute<String>(this, 'exclude_urls');

  /// Reference to `export` attribute.
  TfRef<String> get export => TfRef.attribute<String>(this, 'export');

  /// Reference to `hosts` attribute.
  TfRef<String> get hosts => TfRef.attribute<String>(this, 'hosts');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `order_by` attribute.
  TfRef<String> get orderBy => TfRef.attribute<String>(this, 'order_by');

  /// Reference to `page` attribute.
  TfRef<String> get page => TfRef.attribute<String>(this, 'page');

  /// Reference to `page_url` attribute.
  TfRef<String> get pageUrl => TfRef.attribute<String>(this, 'page_url');

  /// Reference to `per_page` attribute.
  TfRef<num> get perPage => TfRef.attribute<num>(this, 'per_page');

  /// Reference to `prioritize_malicious` attribute.
  TfRef<bool> get prioritizeMalicious =>
      TfRef.attribute<bool>(this, 'prioritize_malicious');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `urls` attribute.
  TfRef<String> get urls => TfRef.attribute<String>(this, 'urls');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
