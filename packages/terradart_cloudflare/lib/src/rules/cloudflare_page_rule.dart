// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

  final TfArg<PageRuleActionsAutomaticHttpsRewrites>? automaticHttpsRewrites;

  final TfArg<num>? browserCacheTtl;

  final TfArg<PageRuleActionsBrowserCheck>? browserCheck;

  final TfArg<String>? bypassCacheOnCookie;

  final TfArg<PageRuleActionsCacheByDeviceType>? cacheByDeviceType;

  final TfArg<PageRuleActionsCacheDeceptionArmor>? cacheDeceptionArmor;

  final TfArg<PageRuleActionsCacheLevel>? cacheLevel;

  final TfArg<String>? cacheOnCookie;

  final TfArg<Map<String, String>>? cacheTtlByStatus;

  final TfArg<bool>? disableApps;

  final TfArg<bool>? disablePerformance;

  final TfArg<bool>? disableSecurity;

  final TfArg<bool>? disableZaraz;

  final TfArg<num>? edgeCacheTtl;

  final TfArg<PageRuleActionsEmailObfuscation>? emailObfuscation;

  final TfArg<PageRuleActionsExplicitCacheControl>? explicitCacheControl;

  final TfArg<String>? hostHeaderOverride;

  final TfArg<PageRuleActionsIpGeolocation>? ipGeolocation;

  final TfArg<PageRuleActionsMirage>? mirage;

  final TfArg<PageRuleActionsOpportunisticEncryption>? opportunisticEncryption;

  final TfArg<PageRuleActionsOriginErrorPagePassThru>? originErrorPagePassThru;

  final TfArg<PageRuleActionsPolish>? polish;

  final TfArg<String>? resolveOverride;

  final TfArg<PageRuleActionsRespectStrongEtag>? respectStrongEtag;

  final TfArg<PageRuleActionsResponseBuffering>? responseBuffering;

  final TfArg<PageRuleActionsRocketLoader>? rocketLoader;

  final TfArg<PageRuleActionsSecurityLevel>? securityLevel;

  final TfArg<PageRuleActionsSortQueryStringForCache>? sortQueryStringForCache;

  final TfArg<PageRuleActionsSsl>? ssl;

  final TfArg<PageRuleActionsTrueClientIpHeader>? trueClientIpHeader;

  final TfArg<PageRuleActionsWaf>? waf;

  final PageRuleActionsCacheKeyFields? cacheKeyFields;

  final PageRuleActionsForwardingUrl? forwardingUrl;

  Map<String, Object?> encode() => {
    if (alwaysUseHttps != null) 'always_use_https': alwaysUseHttps!.toTfJson(),
    if (automaticHttpsRewrites != null)
      'automatic_https_rewrites': automaticHttpsRewrites!.toTfJson(),
    if (browserCacheTtl != null)
      'browser_cache_ttl': browserCacheTtl!.toTfJson(),
    if (browserCheck != null) 'browser_check': browserCheck!.toTfJson(),
    if (bypassCacheOnCookie != null)
      'bypass_cache_on_cookie': bypassCacheOnCookie!.toTfJson(),
    if (cacheByDeviceType != null)
      'cache_by_device_type': cacheByDeviceType!.toTfJson(),
    if (cacheDeceptionArmor != null)
      'cache_deception_armor': cacheDeceptionArmor!.toTfJson(),
    if (cacheLevel != null) 'cache_level': cacheLevel!.toTfJson(),
    if (cacheOnCookie != null) 'cache_on_cookie': cacheOnCookie!.toTfJson(),
    if (cacheTtlByStatus != null)
      'cache_ttl_by_status': cacheTtlByStatus!.toTfJson(),
    if (disableApps != null) 'disable_apps': disableApps!.toTfJson(),
    if (disablePerformance != null)
      'disable_performance': disablePerformance!.toTfJson(),
    if (disableSecurity != null)
      'disable_security': disableSecurity!.toTfJson(),
    if (disableZaraz != null) 'disable_zaraz': disableZaraz!.toTfJson(),
    if (edgeCacheTtl != null) 'edge_cache_ttl': edgeCacheTtl!.toTfJson(),
    if (emailObfuscation != null)
      'email_obfuscation': emailObfuscation!.toTfJson(),
    if (explicitCacheControl != null)
      'explicit_cache_control': explicitCacheControl!.toTfJson(),
    if (hostHeaderOverride != null)
      'host_header_override': hostHeaderOverride!.toTfJson(),
    if (ipGeolocation != null) 'ip_geolocation': ipGeolocation!.toTfJson(),
    if (mirage != null) 'mirage': mirage!.toTfJson(),
    if (opportunisticEncryption != null)
      'opportunistic_encryption': opportunisticEncryption!.toTfJson(),
    if (originErrorPagePassThru != null)
      'origin_error_page_pass_thru': originErrorPagePassThru!.toTfJson(),
    if (polish != null) 'polish': polish!.toTfJson(),
    if (resolveOverride != null)
      'resolve_override': resolveOverride!.toTfJson(),
    if (respectStrongEtag != null)
      'respect_strong_etag': respectStrongEtag!.toTfJson(),
    if (responseBuffering != null)
      'response_buffering': responseBuffering!.toTfJson(),
    if (rocketLoader != null) 'rocket_loader': rocketLoader!.toTfJson(),
    if (securityLevel != null) 'security_level': securityLevel!.toTfJson(),
    if (sortQueryStringForCache != null)
      'sort_query_string_for_cache': sortQueryStringForCache!.toTfJson(),
    if (ssl != null) 'ssl': ssl!.toTfJson(),
    if (trueClientIpHeader != null)
      'true_client_ip_header': trueClientIpHeader!.toTfJson(),
    if (waf != null) 'waf': waf!.toTfJson(),
    if (cacheKeyFields != null) 'cache_key_fields': cacheKeyFields!.encode(),
    if (forwardingUrl != null) 'forwarding_url': forwardingUrl!.encode(),
  };
}

