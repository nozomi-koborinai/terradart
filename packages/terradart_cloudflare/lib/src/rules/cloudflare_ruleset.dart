// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_ruleset`.
const Set<String> _cloudflareRulesetSensitive = <String>{};

/// Typed helper for the `rules` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRules {
  const RulesetRules({
    required this.action,
    this.description,
    this.enabled,
    required this.expression,
    this.ref,
    this.actionParameters,
    this.exposedCredentialCheck,
    this.logging,
    this.ratelimit,
  });

  final TfArg<String> action;

  final TfArg<String>? description;

  final TfArg<bool>? enabled;

  final TfArg<String> expression;

  final TfArg<String>? ref;

  final RulesetRulesActionParameters? actionParameters;

  final RulesetRulesExposedCredentialCheck? exposedCredentialCheck;

  final RulesetRulesLogging? logging;

  final RulesetRulesRatelimit? ratelimit;

  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    if (description != null) 'description': description!.toTfJson(),
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    'expression': expression.toTfJson(),
    if (ref != null) 'ref': ref!.toTfJson(),
    if (actionParameters != null)
      'action_parameters': actionParameters!.encode(),
    if (exposedCredentialCheck != null)
      'exposed_credential_check': exposedCredentialCheck!.encode(),
    if (logging != null) 'logging': logging!.encode(),
    if (ratelimit != null) 'ratelimit': ratelimit!.encode(),
  };
}

