// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_page_rule`.
const Set<String> _cloudflarePageRuleSensitive = <String>{};

/// Page Rule enum for `status`.
enum PageRuleStatus implements TerraformEnum {
  active('active'),
  disabled('disabled');

  const PageRuleStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `actions` block of
/// `cloudflare_page_rule` (derived from provider schema).
@immutable
final class PageRuleActions {
  const PageRuleActions({
    this.alwaysUseHttps,
    this.automaticHttpsRewrites,
    this.browserCacheTtl,
    this.browserCheck,
    this.bypassCacheOnCookie,
    this.cacheByDeviceType,
    this.cacheDeceptionArmor,
    this.cacheLevel,
    this.cacheOnCookie,
    this.cacheTtlByStatus,
    this.disableApps,
    this.disablePerformance,
    this.disableSecurity,
    this.disableZaraz,
    this.edgeCacheTtl,
    this.emailObfuscation,
    this.explicitCacheControl,
    this.hostHeaderOverride,
    this.ipGeolocation,
    this.mirage,
    this.opportunisticEncryption,
    this.originErrorPagePassThru,
    this.polish,
    this.resolveOverride,
    this.respectStrongEtag,
    this.responseBuffering,
    this.rocketLoader,
    this.securityLevel,
    this.sortQueryStringForCache,
    this.ssl,
    this.trueClientIpHeader,
    this.waf,
    this.cacheKeyFields,
    this.forwardingUrl,
  });

  final TfArg<bool>? alwaysUseHttps;

  final TfArg<PageRuleAutomaticHttpsRewrites>? automaticHttpsRewrites;

  final TfArg<num>? browserCacheTtl;

  final TfArg<PageRuleBrowserCheck>? browserCheck;

  final TfArg<String>? bypassCacheOnCookie;

  final TfArg<PageRuleCacheByDeviceType>? cacheByDeviceType;

  final TfArg<PageRuleCacheDeceptionArmor>? cacheDeceptionArmor;

  final TfArg<PageRuleCacheLevel>? cacheLevel;

  final TfArg<String>? cacheOnCookie;

  final TfArg<Map<String, String>>? cacheTtlByStatus;

  final TfArg<bool>? disableApps;

  final TfArg<bool>? disablePerformance;

  final TfArg<bool>? disableSecurity;

  final TfArg<bool>? disableZaraz;

  final TfArg<num>? edgeCacheTtl;

  final TfArg<PageRuleEmailObfuscation>? emailObfuscation;

  final TfArg<PageRuleExplicitCacheControl>? explicitCacheControl;

  final TfArg<String>? hostHeaderOverride;

  final TfArg<PageRuleIpGeolocation>? ipGeolocation;

  final TfArg<PageRuleMirage>? mirage;

  final TfArg<PageRuleOpportunisticEncryption>? opportunisticEncryption;

  final TfArg<PageRuleOriginErrorPagePassThru>? originErrorPagePassThru;

  final TfArg<PageRulePolish>? polish;

  final TfArg<String>? resolveOverride;

  final TfArg<PageRuleRespectStrongEtag>? respectStrongEtag;

  final TfArg<PageRuleResponseBuffering>? responseBuffering;

  final TfArg<PageRuleRocketLoader>? rocketLoader;

  final TfArg<PageRuleSecurityLevel>? securityLevel;

  final TfArg<PageRuleSortQueryStringForCache>? sortQueryStringForCache;

  final TfArg<PageRuleSsl>? ssl;

  final TfArg<PageRuleTrueClientIpHeader>? trueClientIpHeader;

  final TfArg<PageRuleWaf>? waf;

  final PageRuleCacheKeyFields? cacheKeyFields;

  final PageRuleForwardingUrl? forwardingUrl;

