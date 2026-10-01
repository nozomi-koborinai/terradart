// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_page_shield_connections_list`.
const Set<String> _cloudflarePageShieldConnectionsListSensitive = <String>{};

/// Factory wrapper for `cloudflare_page_shield_connections_list`.
///
/// Accepted Permissions
///
/// - `Domain Page Shield` - `Domain Page Shield Read` - `Page Shield` - `Page
/// Shield Read` - `Zone Settings Read` - `Zone Settings Write`
final class DataCloudflarePageShieldConnectionsList extends Data {
  static const String tfType = 'cloudflare_page_shield_connections_list';

  DataCloudflarePageShieldConnectionsList({
    required super.localName,
    TfArg<String>? direction,
    TfArg<bool>? excludeCdnCgi,
    TfArg<String>? excludeUrls,
    TfArg<String>? export,
    TfArg<String>? hosts,
    TfArg<num>? maxItems,
    TfArg<String>? orderBy,
    TfArg<String>? page,
    TfArg<String>? pageUrl,
    TfArg<num>? perPage,
    TfArg<bool>? prioritizeMalicious,
    TfArg<String>? status,
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
