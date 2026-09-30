// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_ruleset`.
const Set<String> _cloudflareRulesetSensitive = <String>{};

/// Ruleset enum for `kind`.
enum RulesetKind implements TerraformEnum {
  managed('managed'),
  custom('custom'),
  root('root'),
  zone('zone');

  const RulesetKind(this.terraformValue);
  @override
  final String terraformValue;
}

/// Ruleset enum for `phase`.
enum RulesetPhase implements TerraformEnum {
  ddosL4('ddos_l4'),
  ddosL7('ddos_l7'),
  httpConfigSettings('http_config_settings'),
  httpCustomErrors('http_custom_errors'),
  httpLogCustomFields('http_log_custom_fields'),
  httpRatelimit('http_ratelimit'),
  httpRequestCacheSettings('http_request_cache_settings'),
  httpRequestDynamicRedirect('http_request_dynamic_redirect'),
  httpRequestFirewallCustom('http_request_firewall_custom'),
  httpRequestFirewallManaged('http_request_firewall_managed'),
  httpRequestLateTransform('http_request_late_transform'),
  httpRequestOrigin('http_request_origin'),
  httpRequestRedirect('http_request_redirect'),
  httpRequestSanitize('http_request_sanitize'),
  httpRequestSbfm('http_request_sbfm'),
  httpRequestTransform('http_request_transform'),
  httpResponseCacheSettings('http_response_cache_settings'),
  httpResponseCompression('http_response_compression'),
  httpResponseFirewallManaged('http_response_firewall_managed'),
  httpResponseHeadersTransform('http_response_headers_transform'),
  magicTransit('magic_transit'),
  magicTransitIdsManaged('magic_transit_ids_managed'),
  magicTransitManaged('magic_transit_managed'),
  magicTransitRatelimit('magic_transit_ratelimit');

  const RulesetPhase(this.terraformValue);
  @override
  final String terraformValue;
}

/// Exactly one of `account_id`, `zone_id` on `cloudflare_ruleset`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.accountId(...)`.
sealed class RulesetScope {
  const RulesetScope();

  /// Sets `account_id`.
  const factory RulesetScope.accountId(RefTo<CloudflareAccount> accountId) =
      RulesetScopeAccountId;

  /// Sets `zone_id`.
  const factory RulesetScope.zoneId(RefTo<CloudflareZone> zoneId) =
      RulesetScopeZoneId;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [RulesetScope.accountId] choice: sets `account_id`.
final class RulesetScopeAccountId extends RulesetScope {
  const RulesetScopeAccountId(this.accountId);

  final RefTo<CloudflareAccount> accountId;

  @override
  String get blockKey => 'account_id';

  @override
  Map<String, Object?> encode() => {
    'account_id': accountId.encodeAs('id').toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'account_id': accountId.encodeAs('id'),
  };
}

/// The [RulesetScope.zoneId] choice: sets `zone_id`.
final class RulesetScopeZoneId extends RulesetScope {
  const RulesetScopeZoneId(this.zoneId);

  final RefTo<CloudflareZone> zoneId;

  @override
  String get blockKey => 'zone_id';

  @override
  Map<String, Object?> encode() => {
    'zone_id': zoneId.encodeAs('id').toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {'zone_id': zoneId.encodeAs('id')};
}

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

  final TfArg<RulesetRulesAction> action;

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
    'description': ?description?.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
    'expression': expression.toTfJson(),
    'ref': ?ref?.toTfJson(),
    'action_parameters': ?actionParameters?.encode(),
    'exposed_credential_check': ?exposedCredentialCheck?.encode(),
    'logging': ?logging?.encode(),
    'ratelimit': ?ratelimit?.encode(),
  };
}

/// `action` — derived from the provider schema description.
enum RulesetRulesAction implements TerraformEnum {
  block('block'),
  challenge('challenge'),
  compressResponse('compress_response'),
  ddosDynamic('ddos_dynamic'),
  execute('execute'),
  forceConnectionClose('force_connection_close'),
  jsChallenge('js_challenge'),
  log('log'),
  logCustomField('log_custom_field'),
  managedChallenge('managed_challenge'),
  redirect('redirect'),
  rewrite('rewrite'),
  route('route'),
  score('score'),
  serveError('serve_error'),
  setCacheControl('set_cache_control'),
  setCacheSettings('set_cache_settings'),
  setCacheTags('set_cache_tags'),
  setConfig('set_config'),
  skip('skip');

