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
extension type const RulesetKind._(TfArg<String> _) implements TfArg<String> {
  RulesetKind.variable(String name) : this._(TfArg.variable(name));
  RulesetKind.expression(String template) : this._(TfArg.expression(template));
  const RulesetKind.arg(TfArg<String> arg) : this._(arg);

  static const managed = RulesetKind._(TfArgLiteral('managed'));
  static const custom = RulesetKind._(TfArgLiteral('custom'));
  static const root = RulesetKind._(TfArgLiteral('root'));
  static const zone = RulesetKind._(TfArgLiteral('zone'));

  static const List<RulesetKind> values = [managed, custom, root, zone];
}

/// Ruleset enum for `phase`.
extension type const RulesetPhase._(TfArg<String> _) implements TfArg<String> {
  RulesetPhase.variable(String name) : this._(TfArg.variable(name));
  RulesetPhase.expression(String template) : this._(TfArg.expression(template));
  const RulesetPhase.arg(TfArg<String> arg) : this._(arg);

  static const ddosL4 = RulesetPhase._(TfArgLiteral('ddos_l4'));
  static const ddosL7 = RulesetPhase._(TfArgLiteral('ddos_l7'));
  static const httpConfigSettings = RulesetPhase._(
    TfArgLiteral('http_config_settings'),
  );
  static const httpCustomErrors = RulesetPhase._(
    TfArgLiteral('http_custom_errors'),
  );
  static const httpLogCustomFields = RulesetPhase._(
    TfArgLiteral('http_log_custom_fields'),
  );
  static const httpRatelimit = RulesetPhase._(TfArgLiteral('http_ratelimit'));
  static const httpRequestCacheSettings = RulesetPhase._(
    TfArgLiteral('http_request_cache_settings'),
  );
  static const httpRequestDynamicRedirect = RulesetPhase._(
    TfArgLiteral('http_request_dynamic_redirect'),
  );
  static const httpRequestFirewallCustom = RulesetPhase._(
    TfArgLiteral('http_request_firewall_custom'),
  );
  static const httpRequestFirewallManaged = RulesetPhase._(
    TfArgLiteral('http_request_firewall_managed'),
  );
  static const httpRequestLateTransform = RulesetPhase._(
    TfArgLiteral('http_request_late_transform'),
  );
  static const httpRequestOrigin = RulesetPhase._(
    TfArgLiteral('http_request_origin'),
  );
  static const httpRequestRedirect = RulesetPhase._(
    TfArgLiteral('http_request_redirect'),
  );
  static const httpRequestSanitize = RulesetPhase._(
    TfArgLiteral('http_request_sanitize'),
  );
  static const httpRequestSbfm = RulesetPhase._(
    TfArgLiteral('http_request_sbfm'),
  );
  static const httpRequestTransform = RulesetPhase._(
    TfArgLiteral('http_request_transform'),
  );
  static const httpResponseCacheSettings = RulesetPhase._(
    TfArgLiteral('http_response_cache_settings'),
  );
  static const httpResponseCompression = RulesetPhase._(
    TfArgLiteral('http_response_compression'),
  );
  static const httpResponseFirewallManaged = RulesetPhase._(
    TfArgLiteral('http_response_firewall_managed'),
  );
  static const httpResponseHeadersTransform = RulesetPhase._(
    TfArgLiteral('http_response_headers_transform'),
  );
  static const magicTransit = RulesetPhase._(TfArgLiteral('magic_transit'));
  static const magicTransitIdsManaged = RulesetPhase._(
    TfArgLiteral('magic_transit_ids_managed'),
  );
  static const magicTransitManaged = RulesetPhase._(
    TfArgLiteral('magic_transit_managed'),
  );
  static const magicTransitRatelimit = RulesetPhase._(
    TfArgLiteral('magic_transit_ratelimit'),
  );

  static const List<RulesetPhase> values = [
    ddosL4,
    ddosL7,
    httpConfigSettings,
    httpCustomErrors,
    httpLogCustomFields,
    httpRatelimit,
    httpRequestCacheSettings,
    httpRequestDynamicRedirect,
    httpRequestFirewallCustom,
    httpRequestFirewallManaged,
    httpRequestLateTransform,
    httpRequestOrigin,
    httpRequestRedirect,
    httpRequestSanitize,
    httpRequestSbfm,
    httpRequestTransform,
    httpResponseCacheSettings,
    httpResponseCompression,
    httpResponseFirewallManaged,
    httpResponseHeadersTransform,
    magicTransit,
    magicTransitIdsManaged,
    magicTransitManaged,
    magicTransitRatelimit,
  ];
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

  final RulesetAction action;

  final TfArg<String>? description;

  final TfArg<bool>? enabled;

  final TfArg<String> expression;

  final TfArg<String>? ref;

  final RulesetActionParameters? actionParameters;

  final RulesetExposedCredentialCheck? exposedCredentialCheck;

  final RulesetLogging? logging;

  final RulesetRatelimit? ratelimit;

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
extension type const RulesetAction._(TfArg<String> _) implements TfArg<String> {
  RulesetAction.variable(String name) : this._(TfArg.variable(name));
  RulesetAction.expression(String template)
    : this._(TfArg.expression(template));
  const RulesetAction.arg(TfArg<String> arg) : this._(arg);

  static const block = RulesetAction._(TfArgLiteral('block'));
  static const challenge = RulesetAction._(TfArgLiteral('challenge'));
  static const compressResponse = RulesetAction._(
    TfArgLiteral('compress_response'),
  );
  static const ddosDynamic = RulesetAction._(TfArgLiteral('ddos_dynamic'));
  static const execute = RulesetAction._(TfArgLiteral('execute'));
  static const forceConnectionClose = RulesetAction._(
    TfArgLiteral('force_connection_close'),
  );
  static const jsChallenge = RulesetAction._(TfArgLiteral('js_challenge'));
  static const log = RulesetAction._(TfArgLiteral('log'));
  static const logCustomField = RulesetAction._(
    TfArgLiteral('log_custom_field'),
  );
  static const managedChallenge = RulesetAction._(
    TfArgLiteral('managed_challenge'),
  );
  static const redirect = RulesetAction._(TfArgLiteral('redirect'));
  static const rewrite = RulesetAction._(TfArgLiteral('rewrite'));
  static const route = RulesetAction._(TfArgLiteral('route'));
  static const score = RulesetAction._(TfArgLiteral('score'));
  static const serveError = RulesetAction._(TfArgLiteral('serve_error'));
  static const setCacheControl = RulesetAction._(
    TfArgLiteral('set_cache_control'),
  );
  static const setCacheSettings = RulesetAction._(
    TfArgLiteral('set_cache_settings'),
  );
  static const setCacheTags = RulesetAction._(TfArgLiteral('set_cache_tags'));
  static const setConfig = RulesetAction._(TfArgLiteral('set_config'));
  static const skip = RulesetAction._(TfArgLiteral('skip'));

