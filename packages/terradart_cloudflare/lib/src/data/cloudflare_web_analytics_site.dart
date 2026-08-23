// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_web_analytics_site`.
const Set<String> _cloudflareWebAnalyticsSiteSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_web_analytics_site` (derived from provider schema).
@immutable
final class DataWebAnalyticsSiteFilter {
  const DataWebAnalyticsSiteFilter({this.orderBy});

  final TfArg<String>? orderBy;

  Map<String, Object?> encode() => {
    if (orderBy != null) 'order_by': orderBy!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_web_analytics_site`.
///
/// Accepted Permissions
///
/// - `Account Settings Read`
final class DataCloudflareWebAnalyticsSite extends Data {
  static const String tfType = 'cloudflare_web_analytics_site';

  DataCloudflareWebAnalyticsSite({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? siteId,
    DataWebAnalyticsSiteFilter? filter,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (siteId != null) 'site_id': siteId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWebAnalyticsSiteSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `auto_install` attribute.
  TfRef<bool> get autoInstall => TfRef.attribute<bool>(this, 'auto_install');

  /// Reference to `created` attribute.
  TfRef<String> get created => TfRef.attribute<String>(this, 'created');

  /// Reference to `site_tag` attribute.
  TfRef<String> get siteTag => TfRef.attribute<String>(this, 'site_tag');

  /// Reference to `site_token` attribute.
  TfRef<String> get siteToken => TfRef.attribute<String>(this, 'site_token');

  /// Reference to `snippet` attribute.
  TfRef<String> get snippet => TfRef.attribute<String>(this, 'snippet');
}