/// `automatic_https_rewrites` — derived from the provider schema description.
enum PageRuleActionsAutomaticHttpsRewrites implements TerraformEnum {
  on('on'),
  off('off');

  const PageRuleActionsAutomaticHttpsRewrites(this.terraformValue);
  @override
  final String terraformValue;
}

/// `browser_check` — derived from the provider schema description.
enum PageRuleActionsBrowserCheck implements TerraformEnum {
  on('on'),
  off('off');

  const PageRuleActionsBrowserCheck(this.terraformValue);
  @override
  final String terraformValue;
}

/// `cache_by_device_type` — derived from the provider schema description.
enum PageRuleActionsCacheByDeviceType implements TerraformEnum {
  on('on'),
  off('off');

  const PageRuleActionsCacheByDeviceType(this.terraformValue);
  @override
  final String terraformValue;
}

/// `cache_deception_armor` — derived from the provider schema description.
enum PageRuleActionsCacheDeceptionArmor implements TerraformEnum {
  on('on'),
  off('off');

  const PageRuleActionsCacheDeceptionArmor(this.terraformValue);
  @override
  final String terraformValue;
}

/// `cache_level` — derived from the provider schema description.
enum PageRuleActionsCacheLevel implements TerraformEnum {
  bypass('bypass'),
  basic('basic'),
  simplified('simplified'),
  aggressive('aggressive'),
  cacheEverything('cache_everything');

  const PageRuleActionsCacheLevel(this.terraformValue);
  @override
  final String terraformValue;
}

/// `email_obfuscation` — derived from the provider schema description.
enum PageRuleActionsEmailObfuscation implements TerraformEnum {
  on('on'),
  off('off');

  const PageRuleActionsEmailObfuscation(this.terraformValue);
  @override
  final String terraformValue;
}

/// `explicit_cache_control` — derived from the provider schema description.
enum PageRuleActionsExplicitCacheControl implements TerraformEnum {
  on('on'),
  off('off');

  const PageRuleActionsExplicitCacheControl(this.terraformValue);
  @override
  final String terraformValue;
}