  const RulesetRulesAction(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `rules.action_parameters` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParameters {
  const RulesetRulesActionParameters({
    this.additionalCacheablePorts,
    this.body,
    this.automaticHttpsRewrites,
    this.bic,
    this.cache,
    this.contentConverter,
    this.contentType,
    this.disableApps,
    this.disableRum,
    this.disableZaraz,
    this.emailObfuscation,
    this.value,
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
    this.algorithms,
    this.autominify,
    this.browserTtl,
    this.cacheKey,
    this.cacheReserve,
    this.cookieFields,
    this.edgeTtl,
    this.source,
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
    this.originRangeRequests,
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

  final TfArg<List<num>>? additionalCacheablePorts;

  final RulesetRulesActionParametersBody? body;

  final TfArg<bool>? automaticHttpsRewrites;

  final TfArg<bool>? bic;

  final TfArg<bool>? cache;

  final TfArg<bool>? contentConverter;

  final TfArg<RulesetRulesActionParametersContentType>? contentType;

  final TfArg<bool>? disableApps;

  final TfArg<bool>? disableRum;

  final TfArg<bool>? disableZaraz;

  final TfArg<bool>? emailObfuscation;

  final RulesetRulesActionParametersValue? value;

  final TfArg<bool>? fonts;

  final TfArg<String>? hostHeader;

  final TfArg<bool>? hotlinkProtection;

  final TfArg<String>? id;

  final TfArg<num>? increment;

  final TfArg<bool>? mirage;

  final TfArg<RulesetRulesActionParametersOperation>? operation;

  final TfArg<bool>? opportunisticEncryption;

  final TfArg<bool>? originCacheControl;

  final TfArg<bool>? originErrorPagePassthru;

  final List<TfArg<RulesetRulesActionParametersPhases>>? phases;

  final TfArg<RulesetRulesActionParametersPolish>? polish;

  final List<TfArg<RulesetRulesActionParametersProducts>>? products;

  final TfArg<num>? readTimeout;

  final TfArg<bool>? redirectsForAiTraining;

  final TfArg<RulesetRulesActionParametersRequestBodyBuffering>?
  requestBodyBuffering;

  final TfArg<bool>? respectStrongEtags;

  final TfArg<RulesetRulesActionParametersResponseBodyBuffering>?
  responseBodyBuffering;

  final TfArg<bool>? rocketLoader;

  final TfArg<Map<String, dynamic>>? rules;

  final TfArg<RulesetRulesActionParametersRuleset>? ruleset;

  final TfArg<List<String>>? rulesets;

  final TfArg<RulesetRulesActionParametersSecurityLevel>? securityLevel;

  final TfArg<bool>? serverSideExcludes;

  final TfArg<RulesetRulesActionParametersSsl>? ssl;

  final TfArg<num>? statusCode;

  final TfArg<bool>? stripEtags;

  final TfArg<bool>? stripLastModified;

  final TfArg<bool>? stripSetCookie;

  final TfArg<bool>? sxg;

  final List<RulesetRulesActionParametersAlgorithms>? algorithms;

  final RulesetRulesActionParametersAutominify? autominify;

  final RulesetRulesActionParametersBrowserTtl? browserTtl;

  final RulesetRulesActionParametersCacheKey? cacheKey;

  final RulesetRulesActionParametersCacheReserve? cacheReserve;

  final List<RulesetRulesActionParametersCookieFields>? cookieFields;

  final RulesetRulesActionParametersEdgeTtl? edgeTtl;

  final RulesetRulesActionParametersSource? source;

  final Map<String, RulesetRulesActionParametersHeaders>? headers;

  final RulesetRulesActionParametersImmutable? immutable;

  final RulesetRulesActionParametersMatchedData? matchedData;

  final RulesetRulesActionParametersMaxAge? maxAge;

  final RulesetRulesActionParametersMustRevalidate? mustRevalidate;

  final RulesetRulesActionParametersMustUnderstand? mustUnderstand;

  final RulesetRulesActionParametersNoCache? noCache;

  final RulesetRulesActionParametersNoStore? noStore;

  final RulesetRulesActionParametersNoTransform? noTransform;

  final RulesetRulesActionParametersOrigin? origin;

  final RulesetRulesActionParametersOriginRangeRequests? originRangeRequests;

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
    'additional_cacheable_ports': ?additionalCacheablePorts?.toTfJson(),
    ...?body?.encode(),
    'automatic_https_rewrites': ?automaticHttpsRewrites?.toTfJson(),
    'bic': ?bic?.toTfJson(),
    'cache': ?cache?.toTfJson(),
    'content_converter': ?contentConverter?.toTfJson(),
    'content_type': ?contentType?.toTfJson(),
    'disable_apps': ?disableApps?.toTfJson(),
    'disable_rum': ?disableRum?.toTfJson(),
    'disable_zaraz': ?disableZaraz?.toTfJson(),
    'email_obfuscation': ?emailObfuscation?.toTfJson(),
    ...?value?.encode(),
    'fonts': ?fonts?.toTfJson(),
    'host_header': ?hostHeader?.toTfJson(),
    'hotlink_protection': ?hotlinkProtection?.toTfJson(),
    'id': ?id?.toTfJson(),
    'increment': ?increment?.toTfJson(),
    'mirage': ?mirage?.toTfJson(),
    'operation': ?operation?.toTfJson(),
    'opportunistic_encryption': ?opportunisticEncryption?.toTfJson(),
    'origin_cache_control': ?originCacheControl?.toTfJson(),
    'origin_error_page_passthru': ?originErrorPagePassthru?.toTfJson(),
    if (phases != null) 'phases': [for (final e in phases!) e.toTfJson()],
    'polish': ?polish?.toTfJson(),
    if (products != null) 'products': [for (final e in products!) e.toTfJson()],
    'read_timeout': ?readTimeout?.toTfJson(),
    'redirects_for_ai_training': ?redirectsForAiTraining?.toTfJson(),
    'request_body_buffering': ?requestBodyBuffering?.toTfJson(),
    'respect_strong_etags': ?respectStrongEtags?.toTfJson(),
    'response_body_buffering': ?responseBodyBuffering?.toTfJson(),
    'rocket_loader': ?rocketLoader?.toTfJson(),
    'rules': ?rules?.toTfJson(),
    'ruleset': ?ruleset?.toTfJson(),
    'rulesets': ?rulesets?.toTfJson(),
    'security_level': ?securityLevel?.toTfJson(),
    'server_side_excludes': ?serverSideExcludes?.toTfJson(),
    'ssl': ?ssl?.toTfJson(),
    'status_code': ?statusCode?.toTfJson(),
    'strip_etags': ?stripEtags?.toTfJson(),
    'strip_last_modified': ?stripLastModified?.toTfJson(),
    'strip_set_cookie': ?stripSetCookie?.toTfJson(),
    'sxg': ?sxg?.toTfJson(),
    if (algorithms != null)
      'algorithms': [for (final e in algorithms!) e.encode()],
    'autominify': ?autominify?.encode(),
    'browser_ttl': ?browserTtl?.encode(),
    'cache_key': ?cacheKey?.encode(),
    'cache_reserve': ?cacheReserve?.encode(),
    if (cookieFields != null)
      'cookie_fields': [for (final e in cookieFields!) e.encode()],
    'edge_ttl': ?edgeTtl?.encode(),
    ...?source?.encode(),
    if (headers != null)
      'headers': {for (final e in headers!.entries) e.key: e.value.encode()},
    'immutable': ?immutable?.encode(),
    'matched_data': ?matchedData?.encode(),
    'max_age': ?maxAge?.encode(),
    'must_revalidate': ?mustRevalidate?.encode(),
    'must_understand': ?mustUnderstand?.encode(),
    'no_cache': ?noCache?.encode(),
    'no_store': ?noStore?.encode(),
    'no_transform': ?noTransform?.encode(),
    'origin': ?origin?.encode(),
    'origin_range_requests': ?originRangeRequests?.encode(),
    'overrides': ?overrides?.encode(),
    'private': ?private?.encode(),
    'proxy_revalidate': ?proxyRevalidate?.encode(),
    'public': ?public?.encode(),
    if (rawResponseFields != null)
      'raw_response_fields': [for (final e in rawResponseFields!) e.encode()],
    if (requestFields != null)
      'request_fields': [for (final e in requestFields!) e.encode()],
    'response': ?response?.encode(),
    if (responseFields != null)
      'response_fields': [for (final e in responseFields!) e.encode()],
    's_maxage': ?sMaxage?.encode(),
    'serve_stale': ?serveStale?.encode(),
    'sni': ?sni?.encode(),
    'stale_if_error': ?staleIfError?.encode(),
    'stale_while_revalidate': ?staleWhileRevalidate?.encode(),
    if (transformedRequestFields != null)
      'transformed_request_fields': [
        for (final e in transformedRequestFields!) e.encode(),
      ],
    'uri': ?uri?.encode(),
    'vary': ?vary?.encode(),
  };
}

/// At most one of `asset_name`, `content` on the `rules.action_parameters` block of `cloudflare_ruleset`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.assetName(...)`.
sealed class RulesetRulesActionParametersBody {
  const RulesetRulesActionParametersBody();

  /// Sets `asset_name`.
  const factory RulesetRulesActionParametersBody.assetName(
    TfArg<String> assetName,
  ) = RulesetRulesActionParametersBodyAssetName;

  /// Sets `content`.
  const factory RulesetRulesActionParametersBody.content(
    TfArg<String> content,
  ) = RulesetRulesActionParametersBodyContent;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [RulesetRulesActionParametersBody.assetName] choice: sets `asset_name`.
final class RulesetRulesActionParametersBodyAssetName
    extends RulesetRulesActionParametersBody {
  const RulesetRulesActionParametersBodyAssetName(this.assetName);

  final TfArg<String> assetName;

  @override
  String get blockKey => 'asset_name';

  @override
  Map<String, Object?> encode() => {'asset_name': assetName.toTfJson()};
}

/// The [RulesetRulesActionParametersBody.content] choice: sets `content`.
final class RulesetRulesActionParametersBodyContent
    extends RulesetRulesActionParametersBody {
  const RulesetRulesActionParametersBodyContent(this.content);

  final TfArg<String> content;

  @override
  String get blockKey => 'content';

  @override
  Map<String, Object?> encode() => {'content': content.toTfJson()};
}

/// At most one of `from_list`, `from_value` on the `rules.action_parameters` block of `cloudflare_ruleset`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.fromList(...)`.
sealed class RulesetRulesActionParametersSource {
  const RulesetRulesActionParametersSource();

  /// Sets `from_list`.
  const factory RulesetRulesActionParametersSource.fromList(
    RulesetRulesActionParametersFromList fromList,
  ) = RulesetRulesActionParametersSourceFromList;

  /// Sets `from_value`.
  const factory RulesetRulesActionParametersSource.fromValue(
    RulesetRulesActionParametersFromValue fromValue,
  ) = RulesetRulesActionParametersSourceFromValue;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [RulesetRulesActionParametersSource.fromList] choice: sets `from_list`.
final class RulesetRulesActionParametersSourceFromList
    extends RulesetRulesActionParametersSource {
  const RulesetRulesActionParametersSourceFromList(this.fromList);

  final RulesetRulesActionParametersFromList fromList;

  @override
  String get blockKey => 'from_list';

  @override
  Map<String, Object?> encode() => {'from_list': fromList.encode()};
}

/// The [RulesetRulesActionParametersSource.fromValue] choice: sets `from_value`.
final class RulesetRulesActionParametersSourceFromValue
    extends RulesetRulesActionParametersSource {
  const RulesetRulesActionParametersSourceFromValue(this.fromValue);

  final RulesetRulesActionParametersFromValue fromValue;

  @override
  String get blockKey => 'from_value';

  @override
  Map<String, Object?> encode() => {'from_value': fromValue.encode()};
}

/// At most one of `values`, `expression` on the `rules.action_parameters` block of `cloudflare_ruleset`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.values(...)`.
sealed class RulesetRulesActionParametersValue {
  const RulesetRulesActionParametersValue();

  /// Sets `values`.
  const factory RulesetRulesActionParametersValue.values(
    TfArg<List<String>> values,
  ) = RulesetRulesActionParametersValueValues;

  /// Sets `expression`.
  const factory RulesetRulesActionParametersValue.expression(
    TfArg<String> expression,
  ) = RulesetRulesActionParametersValueExpression;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [RulesetRulesActionParametersValue.values] choice: sets `values`.
final class RulesetRulesActionParametersValueValues
    extends RulesetRulesActionParametersValue {
  const RulesetRulesActionParametersValueValues(this.values);

  final TfArg<List<String>> values;

  @override
  String get blockKey => 'values';

  @override
  Map<String, Object?> encode() => {'values': values.toTfJson()};
}

/// The [RulesetRulesActionParametersValue.expression] choice: sets `expression`.
final class RulesetRulesActionParametersValueExpression
    extends RulesetRulesActionParametersValue {
  const RulesetRulesActionParametersValueExpression(this.expression);

  final TfArg<String> expression;

  @override
  String get blockKey => 'expression';

  @override
  Map<String, Object?> encode() => {'expression': expression.toTfJson()};
}

/// `content_type` — derived from the provider schema description.
enum RulesetRulesActionParametersContentType implements TerraformEnum {
  applicationJson('application/json'),
  textHtml('text/html'),
  textPlain('text/plain'),
  textXml('text/xml');

  const RulesetRulesActionParametersContentType(this.terraformValue);
  @override
  final String terraformValue;
}

/// `operation` — derived from the provider schema description.
enum RulesetRulesActionParametersOperation implements TerraformEnum {
  set('set'),
  add('add'),
  remove('remove');

  const RulesetRulesActionParametersOperation(this.terraformValue);
  @override
  final String terraformValue;
}

/// `phases` — derived from the provider schema description.
enum RulesetRulesActionParametersPhases implements TerraformEnum {
  ddosL4('ddos_l4'),
  ddosL7('ddos_l7'),
  httpConfigSettings('http_config_settings'),
  httpCustomErrors('http_custom_errors'),
  httpLogCustomFields('http_log_custom_fields'),
  httpRatelimit('http_ratelimit'),
  httpRequestCacheSettings('http_request_cache_settings'),
  httpRequestDynamicRedirect('http_request_dynamic_redirect'),
  httpRequestFirewallCustom('http_request_firewall_custom'),
  httpRequestFirewallManaged('http_request_firewall_managed'),
  httpRequestLateTransform('http_request_late_transform'),
  httpRequestOrigin('http_request_origin'),
  httpRequestRedirect('http_request_redirect'),
  httpRequestSanitize('http_request_sanitize'),
  httpRequestSbfm('http_request_sbfm'),
  httpRequestTransform('http_request_transform'),
  httpResponseCacheSettings('http_response_cache_settings'),
  httpResponseCompression('http_response_compression'),
  httpResponseFirewallManaged('http_response_firewall_managed'),
  httpResponseHeadersTransform('http_response_headers_transform'),
  magicTransit('magic_transit'),
  magicTransitIdsManaged('magic_transit_ids_managed'),
  magicTransitManaged('magic_transit_managed'),
  magicTransitRatelimit('magic_transit_ratelimit');

  const RulesetRulesActionParametersPhases(this.terraformValue);
  @override
  final String terraformValue;
}

/// `polish` — derived from the provider schema description.
enum RulesetRulesActionParametersPolish implements TerraformEnum {
  off('off'),
  lossless('lossless'),
  lossy('lossy'),
  webp('webp');

  const RulesetRulesActionParametersPolish(this.terraformValue);
  @override
  final String terraformValue;
}

/// `products` — derived from the provider schema description.
enum RulesetRulesActionParametersProducts implements TerraformEnum {
  bic('bic'),
  hot('hot'),
  ratelimit('rateLimit'),
  securitylevel('securityLevel'),
  uablock('uaBlock'),
  waf('waf'),
  zonelockdown('zoneLockdown');

  const RulesetRulesActionParametersProducts(this.terraformValue);
  @override
  final String terraformValue;
}

/// `request_body_buffering` — derived from the provider schema description.
enum RulesetRulesActionParametersRequestBodyBuffering implements TerraformEnum {
  none('none'),
  standard('standard'),
  full('full');

  const RulesetRulesActionParametersRequestBodyBuffering(this.terraformValue);
  @override
  final String terraformValue;
}

/// `response_body_buffering` — derived from the provider schema description.
enum RulesetRulesActionParametersResponseBodyBuffering
    implements TerraformEnum {
  none('none'),
  standard('standard');

  const RulesetRulesActionParametersResponseBodyBuffering(this.terraformValue);
  @override
  final String terraformValue;
}

/// `ruleset` — derived from the provider schema description.
enum RulesetRulesActionParametersRuleset implements TerraformEnum {
  current('current');

  const RulesetRulesActionParametersRuleset(this.terraformValue);
  @override
  final String terraformValue;
}

/// `security_level` — derived from the provider schema description.
enum RulesetRulesActionParametersSecurityLevel implements TerraformEnum {
  off('off'),
  essentiallyOff('essentially_off'),
  low('low'),
  medium('medium'),
  high('high'),
  underAttack('under_attack');

  const RulesetRulesActionParametersSecurityLevel(this.terraformValue);
  @override
  final String terraformValue;
}

/// `ssl` — derived from the provider schema description.
enum RulesetRulesActionParametersSsl implements TerraformEnum {
  off('off'),
  flexible('flexible'),
  full('full'),
  strict('strict'),
  originPull('origin_pull');

  const RulesetRulesActionParametersSsl(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `rules.action_parameters.algorithms` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParametersAlgorithms {
  const RulesetRulesActionParametersAlgorithms({this.name});

  final TfArg<RulesetRulesActionParametersAlgorithmsName>? name;

  Map<String, Object?> encode() => {'name': ?name?.toTfJson()};
}

/// `name` — derived from the provider schema description.
enum RulesetRulesActionParametersAlgorithmsName implements TerraformEnum {
  none('none'),
  auto('auto'),
  defaultCase('default'),
  gzip('gzip'),
  brotli('brotli'),
  zstd('zstd');

  const RulesetRulesActionParametersAlgorithmsName(this.terraformValue);
  @override
  final String terraformValue;
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
    'css': ?css?.toTfJson(),
    'html': ?html?.toTfJson(),
    'js': ?js?.toTfJson(),
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

  final TfArg<RulesetRulesActionParametersBrowserTtlMode> mode;

  Map<String, Object?> encode() => {
    'default': ?defaultCase?.toTfJson(),
    'mode': mode.toTfJson(),
  };
}

/// `mode` — derived from the provider schema description.
enum RulesetRulesActionParametersBrowserTtlMode implements TerraformEnum {
  respectOrigin('respect_origin'),
  bypassByDefault('bypass_by_default'),
  overrideOrigin('override_origin'),
  bypass('bypass');

  const RulesetRulesActionParametersBrowserTtlMode(this.terraformValue);
  @override
  final String terraformValue;
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
    'cache_by_device_type': ?cacheByDeviceType?.toTfJson(),
    'cache_deception_armor': ?cacheDeceptionArmor?.toTfJson(),
    'ignore_query_strings_order': ?ignoreQueryStringsOrder?.toTfJson(),
    'custom_key': ?customKey?.encode(),
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
    'cookie': ?cookie?.encode(),
    'header': ?header?.encode(),
    'host': ?host?.encode(),
    'query_string': ?queryString?.encode(),
    'user': ?user?.encode(),
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

  final TfArg<List<String>>? checkPresence;

  final TfArg<List<String>>? include;

  Map<String, Object?> encode() => {
    'check_presence': ?checkPresence?.toTfJson(),
    'include': ?include?.toTfJson(),
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

  final TfArg<List<String>>? checkPresence;

  final TfArg<Map<String, dynamic>>? contains;

  final TfArg<bool>? excludeOrigin;

  final TfArg<List<String>>? include;

  Map<String, Object?> encode() => {
    'check_presence': ?checkPresence?.toTfJson(),
    'contains': ?contains?.toTfJson(),
    'exclude_origin': ?excludeOrigin?.toTfJson(),
    'include': ?include?.toTfJson(),
  };
}

/// Typed helper for the `rules.action_parameters.cache_key.custom_key.host` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParametersCacheKeyCustomKeyHost {
  const RulesetRulesActionParametersCacheKeyCustomKeyHost({this.resolved});

  final TfArg<bool>? resolved;

  Map<String, Object?> encode() => {'resolved': ?resolved?.toTfJson()};
}

/// At most one of `include`, `exclude` on the `rules.action_parameters.cache_key.custom_key.query_string` block of `cloudflare_ruleset`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.include(...)`.
sealed class RulesetRulesActionParametersCacheKeyCustomKeyQueryString {
  const RulesetRulesActionParametersCacheKeyCustomKeyQueryString();

  /// Sets `include`.
  const factory RulesetRulesActionParametersCacheKeyCustomKeyQueryString.include(
    RulesetRulesActionParametersCacheKeyCustomKeyQueryStringInclude include,
  ) = RulesetRulesActionParametersCacheKeyCustomKeyQueryStringIncludeChoice;

  /// Sets `exclude`.
  const factory RulesetRulesActionParametersCacheKeyCustomKeyQueryString.exclude(
    RulesetRulesActionParametersCacheKeyCustomKeyQueryStringExclude exclude,
  ) = RulesetRulesActionParametersCacheKeyCustomKeyQueryStringExcludeChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [RulesetRulesActionParametersCacheKeyCustomKeyQueryString.include] choice: sets `include`.
final class RulesetRulesActionParametersCacheKeyCustomKeyQueryStringIncludeChoice
    extends RulesetRulesActionParametersCacheKeyCustomKeyQueryString {
  const RulesetRulesActionParametersCacheKeyCustomKeyQueryStringIncludeChoice(
    this.include,
  );

  final RulesetRulesActionParametersCacheKeyCustomKeyQueryStringInclude include;

  @override
  String get blockKey => 'include';

  @override
  Map<String, Object?> encode() => {'include': include.encode()};
}

/// The [RulesetRulesActionParametersCacheKeyCustomKeyQueryString.exclude] choice: sets `exclude`.
final class RulesetRulesActionParametersCacheKeyCustomKeyQueryStringExcludeChoice
    extends RulesetRulesActionParametersCacheKeyCustomKeyQueryString {
  const RulesetRulesActionParametersCacheKeyCustomKeyQueryStringExcludeChoice(
    this.exclude,
  );

  final RulesetRulesActionParametersCacheKeyCustomKeyQueryStringExclude exclude;

  @override
  String get blockKey => 'exclude';

  @override
  Map<String, Object?> encode() => {'exclude': exclude.encode()};
}

/// Exactly one of `list`, `all` on the `rules.action_parameters.cache_key.custom_key.query_string.exclude` block of `cloudflare_ruleset`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.list(...)`.
sealed class RulesetRulesActionParametersCacheKeyCustomKeyQueryStringExclude {
  const RulesetRulesActionParametersCacheKeyCustomKeyQueryStringExclude();

  /// Sets `list`.
  const factory RulesetRulesActionParametersCacheKeyCustomKeyQueryStringExclude.list(
    TfArg<List<String>> list,
  ) = RulesetRulesActionParametersCacheKeyCustomKeyQueryStringExcludeList;

  /// Sets `all`.
  const factory RulesetRulesActionParametersCacheKeyCustomKeyQueryStringExclude.all(
    TfArg<bool> all,
  ) = RulesetRulesActionParametersCacheKeyCustomKeyQueryStringExcludeAll;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [RulesetRulesActionParametersCacheKeyCustomKeyQueryStringExclude.list] choice: sets `list`.
final class RulesetRulesActionParametersCacheKeyCustomKeyQueryStringExcludeList
    extends RulesetRulesActionParametersCacheKeyCustomKeyQueryStringExclude {
  const RulesetRulesActionParametersCacheKeyCustomKeyQueryStringExcludeList(
    this.list,
  );

  final TfArg<List<String>> list;

  @override
  String get blockKey => 'list';

  @override
  Map<String, Object?> encode() => {'list': list.toTfJson()};
}

/// The [RulesetRulesActionParametersCacheKeyCustomKeyQueryStringExclude.all] choice: sets `all`.
final class RulesetRulesActionParametersCacheKeyCustomKeyQueryStringExcludeAll
    extends RulesetRulesActionParametersCacheKeyCustomKeyQueryStringExclude {
  const RulesetRulesActionParametersCacheKeyCustomKeyQueryStringExcludeAll(
    this.all,
  );

  final TfArg<bool> all;

  @override
  String get blockKey => 'all';

  @override
  Map<String, Object?> encode() => {'all': all.toTfJson()};
}

/// Exactly one of `list`, `all` on the `rules.action_parameters.cache_key.custom_key.query_string.include` block of `cloudflare_ruleset`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.list(...)`.
sealed class RulesetRulesActionParametersCacheKeyCustomKeyQueryStringInclude {
  const RulesetRulesActionParametersCacheKeyCustomKeyQueryStringInclude();

  /// Sets `list`.
  const factory RulesetRulesActionParametersCacheKeyCustomKeyQueryStringInclude.list(
    TfArg<List<String>> list,
  ) = RulesetRulesActionParametersCacheKeyCustomKeyQueryStringIncludeList;

  /// Sets `all`.
  const factory RulesetRulesActionParametersCacheKeyCustomKeyQueryStringInclude.all(
    TfArg<bool> all,
  ) = RulesetRulesActionParametersCacheKeyCustomKeyQueryStringIncludeAll;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [RulesetRulesActionParametersCacheKeyCustomKeyQueryStringInclude.list] choice: sets `list`.
final class RulesetRulesActionParametersCacheKeyCustomKeyQueryStringIncludeList
    extends RulesetRulesActionParametersCacheKeyCustomKeyQueryStringInclude {
  const RulesetRulesActionParametersCacheKeyCustomKeyQueryStringIncludeList(
    this.list,
  );

  final TfArg<List<String>> list;

  @override
  String get blockKey => 'list';

  @override
  Map<String, Object?> encode() => {'list': list.toTfJson()};
}

/// The [RulesetRulesActionParametersCacheKeyCustomKeyQueryStringInclude.all] choice: sets `all`.
final class RulesetRulesActionParametersCacheKeyCustomKeyQueryStringIncludeAll
    extends RulesetRulesActionParametersCacheKeyCustomKeyQueryStringInclude {
  const RulesetRulesActionParametersCacheKeyCustomKeyQueryStringIncludeAll(
    this.all,
  );

  final TfArg<bool> all;

  @override
  String get blockKey => 'all';

  @override
  Map<String, Object?> encode() => {'all': all.toTfJson()};
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
    'device_type': ?deviceType?.toTfJson(),
    'geo': ?geo?.toTfJson(),
    'lang': ?lang?.toTfJson(),
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
    'minimum_file_size': ?minimumFileSize?.toTfJson(),
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

  final TfArg<RulesetRulesActionParametersEdgeTtlMode> mode;

  final List<RulesetRulesActionParametersEdgeTtlStatusCodeTtl>? statusCodeTtl;

  Map<String, Object?> encode() => {
    'default': ?defaultCase?.toTfJson(),
    'mode': mode.toTfJson(),
    if (statusCodeTtl != null)
      'status_code_ttl': [for (final e in statusCodeTtl!) e.encode()],
  };
}

/// `mode` — derived from the provider schema description.
enum RulesetRulesActionParametersEdgeTtlMode implements TerraformEnum {
  respectOrigin('respect_origin'),
  bypassByDefault('bypass_by_default'),
  overrideOrigin('override_origin');

  const RulesetRulesActionParametersEdgeTtlMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `rules.action_parameters.edge_ttl.status_code_ttl` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParametersEdgeTtlStatusCodeTtl {
  const RulesetRulesActionParametersEdgeTtlStatusCodeTtl({
    required this.match,
    required this.value,
  });

  final RulesetRulesActionParametersEdgeTtlStatusCodeTtlMatch match;

  final TfArg<num> value;

  Map<String, Object?> encode() => {
    ...match.encode(),
    'value': value.toTfJson(),
  };
}

/// Exactly one of `status_code_range`, `status_code` on the `rules.action_parameters.edge_ttl.status_code_ttl` block of `cloudflare_ruleset`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.statusCodeRange(...)`.
sealed class RulesetRulesActionParametersEdgeTtlStatusCodeTtlMatch {
  const RulesetRulesActionParametersEdgeTtlStatusCodeTtlMatch();

  /// Sets `status_code_range`.
  const factory RulesetRulesActionParametersEdgeTtlStatusCodeTtlMatch.statusCodeRange(
    RulesetRulesActionParametersEdgeTtlStatusCodeTtlStatusCodeRange
    statusCodeRange,
  ) = RulesetRulesActionParametersEdgeTtlStatusCodeTtlMatchStatusCodeRange;

  /// Sets `status_code`.
  const factory RulesetRulesActionParametersEdgeTtlStatusCodeTtlMatch.statusCode(
    TfArg<num> statusCode,
  ) = RulesetRulesActionParametersEdgeTtlStatusCodeTtlMatchStatusCode;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [RulesetRulesActionParametersEdgeTtlStatusCodeTtlMatch.statusCodeRange] choice: sets `status_code_range`.
final class RulesetRulesActionParametersEdgeTtlStatusCodeTtlMatchStatusCodeRange
    extends RulesetRulesActionParametersEdgeTtlStatusCodeTtlMatch {
  const RulesetRulesActionParametersEdgeTtlStatusCodeTtlMatchStatusCodeRange(
    this.statusCodeRange,
  );

  final RulesetRulesActionParametersEdgeTtlStatusCodeTtlStatusCodeRange
  statusCodeRange;

  @override
  String get blockKey => 'status_code_range';

  @override
  Map<String, Object?> encode() => {
    'status_code_range': statusCodeRange.encode(),
  };
}

/// The [RulesetRulesActionParametersEdgeTtlStatusCodeTtlMatch.statusCode] choice: sets `status_code`.
final class RulesetRulesActionParametersEdgeTtlStatusCodeTtlMatchStatusCode
    extends RulesetRulesActionParametersEdgeTtlStatusCodeTtlMatch {
  const RulesetRulesActionParametersEdgeTtlStatusCodeTtlMatchStatusCode(
    this.statusCode,
  );

  final TfArg<num> statusCode;

  @override
  String get blockKey => 'status_code';

  @override
  Map<String, Object?> encode() => {'status_code': statusCode.toTfJson()};
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
    'from': ?from?.toTfJson(),
    'to': ?to?.toTfJson(),
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
    'preserve_query_string': ?preserveQueryString?.toTfJson(),
    'status_code': ?statusCode?.toTfJson(),
    'target_url': targetUrl.encode(),
  };
}

/// Exactly one of `value`, `expression` on the `rules.action_parameters.from_value.target_url` block of `cloudflare_ruleset`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.value(...)`.
sealed class RulesetRulesActionParametersFromValueTargetUrl {
  const RulesetRulesActionParametersFromValueTargetUrl();

  /// Sets `value`.
  const factory RulesetRulesActionParametersFromValueTargetUrl.value(
    TfArg<String> value,
  ) = RulesetRulesActionParametersFromValueTargetUrlValue;

  /// Sets `expression`.
  const factory RulesetRulesActionParametersFromValueTargetUrl.expression(
    TfArg<String> expression,
  ) = RulesetRulesActionParametersFromValueTargetUrlExpression;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [RulesetRulesActionParametersFromValueTargetUrl.value] choice: sets `value`.
final class RulesetRulesActionParametersFromValueTargetUrlValue
    extends RulesetRulesActionParametersFromValueTargetUrl {
  const RulesetRulesActionParametersFromValueTargetUrlValue(this.value);

  final TfArg<String> value;

  @override
  String get blockKey => 'value';

  @override
  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// The [RulesetRulesActionParametersFromValueTargetUrl.expression] choice: sets `expression`.
final class RulesetRulesActionParametersFromValueTargetUrlExpression
    extends RulesetRulesActionParametersFromValueTargetUrl {
  const RulesetRulesActionParametersFromValueTargetUrlExpression(
    this.expression,
  );

  final TfArg<String> expression;

  @override
  String get blockKey => 'expression';

  @override
  Map<String, Object?> encode() => {'expression': expression.toTfJson()};
}

/// Typed helper for the `rules.action_parameters.headers` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParametersHeaders {
  const RulesetRulesActionParametersHeaders({
    this.value,
    required this.operation,
  });

  final RulesetRulesActionParametersHeadersValue? value;

  final TfArg<RulesetRulesActionParametersHeadersOperation> operation;

  Map<String, Object?> encode() => {
    ...?value?.encode(),
    'operation': operation.toTfJson(),
  };
}

/// At most one of `value`, `expression` on the `rules.action_parameters.headers` block of `cloudflare_ruleset`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.value(...)`.
sealed class RulesetRulesActionParametersHeadersValue {
  const RulesetRulesActionParametersHeadersValue();

  /// Sets `value`.
  const factory RulesetRulesActionParametersHeadersValue.value(
    TfArg<String> value,
  ) = RulesetRulesActionParametersHeadersValueChoice;

  /// Sets `expression`.
  const factory RulesetRulesActionParametersHeadersValue.expression(
    TfArg<String> expression,
  ) = RulesetRulesActionParametersHeadersValueExpression;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [RulesetRulesActionParametersHeadersValue.value] choice: sets `value`.
final class RulesetRulesActionParametersHeadersValueChoice
    extends RulesetRulesActionParametersHeadersValue {
  const RulesetRulesActionParametersHeadersValueChoice(this.value);

  final TfArg<String> value;

  @override
  String get blockKey => 'value';

  @override
  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// The [RulesetRulesActionParametersHeadersValue.expression] choice: sets `expression`.
final class RulesetRulesActionParametersHeadersValueExpression
    extends RulesetRulesActionParametersHeadersValue {
  const RulesetRulesActionParametersHeadersValueExpression(this.expression);

  final TfArg<String> expression;

  @override
  String get blockKey => 'expression';

  @override
  Map<String, Object?> encode() => {'expression': expression.toTfJson()};
}

/// `operation` — derived from the provider schema description.
enum RulesetRulesActionParametersHeadersOperation implements TerraformEnum {
  add('add'),
  set('set'),
  remove('remove');

  const RulesetRulesActionParametersHeadersOperation(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<RulesetRulesActionParametersImmutableOperation> operation;

  Map<String, Object?> encode() => {
    'cloudflare_only': ?cloudflareOnly?.toTfJson(),
    'operation': operation.toTfJson(),
  };
}

/// `operation` — derived from the provider schema description.
enum RulesetRulesActionParametersImmutableOperation implements TerraformEnum {
  set('set'),
  remove('remove');

  const RulesetRulesActionParametersImmutableOperation(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<RulesetRulesActionParametersMaxAgeOperation> operation;

  final TfArg<num>? value;

  Map<String, Object?> encode() => {
    'cloudflare_only': ?cloudflareOnly?.toTfJson(),
    'operation': operation.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// `operation` — derived from the provider schema description.
enum RulesetRulesActionParametersMaxAgeOperation implements TerraformEnum {
  set('set'),
  remove('remove');

  const RulesetRulesActionParametersMaxAgeOperation(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<RulesetRulesActionParametersMustRevalidateOperation> operation;

  Map<String, Object?> encode() => {
    'cloudflare_only': ?cloudflareOnly?.toTfJson(),
    'operation': operation.toTfJson(),
  };
}

/// `operation` — derived from the provider schema description.
enum RulesetRulesActionParametersMustRevalidateOperation
    implements TerraformEnum {
  set('set'),
  remove('remove');

  const RulesetRulesActionParametersMustRevalidateOperation(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final TfArg<RulesetRulesActionParametersMustUnderstandOperation> operation;

  Map<String, Object?> encode() => {
    'cloudflare_only': ?cloudflareOnly?.toTfJson(),
    'operation': operation.toTfJson(),
  };
}

/// `operation` — derived from the provider schema description.
enum RulesetRulesActionParametersMustUnderstandOperation
    implements TerraformEnum {
  set('set'),
  remove('remove');

  const RulesetRulesActionParametersMustUnderstandOperation(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final TfArg<RulesetRulesActionParametersNoCacheOperation> operation;

  final TfArg<List<String>>? qualifiers;

  Map<String, Object?> encode() => {
    'cloudflare_only': ?cloudflareOnly?.toTfJson(),
    'operation': operation.toTfJson(),
    'qualifiers': ?qualifiers?.toTfJson(),
  };
}

/// `operation` — derived from the provider schema description.
enum RulesetRulesActionParametersNoCacheOperation implements TerraformEnum {
  set('set'),
  remove('remove');

  const RulesetRulesActionParametersNoCacheOperation(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<RulesetRulesActionParametersNoStoreOperation> operation;

  Map<String, Object?> encode() => {
    'cloudflare_only': ?cloudflareOnly?.toTfJson(),
    'operation': operation.toTfJson(),
  };
}

/// `operation` — derived from the provider schema description.
enum RulesetRulesActionParametersNoStoreOperation implements TerraformEnum {
  set('set'),
  remove('remove');

  const RulesetRulesActionParametersNoStoreOperation(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<RulesetRulesActionParametersNoTransformOperation> operation;

  Map<String, Object?> encode() => {
    'cloudflare_only': ?cloudflareOnly?.toTfJson(),
    'operation': operation.toTfJson(),
  };
}

/// `operation` — derived from the provider schema description.
enum RulesetRulesActionParametersNoTransformOperation implements TerraformEnum {
  set('set'),
  remove('remove');

  const RulesetRulesActionParametersNoTransformOperation(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `rules.action_parameters.origin` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParametersOrigin {
  const RulesetRulesActionParametersOrigin({this.host, this.port});

  final TfArg<String>? host;

  final TfArg<num>? port;

  Map<String, Object?> encode() => {
    'host': ?host?.toTfJson(),
    'port': ?port?.toTfJson(),
  };
}

/// Typed helper for the `rules.action_parameters.origin_range_requests` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParametersOriginRangeRequests {
  const RulesetRulesActionParametersOriginRangeRequests({required this.mode});

  final TfArg<RulesetRulesActionParametersOriginRangeRequestsMode> mode;

  Map<String, Object?> encode() => {'mode': mode.toTfJson()};
}

/// `mode` — derived from the provider schema description.
enum RulesetRulesActionParametersOriginRangeRequestsMode
    implements TerraformEnum {
  on('on'),
  off('off'),
  defaultCase('default');

  const RulesetRulesActionParametersOriginRangeRequestsMode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final TfArg<RulesetRulesActionParametersOverridesSensitivityLevel>?
  sensitivityLevel;

  final List<RulesetRulesActionParametersOverridesCategories>? categories;

  final List<RulesetRulesActionParametersOverridesRules>? rules;

  Map<String, Object?> encode() => {
    'action': ?action?.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
    'sensitivity_level': ?sensitivityLevel?.toTfJson(),
    if (categories != null)
      'categories': [for (final e in categories!) e.encode()],
    if (rules != null) 'rules': [for (final e in rules!) e.encode()],
  };
}

/// `sensitivity_level` — derived from the provider schema description.
enum RulesetRulesActionParametersOverridesSensitivityLevel
    implements TerraformEnum {
  defaultCase('default'),
  medium('medium'),
  low('low'),
  eoff('eoff');

  const RulesetRulesActionParametersOverridesSensitivityLevel(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final TfArg<RulesetRulesActionParametersOverridesCategoriesSensitivityLevel>?
  sensitivityLevel;

  Map<String, Object?> encode() => {
    'action': ?action?.toTfJson(),
    'category': category.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
    'sensitivity_level': ?sensitivityLevel?.toTfJson(),
  };
}

/// `sensitivity_level` — derived from the provider schema description.
enum RulesetRulesActionParametersOverridesCategoriesSensitivityLevel
    implements TerraformEnum {
  defaultCase('default'),
  medium('medium'),
  low('low'),
  eoff('eoff');

  const RulesetRulesActionParametersOverridesCategoriesSensitivityLevel(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final TfArg<RulesetRulesActionParametersOverridesRulesSensitivityLevel>?
  sensitivityLevel;

  Map<String, Object?> encode() => {
    'action': ?action?.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
    'id': id.toTfJson(),
    'score_threshold': ?scoreThreshold?.toTfJson(),
    'sensitivity_level': ?sensitivityLevel?.toTfJson(),
  };
}

/// `sensitivity_level` — derived from the provider schema description.
enum RulesetRulesActionParametersOverridesRulesSensitivityLevel
    implements TerraformEnum {
  defaultCase('default'),
  medium('medium'),
  low('low'),
  eoff('eoff');

  const RulesetRulesActionParametersOverridesRulesSensitivityLevel(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final TfArg<RulesetRulesActionParametersPrivateOperation> operation;

  final TfArg<List<String>>? qualifiers;

  Map<String, Object?> encode() => {
    'cloudflare_only': ?cloudflareOnly?.toTfJson(),
    'operation': operation.toTfJson(),
    'qualifiers': ?qualifiers?.toTfJson(),
  };
}

/// `operation` — derived from the provider schema description.
enum RulesetRulesActionParametersPrivateOperation implements TerraformEnum {
  set('set'),
  remove('remove');

  const RulesetRulesActionParametersPrivateOperation(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<RulesetRulesActionParametersProxyRevalidateOperation> operation;

  Map<String, Object?> encode() => {
    'cloudflare_only': ?cloudflareOnly?.toTfJson(),
    'operation': operation.toTfJson(),
  };
}

/// `operation` — derived from the provider schema description.
enum RulesetRulesActionParametersProxyRevalidateOperation
    implements TerraformEnum {
  set('set'),
  remove('remove');

  const RulesetRulesActionParametersProxyRevalidateOperation(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final TfArg<RulesetRulesActionParametersPublicOperation> operation;

  Map<String, Object?> encode() => {
    'cloudflare_only': ?cloudflareOnly?.toTfJson(),
    'operation': operation.toTfJson(),
  };
}

/// `operation` — derived from the provider schema description.
enum RulesetRulesActionParametersPublicOperation implements TerraformEnum {
  set('set'),
  remove('remove');

  const RulesetRulesActionParametersPublicOperation(this.terraformValue);
  @override
  final String terraformValue;
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
    'preserve_duplicates': ?preserveDuplicates?.toTfJson(),
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
    'preserve_duplicates': ?preserveDuplicates?.toTfJson(),
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

  final TfArg<RulesetRulesActionParametersSMaxageOperation> operation;

  final TfArg<num>? value;

  Map<String, Object?> encode() => {
    'cloudflare_only': ?cloudflareOnly?.toTfJson(),
    'operation': operation.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// `operation` — derived from the provider schema description.
enum RulesetRulesActionParametersSMaxageOperation implements TerraformEnum {
  set('set'),
  remove('remove');

  const RulesetRulesActionParametersSMaxageOperation(this.terraformValue);
  @override
  final String terraformValue;
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
    'disable_stale_while_updating': ?disableStaleWhileUpdating?.toTfJson(),
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

  final TfArg<RulesetRulesActionParametersStaleIfErrorOperation> operation;

  final TfArg<num>? value;

  Map<String, Object?> encode() => {
    'cloudflare_only': ?cloudflareOnly?.toTfJson(),
    'operation': operation.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// `operation` — derived from the provider schema description.
enum RulesetRulesActionParametersStaleIfErrorOperation
    implements TerraformEnum {
  set('set'),
  remove('remove');

  const RulesetRulesActionParametersStaleIfErrorOperation(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<RulesetRulesActionParametersStaleWhileRevalidateOperation>
  operation;

  final TfArg<num>? value;

  Map<String, Object?> encode() => {
    'cloudflare_only': ?cloudflareOnly?.toTfJson(),
    'operation': operation.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// `operation` — derived from the provider schema description.
enum RulesetRulesActionParametersStaleWhileRevalidateOperation
    implements TerraformEnum {
  set('set'),
  remove('remove');

  const RulesetRulesActionParametersStaleWhileRevalidateOperation(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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
    'path': ?path?.encode(),
    'query': ?query?.encode(),
  };
}

/// Exactly one of `value`, `expression` on the `rules.action_parameters.uri.path` block of `cloudflare_ruleset`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.value(...)`.
sealed class RulesetRulesActionParametersUriPath {
  const RulesetRulesActionParametersUriPath();

  /// Sets `value`.
  const factory RulesetRulesActionParametersUriPath.value(TfArg<String> value) =
      RulesetRulesActionParametersUriPathValue;

  /// Sets `expression`.
  const factory RulesetRulesActionParametersUriPath.expression(
    TfArg<String> expression,
  ) = RulesetRulesActionParametersUriPathExpression;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [RulesetRulesActionParametersUriPath.value] choice: sets `value`.
final class RulesetRulesActionParametersUriPathValue
    extends RulesetRulesActionParametersUriPath {
  const RulesetRulesActionParametersUriPathValue(this.value);

  final TfArg<String> value;

  @override
  String get blockKey => 'value';

  @override
  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// The [RulesetRulesActionParametersUriPath.expression] choice: sets `expression`.
final class RulesetRulesActionParametersUriPathExpression
    extends RulesetRulesActionParametersUriPath {
  const RulesetRulesActionParametersUriPathExpression(this.expression);

  final TfArg<String> expression;

  @override
  String get blockKey => 'expression';

  @override
  Map<String, Object?> encode() => {'expression': expression.toTfJson()};
}

/// Exactly one of `value`, `expression` on the `rules.action_parameters.uri.query` block of `cloudflare_ruleset`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.value(...)`.
sealed class RulesetRulesActionParametersUriQuery {
  const RulesetRulesActionParametersUriQuery();

  /// Sets `value`.
  const factory RulesetRulesActionParametersUriQuery.value(
    TfArg<String> value,
  ) = RulesetRulesActionParametersUriQueryValue;

  /// Sets `expression`.
  const factory RulesetRulesActionParametersUriQuery.expression(
    TfArg<String> expression,
  ) = RulesetRulesActionParametersUriQueryExpression;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [RulesetRulesActionParametersUriQuery.value] choice: sets `value`.
final class RulesetRulesActionParametersUriQueryValue
    extends RulesetRulesActionParametersUriQuery {
  const RulesetRulesActionParametersUriQueryValue(this.value);

  final TfArg<String> value;

  @override
  String get blockKey => 'value';

  @override
  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// The [RulesetRulesActionParametersUriQuery.expression] choice: sets `expression`.
final class RulesetRulesActionParametersUriQueryExpression
    extends RulesetRulesActionParametersUriQuery {
  const RulesetRulesActionParametersUriQueryExpression(this.expression);

  final TfArg<String> expression;

  @override
  String get blockKey => 'expression';

  @override
  Map<String, Object?> encode() => {'expression': expression.toTfJson()};
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

  final Map<String, RulesetRulesActionParametersVaryHeaders>? headers;

  Map<String, Object?> encode() => {
    'default': defaultCase.encode(),
    if (headers != null)
      'headers': {for (final e in headers!.entries) e.key: e.value.encode()},
  };
}

/// Typed helper for the `rules.action_parameters.vary.default` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParametersVaryDefault {
  const RulesetRulesActionParametersVaryDefault({required this.action});

  final TfArg<RulesetRulesActionParametersVaryDefaultAction> action;

  Map<String, Object?> encode() => {'action': action.toTfJson()};
}

/// `action` — derived from the provider schema description.
enum RulesetRulesActionParametersVaryDefaultAction implements TerraformEnum {
  bypass('bypass'),
  passthrough('passthrough'),
  normalize('normalize');

  const RulesetRulesActionParametersVaryDefaultAction(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<RulesetRulesActionParametersVaryHeadersAction> action;

  final TfArg<List<String>>? languages;

  final TfArg<List<String>>? mediaTypes;

  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    'languages': ?languages?.toTfJson(),
    'media_types': ?mediaTypes?.toTfJson(),
  };
}

/// `action` — derived from the provider schema description.
enum RulesetRulesActionParametersVaryHeadersAction implements TerraformEnum {
  bypass('bypass'),
  passthrough('passthrough'),
  normalize('normalize');

  const RulesetRulesActionParametersVaryHeadersAction(this.terraformValue);
  @override
  final String terraformValue;
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

  Map<String, Object?> encode() => {'enabled': ?enabled?.toTfJson()};
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

  final TfArg<List<String>> characteristics;

  final TfArg<String>? countingExpression;

  final TfArg<num>? mitigationTimeout;

  final TfArg<num> period;

  final TfArg<num>? requestsPerPeriod;

  final TfArg<bool>? requestsToOrigin;

  final TfArg<num>? scorePerPeriod;

  final TfArg<String>? scoreResponseHeaderName;

  Map<String, Object?> encode() => {
    'characteristics': characteristics.toTfJson(),
    'counting_expression': ?countingExpression?.toTfJson(),
    'mitigation_timeout': ?mitigationTimeout?.toTfJson(),
    'period': period.toTfJson(),
    'requests_per_period': ?requestsPerPeriod?.toTfJson(),
    'requests_to_origin': ?requestsToOrigin?.toTfJson(),
    'score_per_period': ?scorePerPeriod?.toTfJson(),
    'score_response_header_name': ?scoreResponseHeaderName?.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_ruleset`.
final class CloudflareRuleset extends Resource {
  static const String tfType = 'cloudflare_ruleset';

  CloudflareRuleset({
    required super.localName,
    required RulesetScope scope,
    TfArg<String>? description,
    required TfArg<RulesetKind> kind,
    required TfArg<String> name,
    required TfArg<RulesetPhase> phase,
    List<RulesetRules>? rules,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...scope.argMap,
           'description': ?description,
           'kind': kind,
           'name': name,
           'phase': phase,
           if (rules != null)
             'rules': TfArg.literal([for (final e in rules) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareRulesetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareRuleset>`.
  RefTo<CloudflareRuleset> get ref => RefTo.of(this);

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