  Map<String, Object?> encode() => {
    'always_use_https': ?alwaysUseHttps?.toTfJson(),
    'automatic_https_rewrites': ?automaticHttpsRewrites?.toTfJson(),
    'browser_cache_ttl': ?browserCacheTtl?.toTfJson(),
    'browser_check': ?browserCheck?.toTfJson(),
    'bypass_cache_on_cookie': ?bypassCacheOnCookie?.toTfJson(),
    'cache_by_device_type': ?cacheByDeviceType?.toTfJson(),
    'cache_deception_armor': ?cacheDeceptionArmor?.toTfJson(),
    'cache_level': ?cacheLevel?.toTfJson(),
    'cache_on_cookie': ?cacheOnCookie?.toTfJson(),
    'cache_ttl_by_status': ?cacheTtlByStatus?.toTfJson(),
    'disable_apps': ?disableApps?.toTfJson(),
    'disable_performance': ?disablePerformance?.toTfJson(),
    'disable_security': ?disableSecurity?.toTfJson(),
    'disable_zaraz': ?disableZaraz?.toTfJson(),
    'edge_cache_ttl': ?edgeCacheTtl?.toTfJson(),
    'email_obfuscation': ?emailObfuscation?.toTfJson(),
    'explicit_cache_control': ?explicitCacheControl?.toTfJson(),
    'host_header_override': ?hostHeaderOverride?.toTfJson(),
    'ip_geolocation': ?ipGeolocation?.toTfJson(),
    'mirage': ?mirage?.toTfJson(),
    'opportunistic_encryption': ?opportunisticEncryption?.toTfJson(),
    'origin_error_page_pass_thru': ?originErrorPagePassThru?.toTfJson(),
    'polish': ?polish?.toTfJson(),
    'resolve_override': ?resolveOverride?.toTfJson(),
    'respect_strong_etag': ?respectStrongEtag?.toTfJson(),
    'response_buffering': ?responseBuffering?.toTfJson(),
    'rocket_loader': ?rocketLoader?.toTfJson(),
    'security_level': ?securityLevel?.toTfJson(),
    'sort_query_string_for_cache': ?sortQueryStringForCache?.toTfJson(),
    'ssl': ?ssl?.toTfJson(),
    'true_client_ip_header': ?trueClientIpHeader?.toTfJson(),
    'waf': ?waf?.toTfJson(),
    'cache_key_fields': ?cacheKeyFields?.encode(),
    'forwarding_url': ?forwardingUrl?.encode(),
  };
}

/// `automatic_https_rewrites` — derived from the provider schema description.
enum PageRuleAutomaticHttpsRewrites implements TerraformEnum {
  on('on'),
  off('off');

  const PageRuleAutomaticHttpsRewrites(this.terraformValue);
  @override
  final String terraformValue;
}

/// `browser_check` — derived from the provider schema description.
enum PageRuleBrowserCheck implements TerraformEnum {
  on('on'),
  off('off');

  const PageRuleBrowserCheck(this.terraformValue);
  @override
  final String terraformValue;
}

/// `cache_by_device_type` — derived from the provider schema description.
enum PageRuleCacheByDeviceType implements TerraformEnum {
  on('on'),
  off('off');

  const PageRuleCacheByDeviceType(this.terraformValue);
  @override
  final String terraformValue;
}

/// `cache_deception_armor` — derived from the provider schema description.
enum PageRuleCacheDeceptionArmor implements TerraformEnum {
  on('on'),
  off('off');

  const PageRuleCacheDeceptionArmor(this.terraformValue);
  @override
  final String terraformValue;
}

/// `cache_level` — derived from the provider schema description.
enum PageRuleCacheLevel implements TerraformEnum {
  bypass('bypass'),
  basic('basic'),
  simplified('simplified'),
  aggressive('aggressive'),
  cacheEverything('cache_everything');

  const PageRuleCacheLevel(this.terraformValue);
  @override
  final String terraformValue;
}

/// `email_obfuscation` — derived from the provider schema description.
enum PageRuleEmailObfuscation implements TerraformEnum {
  on('on'),
  off('off');

  const PageRuleEmailObfuscation(this.terraformValue);
  @override
  final String terraformValue;
}

/// `explicit_cache_control` — derived from the provider schema description.
enum PageRuleExplicitCacheControl implements TerraformEnum {
  on('on'),
  off('off');

  const PageRuleExplicitCacheControl(this.terraformValue);
  @override
  final String terraformValue;
}

/// `ip_geolocation` — derived from the provider schema description.
enum PageRuleIpGeolocation implements TerraformEnum {
  on('on'),
  off('off');

  const PageRuleIpGeolocation(this.terraformValue);
  @override
  final String terraformValue;
}

/// `mirage` — derived from the provider schema description.
enum PageRuleMirage implements TerraformEnum {
  on('on'),
  off('off');

