// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_backend_bucket.dart'
    show GoogleComputeBackendBucket;
import '../compute/google_compute_backend_service.dart'
    show GoogleComputeBackendService;

/// Sensitive field paths for `google_compute_url_map`.
const Set<String> _googleComputeUrlMapSensitive = <String>{};

// ===========================================================================
// Enums
// ===========================================================================

/// HTTP redirect response code emitted by a `default_url_redirect` /
/// `path_rule.url_redirect` / `route_rules.url_redirect` block. The
/// schema declares this as a free-form string -- the enum below pins the
/// API-accepted set so callers cannot mis-spell it.
///
/// - [movedPermanentlyDefault] is the API default and resolves to HTTP 301
///   on the wire; emitted as the literal token `MOVED_PERMANENTLY_DEFAULT`.
/// - [found] -> 302, [seeOther] -> 303, [temporaryRedirect] -> 307,
///   [permanentRedirect] -> 308.
enum UrlMapRedirectResponseCode implements TerraformEnum {
  found('FOUND'),
  movedPermanentlyDefault('MOVED_PERMANENTLY_DEFAULT'),
  permanentRedirect('PERMANENT_REDIRECT'),
  seeOther('SEE_OTHER'),
  temporaryRedirect('TEMPORARY_REDIRECT');

  const UrlMapRedirectResponseCode(this.terraformValue);
  @override
  final String terraformValue;
}

/// `route_action.cache_policy.cache_mode` and nested cache policy blocks.
enum UrlMapCacheMode implements TerraformEnum {
  useOriginHeaders('USE_ORIGIN_HEADERS'),
  forceCacheAll('FORCE_CACHE_ALL'),
  cacheAllStatic('CACHE_ALL_STATIC');

  const UrlMapCacheMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// `match_rules.metadata_filters.filter_match_criteria`.
enum UrlMapMetadataFilterMatchCriteria implements TerraformEnum {
  matchAll('MATCH_ALL'),
  matchAny('MATCH_ANY');

  const UrlMapMetadataFilterMatchCriteria(this.terraformValue);
  @override
  final String terraformValue;
}

// ===========================================================================
// host_rule (set, unbounded)
// ===========================================================================

// ===========================================================================
// path_matcher[] (list, unbounded)
// ===========================================================================

// ===========================================================================
// url_redirect block (max_items=1, reused at every level)
// ===========================================================================

// ===========================================================================
// header_action block (max_items=1, reused at top-level and inside rules)
// ===========================================================================

// ===========================================================================
// test[] block (CI-friendly assertions)
// ===========================================================================

/// At most one of `default_url_redirect`, `default_route_action` on `google_compute_url_map`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.defaultUrlRedirect(...)`.
sealed class ComputeUrlMapDefaultAction {
  const ComputeUrlMapDefaultAction();

  /// Sets `default_url_redirect`.
  const factory ComputeUrlMapDefaultAction.defaultUrlRedirect(
    ComputeUrlMapDefaultUrlRedirect defaultUrlRedirect,
  ) = ComputeUrlMapDefaultActionDefaultUrlRedirect;

  /// Sets `default_route_action`.
  const factory ComputeUrlMapDefaultAction.defaultRouteAction(
    ComputeUrlMapDefaultRouteAction defaultRouteAction,
  ) = ComputeUrlMapDefaultActionDefaultRouteAction;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ComputeUrlMapDefaultAction.defaultUrlRedirect] choice: sets `default_url_redirect`.
final class ComputeUrlMapDefaultActionDefaultUrlRedirect
    extends ComputeUrlMapDefaultAction {
  const ComputeUrlMapDefaultActionDefaultUrlRedirect(this.defaultUrlRedirect);

  final ComputeUrlMapDefaultUrlRedirect defaultUrlRedirect;

  @override
  String get blockKey => 'default_url_redirect';

  @override
  Map<String, Object?> encode() => {
    'default_url_redirect': defaultUrlRedirect.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'default_url_redirect': TfArg.literal(defaultUrlRedirect.encode()),
  };
}

/// The [ComputeUrlMapDefaultAction.defaultRouteAction] choice: sets `default_route_action`.
final class ComputeUrlMapDefaultActionDefaultRouteAction
    extends ComputeUrlMapDefaultAction {
  const ComputeUrlMapDefaultActionDefaultRouteAction(this.defaultRouteAction);

  final ComputeUrlMapDefaultRouteAction defaultRouteAction;

  @override
  String get blockKey => 'default_route_action';

  @override
  Map<String, Object?> encode() => {
    'default_route_action': defaultRouteAction.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'default_route_action': TfArg.literal(defaultRouteAction.encode()),
  };
}

/// Typed helper for the `default_custom_error_response_policy` block of
/// `google_compute_url_map` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ComputeUrlMapDefaultCustomErrorResponsePolicy {
  const ComputeUrlMapDefaultCustomErrorResponsePolicy({
    this.errorService,
    this.errorResponseRule,
  });

  final RefTo<GoogleComputeBackendBucket>? errorService;

  final List<ComputeUrlMapErrorResponseRule>? errorResponseRule;

  Map<String, Object?> encode() => {
    'error_service': ?errorService?.encodeAs('self_link').toTfJson(),
    if (errorResponseRule != null)
      'error_response_rule': [for (final e in errorResponseRule!) e.encode()],
  };
}

/// Typed helper for the `default_custom_error_response_policy.error_response_rule` block of
/// `google_compute_url_map` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ComputeUrlMapErrorResponseRule {
  const ComputeUrlMapErrorResponseRule({
    this.matchResponseCodes,
    this.overrideResponseCode,
    this.path,
  });

  final TfArg<List<String>>? matchResponseCodes;

  final TfArg<num>? overrideResponseCode;

  final TfArg<String>? path;

  Map<String, Object?> encode() => {
    'match_response_codes': ?matchResponseCodes?.toTfJson(),
    'override_response_code': ?overrideResponseCode?.toTfJson(),
    'path': ?path?.toTfJson(),
  };
}

/// Typed helper for the `default_route_action` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapDefaultRouteAction {
  const ComputeUrlMapDefaultRouteAction({
    this.cachePolicy,
    this.corsPolicy,
    this.faultInjectionPolicy,
    this.maxStreamDuration,
    this.requestMirrorPolicy,
    this.retryPolicy,
    this.timeout,
    this.urlRewrite,
    this.weightedBackendServices,
  });

  final ComputeUrlMapCachePolicy? cachePolicy;

  final ComputeUrlMapCorsPolicy? corsPolicy;

  final ComputeUrlMapFaultInjectionPolicy? faultInjectionPolicy;

  final ComputeUrlMapMaxStreamDuration? maxStreamDuration;

  final ComputeUrlMapRequestMirrorPolicy? requestMirrorPolicy;

  final ComputeUrlMapRetryPolicy? retryPolicy;

  final ComputeUrlMapTimeout? timeout;

  final ComputeUrlMapUrlRewrite? urlRewrite;

  final List<ComputeUrlMapWeightedBackendServices>? weightedBackendServices;

  Map<String, Object?> encode() => {
    'cache_policy': ?cachePolicy?.encode(),
    'cors_policy': ?corsPolicy?.encode(),
    'fault_injection_policy': ?faultInjectionPolicy?.encode(),
    'max_stream_duration': ?maxStreamDuration?.encode(),
    'request_mirror_policy': ?requestMirrorPolicy?.encode(),
    'retry_policy': ?retryPolicy?.encode(),
    'timeout': ?timeout?.encode(),
    'url_rewrite': ?urlRewrite?.encode(),
    if (weightedBackendServices != null)
      'weighted_backend_services': [
        for (final e in weightedBackendServices!) e.encode(),
      ],
  };
}

