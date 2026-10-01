// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_region_url_map`.
const Set<String> _googleComputeRegionUrlMapSensitive = <String>{};

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
enum RegionUrlMapRedirectResponseCode implements TerraformEnum {
  found('FOUND'),
  movedPermanentlyDefault('MOVED_PERMANENTLY_DEFAULT'),
  permanentRedirect('PERMANENT_REDIRECT'),
  seeOther('SEE_OTHER'),
  temporaryRedirect('TEMPORARY_REDIRECT');

  const RegionUrlMapRedirectResponseCode(this.terraformValue);
  @override
  final String terraformValue;
}

/// `match_rules.metadata_filters.filter_match_criteria`.
enum RegionUrlMapMetadataFilterMatchCriteria implements TerraformEnum {
  matchAll('MATCH_ALL'),
  matchAny('MATCH_ANY');

  const RegionUrlMapMetadataFilterMatchCriteria(this.terraformValue);
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

/// At most one of `default_url_redirect`, `default_route_action` on `google_compute_region_url_map`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.defaultUrlRedirect(...)`.
sealed class ComputeRegionUrlMapDefaultAction {
  const ComputeRegionUrlMapDefaultAction();

  /// Sets `default_url_redirect`.
  const factory ComputeRegionUrlMapDefaultAction.defaultUrlRedirect(
    ComputeRegionUrlMapDefaultUrlRedirect defaultUrlRedirect,
  ) = ComputeRegionUrlMapDefaultActionDefaultUrlRedirect;