/// `ip_geolocation` — derived from the provider schema description.
enum PageRuleActionsIpGeolocation implements TerraformEnum {
  on('on'),
  off('off');

  const PageRuleActionsIpGeolocation(this.terraformValue);
  @override
  final String terraformValue;
}

/// `mirage` — derived from the provider schema description.
enum PageRuleActionsMirage implements TerraformEnum {
  on('on'),
  off('off');

  const PageRuleActionsMirage(this.terraformValue);
  @override
  final String terraformValue;
}

/// `opportunistic_encryption` — derived from the provider schema description.
enum PageRuleActionsOpportunisticEncryption implements TerraformEnum {
  on('on'),
  off('off');

  const PageRuleActionsOpportunisticEncryption(this.terraformValue);
  @override
  final String terraformValue;
}

/// `origin_error_page_pass_thru` — derived from the provider schema description.
enum PageRuleActionsOriginErrorPagePassThru implements TerraformEnum {
  on('on'),
  off('off');

  const PageRuleActionsOriginErrorPagePassThru(this.terraformValue);
  @override
  final String terraformValue;
}

/// `polish` — derived from the provider schema description.
enum PageRuleActionsPolish implements TerraformEnum {
  off('off'),
  lossless('lossless'),
  lossy('lossy');

  const PageRuleActionsPolish(this.terraformValue);
  @override
  final String terraformValue;
}

/// `respect_strong_etag` — derived from the provider schema description.
enum PageRuleActionsRespectStrongEtag implements TerraformEnum {
  on('on'),
  off('off');

  const PageRuleActionsRespectStrongEtag(this.terraformValue);
  @override
  final String terraformValue;
}

/// `response_buffering` — derived from the provider schema description.
enum PageRuleActionsResponseBuffering implements TerraformEnum {
  on('on'),
  off('off');

  const PageRuleActionsResponseBuffering(this.terraformValue);
  @override
  final String terraformValue;
}

/// `rocket_loader` — derived from the provider schema description.
enum PageRuleActionsRocketLoader implements TerraformEnum {
  on('on'),
  off('off');

  const PageRuleActionsRocketLoader(this.terraformValue);
  @override
  final String terraformValue;
}

/// `security_level` — derived from the provider schema description.
enum PageRuleActionsSecurityLevel implements TerraformEnum {
  off('off'),
  essentiallyOff('essentially_off'),
  low('low'),
  medium('medium'),
  high('high'),
  underAttack('under_attack');

  const PageRuleActionsSecurityLevel(this.terraformValue);
  @override
  final String terraformValue;
}

/// `sort_query_string_for_cache` — derived from the provider schema description.
enum PageRuleActionsSortQueryStringForCache implements TerraformEnum {
  on('on'),
  off('off');

  const PageRuleActionsSortQueryStringForCache(this.terraformValue);
  @override
  final String terraformValue;
}

/// `ssl` — derived from the provider schema description.
enum PageRuleActionsSsl implements TerraformEnum {
  off('off'),
  flexible('flexible'),
  full('full'),
  strict('strict'),
  originPull('origin_pull');

  const PageRuleActionsSsl(this.terraformValue);
  @override
  final String terraformValue;
}

/// `true_client_ip_header` — derived from the provider schema description.
enum PageRuleActionsTrueClientIpHeader implements TerraformEnum {
  on('on'),
  off('off');

  const PageRuleActionsTrueClientIpHeader(this.terraformValue);
  @override
  final String terraformValue;
}

/// `waf` — derived from the provider schema description.
enum PageRuleActionsWaf implements TerraformEnum {
  on('on'),
  off('off');

