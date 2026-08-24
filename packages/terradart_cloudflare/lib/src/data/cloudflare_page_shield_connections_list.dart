// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    TfArg<String>? zoneId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (direction != null) 'direction': direction,
           if (excludeCdnCgi != null) 'exclude_cdn_cgi': excludeCdnCgi,
           if (excludeUrls != null) 'exclude_urls': excludeUrls,
           if (export != null) 'export': export,
           if (hosts != null) 'hosts': hosts,
           if (maxItems != null) 'max_items': maxItems,
           if (orderBy != null) 'order_by': orderBy,
           if (page != null) 'page': page,
           if (pageUrl != null) 'page_url': pageUrl,
           if (perPage != null) 'per_page': perPage,
           if (prioritizeMalicious != null)
             'prioritize_malicious': prioritizeMalicious,
           if (status != null) 'status': status,
           if (urls != null) 'urls': urls,
           if (zoneId != null) 'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflarePageShieldConnectionsListSensitive;
}