  /// Sets `default_route_action`.
  const factory ComputeRegionUrlMapDefaultAction.defaultRouteAction(
    ComputeRegionUrlMapDefaultRouteAction defaultRouteAction,
  ) = ComputeRegionUrlMapDefaultActionDefaultRouteAction;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ComputeRegionUrlMapDefaultAction.defaultUrlRedirect] choice: sets `default_url_redirect`.
final class ComputeRegionUrlMapDefaultActionDefaultUrlRedirect
    extends ComputeRegionUrlMapDefaultAction {
  const ComputeRegionUrlMapDefaultActionDefaultUrlRedirect(
    this.defaultUrlRedirect,
  );

  final ComputeRegionUrlMapDefaultUrlRedirect defaultUrlRedirect;

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

/// The [ComputeRegionUrlMapDefaultAction.defaultRouteAction] choice: sets `default_route_action`.
final class ComputeRegionUrlMapDefaultActionDefaultRouteAction
    extends ComputeRegionUrlMapDefaultAction {
  const ComputeRegionUrlMapDefaultActionDefaultRouteAction(
    this.defaultRouteAction,
  );

  final ComputeRegionUrlMapDefaultRouteAction defaultRouteAction;

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

/// Typed helper for the `default_route_action` block of
/// `google_compute_region_url_map` (derived from provider schema).
@immutable
final class ComputeRegionUrlMapDefaultRouteAction {
  const ComputeRegionUrlMapDefaultRouteAction({
    this.corsPolicy,
    this.faultInjectionPolicy,
    this.requestMirrorPolicy,
    this.retryPolicy,
    this.timeout,
    this.urlRewrite,
    this.weightedBackendServices,
  });

  final ComputeRegionUrlMapCorsPolicy? corsPolicy;

  final ComputeRegionUrlMapFaultInjectionPolicy? faultInjectionPolicy;

  final ComputeRegionUrlMapRequestMirrorPolicy? requestMirrorPolicy;

  final ComputeRegionUrlMapRetryPolicy? retryPolicy;

  final ComputeRegionUrlMapTimeout? timeout;

  final ComputeRegionUrlMapUrlRewrite? urlRewrite;

  final List<ComputeRegionUrlMapWeightedBackendServices>?
  weightedBackendServices;

  Map<String, Object?> encode() => {
    'cors_policy': ?corsPolicy?.encode(),
    'fault_injection_policy': ?faultInjectionPolicy?.encode(),
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

/// Typed helper for the `default_route_action.cors_policy` block of
/// `google_compute_region_url_map` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ComputeRegionUrlMapCorsPolicy {
  const ComputeRegionUrlMapCorsPolicy({
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
/// `google_compute_region_url_map` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ComputeRegionUrlMapFaultInjectionPolicy {
  const ComputeRegionUrlMapFaultInjectionPolicy({this.abort, this.delay});

  final ComputeRegionUrlMapAbort? abort;

  final ComputeRegionUrlMapDelay? delay;

  Map<String, Object?> encode() => {
    'abort': ?abort?.encode(),
    'delay': ?delay?.encode(),
  };
}

/// Typed helper for the `default_route_action.fault_injection_policy.abort` block of
/// `google_compute_region_url_map` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ComputeRegionUrlMapAbort {
  const ComputeRegionUrlMapAbort({this.httpStatus, this.percentage});

  final TfArg<num>? httpStatus;

  final TfArg<num>? percentage;

  Map<String, Object?> encode() => {
    'http_status': ?httpStatus?.toTfJson(),
    'percentage': ?percentage?.toTfJson(),
  };
}

/// Typed helper for the `default_route_action.fault_injection_policy.delay` block of
/// `google_compute_region_url_map` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ComputeRegionUrlMapDelay {
  const ComputeRegionUrlMapDelay({this.percentage, this.fixedDelay});

  final TfArg<num>? percentage;

  final ComputeRegionUrlMapFixedDelay? fixedDelay;

  Map<String, Object?> encode() => {
    'percentage': ?percentage?.toTfJson(),
    'fixed_delay': ?fixedDelay?.encode(),
  };
}

/// Typed helper for the `default_route_action.fault_injection_policy.delay.fixed_delay` block of
/// `google_compute_region_url_map` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ComputeRegionUrlMapFixedDelay {
  const ComputeRegionUrlMapFixedDelay({this.nanos, this.seconds});

  final TfArg<num>? nanos;

  final TfArg<String>? seconds;

  Map<String, Object?> encode() => {
    'nanos': ?nanos?.toTfJson(),
    'seconds': ?seconds?.toTfJson(),
  };
}

/// Typed helper for the `default_route_action.request_mirror_policy` block of
/// `google_compute_region_url_map` (derived from provider schema).
@immutable
final class ComputeRegionUrlMapRequestMirrorPolicy {
  const ComputeRegionUrlMapRequestMirrorPolicy({this.backendService});

  final TfArg<String>? backendService;

  Map<String, Object?> encode() => {
    'backend_service': ?backendService?.toTfJson(),
  };
}

/// Typed helper for the `default_route_action.retry_policy` block of
/// `google_compute_region_url_map` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ComputeRegionUrlMapRetryPolicy {
  const ComputeRegionUrlMapRetryPolicy({
    this.numRetries,
    this.retryConditions,
    this.perTryTimeout,
  });

  final TfArg<num>? numRetries;

  final TfArg<List<String>>? retryConditions;

  final ComputeRegionUrlMapPerTryTimeout? perTryTimeout;

  Map<String, Object?> encode() => {
    'num_retries': ?numRetries?.toTfJson(),
    'retry_conditions': ?retryConditions?.toTfJson(),
    'per_try_timeout': ?perTryTimeout?.encode(),
  };
}

/// Typed helper for the `default_route_action.retry_policy.per_try_timeout` block of
/// `google_compute_region_url_map` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ComputeRegionUrlMapPerTryTimeout {
  const ComputeRegionUrlMapPerTryTimeout({this.nanos, this.seconds});

  final TfArg<num>? nanos;

  final TfArg<String>? seconds;

  Map<String, Object?> encode() => {
    'nanos': ?nanos?.toTfJson(),
    'seconds': ?seconds?.toTfJson(),
  };
}

/// Typed helper for the `default_route_action.timeout` block of
/// `google_compute_region_url_map` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ComputeRegionUrlMapTimeout {
  const ComputeRegionUrlMapTimeout({this.nanos, this.seconds});

  final TfArg<num>? nanos;

  final TfArg<String>? seconds;

  Map<String, Object?> encode() => {
    'nanos': ?nanos?.toTfJson(),
    'seconds': ?seconds?.toTfJson(),
  };
}

