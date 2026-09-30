// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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
@immutable
final class ComputeUrlMapDefaultCustomErrorResponsePolicy {
  const ComputeUrlMapDefaultCustomErrorResponsePolicy({
    this.errorService,
    this.errorResponseRule,
  });

  final TfArg<String>? errorService;

  final List<ComputeUrlMapDefaultCustomErrorResponsePolicyErrorResponseRule>?
  errorResponseRule;

  Map<String, Object?> encode() => {
    'error_service': ?errorService?.toTfJson(),
    if (errorResponseRule != null)
      'error_response_rule': [for (final e in errorResponseRule!) e.encode()],
  };
}

/// Typed helper for the `default_custom_error_response_policy.error_response_rule` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapDefaultCustomErrorResponsePolicyErrorResponseRule {
  const ComputeUrlMapDefaultCustomErrorResponsePolicyErrorResponseRule({
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

  final ComputeUrlMapDefaultRouteActionCachePolicy? cachePolicy;

  final ComputeUrlMapDefaultRouteActionCorsPolicy? corsPolicy;

  final ComputeUrlMapDefaultRouteActionFaultInjectionPolicy?
  faultInjectionPolicy;

  final ComputeUrlMapDefaultRouteActionMaxStreamDuration? maxStreamDuration;

  final ComputeUrlMapDefaultRouteActionRequestMirrorPolicy? requestMirrorPolicy;

  final ComputeUrlMapDefaultRouteActionRetryPolicy? retryPolicy;

  final ComputeUrlMapDefaultRouteActionTimeout? timeout;

  final ComputeUrlMapDefaultRouteActionUrlRewrite? urlRewrite;

  final List<ComputeUrlMapDefaultRouteActionWeightedBackendServices>?
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

/// Typed helper for the `default_route_action.cache_policy` block of
/// `google_compute_url_map` (derived from provider schema).
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

  final ComputeUrlMapDefaultRouteActionCachePolicyCacheKeyPolicy?
  cacheKeyPolicy;

  final ComputeUrlMapDefaultRouteActionCachePolicyClientTtl? clientTtl;

  final ComputeUrlMapDefaultRouteActionCachePolicyDefaultTtl? defaultTtl;

  final ComputeUrlMapDefaultRouteActionCachePolicyMaxTtl? maxTtl;

  final List<ComputeUrlMapDefaultRouteActionCachePolicyNegativeCachingPolicy>?
  negativeCachingPolicy;

  final ComputeUrlMapDefaultRouteActionCachePolicyServeWhileStale?
  serveWhileStale;

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
final class ComputeUrlMapDefaultRouteActionCachePolicyCacheKeyPolicy {
  const ComputeUrlMapDefaultRouteActionCachePolicyCacheKeyPolicy({
    this.queryParameters,
    this.includeHost,
    this.includeProtocol,
    this.includeQueryString,
    this.includedCookieNames,
    this.includedHeaderNames,
  });

  final ComputeUrlMapDefaultRouteActionCachePolicyCacheKeyPolicyQueryParameters?
  queryParameters;

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
sealed class ComputeUrlMapDefaultRouteActionCachePolicyCacheKeyPolicyQueryParameters {
  const ComputeUrlMapDefaultRouteActionCachePolicyCacheKeyPolicyQueryParameters();

  /// Sets `included_query_parameters`.
  const factory ComputeUrlMapDefaultRouteActionCachePolicyCacheKeyPolicyQueryParameters.includedQueryParameters(
    TfArg<List<String>> includedQueryParameters,
  ) = ComputeUrlMapDefaultRouteActionCachePolicyCacheKeyPolicyQueryParametersIncludedQueryParameters;

  /// Sets `excluded_query_parameters`.
  const factory ComputeUrlMapDefaultRouteActionCachePolicyCacheKeyPolicyQueryParameters.excludedQueryParameters(
    TfArg<List<String>> excludedQueryParameters,
  ) = ComputeUrlMapDefaultRouteActionCachePolicyCacheKeyPolicyQueryParametersExcludedQueryParameters;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [ComputeUrlMapDefaultRouteActionCachePolicyCacheKeyPolicyQueryParameters.includedQueryParameters] choice: sets `included_query_parameters`.
final class ComputeUrlMapDefaultRouteActionCachePolicyCacheKeyPolicyQueryParametersIncludedQueryParameters
    extends
        ComputeUrlMapDefaultRouteActionCachePolicyCacheKeyPolicyQueryParameters {
  const ComputeUrlMapDefaultRouteActionCachePolicyCacheKeyPolicyQueryParametersIncludedQueryParameters(
    this.includedQueryParameters,
  );

  final TfArg<List<String>> includedQueryParameters;

  @override
  String get blockKey => 'included_query_parameters';

  @override
  Map<String, Object?> encode() => {
    'included_query_parameters': includedQueryParameters.toTfJson(),
  };
}

/// The [ComputeUrlMapDefaultRouteActionCachePolicyCacheKeyPolicyQueryParameters.excludedQueryParameters] choice: sets `excluded_query_parameters`.
final class ComputeUrlMapDefaultRouteActionCachePolicyCacheKeyPolicyQueryParametersExcludedQueryParameters
    extends
        ComputeUrlMapDefaultRouteActionCachePolicyCacheKeyPolicyQueryParameters {
  const ComputeUrlMapDefaultRouteActionCachePolicyCacheKeyPolicyQueryParametersExcludedQueryParameters(
    this.excludedQueryParameters,
  );

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
@immutable
final class ComputeUrlMapDefaultRouteActionCachePolicyClientTtl {
  const ComputeUrlMapDefaultRouteActionCachePolicyClientTtl({
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

/// Typed helper for the `default_route_action.cache_policy.default_ttl` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapDefaultRouteActionCachePolicyDefaultTtl {
  const ComputeUrlMapDefaultRouteActionCachePolicyDefaultTtl({
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

/// Typed helper for the `default_route_action.cache_policy.max_ttl` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapDefaultRouteActionCachePolicyMaxTtl {
  const ComputeUrlMapDefaultRouteActionCachePolicyMaxTtl({
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

/// Typed helper for the `default_route_action.cache_policy.negative_caching_policy` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapDefaultRouteActionCachePolicyNegativeCachingPolicy {
  const ComputeUrlMapDefaultRouteActionCachePolicyNegativeCachingPolicy({
    this.code,
    this.ttl,
  });

  final TfArg<num>? code;

  final ComputeUrlMapDefaultRouteActionCachePolicyNegativeCachingPolicyTtl? ttl;

  Map<String, Object?> encode() => {
    'code': ?code?.toTfJson(),
    'ttl': ?ttl?.encode(),
  };
}

/// Typed helper for the `default_route_action.cache_policy.negative_caching_policy.ttl` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapDefaultRouteActionCachePolicyNegativeCachingPolicyTtl {
  const ComputeUrlMapDefaultRouteActionCachePolicyNegativeCachingPolicyTtl({
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

/// Typed helper for the `default_route_action.cache_policy.serve_while_stale` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapDefaultRouteActionCachePolicyServeWhileStale {
  const ComputeUrlMapDefaultRouteActionCachePolicyServeWhileStale({
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

/// Typed helper for the `default_route_action.cors_policy` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapDefaultRouteActionCorsPolicy {
  const ComputeUrlMapDefaultRouteActionCorsPolicy({
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
@immutable
final class ComputeUrlMapDefaultRouteActionFaultInjectionPolicy {
  const ComputeUrlMapDefaultRouteActionFaultInjectionPolicy({
    this.abort,
    this.delay,
  });

  final ComputeUrlMapDefaultRouteActionFaultInjectionPolicyAbort? abort;

  final ComputeUrlMapDefaultRouteActionFaultInjectionPolicyDelay? delay;

  Map<String, Object?> encode() => {
    'abort': ?abort?.encode(),
    'delay': ?delay?.encode(),
  };
}

/// Typed helper for the `default_route_action.fault_injection_policy.abort` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapDefaultRouteActionFaultInjectionPolicyAbort {
  const ComputeUrlMapDefaultRouteActionFaultInjectionPolicyAbort({
    this.httpStatus,
    this.percentage,
  });

  final TfArg<num>? httpStatus;

  final TfArg<num>? percentage;

  Map<String, Object?> encode() => {
    'http_status': ?httpStatus?.toTfJson(),
    'percentage': ?percentage?.toTfJson(),
  };
}

/// Typed helper for the `default_route_action.fault_injection_policy.delay` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapDefaultRouteActionFaultInjectionPolicyDelay {
  const ComputeUrlMapDefaultRouteActionFaultInjectionPolicyDelay({
    this.percentage,
    this.fixedDelay,
  });

  final TfArg<num>? percentage;

  final ComputeUrlMapDefaultRouteActionFaultInjectionPolicyDelayFixedDelay?
  fixedDelay;

  Map<String, Object?> encode() => {
    'percentage': ?percentage?.toTfJson(),
    'fixed_delay': ?fixedDelay?.encode(),
  };
}

/// Typed helper for the `default_route_action.fault_injection_policy.delay.fixed_delay` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapDefaultRouteActionFaultInjectionPolicyDelayFixedDelay {
  const ComputeUrlMapDefaultRouteActionFaultInjectionPolicyDelayFixedDelay({
    this.nanos,
    this.seconds,
  });

  final TfArg<num>? nanos;

  final TfArg<String>? seconds;

  Map<String, Object?> encode() => {
    'nanos': ?nanos?.toTfJson(),
    'seconds': ?seconds?.toTfJson(),
  };
}

/// Typed helper for the `default_route_action.max_stream_duration` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapDefaultRouteActionMaxStreamDuration {
  const ComputeUrlMapDefaultRouteActionMaxStreamDuration({
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

/// Typed helper for the `default_route_action.request_mirror_policy` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapDefaultRouteActionRequestMirrorPolicy {
  const ComputeUrlMapDefaultRouteActionRequestMirrorPolicy({
    required this.backendService,
  });

  final TfArg<String> backendService;

  Map<String, Object?> encode() => {
    'backend_service': backendService.toTfJson(),
  };
}

/// Typed helper for the `default_route_action.retry_policy` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapDefaultRouteActionRetryPolicy {
  const ComputeUrlMapDefaultRouteActionRetryPolicy({
    this.numRetries,
    this.retryConditions,
    this.perTryTimeout,
  });

  final TfArg<num>? numRetries;

  final TfArg<List<String>>? retryConditions;

  final ComputeUrlMapDefaultRouteActionRetryPolicyPerTryTimeout? perTryTimeout;

  Map<String, Object?> encode() => {
    'num_retries': ?numRetries?.toTfJson(),
    'retry_conditions': ?retryConditions?.toTfJson(),
    'per_try_timeout': ?perTryTimeout?.encode(),
  };
}

/// Typed helper for the `default_route_action.retry_policy.per_try_timeout` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapDefaultRouteActionRetryPolicyPerTryTimeout {
  const ComputeUrlMapDefaultRouteActionRetryPolicyPerTryTimeout({
    this.nanos,
    this.seconds,
  });

  final TfArg<num>? nanos;

  final TfArg<String>? seconds;

  Map<String, Object?> encode() => {
    'nanos': ?nanos?.toTfJson(),
    'seconds': ?seconds?.toTfJson(),
  };
}

/// Typed helper for the `default_route_action.timeout` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapDefaultRouteActionTimeout {
  const ComputeUrlMapDefaultRouteActionTimeout({this.nanos, this.seconds});

  final TfArg<num>? nanos;

  final TfArg<String>? seconds;

  Map<String, Object?> encode() => {
    'nanos': ?nanos?.toTfJson(),
    'seconds': ?seconds?.toTfJson(),
  };
}

/// Typed helper for the `default_route_action.url_rewrite` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapDefaultRouteActionUrlRewrite {
  const ComputeUrlMapDefaultRouteActionUrlRewrite({
    this.hostRewrite,
    this.pathPrefixRewrite,
  });

  final TfArg<String>? hostRewrite;

  final TfArg<String>? pathPrefixRewrite;

  Map<String, Object?> encode() => {
    'host_rewrite': ?hostRewrite?.toTfJson(),
    'path_prefix_rewrite': ?pathPrefixRewrite?.toTfJson(),
  };
}

/// Typed helper for the `default_route_action.weighted_backend_services` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapDefaultRouteActionWeightedBackendServices {
  const ComputeUrlMapDefaultRouteActionWeightedBackendServices({
    this.backendService,
    this.weight,
    this.headerAction,
  });

  final TfArg<String>? backendService;

  final TfArg<num>? weight;

  final ComputeUrlMapDefaultRouteActionWeightedBackendServicesHeaderAction?
  headerAction;

  Map<String, Object?> encode() => {
    'backend_service': ?backendService?.toTfJson(),
    'weight': ?weight?.toTfJson(),
    'header_action': ?headerAction?.encode(),
  };
}

/// Typed helper for the `default_route_action.weighted_backend_services.header_action` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapDefaultRouteActionWeightedBackendServicesHeaderAction {
  const ComputeUrlMapDefaultRouteActionWeightedBackendServicesHeaderAction({
    this.requestHeadersToRemove,
    this.responseHeadersToRemove,
    this.requestHeadersToAdd,
    this.responseHeadersToAdd,
  });

  final TfArg<List<String>>? requestHeadersToRemove;

  final TfArg<List<String>>? responseHeadersToRemove;

  final List<
    ComputeUrlMapDefaultRouteActionWeightedBackendServicesHeaderActionRequestHeadersToAdd
  >?
  requestHeadersToAdd;

  final List<
    ComputeUrlMapDefaultRouteActionWeightedBackendServicesHeaderActionResponseHeadersToAdd
  >?
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
@immutable
final class ComputeUrlMapDefaultRouteActionWeightedBackendServicesHeaderActionRequestHeadersToAdd {
  const ComputeUrlMapDefaultRouteActionWeightedBackendServicesHeaderActionRequestHeadersToAdd({
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
@immutable
final class ComputeUrlMapDefaultRouteActionWeightedBackendServicesHeaderActionResponseHeadersToAdd {
  const ComputeUrlMapDefaultRouteActionWeightedBackendServicesHeaderActionResponseHeadersToAdd({
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

/// Typed helper for the `header_action.request_headers_to_add` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapHeaderActionRequestHeadersToAdd {
  const ComputeUrlMapHeaderActionRequestHeadersToAdd({
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
@immutable
final class ComputeUrlMapHeaderActionResponseHeadersToAdd {
  const ComputeUrlMapHeaderActionResponseHeadersToAdd({
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

  final TfArg<String>? defaultService;

  final TfArg<String>? description;

  final TfArg<String> name;

  final ComputeUrlMapPathMatcherDefaultCustomErrorResponsePolicy?
  defaultCustomErrorResponsePolicy;

  final ComputeUrlMapPathMatcherDefaultRouteAction? defaultRouteAction;

  final ComputeUrlMapPathMatcherDefaultUrlRedirect? defaultUrlRedirect;

  final ComputeUrlMapPathMatcherHeaderAction? headerAction;

  final List<ComputeUrlMapPathMatcherPathRule>? pathRule;

  final List<ComputeUrlMapPathMatcherRouteRules>? routeRules;

  Map<String, Object?> encode() => {
    'default_service': ?defaultService?.toTfJson(),
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

/// Typed helper for the `path_matcher.default_custom_error_response_policy` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherDefaultCustomErrorResponsePolicy {
  const ComputeUrlMapPathMatcherDefaultCustomErrorResponsePolicy({
    this.errorService,
    this.errorResponseRule,
  });

  final TfArg<String>? errorService;

  final List<
    ComputeUrlMapPathMatcherDefaultCustomErrorResponsePolicyErrorResponseRule
  >?
  errorResponseRule;

  Map<String, Object?> encode() => {
    'error_service': ?errorService?.toTfJson(),
    if (errorResponseRule != null)
      'error_response_rule': [for (final e in errorResponseRule!) e.encode()],
  };
}

/// Typed helper for the `path_matcher.default_custom_error_response_policy.error_response_rule` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherDefaultCustomErrorResponsePolicyErrorResponseRule {
  const ComputeUrlMapPathMatcherDefaultCustomErrorResponsePolicyErrorResponseRule({
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

  final ComputeUrlMapPathMatcherDefaultRouteActionCachePolicy? cachePolicy;

  final ComputeUrlMapPathMatcherDefaultRouteActionCorsPolicy? corsPolicy;

  final ComputeUrlMapPathMatcherDefaultRouteActionFaultInjectionPolicy?
  faultInjectionPolicy;

  final ComputeUrlMapPathMatcherDefaultRouteActionMaxStreamDuration?
  maxStreamDuration;

  final ComputeUrlMapPathMatcherDefaultRouteActionRequestMirrorPolicy?
  requestMirrorPolicy;

  final ComputeUrlMapPathMatcherDefaultRouteActionRetryPolicy? retryPolicy;

  final ComputeUrlMapPathMatcherDefaultRouteActionTimeout? timeout;

  final ComputeUrlMapPathMatcherDefaultRouteActionUrlRewrite? urlRewrite;

  final List<ComputeUrlMapPathMatcherDefaultRouteActionWeightedBackendServices>?
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

/// Typed helper for the `path_matcher.default_route_action.cache_policy` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherDefaultRouteActionCachePolicy {
  const ComputeUrlMapPathMatcherDefaultRouteActionCachePolicy({
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

  final ComputeUrlMapPathMatcherDefaultRouteActionCachePolicyCacheKeyPolicy?
  cacheKeyPolicy;

  final ComputeUrlMapPathMatcherDefaultRouteActionCachePolicyClientTtl?
  clientTtl;

  final ComputeUrlMapPathMatcherDefaultRouteActionCachePolicyDefaultTtl?
  defaultTtl;

  final ComputeUrlMapPathMatcherDefaultRouteActionCachePolicyMaxTtl? maxTtl;

  final List<
    ComputeUrlMapPathMatcherDefaultRouteActionCachePolicyNegativeCachingPolicy
  >?
  negativeCachingPolicy;

  final ComputeUrlMapPathMatcherDefaultRouteActionCachePolicyServeWhileStale?
  serveWhileStale;

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
@immutable
final class ComputeUrlMapPathMatcherDefaultRouteActionCachePolicyCacheKeyPolicy {
  const ComputeUrlMapPathMatcherDefaultRouteActionCachePolicyCacheKeyPolicy({
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

/// Typed helper for the `path_matcher.default_route_action.cache_policy.client_ttl` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherDefaultRouteActionCachePolicyClientTtl {
  const ComputeUrlMapPathMatcherDefaultRouteActionCachePolicyClientTtl({
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

/// Typed helper for the `path_matcher.default_route_action.cache_policy.default_ttl` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherDefaultRouteActionCachePolicyDefaultTtl {
  const ComputeUrlMapPathMatcherDefaultRouteActionCachePolicyDefaultTtl({
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

/// Typed helper for the `path_matcher.default_route_action.cache_policy.max_ttl` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherDefaultRouteActionCachePolicyMaxTtl {
  const ComputeUrlMapPathMatcherDefaultRouteActionCachePolicyMaxTtl({
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

/// Typed helper for the `path_matcher.default_route_action.cache_policy.negative_caching_policy` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherDefaultRouteActionCachePolicyNegativeCachingPolicy {
  const ComputeUrlMapPathMatcherDefaultRouteActionCachePolicyNegativeCachingPolicy({
    this.code,
    this.ttl,
  });

  final TfArg<num>? code;

  final ComputeUrlMapPathMatcherDefaultRouteActionCachePolicyNegativeCachingPolicyTtl?
  ttl;

  Map<String, Object?> encode() => {
    'code': ?code?.toTfJson(),
    'ttl': ?ttl?.encode(),
  };
}

/// Typed helper for the `path_matcher.default_route_action.cache_policy.negative_caching_policy.ttl` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherDefaultRouteActionCachePolicyNegativeCachingPolicyTtl {
  const ComputeUrlMapPathMatcherDefaultRouteActionCachePolicyNegativeCachingPolicyTtl({
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

/// Typed helper for the `path_matcher.default_route_action.cache_policy.serve_while_stale` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherDefaultRouteActionCachePolicyServeWhileStale {
  const ComputeUrlMapPathMatcherDefaultRouteActionCachePolicyServeWhileStale({
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

/// Typed helper for the `path_matcher.default_route_action.cors_policy` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherDefaultRouteActionCorsPolicy {
  const ComputeUrlMapPathMatcherDefaultRouteActionCorsPolicy({
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

/// Typed helper for the `path_matcher.default_route_action.fault_injection_policy` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherDefaultRouteActionFaultInjectionPolicy {
  const ComputeUrlMapPathMatcherDefaultRouteActionFaultInjectionPolicy({
    this.abort,
    this.delay,
  });

  final ComputeUrlMapPathMatcherDefaultRouteActionFaultInjectionPolicyAbort?
  abort;

  final ComputeUrlMapPathMatcherDefaultRouteActionFaultInjectionPolicyDelay?
  delay;

  Map<String, Object?> encode() => {
    'abort': ?abort?.encode(),
    'delay': ?delay?.encode(),
  };
}

/// Typed helper for the `path_matcher.default_route_action.fault_injection_policy.abort` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherDefaultRouteActionFaultInjectionPolicyAbort {
  const ComputeUrlMapPathMatcherDefaultRouteActionFaultInjectionPolicyAbort({
    this.httpStatus,
    this.percentage,
  });

  final TfArg<num>? httpStatus;

  final TfArg<num>? percentage;

  Map<String, Object?> encode() => {
    'http_status': ?httpStatus?.toTfJson(),
    'percentage': ?percentage?.toTfJson(),
  };
}

/// Typed helper for the `path_matcher.default_route_action.fault_injection_policy.delay` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherDefaultRouteActionFaultInjectionPolicyDelay {
  const ComputeUrlMapPathMatcherDefaultRouteActionFaultInjectionPolicyDelay({
    this.percentage,
    this.fixedDelay,
  });

  final TfArg<num>? percentage;

  final ComputeUrlMapPathMatcherDefaultRouteActionFaultInjectionPolicyDelayFixedDelay?
  fixedDelay;

  Map<String, Object?> encode() => {
    'percentage': ?percentage?.toTfJson(),
    'fixed_delay': ?fixedDelay?.encode(),
  };
}

/// Typed helper for the `path_matcher.default_route_action.fault_injection_policy.delay.fixed_delay` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherDefaultRouteActionFaultInjectionPolicyDelayFixedDelay {
  const ComputeUrlMapPathMatcherDefaultRouteActionFaultInjectionPolicyDelayFixedDelay({
    this.nanos,
    this.seconds,
  });

  final TfArg<num>? nanos;

  final TfArg<String>? seconds;

  Map<String, Object?> encode() => {
    'nanos': ?nanos?.toTfJson(),
    'seconds': ?seconds?.toTfJson(),
  };
}

/// Typed helper for the `path_matcher.default_route_action.max_stream_duration` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherDefaultRouteActionMaxStreamDuration {
  const ComputeUrlMapPathMatcherDefaultRouteActionMaxStreamDuration({
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

/// Typed helper for the `path_matcher.default_route_action.request_mirror_policy` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherDefaultRouteActionRequestMirrorPolicy {
  const ComputeUrlMapPathMatcherDefaultRouteActionRequestMirrorPolicy({
    required this.backendService,
  });

  final TfArg<String> backendService;

  Map<String, Object?> encode() => {
    'backend_service': backendService.toTfJson(),
  };
}

/// Typed helper for the `path_matcher.default_route_action.retry_policy` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherDefaultRouteActionRetryPolicy {
  const ComputeUrlMapPathMatcherDefaultRouteActionRetryPolicy({
    this.numRetries,
    this.retryConditions,
    this.perTryTimeout,
  });

  final TfArg<num>? numRetries;

  final TfArg<List<String>>? retryConditions;

  final ComputeUrlMapPathMatcherDefaultRouteActionRetryPolicyPerTryTimeout?
  perTryTimeout;

  Map<String, Object?> encode() => {
    'num_retries': ?numRetries?.toTfJson(),
    'retry_conditions': ?retryConditions?.toTfJson(),
    'per_try_timeout': ?perTryTimeout?.encode(),
  };
}

/// Typed helper for the `path_matcher.default_route_action.retry_policy.per_try_timeout` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherDefaultRouteActionRetryPolicyPerTryTimeout {
  const ComputeUrlMapPathMatcherDefaultRouteActionRetryPolicyPerTryTimeout({
    this.nanos,
    this.seconds,
  });

  final TfArg<num>? nanos;

  final TfArg<String>? seconds;

  Map<String, Object?> encode() => {
    'nanos': ?nanos?.toTfJson(),
    'seconds': ?seconds?.toTfJson(),
  };
}

/// Typed helper for the `path_matcher.default_route_action.timeout` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherDefaultRouteActionTimeout {
  const ComputeUrlMapPathMatcherDefaultRouteActionTimeout({
    this.nanos,
    this.seconds,
  });

  final TfArg<num>? nanos;

  final TfArg<String>? seconds;

  Map<String, Object?> encode() => {
    'nanos': ?nanos?.toTfJson(),
    'seconds': ?seconds?.toTfJson(),
  };
}

/// Typed helper for the `path_matcher.default_route_action.url_rewrite` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherDefaultRouteActionUrlRewrite {
  const ComputeUrlMapPathMatcherDefaultRouteActionUrlRewrite({
    this.hostRewrite,
    this.pathPrefixRewrite,
  });

  final TfArg<String>? hostRewrite;

  final TfArg<String>? pathPrefixRewrite;

  Map<String, Object?> encode() => {
    'host_rewrite': ?hostRewrite?.toTfJson(),
    'path_prefix_rewrite': ?pathPrefixRewrite?.toTfJson(),
  };
}

/// Typed helper for the `path_matcher.default_route_action.weighted_backend_services` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherDefaultRouteActionWeightedBackendServices {
  const ComputeUrlMapPathMatcherDefaultRouteActionWeightedBackendServices({
    this.backendService,
    this.weight,
    this.headerAction,
  });

  final TfArg<String>? backendService;

  final TfArg<num>? weight;

  final ComputeUrlMapPathMatcherDefaultRouteActionWeightedBackendServicesHeaderAction?
  headerAction;

  Map<String, Object?> encode() => {
    'backend_service': ?backendService?.toTfJson(),
    'weight': ?weight?.toTfJson(),
    'header_action': ?headerAction?.encode(),
  };
}

/// Typed helper for the `path_matcher.default_route_action.weighted_backend_services.header_action` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherDefaultRouteActionWeightedBackendServicesHeaderAction {
  const ComputeUrlMapPathMatcherDefaultRouteActionWeightedBackendServicesHeaderAction({
    this.requestHeadersToRemove,
    this.responseHeadersToRemove,
    this.requestHeadersToAdd,
    this.responseHeadersToAdd,
  });

  final TfArg<List<String>>? requestHeadersToRemove;

  final TfArg<List<String>>? responseHeadersToRemove;

  final List<
    ComputeUrlMapPathMatcherDefaultRouteActionWeightedBackendServicesHeaderActionRequestHeadersToAdd
  >?
  requestHeadersToAdd;

  final List<
    ComputeUrlMapPathMatcherDefaultRouteActionWeightedBackendServicesHeaderActionResponseHeadersToAdd
  >?
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

/// Typed helper for the `path_matcher.default_route_action.weighted_backend_services.header_action.request_headers_to_add` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherDefaultRouteActionWeightedBackendServicesHeaderActionRequestHeadersToAdd {
  const ComputeUrlMapPathMatcherDefaultRouteActionWeightedBackendServicesHeaderActionRequestHeadersToAdd({
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

/// Typed helper for the `path_matcher.default_route_action.weighted_backend_services.header_action.response_headers_to_add` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherDefaultRouteActionWeightedBackendServicesHeaderActionResponseHeadersToAdd {
  const ComputeUrlMapPathMatcherDefaultRouteActionWeightedBackendServicesHeaderActionResponseHeadersToAdd({
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

/// Typed helper for the `path_matcher.default_url_redirect` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherDefaultUrlRedirect {
  const ComputeUrlMapPathMatcherDefaultUrlRedirect({
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

/// Typed helper for the `path_matcher.header_action` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherHeaderAction {
  const ComputeUrlMapPathMatcherHeaderAction({
    this.requestHeadersToRemove,
    this.responseHeadersToRemove,
    this.requestHeadersToAdd,
    this.responseHeadersToAdd,
  });

  final TfArg<List<String>>? requestHeadersToRemove;

  final TfArg<List<String>>? responseHeadersToRemove;

  final List<ComputeUrlMapPathMatcherHeaderActionRequestHeadersToAdd>?
  requestHeadersToAdd;

  final List<ComputeUrlMapPathMatcherHeaderActionResponseHeadersToAdd>?
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

/// Typed helper for the `path_matcher.header_action.request_headers_to_add` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherHeaderActionRequestHeadersToAdd {
  const ComputeUrlMapPathMatcherHeaderActionRequestHeadersToAdd({
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

/// Typed helper for the `path_matcher.header_action.response_headers_to_add` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherHeaderActionResponseHeadersToAdd {
  const ComputeUrlMapPathMatcherHeaderActionResponseHeadersToAdd({
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

/// Typed helper for the `path_matcher.path_rule` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherPathRule {
  const ComputeUrlMapPathMatcherPathRule({
    required this.paths,
    this.service,
    this.customErrorResponsePolicy,
    this.routeAction,
    this.urlRedirect,
  });

  final TfArg<List<String>> paths;

  final TfArg<String>? service;

  final ComputeUrlMapPathMatcherPathRuleCustomErrorResponsePolicy?
  customErrorResponsePolicy;

  final ComputeUrlMapPathMatcherPathRuleRouteAction? routeAction;

  final ComputeUrlMapPathMatcherPathRuleUrlRedirect? urlRedirect;

  Map<String, Object?> encode() => {
    'paths': paths.toTfJson(),
    'service': ?service?.toTfJson(),
    'custom_error_response_policy': ?customErrorResponsePolicy?.encode(),
    'route_action': ?routeAction?.encode(),
    'url_redirect': ?urlRedirect?.encode(),
  };
}

/// Typed helper for the `path_matcher.path_rule.custom_error_response_policy` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherPathRuleCustomErrorResponsePolicy {
  const ComputeUrlMapPathMatcherPathRuleCustomErrorResponsePolicy({
    this.errorService,
    this.errorResponseRule,
  });

  final TfArg<String>? errorService;

  final List<
    ComputeUrlMapPathMatcherPathRuleCustomErrorResponsePolicyErrorResponseRule
  >?
  errorResponseRule;

  Map<String, Object?> encode() => {
    'error_service': ?errorService?.toTfJson(),
    if (errorResponseRule != null)
      'error_response_rule': [for (final e in errorResponseRule!) e.encode()],
  };
}

/// Typed helper for the `path_matcher.path_rule.custom_error_response_policy.error_response_rule` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherPathRuleCustomErrorResponsePolicyErrorResponseRule {
  const ComputeUrlMapPathMatcherPathRuleCustomErrorResponsePolicyErrorResponseRule({
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

/// Typed helper for the `path_matcher.path_rule.route_action` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherPathRuleRouteAction {
  const ComputeUrlMapPathMatcherPathRuleRouteAction({
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

  final ComputeUrlMapPathMatcherPathRuleRouteActionCachePolicy? cachePolicy;

  final ComputeUrlMapPathMatcherPathRuleRouteActionCorsPolicy? corsPolicy;

  final ComputeUrlMapPathMatcherPathRuleRouteActionFaultInjectionPolicy?
  faultInjectionPolicy;

  final ComputeUrlMapPathMatcherPathRuleRouteActionMaxStreamDuration?
  maxStreamDuration;

  final ComputeUrlMapPathMatcherPathRuleRouteActionRequestMirrorPolicy?
  requestMirrorPolicy;

  final ComputeUrlMapPathMatcherPathRuleRouteActionRetryPolicy? retryPolicy;

  final ComputeUrlMapPathMatcherPathRuleRouteActionTimeout? timeout;

  final ComputeUrlMapPathMatcherPathRuleRouteActionUrlRewrite? urlRewrite;

  final List<
    ComputeUrlMapPathMatcherPathRuleRouteActionWeightedBackendServices
  >?
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

/// Typed helper for the `path_matcher.path_rule.route_action.cache_policy` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherPathRuleRouteActionCachePolicy {
  const ComputeUrlMapPathMatcherPathRuleRouteActionCachePolicy({
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

  final ComputeUrlMapPathMatcherPathRuleRouteActionCachePolicyCacheKeyPolicy?
  cacheKeyPolicy;

  final ComputeUrlMapPathMatcherPathRuleRouteActionCachePolicyClientTtl?
  clientTtl;

  final ComputeUrlMapPathMatcherPathRuleRouteActionCachePolicyDefaultTtl?
  defaultTtl;

  final ComputeUrlMapPathMatcherPathRuleRouteActionCachePolicyMaxTtl? maxTtl;

  final List<
    ComputeUrlMapPathMatcherPathRuleRouteActionCachePolicyNegativeCachingPolicy
  >?
  negativeCachingPolicy;

  final ComputeUrlMapPathMatcherPathRuleRouteActionCachePolicyServeWhileStale?
  serveWhileStale;

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

/// Typed helper for the `path_matcher.path_rule.route_action.cache_policy.cache_key_policy` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherPathRuleRouteActionCachePolicyCacheKeyPolicy {
  const ComputeUrlMapPathMatcherPathRuleRouteActionCachePolicyCacheKeyPolicy({
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

/// Typed helper for the `path_matcher.path_rule.route_action.cache_policy.client_ttl` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherPathRuleRouteActionCachePolicyClientTtl {
  const ComputeUrlMapPathMatcherPathRuleRouteActionCachePolicyClientTtl({
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

/// Typed helper for the `path_matcher.path_rule.route_action.cache_policy.default_ttl` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherPathRuleRouteActionCachePolicyDefaultTtl {
  const ComputeUrlMapPathMatcherPathRuleRouteActionCachePolicyDefaultTtl({
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

/// Typed helper for the `path_matcher.path_rule.route_action.cache_policy.max_ttl` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherPathRuleRouteActionCachePolicyMaxTtl {
  const ComputeUrlMapPathMatcherPathRuleRouteActionCachePolicyMaxTtl({
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

/// Typed helper for the `path_matcher.path_rule.route_action.cache_policy.negative_caching_policy` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherPathRuleRouteActionCachePolicyNegativeCachingPolicy {
  const ComputeUrlMapPathMatcherPathRuleRouteActionCachePolicyNegativeCachingPolicy({
    this.code,
    this.ttl,
  });

  final TfArg<num>? code;

  final ComputeUrlMapPathMatcherPathRuleRouteActionCachePolicyNegativeCachingPolicyTtl?
  ttl;

  Map<String, Object?> encode() => {
    'code': ?code?.toTfJson(),
    'ttl': ?ttl?.encode(),
  };
}

/// Typed helper for the `path_matcher.path_rule.route_action.cache_policy.negative_caching_policy.ttl` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherPathRuleRouteActionCachePolicyNegativeCachingPolicyTtl {
  const ComputeUrlMapPathMatcherPathRuleRouteActionCachePolicyNegativeCachingPolicyTtl({
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

/// Typed helper for the `path_matcher.path_rule.route_action.cache_policy.serve_while_stale` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherPathRuleRouteActionCachePolicyServeWhileStale {
  const ComputeUrlMapPathMatcherPathRuleRouteActionCachePolicyServeWhileStale({
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

/// Typed helper for the `path_matcher.path_rule.route_action.cors_policy` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherPathRuleRouteActionCorsPolicy {
  const ComputeUrlMapPathMatcherPathRuleRouteActionCorsPolicy({
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
final class ComputeUrlMapPathMatcherPathRuleRouteActionFaultInjectionPolicy {
  const ComputeUrlMapPathMatcherPathRuleRouteActionFaultInjectionPolicy({
    this.abort,
    this.delay,
  });

  final ComputeUrlMapPathMatcherPathRuleRouteActionFaultInjectionPolicyAbort?
  abort;

  final ComputeUrlMapPathMatcherPathRuleRouteActionFaultInjectionPolicyDelay?
  delay;

  Map<String, Object?> encode() => {
    'abort': ?abort?.encode(),
    'delay': ?delay?.encode(),
  };
}

/// Typed helper for the `path_matcher.path_rule.route_action.fault_injection_policy.abort` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherPathRuleRouteActionFaultInjectionPolicyAbort {
  const ComputeUrlMapPathMatcherPathRuleRouteActionFaultInjectionPolicyAbort({
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
final class ComputeUrlMapPathMatcherPathRuleRouteActionFaultInjectionPolicyDelay {
  const ComputeUrlMapPathMatcherPathRuleRouteActionFaultInjectionPolicyDelay({
    required this.percentage,
    required this.fixedDelay,
  });

  final TfArg<num> percentage;

  final ComputeUrlMapPathMatcherPathRuleRouteActionFaultInjectionPolicyDelayFixedDelay
  fixedDelay;

  Map<String, Object?> encode() => {
    'percentage': percentage.toTfJson(),
    'fixed_delay': fixedDelay.encode(),
  };
}

/// Typed helper for the `path_matcher.path_rule.route_action.fault_injection_policy.delay.fixed_delay` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherPathRuleRouteActionFaultInjectionPolicyDelayFixedDelay {
  const ComputeUrlMapPathMatcherPathRuleRouteActionFaultInjectionPolicyDelayFixedDelay({
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

/// Typed helper for the `path_matcher.path_rule.route_action.max_stream_duration` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherPathRuleRouteActionMaxStreamDuration {
  const ComputeUrlMapPathMatcherPathRuleRouteActionMaxStreamDuration({
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

/// Typed helper for the `path_matcher.path_rule.route_action.request_mirror_policy` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherPathRuleRouteActionRequestMirrorPolicy {
  const ComputeUrlMapPathMatcherPathRuleRouteActionRequestMirrorPolicy({
    required this.backendService,
  });

  final TfArg<String> backendService;

  Map<String, Object?> encode() => {
    'backend_service': backendService.toTfJson(),
  };
}

/// Typed helper for the `path_matcher.path_rule.route_action.retry_policy` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherPathRuleRouteActionRetryPolicy {
  const ComputeUrlMapPathMatcherPathRuleRouteActionRetryPolicy({
    this.numRetries,
    this.retryConditions,
    this.perTryTimeout,
  });

  final TfArg<num>? numRetries;

  final TfArg<List<String>>? retryConditions;

  final ComputeUrlMapPathMatcherPathRuleRouteActionRetryPolicyPerTryTimeout?
  perTryTimeout;

  Map<String, Object?> encode() => {
    'num_retries': ?numRetries?.toTfJson(),
    'retry_conditions': ?retryConditions?.toTfJson(),
    'per_try_timeout': ?perTryTimeout?.encode(),
  };
}

/// Typed helper for the `path_matcher.path_rule.route_action.retry_policy.per_try_timeout` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherPathRuleRouteActionRetryPolicyPerTryTimeout {
  const ComputeUrlMapPathMatcherPathRuleRouteActionRetryPolicyPerTryTimeout({
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
@immutable
final class ComputeUrlMapPathMatcherPathRuleRouteActionTimeout {
  const ComputeUrlMapPathMatcherPathRuleRouteActionTimeout({
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

/// Typed helper for the `path_matcher.path_rule.route_action.url_rewrite` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherPathRuleRouteActionUrlRewrite {
  const ComputeUrlMapPathMatcherPathRuleRouteActionUrlRewrite({
    this.hostRewrite,
    this.pathPrefixRewrite,
  });

  final TfArg<String>? hostRewrite;

  final TfArg<String>? pathPrefixRewrite;

  Map<String, Object?> encode() => {
    'host_rewrite': ?hostRewrite?.toTfJson(),
    'path_prefix_rewrite': ?pathPrefixRewrite?.toTfJson(),
  };
}

/// Typed helper for the `path_matcher.path_rule.route_action.weighted_backend_services` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherPathRuleRouteActionWeightedBackendServices {
  const ComputeUrlMapPathMatcherPathRuleRouteActionWeightedBackendServices({
    required this.backendService,
    required this.weight,
    this.headerAction,
  });

  final TfArg<String> backendService;

  final TfArg<num> weight;

  final ComputeUrlMapPathMatcherPathRuleRouteActionWeightedBackendServicesHeaderAction?
  headerAction;

  Map<String, Object?> encode() => {
    'backend_service': backendService.toTfJson(),
    'weight': weight.toTfJson(),
    'header_action': ?headerAction?.encode(),
  };
}

/// Typed helper for the `path_matcher.path_rule.route_action.weighted_backend_services.header_action` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherPathRuleRouteActionWeightedBackendServicesHeaderAction {
  const ComputeUrlMapPathMatcherPathRuleRouteActionWeightedBackendServicesHeaderAction({
    this.requestHeadersToRemove,
    this.responseHeadersToRemove,
    this.requestHeadersToAdd,
    this.responseHeadersToAdd,
  });

  final TfArg<List<String>>? requestHeadersToRemove;

  final TfArg<List<String>>? responseHeadersToRemove;

  final List<
    ComputeUrlMapPathMatcherPathRuleRouteActionWeightedBackendServicesHeaderActionRequestHeadersToAdd
  >?
  requestHeadersToAdd;

  final List<
    ComputeUrlMapPathMatcherPathRuleRouteActionWeightedBackendServicesHeaderActionResponseHeadersToAdd
  >?
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

/// Typed helper for the `path_matcher.path_rule.route_action.weighted_backend_services.header_action.request_headers_to_add` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherPathRuleRouteActionWeightedBackendServicesHeaderActionRequestHeadersToAdd {
  const ComputeUrlMapPathMatcherPathRuleRouteActionWeightedBackendServicesHeaderActionRequestHeadersToAdd({
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

/// Typed helper for the `path_matcher.path_rule.route_action.weighted_backend_services.header_action.response_headers_to_add` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherPathRuleRouteActionWeightedBackendServicesHeaderActionResponseHeadersToAdd {
  const ComputeUrlMapPathMatcherPathRuleRouteActionWeightedBackendServicesHeaderActionResponseHeadersToAdd({
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

/// Typed helper for the `path_matcher.path_rule.url_redirect` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherPathRuleUrlRedirect {
  const ComputeUrlMapPathMatcherPathRuleUrlRedirect({
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
final class ComputeUrlMapPathMatcherRouteRules {
  const ComputeUrlMapPathMatcherRouteRules({
    required this.priority,
    this.service,
    this.customErrorResponsePolicy,
    this.headerAction,
    this.matchRules,
    this.routeAction,
    this.urlRedirect,
  });

  final TfArg<num> priority;

  final TfArg<String>? service;

  final ComputeUrlMapPathMatcherRouteRulesCustomErrorResponsePolicy?
  customErrorResponsePolicy;

  final ComputeUrlMapPathMatcherRouteRulesHeaderAction? headerAction;

  final List<ComputeUrlMapPathMatcherRouteRulesMatchRules>? matchRules;

  final ComputeUrlMapPathMatcherRouteRulesRouteAction? routeAction;

  final ComputeUrlMapPathMatcherRouteRulesUrlRedirect? urlRedirect;

  Map<String, Object?> encode() => {
    'priority': priority.toTfJson(),
    'service': ?service?.toTfJson(),
    'custom_error_response_policy': ?customErrorResponsePolicy?.encode(),
    'header_action': ?headerAction?.encode(),
    if (matchRules != null)
      'match_rules': [for (final e in matchRules!) e.encode()],
    'route_action': ?routeAction?.encode(),
    'url_redirect': ?urlRedirect?.encode(),
  };
}

/// Typed helper for the `path_matcher.route_rules.custom_error_response_policy` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherRouteRulesCustomErrorResponsePolicy {
  const ComputeUrlMapPathMatcherRouteRulesCustomErrorResponsePolicy({
    this.errorService,
    this.errorResponseRule,
  });

  final TfArg<String>? errorService;

  final List<
    ComputeUrlMapPathMatcherRouteRulesCustomErrorResponsePolicyErrorResponseRule
  >?
  errorResponseRule;

  Map<String, Object?> encode() => {
    'error_service': ?errorService?.toTfJson(),
    if (errorResponseRule != null)
      'error_response_rule': [for (final e in errorResponseRule!) e.encode()],
  };
}

/// Typed helper for the `path_matcher.route_rules.custom_error_response_policy.error_response_rule` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherRouteRulesCustomErrorResponsePolicyErrorResponseRule {
  const ComputeUrlMapPathMatcherRouteRulesCustomErrorResponsePolicyErrorResponseRule({
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

/// Typed helper for the `path_matcher.route_rules.header_action` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherRouteRulesHeaderAction {
  const ComputeUrlMapPathMatcherRouteRulesHeaderAction({
    this.requestHeadersToRemove,
    this.responseHeadersToRemove,
    this.requestHeadersToAdd,
    this.responseHeadersToAdd,
  });

  final TfArg<List<String>>? requestHeadersToRemove;

  final TfArg<List<String>>? responseHeadersToRemove;

  final List<ComputeUrlMapPathMatcherRouteRulesHeaderActionRequestHeadersToAdd>?
  requestHeadersToAdd;

  final List<
    ComputeUrlMapPathMatcherRouteRulesHeaderActionResponseHeadersToAdd
  >?
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

/// Typed helper for the `path_matcher.route_rules.header_action.request_headers_to_add` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherRouteRulesHeaderActionRequestHeadersToAdd {
  const ComputeUrlMapPathMatcherRouteRulesHeaderActionRequestHeadersToAdd({
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

/// Typed helper for the `path_matcher.route_rules.header_action.response_headers_to_add` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherRouteRulesHeaderActionResponseHeadersToAdd {
  const ComputeUrlMapPathMatcherRouteRulesHeaderActionResponseHeadersToAdd({
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

/// Typed helper for the `path_matcher.route_rules.match_rules` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherRouteRulesMatchRules {
  const ComputeUrlMapPathMatcherRouteRulesMatchRules({
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

  final List<ComputeUrlMapPathMatcherRouteRulesMatchRulesHeaderMatches>?
  headerMatches;

  final List<ComputeUrlMapPathMatcherRouteRulesMatchRulesMetadataFilters>?
  metadataFilters;

  final List<ComputeUrlMapPathMatcherRouteRulesMatchRulesQueryParameterMatches>?
  queryParameterMatches;

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
final class ComputeUrlMapPathMatcherRouteRulesMatchRulesHeaderMatches {
  const ComputeUrlMapPathMatcherRouteRulesMatchRulesHeaderMatches({
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

  final ComputeUrlMapPathMatcherRouteRulesMatchRulesHeaderMatchesRangeMatch?
  rangeMatch;

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
final class ComputeUrlMapPathMatcherRouteRulesMatchRulesHeaderMatchesRangeMatch {
  const ComputeUrlMapPathMatcherRouteRulesMatchRulesHeaderMatchesRangeMatch({
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
final class ComputeUrlMapPathMatcherRouteRulesMatchRulesMetadataFilters {
  const ComputeUrlMapPathMatcherRouteRulesMatchRulesMetadataFilters({
    required this.filterMatchCriteria,
    required this.filterLabels,
  });

  final TfArg<UrlMapMetadataFilterMatchCriteria> filterMatchCriteria;

  final List<
    ComputeUrlMapPathMatcherRouteRulesMatchRulesMetadataFiltersFilterLabels
  >
  filterLabels;

  Map<String, Object?> encode() => {
    'filter_match_criteria': filterMatchCriteria.toTfJson(),
    'filter_labels': [for (final e in filterLabels) e.encode()],
  };
}

/// Typed helper for the `path_matcher.route_rules.match_rules.metadata_filters.filter_labels` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherRouteRulesMatchRulesMetadataFiltersFilterLabels {
  const ComputeUrlMapPathMatcherRouteRulesMatchRulesMetadataFiltersFilterLabels({
    required this.name,
    required this.value,
  });

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
final class ComputeUrlMapPathMatcherRouteRulesMatchRulesQueryParameterMatches {
  const ComputeUrlMapPathMatcherRouteRulesMatchRulesQueryParameterMatches({
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
final class ComputeUrlMapPathMatcherRouteRulesRouteAction {
  const ComputeUrlMapPathMatcherRouteRulesRouteAction({
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

  final ComputeUrlMapPathMatcherRouteRulesRouteActionCachePolicy? cachePolicy;

  final ComputeUrlMapPathMatcherRouteRulesRouteActionCorsPolicy? corsPolicy;

  final ComputeUrlMapPathMatcherRouteRulesRouteActionFaultInjectionPolicy?
  faultInjectionPolicy;

  final ComputeUrlMapPathMatcherRouteRulesRouteActionMaxStreamDuration?
  maxStreamDuration;

  final ComputeUrlMapPathMatcherRouteRulesRouteActionRequestMirrorPolicy?
  requestMirrorPolicy;

  final ComputeUrlMapPathMatcherRouteRulesRouteActionRetryPolicy? retryPolicy;

  final ComputeUrlMapPathMatcherRouteRulesRouteActionTimeout? timeout;

  final ComputeUrlMapPathMatcherRouteRulesRouteActionUrlRewrite? urlRewrite;

  final List<
    ComputeUrlMapPathMatcherRouteRulesRouteActionWeightedBackendServices
  >?
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

/// Typed helper for the `path_matcher.route_rules.route_action.cache_policy` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherRouteRulesRouteActionCachePolicy {
  const ComputeUrlMapPathMatcherRouteRulesRouteActionCachePolicy({
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

  final ComputeUrlMapPathMatcherRouteRulesRouteActionCachePolicyCacheKeyPolicy?
  cacheKeyPolicy;

  final ComputeUrlMapPathMatcherRouteRulesRouteActionCachePolicyClientTtl?
  clientTtl;

  final ComputeUrlMapPathMatcherRouteRulesRouteActionCachePolicyDefaultTtl?
  defaultTtl;

  final ComputeUrlMapPathMatcherRouteRulesRouteActionCachePolicyMaxTtl? maxTtl;

  final List<
    ComputeUrlMapPathMatcherRouteRulesRouteActionCachePolicyNegativeCachingPolicy
  >?
  negativeCachingPolicy;

  final ComputeUrlMapPathMatcherRouteRulesRouteActionCachePolicyServeWhileStale?
  serveWhileStale;

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

/// Typed helper for the `path_matcher.route_rules.route_action.cache_policy.cache_key_policy` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherRouteRulesRouteActionCachePolicyCacheKeyPolicy {
  const ComputeUrlMapPathMatcherRouteRulesRouteActionCachePolicyCacheKeyPolicy({
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

/// Typed helper for the `path_matcher.route_rules.route_action.cache_policy.client_ttl` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherRouteRulesRouteActionCachePolicyClientTtl {
  const ComputeUrlMapPathMatcherRouteRulesRouteActionCachePolicyClientTtl({
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

/// Typed helper for the `path_matcher.route_rules.route_action.cache_policy.default_ttl` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherRouteRulesRouteActionCachePolicyDefaultTtl {
  const ComputeUrlMapPathMatcherRouteRulesRouteActionCachePolicyDefaultTtl({
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

/// Typed helper for the `path_matcher.route_rules.route_action.cache_policy.max_ttl` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherRouteRulesRouteActionCachePolicyMaxTtl {
  const ComputeUrlMapPathMatcherRouteRulesRouteActionCachePolicyMaxTtl({
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

/// Typed helper for the `path_matcher.route_rules.route_action.cache_policy.negative_caching_policy` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherRouteRulesRouteActionCachePolicyNegativeCachingPolicy {
  const ComputeUrlMapPathMatcherRouteRulesRouteActionCachePolicyNegativeCachingPolicy({
    this.code,
    this.ttl,
  });

  final TfArg<num>? code;

  final ComputeUrlMapPathMatcherRouteRulesRouteActionCachePolicyNegativeCachingPolicyTtl?
  ttl;

  Map<String, Object?> encode() => {
    'code': ?code?.toTfJson(),
    'ttl': ?ttl?.encode(),
  };
}

/// Typed helper for the `path_matcher.route_rules.route_action.cache_policy.negative_caching_policy.ttl` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherRouteRulesRouteActionCachePolicyNegativeCachingPolicyTtl {
  const ComputeUrlMapPathMatcherRouteRulesRouteActionCachePolicyNegativeCachingPolicyTtl({
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

/// Typed helper for the `path_matcher.route_rules.route_action.cache_policy.serve_while_stale` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherRouteRulesRouteActionCachePolicyServeWhileStale {
  const ComputeUrlMapPathMatcherRouteRulesRouteActionCachePolicyServeWhileStale({
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

/// Typed helper for the `path_matcher.route_rules.route_action.cors_policy` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherRouteRulesRouteActionCorsPolicy {
  const ComputeUrlMapPathMatcherRouteRulesRouteActionCorsPolicy({
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

/// Typed helper for the `path_matcher.route_rules.route_action.fault_injection_policy` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherRouteRulesRouteActionFaultInjectionPolicy {
  const ComputeUrlMapPathMatcherRouteRulesRouteActionFaultInjectionPolicy({
    this.abort,
    this.delay,
  });

  final ComputeUrlMapPathMatcherRouteRulesRouteActionFaultInjectionPolicyAbort?
  abort;

  final ComputeUrlMapPathMatcherRouteRulesRouteActionFaultInjectionPolicyDelay?
  delay;

  Map<String, Object?> encode() => {
    'abort': ?abort?.encode(),
    'delay': ?delay?.encode(),
  };
}

/// Typed helper for the `path_matcher.route_rules.route_action.fault_injection_policy.abort` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherRouteRulesRouteActionFaultInjectionPolicyAbort {
  const ComputeUrlMapPathMatcherRouteRulesRouteActionFaultInjectionPolicyAbort({
    this.httpStatus,
    this.percentage,
  });

  final TfArg<num>? httpStatus;

  final TfArg<num>? percentage;

  Map<String, Object?> encode() => {
    'http_status': ?httpStatus?.toTfJson(),
    'percentage': ?percentage?.toTfJson(),
  };
}

/// Typed helper for the `path_matcher.route_rules.route_action.fault_injection_policy.delay` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherRouteRulesRouteActionFaultInjectionPolicyDelay {
  const ComputeUrlMapPathMatcherRouteRulesRouteActionFaultInjectionPolicyDelay({
    this.percentage,
    this.fixedDelay,
  });

  final TfArg<num>? percentage;

  final ComputeUrlMapPathMatcherRouteRulesRouteActionFaultInjectionPolicyDelayFixedDelay?
  fixedDelay;

  Map<String, Object?> encode() => {
    'percentage': ?percentage?.toTfJson(),
    'fixed_delay': ?fixedDelay?.encode(),
  };
}

/// Typed helper for the `path_matcher.route_rules.route_action.fault_injection_policy.delay.fixed_delay` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherRouteRulesRouteActionFaultInjectionPolicyDelayFixedDelay {
  const ComputeUrlMapPathMatcherRouteRulesRouteActionFaultInjectionPolicyDelayFixedDelay({
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

/// Typed helper for the `path_matcher.route_rules.route_action.max_stream_duration` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherRouteRulesRouteActionMaxStreamDuration {
  const ComputeUrlMapPathMatcherRouteRulesRouteActionMaxStreamDuration({
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

/// Typed helper for the `path_matcher.route_rules.route_action.request_mirror_policy` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherRouteRulesRouteActionRequestMirrorPolicy {
  const ComputeUrlMapPathMatcherRouteRulesRouteActionRequestMirrorPolicy({
    required this.backendService,
  });

  final TfArg<String> backendService;

  Map<String, Object?> encode() => {
    'backend_service': backendService.toTfJson(),
  };
}

/// Typed helper for the `path_matcher.route_rules.route_action.retry_policy` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherRouteRulesRouteActionRetryPolicy {
  const ComputeUrlMapPathMatcherRouteRulesRouteActionRetryPolicy({
    required this.numRetries,
    this.retryConditions,
    this.perTryTimeout,
  });

  final TfArg<num> numRetries;

  final TfArg<List<String>>? retryConditions;

  final ComputeUrlMapPathMatcherRouteRulesRouteActionRetryPolicyPerTryTimeout?
  perTryTimeout;

  Map<String, Object?> encode() => {
    'num_retries': numRetries.toTfJson(),
    'retry_conditions': ?retryConditions?.toTfJson(),
    'per_try_timeout': ?perTryTimeout?.encode(),
  };
}

/// Typed helper for the `path_matcher.route_rules.route_action.retry_policy.per_try_timeout` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherRouteRulesRouteActionRetryPolicyPerTryTimeout {
  const ComputeUrlMapPathMatcherRouteRulesRouteActionRetryPolicyPerTryTimeout({
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

/// Typed helper for the `path_matcher.route_rules.route_action.timeout` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherRouteRulesRouteActionTimeout {
  const ComputeUrlMapPathMatcherRouteRulesRouteActionTimeout({
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

/// Typed helper for the `path_matcher.route_rules.route_action.url_rewrite` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherRouteRulesRouteActionUrlRewrite {
  const ComputeUrlMapPathMatcherRouteRulesRouteActionUrlRewrite({
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

/// Typed helper for the `path_matcher.route_rules.route_action.weighted_backend_services` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherRouteRulesRouteActionWeightedBackendServices {
  const ComputeUrlMapPathMatcherRouteRulesRouteActionWeightedBackendServices({
    required this.backendService,
    required this.weight,
    this.headerAction,
  });

  final TfArg<String> backendService;

  final TfArg<num> weight;

  final ComputeUrlMapPathMatcherRouteRulesRouteActionWeightedBackendServicesHeaderAction?
  headerAction;

  Map<String, Object?> encode() => {
    'backend_service': backendService.toTfJson(),
    'weight': weight.toTfJson(),
    'header_action': ?headerAction?.encode(),
  };
}

/// Typed helper for the `path_matcher.route_rules.route_action.weighted_backend_services.header_action` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherRouteRulesRouteActionWeightedBackendServicesHeaderAction {
  const ComputeUrlMapPathMatcherRouteRulesRouteActionWeightedBackendServicesHeaderAction({
    this.requestHeadersToRemove,
    this.responseHeadersToRemove,
    this.requestHeadersToAdd,
    this.responseHeadersToAdd,
  });

  final TfArg<List<String>>? requestHeadersToRemove;

  final TfArg<List<String>>? responseHeadersToRemove;

  final List<
    ComputeUrlMapPathMatcherRouteRulesRouteActionWeightedBackendServicesHeaderActionRequestHeadersToAdd
  >?
  requestHeadersToAdd;

  final List<
    ComputeUrlMapPathMatcherRouteRulesRouteActionWeightedBackendServicesHeaderActionResponseHeadersToAdd
  >?
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

/// Typed helper for the `path_matcher.route_rules.route_action.weighted_backend_services.header_action.request_headers_to_add` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherRouteRulesRouteActionWeightedBackendServicesHeaderActionRequestHeadersToAdd {
  const ComputeUrlMapPathMatcherRouteRulesRouteActionWeightedBackendServicesHeaderActionRequestHeadersToAdd({
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

/// Typed helper for the `path_matcher.route_rules.route_action.weighted_backend_services.header_action.response_headers_to_add` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherRouteRulesRouteActionWeightedBackendServicesHeaderActionResponseHeadersToAdd {
  const ComputeUrlMapPathMatcherRouteRulesRouteActionWeightedBackendServicesHeaderActionResponseHeadersToAdd({
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

/// Typed helper for the `path_matcher.route_rules.url_redirect` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapPathMatcherRouteRulesUrlRedirect {
  const ComputeUrlMapPathMatcherRouteRulesUrlRedirect({
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

  final TfArg<String>? service;

  final List<ComputeUrlMapTestHeaders>? headers;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expected_output_url': ?expectedOutputUrl?.toTfJson(),
    'expected_redirect_response_code': ?expectedRedirectResponseCode
        ?.toTfJson(),
    'host': host.toTfJson(),
    'path': path.toTfJson(),
    'service': ?service?.toTfJson(),
    if (headers != null) 'headers': [for (final e in headers!) e.encode()],
  };
}

/// Typed helper for the `test.headers` block of
/// `google_compute_url_map` (derived from provider schema).
@immutable
final class ComputeUrlMapTestHeaders {
  const ComputeUrlMapTestHeaders({required this.name, required this.value});

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
///   [hostRules] / [pathMatchers] match the incoming request. The link
///   accepts either a
///   [GoogleComputeBackendService] (`.../backendServices/<name>`) **or** a
///   [GoogleComputeBackendBucket] (`.../backendBuckets/<name>`). The GCP
///   API distinguishes by URL segment, not by a separate field. Mutually
///   exclusive with [defaultUrlRedirect] -- exactly one of the two must be
///   set when no [pathMatchers] are present.
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
///   defaultService: TfArg.ref(login.selfLink),
///   hostRules: const [
///     ComputeUrlMapHostRule(
///       hosts: ['mysite.com', 'myothersite.com'],
///       pathMatcher: 'allpaths',
///     ),
///   ],
///   pathMatchers: [
///     ComputeUrlMapPathMatcher(
///       name: 'allpaths',
///       defaultService: TfArg.ref(login.selfLink),
///       pathRules: [
///         ComputeUrlMapPathMatcherPathRule(
///           paths: const ['/home'],
///           service: TfArg.ref(login.selfLink),
///         ),
///         ComputeUrlMapPathMatcherPathRule(
///           paths: const ['/static'],
///           service: TfArg.ref(staticBucket.selfLink),
///         ),
///       ],
///     ),
///   ],
///   tests: const [
///     ComputeUrlMapTest(host: 'mysite.com', path: '/home'),
///   ],
/// );
/// ```
///
/// Naming convention: ALL nested helper types in this resource are prefixed
/// `UrlMap...` (e.g. [ComputeUrlMapHostRule], [ComputeUrlMapPathMatcher],
/// [ComputeUrlMapDefaultUrlRedirect]) to avoid colliding with similarly-named structures
/// in sibling load-balancer resources such as `google_compute_backend_service`.
///
/// Deeply nested traffic-policy sub-blocks (`default_route_action`,
/// `path_matcher.default_route_action`, `path_rule.route_action`,
/// `route_rules.route_action`, `default_custom_error_response_policy`) are
/// not modeled as typed helpers -- they form a sprawling Envoy-style config
/// (cache_policy, cors_policy, fault_injection_policy, retry_policy,
/// url_rewrite, weighted_backend_services, ...) that would dominate the
/// curated surface for little common-case win. Pass a raw
/// `Map<String, Object?>` via [ComputeUrlMapPathMatcher.advancedExtra] etc. keyed
/// by the Terraform block name when you need them; see the per-class doc
/// for the exact escape-hatch key.
///
/// Composition pattern: extends `Resource` for
/// runtime behavior.
final class GoogleComputeUrlMap extends Resource {
  static const String tfType = 'google_compute_url_map';

  GoogleComputeUrlMap({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? defaultService,
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
           'default_service': ?defaultService,
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
}
