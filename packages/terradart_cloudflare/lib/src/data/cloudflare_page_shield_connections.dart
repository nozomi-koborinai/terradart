// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_page_shield_connections`.
const Set<String> _cloudflarePageShieldConnectionsSensitive = <String>{};

/// Factory wrapper for `cloudflare_page_shield_connections`.
///
/// Accepted Permissions
///
/// - `Domain Page Shield` - `Domain Page Shield Read` - `Page Shield` - `Page
/// Shield Read` - `Zone Settings Read` - `Zone Settings Write`
final class DataCloudflarePageShieldConnections extends Data {
  static const String tfType = 'cloudflare_page_shield_connections';

  DataCloudflarePageShieldConnections({
    required super.localName,
    required TfArg<String> connectionId,
    TfArg<String>? zoneId,
  }) : super(
         terraformType: tfType,
         argMap: {
           'connection_id': connectionId,
           if (zoneId != null) 'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflarePageShieldConnectionsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `added_at` attribute.
  TfRef<String> get addedAt => TfRef.attribute<String>(this, 'added_at');

  /// Reference to `domain_reported_malicious` attribute.
  TfRef<bool> get domainReportedMalicious =>
      TfRef.attribute<bool>(this, 'domain_reported_malicious');

  /// Reference to `first_page_url` attribute.
  TfRef<String> get firstPageUrl =>
      TfRef.attribute<String>(this, 'first_page_url');

  /// Reference to `first_seen_at` attribute.
  TfRef<String> get firstSeenAt =>
      TfRef.attribute<String>(this, 'first_seen_at');

  /// Reference to `host` attribute.
  TfRef<String> get host => TfRef.attribute<String>(this, 'host');

  /// Reference to `last_seen_at` attribute.
  TfRef<String> get lastSeenAt => TfRef.attribute<String>(this, 'last_seen_at');

  /// Reference to `malicious_domain_categories` attribute.
  TfRef<List<String>> get maliciousDomainCategories =>
      TfRef.attribute<List<String>>(this, 'malicious_domain_categories');

  /// Reference to `malicious_url_categories` attribute.
  TfRef<List<String>> get maliciousUrlCategories =>
      TfRef.attribute<List<String>>(this, 'malicious_url_categories');

  /// Reference to `page_urls` attribute.
  TfRef<List<String>> get pageUrls =>
      TfRef.attribute<List<String>>(this, 'page_urls');

  /// Reference to `url` attribute.
  TfRef<String> get url => TfRef.attribute<String>(this, 'url');

  /// Reference to `url_contains_cdn_cgi_path` attribute.
  TfRef<bool> get urlContainsCdnCgiPath =>
      TfRef.attribute<bool>(this, 'url_contains_cdn_cgi_path');

  /// Reference to `url_reported_malicious` attribute.
  TfRef<bool> get urlReportedMalicious =>
      TfRef.attribute<bool>(this, 'url_reported_malicious');
}