/// Typed helper for the `default_route_action.cache_policy` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapCachePolicy {
  const ComputeUrlMapCachePolicy({
    this.cacheBypassRequestHeaderNames,
    this.cacheMode,
    this.negativeCaching,
    this.requestCoalescing,
    this.cacheKeyPolicy,
    this.clientTtl,
    this.defaultTtl,
    this.maxTtl,
    this.negativeCachingPolicy,
    this.serveWhileStale,
  });

  final TfArg<List<String>>? cacheBypassRequestHeaderNames;

  final TfArg<UrlMapCacheMode>? cacheMode;

  final TfArg<bool>? negativeCaching;

  final TfArg<bool>? requestCoalescing;

  final ComputeUrlMapCacheKeyPolicy? cacheKeyPolicy;

  final ComputeUrlMapClientTtl? clientTtl;

  final ComputeUrlMapDefaultTtl? defaultTtl;

  final ComputeUrlMapMaxTtl? maxTtl;

  final List<ComputeUrlMapNegativeCachingPolicy>? negativeCachingPolicy;

  final ComputeUrlMapServeWhileStale? serveWhileStale;

  Map<String, Object?> encode() => {
    'cache_bypass_request_header_names': ?cacheBypassRequestHeaderNames
        ?.toTfJson(),
    'cache_mode': ?cacheMode?.toTfJson(),
    'negative_caching': ?negativeCaching?.toTfJson(),
    'request_coalescing': ?requestCoalescing?.toTfJson(),
    'cache_key_policy': ?cacheKeyPolicy?.encode(),
    'client_ttl': ?clientTtl?.encode(),
    'default_ttl': ?defaultTtl?.encode(),
    'max_ttl': ?maxTtl?.encode(),
    if (negativeCachingPolicy != null)
      'negative_caching_policy': [
        for (final e in negativeCachingPolicy!) e.encode(),
      ],
    'serve_while_stale': ?serveWhileStale?.encode(),
  };
}

/// Typed helper for the `default_route_action.cache_policy.cache_key_policy` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapCacheKeyPolicy {
  const ComputeUrlMapCacheKeyPolicy({
    this.queryParameters,
    this.includeHost,
    this.includeProtocol,
    this.includeQueryString,
    this.includedCookieNames,
    this.includedHeaderNames,
  });

  final ComputeUrlMapQueryParameters? queryParameters;

  final TfArg<bool>? includeHost;

  final TfArg<bool>? includeProtocol;

  final TfArg<bool>? includeQueryString;

  final TfArg<List<String>>? includedCookieNames;

  final TfArg<List<String>>? includedHeaderNames;

  Map<String, Object?> encode() => {
    ...?queryParameters?.encode(),
    'include_host': ?includeHost?.toTfJson(),
    'include_protocol': ?includeProtocol?.toTfJson(),
    'include_query_string': ?includeQueryString?.toTfJson(),
    'included_cookie_names': ?includedCookieNames?.toTfJson(),
    'included_header_names': ?includedHeaderNames?.toTfJson(),
  };
}

/// At most one of `included_query_parameters`, `excluded_query_parameters` on the `default_route_action.cache_policy.cache_key_policy` block of `google_compute_url_map`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.includedQueryParameters(...)`.
sealed class ComputeUrlMapQueryParameters {
  const ComputeUrlMapQueryParameters();

  /// Sets `included_query_parameters`.
  const factory ComputeUrlMapQueryParameters.includedQueryParameters(
    TfArg<List<String>> includedQueryParameters,
  ) = ComputeUrlMapIncludedQueryParameters;

  /// Sets `excluded_query_parameters`.
  const factory ComputeUrlMapQueryParameters.excludedQueryParameters(
    TfArg<List<String>> excludedQueryParameters,
  ) = ComputeUrlMapExcludedQueryParameters;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [ComputeUrlMapQueryParameters.includedQueryParameters] choice: sets `included_query_parameters`.
final class ComputeUrlMapIncludedQueryParameters
    extends ComputeUrlMapQueryParameters {
  const ComputeUrlMapIncludedQueryParameters(this.includedQueryParameters);

  final TfArg<List<String>> includedQueryParameters;

  @override
  String get blockKey => 'included_query_parameters';

  @override
  Map<String, Object?> encode() => {
    'included_query_parameters': includedQueryParameters.toTfJson(),
  };
}

/// The [ComputeUrlMapQueryParameters.excludedQueryParameters] choice: sets `excluded_query_parameters`.
final class ComputeUrlMapExcludedQueryParameters
    extends ComputeUrlMapQueryParameters {
  const ComputeUrlMapExcludedQueryParameters(this.excludedQueryParameters);

  final TfArg<List<String>> excludedQueryParameters;

  @override
  String get blockKey => 'excluded_query_parameters';

  @override
  Map<String, Object?> encode() => {
    'excluded_query_parameters': excludedQueryParameters.toTfJson(),
  };
}

/// Typed helper for the `default_route_action.cache_policy.client_ttl` block of
/// `google_compute_url_map` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ComputeUrlMapClientTtl {
  const ComputeUrlMapClientTtl({this.nanos, required this.seconds});

  final TfArg<num>? nanos;

  final TfArg<String> seconds;

  Map<String, Object?> encode() => {
    'nanos': ?nanos?.toTfJson(),
    'seconds': seconds.toTfJson(),
  };
}

/// Typed helper for the `default_route_action.cache_policy.default_ttl` block of
/// `google_compute_url_map` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ComputeUrlMapDefaultTtl {
  const ComputeUrlMapDefaultTtl({this.nanos, required this.seconds});

  final TfArg<num>? nanos;

  final TfArg<String> seconds;

  Map<String, Object?> encode() => {
    'nanos': ?nanos?.toTfJson(),
    'seconds': seconds.toTfJson(),
  };
}

/// Typed helper for the `default_route_action.cache_policy.max_ttl` block of
/// `google_compute_url_map` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ComputeUrlMapMaxTtl {
  const ComputeUrlMapMaxTtl({this.nanos, required this.seconds});

  final TfArg<num>? nanos;

  final TfArg<String> seconds;

  Map<String, Object?> encode() => {
    'nanos': ?nanos?.toTfJson(),
    'seconds': seconds.toTfJson(),
  };
}

/// Typed helper for the `default_route_action.cache_policy.negative_caching_policy` block of
/// `google_compute_url_map` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ComputeUrlMapNegativeCachingPolicy {
  const ComputeUrlMapNegativeCachingPolicy({this.code, this.ttl});

  final TfArg<num>? code;

  final ComputeUrlMapTtl? ttl;

  Map<String, Object?> encode() => {
    'code': ?code?.toTfJson(),
    'ttl': ?ttl?.encode(),
  };
}

/// Typed helper for the `default_route_action.cache_policy.negative_caching_policy.ttl` block of
/// `google_compute_url_map` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ComputeUrlMapTtl {
  const ComputeUrlMapTtl({this.nanos, required this.seconds});

  final TfArg<num>? nanos;

  final TfArg<String> seconds;

  Map<String, Object?> encode() => {
    'nanos': ?nanos?.toTfJson(),
    'seconds': seconds.toTfJson(),
  };
}

/// Typed helper for the `default_route_action.cache_policy.serve_while_stale` block of
/// `google_compute_url_map` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ComputeUrlMapServeWhileStale {
  const ComputeUrlMapServeWhileStale({this.nanos, required this.seconds});

  final TfArg<num>? nanos;

  final TfArg<String> seconds;

  Map<String, Object?> encode() => {
    'nanos': ?nanos?.toTfJson(),
    'seconds': seconds.toTfJson(),
  };
}

/// Typed helper for the `default_route_action.cors_policy` block of
/// `google_compute_url_map` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ComputeUrlMapCorsPolicy {
  const ComputeUrlMapCorsPolicy({
    this.allowCredentials,
    this.allowHeaders,
    this.allowMethods,
    this.allowOriginRegexes,
    this.allowOrigins,
    this.disabled,
    this.exposeHeaders,
    this.maxAge,
  });

  final TfArg<bool>? allowCredentials;

  final TfArg<List<String>>? allowHeaders;

  final TfArg<List<String>>? allowMethods;

  final TfArg<List<String>>? allowOriginRegexes;

  final TfArg<List<String>>? allowOrigins;

  final TfArg<bool>? disabled;

  final TfArg<List<String>>? exposeHeaders;

  final TfArg<num>? maxAge;

  Map<String, Object?> encode() => {
    'allow_credentials': ?allowCredentials?.toTfJson(),
    'allow_headers': ?allowHeaders?.toTfJson(),
    'allow_methods': ?allowMethods?.toTfJson(),
    'allow_origin_regexes': ?allowOriginRegexes?.toTfJson(),
    'allow_origins': ?allowOrigins?.toTfJson(),
    'disabled': ?disabled?.toTfJson(),
    'expose_headers': ?exposeHeaders?.toTfJson(),
    'max_age': ?maxAge?.toTfJson(),
  };
}

