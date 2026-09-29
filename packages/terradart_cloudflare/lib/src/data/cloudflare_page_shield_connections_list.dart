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
}