/// Typed helper for the `rules.action_parameters` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParameters {
  const RulesetRulesActionParameters({
    this.additionalCacheablePorts,
    this.assetName,
    this.automaticHttpsRewrites,
    this.bic,
    this.cache,
    this.content,
    this.contentConverter,
    this.contentType,
    this.disableApps,
    this.disableRum,
    this.disableZaraz,
    this.emailObfuscation,
    this.expression,
    this.fonts,
    this.hostHeader,
    this.hotlinkProtection,
    this.id,
    this.increment,
    this.mirage,
    this.operation,
    this.opportunisticEncryption,
    this.originCacheControl,
    this.originErrorPagePassthru,
    this.phases,
    this.polish,
    this.products,
    this.readTimeout,
    this.redirectsForAiTraining,
    this.requestBodyBuffering,
    this.respectStrongEtags,
    this.responseBodyBuffering,
    this.rocketLoader,
    this.rules,
    this.ruleset,
    this.rulesets,
    this.securityLevel,
    this.serverSideExcludes,
    this.ssl,
    this.statusCode,
    this.stripEtags,
    this.stripLastModified,
    this.stripSetCookie,
    this.sxg,
    this.values,
    this.algorithms,
    this.autominify,
    this.browserTtl,
    this.cacheKey,
    this.cacheReserve,
    this.cookieFields,
    this.edgeTtl,
    this.fromList,
    this.fromValue,
    this.headers,
    this.immutable,
    this.matchedData,
    this.maxAge,
    this.mustRevalidate,
    this.mustUnderstand,
    this.noCache,
    this.noStore,
    this.noTransform,
    this.origin,
    this.overrides,
    this.private,
    this.proxyRevalidate,
    this.public,
    this.rawResponseFields,
    this.requestFields,
    this.response,
    this.responseFields,
    this.sMaxage,
    this.serveStale,
    this.sni,
    this.staleIfError,
    this.staleWhileRevalidate,
    this.transformedRequestFields,
    this.uri,
    this.vary,
  });

  final TfArg<List<Object?>>? additionalCacheablePorts;

  final TfArg<String>? assetName;

  final TfArg<bool>? automaticHttpsRewrites;

  final TfArg<bool>? bic;

  final TfArg<bool>? cache;

  final TfArg<String>? content;

  final TfArg<bool>? contentConverter;

  final TfArg<String>? contentType;

  final TfArg<bool>? disableApps;

  final TfArg<bool>? disableRum;

  final TfArg<bool>? disableZaraz;

  final TfArg<bool>? emailObfuscation;

  final TfArg<String>? expression;

  final TfArg<bool>? fonts;

  final TfArg<String>? hostHeader;

  final TfArg<bool>? hotlinkProtection;

  final TfArg<String>? id;

  final TfArg<num>? increment;

  final TfArg<bool>? mirage;

  final TfArg<String>? operation;

  final TfArg<bool>? opportunisticEncryption;

  final TfArg<bool>? originCacheControl;

  final TfArg<bool>? originErrorPagePassthru;

  final TfArg<List<Object?>>? phases;

  final TfArg<String>? polish;

  final TfArg<List<Object?>>? products;

  final TfArg<num>? readTimeout;

  final TfArg<bool>? redirectsForAiTraining;

  final TfArg<String>? requestBodyBuffering;

  final TfArg<bool>? respectStrongEtags;

  final TfArg<String>? responseBodyBuffering;

  final TfArg<bool>? rocketLoader;

  final TfArg<Map<String, dynamic>>? rules;

  final TfArg<String>? ruleset;

  final TfArg<List<Object?>>? rulesets;

  final TfArg<String>? securityLevel;

  final TfArg<bool>? serverSideExcludes;

  final TfArg<String>? ssl;

  final TfArg<num>? statusCode;

  final TfArg<bool>? stripEtags;

  final TfArg<bool>? stripLastModified;

  final TfArg<bool>? stripSetCookie;

  final TfArg<bool>? sxg;

  final TfArg<List<Object?>>? values;

  final List<RulesetRulesActionParametersAlgorithms>? algorithms;

  final RulesetRulesActionParametersAutominify? autominify;

  final RulesetRulesActionParametersBrowserTtl? browserTtl;

  final RulesetRulesActionParametersCacheKey? cacheKey;

  final RulesetRulesActionParametersCacheReserve? cacheReserve;

  final List<RulesetRulesActionParametersCookieFields>? cookieFields;

  final RulesetRulesActionParametersEdgeTtl? edgeTtl;

  final RulesetRulesActionParametersFromList? fromList;

  final RulesetRulesActionParametersFromValue? fromValue;

  final RulesetRulesActionParametersHeaders? headers;

  final RulesetRulesActionParametersImmutable? immutable;

  final RulesetRulesActionParametersMatchedData? matchedData;

  final RulesetRulesActionParametersMaxAge? maxAge;

  final RulesetRulesActionParametersMustRevalidate? mustRevalidate;

  final RulesetRulesActionParametersMustUnderstand? mustUnderstand;

  final RulesetRulesActionParametersNoCache? noCache;

  final RulesetRulesActionParametersNoStore? noStore;

  final RulesetRulesActionParametersNoTransform? noTransform;

  final RulesetRulesActionParametersOrigin? origin;

  final RulesetRulesActionParametersOverrides? overrides;

  final RulesetRulesActionParametersPrivate? private;

  final RulesetRulesActionParametersProxyRevalidate? proxyRevalidate;

  final RulesetRulesActionParametersPublic? public;

  final List<RulesetRulesActionParametersRawResponseFields>? rawResponseFields;

  final List<RulesetRulesActionParametersRequestFields>? requestFields;

  final RulesetRulesActionParametersResponse? response;

  final List<RulesetRulesActionParametersResponseFields>? responseFields;

  final RulesetRulesActionParametersSMaxage? sMaxage;

  final RulesetRulesActionParametersServeStale? serveStale;

  final RulesetRulesActionParametersSni? sni;

  final RulesetRulesActionParametersStaleIfError? staleIfError;

  final RulesetRulesActionParametersStaleWhileRevalidate? staleWhileRevalidate;

  final List<RulesetRulesActionParametersTransformedRequestFields>?
  transformedRequestFields;

  final RulesetRulesActionParametersUri? uri;

  final RulesetRulesActionParametersVary? vary;

  Map<String, Object?> encode() => {
    if (additionalCacheablePorts != null)
      'additional_cacheable_ports': additionalCacheablePorts!.toTfJson(),
    if (assetName != null) 'asset_name': assetName!.toTfJson(),
    if (automaticHttpsRewrites != null)
      'automatic_https_rewrites': automaticHttpsRewrites!.toTfJson(),
    if (bic != null) 'bic': bic!.toTfJson(),
    if (cache != null) 'cache': cache!.toTfJson(),
    if (content != null) 'content': content!.toTfJson(),
    if (contentConverter != null)
      'content_converter': contentConverter!.toTfJson(),
    if (contentType != null) 'content_type': contentType!.toTfJson(),
    if (disableApps != null) 'disable_apps': disableApps!.toTfJson(),
    if (disableRum != null) 'disable_rum': disableRum!.toTfJson(),
    if (disableZaraz != null) 'disable_zaraz': disableZaraz!.toTfJson(),
    if (emailObfuscation != null)
      'email_obfuscation': emailObfuscation!.toTfJson(),
    if (expression != null) 'expression': expression!.toTfJson(),
    if (fonts != null) 'fonts': fonts!.toTfJson(),
    if (hostHeader != null) 'host_header': hostHeader!.toTfJson(),
    if (hotlinkProtection != null)
      'hotlink_protection': hotlinkProtection!.toTfJson(),
    if (id != null) 'id': id!.toTfJson(),
    if (increment != null) 'increment': increment!.toTfJson(),
    if (mirage != null) 'mirage': mirage!.toTfJson(),
    if (operation != null) 'operation': operation!.toTfJson(),
    if (opportunisticEncryption != null)
      'opportunistic_encryption': opportunisticEncryption!.toTfJson(),
    if (originCacheControl != null)
      'origin_cache_control': originCacheControl!.toTfJson(),
    if (originErrorPagePassthru != null)
      'origin_error_page_passthru': originErrorPagePassthru!.toTfJson(),
    if (phases != null) 'phases': phases!.toTfJson(),
    if (polish != null) 'polish': polish!.toTfJson(),
    if (products != null) 'products': products!.toTfJson(),
    if (readTimeout != null) 'read_timeout': readTimeout!.toTfJson(),
    if (redirectsForAiTraining != null)
      'redirects_for_ai_training': redirectsForAiTraining!.toTfJson(),
    if (requestBodyBuffering != null)
      'request_body_buffering': requestBodyBuffering!.toTfJson(),
    if (respectStrongEtags != null)
      'respect_strong_etags': respectStrongEtags!.toTfJson(),
    if (responseBodyBuffering != null)
      'response_body_buffering': responseBodyBuffering!.toTfJson(),
    if (rocketLoader != null) 'rocket_loader': rocketLoader!.toTfJson(),
    if (rules != null) 'rules': rules!.toTfJson(),
    if (ruleset != null) 'ruleset': ruleset!.toTfJson(),
    if (rulesets != null) 'rulesets': rulesets!.toTfJson(),
    if (securityLevel != null) 'security_level': securityLevel!.toTfJson(),
    if (serverSideExcludes != null)
      'server_side_excludes': serverSideExcludes!.toTfJson(),
    if (ssl != null) 'ssl': ssl!.toTfJson(),
    if (statusCode != null) 'status_code': statusCode!.toTfJson(),
    if (stripEtags != null) 'strip_etags': stripEtags!.toTfJson(),
    if (stripLastModified != null)
      'strip_last_modified': stripLastModified!.toTfJson(),
    if (stripSetCookie != null) 'strip_set_cookie': stripSetCookie!.toTfJson(),
    if (sxg != null) 'sxg': sxg!.toTfJson(),
    if (values != null) 'values': values!.toTfJson(),
    if (algorithms != null)
      'algorithms': [for (final e in algorithms!) e.encode()],
    if (autominify != null) 'autominify': autominify!.encode(),
    if (browserTtl != null) 'browser_ttl': browserTtl!.encode(),
    if (cacheKey != null) 'cache_key': cacheKey!.encode(),
    if (cacheReserve != null) 'cache_reserve': cacheReserve!.encode(),
    if (cookieFields != null)
      'cookie_fields': [for (final e in cookieFields!) e.encode()],
    if (edgeTtl != null) 'edge_ttl': edgeTtl!.encode(),
    if (fromList != null) 'from_list': fromList!.encode(),
    if (fromValue != null) 'from_value': fromValue!.encode(),
    if (headers != null) 'headers': headers!.encode(),
    if (immutable != null) 'immutable': immutable!.encode(),
    if (matchedData != null) 'matched_data': matchedData!.encode(),
    if (maxAge != null) 'max_age': maxAge!.encode(),
    if (mustRevalidate != null) 'must_revalidate': mustRevalidate!.encode(),
    if (mustUnderstand != null) 'must_understand': mustUnderstand!.encode(),
    if (noCache != null) 'no_cache': noCache!.encode(),
    if (noStore != null) 'no_store': noStore!.encode(),
    if (noTransform != null) 'no_transform': noTransform!.encode(),
    if (origin != null) 'origin': origin!.encode(),
    if (overrides != null) 'overrides': overrides!.encode(),
    if (private != null) 'private': private!.encode(),
    if (proxyRevalidate != null) 'proxy_revalidate': proxyRevalidate!.encode(),
    if (public != null) 'public': public!.encode(),
    if (rawResponseFields != null)
      'raw_response_fields': [for (final e in rawResponseFields!) e.encode()],
    if (requestFields != null)
      'request_fields': [for (final e in requestFields!) e.encode()],
    if (response != null) 'response': response!.encode(),
    if (responseFields != null)
      'response_fields': [for (final e in responseFields!) e.encode()],
    if (sMaxage != null) 's_maxage': sMaxage!.encode(),
    if (serveStale != null) 'serve_stale': serveStale!.encode(),
    if (sni != null) 'sni': sni!.encode(),
    if (staleIfError != null) 'stale_if_error': staleIfError!.encode(),
    if (staleWhileRevalidate != null)
      'stale_while_revalidate': staleWhileRevalidate!.encode(),
    if (transformedRequestFields != null)
      'transformed_request_fields': [
        for (final e in transformedRequestFields!) e.encode(),
      ],
    if (uri != null) 'uri': uri!.encode(),
    if (vary != null) 'vary': vary!.encode(),
  };
}

