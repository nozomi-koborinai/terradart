// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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
sealed class RulesetAccountIdOrZoneId {
  const RulesetAccountIdOrZoneId();

  /// Sets `account_id`.
  const factory RulesetAccountIdOrZoneId.accountId(TfArg<String> accountId) =
      RulesetAccountIdOrZoneIdAccountId;

  /// Sets `zone_id`.
  const factory RulesetAccountIdOrZoneId.zoneId(TfArg<String> zoneId) =
      RulesetAccountIdOrZoneIdZoneId;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [RulesetAccountIdOrZoneId.accountId] choice: sets `account_id`.
final class RulesetAccountIdOrZoneIdAccountId extends RulesetAccountIdOrZoneId {
  const RulesetAccountIdOrZoneIdAccountId(this.accountId);

  final TfArg<String> accountId;

  @override
  String get blockKey => 'account_id';

  @override
  Map<String, Object?> encode() => {'account_id': accountId.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'account_id': accountId};
}

/// The [RulesetAccountIdOrZoneId.zoneId] choice: sets `zone_id`.
final class RulesetAccountIdOrZoneIdZoneId extends RulesetAccountIdOrZoneId {
  const RulesetAccountIdOrZoneIdZoneId(this.zoneId);

  final TfArg<String> zoneId;

  @override
  String get blockKey => 'zone_id';

  @override
  Map<String, Object?> encode() => {'zone_id': zoneId.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'zone_id': zoneId};
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
    this.assetNameOrContent,
    this.automaticHttpsRewrites,
    this.bic,
    this.cache,
    this.contentConverter,
    this.contentType,
    this.disableApps,
    this.disableRum,
    this.disableZaraz,
    this.emailObfuscation,
    this.valuesOrExpression,
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
    this.fromListOrFromValue,
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

  final TfArg<List<Object?>>? additionalCacheablePorts;

  final RulesetRulesActionParametersAssetNameOrContent? assetNameOrContent;

  final TfArg<bool>? automaticHttpsRewrites;

  final TfArg<bool>? bic;

  final TfArg<bool>? cache;

  final TfArg<bool>? contentConverter;

  final TfArg<RulesetRulesActionParametersContentType>? contentType;

  final TfArg<bool>? disableApps;

  final TfArg<bool>? disableRum;

  final TfArg<bool>? disableZaraz;

  final TfArg<bool>? emailObfuscation;

  final RulesetRulesActionParametersValuesOrExpression? valuesOrExpression;

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

  final TfArg<List<Object?>>? rulesets;

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