  const PageRuleActionsWaf(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `actions.cache_key_fields` block of
/// `cloudflare_page_rule` (derived from provider schema).
@immutable
final class PageRuleActionsCacheKeyFields {
  const PageRuleActionsCacheKeyFields({
    this.cookie,
    this.header,
    this.host,
    this.queryString,
    this.user,
  });

  final PageRuleActionsCacheKeyFieldsCookie? cookie;

  final PageRuleActionsCacheKeyFieldsHeader? header;

  final PageRuleActionsCacheKeyFieldsHost? host;

  final PageRuleActionsCacheKeyFieldsQueryString? queryString;

  final PageRuleActionsCacheKeyFieldsUser? user;

  Map<String, Object?> encode() => {
    if (cookie != null) 'cookie': cookie!.encode(),
    if (header != null) 'header': header!.encode(),
    if (host != null) 'host': host!.encode(),
    if (queryString != null) 'query_string': queryString!.encode(),
    if (user != null) 'user': user!.encode(),
  };
}

/// Typed helper for the `actions.cache_key_fields.cookie` block of
/// `cloudflare_page_rule` (derived from provider schema).
@immutable
final class PageRuleActionsCacheKeyFieldsCookie {
  const PageRuleActionsCacheKeyFieldsCookie({this.checkPresence, this.include});

  final TfArg<List<Object?>>? checkPresence;

  final TfArg<List<Object?>>? include;

  Map<String, Object?> encode() => {
    if (checkPresence != null) 'check_presence': checkPresence!.toTfJson(),
    if (include != null) 'include': include!.toTfJson(),
  };
}

/// Typed helper for the `actions.cache_key_fields.header` block of
/// `cloudflare_page_rule` (derived from provider schema).
@immutable
final class PageRuleActionsCacheKeyFieldsHeader {
  const PageRuleActionsCacheKeyFieldsHeader({
    this.checkPresence,
    this.exclude,
    this.include,
  });

  final TfArg<List<Object?>>? checkPresence;

  final TfArg<List<Object?>>? exclude;

  final TfArg<List<Object?>>? include;

  Map<String, Object?> encode() => {
    if (checkPresence != null) 'check_presence': checkPresence!.toTfJson(),
    if (exclude != null) 'exclude': exclude!.toTfJson(),
    if (include != null) 'include': include!.toTfJson(),
  };
}

/// Typed helper for the `actions.cache_key_fields.host` block of
/// `cloudflare_page_rule` (derived from provider schema).
@immutable
final class PageRuleActionsCacheKeyFieldsHost {
  const PageRuleActionsCacheKeyFieldsHost({this.resolved});

  final TfArg<bool>? resolved;

  Map<String, Object?> encode() => {
    if (resolved != null) 'resolved': resolved!.toTfJson(),
  };
}

/// Typed helper for the `actions.cache_key_fields.query_string` block of
/// `cloudflare_page_rule` (derived from provider schema).
@immutable
final class PageRuleActionsCacheKeyFieldsQueryString {
  const PageRuleActionsCacheKeyFieldsQueryString({this.exclude, this.include});

  final TfArg<List<Object?>>? exclude;

  final TfArg<List<Object?>>? include;

  Map<String, Object?> encode() => {
    if (exclude != null) 'exclude': exclude!.toTfJson(),
    if (include != null) 'include': include!.toTfJson(),
  };
}

/// Typed helper for the `actions.cache_key_fields.user` block of
/// `cloudflare_page_rule` (derived from provider schema).
@immutable
final class PageRuleActionsCacheKeyFieldsUser {
  const PageRuleActionsCacheKeyFieldsUser({
    this.deviceType,
    this.geo,
    this.lang,
  });

  final TfArg<bool>? deviceType;

  final TfArg<bool>? geo;

  final TfArg<bool>? lang;

  Map<String, Object?> encode() => {
    if (deviceType != null) 'device_type': deviceType!.toTfJson(),
    if (geo != null) 'geo': geo!.toTfJson(),
    if (lang != null) 'lang': lang!.toTfJson(),
  };
}

/// Typed helper for the `actions.forwarding_url` block of
/// `cloudflare_page_rule` (derived from provider schema).
@immutable
final class PageRuleActionsForwardingUrl {
  const PageRuleActionsForwardingUrl({
    required this.statusCode,
    required this.url,
  });

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
    required TfArg<String> zoneId,
    required PageRuleActions actions,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (priority != null) 'priority': priority,
           if (status != null) 'status': status,
           'target': target,
           'zone_id': zoneId,
           'actions': TfArg.literal(actions.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflarePageRuleSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');
}