/// Typed helper for the `default_route_action.fault_injection_policy` block of
/// `google_compute_url_map` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ComputeUrlMapFaultInjectionPolicy {
  const ComputeUrlMapFaultInjectionPolicy({this.abort, this.delay});

  final ComputeUrlMapAbort? abort;

  final ComputeUrlMapDelay? delay;

  Map<String, Object?> encode() => {
    'abort': ?abort?.encode(),
    'delay': ?delay?.encode(),
  };
}

/// Typed helper for the `default_route_action.fault_injection_policy.abort` block of
/// `google_compute_url_map` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ComputeUrlMapAbort {
  const ComputeUrlMapAbort({this.httpStatus, this.percentage});

  final TfArg<num>? httpStatus;

  final TfArg<num>? percentage;

  Map<String, Object?> encode() => {
    'http_status': ?httpStatus?.toTfJson(),
    'percentage': ?percentage?.toTfJson(),
  };
}

/// Typed helper for the `default_route_action.fault_injection_policy.delay` block of
/// `google_compute_url_map` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ComputeUrlMapDelay {
  const ComputeUrlMapDelay({this.percentage, this.fixedDelay});

  final TfArg<num>? percentage;

  final ComputeUrlMapFixedDelay? fixedDelay;

  Map<String, Object?> encode() => {
    'percentage': ?percentage?.toTfJson(),
    'fixed_delay': ?fixedDelay?.encode(),
  };
}

/// Typed helper for the `default_route_action.fault_injection_policy.delay.fixed_delay` block of
/// `google_compute_url_map` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ComputeUrlMapFixedDelay {
  const ComputeUrlMapFixedDelay({this.nanos, this.seconds});

  final TfArg<num>? nanos;

  final TfArg<String>? seconds;

  Map<String, Object?> encode() => {
    'nanos': ?nanos?.toTfJson(),
    'seconds': ?seconds?.toTfJson(),
  };
}

/// Typed helper for the `default_route_action.max_stream_duration` block of
/// `google_compute_url_map` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ComputeUrlMapMaxStreamDuration {
  const ComputeUrlMapMaxStreamDuration({this.nanos, required this.seconds});

  final TfArg<num>? nanos;

  final TfArg<String> seconds;

  Map<String, Object?> encode() => {
    'nanos': ?nanos?.toTfJson(),
    'seconds': seconds.toTfJson(),
  };
}

/// Typed helper for the `default_route_action.request_mirror_policy` block of
/// `google_compute_url_map` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ComputeUrlMapRequestMirrorPolicy {
  const ComputeUrlMapRequestMirrorPolicy({required this.backendService});

  final RefTo<GoogleComputeBackendService> backendService;

  Map<String, Object?> encode() => {
    'backend_service': backendService.encodeAs('self_link').toTfJson(),
  };
}

/// Typed helper for the `default_route_action.retry_policy` block of
/// `google_compute_url_map` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ComputeUrlMapRetryPolicy {
  const ComputeUrlMapRetryPolicy({
    this.numRetries,
    this.retryConditions,
    this.perTryTimeout,
  });

  final TfArg<num>? numRetries;

  final TfArg<List<String>>? retryConditions;

  final ComputeUrlMapPerTryTimeout? perTryTimeout;

  Map<String, Object?> encode() => {
    'num_retries': ?numRetries?.toTfJson(),
    'retry_conditions': ?retryConditions?.toTfJson(),
    'per_try_timeout': ?perTryTimeout?.encode(),
  };
}

/// Typed helper for the `default_route_action.retry_policy.per_try_timeout` block of
/// `google_compute_url_map` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ComputeUrlMapPerTryTimeout {
  const ComputeUrlMapPerTryTimeout({this.nanos, this.seconds});

  final TfArg<num>? nanos;

  final TfArg<String>? seconds;

  Map<String, Object?> encode() => {
    'nanos': ?nanos?.toTfJson(),
    'seconds': ?seconds?.toTfJson(),
  };
}

/// Typed helper for the `default_route_action.timeout` block of
/// `google_compute_url_map` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ComputeUrlMapTimeout {
  const ComputeUrlMapTimeout({this.nanos, this.seconds});

  final TfArg<num>? nanos;

  final TfArg<String>? seconds;

  Map<String, Object?> encode() => {
    'nanos': ?nanos?.toTfJson(),
    'seconds': ?seconds?.toTfJson(),
  };
}

/// Typed helper for the `default_route_action.url_rewrite` block of
/// `google_compute_url_map` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ComputeUrlMapUrlRewrite {
  const ComputeUrlMapUrlRewrite({this.hostRewrite, this.pathPrefixRewrite});

  final TfArg<String>? hostRewrite;

  final TfArg<String>? pathPrefixRewrite;

  Map<String, Object?> encode() => {
    'host_rewrite': ?hostRewrite?.toTfJson(),
    'path_prefix_rewrite': ?pathPrefixRewrite?.toTfJson(),
  };
}

/// Typed helper for the `default_route_action.weighted_backend_services` block of
/// `google_compute_url_map` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ComputeUrlMapWeightedBackendServices {
  const ComputeUrlMapWeightedBackendServices({
    this.backendService,
    this.weight,
    this.headerAction,
  });

  final RefTo<GoogleComputeBackendService>? backendService;

  final TfArg<num>? weight;

  final ComputeUrlMapWeightedBackendServicesHeaderAction? headerAction;

  Map<String, Object?> encode() => {
    'backend_service': ?backendService?.encodeAs('self_link').toTfJson(),
    'weight': ?weight?.toTfJson(),
    'header_action': ?headerAction?.encode(),
  };
}

/// Typed helper for the `default_route_action.weighted_backend_services.header_action` block of
/// `google_compute_url_map` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ComputeUrlMapWeightedBackendServicesHeaderAction {
  const ComputeUrlMapWeightedBackendServicesHeaderAction({
    this.requestHeadersToRemove,
    this.responseHeadersToRemove,
    this.requestHeadersToAdd,
    this.responseHeadersToAdd,
  });

  final TfArg<List<String>>? requestHeadersToRemove;

  final TfArg<List<String>>? responseHeadersToRemove;

  final List<ComputeUrlMapHeaderActionRequestHeadersToAdd>? requestHeadersToAdd;

  final List<ComputeUrlMapHeaderActionResponseHeadersToAdd>?
  responseHeadersToAdd;

  Map<String, Object?> encode() => {
    'request_headers_to_remove': ?requestHeadersToRemove?.toTfJson(),
    'response_headers_to_remove': ?responseHeadersToRemove?.toTfJson(),
    if (requestHeadersToAdd != null)
      'request_headers_to_add': [
        for (final e in requestHeadersToAdd!) e.encode(),
      ],
    if (responseHeadersToAdd != null)
      'response_headers_to_add': [
        for (final e in responseHeadersToAdd!) e.encode(),
      ],
  };
}

/// Typed helper for the `default_route_action.weighted_backend_services.header_action.request_headers_to_add` block of
/// `google_compute_url_map` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ComputeUrlMapHeaderActionRequestHeadersToAdd {
  const ComputeUrlMapHeaderActionRequestHeadersToAdd({
    this.headerName,
    this.headerValue,
    this.replace,
  });

  final TfArg<String>? headerName;

  final TfArg<String>? headerValue;

  final TfArg<bool>? replace;

  Map<String, Object?> encode() => {
    'header_name': ?headerName?.toTfJson(),
    'header_value': ?headerValue?.toTfJson(),
    'replace': ?replace?.toTfJson(),
  };
}