/// Typed helper for the `rules.action_parameters.algorithms` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParametersAlgorithms {
  const RulesetRulesActionParametersAlgorithms({this.name});

  final TfArg<String>? name;

  Map<String, Object?> encode() => {if (name != null) 'name': name!.toTfJson()};
}

/// Typed helper for the `rules.action_parameters.autominify` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParametersAutominify {
  const RulesetRulesActionParametersAutominify({this.css, this.html, this.js});

  final TfArg<bool>? css;

  final TfArg<bool>? html;

  final TfArg<bool>? js;

  Map<String, Object?> encode() => {
    if (css != null) 'css': css!.toTfJson(),
    if (html != null) 'html': html!.toTfJson(),
    if (js != null) 'js': js!.toTfJson(),
  };
}

/// Typed helper for the `rules.action_parameters.browser_ttl` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParametersBrowserTtl {
  const RulesetRulesActionParametersBrowserTtl({
    this.defaultCase,
    required this.mode,
  });

  final TfArg<num>? defaultCase;

  final TfArg<String> mode;

  Map<String, Object?> encode() => {
    if (defaultCase != null) 'default': defaultCase!.toTfJson(),
    'mode': mode.toTfJson(),
  };
}

/// Typed helper for the `rules.action_parameters.cache_key` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParametersCacheKey {
  const RulesetRulesActionParametersCacheKey({
    this.cacheByDeviceType,
    this.cacheDeceptionArmor,
    this.ignoreQueryStringsOrder,
    this.customKey,
  });

  final TfArg<bool>? cacheByDeviceType;

  final TfArg<bool>? cacheDeceptionArmor;

  final TfArg<bool>? ignoreQueryStringsOrder;

  final RulesetRulesActionParametersCacheKeyCustomKey? customKey;

  Map<String, Object?> encode() => {
    if (cacheByDeviceType != null)
      'cache_by_device_type': cacheByDeviceType!.toTfJson(),
    if (cacheDeceptionArmor != null)
      'cache_deception_armor': cacheDeceptionArmor!.toTfJson(),
    if (ignoreQueryStringsOrder != null)
      'ignore_query_strings_order': ignoreQueryStringsOrder!.toTfJson(),
    if (customKey != null) 'custom_key': customKey!.encode(),
  };
}