  final RulesetRulesActionParametersFromListOrFromValue? fromListOrFromValue;

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
    if (additionalCacheablePorts != null)
      'additional_cacheable_ports': additionalCacheablePorts!.toTfJson(),
    ...?assetNameOrContent?.encode(),
    if (automaticHttpsRewrites != null)
      'automatic_https_rewrites': automaticHttpsRewrites!.toTfJson(),
    if (bic != null) 'bic': bic!.toTfJson(),
    if (cache != null) 'cache': cache!.toTfJson(),
    if (contentConverter != null)
      'content_converter': contentConverter!.toTfJson(),
    if (contentType != null) 'content_type': contentType!.toTfJson(),
    if (disableApps != null) 'disable_apps': disableApps!.toTfJson(),
    if (disableRum != null) 'disable_rum': disableRum!.toTfJson(),
    if (disableZaraz != null) 'disable_zaraz': disableZaraz!.toTfJson(),
    if (emailObfuscation != null)
      'email_obfuscation': emailObfuscation!.toTfJson(),
    ...?valuesOrExpression?.encode(),
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
    if (phases != null) 'phases': [for (final e in phases!) e.toTfJson()],
    if (polish != null) 'polish': polish!.toTfJson(),
    if (products != null) 'products': [for (final e in products!) e.toTfJson()],
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
    if (algorithms != null)
      'algorithms': [for (final e in algorithms!) e.encode()],
    if (autominify != null) 'autominify': autominify!.encode(),
    if (browserTtl != null) 'browser_ttl': browserTtl!.encode(),
    if (cacheKey != null) 'cache_key': cacheKey!.encode(),
    if (cacheReserve != null) 'cache_reserve': cacheReserve!.encode(),
    if (cookieFields != null)
      'cookie_fields': [for (final e in cookieFields!) e.encode()],
    if (edgeTtl != null) 'edge_ttl': edgeTtl!.encode(),
    ...?fromListOrFromValue?.encode(),
    if (headers != null)
      'headers': {for (final e in headers!.entries) e.key: e.value.encode()},
    if (immutable != null) 'immutable': immutable!.encode(),
    if (matchedData != null) 'matched_data': matchedData!.encode(),
    if (maxAge != null) 'max_age': maxAge!.encode(),
    if (mustRevalidate != null) 'must_revalidate': mustRevalidate!.encode(),
    if (mustUnderstand != null) 'must_understand': mustUnderstand!.encode(),
    if (noCache != null) 'no_cache': noCache!.encode(),
    if (noStore != null) 'no_store': noStore!.encode(),
    if (noTransform != null) 'no_transform': noTransform!.encode(),
    if (origin != null) 'origin': origin!.encode(),
    if (originRangeRequests != null)
      'origin_range_requests': originRangeRequests!.encode(),
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

/// At most one of `asset_name`, `content` on the `rules.action_parameters` block of `cloudflare_ruleset`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.assetName(...)`.
sealed class RulesetRulesActionParametersAssetNameOrContent {
  const RulesetRulesActionParametersAssetNameOrContent();

  /// Sets `asset_name`.
  const factory RulesetRulesActionParametersAssetNameOrContent.assetName(
    TfArg<String> assetName,
  ) = RulesetRulesActionParametersAssetNameOrContentAssetName;

