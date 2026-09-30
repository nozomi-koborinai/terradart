// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../web_analytics/cloudflare_web_analytics_site.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_web_analytics_site`.
const Set<String> _cloudflareWebAnalyticsSiteSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_web_analytics_site` (derived from provider schema).
@immutable
final class DataWebAnalyticsSiteFilter {
  const DataWebAnalyticsSiteFilter({this.orderBy});

  final TfArg<DataWebAnalyticsSiteOrderBy>? orderBy;

  Map<String, Object?> encode() => {'order_by': ?orderBy?.toTfJson()};
}

/// `order_by` — derived from the provider schema description.
enum DataWebAnalyticsSiteOrderBy implements TerraformEnum {
  host('host'),
  created('created');

  const DataWebAnalyticsSiteOrderBy(this.terraformValue);
  @override
  final String terraformValue;
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
    RefTo<CloudflareAccount>? accountId,
    TfArg<String>? siteId,
    DataWebAnalyticsSiteFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'site_id': ?siteId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWebAnalyticsSiteSensitive;

  /// A reference to the `cloudflare_web_analytics_site` this data source reads, for
  /// arguments typed `RefTo<CloudflareWebAnalyticsSite>`.
  RefTo<CloudflareWebAnalyticsSite> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

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

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `site_id` attribute.
  TfRef<String> get siteIdRef => TfRef.attribute<String>(this, 'site_id');
}