/// Typed helper for the `rules.action_parameters.cache_key.custom_key` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParametersCacheKeyCustomKey {
  const RulesetRulesActionParametersCacheKeyCustomKey({
    this.cookie,
    this.header,
    this.host,
    this.queryString,
    this.user,
  });

  final RulesetRulesActionParametersCacheKeyCustomKeyCookie? cookie;

  final RulesetRulesActionParametersCacheKeyCustomKeyHeader? header;

  final RulesetRulesActionParametersCacheKeyCustomKeyHost? host;

  final RulesetRulesActionParametersCacheKeyCustomKeyQueryString? queryString;

  final RulesetRulesActionParametersCacheKeyCustomKeyUser? user;

  Map<String, Object?> encode() => {
    if (cookie != null) 'cookie': cookie!.encode(),
    if (header != null) 'header': header!.encode(),
    if (host != null) 'host': host!.encode(),
    if (queryString != null) 'query_string': queryString!.encode(),
    if (user != null) 'user': user!.encode(),
  };
}

/// Typed helper for the `rules.action_parameters.cache_key.custom_key.cookie` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParametersCacheKeyCustomKeyCookie {
  const RulesetRulesActionParametersCacheKeyCustomKeyCookie({
    this.checkPresence,
    this.include,
  });

  final TfArg<List<Object?>>? checkPresence;

  final TfArg<List<Object?>>? include;

  Map<String, Object?> encode() => {
    if (checkPresence != null) 'check_presence': checkPresence!.toTfJson(),
    if (include != null) 'include': include!.toTfJson(),
  };
}

/// Typed helper for the `rules.action_parameters.cache_key.custom_key.header` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParametersCacheKeyCustomKeyHeader {
  const RulesetRulesActionParametersCacheKeyCustomKeyHeader({
    this.checkPresence,
    this.contains,
    this.excludeOrigin,
    this.include,
  });

  final TfArg<List<Object?>>? checkPresence;

  final TfArg<Map<String, dynamic>>? contains;

  final TfArg<bool>? excludeOrigin;

  final TfArg<List<Object?>>? include;

  Map<String, Object?> encode() => {
    if (checkPresence != null) 'check_presence': checkPresence!.toTfJson(),
    if (contains != null) 'contains': contains!.toTfJson(),
    if (excludeOrigin != null) 'exclude_origin': excludeOrigin!.toTfJson(),
    if (include != null) 'include': include!.toTfJson(),
  };
}

/// Typed helper for the `rules.action_parameters.cache_key.custom_key.host` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParametersCacheKeyCustomKeyHost {
  const RulesetRulesActionParametersCacheKeyCustomKeyHost({this.resolved});

  final TfArg<bool>? resolved;

  Map<String, Object?> encode() => {
    if (resolved != null) 'resolved': resolved!.toTfJson(),
  };
}

/// Typed helper for the `rules.action_parameters.cache_key.custom_key.query_string` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParametersCacheKeyCustomKeyQueryString {
  const RulesetRulesActionParametersCacheKeyCustomKeyQueryString({
    this.exclude,
    this.include,
  });

  final RulesetRulesActionParametersCacheKeyCustomKeyQueryStringExclude?
  exclude;

  final RulesetRulesActionParametersCacheKeyCustomKeyQueryStringInclude?
  include;

  Map<String, Object?> encode() => {
    if (exclude != null) 'exclude': exclude!.encode(),
    if (include != null) 'include': include!.encode(),
  };
}

/// Typed helper for the `rules.action_parameters.cache_key.custom_key.query_string.exclude` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParametersCacheKeyCustomKeyQueryStringExclude {
  const RulesetRulesActionParametersCacheKeyCustomKeyQueryStringExclude({
    this.all,
    this.list,
  });

  final TfArg<bool>? all;

  final TfArg<List<Object?>>? list;

  Map<String, Object?> encode() => {
    if (all != null) 'all': all!.toTfJson(),
    if (list != null) 'list': list!.toTfJson(),
  };
}

/// Typed helper for the `rules.action_parameters.cache_key.custom_key.query_string.include` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParametersCacheKeyCustomKeyQueryStringInclude {
  const RulesetRulesActionParametersCacheKeyCustomKeyQueryStringInclude({
    this.all,
    this.list,
  });

  final TfArg<bool>? all;

  final TfArg<List<Object?>>? list;

  Map<String, Object?> encode() => {
    if (all != null) 'all': all!.toTfJson(),
    if (list != null) 'list': list!.toTfJson(),
  };
}