  const PageRuleMirage(this.terraformValue);
  @override
  final String terraformValue;
}

/// `opportunistic_encryption` — derived from the provider schema description.
enum PageRuleOpportunisticEncryption implements TerraformEnum {
  on('on'),
  off('off');

  const PageRuleOpportunisticEncryption(this.terraformValue);
  @override
  final String terraformValue;
}

/// `origin_error_page_pass_thru` — derived from the provider schema description.
enum PageRuleOriginErrorPagePassThru implements TerraformEnum {
  on('on'),
  off('off');

  const PageRuleOriginErrorPagePassThru(this.terraformValue);
  @override
  final String terraformValue;
}

/// `polish` — derived from the provider schema description.
enum PageRulePolish implements TerraformEnum {
  off('off'),
  lossless('lossless'),
  lossy('lossy');

  const PageRulePolish(this.terraformValue);
  @override
  final String terraformValue;
}

/// `respect_strong_etag` — derived from the provider schema description.
enum PageRuleRespectStrongEtag implements TerraformEnum {
  on('on'),
  off('off');

  const PageRuleRespectStrongEtag(this.terraformValue);
  @override
  final String terraformValue;
}

/// `response_buffering` — derived from the provider schema description.
enum PageRuleResponseBuffering implements TerraformEnum {
  on('on'),
  off('off');

  const PageRuleResponseBuffering(this.terraformValue);
  @override
  final String terraformValue;
}

/// `rocket_loader` — derived from the provider schema description.
enum PageRuleRocketLoader implements TerraformEnum {
  on('on'),
  off('off');

  const PageRuleRocketLoader(this.terraformValue);
  @override
  final String terraformValue;
}

/// `security_level` — derived from the provider schema description.
enum PageRuleSecurityLevel implements TerraformEnum {
  off('off'),
  essentiallyOff('essentially_off'),
  low('low'),
  medium('medium'),
  high('high'),
  underAttack('under_attack');

  const PageRuleSecurityLevel(this.terraformValue);
  @override
  final String terraformValue;
}

/// `sort_query_string_for_cache` — derived from the provider schema description.
enum PageRuleSortQueryStringForCache implements TerraformEnum {
  on('on'),
  off('off');

  const PageRuleSortQueryStringForCache(this.terraformValue);
  @override
  final String terraformValue;
}

/// `ssl` — derived from the provider schema description.
enum PageRuleSsl implements TerraformEnum {
  off('off'),
  flexible('flexible'),
  full('full'),
  strict('strict'),
  originPull('origin_pull');

  const PageRuleSsl(this.terraformValue);
  @override
  final String terraformValue;
}

/// `true_client_ip_header` — derived from the provider schema description.
enum PageRuleTrueClientIpHeader implements TerraformEnum {
  on('on'),
  off('off');

  const PageRuleTrueClientIpHeader(this.terraformValue);
  @override
  final String terraformValue;
}

/// `waf` — derived from the provider schema description.
enum PageRuleWaf implements TerraformEnum {
  on('on'),
  off('off');