/// Typed helper for the `default_route_action.weighted_backend_services.header_action.response_headers_to_add` block of
/// `google_compute_url_map` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ComputeUrlMapHeaderActionResponseHeadersToAdd {
  const ComputeUrlMapHeaderActionResponseHeadersToAdd({
    this.headerName,
    this.headerValue,
    this.replace,
  });

  final TfArg<String>? headerName;

  final TfArg<String>? headerValue;

  final TfArg<bool>? replace;

  Map<String, Object?> encode() => {
    'header_name': ?headerName?.toTfJson(),
    'header_value': ?headerValue?.toTfJson(),
    'replace': ?replace?.toTfJson(),
  };
}

/// Typed helper for the `default_url_redirect` block of
/// `google_compute_url_map` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ComputeUrlMapDefaultUrlRedirect {
  const ComputeUrlMapDefaultUrlRedirect({
    this.hostRedirect,
    this.httpsRedirect,
    this.pathRedirect,
    this.prefixRedirect,
    this.redirectResponseCode,
    required this.stripQuery,
  });

  final TfArg<String>? hostRedirect;

  final TfArg<bool>? httpsRedirect;

  final TfArg<String>? pathRedirect;

  final TfArg<String>? prefixRedirect;

  final TfArg<UrlMapRedirectResponseCode>? redirectResponseCode;

  final TfArg<bool> stripQuery;

  Map<String, Object?> encode() => {
    'host_redirect': ?hostRedirect?.toTfJson(),
    'https_redirect': ?httpsRedirect?.toTfJson(),
    'path_redirect': ?pathRedirect?.toTfJson(),
    'prefix_redirect': ?prefixRedirect?.toTfJson(),
    'redirect_response_code': ?redirectResponseCode?.toTfJson(),
    'strip_query': stripQuery.toTfJson(),
  };
}

/// Typed helper for the `header_action` block of
/// `google_compute_url_map` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ComputeUrlMapHeaderAction {
  const ComputeUrlMapHeaderAction({
    this.requestHeadersToRemove,
    this.responseHeadersToRemove,
    this.requestHeadersToAdd,
    this.responseHeadersToAdd,
  });

  final TfArg<List<String>>? requestHeadersToRemove;

  final TfArg<List<String>>? responseHeadersToRemove;

  final List<ComputeUrlMapRequestHeadersToAdd>? requestHeadersToAdd;

  final List<ComputeUrlMapResponseHeadersToAdd>? responseHeadersToAdd;

  Map<String, Object?> encode() => {
    'request_headers_to_remove': ?requestHeadersToRemove?.toTfJson(),
    'response_headers_to_remove': ?responseHeadersToRemove?.toTfJson(),
    if (requestHeadersToAdd != null)
      'request_headers_to_add': [
        for (final e in requestHeadersToAdd!) e.encode(),
      ],
    if (responseHeadersToAdd != null)
      'response_headers_to_add': [
        for (final e in responseHeadersToAdd!) e.encode(),
      ],
  };
}

/// Typed helper for the `header_action.request_headers_to_add` block of
/// `google_compute_url_map` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ComputeUrlMapRequestHeadersToAdd {
  const ComputeUrlMapRequestHeadersToAdd({
    required this.headerName,
    required this.headerValue,
    required this.replace,
  });

  final TfArg<String> headerName;

  final TfArg<String> headerValue;

  final TfArg<bool> replace;

  Map<String, Object?> encode() => {
    'header_name': headerName.toTfJson(),
    'header_value': headerValue.toTfJson(),
    'replace': replace.toTfJson(),
  };
}

/// Typed helper for the `header_action.response_headers_to_add` block of
/// `google_compute_url_map` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ComputeUrlMapResponseHeadersToAdd {
  const ComputeUrlMapResponseHeadersToAdd({
    required this.headerName,
    required this.headerValue,
    required this.replace,
  });

  final TfArg<String> headerName;

  final TfArg<String> headerValue;

  final TfArg<bool> replace;

  Map<String, Object?> encode() => {
    'header_name': headerName.toTfJson(),
    'header_value': headerValue.toTfJson(),
    'replace': replace.toTfJson(),
  };
}

/// Typed helper for the `host_rule` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapHostRule {
  const ComputeUrlMapHostRule({
    this.description,
    required this.hosts,
    required this.pathMatcher,
  });

  final TfArg<String>? description;

  final TfArg<List<String>> hosts;

  final TfArg<String> pathMatcher;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'hosts': hosts.toTfJson(),
    'path_matcher': pathMatcher.toTfJson(),
  };
}

/// Typed helper for the `path_matcher` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcher {
  const ComputeUrlMapPathMatcher({
    this.defaultService,
    this.description,
    required this.name,
    this.defaultCustomErrorResponsePolicy,
    this.defaultRouteAction,
    this.defaultUrlRedirect,
    this.headerAction,
    this.pathRule,
    this.routeRules,
  });

  final RefTo<GoogleComputeBackendService>? defaultService;

  final TfArg<String>? description;

  final TfArg<String> name;

  final ComputeUrlMapDefaultCustomErrorResponsePolicy?
  defaultCustomErrorResponsePolicy;

  final ComputeUrlMapPathMatcherDefaultRouteAction? defaultRouteAction;

  final ComputeUrlMapDefaultUrlRedirect? defaultUrlRedirect;

  final ComputeUrlMapHeaderAction? headerAction;

  final List<ComputeUrlMapPathRule>? pathRule;

  final List<ComputeUrlMapRouteRules>? routeRules;

  Map<String, Object?> encode() => {
    'default_service': ?defaultService?.encodeAs('self_link').toTfJson(),
    'description': ?description?.toTfJson(),
    'name': name.toTfJson(),
    'default_custom_error_response_policy': ?defaultCustomErrorResponsePolicy
        ?.encode(),
    'default_route_action': ?defaultRouteAction?.encode(),
    'default_url_redirect': ?defaultUrlRedirect?.encode(),
    'header_action': ?headerAction?.encode(),
    if (pathRule != null) 'path_rule': [for (final e in pathRule!) e.encode()],
    if (routeRules != null)
      'route_rules': [for (final e in routeRules!) e.encode()],
  };
}

/// Typed helper for the `path_matcher.default_route_action` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherDefaultRouteAction {
  const ComputeUrlMapPathMatcherDefaultRouteAction({
    this.cachePolicy,
    this.corsPolicy,
    this.faultInjectionPolicy,
    this.maxStreamDuration,
    this.requestMirrorPolicy,
    this.retryPolicy,
    this.timeout,
    this.urlRewrite,
    this.weightedBackendServices,
  });

  final ComputeUrlMapDefaultRouteActionCachePolicy? cachePolicy;

  final ComputeUrlMapCorsPolicy? corsPolicy;

  final ComputeUrlMapFaultInjectionPolicy? faultInjectionPolicy;

  final ComputeUrlMapMaxStreamDuration? maxStreamDuration;

  final ComputeUrlMapRequestMirrorPolicy? requestMirrorPolicy;

  final ComputeUrlMapRetryPolicy? retryPolicy;

  final ComputeUrlMapTimeout? timeout;

  final ComputeUrlMapUrlRewrite? urlRewrite;

  final List<ComputeUrlMapWeightedBackendServices>? weightedBackendServices;

  Map<String, Object?> encode() => {
    'cache_policy': ?cachePolicy?.encode(),
    'cors_policy': ?corsPolicy?.encode(),
    'fault_injection_policy': ?faultInjectionPolicy?.encode(),
    'max_stream_duration': ?maxStreamDuration?.encode(),
    'request_mirror_policy': ?requestMirrorPolicy?.encode(),
    'retry_policy': ?retryPolicy?.encode(),
    'timeout': ?timeout?.encode(),
    'url_rewrite': ?urlRewrite?.encode(),
    if (weightedBackendServices != null)
      'weighted_backend_services': [
        for (final e in weightedBackendServices!) e.encode(),
      ],
  };
}