/// Typed helper for the `rules.action_parameters.cache_key.custom_key.user` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParametersCacheKeyCustomKeyUser {
  const RulesetRulesActionParametersCacheKeyCustomKeyUser({
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

/// Typed helper for the `rules.action_parameters.cache_reserve` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParametersCacheReserve {
  const RulesetRulesActionParametersCacheReserve({
    required this.eligible,
    this.minimumFileSize,
  });

  final TfArg<bool> eligible;

  final TfArg<num>? minimumFileSize;

  Map<String, Object?> encode() => {
    'eligible': eligible.toTfJson(),
    if (minimumFileSize != null)
      'minimum_file_size': minimumFileSize!.toTfJson(),
  };
}

/// Typed helper for the `rules.action_parameters.cookie_fields` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParametersCookieFields {
  const RulesetRulesActionParametersCookieFields({required this.name});

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `rules.action_parameters.edge_ttl` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParametersEdgeTtl {
  const RulesetRulesActionParametersEdgeTtl({
    this.defaultCase,
    required this.mode,
    this.statusCodeTtl,
  });

  final TfArg<num>? defaultCase;

  final TfArg<String> mode;

  final List<RulesetRulesActionParametersEdgeTtlStatusCodeTtl>? statusCodeTtl;

  Map<String, Object?> encode() => {
    if (defaultCase != null) 'default': defaultCase!.toTfJson(),
    'mode': mode.toTfJson(),
    if (statusCodeTtl != null)
      'status_code_ttl': [for (final e in statusCodeTtl!) e.encode()],
  };
}

/// Typed helper for the `rules.action_parameters.edge_ttl.status_code_ttl` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParametersEdgeTtlStatusCodeTtl {
  const RulesetRulesActionParametersEdgeTtlStatusCodeTtl({
    this.statusCode,
    required this.value,
    this.statusCodeRange,
  });

  final TfArg<num>? statusCode;

  final TfArg<num> value;

  final RulesetRulesActionParametersEdgeTtlStatusCodeTtlStatusCodeRange?
  statusCodeRange;

  Map<String, Object?> encode() => {
    if (statusCode != null) 'status_code': statusCode!.toTfJson(),
    'value': value.toTfJson(),
    if (statusCodeRange != null) 'status_code_range': statusCodeRange!.encode(),
  };
}

/// Typed helper for the `rules.action_parameters.edge_ttl.status_code_ttl.status_code_range` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParametersEdgeTtlStatusCodeTtlStatusCodeRange {
  const RulesetRulesActionParametersEdgeTtlStatusCodeTtlStatusCodeRange({
    this.from,
    this.to,
  });

  final TfArg<num>? from;

  final TfArg<num>? to;

  Map<String, Object?> encode() => {
    if (from != null) 'from': from!.toTfJson(),
    if (to != null) 'to': to!.toTfJson(),
  };
}

/// Typed helper for the `rules.action_parameters.from_list` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParametersFromList {
  const RulesetRulesActionParametersFromList({
    required this.key,
    required this.name,
  });

  final TfArg<String> key;

  final TfArg<String> name;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Typed helper for the `rules.action_parameters.from_value` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParametersFromValue {
  const RulesetRulesActionParametersFromValue({
    this.preserveQueryString,
    this.statusCode,
    required this.targetUrl,
  });

  final TfArg<bool>? preserveQueryString;

  final TfArg<num>? statusCode;

  final RulesetRulesActionParametersFromValueTargetUrl targetUrl;

  Map<String, Object?> encode() => {
    if (preserveQueryString != null)
      'preserve_query_string': preserveQueryString!.toTfJson(),
    if (statusCode != null) 'status_code': statusCode!.toTfJson(),
    'target_url': targetUrl.encode(),
  };
}

/// Typed helper for the `rules.action_parameters.from_value.target_url` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParametersFromValueTargetUrl {
  const RulesetRulesActionParametersFromValueTargetUrl({
    this.expression,
    this.value,
  });

  final TfArg<String>? expression;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    if (expression != null) 'expression': expression!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Typed helper for the `rules.action_parameters.headers` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParametersHeaders {
  const RulesetRulesActionParametersHeaders({
    this.expression,
    required this.operation,
    this.value,
  });

  final TfArg<String>? expression;

  final TfArg<String> operation;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    if (expression != null) 'expression': expression!.toTfJson(),
    'operation': operation.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Typed helper for the `rules.action_parameters.immutable` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParametersImmutable {
  const RulesetRulesActionParametersImmutable({
    this.cloudflareOnly,
    required this.operation,
  });

  final TfArg<bool>? cloudflareOnly;

  final TfArg<String> operation;

  Map<String, Object?> encode() => {
    if (cloudflareOnly != null) 'cloudflare_only': cloudflareOnly!.toTfJson(),
    'operation': operation.toTfJson(),
  };
}

/// Typed helper for the `rules.action_parameters.matched_data` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParametersMatchedData {
  const RulesetRulesActionParametersMatchedData({required this.publicKey});

  final TfArg<String> publicKey;

  Map<String, Object?> encode() => {'public_key': publicKey.toTfJson()};
}

