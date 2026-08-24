// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_page_shield_scripts`.
const Set<String> _cloudflarePageShieldScriptsSensitive = <String>{};

/// Factory wrapper for `cloudflare_page_shield_scripts`.
///
/// Accepted Permissions
///
/// - `Domain Page Shield` - `Domain Page Shield Read` - `Page Shield` - `Page
/// Shield Read` - `Zone Settings Read` - `Zone Settings Write`
final class DataCloudflarePageShieldScripts extends Data {
  static const String tfType = 'cloudflare_page_shield_scripts';

  DataCloudflarePageShieldScripts({
    required super.localName,
    required TfArg<String> scriptId,
    TfArg<String>? zoneId,
  }) : super(
         terraformType: tfType,
         argMap: {'script_id': scriptId, if (zoneId != null) 'zone_id': zoneId},
       );

  @override
  Set<String> get sensitiveFields => _cloudflarePageShieldScriptsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `added_at` attribute.
  TfRef<String> get addedAt => TfRef.attribute<String>(this, 'added_at');

  /// Reference to `cryptomining_score` attribute.
  TfRef<num> get cryptominingScore =>
      TfRef.attribute<num>(this, 'cryptomining_score');

  /// Reference to `dataflow_score` attribute.
  TfRef<num> get dataflowScore => TfRef.attribute<num>(this, 'dataflow_score');

  /// Reference to `domain_reported_malicious` attribute.
  TfRef<bool> get domainReportedMalicious =>
      TfRef.attribute<bool>(this, 'domain_reported_malicious');

  /// Reference to `fetched_at` attribute.
  TfRef<String> get fetchedAt => TfRef.attribute<String>(this, 'fetched_at');

  /// Reference to `first_page_url` attribute.
  TfRef<String> get firstPageUrl =>
      TfRef.attribute<String>(this, 'first_page_url');

  /// Reference to `first_seen_at` attribute.
  TfRef<String> get firstSeenAt =>
      TfRef.attribute<String>(this, 'first_seen_at');

  /// Reference to `hash` attribute.
  TfRef<String> get hash => TfRef.attribute<String>(this, 'hash');

  /// Reference to `host` attribute.
  TfRef<String> get host => TfRef.attribute<String>(this, 'host');

  /// Reference to `js_integrity_score` attribute.
  TfRef<num> get jsIntegrityScore =>
      TfRef.attribute<num>(this, 'js_integrity_score');

  /// Reference to `last_seen_at` attribute.
  TfRef<String> get lastSeenAt => TfRef.attribute<String>(this, 'last_seen_at');

  /// Reference to `magecart_score` attribute.
  TfRef<num> get magecartScore => TfRef.attribute<num>(this, 'magecart_score');

  /// Reference to `malicious_domain_categories` attribute.
  TfRef<List<String>> get maliciousDomainCategories =>
      TfRef.attribute<List<String>>(this, 'malicious_domain_categories');

  /// Reference to `malicious_url_categories` attribute.
  TfRef<List<String>> get maliciousUrlCategories =>
      TfRef.attribute<List<String>>(this, 'malicious_url_categories');

  /// Reference to `malware_score` attribute.
  TfRef<num> get malwareScore => TfRef.attribute<num>(this, 'malware_score');

  /// Reference to `obfuscation_score` attribute.
  TfRef<num> get obfuscationScore =>
      TfRef.attribute<num>(this, 'obfuscation_score');

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