/// Typed helper for the `path_matcher.default_route_action.cache_policy` block of
/// `google_compute_url_map` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ComputeUrlMapDefaultRouteActionCachePolicy {
  const ComputeUrlMapDefaultRouteActionCachePolicy({
    this.cacheBypassRequestHeaderNames,
    this.cacheMode,
    this.negativeCaching,
    this.requestCoalescing,
    this.cacheKeyPolicy,
    this.clientTtl,
    this.defaultTtl,
    this.maxTtl,
    this.negativeCachingPolicy,
    this.serveWhileStale,
  });

  final TfArg<List<String>>? cacheBypassRequestHeaderNames;

  final TfArg<UrlMapCacheMode>? cacheMode;

  final TfArg<bool>? negativeCaching;

  final TfArg<bool>? requestCoalescing;

  final ComputeUrlMapCachePolicyCacheKeyPolicy? cacheKeyPolicy;

  final ComputeUrlMapClientTtl? clientTtl;

  final ComputeUrlMapDefaultTtl? defaultTtl;

  final ComputeUrlMapMaxTtl? maxTtl;

  final List<ComputeUrlMapNegativeCachingPolicy>? negativeCachingPolicy;

  final ComputeUrlMapServeWhileStale? serveWhileStale;

  Map<String, Object?> encode() => {
    'cache_bypass_request_header_names': ?cacheBypassRequestHeaderNames
        ?.toTfJson(),
    'cache_mode': ?cacheMode?.toTfJson(),
    'negative_caching': ?negativeCaching?.toTfJson(),
    'request_coalescing': ?requestCoalescing?.toTfJson(),
    'cache_key_policy': ?cacheKeyPolicy?.encode(),
    'client_ttl': ?clientTtl?.encode(),
    'default_ttl': ?defaultTtl?.encode(),
    'max_ttl': ?maxTtl?.encode(),
    if (negativeCachingPolicy != null)
      'negative_caching_policy': [
        for (final e in negativeCachingPolicy!) e.encode(),
      ],
    'serve_while_stale': ?serveWhileStale?.encode(),
  };
}

/// Typed helper for the `path_matcher.default_route_action.cache_policy.cache_key_policy` block of
/// `google_compute_url_map` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ComputeUrlMapCachePolicyCacheKeyPolicy {
  const ComputeUrlMapCachePolicyCacheKeyPolicy({
    this.excludedQueryParameters,
    this.includeHost,
    this.includeProtocol,
    this.includeQueryString,
    this.includedCookieNames,
    this.includedHeaderNames,
    this.includedQueryParameters,
  });

  final TfArg<List<String>>? excludedQueryParameters;

  final TfArg<bool>? includeHost;

  final TfArg<bool>? includeProtocol;

  final TfArg<bool>? includeQueryString;

  final TfArg<List<String>>? includedCookieNames;

  final TfArg<List<String>>? includedHeaderNames;

  final TfArg<List<String>>? includedQueryParameters;

  Map<String, Object?> encode() => {
    'excluded_query_parameters': ?excludedQueryParameters?.toTfJson(),
    'include_host': ?includeHost?.toTfJson(),
    'include_protocol': ?includeProtocol?.toTfJson(),
    'include_query_string': ?includeQueryString?.toTfJson(),
    'included_cookie_names': ?includedCookieNames?.toTfJson(),
    'included_header_names': ?includedHeaderNames?.toTfJson(),
    'included_query_parameters': ?includedQueryParameters?.toTfJson(),
  };
}

/// Typed helper for the `path_matcher.path_rule` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathRule {
  const ComputeUrlMapPathRule({
    required this.paths,
    this.service,
    this.customErrorResponsePolicy,
    this.routeAction,
    this.urlRedirect,
  });

  final TfArg<List<String>> paths;

  final RefTo<GoogleComputeBackendService>? service;

  final ComputeUrlMapCustomErrorResponsePolicy? customErrorResponsePolicy;

  final ComputeUrlMapPathRuleRouteAction? routeAction;

  final ComputeUrlMapPathRuleUrlRedirect? urlRedirect;

  Map<String, Object?> encode() => {
    'paths': paths.toTfJson(),
    'service': ?service?.encodeAs('self_link').toTfJson(),
    'custom_error_response_policy': ?customErrorResponsePolicy?.encode(),
    'route_action': ?routeAction?.encode(),
    'url_redirect': ?urlRedirect?.encode(),
  };
}

/// Typed helper for the `path_matcher.path_rule.custom_error_response_policy` block of
/// `google_compute_url_map` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ComputeUrlMapCustomErrorResponsePolicy {
  const ComputeUrlMapCustomErrorResponsePolicy({
    this.errorService,
    this.errorResponseRule,
  });

  final RefTo<GoogleComputeBackendBucket>? errorService;

  final List<ComputeUrlMapErrorResponseRule>? errorResponseRule;

  Map<String, Object?> encode() => {
    'error_service': ?errorService?.encodeAs('self_link').toTfJson(),
    if (errorResponseRule != null)
      'error_response_rule': [for (final e in errorResponseRule!) e.encode()],
  };
}

/// Typed helper for the `path_matcher.path_rule.route_action` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathRuleRouteAction {
  const ComputeUrlMapPathRuleRouteAction({
    this.cachePolicy,
    this.corsPolicy,
    this.faultInjectionPolicy,
    this.maxStreamDuration,
    this.requestMirrorPolicy,
    this.retryPolicy,
    this.timeout,
    this.urlRewrite,
    this.weightedBackendServices,
  });

  final ComputeUrlMapDefaultRouteActionCachePolicy? cachePolicy;

  final ComputeUrlMapRouteActionCorsPolicy? corsPolicy;

  final ComputeUrlMapPathRuleFaultInjectionPolicy? faultInjectionPolicy;

  final ComputeUrlMapMaxStreamDuration? maxStreamDuration;

  final ComputeUrlMapRequestMirrorPolicy? requestMirrorPolicy;

  final ComputeUrlMapPathRuleRetryPolicy? retryPolicy;

  final ComputeUrlMapRouteActionTimeout? timeout;

  final ComputeUrlMapUrlRewrite? urlRewrite;

  final List<ComputeUrlMapRouteActionWeightedBackendServices>?
  weightedBackendServices;

  Map<String, Object?> encode() => {
    'cache_policy': ?cachePolicy?.encode(),
    'cors_policy': ?corsPolicy?.encode(),
    'fault_injection_policy': ?faultInjectionPolicy?.encode(),
    'max_stream_duration': ?maxStreamDuration?.encode(),
    'request_mirror_policy': ?requestMirrorPolicy?.encode(),
    'retry_policy': ?retryPolicy?.encode(),
    'timeout': ?timeout?.encode(),
    'url_rewrite': ?urlRewrite?.encode(),
    if (weightedBackendServices != null)
      'weighted_backend_services': [
        for (final e in weightedBackendServices!) e.encode(),
      ],
  };
}

/// Typed helper for the `path_matcher.path_rule.route_action.cors_policy` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapRouteActionCorsPolicy {
  const ComputeUrlMapRouteActionCorsPolicy({
    this.allowCredentials,
    this.allowHeaders,
    this.allowMethods,
    this.allowOriginRegexes,
    this.allowOrigins,
    required this.disabled,
    this.exposeHeaders,
    this.maxAge,
  });

  final TfArg<bool>? allowCredentials;

  final TfArg<List<String>>? allowHeaders;

  final TfArg<List<String>>? allowMethods;

  final TfArg<List<String>>? allowOriginRegexes;

  final TfArg<List<String>>? allowOrigins;

  final TfArg<bool> disabled;

  final TfArg<List<String>>? exposeHeaders;

  final TfArg<num>? maxAge;

  Map<String, Object?> encode() => {
    'allow_credentials': ?allowCredentials?.toTfJson(),
    'allow_headers': ?allowHeaders?.toTfJson(),
    'allow_methods': ?allowMethods?.toTfJson(),
    'allow_origin_regexes': ?allowOriginRegexes?.toTfJson(),
    'allow_origins': ?allowOrigins?.toTfJson(),
    'disabled': disabled.toTfJson(),
    'expose_headers': ?exposeHeaders?.toTfJson(),
    'max_age': ?maxAge?.toTfJson(),
  };
}