  /// Sets `content`.
  const factory RulesetRulesActionParametersAssetNameOrContent.content(
    TfArg<String> content,
  ) = RulesetRulesActionParametersAssetNameOrContentContent;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [RulesetRulesActionParametersAssetNameOrContent.assetName] choice: sets `asset_name`.
final class RulesetRulesActionParametersAssetNameOrContentAssetName
    extends RulesetRulesActionParametersAssetNameOrContent {
  const RulesetRulesActionParametersAssetNameOrContentAssetName(this.assetName);

  final TfArg<String> assetName;

  @override
  String get blockKey => 'asset_name';

  @override
  Map<String, Object?> encode() => {'asset_name': assetName.toTfJson()};
}

/// The [RulesetRulesActionParametersAssetNameOrContent.content] choice: sets `content`.
final class RulesetRulesActionParametersAssetNameOrContentContent
    extends RulesetRulesActionParametersAssetNameOrContent {
  const RulesetRulesActionParametersAssetNameOrContentContent(this.content);

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
sealed class RulesetRulesActionParametersFromListOrFromValue {
  const RulesetRulesActionParametersFromListOrFromValue();

  /// Sets `from_list`.
  const factory RulesetRulesActionParametersFromListOrFromValue.fromList(
    RulesetRulesActionParametersFromList fromList,
  ) = RulesetRulesActionParametersFromListOrFromValueFromList;

  /// Sets `from_value`.
  const factory RulesetRulesActionParametersFromListOrFromValue.fromValue(
    RulesetRulesActionParametersFromValue fromValue,
  ) = RulesetRulesActionParametersFromListOrFromValueFromValue;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [RulesetRulesActionParametersFromListOrFromValue.fromList] choice: sets `from_list`.
final class RulesetRulesActionParametersFromListOrFromValueFromList
    extends RulesetRulesActionParametersFromListOrFromValue {
  const RulesetRulesActionParametersFromListOrFromValueFromList(this.fromList);

  final RulesetRulesActionParametersFromList fromList;

  @override
  String get blockKey => 'from_list';

  @override
  Map<String, Object?> encode() => {'from_list': fromList.encode()};
}

/// The [RulesetRulesActionParametersFromListOrFromValue.fromValue] choice: sets `from_value`.
final class RulesetRulesActionParametersFromListOrFromValueFromValue
    extends RulesetRulesActionParametersFromListOrFromValue {
  const RulesetRulesActionParametersFromListOrFromValueFromValue(
    this.fromValue,
  );

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
sealed class RulesetRulesActionParametersValuesOrExpression {
  const RulesetRulesActionParametersValuesOrExpression();

  /// Sets `values`.
  const factory RulesetRulesActionParametersValuesOrExpression.values(
    TfArg<List<Object?>> values,
  ) = RulesetRulesActionParametersValuesOrExpressionValues;

  /// Sets `expression`.
  const factory RulesetRulesActionParametersValuesOrExpression.expression(
    TfArg<String> expression,
  ) = RulesetRulesActionParametersValuesOrExpressionExpression;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [RulesetRulesActionParametersValuesOrExpression.values] choice: sets `values`.
final class RulesetRulesActionParametersValuesOrExpressionValues
    extends RulesetRulesActionParametersValuesOrExpression {
  const RulesetRulesActionParametersValuesOrExpressionValues(this.values);

  final TfArg<List<Object?>> values;

  @override
  String get blockKey => 'values';

  @override
  Map<String, Object?> encode() => {'values': values.toTfJson()};
}

/// The [RulesetRulesActionParametersValuesOrExpression.expression] choice: sets `expression`.
final class RulesetRulesActionParametersValuesOrExpressionExpression
    extends RulesetRulesActionParametersValuesOrExpression {
  const RulesetRulesActionParametersValuesOrExpressionExpression(
    this.expression,
  );

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

  Map<String, Object?> encode() => {if (name != null) 'name': name!.toTfJson()};
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

  final TfArg<RulesetRulesActionParametersBrowserTtlMode> mode;

  Map<String, Object?> encode() => {
    if (defaultCase != null) 'default': defaultCase!.toTfJson(),
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
    this.queryString,
  });

  final RulesetRulesActionParametersCacheKeyCustomKeyQueryStringQueryString?
  queryString;

  Map<String, Object?> encode() => {...?queryString?.encode()};
}

/// At most one of `include`, `exclude` on the `rules.action_parameters.cache_key.custom_key.query_string` block of `cloudflare_ruleset`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.include(...)`.
sealed class RulesetRulesActionParametersCacheKeyCustomKeyQueryStringQueryString {
  const RulesetRulesActionParametersCacheKeyCustomKeyQueryStringQueryString();

  /// Sets `include`.
  const factory RulesetRulesActionParametersCacheKeyCustomKeyQueryStringQueryString.include(
    RulesetRulesActionParametersCacheKeyCustomKeyQueryStringInclude include,
  ) = RulesetRulesActionParametersCacheKeyCustomKeyQueryStringQueryStringInclude;

  /// Sets `exclude`.
  const factory RulesetRulesActionParametersCacheKeyCustomKeyQueryStringQueryString.exclude(
    RulesetRulesActionParametersCacheKeyCustomKeyQueryStringExclude exclude,
  ) = RulesetRulesActionParametersCacheKeyCustomKeyQueryStringQueryStringExclude;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [RulesetRulesActionParametersCacheKeyCustomKeyQueryStringQueryString.include] choice: sets `include`.
final class RulesetRulesActionParametersCacheKeyCustomKeyQueryStringQueryStringInclude
    extends
        RulesetRulesActionParametersCacheKeyCustomKeyQueryStringQueryString {
  const RulesetRulesActionParametersCacheKeyCustomKeyQueryStringQueryStringInclude(
    this.include,
  );

  final RulesetRulesActionParametersCacheKeyCustomKeyQueryStringInclude include;

  @override
  String get blockKey => 'include';

  @override
  Map<String, Object?> encode() => {'include': include.encode()};
}

/// The [RulesetRulesActionParametersCacheKeyCustomKeyQueryStringQueryString.exclude] choice: sets `exclude`.
final class RulesetRulesActionParametersCacheKeyCustomKeyQueryStringQueryStringExclude
    extends
        RulesetRulesActionParametersCacheKeyCustomKeyQueryStringQueryString {
  const RulesetRulesActionParametersCacheKeyCustomKeyQueryStringQueryStringExclude(
    this.exclude,
  );

  final RulesetRulesActionParametersCacheKeyCustomKeyQueryStringExclude exclude;

  @override
  String get blockKey => 'exclude';

  @override
  Map<String, Object?> encode() => {'exclude': exclude.encode()};
}

/// Typed helper for the `rules.action_parameters.cache_key.custom_key.query_string.exclude` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParametersCacheKeyCustomKeyQueryStringExclude {
  const RulesetRulesActionParametersCacheKeyCustomKeyQueryStringExclude({
    required this.exclude,
  });

  final RulesetRulesActionParametersCacheKeyCustomKeyQueryStringExcludeExclude
  exclude;

  Map<String, Object?> encode() => {...exclude.encode()};
}

/// Exactly one of `list`, `all` on the `rules.action_parameters.cache_key.custom_key.query_string.exclude` block of `cloudflare_ruleset`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.list(...)`.
sealed class RulesetRulesActionParametersCacheKeyCustomKeyQueryStringExcludeExclude {
  const RulesetRulesActionParametersCacheKeyCustomKeyQueryStringExcludeExclude();

  /// Sets `list`.
  const factory RulesetRulesActionParametersCacheKeyCustomKeyQueryStringExcludeExclude.list(
    TfArg<List<Object?>> list,
  ) = RulesetRulesActionParametersCacheKeyCustomKeyQueryStringExcludeExcludeList;

  /// Sets `all`.
  const factory RulesetRulesActionParametersCacheKeyCustomKeyQueryStringExcludeExclude.all(
    TfArg<bool> all,
  ) = RulesetRulesActionParametersCacheKeyCustomKeyQueryStringExcludeExcludeAll;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [RulesetRulesActionParametersCacheKeyCustomKeyQueryStringExcludeExclude.list] choice: sets `list`.
final class RulesetRulesActionParametersCacheKeyCustomKeyQueryStringExcludeExcludeList
    extends
        RulesetRulesActionParametersCacheKeyCustomKeyQueryStringExcludeExclude {
  const RulesetRulesActionParametersCacheKeyCustomKeyQueryStringExcludeExcludeList(
    this.list,
  );

  final TfArg<List<Object?>> list;

  @override
  String get blockKey => 'list';

  @override
  Map<String, Object?> encode() => {'list': list.toTfJson()};
}

/// The [RulesetRulesActionParametersCacheKeyCustomKeyQueryStringExcludeExclude.all] choice: sets `all`.
final class RulesetRulesActionParametersCacheKeyCustomKeyQueryStringExcludeExcludeAll
    extends
        RulesetRulesActionParametersCacheKeyCustomKeyQueryStringExcludeExclude {
  const RulesetRulesActionParametersCacheKeyCustomKeyQueryStringExcludeExcludeAll(
    this.all,
  );

  final TfArg<bool> all;

  @override
  String get blockKey => 'all';

  @override
  Map<String, Object?> encode() => {'all': all.toTfJson()};
}

/// Typed helper for the `rules.action_parameters.cache_key.custom_key.query_string.include` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParametersCacheKeyCustomKeyQueryStringInclude {
  const RulesetRulesActionParametersCacheKeyCustomKeyQueryStringInclude({
    required this.include,
  });

  final RulesetRulesActionParametersCacheKeyCustomKeyQueryStringIncludeInclude
  include;

  Map<String, Object?> encode() => {...include.encode()};
}

/// Exactly one of `list`, `all` on the `rules.action_parameters.cache_key.custom_key.query_string.include` block of `cloudflare_ruleset`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.list(...)`.
sealed class RulesetRulesActionParametersCacheKeyCustomKeyQueryStringIncludeInclude {
  const RulesetRulesActionParametersCacheKeyCustomKeyQueryStringIncludeInclude();

  /// Sets `list`.
  const factory RulesetRulesActionParametersCacheKeyCustomKeyQueryStringIncludeInclude.list(
    TfArg<List<Object?>> list,
  ) = RulesetRulesActionParametersCacheKeyCustomKeyQueryStringIncludeIncludeList;

  /// Sets `all`.
  const factory RulesetRulesActionParametersCacheKeyCustomKeyQueryStringIncludeInclude.all(
    TfArg<bool> all,
  ) = RulesetRulesActionParametersCacheKeyCustomKeyQueryStringIncludeIncludeAll;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [RulesetRulesActionParametersCacheKeyCustomKeyQueryStringIncludeInclude.list] choice: sets `list`.
final class RulesetRulesActionParametersCacheKeyCustomKeyQueryStringIncludeIncludeList
    extends
        RulesetRulesActionParametersCacheKeyCustomKeyQueryStringIncludeInclude {
  const RulesetRulesActionParametersCacheKeyCustomKeyQueryStringIncludeIncludeList(
    this.list,
  );

  final TfArg<List<Object?>> list;

  @override
  String get blockKey => 'list';

  @override
  Map<String, Object?> encode() => {'list': list.toTfJson()};
}

/// The [RulesetRulesActionParametersCacheKeyCustomKeyQueryStringIncludeInclude.all] choice: sets `all`.
final class RulesetRulesActionParametersCacheKeyCustomKeyQueryStringIncludeIncludeAll
    extends
        RulesetRulesActionParametersCacheKeyCustomKeyQueryStringIncludeInclude {
  const RulesetRulesActionParametersCacheKeyCustomKeyQueryStringIncludeIncludeAll(
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

  final TfArg<RulesetRulesActionParametersEdgeTtlMode> mode;

  final List<RulesetRulesActionParametersEdgeTtlStatusCodeTtl>? statusCodeTtl;

  Map<String, Object?> encode() => {
    if (defaultCase != null) 'default': defaultCase!.toTfJson(),
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
    required this.statusCode,
    required this.value,
  });

  final RulesetRulesActionParametersEdgeTtlStatusCodeTtlStatusCode statusCode;

  final TfArg<num> value;

  Map<String, Object?> encode() => {
    ...statusCode.encode(),
    'value': value.toTfJson(),
  };
}

/// Exactly one of `status_code_range`, `status_code` on the `rules.action_parameters.edge_ttl.status_code_ttl` block of `cloudflare_ruleset`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.statusCodeRange(...)`.
sealed class RulesetRulesActionParametersEdgeTtlStatusCodeTtlStatusCode {
  const RulesetRulesActionParametersEdgeTtlStatusCodeTtlStatusCode();

  /// Sets `status_code_range`.
  const factory RulesetRulesActionParametersEdgeTtlStatusCodeTtlStatusCode.statusCodeRange(
    RulesetRulesActionParametersEdgeTtlStatusCodeTtlStatusCodeRange
    statusCodeRange,
  ) = RulesetRulesActionParametersEdgeTtlStatusCodeTtlStatusCodeStatusCodeRange;

  /// Sets `status_code`.
  const factory RulesetRulesActionParametersEdgeTtlStatusCodeTtlStatusCode.statusCode(
    TfArg<num> statusCode,
  ) = RulesetRulesActionParametersEdgeTtlStatusCodeTtlStatusCodeStatusCode;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [RulesetRulesActionParametersEdgeTtlStatusCodeTtlStatusCode.statusCodeRange] choice: sets `status_code_range`.
final class RulesetRulesActionParametersEdgeTtlStatusCodeTtlStatusCodeStatusCodeRange
    extends RulesetRulesActionParametersEdgeTtlStatusCodeTtlStatusCode {
  const RulesetRulesActionParametersEdgeTtlStatusCodeTtlStatusCodeStatusCodeRange(
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

/// The [RulesetRulesActionParametersEdgeTtlStatusCodeTtlStatusCode.statusCode] choice: sets `status_code`.
final class RulesetRulesActionParametersEdgeTtlStatusCodeTtlStatusCodeStatusCode
    extends RulesetRulesActionParametersEdgeTtlStatusCodeTtlStatusCode {
  const RulesetRulesActionParametersEdgeTtlStatusCodeTtlStatusCodeStatusCode(
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
    required this.targetUrl,
  });

  final RulesetRulesActionParametersFromValueTargetUrlTargetUrl targetUrl;

  Map<String, Object?> encode() => {...targetUrl.encode()};
}

/// Exactly one of `value`, `expression` on the `rules.action_parameters.from_value.target_url` block of `cloudflare_ruleset`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.value(...)`.
sealed class RulesetRulesActionParametersFromValueTargetUrlTargetUrl {
  const RulesetRulesActionParametersFromValueTargetUrlTargetUrl();

  /// Sets `value`.
  const factory RulesetRulesActionParametersFromValueTargetUrlTargetUrl.value(
    TfArg<String> value,
  ) = RulesetRulesActionParametersFromValueTargetUrlTargetUrlValue;

  /// Sets `expression`.
  const factory RulesetRulesActionParametersFromValueTargetUrlTargetUrl.expression(
    TfArg<String> expression,
  ) = RulesetRulesActionParametersFromValueTargetUrlTargetUrlExpression;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [RulesetRulesActionParametersFromValueTargetUrlTargetUrl.value] choice: sets `value`.
final class RulesetRulesActionParametersFromValueTargetUrlTargetUrlValue
    extends RulesetRulesActionParametersFromValueTargetUrlTargetUrl {
  const RulesetRulesActionParametersFromValueTargetUrlTargetUrlValue(
    this.value,
  );

  final TfArg<String> value;

  @override
  String get blockKey => 'value';

  @override
  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// The [RulesetRulesActionParametersFromValueTargetUrlTargetUrl.expression] choice: sets `expression`.
final class RulesetRulesActionParametersFromValueTargetUrlTargetUrlExpression
    extends RulesetRulesActionParametersFromValueTargetUrlTargetUrl {
  const RulesetRulesActionParametersFromValueTargetUrlTargetUrlExpression(
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
    this.valueOrExpression,
    required this.operation,
  });

  final RulesetRulesActionParametersHeadersValueOrExpression? valueOrExpression;

  final TfArg<RulesetRulesActionParametersHeadersOperation> operation;

  Map<String, Object?> encode() => {
    ...?valueOrExpression?.encode(),
    'operation': operation.toTfJson(),
  };
}

/// At most one of `value`, `expression` on the `rules.action_parameters.headers` block of `cloudflare_ruleset`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.value(...)`.
sealed class RulesetRulesActionParametersHeadersValueOrExpression {
  const RulesetRulesActionParametersHeadersValueOrExpression();

  /// Sets `value`.
  const factory RulesetRulesActionParametersHeadersValueOrExpression.value(
    TfArg<String> value,
  ) = RulesetRulesActionParametersHeadersValueOrExpressionValue;

  /// Sets `expression`.
  const factory RulesetRulesActionParametersHeadersValueOrExpression.expression(
    TfArg<String> expression,
  ) = RulesetRulesActionParametersHeadersValueOrExpressionExpression;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [RulesetRulesActionParametersHeadersValueOrExpression.value] choice: sets `value`.
final class RulesetRulesActionParametersHeadersValueOrExpressionValue
    extends RulesetRulesActionParametersHeadersValueOrExpression {
  const RulesetRulesActionParametersHeadersValueOrExpressionValue(this.value);

  final TfArg<String> value;

  @override
  String get blockKey => 'value';

  @override
  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// The [RulesetRulesActionParametersHeadersValueOrExpression.expression] choice: sets `expression`.
final class RulesetRulesActionParametersHeadersValueOrExpressionExpression
    extends RulesetRulesActionParametersHeadersValueOrExpression {
  const RulesetRulesActionParametersHeadersValueOrExpressionExpression(
    this.expression,
  );

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
    if (cloudflareOnly != null) 'cloudflare_only': cloudflareOnly!.toTfJson(),
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
    if (cloudflareOnly != null) 'cloudflare_only': cloudflareOnly!.toTfJson(),
    'operation': operation.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
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
    if (cloudflareOnly != null) 'cloudflare_only': cloudflareOnly!.toTfJson(),
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
    if (cloudflareOnly != null) 'cloudflare_only': cloudflareOnly!.toTfJson(),
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

  final TfArg<List<Object?>>? qualifiers;

  Map<String, Object?> encode() => {
    if (cloudflareOnly != null) 'cloudflare_only': cloudflareOnly!.toTfJson(),
    'operation': operation.toTfJson(),
    if (qualifiers != null) 'qualifiers': qualifiers!.toTfJson(),
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
    if (cloudflareOnly != null) 'cloudflare_only': cloudflareOnly!.toTfJson(),
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
    if (cloudflareOnly != null) 'cloudflare_only': cloudflareOnly!.toTfJson(),
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
    if (host != null) 'host': host!.toTfJson(),
    if (port != null) 'port': port!.toTfJson(),
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
    if (action != null) 'action': action!.toTfJson(),
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (sensitivityLevel != null)
      'sensitivity_level': sensitivityLevel!.toTfJson(),
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
    if (action != null) 'action': action!.toTfJson(),
    'category': category.toTfJson(),
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (sensitivityLevel != null)
      'sensitivity_level': sensitivityLevel!.toTfJson(),
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
    if (action != null) 'action': action!.toTfJson(),
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    'id': id.toTfJson(),
    if (scoreThreshold != null) 'score_threshold': scoreThreshold!.toTfJson(),
    if (sensitivityLevel != null)
      'sensitivity_level': sensitivityLevel!.toTfJson(),
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

  final TfArg<List<Object?>>? qualifiers;

  Map<String, Object?> encode() => {
    if (cloudflareOnly != null) 'cloudflare_only': cloudflareOnly!.toTfJson(),
    'operation': operation.toTfJson(),
    if (qualifiers != null) 'qualifiers': qualifiers!.toTfJson(),
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
    if (cloudflareOnly != null) 'cloudflare_only': cloudflareOnly!.toTfJson(),
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
    if (cloudflareOnly != null) 'cloudflare_only': cloudflareOnly!.toTfJson(),
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

  final TfArg<RulesetRulesActionParametersSMaxageOperation> operation;

  final TfArg<num>? value;

  Map<String, Object?> encode() => {
    if (cloudflareOnly != null) 'cloudflare_only': cloudflareOnly!.toTfJson(),
    'operation': operation.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
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

  final TfArg<RulesetRulesActionParametersStaleIfErrorOperation> operation;

  final TfArg<num>? value;

  Map<String, Object?> encode() => {
    if (cloudflareOnly != null) 'cloudflare_only': cloudflareOnly!.toTfJson(),
    'operation': operation.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
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
    if (cloudflareOnly != null) 'cloudflare_only': cloudflareOnly!.toTfJson(),
    'operation': operation.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
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
    if (path != null) 'path': path!.encode(),
    if (query != null) 'query': query!.encode(),
  };
}

/// Typed helper for the `rules.action_parameters.uri.path` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParametersUriPath {
  const RulesetRulesActionParametersUriPath({required this.path});

  final RulesetRulesActionParametersUriPathPath path;

  Map<String, Object?> encode() => {...path.encode()};
}

/// Exactly one of `value`, `expression` on the `rules.action_parameters.uri.path` block of `cloudflare_ruleset`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.value(...)`.
sealed class RulesetRulesActionParametersUriPathPath {
  const RulesetRulesActionParametersUriPathPath();

  /// Sets `value`.
  const factory RulesetRulesActionParametersUriPathPath.value(
    TfArg<String> value,
  ) = RulesetRulesActionParametersUriPathPathValue;

  /// Sets `expression`.
  const factory RulesetRulesActionParametersUriPathPath.expression(
    TfArg<String> expression,
  ) = RulesetRulesActionParametersUriPathPathExpression;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [RulesetRulesActionParametersUriPathPath.value] choice: sets `value`.
final class RulesetRulesActionParametersUriPathPathValue
    extends RulesetRulesActionParametersUriPathPath {
  const RulesetRulesActionParametersUriPathPathValue(this.value);

  final TfArg<String> value;

  @override
  String get blockKey => 'value';

  @override
  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// The [RulesetRulesActionParametersUriPathPath.expression] choice: sets `expression`.
final class RulesetRulesActionParametersUriPathPathExpression
    extends RulesetRulesActionParametersUriPathPath {
  const RulesetRulesActionParametersUriPathPathExpression(this.expression);

  final TfArg<String> expression;

  @override
  String get blockKey => 'expression';

  @override
  Map<String, Object?> encode() => {'expression': expression.toTfJson()};
}

/// Typed helper for the `rules.action_parameters.uri.query` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRulesActionParametersUriQuery {
  const RulesetRulesActionParametersUriQuery({required this.query});

  final RulesetRulesActionParametersUriQueryQuery query;

  Map<String, Object?> encode() => {...query.encode()};
}

/// Exactly one of `value`, `expression` on the `rules.action_parameters.uri.query` block of `cloudflare_ruleset`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.value(...)`.
sealed class RulesetRulesActionParametersUriQueryQuery {
  const RulesetRulesActionParametersUriQueryQuery();

  /// Sets `value`.
  const factory RulesetRulesActionParametersUriQueryQuery.value(
    TfArg<String> value,
  ) = RulesetRulesActionParametersUriQueryQueryValue;

  /// Sets `expression`.
  const factory RulesetRulesActionParametersUriQueryQuery.expression(
    TfArg<String> expression,
  ) = RulesetRulesActionParametersUriQueryQueryExpression;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [RulesetRulesActionParametersUriQueryQuery.value] choice: sets `value`.
final class RulesetRulesActionParametersUriQueryQueryValue
    extends RulesetRulesActionParametersUriQueryQuery {
  const RulesetRulesActionParametersUriQueryQueryValue(this.value);

  final TfArg<String> value;

  @override
  String get blockKey => 'value';

  @override
  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// The [RulesetRulesActionParametersUriQueryQuery.expression] choice: sets `expression`.
final class RulesetRulesActionParametersUriQueryQueryExpression
    extends RulesetRulesActionParametersUriQueryQuery {
  const RulesetRulesActionParametersUriQueryQueryExpression(this.expression);

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

  final TfArg<List<Object?>>? languages;

  final TfArg<List<Object?>>? mediaTypes;

  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    if (languages != null) 'languages': languages!.toTfJson(),
    if (mediaTypes != null) 'media_types': mediaTypes!.toTfJson(),
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
    required RulesetAccountIdOrZoneId accountIdOrZoneId,
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
           ...accountIdOrZoneId.argMap,
           if (description != null) 'description': description,
           'kind': kind,
           'name': name,
           'phase': phase,
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
