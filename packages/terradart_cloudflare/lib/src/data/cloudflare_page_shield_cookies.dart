// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_page_shield_cookies`.
const Set<String> _cloudflarePageShieldCookiesSensitive = <String>{};

/// Factory wrapper for `cloudflare_page_shield_cookies`.
///
/// Accepted Permissions
///
/// - `Domain Page Shield` - `Domain Page Shield Read` - `Page Shield` - `Page
/// Shield Read` - `Zone Settings Read` - `Zone Settings Write`
final class DataCloudflarePageShieldCookies extends Data {
  static const String tfType = 'cloudflare_page_shield_cookies';

  DataCloudflarePageShieldCookies({
    required super.localName,
    required TfArg<String> cookieId,
    TfArg<String>? zoneId,
  }) : super(
         terraformType: tfType,
         argMap: {'cookie_id': cookieId, if (zoneId != null) 'zone_id': zoneId},
       );

  @override
  Set<String> get sensitiveFields => _cloudflarePageShieldCookiesSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `domain_attribute` attribute.
  TfRef<String> get domainAttribute =>
      TfRef.attribute<String>(this, 'domain_attribute');

  /// Reference to `expires_attribute` attribute.
  TfRef<String> get expiresAttribute =>
      TfRef.attribute<String>(this, 'expires_attribute');

  /// Reference to `first_seen_at` attribute.
  TfRef<String> get firstSeenAt =>
      TfRef.attribute<String>(this, 'first_seen_at');

  /// Reference to `host` attribute.
  TfRef<String> get host => TfRef.attribute<String>(this, 'host');

  /// Reference to `http_only_attribute` attribute.
  TfRef<bool> get httpOnlyAttribute =>
      TfRef.attribute<bool>(this, 'http_only_attribute');

  /// Reference to `last_seen_at` attribute.
  TfRef<String> get lastSeenAt => TfRef.attribute<String>(this, 'last_seen_at');

  /// Reference to `max_age_attribute` attribute.
  TfRef<num> get maxAgeAttribute =>
      TfRef.attribute<num>(this, 'max_age_attribute');

  /// Reference to `page_urls` attribute.
  TfRef<List<String>> get pageUrls =>
      TfRef.attribute<List<String>>(this, 'page_urls');

  /// Reference to `path_attribute` attribute.
  TfRef<String> get pathAttribute =>
      TfRef.attribute<String>(this, 'path_attribute');

  /// Reference to `same_site_attribute` attribute.
  TfRef<String> get sameSiteAttribute =>
      TfRef.attribute<String>(this, 'same_site_attribute');

  /// Reference to `secure_attribute` attribute.
  TfRef<bool> get secureAttribute =>
      TfRef.attribute<bool>(this, 'secure_attribute');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