/// Typed helper for the `path_matcher.path_rule.route_action.fault_injection_policy` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathRuleFaultInjectionPolicy {
  const ComputeUrlMapPathRuleFaultInjectionPolicy({this.abort, this.delay});

  final ComputeUrlMapFaultInjectionPolicyAbort? abort;

  final ComputeUrlMapPathRuleDelay? delay;

  Map<String, Object?> encode() => {
    'abort': ?abort?.encode(),
    'delay': ?delay?.encode(),
  };
}

/// Typed helper for the `path_matcher.path_rule.route_action.fault_injection_policy.abort` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapFaultInjectionPolicyAbort {
  const ComputeUrlMapFaultInjectionPolicyAbort({
    required this.httpStatus,
    required this.percentage,
  });

  final TfArg<num> httpStatus;

  final TfArg<num> percentage;

  Map<String, Object?> encode() => {
    'http_status': httpStatus.toTfJson(),
    'percentage': percentage.toTfJson(),
  };
}

/// Typed helper for the `path_matcher.path_rule.route_action.fault_injection_policy.delay` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathRuleDelay {
  const ComputeUrlMapPathRuleDelay({
    required this.percentage,
    required this.fixedDelay,
  });

  final TfArg<num> percentage;

  final ComputeUrlMapDelayFixedDelay fixedDelay;

  Map<String, Object?> encode() => {
    'percentage': percentage.toTfJson(),
    'fixed_delay': fixedDelay.encode(),
  };
}

/// Typed helper for the `path_matcher.path_rule.route_action.fault_injection_policy.delay.fixed_delay` block of
/// `google_compute_url_map` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ComputeUrlMapDelayFixedDelay {
  const ComputeUrlMapDelayFixedDelay({this.nanos, required this.seconds});

  final TfArg<num>? nanos;

  final TfArg<String> seconds;

  Map<String, Object?> encode() => {
    'nanos': ?nanos?.toTfJson(),
    'seconds': seconds.toTfJson(),
  };
}

/// Typed helper for the `path_matcher.path_rule.route_action.retry_policy` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathRuleRetryPolicy {
  const ComputeUrlMapPathRuleRetryPolicy({
    this.numRetries,
    this.retryConditions,
    this.perTryTimeout,
  });

  final TfArg<num>? numRetries;

  final TfArg<List<String>>? retryConditions;

  final ComputeUrlMapRetryPolicyPerTryTimeout? perTryTimeout;

  Map<String, Object?> encode() => {
    'num_retries': ?numRetries?.toTfJson(),
    'retry_conditions': ?retryConditions?.toTfJson(),
    'per_try_timeout': ?perTryTimeout?.encode(),
  };
}

/// Typed helper for the `path_matcher.path_rule.route_action.retry_policy.per_try_timeout` block of
/// `google_compute_url_map` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ComputeUrlMapRetryPolicyPerTryTimeout {
  const ComputeUrlMapRetryPolicyPerTryTimeout({
    this.nanos,
    required this.seconds,
  });

  final TfArg<num>? nanos;

  final TfArg<String> seconds;

  Map<String, Object?> encode() => {
    'nanos': ?nanos?.toTfJson(),
    'seconds': seconds.toTfJson(),
  };
}

/// Typed helper for the `path_matcher.path_rule.route_action.timeout` block of
/// `google_compute_url_map` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ComputeUrlMapRouteActionTimeout {
  const ComputeUrlMapRouteActionTimeout({this.nanos, required this.seconds});

  final TfArg<num>? nanos;

  final TfArg<String> seconds;

  Map<String, Object?> encode() => {
    'nanos': ?nanos?.toTfJson(),
    'seconds': seconds.toTfJson(),
  };
}

/// Typed helper for the `path_matcher.path_rule.route_action.weighted_backend_services` block of
/// `google_compute_url_map` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ComputeUrlMapRouteActionWeightedBackendServices {
  const ComputeUrlMapRouteActionWeightedBackendServices({
    required this.backendService,
    required this.weight,
    this.headerAction,
  });

  final RefTo<GoogleComputeBackendService> backendService;

  final TfArg<num> weight;

  final ComputeUrlMapHeaderAction? headerAction;

  Map<String, Object?> encode() => {
    'backend_service': backendService.encodeAs('self_link').toTfJson(),
    'weight': weight.toTfJson(),
    'header_action': ?headerAction?.encode(),
  };
}

/// Typed helper for the `path_matcher.path_rule.url_redirect` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathRuleUrlRedirect {
  const ComputeUrlMapPathRuleUrlRedirect({
    this.hostRedirect,
    this.httpsRedirect,
    this.pathRedirect,
    this.prefixRedirect,
    this.redirectResponseCode,
    required this.stripQuery,
  });

  final TfArg<String>? hostRedirect;

  final TfArg<bool>? httpsRedirect;

  final TfArg<String>? pathRedirect;

  final TfArg<String>? prefixRedirect;

  final TfArg<UrlMapRedirectResponseCode>? redirectResponseCode;

  final TfArg<bool> stripQuery;

  Map<String, Object?> encode() => {
    'host_redirect': ?hostRedirect?.toTfJson(),
    'https_redirect': ?httpsRedirect?.toTfJson(),
    'path_redirect': ?pathRedirect?.toTfJson(),
    'prefix_redirect': ?prefixRedirect?.toTfJson(),
    'redirect_response_code': ?redirectResponseCode?.toTfJson(),
    'strip_query': stripQuery.toTfJson(),
  };
}

/// Typed helper for the `path_matcher.route_rules` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapRouteRules {
  const ComputeUrlMapRouteRules({
    required this.priority,
    this.service,
    this.customErrorResponsePolicy,
    this.headerAction,
    this.matchRules,
    this.routeAction,
    this.urlRedirect,
  });

  final TfArg<num> priority;

  final RefTo<GoogleComputeBackendService>? service;

  final ComputeUrlMapCustomErrorResponsePolicy? customErrorResponsePolicy;

  final ComputeUrlMapHeaderAction? headerAction;

  final List<ComputeUrlMapMatchRules>? matchRules;

  final ComputeUrlMapRouteRulesRouteAction? routeAction;

  final ComputeUrlMapRouteRulesUrlRedirect? urlRedirect;

  Map<String, Object?> encode() => {
    'priority': priority.toTfJson(),
    'service': ?service?.encodeAs('self_link').toTfJson(),
    'custom_error_response_policy': ?customErrorResponsePolicy?.encode(),
    'header_action': ?headerAction?.encode(),
    if (matchRules != null)
      'match_rules': [for (final e in matchRules!) e.encode()],
    'route_action': ?routeAction?.encode(),
    'url_redirect': ?urlRedirect?.encode(),
  };
}

/// Typed helper for the `path_matcher.route_rules.match_rules` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapMatchRules {
  const ComputeUrlMapMatchRules({
    this.fullPathMatch,
    this.ignoreCase,
    this.pathTemplateMatch,
    this.prefixMatch,
    this.regexMatch,
    this.headerMatches,
    this.metadataFilters,
    this.queryParameterMatches,
  });

  final TfArg<String>? fullPathMatch;

  final TfArg<bool>? ignoreCase;

  final TfArg<String>? pathTemplateMatch;

  final TfArg<String>? prefixMatch;

  final TfArg<String>? regexMatch;

  final List<ComputeUrlMapHeaderMatches>? headerMatches;

  final List<ComputeUrlMapMetadataFilters>? metadataFilters;

  final List<ComputeUrlMapQueryParameterMatches>? queryParameterMatches;

  Map<String, Object?> encode() => {
    'full_path_match': ?fullPathMatch?.toTfJson(),
    'ignore_case': ?ignoreCase?.toTfJson(),
    'path_template_match': ?pathTemplateMatch?.toTfJson(),
    'prefix_match': ?prefixMatch?.toTfJson(),
    'regex_match': ?regexMatch?.toTfJson(),
    if (headerMatches != null)
      'header_matches': [for (final e in headerMatches!) e.encode()],
    if (metadataFilters != null)
      'metadata_filters': [for (final e in metadataFilters!) e.encode()],
    if (queryParameterMatches != null)
      'query_parameter_matches': [
        for (final e in queryParameterMatches!) e.encode(),
      ],
  };
}