/// Typed helper for the `default_route_action.url_rewrite` block of
/// `google_compute_region_url_map` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ComputeRegionUrlMapUrlRewrite {
  const ComputeRegionUrlMapUrlRewrite({
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
/// `google_compute_region_url_map` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ComputeRegionUrlMapWeightedBackendServices {
  const ComputeRegionUrlMapWeightedBackendServices({
    this.backendService,
    this.weight,
    this.headerAction,
  });

  final TfArg<String>? backendService;

  final TfArg<num>? weight;

  final ComputeRegionUrlMapHeaderAction? headerAction;

  Map<String, Object?> encode() => {
    'backend_service': ?backendService?.toTfJson(),
    'weight': ?weight?.toTfJson(),
    'header_action': ?headerAction?.encode(),
  };
}

/// Typed helper for the `header_action` block of
/// `google_compute_region_url_map` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ComputeRegionUrlMapHeaderAction {
  const ComputeRegionUrlMapHeaderAction({
    this.requestHeadersToRemove,
    this.responseHeadersToRemove,
    this.requestHeadersToAdd,
    this.responseHeadersToAdd,
  });

  final TfArg<List<String>>? requestHeadersToRemove;

  final TfArg<List<String>>? responseHeadersToRemove;

  final List<ComputeRegionUrlMapRequestHeadersToAdd>? requestHeadersToAdd;

  final List<ComputeRegionUrlMapResponseHeadersToAdd>? responseHeadersToAdd;

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
/// `google_compute_region_url_map` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ComputeRegionUrlMapRequestHeadersToAdd {
  const ComputeRegionUrlMapRequestHeadersToAdd({
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

/// Typed helper for the `header_action.response_headers_to_add` block of
/// `google_compute_region_url_map` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ComputeRegionUrlMapResponseHeadersToAdd {
  const ComputeRegionUrlMapResponseHeadersToAdd({
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
/// `google_compute_region_url_map` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ComputeRegionUrlMapDefaultUrlRedirect {
  const ComputeRegionUrlMapDefaultUrlRedirect({
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

  final TfArg<RegionUrlMapRedirectResponseCode>? redirectResponseCode;

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

/// Typed helper for the `host_rule` block of
/// `google_compute_region_url_map` (derived from provider schema).
@immutable
final class ComputeRegionUrlMapHostRule {
  const ComputeRegionUrlMapHostRule({
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
/// `google_compute_region_url_map` (derived from provider schema).
@immutable
final class ComputeRegionUrlMapPathMatcher {
  const ComputeRegionUrlMapPathMatcher({
    this.defaultService,
    this.description,
    required this.name,
    this.defaultRouteAction,
    this.defaultUrlRedirect,
    this.headerAction,
    this.pathRule,
    this.routeRules,
  });

  final TfArg<String>? defaultService;

  final TfArg<String>? description;

  final TfArg<String> name;

  final ComputeRegionUrlMapPathMatcherDefaultRouteAction? defaultRouteAction;

  final ComputeRegionUrlMapDefaultUrlRedirect? defaultUrlRedirect;

  final ComputeRegionUrlMapHeaderAction? headerAction;

  final List<ComputeRegionUrlMapPathRule>? pathRule;

  final List<ComputeRegionUrlMapRouteRules>? routeRules;

  Map<String, Object?> encode() => {
    'default_service': ?defaultService?.toTfJson(),
    'description': ?description?.toTfJson(),
    'name': name.toTfJson(),
    'default_route_action': ?defaultRouteAction?.encode(),
    'default_url_redirect': ?defaultUrlRedirect?.encode(),
    'header_action': ?headerAction?.encode(),
    if (pathRule != null) 'path_rule': [for (final e in pathRule!) e.encode()],
    if (routeRules != null)
      'route_rules': [for (final e in routeRules!) e.encode()],
  };
}

/// Typed helper for the `path_matcher.default_route_action` block of
/// `google_compute_region_url_map` (derived from provider schema).
@immutable
final class ComputeRegionUrlMapPathMatcherDefaultRouteAction {
  const ComputeRegionUrlMapPathMatcherDefaultRouteAction({
    this.corsPolicy,
    this.faultInjectionPolicy,
    this.maxStreamDuration,
    this.requestMirrorPolicy,
    this.retryPolicy,
    this.timeout,
    this.urlRewrite,
    this.weightedBackendServices,
  });

  final ComputeRegionUrlMapCorsPolicy? corsPolicy;

  final ComputeRegionUrlMapFaultInjectionPolicy? faultInjectionPolicy;

  final ComputeRegionUrlMapMaxStreamDuration? maxStreamDuration;

  final ComputeRegionUrlMapDefaultRouteActionRequestMirrorPolicy?
  requestMirrorPolicy;

  final ComputeRegionUrlMapRetryPolicy? retryPolicy;

  final ComputeRegionUrlMapTimeout? timeout;

  final ComputeRegionUrlMapDefaultRouteActionUrlRewrite? urlRewrite;

  final List<ComputeRegionUrlMapWeightedBackendServices>?
  weightedBackendServices;

  Map<String, Object?> encode() => {
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

/// Typed helper for the `path_matcher.default_route_action.max_stream_duration` block of
/// `google_compute_region_url_map` (derived from provider schema).
@immutable
final class ComputeRegionUrlMapMaxStreamDuration {
  const ComputeRegionUrlMapMaxStreamDuration({
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
/// `google_compute_region_url_map` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ComputeRegionUrlMapDefaultRouteActionRequestMirrorPolicy {
  const ComputeRegionUrlMapDefaultRouteActionRequestMirrorPolicy({
    required this.backendService,
  });

  final TfArg<String> backendService;

  Map<String, Object?> encode() => {
    'backend_service': backendService.toTfJson(),
  };
}

/// Typed helper for the `path_matcher.default_route_action.url_rewrite` block of
/// `google_compute_region_url_map` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ComputeRegionUrlMapDefaultRouteActionUrlRewrite {
  const ComputeRegionUrlMapDefaultRouteActionUrlRewrite({
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

/// Typed helper for the `path_matcher.path_rule` block of
/// `google_compute_region_url_map` (derived from provider schema).
@immutable
final class ComputeRegionUrlMapPathRule {
  const ComputeRegionUrlMapPathRule({
    required this.paths,
    this.service,
    this.routeAction,
    this.urlRedirect,
  });

  final TfArg<List<String>> paths;

  final TfArg<String>? service;

  final ComputeRegionUrlMapPathRuleRouteAction? routeAction;

  final ComputeRegionUrlMapPathRuleUrlRedirect? urlRedirect;

  Map<String, Object?> encode() => {
    'paths': paths.toTfJson(),
    'service': ?service?.toTfJson(),
    'route_action': ?routeAction?.encode(),
    'url_redirect': ?urlRedirect?.encode(),
  };
}

/// Typed helper for the `path_matcher.path_rule.route_action` block of
/// `google_compute_region_url_map` (derived from provider schema).
@immutable
final class ComputeRegionUrlMapPathRuleRouteAction {
  const ComputeRegionUrlMapPathRuleRouteAction({
    this.corsPolicy,
    this.faultInjectionPolicy,
    this.requestMirrorPolicy,
    this.retryPolicy,
    this.timeout,
    this.urlRewrite,
    this.weightedBackendServices,
  });

  final ComputeRegionUrlMapRouteActionCorsPolicy? corsPolicy;

  final ComputeRegionUrlMapPathRuleFaultInjectionPolicy? faultInjectionPolicy;

  final ComputeRegionUrlMapDefaultRouteActionRequestMirrorPolicy?
  requestMirrorPolicy;

  final ComputeRegionUrlMapPathRuleRetryPolicy? retryPolicy;

  final ComputeRegionUrlMapRouteActionTimeout? timeout;

  final ComputeRegionUrlMapUrlRewrite? urlRewrite;

  final List<ComputeRegionUrlMapRouteActionWeightedBackendServices>?
  weightedBackendServices;

  Map<String, Object?> encode() => {
    'cors_policy': ?corsPolicy?.encode(),
    'fault_injection_policy': ?faultInjectionPolicy?.encode(),
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
/// `google_compute_region_url_map` (derived from provider schema).
@immutable
final class ComputeRegionUrlMapRouteActionCorsPolicy {
  const ComputeRegionUrlMapRouteActionCorsPolicy({
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
/// `google_compute_region_url_map` (derived from provider schema).
@immutable
final class ComputeRegionUrlMapPathRuleFaultInjectionPolicy {
  const ComputeRegionUrlMapPathRuleFaultInjectionPolicy({
    this.abort,
    this.delay,
  });

  final ComputeRegionUrlMapFaultInjectionPolicyAbort? abort;

  final ComputeRegionUrlMapPathRuleDelay? delay;

  Map<String, Object?> encode() => {
    'abort': ?abort?.encode(),
    'delay': ?delay?.encode(),
  };
}

/// Typed helper for the `path_matcher.path_rule.route_action.fault_injection_policy.abort` block of
/// `google_compute_region_url_map` (derived from provider schema).
@immutable
final class ComputeRegionUrlMapFaultInjectionPolicyAbort {
  const ComputeRegionUrlMapFaultInjectionPolicyAbort({
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
/// `google_compute_region_url_map` (derived from provider schema).
@immutable
final class ComputeRegionUrlMapPathRuleDelay {
  const ComputeRegionUrlMapPathRuleDelay({
    required this.percentage,
    required this.fixedDelay,
  });

  final TfArg<num> percentage;

  final ComputeRegionUrlMapDelayFixedDelay fixedDelay;

  Map<String, Object?> encode() => {
    'percentage': percentage.toTfJson(),
    'fixed_delay': fixedDelay.encode(),
  };
}

/// Typed helper for the `path_matcher.path_rule.route_action.fault_injection_policy.delay.fixed_delay` block of
/// `google_compute_region_url_map` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ComputeRegionUrlMapDelayFixedDelay {
  const ComputeRegionUrlMapDelayFixedDelay({this.nanos, required this.seconds});

  final TfArg<num>? nanos;

  final TfArg<String> seconds;

  Map<String, Object?> encode() => {
    'nanos': ?nanos?.toTfJson(),
    'seconds': seconds.toTfJson(),
  };
}

/// Typed helper for the `path_matcher.path_rule.route_action.retry_policy` block of
/// `google_compute_region_url_map` (derived from provider schema).
@immutable
final class ComputeRegionUrlMapPathRuleRetryPolicy {
  const ComputeRegionUrlMapPathRuleRetryPolicy({
    this.numRetries,
    this.retryConditions,
    this.perTryTimeout,
  });

  final TfArg<num>? numRetries;

  final TfArg<List<String>>? retryConditions;

  final ComputeRegionUrlMapRetryPolicyPerTryTimeout? perTryTimeout;

  Map<String, Object?> encode() => {
    'num_retries': ?numRetries?.toTfJson(),
    'retry_conditions': ?retryConditions?.toTfJson(),
    'per_try_timeout': ?perTryTimeout?.encode(),
  };
}

/// Typed helper for the `path_matcher.path_rule.route_action.retry_policy.per_try_timeout` block of
/// `google_compute_region_url_map` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ComputeRegionUrlMapRetryPolicyPerTryTimeout {
  const ComputeRegionUrlMapRetryPolicyPerTryTimeout({
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
/// `google_compute_region_url_map` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ComputeRegionUrlMapRouteActionTimeout {
  const ComputeRegionUrlMapRouteActionTimeout({
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

/// Typed helper for the `path_matcher.path_rule.route_action.weighted_backend_services` block of
/// `google_compute_region_url_map` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ComputeRegionUrlMapRouteActionWeightedBackendServices {
  const ComputeRegionUrlMapRouteActionWeightedBackendServices({
    required this.backendService,
    required this.weight,
    this.headerAction,
  });

  final TfArg<String> backendService;

  final TfArg<num> weight;

  final ComputeRegionUrlMapRouteRulesHeaderAction? headerAction;

  Map<String, Object?> encode() => {
    'backend_service': backendService.toTfJson(),
    'weight': weight.toTfJson(),
    'header_action': ?headerAction?.encode(),
  };
}

/// Typed helper for the `path_matcher.route_rules.header_action` block of
/// `google_compute_region_url_map` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ComputeRegionUrlMapRouteRulesHeaderAction {
  const ComputeRegionUrlMapRouteRulesHeaderAction({
    this.requestHeadersToRemove,
    this.responseHeadersToRemove,
    this.requestHeadersToAdd,
    this.responseHeadersToAdd,
  });

  final TfArg<List<String>>? requestHeadersToRemove;

  final TfArg<List<String>>? responseHeadersToRemove;

  final List<ComputeRegionUrlMapHeaderActionRequestHeadersToAdd>?
  requestHeadersToAdd;

  final List<ComputeRegionUrlMapHeaderActionResponseHeadersToAdd>?
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
/// `google_compute_region_url_map` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ComputeRegionUrlMapHeaderActionRequestHeadersToAdd {
  const ComputeRegionUrlMapHeaderActionRequestHeadersToAdd({
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
/// `google_compute_region_url_map` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ComputeRegionUrlMapHeaderActionResponseHeadersToAdd {
  const ComputeRegionUrlMapHeaderActionResponseHeadersToAdd({
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
/// `google_compute_region_url_map` (derived from provider schema).
@immutable
final class ComputeRegionUrlMapPathRuleUrlRedirect {
  const ComputeRegionUrlMapPathRuleUrlRedirect({
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

  final TfArg<RegionUrlMapRedirectResponseCode>? redirectResponseCode;

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
/// `google_compute_region_url_map` (derived from provider schema).
@immutable
final class ComputeRegionUrlMapRouteRules {
  const ComputeRegionUrlMapRouteRules({
    required this.priority,
    this.service,
    this.headerAction,
    this.matchRules,
    this.routeAction,
    this.urlRedirect,
  });

  final TfArg<num> priority;

  final TfArg<String>? service;

  final ComputeRegionUrlMapRouteRulesHeaderAction? headerAction;

  final List<ComputeRegionUrlMapMatchRules>? matchRules;

  final ComputeRegionUrlMapRouteRulesRouteAction? routeAction;

  final ComputeRegionUrlMapRouteRulesUrlRedirect? urlRedirect;

  Map<String, Object?> encode() => {
    'priority': priority.toTfJson(),
    'service': ?service?.toTfJson(),
    'header_action': ?headerAction?.encode(),
    if (matchRules != null)
      'match_rules': [for (final e in matchRules!) e.encode()],
    'route_action': ?routeAction?.encode(),
    'url_redirect': ?urlRedirect?.encode(),
  };
}

/// Typed helper for the `path_matcher.route_rules.match_rules` block of
/// `google_compute_region_url_map` (derived from provider schema).
@immutable
final class ComputeRegionUrlMapMatchRules {
  const ComputeRegionUrlMapMatchRules({
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

  final List<ComputeRegionUrlMapHeaderMatches>? headerMatches;

  final List<ComputeRegionUrlMapMetadataFilters>? metadataFilters;

  final List<ComputeRegionUrlMapQueryParameterMatches>? queryParameterMatches;

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
/// `google_compute_region_url_map` (derived from provider schema).
@immutable
final class ComputeRegionUrlMapHeaderMatches {
  const ComputeRegionUrlMapHeaderMatches({
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

  final ComputeRegionUrlMapRangeMatch? rangeMatch;

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
/// `google_compute_region_url_map` (derived from provider schema).
@immutable
final class ComputeRegionUrlMapRangeMatch {
  const ComputeRegionUrlMapRangeMatch({
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
/// `google_compute_region_url_map` (derived from provider schema).
@immutable
final class ComputeRegionUrlMapMetadataFilters {
  const ComputeRegionUrlMapMetadataFilters({
    required this.filterMatchCriteria,
    required this.filterLabels,
  });

  final TfArg<RegionUrlMapMetadataFilterMatchCriteria> filterMatchCriteria;

  final List<ComputeRegionUrlMapFilterLabels> filterLabels;

  Map<String, Object?> encode() => {
    'filter_match_criteria': filterMatchCriteria.toTfJson(),
    'filter_labels': [for (final e in filterLabels) e.encode()],
  };
}

/// Typed helper for the `path_matcher.route_rules.match_rules.metadata_filters.filter_labels` block of
/// `google_compute_region_url_map` (derived from provider schema).
@immutable
final class ComputeRegionUrlMapFilterLabels {
  const ComputeRegionUrlMapFilterLabels({
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
/// `google_compute_region_url_map` (derived from provider schema).
@immutable
final class ComputeRegionUrlMapQueryParameterMatches {
  const ComputeRegionUrlMapQueryParameterMatches({
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
/// `google_compute_region_url_map` (derived from provider schema).
@immutable
final class ComputeRegionUrlMapRouteRulesRouteAction {
  const ComputeRegionUrlMapRouteRulesRouteAction({
    this.corsPolicy,
    this.faultInjectionPolicy,
    this.requestMirrorPolicy,
    this.retryPolicy,
    this.timeout,
    this.urlRewrite,
    this.weightedBackendServices,
  });

  final ComputeRegionUrlMapCorsPolicy? corsPolicy;

  final ComputeRegionUrlMapRouteRulesFaultInjectionPolicy? faultInjectionPolicy;

  final ComputeRegionUrlMapDefaultRouteActionRequestMirrorPolicy?
  requestMirrorPolicy;

  final ComputeRegionUrlMapRouteRulesRetryPolicy? retryPolicy;

  final ComputeRegionUrlMapRouteActionTimeout? timeout;

  final ComputeRegionUrlMapDefaultRouteActionUrlRewrite? urlRewrite;

  final List<ComputeRegionUrlMapRouteActionWeightedBackendServices>?
  weightedBackendServices;

  Map<String, Object?> encode() => {
    'cors_policy': ?corsPolicy?.encode(),
    'fault_injection_policy': ?faultInjectionPolicy?.encode(),
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
/// `google_compute_region_url_map` (derived from provider schema).
@immutable
final class ComputeRegionUrlMapRouteRulesFaultInjectionPolicy {
  const ComputeRegionUrlMapRouteRulesFaultInjectionPolicy({
    this.abort,
    this.delay,
  });

  final ComputeRegionUrlMapAbort? abort;

  final ComputeRegionUrlMapRouteRulesDelay? delay;

  Map<String, Object?> encode() => {
    'abort': ?abort?.encode(),
    'delay': ?delay?.encode(),
  };
}

/// Typed helper for the `path_matcher.route_rules.route_action.fault_injection_policy.delay` block of
/// `google_compute_region_url_map` (derived from provider schema).
@immutable
final class ComputeRegionUrlMapRouteRulesDelay {
  const ComputeRegionUrlMapRouteRulesDelay({this.percentage, this.fixedDelay});

  final TfArg<num>? percentage;

  final ComputeRegionUrlMapDelayFixedDelay? fixedDelay;

  Map<String, Object?> encode() => {
    'percentage': ?percentage?.toTfJson(),
    'fixed_delay': ?fixedDelay?.encode(),
  };
}

/// Typed helper for the `path_matcher.route_rules.route_action.retry_policy` block of
/// `google_compute_region_url_map` (derived from provider schema).
@immutable
final class ComputeRegionUrlMapRouteRulesRetryPolicy {
  const ComputeRegionUrlMapRouteRulesRetryPolicy({
    required this.numRetries,
    this.retryConditions,
    this.perTryTimeout,
  });

  final TfArg<num> numRetries;

  final TfArg<List<String>>? retryConditions;

  final ComputeRegionUrlMapRetryPolicyPerTryTimeout? perTryTimeout;

  Map<String, Object?> encode() => {
    'num_retries': numRetries.toTfJson(),
    'retry_conditions': ?retryConditions?.toTfJson(),
    'per_try_timeout': ?perTryTimeout?.encode(),
  };
}

/// Typed helper for the `path_matcher.route_rules.url_redirect` block of
/// `google_compute_region_url_map` (derived from provider schema).
@immutable
final class ComputeRegionUrlMapRouteRulesUrlRedirect {
  const ComputeRegionUrlMapRouteRulesUrlRedirect({
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

  final TfArg<RegionUrlMapRedirectResponseCode>? redirectResponseCode;

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
/// `google_compute_region_url_map` (derived from provider schema).
@immutable
final class ComputeRegionUrlMapTest {
  const ComputeRegionUrlMapTest({
    this.description,
    required this.host,
    required this.path,
    required this.service,
  });

  final TfArg<String>? description;

  final TfArg<String> host;

  final TfArg<String> path;

  final TfArg<String> service;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'host': host.toTfJson(),
    'path': path.toTfJson(),
    'service': service.toTfJson(),
  };
}

/// Factory wrapper for `google_compute_region_url_map`.
///
/// UrlMaps are used to route requests to a backend service based on rules that
/// you define for the host and path of an incoming URL.
///
/// Manages a **regional** Cloud Load Balancing URL map -- the layer that
/// routes incoming HTTP(S) requests to one of several
/// `google_compute_region_backend_service` (or
/// `google_compute_backend_bucket`) targets based on host + path matching.
/// Used by regional / internal HTTP(S) load balancers
/// (`target_http_proxy` / `target_https_proxy` with
/// `loadBalancingScheme = INTERNAL_MANAGED` / `EXTERNAL_MANAGED`). The
/// global URL map lives in a separate resource
/// (`google_compute_url_map`).
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_compute_region_url_map.`).
/// - `name`: GCP URL map name. 1-63 chars, RFC 1035
///   (`[a-z]([-a-z0-9]*[a-z0-9])?`).
/// - `region`: GCP region the URL map lives in (e.g. `us-central1`). Must
///   match the region of every [GoogleComputeRegionBackendService]
///   referenced from this map; cross-region backend references are
///   rejected by the API.
///
/// Default target (highest fallback):
/// - `default_service`: self-link to the **backend** consulted when no
///   [hostRule] / [pathMatcher] match the incoming request. The link
///   accepts either a
///   [GoogleComputeRegionBackendService]
///   (`.../regions/<region>/backendServices/<name>`) **or** a
///   [GoogleComputeBackendBucket] (`.../backendBuckets/<name>` -- backend
///   buckets are a global resource and are also valid targets for a
///   regional URL map). The GCP API distinguishes by URL segment, not by
///   a separate field. Mutually exclusive with
///   `defaultAction: .defaultUrlRedirect(...)` -- exactly one of the two
///   must be set when no [pathMatcher] entries are present.
///
/// Matching pipeline (request flow):
///
/// ```text
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
/// Example (login backend + static bucket, both routed via host/path, in
/// `us-central1`):
/// ```dart
/// final urlMap = GoogleComputeRegionUrlMap(
///   localName: 'urlmap',
///   name: TfArg.literal('regionurlmap-prod'),
///   region: TfArg.literal('us-central1'),
///   defaultService: TfArg.ref(login.selfLink),
///   hostRule: [
///     ComputeRegionUrlMapHostRule(
///       hosts: TfArg.literal(['mysite.com', 'myothersite.com']),
///       pathMatcher: TfArg.literal('allpaths'),
///     ),
///   ],
///   pathMatcher: [
///     ComputeRegionUrlMapPathMatcher(
///       name: TfArg.literal('allpaths'),
///       defaultService: TfArg.ref(login.selfLink),
///       pathRule: [
///         ComputeRegionUrlMapPathRule(
///           paths: TfArg.literal(const ['/home']),
///           service: TfArg.ref(login.selfLink),
///         ),
///         ComputeRegionUrlMapPathRule(
///           paths: TfArg.literal(const ['/static']),
///           service: TfArg.ref(staticBucket.selfLink),
///         ),
///       ],
///     ),
///   ],
///   test: [
///     ComputeRegionUrlMapTest(
///       host: TfArg.literal('mysite.com'),
///       path: TfArg.literal('/home'),
///       service: TfArg.ref(login.selfLink),
///     ),
///   ],
/// );
/// ```
///
/// Naming convention: ALL nested helper types in this resource are prefixed
/// `ComputeRegionUrlMap...` (e.g. [ComputeRegionUrlMapHostRule], [ComputeRegionUrlMapPathMatcher],
/// [ComputeRegionUrlMapDefaultUrlRedirect]) to avoid colliding with the
/// similarly-shaped helpers in the global `google_compute_url_map` wrapper
/// (which uses the `ComputeUrlMap...` prefix) and with other sibling
/// load-balancer resources.
///
/// Traffic-policy sub-blocks (`path_matcher.default_route_action`,
/// `path_rule.route_action`, `route_rules.route_action`, ...) are typed
/// helpers too (e.g. [ComputeRegionUrlMapPathRuleRouteAction]); the top-level
/// `default_url_redirect` / `default_route_action` pair is the sealed
/// [defaultAction] argument (`.defaultUrlRedirect(...)` /
/// `.defaultRouteAction(...)`).
///
/// Composition pattern: extends `Resource` for
/// runtime behavior.
final class GoogleComputeRegionUrlMap extends Resource {
  static const String tfType = 'google_compute_region_url_map';

  GoogleComputeRegionUrlMap({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<String>? defaultService,
    TfArg<String>? description,
    List<ComputeRegionUrlMapHostRule>? hostRule,
    List<ComputeRegionUrlMapPathMatcher>? pathMatcher,
    List<ComputeRegionUrlMapTest>? test,
    ComputeRegionUrlMapDefaultAction? defaultAction,
    ComputeRegionUrlMapHeaderAction? headerAction,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'region': ?region,
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
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeRegionUrlMapSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeRegionUrlMap>`.
  RefTo<GoogleComputeRegionUrlMap> get ref => RefTo.of(this);

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

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