  static const List<RulesetAction> values = [
    block,
    challenge,
    compressResponse,
    ddosDynamic,
    execute,
    forceConnectionClose,
    jsChallenge,
    log,
    logCustomField,
    managedChallenge,
    redirect,
    rewrite,
    route,
    score,
    serveError,
    setCacheControl,
    setCacheSettings,
    setCacheTags,
    setConfig,
    skip,
  ];
}

/// Typed helper for the `rules.action_parameters` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetActionParameters {
  const RulesetActionParameters({
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

  final RulesetBody? body;

  final TfArg<bool>? automaticHttpsRewrites;

  final TfArg<bool>? bic;

  final TfArg<bool>? cache;

  final TfArg<bool>? contentConverter;

  final RulesetContentType? contentType;

  final TfArg<bool>? disableApps;

  final TfArg<bool>? disableRum;

  final TfArg<bool>? disableZaraz;

  final TfArg<bool>? emailObfuscation;

  final RulesetValue? value;

  final TfArg<bool>? fonts;

  final TfArg<String>? hostHeader;

  final TfArg<bool>? hotlinkProtection;

  final TfArg<String>? id;

  final TfArg<num>? increment;

  final TfArg<bool>? mirage;

  final RulesetOperation? operation;

  final TfArg<bool>? opportunisticEncryption;

  final TfArg<bool>? originCacheControl;

  final TfArg<bool>? originErrorPagePassthru;

  final List<RulesetPhases>? phases;

  final RulesetPolish? polish;

  final List<RulesetProducts>? products;

  final TfArg<num>? readTimeout;

  final TfArg<bool>? redirectsForAiTraining;

  final RulesetRequestBodyBuffering? requestBodyBuffering;

  final TfArg<bool>? respectStrongEtags;

  final RulesetResponseBodyBuffering? responseBodyBuffering;

  final TfArg<bool>? rocketLoader;

  final TfArg<Map<String, dynamic>>? rules;

  final Ruleset? ruleset;

  final TfArg<List<String>>? rulesets;

  final RulesetSecurityLevel? securityLevel;

  final TfArg<bool>? serverSideExcludes;

  final RulesetSsl? ssl;

  final TfArg<num>? statusCode;

  final TfArg<bool>? stripEtags;

  final TfArg<bool>? stripLastModified;

  final TfArg<bool>? stripSetCookie;

  final TfArg<bool>? sxg;

  final List<RulesetAlgorithms>? algorithms;

  final RulesetAutominify? autominify;

  final RulesetBrowserTtl? browserTtl;

  final RulesetCacheKey? cacheKey;

  final RulesetCacheReserve? cacheReserve;

  final List<RulesetCookieFields>? cookieFields;

  final RulesetEdgeTtl? edgeTtl;

  final RulesetSource? source;

  final Map<String, RulesetHeaders>? headers;

  final RulesetImmutable? immutable;

  final RulesetMatchedData? matchedData;

  final RulesetMaxAge? maxAge;

  final RulesetMustRevalidate? mustRevalidate;

  final RulesetMustUnderstand? mustUnderstand;

  final RulesetNoCache? noCache;

  final RulesetNoStore? noStore;

  final RulesetNoTransform? noTransform;

  final RulesetOrigin? origin;

  final RulesetOriginRangeRequests? originRangeRequests;

  final RulesetOverrides? overrides;

  final RulesetPrivate? private;

  final RulesetProxyRevalidate? proxyRevalidate;

  final RulesetPublic? public;

  final List<RulesetRawResponseFields>? rawResponseFields;

  final List<RulesetRequestFields>? requestFields;

  final RulesetResponse? response;

  final List<RulesetResponseFields>? responseFields;

  final RulesetSMaxage? sMaxage;

  final RulesetServeStale? serveStale;

  final RulesetSni? sni;

  final RulesetStaleIfError? staleIfError;

  final RulesetStaleWhileRevalidate? staleWhileRevalidate;

  final List<RulesetTransformedRequestFields>? transformedRequestFields;

  final RulesetUri? uri;

  final RulesetVary? vary;

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
sealed class RulesetBody {
  const RulesetBody();

  /// Sets `asset_name`.
  const factory RulesetBody.assetName(TfArg<String> assetName) =
      RulesetBodyAssetName;

  /// Sets `content`.
  const factory RulesetBody.content(TfArg<String> content) = RulesetBodyContent;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [RulesetBody.assetName] choice: sets `asset_name`.
final class RulesetBodyAssetName extends RulesetBody {
  const RulesetBodyAssetName(this.assetName);

  final TfArg<String> assetName;

  @override
  String get blockKey => 'asset_name';

  @override
  Map<String, Object?> encode() => {'asset_name': assetName.toTfJson()};
}

/// The [RulesetBody.content] choice: sets `content`.
final class RulesetBodyContent extends RulesetBody {
  const RulesetBodyContent(this.content);

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
sealed class RulesetSource {
  const RulesetSource();

  /// Sets `from_list`.
  const factory RulesetSource.fromList(RulesetFromList fromList) =
      RulesetSourceFromList;

  /// Sets `from_value`.
  const factory RulesetSource.fromValue(RulesetFromValue fromValue) =
      RulesetSourceFromValue;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [RulesetSource.fromList] choice: sets `from_list`.
final class RulesetSourceFromList extends RulesetSource {
  const RulesetSourceFromList(this.fromList);

  final RulesetFromList fromList;

  @override
  String get blockKey => 'from_list';

  @override
  Map<String, Object?> encode() => {'from_list': fromList.encode()};
}

/// The [RulesetSource.fromValue] choice: sets `from_value`.
final class RulesetSourceFromValue extends RulesetSource {
  const RulesetSourceFromValue(this.fromValue);

  final RulesetFromValue fromValue;

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
sealed class RulesetValue {
  const RulesetValue();

  /// Sets `values`.
  const factory RulesetValue.values(TfArg<List<String>> values) =
      RulesetValueValues;

  /// Sets `expression`.
  const factory RulesetValue.expression(TfArg<String> expression) =
      RulesetValueExpression;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [RulesetValue.values] choice: sets `values`.
final class RulesetValueValues extends RulesetValue {
  const RulesetValueValues(this.values);

  final TfArg<List<String>> values;

  @override
  String get blockKey => 'values';

  @override
  Map<String, Object?> encode() => {'values': values.toTfJson()};
}

/// The [RulesetValue.expression] choice: sets `expression`.
final class RulesetValueExpression extends RulesetValue {
  const RulesetValueExpression(this.expression);

  final TfArg<String> expression;

  @override
  String get blockKey => 'expression';

  @override
  Map<String, Object?> encode() => {'expression': expression.toTfJson()};
}

/// `content_type` — derived from the provider schema description.
extension type const RulesetContentType._(TfArg<String> _)
    implements TfArg<String> {
  RulesetContentType.variable(String name) : this._(TfArg.variable(name));
  RulesetContentType.expression(String template)
    : this._(TfArg.expression(template));
  const RulesetContentType.arg(TfArg<String> arg) : this._(arg);

  static const applicationJson = RulesetContentType._(
    TfArgLiteral('application/json'),
  );
  static const textHtml = RulesetContentType._(TfArgLiteral('text/html'));
  static const textPlain = RulesetContentType._(TfArgLiteral('text/plain'));
  static const textXml = RulesetContentType._(TfArgLiteral('text/xml'));

  static const List<RulesetContentType> values = [
    applicationJson,
    textHtml,
    textPlain,
    textXml,
  ];
}

/// `operation` — derived from the provider schema description.
extension type const RulesetOperation._(TfArg<String> _)
    implements TfArg<String> {
  RulesetOperation.variable(String name) : this._(TfArg.variable(name));
  RulesetOperation.expression(String template)
    : this._(TfArg.expression(template));
  const RulesetOperation.arg(TfArg<String> arg) : this._(arg);

  static const set = RulesetOperation._(TfArgLiteral('set'));
  static const add = RulesetOperation._(TfArgLiteral('add'));
  static const remove = RulesetOperation._(TfArgLiteral('remove'));

  static const List<RulesetOperation> values = [set, add, remove];
}

/// `phases` — derived from the provider schema description.
extension type const RulesetPhases._(TfArg<String> _) implements TfArg<String> {
  RulesetPhases.variable(String name) : this._(TfArg.variable(name));
  RulesetPhases.expression(String template)
    : this._(TfArg.expression(template));
  const RulesetPhases.arg(TfArg<String> arg) : this._(arg);

  static const ddosL4 = RulesetPhases._(TfArgLiteral('ddos_l4'));
  static const ddosL7 = RulesetPhases._(TfArgLiteral('ddos_l7'));
  static const httpConfigSettings = RulesetPhases._(
    TfArgLiteral('http_config_settings'),
  );
  static const httpCustomErrors = RulesetPhases._(
    TfArgLiteral('http_custom_errors'),
  );
  static const httpLogCustomFields = RulesetPhases._(
    TfArgLiteral('http_log_custom_fields'),
  );
  static const httpRatelimit = RulesetPhases._(TfArgLiteral('http_ratelimit'));
  static const httpRequestCacheSettings = RulesetPhases._(
    TfArgLiteral('http_request_cache_settings'),
  );
  static const httpRequestDynamicRedirect = RulesetPhases._(
    TfArgLiteral('http_request_dynamic_redirect'),
  );
  static const httpRequestFirewallCustom = RulesetPhases._(
    TfArgLiteral('http_request_firewall_custom'),
  );
  static const httpRequestFirewallManaged = RulesetPhases._(
    TfArgLiteral('http_request_firewall_managed'),
  );
  static const httpRequestLateTransform = RulesetPhases._(
    TfArgLiteral('http_request_late_transform'),
  );
  static const httpRequestOrigin = RulesetPhases._(
    TfArgLiteral('http_request_origin'),
  );
  static const httpRequestRedirect = RulesetPhases._(
    TfArgLiteral('http_request_redirect'),
  );
  static const httpRequestSanitize = RulesetPhases._(
    TfArgLiteral('http_request_sanitize'),
  );
  static const httpRequestSbfm = RulesetPhases._(
    TfArgLiteral('http_request_sbfm'),
  );
  static const httpRequestTransform = RulesetPhases._(
    TfArgLiteral('http_request_transform'),
  );
  static const httpResponseCacheSettings = RulesetPhases._(
    TfArgLiteral('http_response_cache_settings'),
  );
  static const httpResponseCompression = RulesetPhases._(
    TfArgLiteral('http_response_compression'),
  );
  static const httpResponseFirewallManaged = RulesetPhases._(
    TfArgLiteral('http_response_firewall_managed'),
  );
  static const httpResponseHeadersTransform = RulesetPhases._(
    TfArgLiteral('http_response_headers_transform'),
  );
  static const magicTransit = RulesetPhases._(TfArgLiteral('magic_transit'));
  static const magicTransitIdsManaged = RulesetPhases._(
    TfArgLiteral('magic_transit_ids_managed'),
  );
  static const magicTransitManaged = RulesetPhases._(
    TfArgLiteral('magic_transit_managed'),
  );
  static const magicTransitRatelimit = RulesetPhases._(
    TfArgLiteral('magic_transit_ratelimit'),
  );

  static const List<RulesetPhases> values = [
    ddosL4,
    ddosL7,
    httpConfigSettings,
    httpCustomErrors,
    httpLogCustomFields,
    httpRatelimit,
    httpRequestCacheSettings,
    httpRequestDynamicRedirect,
    httpRequestFirewallCustom,
    httpRequestFirewallManaged,
    httpRequestLateTransform,
    httpRequestOrigin,
    httpRequestRedirect,
    httpRequestSanitize,
    httpRequestSbfm,
    httpRequestTransform,
    httpResponseCacheSettings,
    httpResponseCompression,
    httpResponseFirewallManaged,
    httpResponseHeadersTransform,
    magicTransit,
    magicTransitIdsManaged,
    magicTransitManaged,
    magicTransitRatelimit,
  ];
}

/// `polish` — derived from the provider schema description.
extension type const RulesetPolish._(TfArg<String> _) implements TfArg<String> {
  RulesetPolish.variable(String name) : this._(TfArg.variable(name));
  RulesetPolish.expression(String template)
    : this._(TfArg.expression(template));
  const RulesetPolish.arg(TfArg<String> arg) : this._(arg);

  static const off = RulesetPolish._(TfArgLiteral('off'));
  static const lossless = RulesetPolish._(TfArgLiteral('lossless'));
  static const lossy = RulesetPolish._(TfArgLiteral('lossy'));
  static const webp = RulesetPolish._(TfArgLiteral('webp'));

  static const List<RulesetPolish> values = [off, lossless, lossy, webp];
}

/// `products` — derived from the provider schema description.
extension type const RulesetProducts._(TfArg<String> _)
    implements TfArg<String> {
  RulesetProducts.variable(String name) : this._(TfArg.variable(name));
  RulesetProducts.expression(String template)
    : this._(TfArg.expression(template));
  const RulesetProducts.arg(TfArg<String> arg) : this._(arg);

  static const bic = RulesetProducts._(TfArgLiteral('bic'));
  static const hot = RulesetProducts._(TfArgLiteral('hot'));
  static const ratelimit = RulesetProducts._(TfArgLiteral('rateLimit'));
  static const securitylevel = RulesetProducts._(TfArgLiteral('securityLevel'));
  static const uablock = RulesetProducts._(TfArgLiteral('uaBlock'));
  static const waf = RulesetProducts._(TfArgLiteral('waf'));
  static const zonelockdown = RulesetProducts._(TfArgLiteral('zoneLockdown'));

  static const List<RulesetProducts> values = [
    bic,
    hot,
    ratelimit,
    securitylevel,
    uablock,
    waf,
    zonelockdown,
  ];
}

/// `request_body_buffering` — derived from the provider schema description.
extension type const RulesetRequestBodyBuffering._(TfArg<String> _)
    implements TfArg<String> {
  RulesetRequestBodyBuffering.variable(String name)
    : this._(TfArg.variable(name));
  RulesetRequestBodyBuffering.expression(String template)
    : this._(TfArg.expression(template));
  const RulesetRequestBodyBuffering.arg(TfArg<String> arg) : this._(arg);

  static const none = RulesetRequestBodyBuffering._(TfArgLiteral('none'));
  static const standard = RulesetRequestBodyBuffering._(
    TfArgLiteral('standard'),
  );
  static const full = RulesetRequestBodyBuffering._(TfArgLiteral('full'));

  static const List<RulesetRequestBodyBuffering> values = [
    none,
    standard,
    full,
  ];
}

/// `response_body_buffering` — derived from the provider schema description.
extension type const RulesetResponseBodyBuffering._(TfArg<String> _)
    implements TfArg<String> {
  RulesetResponseBodyBuffering.variable(String name)
    : this._(TfArg.variable(name));
  RulesetResponseBodyBuffering.expression(String template)
    : this._(TfArg.expression(template));
  const RulesetResponseBodyBuffering.arg(TfArg<String> arg) : this._(arg);

  static const none = RulesetResponseBodyBuffering._(TfArgLiteral('none'));
  static const standard = RulesetResponseBodyBuffering._(
    TfArgLiteral('standard'),
  );

  static const List<RulesetResponseBodyBuffering> values = [none, standard];
}

/// `ruleset` — derived from the provider schema description.
extension type const Ruleset._(TfArg<String> _) implements TfArg<String> {
  Ruleset.variable(String name) : this._(TfArg.variable(name));
  Ruleset.expression(String template) : this._(TfArg.expression(template));
  const Ruleset.arg(TfArg<String> arg) : this._(arg);

  static const current = Ruleset._(TfArgLiteral('current'));

  static const List<Ruleset> values = [current];
}

/// `security_level` — derived from the provider schema description.
extension type const RulesetSecurityLevel._(TfArg<String> _)
    implements TfArg<String> {
  RulesetSecurityLevel.variable(String name) : this._(TfArg.variable(name));
  RulesetSecurityLevel.expression(String template)
    : this._(TfArg.expression(template));
  const RulesetSecurityLevel.arg(TfArg<String> arg) : this._(arg);

  static const off = RulesetSecurityLevel._(TfArgLiteral('off'));
  static const essentiallyOff = RulesetSecurityLevel._(
    TfArgLiteral('essentially_off'),
  );
  static const low = RulesetSecurityLevel._(TfArgLiteral('low'));
  static const medium = RulesetSecurityLevel._(TfArgLiteral('medium'));
  static const high = RulesetSecurityLevel._(TfArgLiteral('high'));
  static const underAttack = RulesetSecurityLevel._(
    TfArgLiteral('under_attack'),
  );

  static const List<RulesetSecurityLevel> values = [
    off,
    essentiallyOff,
    low,
    medium,
    high,
    underAttack,
  ];
}

/// `ssl` — derived from the provider schema description.
extension type const RulesetSsl._(TfArg<String> _) implements TfArg<String> {
  RulesetSsl.variable(String name) : this._(TfArg.variable(name));
  RulesetSsl.expression(String template) : this._(TfArg.expression(template));
  const RulesetSsl.arg(TfArg<String> arg) : this._(arg);

  static const off = RulesetSsl._(TfArgLiteral('off'));
  static const flexible = RulesetSsl._(TfArgLiteral('flexible'));
  static const full = RulesetSsl._(TfArgLiteral('full'));
  static const strict = RulesetSsl._(TfArgLiteral('strict'));
  static const originPull = RulesetSsl._(TfArgLiteral('origin_pull'));

  static const List<RulesetSsl> values = [
    off,
    flexible,
    full,
    strict,
    originPull,
  ];
}

/// Typed helper for the `rules.action_parameters.algorithms` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetAlgorithms {
  const RulesetAlgorithms({this.name});

  final RulesetAlgorithmsName? name;

  Map<String, Object?> encode() => {'name': ?name?.toTfJson()};
}

/// `name` — derived from the provider schema description.
extension type const RulesetAlgorithmsName._(TfArg<String> _)
    implements TfArg<String> {
  RulesetAlgorithmsName.variable(String name) : this._(TfArg.variable(name));
  RulesetAlgorithmsName.expression(String template)
    : this._(TfArg.expression(template));
  const RulesetAlgorithmsName.arg(TfArg<String> arg) : this._(arg);

  static const none = RulesetAlgorithmsName._(TfArgLiteral('none'));
  static const auto = RulesetAlgorithmsName._(TfArgLiteral('auto'));
  static const defaultCase = RulesetAlgorithmsName._(TfArgLiteral('default'));
  static const gzip = RulesetAlgorithmsName._(TfArgLiteral('gzip'));
  static const brotli = RulesetAlgorithmsName._(TfArgLiteral('brotli'));
  static const zstd = RulesetAlgorithmsName._(TfArgLiteral('zstd'));

  static const List<RulesetAlgorithmsName> values = [
    none,
    auto,
    defaultCase,
    gzip,
    brotli,
    zstd,
  ];
}

/// Typed helper for the `rules.action_parameters.autominify` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetAutominify {
  const RulesetAutominify({this.css, this.html, this.js});

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
final class RulesetBrowserTtl {
  const RulesetBrowserTtl({this.defaultCase, required this.mode});

  final TfArg<num>? defaultCase;

  final RulesetBrowserTtlMode mode;

  Map<String, Object?> encode() => {
    'default': ?defaultCase?.toTfJson(),
    'mode': mode.toTfJson(),
  };
}

/// `mode` — derived from the provider schema description.
extension type const RulesetBrowserTtlMode._(TfArg<String> _)
    implements TfArg<String> {
  RulesetBrowserTtlMode.variable(String name) : this._(TfArg.variable(name));
  RulesetBrowserTtlMode.expression(String template)
    : this._(TfArg.expression(template));
  const RulesetBrowserTtlMode.arg(TfArg<String> arg) : this._(arg);

  static const respectOrigin = RulesetBrowserTtlMode._(
    TfArgLiteral('respect_origin'),
  );
  static const bypassByDefault = RulesetBrowserTtlMode._(
    TfArgLiteral('bypass_by_default'),
  );
  static const overrideOrigin = RulesetBrowserTtlMode._(
    TfArgLiteral('override_origin'),
  );
  static const bypass = RulesetBrowserTtlMode._(TfArgLiteral('bypass'));

  static const List<RulesetBrowserTtlMode> values = [
    respectOrigin,
    bypassByDefault,
    overrideOrigin,
    bypass,
  ];
}

/// Typed helper for the `rules.action_parameters.cache_key` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetCacheKey {
  const RulesetCacheKey({
    this.cacheByDeviceType,
    this.cacheDeceptionArmor,
    this.ignoreQueryStringsOrder,
    this.customKey,
  });

  final TfArg<bool>? cacheByDeviceType;

  final TfArg<bool>? cacheDeceptionArmor;

  final TfArg<bool>? ignoreQueryStringsOrder;

  final RulesetCustomKey? customKey;

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
final class RulesetCustomKey {
  const RulesetCustomKey({
    this.cookie,
    this.header,
    this.host,
    this.queryString,
    this.user,
  });

  final RulesetCookie? cookie;

  final RulesetHeader? header;

  final RulesetHost? host;

  final RulesetQueryString? queryString;

  final RulesetUser? user;

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
final class RulesetCookie {
  const RulesetCookie({this.checkPresence, this.include});

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
final class RulesetHeader {
  const RulesetHeader({
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
final class RulesetHost {
  const RulesetHost({this.resolved});

  final TfArg<bool>? resolved;

  Map<String, Object?> encode() => {'resolved': ?resolved?.toTfJson()};
}

/// At most one of `include`, `exclude` on the `rules.action_parameters.cache_key.custom_key.query_string` block of `cloudflare_ruleset`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.include(...)`.
sealed class RulesetQueryString {
  const RulesetQueryString();

  /// Sets `include`.
  const factory RulesetQueryString.include(RulesetInclude include) =
      RulesetQueryStringInclude;

  /// Sets `exclude`.
  const factory RulesetQueryString.exclude(RulesetExclude exclude) =
      RulesetQueryStringExclude;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [RulesetQueryString.include] choice: sets `include`.
final class RulesetQueryStringInclude extends RulesetQueryString {
  const RulesetQueryStringInclude(this.include);

  final RulesetInclude include;

  @override
  String get blockKey => 'include';

  @override
  Map<String, Object?> encode() => {'include': include.encode()};
}

/// The [RulesetQueryString.exclude] choice: sets `exclude`.
final class RulesetQueryStringExclude extends RulesetQueryString {
  const RulesetQueryStringExclude(this.exclude);

  final RulesetExclude exclude;

  @override
  String get blockKey => 'exclude';

  @override
  Map<String, Object?> encode() => {'exclude': exclude.encode()};
}

/// Exactly one of `list`, `all` on the `rules.action_parameters.cache_key.custom_key.query_string.exclude` block of `cloudflare_ruleset`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.list(...)`.
sealed class RulesetExclude {
  const RulesetExclude();

  /// Sets `list`.
  const factory RulesetExclude.list(TfArg<List<String>> list) =
      RulesetExcludeList;

  /// Sets `all`.
  const factory RulesetExclude.all(TfArg<bool> all) = RulesetExcludeAll;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [RulesetExclude.list] choice: sets `list`.
final class RulesetExcludeList extends RulesetExclude {
  const RulesetExcludeList(this.list);

  final TfArg<List<String>> list;

  @override
  String get blockKey => 'list';

  @override
  Map<String, Object?> encode() => {'list': list.toTfJson()};
}

/// The [RulesetExclude.all] choice: sets `all`.
final class RulesetExcludeAll extends RulesetExclude {
  const RulesetExcludeAll(this.all);

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
sealed class RulesetInclude {
  const RulesetInclude();

  /// Sets `list`.
  const factory RulesetInclude.list(TfArg<List<String>> list) =
      RulesetIncludeList;

  /// Sets `all`.
  const factory RulesetInclude.all(TfArg<bool> all) = RulesetIncludeAll;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [RulesetInclude.list] choice: sets `list`.
final class RulesetIncludeList extends RulesetInclude {
  const RulesetIncludeList(this.list);

  final TfArg<List<String>> list;

  @override
  String get blockKey => 'list';

  @override
  Map<String, Object?> encode() => {'list': list.toTfJson()};
}

/// The [RulesetInclude.all] choice: sets `all`.
final class RulesetIncludeAll extends RulesetInclude {
  const RulesetIncludeAll(this.all);

  final TfArg<bool> all;

  @override
  String get blockKey => 'all';

  @override
  Map<String, Object?> encode() => {'all': all.toTfJson()};
}

/// Typed helper for the `rules.action_parameters.cache_key.custom_key.user` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetUser {
  const RulesetUser({this.deviceType, this.geo, this.lang});

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
final class RulesetCacheReserve {
  const RulesetCacheReserve({required this.eligible, this.minimumFileSize});

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
final class RulesetCookieFields {
  const RulesetCookieFields({required this.name});

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `rules.action_parameters.edge_ttl` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetEdgeTtl {
  const RulesetEdgeTtl({
    this.defaultCase,
    required this.mode,
    this.statusCodeTtl,
  });

  final TfArg<num>? defaultCase;

  final RulesetEdgeTtlMode mode;

  final List<RulesetStatusCodeTtl>? statusCodeTtl;

  Map<String, Object?> encode() => {
    'default': ?defaultCase?.toTfJson(),
    'mode': mode.toTfJson(),
    if (statusCodeTtl != null)
      'status_code_ttl': [for (final e in statusCodeTtl!) e.encode()],
  };
}

/// `mode` — derived from the provider schema description.
extension type const RulesetEdgeTtlMode._(TfArg<String> _)
    implements TfArg<String> {
  RulesetEdgeTtlMode.variable(String name) : this._(TfArg.variable(name));
  RulesetEdgeTtlMode.expression(String template)
    : this._(TfArg.expression(template));
  const RulesetEdgeTtlMode.arg(TfArg<String> arg) : this._(arg);

  static const respectOrigin = RulesetEdgeTtlMode._(
    TfArgLiteral('respect_origin'),
  );
  static const bypassByDefault = RulesetEdgeTtlMode._(
    TfArgLiteral('bypass_by_default'),
  );
  static const overrideOrigin = RulesetEdgeTtlMode._(
    TfArgLiteral('override_origin'),
  );

  static const List<RulesetEdgeTtlMode> values = [
    respectOrigin,
    bypassByDefault,
    overrideOrigin,
  ];
}

/// Typed helper for the `rules.action_parameters.edge_ttl.status_code_ttl` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetStatusCodeTtl {
  const RulesetStatusCodeTtl({required this.match, required this.value});

  final RulesetMatch match;

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
sealed class RulesetMatch {
  const RulesetMatch();

  /// Sets `status_code_range`.
  const factory RulesetMatch.statusCodeRange(
    RulesetStatusCodeRange statusCodeRange,
  ) = RulesetMatchStatusCodeRange;

  /// Sets `status_code`.
  const factory RulesetMatch.statusCode(TfArg<num> statusCode) =
      RulesetMatchStatusCode;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [RulesetMatch.statusCodeRange] choice: sets `status_code_range`.
final class RulesetMatchStatusCodeRange extends RulesetMatch {
  const RulesetMatchStatusCodeRange(this.statusCodeRange);

  final RulesetStatusCodeRange statusCodeRange;

  @override
  String get blockKey => 'status_code_range';

  @override
  Map<String, Object?> encode() => {
    'status_code_range': statusCodeRange.encode(),
  };
}

/// The [RulesetMatch.statusCode] choice: sets `status_code`.
final class RulesetMatchStatusCode extends RulesetMatch {
  const RulesetMatchStatusCode(this.statusCode);

  final TfArg<num> statusCode;

  @override
  String get blockKey => 'status_code';

  @override
  Map<String, Object?> encode() => {'status_code': statusCode.toTfJson()};
}

/// Typed helper for the `rules.action_parameters.edge_ttl.status_code_ttl.status_code_range` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetStatusCodeRange {
  const RulesetStatusCodeRange({this.from, this.to});

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
final class RulesetFromList {
  const RulesetFromList({required this.key, required this.name});

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
final class RulesetFromValue {
  const RulesetFromValue({
    this.preserveQueryString,
    this.statusCode,
    required this.targetUrl,
  });

  final TfArg<bool>? preserveQueryString;

  final TfArg<num>? statusCode;

  final RulesetTargetUrl targetUrl;

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
sealed class RulesetTargetUrl {
  const RulesetTargetUrl();

  /// Sets `value`.
  const factory RulesetTargetUrl.value(TfArg<String> value) =
      RulesetTargetUrlValue;

  /// Sets `expression`.
  const factory RulesetTargetUrl.expression(TfArg<String> expression) =
      RulesetTargetUrlExpression;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [RulesetTargetUrl.value] choice: sets `value`.
final class RulesetTargetUrlValue extends RulesetTargetUrl {
  const RulesetTargetUrlValue(this.value);

  final TfArg<String> value;

  @override
  String get blockKey => 'value';

  @override
  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// The [RulesetTargetUrl.expression] choice: sets `expression`.
final class RulesetTargetUrlExpression extends RulesetTargetUrl {
  const RulesetTargetUrlExpression(this.expression);

  final TfArg<String> expression;

  @override
  String get blockKey => 'expression';

  @override
  Map<String, Object?> encode() => {'expression': expression.toTfJson()};
}

/// Typed helper for the `rules.action_parameters.headers` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetHeaders {
  const RulesetHeaders({this.value, required this.operation});

  final RulesetHeadersValue? value;

  final RulesetHeadersOperation operation;

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
sealed class RulesetHeadersValue {
  const RulesetHeadersValue();

  /// Sets `value`.
  const factory RulesetHeadersValue.value(TfArg<String> value) =
      RulesetHeadersValueChoice;

  /// Sets `expression`.
  const factory RulesetHeadersValue.expression(TfArg<String> expression) =
      RulesetHeadersValueExpression;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [RulesetHeadersValue.value] choice: sets `value`.
final class RulesetHeadersValueChoice extends RulesetHeadersValue {
  const RulesetHeadersValueChoice(this.value);

  final TfArg<String> value;

  @override
  String get blockKey => 'value';

  @override
  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// The [RulesetHeadersValue.expression] choice: sets `expression`.
final class RulesetHeadersValueExpression extends RulesetHeadersValue {
  const RulesetHeadersValueExpression(this.expression);

  final TfArg<String> expression;

  @override
  String get blockKey => 'expression';

  @override
  Map<String, Object?> encode() => {'expression': expression.toTfJson()};
}

/// `operation` — derived from the provider schema description.
extension type const RulesetHeadersOperation._(TfArg<String> _)
    implements TfArg<String> {
  RulesetHeadersOperation.variable(String name) : this._(TfArg.variable(name));
  RulesetHeadersOperation.expression(String template)
    : this._(TfArg.expression(template));
  const RulesetHeadersOperation.arg(TfArg<String> arg) : this._(arg);

  static const add = RulesetHeadersOperation._(TfArgLiteral('add'));
  static const set = RulesetHeadersOperation._(TfArgLiteral('set'));
  static const remove = RulesetHeadersOperation._(TfArgLiteral('remove'));

  static const List<RulesetHeadersOperation> values = [add, set, remove];
}

/// Typed helper for the `rules.action_parameters.immutable` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetImmutable {
  const RulesetImmutable({this.cloudflareOnly, required this.operation});

  final TfArg<bool>? cloudflareOnly;

  final RulesetImmutableOperation operation;

  Map<String, Object?> encode() => {
    'cloudflare_only': ?cloudflareOnly?.toTfJson(),
    'operation': operation.toTfJson(),
  };
}

/// `operation` — derived from the provider schema description.
extension type const RulesetImmutableOperation._(TfArg<String> _)
    implements TfArg<String> {
  RulesetImmutableOperation.variable(String name)
    : this._(TfArg.variable(name));
  RulesetImmutableOperation.expression(String template)
    : this._(TfArg.expression(template));
  const RulesetImmutableOperation.arg(TfArg<String> arg) : this._(arg);

  static const set = RulesetImmutableOperation._(TfArgLiteral('set'));
  static const remove = RulesetImmutableOperation._(TfArgLiteral('remove'));

  static const List<RulesetImmutableOperation> values = [set, remove];
}

/// Typed helper for the `rules.action_parameters.matched_data` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetMatchedData {
  const RulesetMatchedData({required this.publicKey});

  final TfArg<String> publicKey;

  Map<String, Object?> encode() => {'public_key': publicKey.toTfJson()};
}

/// Typed helper for the `rules.action_parameters.max_age` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetMaxAge {
  const RulesetMaxAge({
    this.cloudflareOnly,
    required this.operation,
    this.value,
  });

  final TfArg<bool>? cloudflareOnly;

  final RulesetImmutableOperation operation;

  final TfArg<num>? value;

  Map<String, Object?> encode() => {
    'cloudflare_only': ?cloudflareOnly?.toTfJson(),
    'operation': operation.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `rules.action_parameters.must_revalidate` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetMustRevalidate {
  const RulesetMustRevalidate({this.cloudflareOnly, required this.operation});

  final TfArg<bool>? cloudflareOnly;

  final RulesetImmutableOperation operation;

  Map<String, Object?> encode() => {
    'cloudflare_only': ?cloudflareOnly?.toTfJson(),
    'operation': operation.toTfJson(),
  };
}

/// Typed helper for the `rules.action_parameters.must_understand` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetMustUnderstand {
  const RulesetMustUnderstand({this.cloudflareOnly, required this.operation});

  final TfArg<bool>? cloudflareOnly;

  final RulesetImmutableOperation operation;

  Map<String, Object?> encode() => {
    'cloudflare_only': ?cloudflareOnly?.toTfJson(),
    'operation': operation.toTfJson(),
  };
}

/// Typed helper for the `rules.action_parameters.no_cache` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetNoCache {
  const RulesetNoCache({
    this.cloudflareOnly,
    required this.operation,
    this.qualifiers,
  });

  final TfArg<bool>? cloudflareOnly;

  final RulesetImmutableOperation operation;

  final TfArg<List<String>>? qualifiers;

  Map<String, Object?> encode() => {
    'cloudflare_only': ?cloudflareOnly?.toTfJson(),
    'operation': operation.toTfJson(),
    'qualifiers': ?qualifiers?.toTfJson(),
  };
}

/// Typed helper for the `rules.action_parameters.no_store` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetNoStore {
  const RulesetNoStore({this.cloudflareOnly, required this.operation});

  final TfArg<bool>? cloudflareOnly;

  final RulesetImmutableOperation operation;

  Map<String, Object?> encode() => {
    'cloudflare_only': ?cloudflareOnly?.toTfJson(),
    'operation': operation.toTfJson(),
  };
}

/// Typed helper for the `rules.action_parameters.no_transform` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetNoTransform {
  const RulesetNoTransform({this.cloudflareOnly, required this.operation});

  final TfArg<bool>? cloudflareOnly;

  final RulesetImmutableOperation operation;

  Map<String, Object?> encode() => {
    'cloudflare_only': ?cloudflareOnly?.toTfJson(),
    'operation': operation.toTfJson(),
  };
}

/// Typed helper for the `rules.action_parameters.origin` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetOrigin {
  const RulesetOrigin({this.host, this.port});

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
final class RulesetOriginRangeRequests {
  const RulesetOriginRangeRequests({required this.mode});

  final RulesetOriginRangeRequestsMode mode;

  Map<String, Object?> encode() => {'mode': mode.toTfJson()};
}

/// `mode` — derived from the provider schema description.
extension type const RulesetOriginRangeRequestsMode._(TfArg<String> _)
    implements TfArg<String> {
  RulesetOriginRangeRequestsMode.variable(String name)
    : this._(TfArg.variable(name));
  RulesetOriginRangeRequestsMode.expression(String template)
    : this._(TfArg.expression(template));
  const RulesetOriginRangeRequestsMode.arg(TfArg<String> arg) : this._(arg);

  static const on = RulesetOriginRangeRequestsMode._(TfArgLiteral('on'));
  static const off = RulesetOriginRangeRequestsMode._(TfArgLiteral('off'));
  static const defaultCase = RulesetOriginRangeRequestsMode._(
    TfArgLiteral('default'),
  );

  static const List<RulesetOriginRangeRequestsMode> values = [
    on,
    off,
    defaultCase,
  ];
}

/// Typed helper for the `rules.action_parameters.overrides` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetOverrides {
  const RulesetOverrides({
    this.action,
    this.enabled,
    this.sensitivityLevel,
    this.categories,
    this.rules,
  });

  final TfArg<String>? action;

  final TfArg<bool>? enabled;

  final RulesetSensitivityLevel? sensitivityLevel;

  final List<RulesetCategories>? categories;

  final List<RulesetOverridesRules>? rules;

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
extension type const RulesetSensitivityLevel._(TfArg<String> _)
    implements TfArg<String> {
  RulesetSensitivityLevel.variable(String name) : this._(TfArg.variable(name));
  RulesetSensitivityLevel.expression(String template)
    : this._(TfArg.expression(template));
  const RulesetSensitivityLevel.arg(TfArg<String> arg) : this._(arg);

  static const defaultCase = RulesetSensitivityLevel._(TfArgLiteral('default'));
  static const medium = RulesetSensitivityLevel._(TfArgLiteral('medium'));
  static const low = RulesetSensitivityLevel._(TfArgLiteral('low'));
  static const eoff = RulesetSensitivityLevel._(TfArgLiteral('eoff'));

  static const List<RulesetSensitivityLevel> values = [
    defaultCase,
    medium,
    low,
    eoff,
  ];
}

/// Typed helper for the `rules.action_parameters.overrides.categories` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetCategories {
  const RulesetCategories({
    this.action,
    required this.category,
    this.enabled,
    this.sensitivityLevel,
  });

  final TfArg<String>? action;

  final TfArg<String> category;

  final TfArg<bool>? enabled;

  final RulesetSensitivityLevel? sensitivityLevel;

  Map<String, Object?> encode() => {
    'action': ?action?.toTfJson(),
    'category': category.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
    'sensitivity_level': ?sensitivityLevel?.toTfJson(),
  };
}

/// Typed helper for the `rules.action_parameters.overrides.rules` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetOverridesRules {
  const RulesetOverridesRules({
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

  final RulesetSensitivityLevel? sensitivityLevel;

  Map<String, Object?> encode() => {
    'action': ?action?.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
    'id': id.toTfJson(),
    'score_threshold': ?scoreThreshold?.toTfJson(),
    'sensitivity_level': ?sensitivityLevel?.toTfJson(),
  };
}

/// Typed helper for the `rules.action_parameters.private` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetPrivate {
  const RulesetPrivate({
    this.cloudflareOnly,
    required this.operation,
    this.qualifiers,
  });

  final TfArg<bool>? cloudflareOnly;

  final RulesetImmutableOperation operation;

  final TfArg<List<String>>? qualifiers;

  Map<String, Object?> encode() => {
    'cloudflare_only': ?cloudflareOnly?.toTfJson(),
    'operation': operation.toTfJson(),
    'qualifiers': ?qualifiers?.toTfJson(),
  };
}

/// Typed helper for the `rules.action_parameters.proxy_revalidate` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetProxyRevalidate {
  const RulesetProxyRevalidate({this.cloudflareOnly, required this.operation});

  final TfArg<bool>? cloudflareOnly;

  final RulesetImmutableOperation operation;

  Map<String, Object?> encode() => {
    'cloudflare_only': ?cloudflareOnly?.toTfJson(),
    'operation': operation.toTfJson(),
  };
}

/// Typed helper for the `rules.action_parameters.public` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetPublic {
  const RulesetPublic({this.cloudflareOnly, required this.operation});

  final TfArg<bool>? cloudflareOnly;

  final RulesetImmutableOperation operation;

  Map<String, Object?> encode() => {
    'cloudflare_only': ?cloudflareOnly?.toTfJson(),
    'operation': operation.toTfJson(),
  };
}

/// Typed helper for the `rules.action_parameters.raw_response_fields` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRawResponseFields {
  const RulesetRawResponseFields({required this.name, this.preserveDuplicates});

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
final class RulesetRequestFields {
  const RulesetRequestFields({required this.name});

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `rules.action_parameters.response` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetResponse {
  const RulesetResponse({
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
final class RulesetResponseFields {
  const RulesetResponseFields({required this.name, this.preserveDuplicates});

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
final class RulesetSMaxage {
  const RulesetSMaxage({
    this.cloudflareOnly,
    required this.operation,
    this.value,
  });

  final TfArg<bool>? cloudflareOnly;

  final RulesetImmutableOperation operation;

  final TfArg<num>? value;

  Map<String, Object?> encode() => {
    'cloudflare_only': ?cloudflareOnly?.toTfJson(),
    'operation': operation.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `rules.action_parameters.serve_stale` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetServeStale {
  const RulesetServeStale({this.disableStaleWhileUpdating});

  final TfArg<bool>? disableStaleWhileUpdating;

  Map<String, Object?> encode() => {
    'disable_stale_while_updating': ?disableStaleWhileUpdating?.toTfJson(),
  };
}

/// Typed helper for the `rules.action_parameters.sni` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetSni {
  const RulesetSni({required this.value});

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `rules.action_parameters.stale_if_error` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetStaleIfError {
  const RulesetStaleIfError({
    this.cloudflareOnly,
    required this.operation,
    this.value,
  });

  final TfArg<bool>? cloudflareOnly;

  final RulesetImmutableOperation operation;

  final TfArg<num>? value;

  Map<String, Object?> encode() => {
    'cloudflare_only': ?cloudflareOnly?.toTfJson(),
    'operation': operation.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `rules.action_parameters.stale_while_revalidate` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetStaleWhileRevalidate {
  const RulesetStaleWhileRevalidate({
    this.cloudflareOnly,
    required this.operation,
    this.value,
  });

  final TfArg<bool>? cloudflareOnly;

  final RulesetImmutableOperation operation;

  final TfArg<num>? value;

  Map<String, Object?> encode() => {
    'cloudflare_only': ?cloudflareOnly?.toTfJson(),
    'operation': operation.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `rules.action_parameters.transformed_request_fields` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetTransformedRequestFields {
  const RulesetTransformedRequestFields({required this.name});

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `rules.action_parameters.uri` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetUri {
  const RulesetUri({this.path, this.query});

  final RulesetPath? path;

  final RulesetQuery? query;

  Map<String, Object?> encode() => {
    'path': ?path?.encode(),
    'query': ?query?.encode(),
  };
}

/// Exactly one of `value`, `expression` on the `rules.action_parameters.uri.path` block of `cloudflare_ruleset`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.value(...)`.
sealed class RulesetPath {
  const RulesetPath();

  /// Sets `value`.
  const factory RulesetPath.value(TfArg<String> value) = RulesetPathValue;

  /// Sets `expression`.
  const factory RulesetPath.expression(TfArg<String> expression) =
      RulesetPathExpression;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [RulesetPath.value] choice: sets `value`.
final class RulesetPathValue extends RulesetPath {
  const RulesetPathValue(this.value);

  final TfArg<String> value;

  @override
  String get blockKey => 'value';

  @override
  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// The [RulesetPath.expression] choice: sets `expression`.
final class RulesetPathExpression extends RulesetPath {
  const RulesetPathExpression(this.expression);

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
sealed class RulesetQuery {
  const RulesetQuery();

  /// Sets `value`.
  const factory RulesetQuery.value(TfArg<String> value) = RulesetQueryValue;

  /// Sets `expression`.
  const factory RulesetQuery.expression(TfArg<String> expression) =
      RulesetQueryExpression;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [RulesetQuery.value] choice: sets `value`.
final class RulesetQueryValue extends RulesetQuery {
  const RulesetQueryValue(this.value);

  final TfArg<String> value;

  @override
  String get blockKey => 'value';

  @override
  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// The [RulesetQuery.expression] choice: sets `expression`.
final class RulesetQueryExpression extends RulesetQuery {
  const RulesetQueryExpression(this.expression);

  final TfArg<String> expression;

  @override
  String get blockKey => 'expression';

  @override
  Map<String, Object?> encode() => {'expression': expression.toTfJson()};
}

/// Typed helper for the `rules.action_parameters.vary` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetVary {
  const RulesetVary({required this.defaultCase, this.headers});

  final RulesetDefault defaultCase;

  final Map<String, RulesetVaryHeaders>? headers;

  Map<String, Object?> encode() => {
    'default': defaultCase.encode(),
    if (headers != null)
      'headers': {for (final e in headers!.entries) e.key: e.value.encode()},
  };
}

/// Typed helper for the `rules.action_parameters.vary.default` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetDefault {
  const RulesetDefault({required this.action});

  final RulesetDefaultAction action;

  Map<String, Object?> encode() => {'action': action.toTfJson()};
}

/// `action` — derived from the provider schema description.
extension type const RulesetDefaultAction._(TfArg<String> _)
    implements TfArg<String> {
  RulesetDefaultAction.variable(String name) : this._(TfArg.variable(name));
  RulesetDefaultAction.expression(String template)
    : this._(TfArg.expression(template));
  const RulesetDefaultAction.arg(TfArg<String> arg) : this._(arg);

  static const bypass = RulesetDefaultAction._(TfArgLiteral('bypass'));
  static const passthrough = RulesetDefaultAction._(
    TfArgLiteral('passthrough'),
  );
  static const normalize = RulesetDefaultAction._(TfArgLiteral('normalize'));

  static const List<RulesetDefaultAction> values = [
    bypass,
    passthrough,
    normalize,
  ];
}

/// Typed helper for the `rules.action_parameters.vary.headers` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetVaryHeaders {
  const RulesetVaryHeaders({
    required this.action,
    this.languages,
    this.mediaTypes,
  });

  final RulesetDefaultAction action;

  final TfArg<List<String>>? languages;

  final TfArg<List<String>>? mediaTypes;

  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    'languages': ?languages?.toTfJson(),
    'media_types': ?mediaTypes?.toTfJson(),
  };
}

/// Typed helper for the `rules.exposed_credential_check` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetExposedCredentialCheck {
  const RulesetExposedCredentialCheck({
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
final class RulesetLogging {
  const RulesetLogging({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {'enabled': ?enabled?.toTfJson()};
}

/// Typed helper for the `rules.ratelimit` block of
/// `cloudflare_ruleset` (derived from provider schema).
@immutable
final class RulesetRatelimit {
  const RulesetRatelimit({
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

  CloudflareRuleset(
    super.localName, {
    required RulesetScope scope,
    TfArg<String>? description,
    required RulesetKind kind,
    required TfArg<String> name,
    required RulesetPhase phase,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `kind` attribute.
  TfRef<String> get kindAttr => TfRef.attribute<String>(this, 'kind');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `last_updated` attribute.
  TfRef<String> get lastUpdated =>
      TfRef.attribute<String>(this, 'last_updated');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `phase` attribute.
  TfRef<String> get phase => TfRef.attribute<String>(this, 'phase');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