/// Typed helper for the `path_matcher.route_rules.match_rules.header_matches` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapHeaderMatches {
  const ComputeUrlMapHeaderMatches({
    this.exactMatch,
    required this.headerName,
    this.invertMatch,
    this.prefixMatch,
    this.presentMatch,
    this.regexMatch,
    this.suffixMatch,
    this.rangeMatch,
  });

  final TfArg<String>? exactMatch;

  final TfArg<String> headerName;

  final TfArg<bool>? invertMatch;

  final TfArg<String>? prefixMatch;

  final TfArg<bool>? presentMatch;

  final TfArg<String>? regexMatch;

  final TfArg<String>? suffixMatch;

  final ComputeUrlMapRangeMatch? rangeMatch;

  Map<String, Object?> encode() => {
    'exact_match': ?exactMatch?.toTfJson(),
    'header_name': headerName.toTfJson(),
    'invert_match': ?invertMatch?.toTfJson(),
    'prefix_match': ?prefixMatch?.toTfJson(),
    'present_match': ?presentMatch?.toTfJson(),
    'regex_match': ?regexMatch?.toTfJson(),
    'suffix_match': ?suffixMatch?.toTfJson(),
    'range_match': ?rangeMatch?.encode(),
  };
}

/// Typed helper for the `path_matcher.route_rules.match_rules.header_matches.range_match` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapRangeMatch {
  const ComputeUrlMapRangeMatch({
    required this.rangeEnd,
    required this.rangeStart,
  });

  final TfArg<num> rangeEnd;

  final TfArg<num> rangeStart;

  Map<String, Object?> encode() => {
    'range_end': rangeEnd.toTfJson(),
    'range_start': rangeStart.toTfJson(),
  };
}

/// Typed helper for the `path_matcher.route_rules.match_rules.metadata_filters` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapMetadataFilters {
  const ComputeUrlMapMetadataFilters({
    required this.filterMatchCriteria,
    required this.filterLabels,
  });

  final TfArg<UrlMapMetadataFilterMatchCriteria> filterMatchCriteria;

  final List<ComputeUrlMapFilterLabels> filterLabels;

  Map<String, Object?> encode() => {
    'filter_match_criteria': filterMatchCriteria.toTfJson(),
    'filter_labels': [for (final e in filterLabels) e.encode()],
  };
}

/// Typed helper for the `path_matcher.route_rules.match_rules.metadata_filters.filter_labels` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapFilterLabels {
  const ComputeUrlMapFilterLabels({required this.name, required this.value});

  final TfArg<String> name;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `path_matcher.route_rules.match_rules.query_parameter_matches` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapQueryParameterMatches {
  const ComputeUrlMapQueryParameterMatches({
    this.exactMatch,
    required this.name,
    this.presentMatch,
    this.regexMatch,
  });

  final TfArg<String>? exactMatch;

  final TfArg<String> name;

  final TfArg<bool>? presentMatch;

  final TfArg<String>? regexMatch;

  Map<String, Object?> encode() => {
    'exact_match': ?exactMatch?.toTfJson(),
    'name': name.toTfJson(),
    'present_match': ?presentMatch?.toTfJson(),
    'regex_match': ?regexMatch?.toTfJson(),
  };
}

/// Typed helper for the `path_matcher.route_rules.route_action` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapRouteRulesRouteAction {
  const ComputeUrlMapRouteRulesRouteAction({
    this.cachePolicy,
    this.corsPolicy,
    this.faultInjectionPolicy,
    this.maxStreamDuration,
    this.requestMirrorPolicy,
    this.retryPolicy,
    this.timeout,
    this.urlRewrite,
    this.weightedBackendServices,
  });

  final ComputeUrlMapDefaultRouteActionCachePolicy? cachePolicy;

  final ComputeUrlMapCorsPolicy? corsPolicy;

  final ComputeUrlMapRouteRulesFaultInjectionPolicy? faultInjectionPolicy;

  final ComputeUrlMapMaxStreamDuration? maxStreamDuration;

  final ComputeUrlMapRequestMirrorPolicy? requestMirrorPolicy;

  final ComputeUrlMapRouteRulesRetryPolicy? retryPolicy;

  final ComputeUrlMapRouteActionTimeout? timeout;

  final ComputeUrlMapRouteActionUrlRewrite? urlRewrite;

  final List<ComputeUrlMapRouteActionWeightedBackendServices>?
  weightedBackendServices;

  Map<String, Object?> encode() => {
    'cache_policy': ?cachePolicy?.encode(),
    'cors_policy': ?corsPolicy?.encode(),
    'fault_injection_policy': ?faultInjectionPolicy?.encode(),
    'max_stream_duration': ?maxStreamDuration?.encode(),
    'request_mirror_policy': ?requestMirrorPolicy?.encode(),
    'retry_policy': ?retryPolicy?.encode(),
    'timeout': ?timeout?.encode(),
    'url_rewrite': ?urlRewrite?.encode(),
    if (weightedBackendServices != null)
      'weighted_backend_services': [
        for (final e in weightedBackendServices!) e.encode(),
      ],
  };
}

/// Typed helper for the `path_matcher.route_rules.route_action.fault_injection_policy` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapRouteRulesFaultInjectionPolicy {
  const ComputeUrlMapRouteRulesFaultInjectionPolicy({this.abort, this.delay});

  final ComputeUrlMapAbort? abort;

  final ComputeUrlMapRouteRulesDelay? delay;

  Map<String, Object?> encode() => {
    'abort': ?abort?.encode(),
    'delay': ?delay?.encode(),
  };
}

/// Typed helper for the `path_matcher.route_rules.route_action.fault_injection_policy.delay` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapRouteRulesDelay {
  const ComputeUrlMapRouteRulesDelay({this.percentage, this.fixedDelay});

  final TfArg<num>? percentage;

  final ComputeUrlMapDelayFixedDelay? fixedDelay;

  Map<String, Object?> encode() => {
    'percentage': ?percentage?.toTfJson(),
    'fixed_delay': ?fixedDelay?.encode(),
  };
}

/// Typed helper for the `path_matcher.route_rules.route_action.retry_policy` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapRouteRulesRetryPolicy {
  const ComputeUrlMapRouteRulesRetryPolicy({
    required this.numRetries,
    this.retryConditions,
    this.perTryTimeout,
  });

  final TfArg<num> numRetries;

  final TfArg<List<String>>? retryConditions;

  final ComputeUrlMapRetryPolicyPerTryTimeout? perTryTimeout;

  Map<String, Object?> encode() => {
    'num_retries': numRetries.toTfJson(),
    'retry_conditions': ?retryConditions?.toTfJson(),
    'per_try_timeout': ?perTryTimeout?.encode(),
  };
}

/// Typed helper for the `path_matcher.route_rules.route_action.url_rewrite` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapRouteActionUrlRewrite {
  const ComputeUrlMapRouteActionUrlRewrite({
    this.hostRewrite,
    this.pathPrefixRewrite,
    this.pathTemplateRewrite,
  });

  final TfArg<String>? hostRewrite;

  final TfArg<String>? pathPrefixRewrite;

  final TfArg<String>? pathTemplateRewrite;

  Map<String, Object?> encode() => {
    'host_rewrite': ?hostRewrite?.toTfJson(),
    'path_prefix_rewrite': ?pathPrefixRewrite?.toTfJson(),
    'path_template_rewrite': ?pathTemplateRewrite?.toTfJson(),
  };
}

