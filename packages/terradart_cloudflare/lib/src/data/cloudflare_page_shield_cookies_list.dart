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
  }) : super(
         terraformType: tfType,
         argMap: {
           if (direction != null) 'direction': direction,
           if (domain != null) 'domain': domain,
           if (export != null) 'export': export,
           if (hosts != null) 'hosts': hosts,
           if (httpOnly != null) 'http_only': httpOnly,
           if (maxItems != null) 'max_items': maxItems,
           if (name != null) 'name': name,
           if (orderBy != null) 'order_by': orderBy,
           if (page != null) 'page': page,
           if (pageUrl != null) 'page_url': pageUrl,
           if (path != null) 'path': path,
           if (perPage != null) 'per_page': perPage,
           if (sameSite != null) 'same_site': sameSite,
           if (secure != null) 'secure': secure,
           if (type != null) 'type': type,
           if (zoneId != null) 'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflarePageShieldCookiesListSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
