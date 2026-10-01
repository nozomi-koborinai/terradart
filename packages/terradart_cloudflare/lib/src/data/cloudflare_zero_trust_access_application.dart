// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../zero_trust/cloudflare_zero_trust_access_application.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_zero_trust_access_application`.
const Set<String> _cloudflareZeroTrustAccessApplicationSensitive = <String>{
  'saas_app.client_secret',
  'scim_config.authentication.client_secret',
  'scim_config.authentication.token',
};

/// Typed helper for the `filter` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class DataZeroTrustAccessApplicationFilter {
  const DataZeroTrustAccessApplicationFilter({
    this.aud,
    this.domain,
    this.exact,
    this.name,
    this.search,
  });

  final TfArg<String>? aud;

  final TfArg<String>? domain;

  final TfArg<bool>? exact;

  final TfArg<String>? name;

  final TfArg<String>? search;

  Map<String, Object?> encode() => {
    'aud': ?aud?.toTfJson(),
    'domain': ?domain?.toTfJson(),
    'exact': ?exact?.toTfJson(),
    'name': ?name?.toTfJson(),
    'search': ?search?.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_zero_trust_access_application`.
final class DataCloudflareZeroTrustAccessApplication extends Data {
  static const String tfType = 'cloudflare_zero_trust_access_application';

  DataCloudflareZeroTrustAccessApplication(
    super.localName, {
    RefTo<CloudflareAccount>? accountId,
    TfArg<String>? appId,
    RefTo<CloudflareZone>? zoneId,
    DataZeroTrustAccessApplicationFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'app_id': ?appId,
           'zone_id': ?zoneId?.encodeAs('id'),
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustAccessApplicationSensitive;

  /// A reference to the `cloudflare_zero_trust_access_application` this data source reads, for
  /// arguments typed `RefTo<CloudflareZeroTrustAccessApplication>`.
  RefTo<CloudflareZeroTrustAccessApplication> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `allow_authenticate_via_warp` attribute.
  TfRef<bool> get allowAuthenticateViaWarp =>
      TfRef.attribute<bool>(this, 'allow_authenticate_via_warp');

  /// Reference to `allow_iframe` attribute.
  TfRef<bool> get allowIframe => TfRef.attribute<bool>(this, 'allow_iframe');

  /// Reference to `allowed_idps` attribute.
  TfRef<List<String>> get allowedIdps =>
      TfRef.attribute<List<String>>(this, 'allowed_idps');

  /// Reference to `app_launcher_logo_url` attribute.
  TfRef<String> get appLauncherLogoUrl =>
      TfRef.attribute<String>(this, 'app_launcher_logo_url');

  /// Reference to `app_launcher_visible` attribute.
  TfRef<bool> get appLauncherVisible =>
      TfRef.attribute<bool>(this, 'app_launcher_visible');

  /// Reference to `aud` attribute.
  TfRef<String> get aud => TfRef.attribute<String>(this, 'aud');

  /// Reference to `auto_redirect_to_identity` attribute.
  TfRef<bool> get autoRedirectToIdentity =>
      TfRef.attribute<bool>(this, 'auto_redirect_to_identity');

  /// Reference to `bg_color` attribute.
  TfRef<String> get bgColor => TfRef.attribute<String>(this, 'bg_color');

  /// Reference to `custom_deny_message` attribute.
  TfRef<String> get customDenyMessage =>
      TfRef.attribute<String>(this, 'custom_deny_message');

  /// Reference to `custom_deny_url` attribute.
  TfRef<String> get customDenyUrl =>
      TfRef.attribute<String>(this, 'custom_deny_url');

  /// Reference to `custom_non_identity_deny_url` attribute.
  TfRef<String> get customNonIdentityDenyUrl =>
      TfRef.attribute<String>(this, 'custom_non_identity_deny_url');

  /// Reference to `custom_pages` attribute.
  TfRef<List<String>> get customPages =>
      TfRef.attribute<List<String>>(this, 'custom_pages');

  /// Reference to `domain` attribute.
  TfRef<String> get domain => TfRef.attribute<String>(this, 'domain');

  /// Reference to `enable_binding_cookie` attribute.
  TfRef<bool> get enableBindingCookie =>
      TfRef.attribute<bool>(this, 'enable_binding_cookie');

  /// Reference to `header_bg_color` attribute.
  TfRef<String> get headerBgColor =>
      TfRef.attribute<String>(this, 'header_bg_color');

  /// Reference to `http_only_cookie_attribute` attribute.
  TfRef<bool> get httpOnlyCookieAttribute =>
      TfRef.attribute<bool>(this, 'http_only_cookie_attribute');

  /// Reference to `logo_url` attribute.
  TfRef<String> get logoUrl => TfRef.attribute<String>(this, 'logo_url');

  /// Reference to `options_preflight_bypass` attribute.
  TfRef<bool> get optionsPreflightBypass =>
      TfRef.attribute<bool>(this, 'options_preflight_bypass');

  /// Reference to `path_cookie_attribute` attribute.
  TfRef<bool> get pathCookieAttribute =>
      TfRef.attribute<bool>(this, 'path_cookie_attribute');

  /// Reference to `read_service_tokens_from_header` attribute.
  TfRef<String> get readServiceTokensFromHeader =>
      TfRef.attribute<String>(this, 'read_service_tokens_from_header');

  /// Reference to `same_site_cookie_attribute` attribute.
  TfRef<String> get sameSiteCookieAttribute =>
      TfRef.attribute<String>(this, 'same_site_cookie_attribute');

  /// Reference to `self_hosted_domains` attribute.
  TfRef<List<String>> get selfHostedDomains =>
      TfRef.attribute<List<String>>(this, 'self_hosted_domains');

  /// Reference to `service_auth_401_redirect` attribute.
  TfRef<bool> get serviceAuth401Redirect =>
      TfRef.attribute<bool>(this, 'service_auth_401_redirect');

  /// Reference to `session_duration` attribute.
  TfRef<String> get sessionDuration =>
      TfRef.attribute<String>(this, 'session_duration');

  /// Reference to `skip_app_launcher_login_page` attribute.
  TfRef<bool> get skipAppLauncherLoginPage =>
      TfRef.attribute<bool>(this, 'skip_app_launcher_login_page');

  /// Reference to `skip_interstitial` attribute.
  TfRef<bool> get skipInterstitial =>
      TfRef.attribute<bool>(this, 'skip_interstitial');

  /// Reference to `tags` attribute.
  TfRef<List<String>> get tags => TfRef.attribute<List<String>>(this, 'tags');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `app_id` attribute.
  TfRef<String> get appId => TfRef.attribute<String>(this, 'app_id');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