/// Typed helper for the `path_matcher.route_rules.url_redirect` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapRouteRulesUrlRedirect {
  const ComputeUrlMapRouteRulesUrlRedirect({
    this.hostRedirect,
    this.httpsRedirect,
    this.pathRedirect,
    this.prefixRedirect,
    this.redirectResponseCode,
    this.stripQuery,
  });

  final TfArg<String>? hostRedirect;

  final TfArg<bool>? httpsRedirect;

  final TfArg<String>? pathRedirect;

  final TfArg<String>? prefixRedirect;

  final TfArg<UrlMapRedirectResponseCode>? redirectResponseCode;

  final TfArg<bool>? stripQuery;

  Map<String, Object?> encode() => {
    'host_redirect': ?hostRedirect?.toTfJson(),
    'https_redirect': ?httpsRedirect?.toTfJson(),
    'path_redirect': ?pathRedirect?.toTfJson(),
    'prefix_redirect': ?prefixRedirect?.toTfJson(),
    'redirect_response_code': ?redirectResponseCode?.toTfJson(),
    'strip_query': ?stripQuery?.toTfJson(),
  };
}

/// Typed helper for the `test` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapTest {
  const ComputeUrlMapTest({
    this.description,
    this.expectedOutputUrl,
    this.expectedRedirectResponseCode,
    required this.host,
    required this.path,
    this.service,
    this.headers,
  });

  final TfArg<String>? description;

  final TfArg<String>? expectedOutputUrl;

  final TfArg<num>? expectedRedirectResponseCode;

  final TfArg<String> host;

  final TfArg<String> path;

  final RefTo<GoogleComputeBackendService>? service;

  final List<ComputeUrlMapHeaders>? headers;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expected_output_url': ?expectedOutputUrl?.toTfJson(),
    'expected_redirect_response_code': ?expectedRedirectResponseCode
        ?.toTfJson(),
    'host': host.toTfJson(),
    'path': path.toTfJson(),
    'service': ?service?.encodeAs('self_link').toTfJson(),
    if (headers != null) 'headers': [for (final e in headers!) e.encode()],
  };
}

/// Typed helper for the `test.headers` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapHeaders {
  const ComputeUrlMapHeaders({required this.name, required this.value});

  final TfArg<String> name;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Factory wrapper for `google_compute_url_map`.
///
/// UrlMaps are used to route requests to a backend service based on rules that
/// you define for the host and path of an incoming URL.
///
/// Manages a **global** Cloud Load Balancing URL map -- the layer that
/// routes incoming HTTP(S) requests to one of several
/// `google_compute_backend_service` or `google_compute_backend_bucket`
/// targets based on host + path matching. Regional URL maps live in a
/// separate resource (`google_compute_region_url_map`).
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_compute_url_map.`).
/// - `name`: GCP URL map name. 1-63 chars, RFC 1035
///   (`[a-z]([-a-z0-9]*[a-z0-9])?`).
///
/// Default target (highest fallback):
/// - `default_service`: self-link to the **backend** consulted when no
///   [hostRule] / [pathMatcher] match the incoming request. The link
///   accepts either a
///   [GoogleComputeBackendService] (`.../backendServices/<name>`) **or** a
///   [GoogleComputeBackendBucket] (`.../backendBuckets/<name>`). The GCP
///   API distinguishes by URL segment, not by a separate field. Mutually
///   exclusive with `defaultAction: .defaultUrlRedirect(...)` -- exactly one of the two must be
///   set when no [pathMatcher] entries are present.
///
/// Matching pipeline (request flow):
///
/// ```
/// incoming request
///   -> match Host: header against host_rule.hosts[]
///        -> dispatch to path_matcher named host_rule.path_matcher
///             -> match path against path_matcher.path_rule[].paths[]
///                  -> path_rule.service  (specific backend)
///                  -> OR path_rule.url_redirect
///                  -> OR path_rule.route_action (advanced)
///             -> OR match against path_matcher.route_rules[]
///                  (priority-ordered, header/query-aware)
///             -> fallthrough -> path_matcher.default_service
///   -> fallthrough -> url_map.default_service
/// ```
///
/// Names referenced within a single URL map (`host_rule.path_matcher` ->
/// `path_matcher.name`) are LOCAL to the URL map -- they are NOT
/// `google_compute_*` resource addresses. Service links, in contrast, are
/// full self-links that must point at already-applied backends.
///
/// Example (login backend + static bucket, both routed via host/path):
/// ```dart
/// final urlMap = GoogleComputeUrlMap(
///   localName: 'urlmap',
///   name: TfArg.literal('urlmap-prod'),
///   defaultService: login.ref,
///   hostRule: [
///     ComputeUrlMapHostRule(
///       hosts: TfArg.literal(['mysite.com', 'myothersite.com']),
///       pathMatcher: TfArg.literal('allpaths'),
///     ),
///   ],
///   pathMatcher: [
///     ComputeUrlMapPathMatcher(
///       name: TfArg.literal('allpaths'),
///       defaultService: login.ref,
///       pathRule: [
///         ComputeUrlMapPathRule(
///           paths: TfArg.literal(const ['/home']),
///           service: login.ref,
///         ),
///         ComputeUrlMapPathRule(
///           paths: TfArg.literal(const ['/static']),
///           service: staticBucket.ref,
///         ),
///       ],
///     ),
///   ],
///   test: [
///     ComputeUrlMapTest(
///       host: TfArg.literal('mysite.com'),
///       path: TfArg.literal('/home'),
///     ),
///   ],
/// );
/// ```
///
/// Naming convention: ALL nested helper types in this resource are prefixed
/// `ComputeUrlMap...` (e.g. [ComputeUrlMapHostRule], [ComputeUrlMapPathMatcher],
/// [ComputeUrlMapDefaultUrlRedirect]) to avoid colliding with similarly-named structures
/// in sibling load-balancer resources such as `google_compute_backend_service`.
///
/// Traffic-policy sub-blocks (`path_matcher.default_route_action`,
/// `path_rule.route_action`, `route_rules.route_action`, ...) are typed
/// helpers too (e.g. [ComputeUrlMapPathRuleRouteAction]); the top-level
/// `default_url_redirect` / `default_route_action` pair is the sealed
/// [defaultAction] argument (`.defaultUrlRedirect(...)` /
/// `.defaultRouteAction(...)`).
///
/// Composition pattern: extends `Resource` for
/// runtime behavior.
final class GoogleComputeUrlMap extends Resource {
  static const String tfType = 'google_compute_url_map';

  GoogleComputeUrlMap({
    required super.localName,
    required TfArg<String> name,
    RefTo<GoogleComputeBackendService>? defaultService,
    TfArg<String>? description,
    List<ComputeUrlMapHostRule>? hostRule,
    List<ComputeUrlMapPathMatcher>? pathMatcher,
    List<ComputeUrlMapTest>? test,
    ComputeUrlMapDefaultAction? defaultAction,
    ComputeUrlMapHeaderAction? headerAction,
    TfArg<String>? project,
    ComputeUrlMapDefaultCustomErrorResponsePolicy?
    defaultCustomErrorResponsePolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'default_service': ?defaultService?.encodeAs('self_link'),
           'description': ?description,
           if (hostRule != null)
             'host_rule': TfArg.literal([for (final e in hostRule) e.encode()]),
           if (pathMatcher != null)
             'path_matcher': TfArg.literal([
               for (final e in pathMatcher) e.encode(),
             ]),
           if (test != null)
             'test': TfArg.literal([for (final e in test) e.encode()]),
           ...?defaultAction?.argMap,
           if (headerAction != null)
             'header_action': TfArg.literal(headerAction.encode()),
           'project': ?project,
           if (defaultCustomErrorResponsePolicy != null)
             'default_custom_error_response_policy': TfArg.literal(
               defaultCustomErrorResponsePolicy.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeUrlMapSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeUrlMap>`.
  RefTo<GoogleComputeUrlMap> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `fingerprint` attribute.
  TfRef<String> get fingerprint => TfRef.attribute<String>(this, 'fingerprint');

  /// Reference to `map_id` attribute.
  TfRef<num> get mapId => TfRef.attribute<num>(this, 'map_id');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `default_service` attribute.
  TfRef<String> get defaultServiceRef =>
      TfRef.attribute<String>(this, 'default_service');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');
}