/// Typed helper for the `rules.action_parameters.max_age` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParametersMaxAge {
  const RulesetRulesActionParametersMaxAge({
    this.cloudflareOnly,
    required this.operation,
    this.value,
  });

  final TfArg<bool>? cloudflareOnly;

  final TfArg<String> operation;

  final TfArg<num>? value;

  Map<String, Object?> encode() => {
    if (cloudflareOnly != null) 'cloudflare_only': cloudflareOnly!.toTfJson(),
    'operation': operation.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Typed helper for the `rules.action_parameters.must_revalidate` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParametersMustRevalidate {
  const RulesetRulesActionParametersMustRevalidate({
    this.cloudflareOnly,
    required this.operation,
  });

  final TfArg<bool>? cloudflareOnly;

  final TfArg<String> operation;

  Map<String, Object?> encode() => {
    if (cloudflareOnly != null) 'cloudflare_only': cloudflareOnly!.toTfJson(),
    'operation': operation.toTfJson(),
  };
}

/// Typed helper for the `rules.action_parameters.must_understand` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParametersMustUnderstand {
  const RulesetRulesActionParametersMustUnderstand({
    this.cloudflareOnly,
    required this.operation,
  });

  final TfArg<bool>? cloudflareOnly;

  final TfArg<String> operation;

  Map<String, Object?> encode() => {
    if (cloudflareOnly != null) 'cloudflare_only': cloudflareOnly!.toTfJson(),
    'operation': operation.toTfJson(),
  };
}

/// Typed helper for the `rules.action_parameters.no_cache` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParametersNoCache {
  const RulesetRulesActionParametersNoCache({
    this.cloudflareOnly,
    required this.operation,
    this.qualifiers,
  });

  final TfArg<bool>? cloudflareOnly;

  final TfArg<String> operation;

  final TfArg<List<Object?>>? qualifiers;

  Map<String, Object?> encode() => {
    if (cloudflareOnly != null) 'cloudflare_only': cloudflareOnly!.toTfJson(),
    'operation': operation.toTfJson(),
    if (qualifiers != null) 'qualifiers': qualifiers!.toTfJson(),
  };
}

/// Typed helper for the `rules.action_parameters.no_store` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParametersNoStore {
  const RulesetRulesActionParametersNoStore({
    this.cloudflareOnly,
    required this.operation,
  });

  final TfArg<bool>? cloudflareOnly;

  final TfArg<String> operation;

  Map<String, Object?> encode() => {
    if (cloudflareOnly != null) 'cloudflare_only': cloudflareOnly!.toTfJson(),
    'operation': operation.toTfJson(),
  };
}

/// Typed helper for the `rules.action_parameters.no_transform` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParametersNoTransform {
  const RulesetRulesActionParametersNoTransform({
    this.cloudflareOnly,
    required this.operation,
  });

  final TfArg<bool>? cloudflareOnly;

  final TfArg<String> operation;

  Map<String, Object?> encode() => {
    if (cloudflareOnly != null) 'cloudflare_only': cloudflareOnly!.toTfJson(),
    'operation': operation.toTfJson(),
  };
}

/// Typed helper for the `rules.action_parameters.origin` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParametersOrigin {
  const RulesetRulesActionParametersOrigin({this.host, this.port});

  final TfArg<String>? host;

  final TfArg<num>? port;

  Map<String, Object?> encode() => {
    if (host != null) 'host': host!.toTfJson(),
    if (port != null) 'port': port!.toTfJson(),
  };
}

/// Typed helper for the `rules.action_parameters.overrides` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParametersOverrides {
  const RulesetRulesActionParametersOverrides({
    this.action,
    this.enabled,
    this.sensitivityLevel,
    this.categories,
    this.rules,
  });

  final TfArg<String>? action;

  final TfArg<bool>? enabled;

  final TfArg<String>? sensitivityLevel;

  final List<RulesetRulesActionParametersOverridesCategories>? categories;

  final List<RulesetRulesActionParametersOverridesRules>? rules;

  Map<String, Object?> encode() => {
    if (action != null) 'action': action!.toTfJson(),
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (sensitivityLevel != null)
      'sensitivity_level': sensitivityLevel!.toTfJson(),
    if (categories != null)
      'categories': [for (final e in categories!) e.encode()],
    if (rules != null) 'rules': [for (final e in rules!) e.encode()],
  };
}

/// Typed helper for the `rules.action_parameters.overrides.categories` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParametersOverridesCategories {
  const RulesetRulesActionParametersOverridesCategories({
    this.action,
    required this.category,
    this.enabled,
    this.sensitivityLevel,
  });

  final TfArg<String>? action;

  final TfArg<String> category;

  final TfArg<bool>? enabled;

  final TfArg<String>? sensitivityLevel;

  Map<String, Object?> encode() => {
    if (action != null) 'action': action!.toTfJson(),
    'category': category.toTfJson(),
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (sensitivityLevel != null)
      'sensitivity_level': sensitivityLevel!.toTfJson(),
  };
}

/// Typed helper for the `rules.action_parameters.overrides.rules` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParametersOverridesRules {
  const RulesetRulesActionParametersOverridesRules({
    this.action,
    this.enabled,
    required this.id,
    this.scoreThreshold,
    this.sensitivityLevel,
  });

  final TfArg<String>? action;

  final TfArg<bool>? enabled;

  final TfArg<String> id;

  final TfArg<num>? scoreThreshold;

  final TfArg<String>? sensitivityLevel;

  Map<String, Object?> encode() => {
    if (action != null) 'action': action!.toTfJson(),
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    'id': id.toTfJson(),
    if (scoreThreshold != null) 'score_threshold': scoreThreshold!.toTfJson(),
    if (sensitivityLevel != null)
      'sensitivity_level': sensitivityLevel!.toTfJson(),
  };
}