  const PageRuleWaf(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `actions.cache_key_fields` block of
/// `cloudflare_page_rule` (derived from provider schema).
@immutable
final class PageRuleCacheKeyFields {
  const PageRuleCacheKeyFields({
    this.cookie,
    this.header,
    this.host,
    this.queryString,
    this.user,
  });

  final PageRuleCookie? cookie;

  final PageRuleHeader? header;

  final PageRuleHost? host;

  final PageRuleQueryString? queryString;

  final PageRuleUser? user;

  Map<String, Object?> encode() => {
    'cookie': ?cookie?.encode(),
    'header': ?header?.encode(),
    'host': ?host?.encode(),
    'query_string': ?queryString?.encode(),
    'user': ?user?.encode(),
  };
}

/// Typed helper for the `actions.cache_key_fields.cookie` block of
/// `cloudflare_page_rule` (derived from provider schema).
@immutable
final class PageRuleCookie {
  const PageRuleCookie({this.checkPresence, this.include});

  final TfArg<List<String>>? checkPresence;

  final TfArg<List<String>>? include;

  Map<String, Object?> encode() => {
    'check_presence': ?checkPresence?.toTfJson(),
    'include': ?include?.toTfJson(),
  };
}

/// Typed helper for the `actions.cache_key_fields.header` block of
/// `cloudflare_page_rule` (derived from provider schema).
@immutable
final class PageRuleHeader {
  const PageRuleHeader({this.checkPresence, this.exclude, this.include});

  final TfArg<List<String>>? checkPresence;

  final TfArg<List<String>>? exclude;

  final TfArg<List<String>>? include;

  Map<String, Object?> encode() => {
    'check_presence': ?checkPresence?.toTfJson(),
    'exclude': ?exclude?.toTfJson(),
    'include': ?include?.toTfJson(),
  };
}

/// Typed helper for the `actions.cache_key_fields.host` block of
/// `cloudflare_page_rule` (derived from provider schema).
@immutable
final class PageRuleHost {
  const PageRuleHost({this.resolved});

  final TfArg<bool>? resolved;

  Map<String, Object?> encode() => {'resolved': ?resolved?.toTfJson()};
}

/// Typed helper for the `actions.cache_key_fields.query_string` block of
/// `cloudflare_page_rule` (derived from provider schema).
@immutable
final class PageRuleQueryString {
  const PageRuleQueryString({this.exclude, this.include});

  final TfArg<List<String>>? exclude;

  final TfArg<List<String>>? include;

  Map<String, Object?> encode() => {
    'exclude': ?exclude?.toTfJson(),
    'include': ?include?.toTfJson(),
  };
}

/// Typed helper for the `actions.cache_key_fields.user` block of
/// `cloudflare_page_rule` (derived from provider schema).
@immutable
final class PageRuleUser {
  const PageRuleUser({this.deviceType, this.geo, this.lang});

  final TfArg<bool>? deviceType;

  final TfArg<bool>? geo;

  final TfArg<bool>? lang;

  Map<String, Object?> encode() => {
    'device_type': ?deviceType?.toTfJson(),
    'geo': ?geo?.toTfJson(),
    'lang': ?lang?.toTfJson(),
  };
}

/// Typed helper for the `actions.forwarding_url` block of
/// `cloudflare_page_rule` (derived from provider schema).
@immutable
final class PageRuleForwardingUrl {
  const PageRuleForwardingUrl({required this.statusCode, required this.url});

  final TfArg<num> statusCode;

  final TfArg<String> url;

  Map<String, Object?> encode() => {
    'status_code': statusCode.toTfJson(),
    'url': url.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_page_rule`.
///
/// Accepted Permissions
///
/// - `Access: Apps and Policies Read` - `Access: Apps and Policies Revoke` -
/// `Access: Apps and Policies Write` - `Access: Mutual TLS Certificates Write`
/// - `Access: Organizations, Identity Providers, and Groups Write` - `Analytics
/// Read` - `Apps Write` - `Cache Purge` - `DNS Read` - `DNS Write` - `Firewall
/// Services Read` - `Firewall Services Write` - `Load Balancers Read` - `Load
/// Balancers Write` - `Logs Read` - `Logs Write` - `Page Rules Read` - `Page
/// Rules Write` - `SSL and Certificates Read` - `SSL and Certificates Write` -
/// `Stream Read` - `Stream Write` - `Trust and Safety Read` - `Trust and Safety
/// Write` - `Workers Routes Read` - `Workers Routes Write` - `Workers Scripts
/// Read` - `Workers Scripts Write` - `Zaraz Admin` - `Zaraz Edit` - `Zaraz
/// Read` - `Zero Trust: PII Read` - `Zone Read` - `Zone Settings Read` - `Zone
/// Settings Write` - `Zone Write`
final class CloudflarePageRule extends Resource {
  static const String tfType = 'cloudflare_page_rule';

  CloudflarePageRule({
    required super.localName,
    TfArg<num>? priority,
    TfArg<PageRuleStatus>? status,
    required TfArg<String> target,
    required RefTo<CloudflareZone> zoneId,
    required PageRuleActions actions,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'priority': ?priority,
           'status': ?status,
           'target': target,
           'zone_id': zoneId.encodeAs('id'),
           'actions': TfArg.literal(actions.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflarePageRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflarePageRule>`.
  RefTo<CloudflarePageRule> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `priority` attribute.
  TfRef<num> get priorityRef => TfRef.attribute<num>(this, 'priority');

  /// Reference to `status` attribute.
  TfRef<String> get statusRef => TfRef.attribute<String>(this, 'status');

  /// Reference to `target` attribute.
  TfRef<String> get targetRef => TfRef.attribute<String>(this, 'target');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneIdRef => TfRef.attribute<String>(this, 'zone_id');
}
