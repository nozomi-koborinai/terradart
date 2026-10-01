// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_page_rule`.
const Set<String> _cloudflarePageRuleSensitive = <String>{};

/// Page Rule enum for `status`.
extension type const PageRuleStatus._(TfArg<String> _)
    implements TfArg<String> {
  PageRuleStatus.variable(String name) : this._(TfArg.variable(name));
  PageRuleStatus.expression(String template)
    : this._(TfArg.expression(template));
  const PageRuleStatus.arg(TfArg<String> arg) : this._(arg);

  static const active = PageRuleStatus._(TfArgLiteral('active'));
  static const disabled = PageRuleStatus._(TfArgLiteral('disabled'));

  static const List<PageRuleStatus> values = [active, disabled];
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

  final PageRuleAutomaticHttpsRewrites? automaticHttpsRewrites;

  final TfArg<num>? browserCacheTtl;

  final PageRuleBrowserCheck? browserCheck;

  final TfArg<String>? bypassCacheOnCookie;

  final PageRuleCacheByDeviceType? cacheByDeviceType;

  final PageRuleCacheDeceptionArmor? cacheDeceptionArmor;

  final PageRuleCacheLevel? cacheLevel;

  final TfArg<String>? cacheOnCookie;

  final TfArg<Map<String, String>>? cacheTtlByStatus;

  final TfArg<bool>? disableApps;

  final TfArg<bool>? disablePerformance;

  final TfArg<bool>? disableSecurity;

  final TfArg<bool>? disableZaraz;

  final TfArg<num>? edgeCacheTtl;

  final PageRuleEmailObfuscation? emailObfuscation;

  final PageRuleExplicitCacheControl? explicitCacheControl;

  final TfArg<String>? hostHeaderOverride;

  final PageRuleIpGeolocation? ipGeolocation;

  final PageRuleMirage? mirage;

  final PageRuleOpportunisticEncryption? opportunisticEncryption;

  final PageRuleOriginErrorPagePassThru? originErrorPagePassThru;

  final PageRulePolish? polish;

  final TfArg<String>? resolveOverride;

  final PageRuleRespectStrongEtag? respectStrongEtag;

  final PageRuleResponseBuffering? responseBuffering;

  final PageRuleRocketLoader? rocketLoader;

  final PageRuleSecurityLevel? securityLevel;

  final PageRuleSortQueryStringForCache? sortQueryStringForCache;

  final PageRuleSsl? ssl;

  final PageRuleTrueClientIpHeader? trueClientIpHeader;

  final PageRuleWaf? waf;

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
extension type const PageRuleAutomaticHttpsRewrites._(TfArg<String> _)
    implements TfArg<String> {
  PageRuleAutomaticHttpsRewrites.variable(String name)
    : this._(TfArg.variable(name));
  PageRuleAutomaticHttpsRewrites.expression(String template)
    : this._(TfArg.expression(template));
  const PageRuleAutomaticHttpsRewrites.arg(TfArg<String> arg) : this._(arg);

  static const on = PageRuleAutomaticHttpsRewrites._(TfArgLiteral('on'));
  static const off = PageRuleAutomaticHttpsRewrites._(TfArgLiteral('off'));

  static const List<PageRuleAutomaticHttpsRewrites> values = [on, off];
}

/// `browser_check` — derived from the provider schema description.
extension type const PageRuleBrowserCheck._(TfArg<String> _)
    implements TfArg<String> {
  PageRuleBrowserCheck.variable(String name) : this._(TfArg.variable(name));
  PageRuleBrowserCheck.expression(String template)
    : this._(TfArg.expression(template));
  const PageRuleBrowserCheck.arg(TfArg<String> arg) : this._(arg);

  static const on = PageRuleBrowserCheck._(TfArgLiteral('on'));
  static const off = PageRuleBrowserCheck._(TfArgLiteral('off'));

  static const List<PageRuleBrowserCheck> values = [on, off];
}

/// `cache_by_device_type` — derived from the provider schema description.
extension type const PageRuleCacheByDeviceType._(TfArg<String> _)
    implements TfArg<String> {
  PageRuleCacheByDeviceType.variable(String name)
    : this._(TfArg.variable(name));
  PageRuleCacheByDeviceType.expression(String template)
    : this._(TfArg.expression(template));
  const PageRuleCacheByDeviceType.arg(TfArg<String> arg) : this._(arg);

  static const on = PageRuleCacheByDeviceType._(TfArgLiteral('on'));
  static const off = PageRuleCacheByDeviceType._(TfArgLiteral('off'));

  static const List<PageRuleCacheByDeviceType> values = [on, off];
}

/// `cache_deception_armor` — derived from the provider schema description.
extension type const PageRuleCacheDeceptionArmor._(TfArg<String> _)
    implements TfArg<String> {
  PageRuleCacheDeceptionArmor.variable(String name)
    : this._(TfArg.variable(name));
  PageRuleCacheDeceptionArmor.expression(String template)
    : this._(TfArg.expression(template));
  const PageRuleCacheDeceptionArmor.arg(TfArg<String> arg) : this._(arg);

  static const on = PageRuleCacheDeceptionArmor._(TfArgLiteral('on'));
  static const off = PageRuleCacheDeceptionArmor._(TfArgLiteral('off'));

  static const List<PageRuleCacheDeceptionArmor> values = [on, off];
}

/// `cache_level` — derived from the provider schema description.
extension type const PageRuleCacheLevel._(TfArg<String> _)
    implements TfArg<String> {
  PageRuleCacheLevel.variable(String name) : this._(TfArg.variable(name));
  PageRuleCacheLevel.expression(String template)
    : this._(TfArg.expression(template));
  const PageRuleCacheLevel.arg(TfArg<String> arg) : this._(arg);

  static const bypass = PageRuleCacheLevel._(TfArgLiteral('bypass'));
  static const basic = PageRuleCacheLevel._(TfArgLiteral('basic'));
  static const simplified = PageRuleCacheLevel._(TfArgLiteral('simplified'));
  static const aggressive = PageRuleCacheLevel._(TfArgLiteral('aggressive'));
  static const cacheEverything = PageRuleCacheLevel._(
    TfArgLiteral('cache_everything'),
  );

  static const List<PageRuleCacheLevel> values = [
    bypass,
    basic,
    simplified,
    aggressive,
    cacheEverything,
  ];
}

/// `email_obfuscation` — derived from the provider schema description.
extension type const PageRuleEmailObfuscation._(TfArg<String> _)
    implements TfArg<String> {
  PageRuleEmailObfuscation.variable(String name) : this._(TfArg.variable(name));
  PageRuleEmailObfuscation.expression(String template)
    : this._(TfArg.expression(template));
  const PageRuleEmailObfuscation.arg(TfArg<String> arg) : this._(arg);

  static const on = PageRuleEmailObfuscation._(TfArgLiteral('on'));
  static const off = PageRuleEmailObfuscation._(TfArgLiteral('off'));

  static const List<PageRuleEmailObfuscation> values = [on, off];
}

/// `explicit_cache_control` — derived from the provider schema description.
extension type const PageRuleExplicitCacheControl._(TfArg<String> _)
    implements TfArg<String> {
  PageRuleExplicitCacheControl.variable(String name)
    : this._(TfArg.variable(name));
  PageRuleExplicitCacheControl.expression(String template)
    : this._(TfArg.expression(template));
  const PageRuleExplicitCacheControl.arg(TfArg<String> arg) : this._(arg);

  static const on = PageRuleExplicitCacheControl._(TfArgLiteral('on'));
  static const off = PageRuleExplicitCacheControl._(TfArgLiteral('off'));

  static const List<PageRuleExplicitCacheControl> values = [on, off];
}

/// `ip_geolocation` — derived from the provider schema description.
extension type const PageRuleIpGeolocation._(TfArg<String> _)
    implements TfArg<String> {
  PageRuleIpGeolocation.variable(String name) : this._(TfArg.variable(name));
  PageRuleIpGeolocation.expression(String template)
    : this._(TfArg.expression(template));
  const PageRuleIpGeolocation.arg(TfArg<String> arg) : this._(arg);

  static const on = PageRuleIpGeolocation._(TfArgLiteral('on'));
  static const off = PageRuleIpGeolocation._(TfArgLiteral('off'));

  static const List<PageRuleIpGeolocation> values = [on, off];
}

/// `mirage` — derived from the provider schema description.
extension type const PageRuleMirage._(TfArg<String> _)
    implements TfArg<String> {
  PageRuleMirage.variable(String name) : this._(TfArg.variable(name));
  PageRuleMirage.expression(String template)
    : this._(TfArg.expression(template));
  const PageRuleMirage.arg(TfArg<String> arg) : this._(arg);

  static const on = PageRuleMirage._(TfArgLiteral('on'));
  static const off = PageRuleMirage._(TfArgLiteral('off'));

  static const List<PageRuleMirage> values = [on, off];
}

/// `opportunistic_encryption` — derived from the provider schema description.
extension type const PageRuleOpportunisticEncryption._(TfArg<String> _)
    implements TfArg<String> {
  PageRuleOpportunisticEncryption.variable(String name)
    : this._(TfArg.variable(name));
  PageRuleOpportunisticEncryption.expression(String template)
    : this._(TfArg.expression(template));
  const PageRuleOpportunisticEncryption.arg(TfArg<String> arg) : this._(arg);

  static const on = PageRuleOpportunisticEncryption._(TfArgLiteral('on'));
  static const off = PageRuleOpportunisticEncryption._(TfArgLiteral('off'));

  static const List<PageRuleOpportunisticEncryption> values = [on, off];
}

/// `origin_error_page_pass_thru` — derived from the provider schema description.
extension type const PageRuleOriginErrorPagePassThru._(TfArg<String> _)
    implements TfArg<String> {
  PageRuleOriginErrorPagePassThru.variable(String name)
    : this._(TfArg.variable(name));
  PageRuleOriginErrorPagePassThru.expression(String template)
    : this._(TfArg.expression(template));
  const PageRuleOriginErrorPagePassThru.arg(TfArg<String> arg) : this._(arg);

  static const on = PageRuleOriginErrorPagePassThru._(TfArgLiteral('on'));
  static const off = PageRuleOriginErrorPagePassThru._(TfArgLiteral('off'));

  static const List<PageRuleOriginErrorPagePassThru> values = [on, off];
}

/// `polish` — derived from the provider schema description.
extension type const PageRulePolish._(TfArg<String> _)
    implements TfArg<String> {
  PageRulePolish.variable(String name) : this._(TfArg.variable(name));
  PageRulePolish.expression(String template)
    : this._(TfArg.expression(template));
  const PageRulePolish.arg(TfArg<String> arg) : this._(arg);

  static const off = PageRulePolish._(TfArgLiteral('off'));
  static const lossless = PageRulePolish._(TfArgLiteral('lossless'));
  static const lossy = PageRulePolish._(TfArgLiteral('lossy'));

  static const List<PageRulePolish> values = [off, lossless, lossy];
}

/// `respect_strong_etag` — derived from the provider schema description.
extension type const PageRuleRespectStrongEtag._(TfArg<String> _)
    implements TfArg<String> {
  PageRuleRespectStrongEtag.variable(String name)
    : this._(TfArg.variable(name));
  PageRuleRespectStrongEtag.expression(String template)
    : this._(TfArg.expression(template));
  const PageRuleRespectStrongEtag.arg(TfArg<String> arg) : this._(arg);

  static const on = PageRuleRespectStrongEtag._(TfArgLiteral('on'));
  static const off = PageRuleRespectStrongEtag._(TfArgLiteral('off'));

  static const List<PageRuleRespectStrongEtag> values = [on, off];
}

/// `response_buffering` — derived from the provider schema description.
extension type const PageRuleResponseBuffering._(TfArg<String> _)
    implements TfArg<String> {
  PageRuleResponseBuffering.variable(String name)
    : this._(TfArg.variable(name));
  PageRuleResponseBuffering.expression(String template)
    : this._(TfArg.expression(template));
  const PageRuleResponseBuffering.arg(TfArg<String> arg) : this._(arg);

  static const on = PageRuleResponseBuffering._(TfArgLiteral('on'));
  static const off = PageRuleResponseBuffering._(TfArgLiteral('off'));

  static const List<PageRuleResponseBuffering> values = [on, off];
}

/// `rocket_loader` — derived from the provider schema description.
extension type const PageRuleRocketLoader._(TfArg<String> _)
    implements TfArg<String> {
  PageRuleRocketLoader.variable(String name) : this._(TfArg.variable(name));
  PageRuleRocketLoader.expression(String template)
    : this._(TfArg.expression(template));
  const PageRuleRocketLoader.arg(TfArg<String> arg) : this._(arg);

  static const on = PageRuleRocketLoader._(TfArgLiteral('on'));
  static const off = PageRuleRocketLoader._(TfArgLiteral('off'));

  static const List<PageRuleRocketLoader> values = [on, off];
}

/// `security_level` — derived from the provider schema description.
extension type const PageRuleSecurityLevel._(TfArg<String> _)
    implements TfArg<String> {
  PageRuleSecurityLevel.variable(String name) : this._(TfArg.variable(name));
  PageRuleSecurityLevel.expression(String template)
    : this._(TfArg.expression(template));
  const PageRuleSecurityLevel.arg(TfArg<String> arg) : this._(arg);

  static const off = PageRuleSecurityLevel._(TfArgLiteral('off'));
  static const essentiallyOff = PageRuleSecurityLevel._(
    TfArgLiteral('essentially_off'),
  );
  static const low = PageRuleSecurityLevel._(TfArgLiteral('low'));
  static const medium = PageRuleSecurityLevel._(TfArgLiteral('medium'));
  static const high = PageRuleSecurityLevel._(TfArgLiteral('high'));
  static const underAttack = PageRuleSecurityLevel._(
    TfArgLiteral('under_attack'),
  );

  static const List<PageRuleSecurityLevel> values = [
    off,
    essentiallyOff,
    low,
    medium,
    high,
    underAttack,
  ];
}

/// `sort_query_string_for_cache` — derived from the provider schema description.
extension type const PageRuleSortQueryStringForCache._(TfArg<String> _)
    implements TfArg<String> {
  PageRuleSortQueryStringForCache.variable(String name)
    : this._(TfArg.variable(name));
  PageRuleSortQueryStringForCache.expression(String template)
    : this._(TfArg.expression(template));
  const PageRuleSortQueryStringForCache.arg(TfArg<String> arg) : this._(arg);

  static const on = PageRuleSortQueryStringForCache._(TfArgLiteral('on'));
  static const off = PageRuleSortQueryStringForCache._(TfArgLiteral('off'));

  static const List<PageRuleSortQueryStringForCache> values = [on, off];
}

/// `ssl` — derived from the provider schema description.
extension type const PageRuleSsl._(TfArg<String> _) implements TfArg<String> {
  PageRuleSsl.variable(String name) : this._(TfArg.variable(name));
  PageRuleSsl.expression(String template) : this._(TfArg.expression(template));
  const PageRuleSsl.arg(TfArg<String> arg) : this._(arg);

  static const off = PageRuleSsl._(TfArgLiteral('off'));
  static const flexible = PageRuleSsl._(TfArgLiteral('flexible'));
  static const full = PageRuleSsl._(TfArgLiteral('full'));
  static const strict = PageRuleSsl._(TfArgLiteral('strict'));
  static const originPull = PageRuleSsl._(TfArgLiteral('origin_pull'));

  static const List<PageRuleSsl> values = [
    off,
    flexible,
    full,
    strict,
    originPull,
  ];
}

/// `true_client_ip_header` — derived from the provider schema description.
extension type const PageRuleTrueClientIpHeader._(TfArg<String> _)
    implements TfArg<String> {
  PageRuleTrueClientIpHeader.variable(String name)
    : this._(TfArg.variable(name));
  PageRuleTrueClientIpHeader.expression(String template)
    : this._(TfArg.expression(template));
  const PageRuleTrueClientIpHeader.arg(TfArg<String> arg) : this._(arg);

  static const on = PageRuleTrueClientIpHeader._(TfArgLiteral('on'));
  static const off = PageRuleTrueClientIpHeader._(TfArgLiteral('off'));

  static const List<PageRuleTrueClientIpHeader> values = [on, off];
}

/// `waf` — derived from the provider schema description.
extension type const PageRuleWaf._(TfArg<String> _) implements TfArg<String> {
  PageRuleWaf.variable(String name) : this._(TfArg.variable(name));
  PageRuleWaf.expression(String template) : this._(TfArg.expression(template));
  const PageRuleWaf.arg(TfArg<String> arg) : this._(arg);

  static const on = PageRuleWaf._(TfArgLiteral('on'));
  static const off = PageRuleWaf._(TfArgLiteral('off'));

  static const List<PageRuleWaf> values = [on, off];
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

  CloudflarePageRule(
    super.localName, {
    TfArg<num>? priority,
    PageRuleStatus? status,
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
  TfRef<num> get priority => TfRef.attribute<num>(this, 'priority');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `target` attribute.
  TfRef<String> get target => TfRef.attribute<String>(this, 'target');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