/// Typed helper for the `rules.action_parameters.private` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParametersPrivate {
  const RulesetRulesActionParametersPrivate({
    this.cloudflareOnly,
    required this.operation,
    this.qualifiers,
  });

  final TfArg<bool>? cloudflareOnly;

  final TfArg<String> operation;

  final TfArg<List<Object?>>? qualifiers;

  Map<String, Object?> encode() => {
    if (cloudflareOnly != null) 'cloudflare_only': cloudflareOnly!.toTfJson(),
    'operation': operation.toTfJson(),
    if (qualifiers != null) 'qualifiers': qualifiers!.toTfJson(),
  };
}

/// Typed helper for the `rules.action_parameters.proxy_revalidate` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParametersProxyRevalidate {
  const RulesetRulesActionParametersProxyRevalidate({
    this.cloudflareOnly,
    required this.operation,
  });

  final TfArg<bool>? cloudflareOnly;

  final TfArg<String> operation;

  Map<String, Object?> encode() => {
    if (cloudflareOnly != null) 'cloudflare_only': cloudflareOnly!.toTfJson(),
    'operation': operation.toTfJson(),
  };
}

/// Typed helper for the `rules.action_parameters.public` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParametersPublic {
  const RulesetRulesActionParametersPublic({
    this.cloudflareOnly,
    required this.operation,
  });

  final TfArg<bool>? cloudflareOnly;

  final TfArg<String> operation;

  Map<String, Object?> encode() => {
    if (cloudflareOnly != null) 'cloudflare_only': cloudflareOnly!.toTfJson(),
    'operation': operation.toTfJson(),
  };
}

/// Typed helper for the `rules.action_parameters.raw_response_fields` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParametersRawResponseFields {
  const RulesetRulesActionParametersRawResponseFields({
    required this.name,
    this.preserveDuplicates,
  });

  final TfArg<String> name;

  final TfArg<bool>? preserveDuplicates;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    if (preserveDuplicates != null)
      'preserve_duplicates': preserveDuplicates!.toTfJson(),
  };
}

/// Typed helper for the `rules.action_parameters.request_fields` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParametersRequestFields {
  const RulesetRulesActionParametersRequestFields({required this.name});

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `rules.action_parameters.response` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParametersResponse {
  const RulesetRulesActionParametersResponse({
    required this.content,
    required this.contentType,
    required this.statusCode,
  });

  final TfArg<String> content;

  final TfArg<String> contentType;

  final TfArg<num> statusCode;

  Map<String, Object?> encode() => {
    'content': content.toTfJson(),
    'content_type': contentType.toTfJson(),
    'status_code': statusCode.toTfJson(),
  };
}

/// Typed helper for the `rules.action_parameters.response_fields` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParametersResponseFields {
  const RulesetRulesActionParametersResponseFields({
    required this.name,
    this.preserveDuplicates,
  });

  final TfArg<String> name;

  final TfArg<bool>? preserveDuplicates;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    if (preserveDuplicates != null)
      'preserve_duplicates': preserveDuplicates!.toTfJson(),
  };
}

/// Typed helper for the `rules.action_parameters.s_maxage` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParametersSMaxage {
  const RulesetRulesActionParametersSMaxage({
    this.cloudflareOnly,
    required this.operation,
    this.value,
  });

  final TfArg<bool>? cloudflareOnly;

  final TfArg<String> operation;

  final TfArg<num>? value;

  Map<String, Object?> encode() => {
    if (cloudflareOnly != null) 'cloudflare_only': cloudflareOnly!.toTfJson(),
    'operation': operation.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Typed helper for the `rules.action_parameters.serve_stale` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParametersServeStale {
  const RulesetRulesActionParametersServeStale({
    this.disableStaleWhileUpdating,
  });

  final TfArg<bool>? disableStaleWhileUpdating;

  Map<String, Object?> encode() => {
    if (disableStaleWhileUpdating != null)
      'disable_stale_while_updating': disableStaleWhileUpdating!.toTfJson(),
  };
}

/// Typed helper for the `rules.action_parameters.sni` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParametersSni {
  const RulesetRulesActionParametersSni({required this.value});

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `rules.action_parameters.stale_if_error` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParametersStaleIfError {
  const RulesetRulesActionParametersStaleIfError({
    this.cloudflareOnly,
    required this.operation,
    this.value,
  });

  final TfArg<bool>? cloudflareOnly;

  final TfArg<String> operation;

  final TfArg<num>? value;

  Map<String, Object?> encode() => {
    if (cloudflareOnly != null) 'cloudflare_only': cloudflareOnly!.toTfJson(),
    'operation': operation.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Typed helper for the `rules.action_parameters.stale_while_revalidate` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParametersStaleWhileRevalidate {
  const RulesetRulesActionParametersStaleWhileRevalidate({
    this.cloudflareOnly,
    required this.operation,
    this.value,
  });

  final TfArg<bool>? cloudflareOnly;

  final TfArg<String> operation;

  final TfArg<num>? value;

  Map<String, Object?> encode() => {
    if (cloudflareOnly != null) 'cloudflare_only': cloudflareOnly!.toTfJson(),
    'operation': operation.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Typed helper for the `rules.action_parameters.transformed_request_fields` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParametersTransformedRequestFields {
  const RulesetRulesActionParametersTransformedRequestFields({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `rules.action_parameters.uri` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParametersUri {
  const RulesetRulesActionParametersUri({this.path, this.query});

  final RulesetRulesActionParametersUriPath? path;

  final RulesetRulesActionParametersUriQuery? query;

  Map<String, Object?> encode() => {
    if (path != null) 'path': path!.encode(),
    if (query != null) 'query': query!.encode(),
  };
}

/// Typed helper for the `rules.action_parameters.uri.path` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParametersUriPath {
  const RulesetRulesActionParametersUriPath({this.expression, this.value});

  final TfArg<String>? expression;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    if (expression != null) 'expression': expression!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Typed helper for the `rules.action_parameters.uri.query` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParametersUriQuery {
  const RulesetRulesActionParametersUriQuery({this.expression, this.value});

  final TfArg<String>? expression;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    if (expression != null) 'expression': expression!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Typed helper for the `rules.action_parameters.vary` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParametersVary {
  const RulesetRulesActionParametersVary({
    required this.defaultCase,
    this.headers,
  });

  final RulesetRulesActionParametersVaryDefault defaultCase;

  final RulesetRulesActionParametersVaryHeaders? headers;

  Map<String, Object?> encode() => {
    'default': defaultCase.encode(),
    if (headers != null) 'headers': headers!.encode(),
  };
}

/// Typed helper for the `rules.action_parameters.vary.default` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParametersVaryDefault {
  const RulesetRulesActionParametersVaryDefault({required this.action});

  final TfArg<String> action;

  Map<String, Object?> encode() => {'action': action.toTfJson()};
}

/// Typed helper for the `rules.action_parameters.vary.headers` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParametersVaryHeaders {
  const RulesetRulesActionParametersVaryHeaders({
    required this.action,
    this.languages,
    this.mediaTypes,
  });

  final TfArg<String> action;

  final TfArg<List<Object?>>? languages;

  final TfArg<List<Object?>>? mediaTypes;

  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    if (languages != null) 'languages': languages!.toTfJson(),
    if (mediaTypes != null) 'media_types': mediaTypes!.toTfJson(),
  };
}

/// Typed helper for the `rules.exposed_credential_check` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesExposedCredentialCheck {
  const RulesetRulesExposedCredentialCheck({
    required this.passwordExpression,
    required this.usernameExpression,
  });

  final TfArg<String> passwordExpression;

  final TfArg<String> usernameExpression;

  Map<String, Object?> encode() => {
    'password_expression': passwordExpression.toTfJson(),
    'username_expression': usernameExpression.toTfJson(),
  };
}

/// Typed helper for the `rules.logging` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesLogging {
  const RulesetRulesLogging({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
  };
}

/// Typed helper for the `rules.ratelimit` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesRatelimit {
  const RulesetRulesRatelimit({
    required this.characteristics,
    this.countingExpression,
    this.mitigationTimeout,
    required this.period,
    this.requestsPerPeriod,
    this.requestsToOrigin,
    this.scorePerPeriod,
    this.scoreResponseHeaderName,
  });

  final TfArg<List<Object?>> characteristics;

  final TfArg<String>? countingExpression;

  final TfArg<num>? mitigationTimeout;

  final TfArg<num> period;

  final TfArg<num>? requestsPerPeriod;

  final TfArg<bool>? requestsToOrigin;

  final TfArg<num>? scorePerPeriod;

  final TfArg<String>? scoreResponseHeaderName;

  Map<String, Object?> encode() => {
    'characteristics': characteristics.toTfJson(),
    if (countingExpression != null)
      'counting_expression': countingExpression!.toTfJson(),
    if (mitigationTimeout != null)
      'mitigation_timeout': mitigationTimeout!.toTfJson(),
    'period': period.toTfJson(),
    if (requestsPerPeriod != null)
      'requests_per_period': requestsPerPeriod!.toTfJson(),
    if (requestsToOrigin != null)
      'requests_to_origin': requestsToOrigin!.toTfJson(),
    if (scorePerPeriod != null) 'score_per_period': scorePerPeriod!.toTfJson(),
    if (scoreResponseHeaderName != null)
      'score_response_header_name': scoreResponseHeaderName!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_ruleset`.
final class CloudflareRuleset extends Resource {
  static const String tfType = 'cloudflare_ruleset';

  CloudflareRuleset({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? description,
    required TfArg<String> kind,
    required TfArg<String> name,
    required TfArg<String> phase,
    TfArg<String>? zoneId,
    List<RulesetRules>? rules,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (description != null) 'description': description,
           'kind': kind,
           'name': name,
           'phase': phase,
           if (zoneId != null) 'zone_id': zoneId,
           if (rules != null)
             'rules': TfArg.literal([for (final e in rules) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareRulesetSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `kind` attribute.
  TfRef<String> get kindRef => TfRef.attribute<String>(this, 'kind');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `last_updated` attribute.
  TfRef<String> get lastUpdated =>
      TfRef.attribute<String>(this, 'last_updated');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
