// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_services_http_route`.
const Set<String> _googleNetworkServicesHttpRouteSensitive = <String>{};

/// Typed helper for the `rules` block of
/// `google_network_services_http_route` (derived from provider schema).
@immutable
final class NetworkServicesHttpRouteRules {
  const NetworkServicesHttpRouteRules({this.action, this.matches});

  final NetworkServicesHttpRouteRulesAction? action;

  final List<NetworkServicesHttpRouteRulesMatches>? matches;

  Map<String, Object?> encode() => {
    if (action != null) 'action': action!.encode(),
    if (matches != null) 'matches': [for (final e in matches!) e.encode()],
  };
}

/// Typed helper for the `rules.action` block of
/// `google_network_services_http_route` (derived from provider schema).
@immutable
final class NetworkServicesHttpRouteRulesAction {
  const NetworkServicesHttpRouteRulesAction({
    this.timeout,
    this.corsPolicy,
    this.destinations,
    this.faultInjectionPolicy,
    this.redirect,
    this.requestHeaderModifier,
    this.requestMirrorPolicy,
    this.responseHeaderModifier,
    this.retryPolicy,
    this.urlRewrite,
  });

  final TfArg<String>? timeout;

  final NetworkServicesHttpRouteRulesActionCorsPolicy? corsPolicy;

  final List<NetworkServicesHttpRouteRulesActionDestinations>? destinations;

  final NetworkServicesHttpRouteRulesActionFaultInjectionPolicy?
  faultInjectionPolicy;

  final NetworkServicesHttpRouteRulesActionRedirect? redirect;

  final NetworkServicesHttpRouteRulesActionRequestHeaderModifier?
  requestHeaderModifier;

  final NetworkServicesHttpRouteRulesActionRequestMirrorPolicy?
  requestMirrorPolicy;

  final NetworkServicesHttpRouteRulesActionResponseHeaderModifier?
  responseHeaderModifier;

  final NetworkServicesHttpRouteRulesActionRetryPolicy? retryPolicy;

  final NetworkServicesHttpRouteRulesActionUrlRewrite? urlRewrite;

  Map<String, Object?> encode() => {
    if (timeout != null) 'timeout': timeout!.toTfJson(),
    if (corsPolicy != null) 'cors_policy': corsPolicy!.encode(),
    if (destinations != null)
      'destinations': [for (final e in destinations!) e.encode()],
    if (faultInjectionPolicy != null)
      'fault_injection_policy': faultInjectionPolicy!.encode(),
    if (redirect != null) 'redirect': redirect!.encode(),
    if (requestHeaderModifier != null)
      'request_header_modifier': requestHeaderModifier!.encode(),
    if (requestMirrorPolicy != null)
      'request_mirror_policy': requestMirrorPolicy!.encode(),
    if (responseHeaderModifier != null)
      'response_header_modifier': responseHeaderModifier!.encode(),
    if (retryPolicy != null) 'retry_policy': retryPolicy!.encode(),
    if (urlRewrite != null) 'url_rewrite': urlRewrite!.encode(),
  };
}

/// Typed helper for the `rules.action.cors_policy` block of
/// `google_network_services_http_route` (derived from provider schema).
@immutable
final class NetworkServicesHttpRouteRulesActionCorsPolicy {
  const NetworkServicesHttpRouteRulesActionCorsPolicy({
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

  final TfArg<List<Object?>>? allowHeaders;

  final TfArg<List<Object?>>? allowMethods;

  final TfArg<List<Object?>>? allowOriginRegexes;

  final TfArg<List<Object?>>? allowOrigins;

  final TfArg<bool>? disabled;

  final TfArg<List<Object?>>? exposeHeaders;

  final TfArg<String>? maxAge;

  Map<String, Object?> encode() => {
    if (allowCredentials != null)
      'allow_credentials': allowCredentials!.toTfJson(),
    if (allowHeaders != null) 'allow_headers': allowHeaders!.toTfJson(),
    if (allowMethods != null) 'allow_methods': allowMethods!.toTfJson(),
    if (allowOriginRegexes != null)
      'allow_origin_regexes': allowOriginRegexes!.toTfJson(),
    if (allowOrigins != null) 'allow_origins': allowOrigins!.toTfJson(),
    if (disabled != null) 'disabled': disabled!.toTfJson(),
    if (exposeHeaders != null) 'expose_headers': exposeHeaders!.toTfJson(),
    if (maxAge != null) 'max_age': maxAge!.toTfJson(),
  };
}

/// Typed helper for the `rules.action.destinations` block of
/// `google_network_services_http_route` (derived from provider schema).
@immutable
final class NetworkServicesHttpRouteRulesActionDestinations {
  const NetworkServicesHttpRouteRulesActionDestinations({
    this.serviceName,
    this.weight,
  });

  final TfArg<String>? serviceName;

  final TfArg<num>? weight;

  Map<String, Object?> encode() => {
    if (serviceName != null) 'service_name': serviceName!.toTfJson(),
    if (weight != null) 'weight': weight!.toTfJson(),
  };
}

/// Typed helper for the `rules.action.fault_injection_policy` block of
/// `google_network_services_http_route` (derived from provider schema).
@immutable
final class NetworkServicesHttpRouteRulesActionFaultInjectionPolicy {
  const NetworkServicesHttpRouteRulesActionFaultInjectionPolicy({
    this.abort,
    this.delay,
  });

  final NetworkServicesHttpRouteRulesActionFaultInjectionPolicyAbort? abort;

  final NetworkServicesHttpRouteRulesActionFaultInjectionPolicyDelay? delay;

  Map<String, Object?> encode() => {
    if (abort != null) 'abort': abort!.encode(),
    if (delay != null) 'delay': delay!.encode(),
  };
}

/// Typed helper for the `rules.action.fault_injection_policy.abort` block of
/// `google_network_services_http_route` (derived from provider schema).
@immutable
final class NetworkServicesHttpRouteRulesActionFaultInjectionPolicyAbort {
  const NetworkServicesHttpRouteRulesActionFaultInjectionPolicyAbort({
    this.httpStatus,
    this.percentage,
  });

  final TfArg<num>? httpStatus;

  final TfArg<num>? percentage;

  Map<String, Object?> encode() => {
    if (httpStatus != null) 'http_status': httpStatus!.toTfJson(),
    if (percentage != null) 'percentage': percentage!.toTfJson(),
  };
}

/// Typed helper for the `rules.action.fault_injection_policy.delay` block of
/// `google_network_services_http_route` (derived from provider schema).
@immutable
final class NetworkServicesHttpRouteRulesActionFaultInjectionPolicyDelay {
  const NetworkServicesHttpRouteRulesActionFaultInjectionPolicyDelay({
    this.fixedDelay,
    this.percentage,
  });

  final TfArg<String>? fixedDelay;

  final TfArg<num>? percentage;

  Map<String, Object?> encode() => {
    if (fixedDelay != null) 'fixed_delay': fixedDelay!.toTfJson(),
    if (percentage != null) 'percentage': percentage!.toTfJson(),
  };
}

/// Typed helper for the `rules.action.redirect` block of
/// `google_network_services_http_route` (derived from provider schema).
@immutable
final class NetworkServicesHttpRouteRulesActionRedirect {
  const NetworkServicesHttpRouteRulesActionRedirect({
    this.hostRedirect,
    this.httpsRedirect,
    this.pathRedirect,
    this.portRedirect,
    this.prefixRewrite,
    this.responseCode,
    this.stripQuery,
  });

  final TfArg<String>? hostRedirect;

  final TfArg<bool>? httpsRedirect;

  final TfArg<String>? pathRedirect;

  final TfArg<num>? portRedirect;

  final TfArg<String>? prefixRewrite;

  final TfArg<String>? responseCode;

  final TfArg<bool>? stripQuery;

  Map<String, Object?> encode() => {
    if (hostRedirect != null) 'host_redirect': hostRedirect!.toTfJson(),
    if (httpsRedirect != null) 'https_redirect': httpsRedirect!.toTfJson(),
    if (pathRedirect != null) 'path_redirect': pathRedirect!.toTfJson(),
    if (portRedirect != null) 'port_redirect': portRedirect!.toTfJson(),
    if (prefixRewrite != null) 'prefix_rewrite': prefixRewrite!.toTfJson(),
    if (responseCode != null) 'response_code': responseCode!.toTfJson(),
    if (stripQuery != null) 'strip_query': stripQuery!.toTfJson(),
  };
}

/// Typed helper for the `rules.action.request_header_modifier` block of
/// `google_network_services_http_route` (derived from provider schema).
@immutable
final class NetworkServicesHttpRouteRulesActionRequestHeaderModifier {
  const NetworkServicesHttpRouteRulesActionRequestHeaderModifier({
    this.add,
    this.remove,
    this.set,
  });

  final TfArg<Map<String, String>>? add;

  final TfArg<List<Object?>>? remove;

  final TfArg<Map<String, String>>? set;

  Map<String, Object?> encode() => {
    if (add != null) 'add': add!.toTfJson(),
    if (remove != null) 'remove': remove!.toTfJson(),
    if (set != null) 'set': set!.toTfJson(),
  };
}

/// Typed helper for the `rules.action.request_mirror_policy` block of
/// `google_network_services_http_route` (derived from provider schema).
@immutable
final class NetworkServicesHttpRouteRulesActionRequestMirrorPolicy {
  const NetworkServicesHttpRouteRulesActionRequestMirrorPolicy({
    this.destination,
  });

  final NetworkServicesHttpRouteRulesActionRequestMirrorPolicyDestination?
  destination;

  Map<String, Object?> encode() => {
    if (destination != null) 'destination': destination!.encode(),
  };
}

/// Typed helper for the `rules.action.request_mirror_policy.destination` block of
/// `google_network_services_http_route` (derived from provider schema).
@immutable
final class NetworkServicesHttpRouteRulesActionRequestMirrorPolicyDestination {
  const NetworkServicesHttpRouteRulesActionRequestMirrorPolicyDestination({
    this.serviceName,
    this.weight,
  });

  final TfArg<String>? serviceName;

  final TfArg<num>? weight;

  Map<String, Object?> encode() => {
    if (serviceName != null) 'service_name': serviceName!.toTfJson(),
    if (weight != null) 'weight': weight!.toTfJson(),
  };
}

/// Typed helper for the `rules.action.response_header_modifier` block of
/// `google_network_services_http_route` (derived from provider schema).
@immutable
final class NetworkServicesHttpRouteRulesActionResponseHeaderModifier {
  const NetworkServicesHttpRouteRulesActionResponseHeaderModifier({
    this.add,
    this.remove,
    this.set,
  });

  final TfArg<Map<String, String>>? add;

  final TfArg<List<Object?>>? remove;

  final TfArg<Map<String, String>>? set;

  Map<String, Object?> encode() => {
    if (add != null) 'add': add!.toTfJson(),
    if (remove != null) 'remove': remove!.toTfJson(),
    if (set != null) 'set': set!.toTfJson(),
  };
}

/// Typed helper for the `rules.action.retry_policy` block of
/// `google_network_services_http_route` (derived from provider schema).
@immutable
final class NetworkServicesHttpRouteRulesActionRetryPolicy {
  const NetworkServicesHttpRouteRulesActionRetryPolicy({
    this.numRetries,
    this.perTryTimeout,
    this.retryConditions,
  });

  final TfArg<num>? numRetries;

  final TfArg<String>? perTryTimeout;

  final TfArg<List<Object?>>? retryConditions;

  Map<String, Object?> encode() => {
    if (numRetries != null) 'num_retries': numRetries!.toTfJson(),
    if (perTryTimeout != null) 'per_try_timeout': perTryTimeout!.toTfJson(),
    if (retryConditions != null)
      'retry_conditions': retryConditions!.toTfJson(),
  };
}

/// Typed helper for the `rules.action.url_rewrite` block of
/// `google_network_services_http_route` (derived from provider schema).
@immutable
final class NetworkServicesHttpRouteRulesActionUrlRewrite {
  const NetworkServicesHttpRouteRulesActionUrlRewrite({
    this.hostRewrite,
    this.pathPrefixRewrite,
  });

  final TfArg<String>? hostRewrite;

  final TfArg<String>? pathPrefixRewrite;

  Map<String, Object?> encode() => {
    if (hostRewrite != null) 'host_rewrite': hostRewrite!.toTfJson(),
    if (pathPrefixRewrite != null)
      'path_prefix_rewrite': pathPrefixRewrite!.toTfJson(),
  };
}

/// Typed helper for the `rules.matches` block of
/// `google_network_services_http_route` (derived from provider schema).
@immutable
final class NetworkServicesHttpRouteRulesMatches {
  const NetworkServicesHttpRouteRulesMatches({
    required this.fullPathMatchOrPrefixMatchOrRegexMatch,
    this.ignoreCase,
    this.headers,
    this.queryParameters,
  });

  final NetworkServicesHttpRouteRulesMatchesFullPathMatchOrPrefixMatchOrRegexMatch
  fullPathMatchOrPrefixMatchOrRegexMatch;

  final TfArg<bool>? ignoreCase;

  final List<NetworkServicesHttpRouteRulesMatchesHeaders>? headers;

  final List<NetworkServicesHttpRouteRulesMatchesQueryParameters>?
  queryParameters;

  Map<String, Object?> encode() => {
    ...fullPathMatchOrPrefixMatchOrRegexMatch.encode(),
    if (ignoreCase != null) 'ignore_case': ignoreCase!.toTfJson(),
    if (headers != null) 'headers': [for (final e in headers!) e.encode()],
    if (queryParameters != null)
      'query_parameters': [for (final e in queryParameters!) e.encode()],
  };
}

/// Exactly one of `full_path_match`, `prefix_match`, `regex_match` on the `rules.matches` block of `google_network_services_http_route`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.fullPathMatch(...)`.
sealed class NetworkServicesHttpRouteRulesMatchesFullPathMatchOrPrefixMatchOrRegexMatch {
  const NetworkServicesHttpRouteRulesMatchesFullPathMatchOrPrefixMatchOrRegexMatch();

  /// Sets `full_path_match`.
  const factory NetworkServicesHttpRouteRulesMatchesFullPathMatchOrPrefixMatchOrRegexMatch.fullPathMatch(
    TfArg<String> fullPathMatch,
  ) = NetworkServicesHttpRouteRulesMatchesFullPathMatchOrPrefixMatchOrRegexMatchFullPathMatch;

  /// Sets `prefix_match`.
  const factory NetworkServicesHttpRouteRulesMatchesFullPathMatchOrPrefixMatchOrRegexMatch.prefixMatch(
    TfArg<String> prefixMatch,
  ) = NetworkServicesHttpRouteRulesMatchesFullPathMatchOrPrefixMatchOrRegexMatchPrefixMatch;

  /// Sets `regex_match`.
  const factory NetworkServicesHttpRouteRulesMatchesFullPathMatchOrPrefixMatchOrRegexMatch.regexMatch(
    TfArg<String> regexMatch,
  ) = NetworkServicesHttpRouteRulesMatchesFullPathMatchOrPrefixMatchOrRegexMatchRegexMatch;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [NetworkServicesHttpRouteRulesMatchesFullPathMatchOrPrefixMatchOrRegexMatch.fullPathMatch] choice: sets `full_path_match`.
final class NetworkServicesHttpRouteRulesMatchesFullPathMatchOrPrefixMatchOrRegexMatchFullPathMatch
    extends
        NetworkServicesHttpRouteRulesMatchesFullPathMatchOrPrefixMatchOrRegexMatch {
  const NetworkServicesHttpRouteRulesMatchesFullPathMatchOrPrefixMatchOrRegexMatchFullPathMatch(
    this.fullPathMatch,
  );

  final TfArg<String> fullPathMatch;

  @override
  String get blockKey => 'full_path_match';

  @override
  Map<String, Object?> encode() => {
    'full_path_match': fullPathMatch.toTfJson(),
  };
}

/// The [NetworkServicesHttpRouteRulesMatchesFullPathMatchOrPrefixMatchOrRegexMatch.prefixMatch] choice: sets `prefix_match`.
final class NetworkServicesHttpRouteRulesMatchesFullPathMatchOrPrefixMatchOrRegexMatchPrefixMatch
    extends
        NetworkServicesHttpRouteRulesMatchesFullPathMatchOrPrefixMatchOrRegexMatch {
  const NetworkServicesHttpRouteRulesMatchesFullPathMatchOrPrefixMatchOrRegexMatchPrefixMatch(
    this.prefixMatch,
  );

  final TfArg<String> prefixMatch;

  @override
  String get blockKey => 'prefix_match';

  @override
  Map<String, Object?> encode() => {'prefix_match': prefixMatch.toTfJson()};
}

/// The [NetworkServicesHttpRouteRulesMatchesFullPathMatchOrPrefixMatchOrRegexMatch.regexMatch] choice: sets `regex_match`.
final class NetworkServicesHttpRouteRulesMatchesFullPathMatchOrPrefixMatchOrRegexMatchRegexMatch
    extends
        NetworkServicesHttpRouteRulesMatchesFullPathMatchOrPrefixMatchOrRegexMatch {
  const NetworkServicesHttpRouteRulesMatchesFullPathMatchOrPrefixMatchOrRegexMatchRegexMatch(
    this.regexMatch,
  );

  final TfArg<String> regexMatch;

  @override
  String get blockKey => 'regex_match';

  @override
  Map<String, Object?> encode() => {'regex_match': regexMatch.toTfJson()};
}

/// Typed helper for the `rules.matches.headers` block of
/// `google_network_services_http_route` (derived from provider schema).
@immutable
final class NetworkServicesHttpRouteRulesMatchesHeaders {
  const NetworkServicesHttpRouteRulesMatchesHeaders({
    required this.exactMatchOrRegexMatchOrPrefixMatchOrPresentMatchOrSuffixMatchOrRangeMatch,
    this.header,
    this.invertMatch,
  });

  final NetworkServicesHttpRouteRulesMatchesHeadersExactMatchOrRegexMatchOrPrefixMatchOrPresentMatchOrSuffixMatchOrRangeMatch
  exactMatchOrRegexMatchOrPrefixMatchOrPresentMatchOrSuffixMatchOrRangeMatch;

  final TfArg<String>? header;

  final TfArg<bool>? invertMatch;

  Map<String, Object?> encode() => {
    ...exactMatchOrRegexMatchOrPrefixMatchOrPresentMatchOrSuffixMatchOrRangeMatch
        .encode(),
    if (header != null) 'header': header!.toTfJson(),
    if (invertMatch != null) 'invert_match': invertMatch!.toTfJson(),
  };
}

/// Exactly one of `exact_match`, `regex_match`, `prefix_match`, `present_match`, `suffix_match`, `range_match` on the `rules.matches.headers` block of `google_network_services_http_route`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.exactMatch(...)`.
sealed class NetworkServicesHttpRouteRulesMatchesHeadersExactMatchOrRegexMatchOrPrefixMatchOrPresentMatchOrSuffixMatchOrRangeMatch {
  const NetworkServicesHttpRouteRulesMatchesHeadersExactMatchOrRegexMatchOrPrefixMatchOrPresentMatchOrSuffixMatchOrRangeMatch();

  /// Sets `exact_match`.
  const factory NetworkServicesHttpRouteRulesMatchesHeadersExactMatchOrRegexMatchOrPrefixMatchOrPresentMatchOrSuffixMatchOrRangeMatch.exactMatch(
    TfArg<String> exactMatch,
  ) = NetworkServicesHttpRouteRulesMatchesHeadersExactMatchOrRegexMatchOrPrefixMatchOrPresentMatchOrSuffixMatchOrRangeMatchExactMatch;

  /// Sets `regex_match`.
  const factory NetworkServicesHttpRouteRulesMatchesHeadersExactMatchOrRegexMatchOrPrefixMatchOrPresentMatchOrSuffixMatchOrRangeMatch.regexMatch(
    TfArg<String> regexMatch,
  ) = NetworkServicesHttpRouteRulesMatchesHeadersExactMatchOrRegexMatchOrPrefixMatchOrPresentMatchOrSuffixMatchOrRangeMatchRegexMatch;

  /// Sets `prefix_match`.
  const factory NetworkServicesHttpRouteRulesMatchesHeadersExactMatchOrRegexMatchOrPrefixMatchOrPresentMatchOrSuffixMatchOrRangeMatch.prefixMatch(
    TfArg<String> prefixMatch,
  ) = NetworkServicesHttpRouteRulesMatchesHeadersExactMatchOrRegexMatchOrPrefixMatchOrPresentMatchOrSuffixMatchOrRangeMatchPrefixMatch;

  /// Sets `present_match`.
  const factory NetworkServicesHttpRouteRulesMatchesHeadersExactMatchOrRegexMatchOrPrefixMatchOrPresentMatchOrSuffixMatchOrRangeMatch.presentMatch(
    TfArg<bool> presentMatch,
  ) = NetworkServicesHttpRouteRulesMatchesHeadersExactMatchOrRegexMatchOrPrefixMatchOrPresentMatchOrSuffixMatchOrRangeMatchPresentMatch;

  /// Sets `suffix_match`.
  const factory NetworkServicesHttpRouteRulesMatchesHeadersExactMatchOrRegexMatchOrPrefixMatchOrPresentMatchOrSuffixMatchOrRangeMatch.suffixMatch(
    TfArg<String> suffixMatch,
  ) = NetworkServicesHttpRouteRulesMatchesHeadersExactMatchOrRegexMatchOrPrefixMatchOrPresentMatchOrSuffixMatchOrRangeMatchSuffixMatch;

  /// Sets `range_match`.
  const factory NetworkServicesHttpRouteRulesMatchesHeadersExactMatchOrRegexMatchOrPrefixMatchOrPresentMatchOrSuffixMatchOrRangeMatch.rangeMatch(
    NetworkServicesHttpRouteRulesMatchesHeadersRangeMatch rangeMatch,
  ) = NetworkServicesHttpRouteRulesMatchesHeadersExactMatchOrRegexMatchOrPrefixMatchOrPresentMatchOrSuffixMatchOrRangeMatchRangeMatch;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [NetworkServicesHttpRouteRulesMatchesHeadersExactMatchOrRegexMatchOrPrefixMatchOrPresentMatchOrSuffixMatchOrRangeMatch.exactMatch] choice: sets `exact_match`.
final class NetworkServicesHttpRouteRulesMatchesHeadersExactMatchOrRegexMatchOrPrefixMatchOrPresentMatchOrSuffixMatchOrRangeMatchExactMatch
    extends
        NetworkServicesHttpRouteRulesMatchesHeadersExactMatchOrRegexMatchOrPrefixMatchOrPresentMatchOrSuffixMatchOrRangeMatch {
  const NetworkServicesHttpRouteRulesMatchesHeadersExactMatchOrRegexMatchOrPrefixMatchOrPresentMatchOrSuffixMatchOrRangeMatchExactMatch(
    this.exactMatch,
  );

  final TfArg<String> exactMatch;

  @override
  String get blockKey => 'exact_match';

  @override
  Map<String, Object?> encode() => {'exact_match': exactMatch.toTfJson()};
}

/// The [NetworkServicesHttpRouteRulesMatchesHeadersExactMatchOrRegexMatchOrPrefixMatchOrPresentMatchOrSuffixMatchOrRangeMatch.regexMatch] choice: sets `regex_match`.
final class NetworkServicesHttpRouteRulesMatchesHeadersExactMatchOrRegexMatchOrPrefixMatchOrPresentMatchOrSuffixMatchOrRangeMatchRegexMatch
    extends
        NetworkServicesHttpRouteRulesMatchesHeadersExactMatchOrRegexMatchOrPrefixMatchOrPresentMatchOrSuffixMatchOrRangeMatch {
  const NetworkServicesHttpRouteRulesMatchesHeadersExactMatchOrRegexMatchOrPrefixMatchOrPresentMatchOrSuffixMatchOrRangeMatchRegexMatch(
    this.regexMatch,
  );

  final TfArg<String> regexMatch;

  @override
  String get blockKey => 'regex_match';

  @override
  Map<String, Object?> encode() => {'regex_match': regexMatch.toTfJson()};
}

/// The [NetworkServicesHttpRouteRulesMatchesHeadersExactMatchOrRegexMatchOrPrefixMatchOrPresentMatchOrSuffixMatchOrRangeMatch.prefixMatch] choice: sets `prefix_match`.
final class NetworkServicesHttpRouteRulesMatchesHeadersExactMatchOrRegexMatchOrPrefixMatchOrPresentMatchOrSuffixMatchOrRangeMatchPrefixMatch
    extends
        NetworkServicesHttpRouteRulesMatchesHeadersExactMatchOrRegexMatchOrPrefixMatchOrPresentMatchOrSuffixMatchOrRangeMatch {
  const NetworkServicesHttpRouteRulesMatchesHeadersExactMatchOrRegexMatchOrPrefixMatchOrPresentMatchOrSuffixMatchOrRangeMatchPrefixMatch(
    this.prefixMatch,
  );

  final TfArg<String> prefixMatch;

  @override
  String get blockKey => 'prefix_match';

  @override
  Map<String, Object?> encode() => {'prefix_match': prefixMatch.toTfJson()};
}

/// The [NetworkServicesHttpRouteRulesMatchesHeadersExactMatchOrRegexMatchOrPrefixMatchOrPresentMatchOrSuffixMatchOrRangeMatch.presentMatch] choice: sets `present_match`.
final class NetworkServicesHttpRouteRulesMatchesHeadersExactMatchOrRegexMatchOrPrefixMatchOrPresentMatchOrSuffixMatchOrRangeMatchPresentMatch
    extends
        NetworkServicesHttpRouteRulesMatchesHeadersExactMatchOrRegexMatchOrPrefixMatchOrPresentMatchOrSuffixMatchOrRangeMatch {
  const NetworkServicesHttpRouteRulesMatchesHeadersExactMatchOrRegexMatchOrPrefixMatchOrPresentMatchOrSuffixMatchOrRangeMatchPresentMatch(
    this.presentMatch,
  );

  final TfArg<bool> presentMatch;

  @override
  String get blockKey => 'present_match';

  @override
  Map<String, Object?> encode() => {'present_match': presentMatch.toTfJson()};
}

/// The [NetworkServicesHttpRouteRulesMatchesHeadersExactMatchOrRegexMatchOrPrefixMatchOrPresentMatchOrSuffixMatchOrRangeMatch.suffixMatch] choice: sets `suffix_match`.
final class NetworkServicesHttpRouteRulesMatchesHeadersExactMatchOrRegexMatchOrPrefixMatchOrPresentMatchOrSuffixMatchOrRangeMatchSuffixMatch
    extends
        NetworkServicesHttpRouteRulesMatchesHeadersExactMatchOrRegexMatchOrPrefixMatchOrPresentMatchOrSuffixMatchOrRangeMatch {
  const NetworkServicesHttpRouteRulesMatchesHeadersExactMatchOrRegexMatchOrPrefixMatchOrPresentMatchOrSuffixMatchOrRangeMatchSuffixMatch(
    this.suffixMatch,
  );

  final TfArg<String> suffixMatch;

  @override
  String get blockKey => 'suffix_match';

  @override
  Map<String, Object?> encode() => {'suffix_match': suffixMatch.toTfJson()};
}

/// The [NetworkServicesHttpRouteRulesMatchesHeadersExactMatchOrRegexMatchOrPrefixMatchOrPresentMatchOrSuffixMatchOrRangeMatch.rangeMatch] choice: sets `range_match`.
final class NetworkServicesHttpRouteRulesMatchesHeadersExactMatchOrRegexMatchOrPrefixMatchOrPresentMatchOrSuffixMatchOrRangeMatchRangeMatch
    extends
        NetworkServicesHttpRouteRulesMatchesHeadersExactMatchOrRegexMatchOrPrefixMatchOrPresentMatchOrSuffixMatchOrRangeMatch {
  const NetworkServicesHttpRouteRulesMatchesHeadersExactMatchOrRegexMatchOrPrefixMatchOrPresentMatchOrSuffixMatchOrRangeMatchRangeMatch(
    this.rangeMatch,
  );

  final NetworkServicesHttpRouteRulesMatchesHeadersRangeMatch rangeMatch;

  @override
  String get blockKey => 'range_match';

  @override
  Map<String, Object?> encode() => {'range_match': rangeMatch.encode()};
}

/// Typed helper for the `rules.matches.headers.range_match` block of
/// `google_network_services_http_route` (derived from provider schema).
@immutable
final class NetworkServicesHttpRouteRulesMatchesHeadersRangeMatch {
  const NetworkServicesHttpRouteRulesMatchesHeadersRangeMatch({
    required this.end,
    required this.start,
  });

  final TfArg<num> end;

  final TfArg<num> start;

  Map<String, Object?> encode() => {
    'end': end.toTfJson(),
    'start': start.toTfJson(),
  };
}

/// Typed helper for the `rules.matches.query_parameters` block of
/// `google_network_services_http_route` (derived from provider schema).
@immutable
final class NetworkServicesHttpRouteRulesMatchesQueryParameters {
  const NetworkServicesHttpRouteRulesMatchesQueryParameters({
    required this.exactMatchOrRegexMatchOrPresentMatch,
    this.queryParameter,
  });

  final NetworkServicesHttpRouteRulesMatchesQueryParametersExactMatchOrRegexMatchOrPresentMatch
  exactMatchOrRegexMatchOrPresentMatch;

  final TfArg<String>? queryParameter;

  Map<String, Object?> encode() => {
    ...exactMatchOrRegexMatchOrPresentMatch.encode(),
    if (queryParameter != null) 'query_parameter': queryParameter!.toTfJson(),
  };
}

/// Exactly one of `exact_match`, `regex_match`, `present_match` on the `rules.matches.query_parameters` block of `google_network_services_http_route`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.exactMatch(...)`.
sealed class NetworkServicesHttpRouteRulesMatchesQueryParametersExactMatchOrRegexMatchOrPresentMatch {
  const NetworkServicesHttpRouteRulesMatchesQueryParametersExactMatchOrRegexMatchOrPresentMatch();

  /// Sets `exact_match`.
  const factory NetworkServicesHttpRouteRulesMatchesQueryParametersExactMatchOrRegexMatchOrPresentMatch.exactMatch(
    TfArg<String> exactMatch,
  ) = NetworkServicesHttpRouteRulesMatchesQueryParametersExactMatchOrRegexMatchOrPresentMatchExactMatch;

  /// Sets `regex_match`.
  const factory NetworkServicesHttpRouteRulesMatchesQueryParametersExactMatchOrRegexMatchOrPresentMatch.regexMatch(
    TfArg<String> regexMatch,
  ) = NetworkServicesHttpRouteRulesMatchesQueryParametersExactMatchOrRegexMatchOrPresentMatchRegexMatch;

  /// Sets `present_match`.
  const factory NetworkServicesHttpRouteRulesMatchesQueryParametersExactMatchOrRegexMatchOrPresentMatch.presentMatch(
    TfArg<bool> presentMatch,
  ) = NetworkServicesHttpRouteRulesMatchesQueryParametersExactMatchOrRegexMatchOrPresentMatchPresentMatch;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [NetworkServicesHttpRouteRulesMatchesQueryParametersExactMatchOrRegexMatchOrPresentMatch.exactMatch] choice: sets `exact_match`.
final class NetworkServicesHttpRouteRulesMatchesQueryParametersExactMatchOrRegexMatchOrPresentMatchExactMatch
    extends
        NetworkServicesHttpRouteRulesMatchesQueryParametersExactMatchOrRegexMatchOrPresentMatch {
  const NetworkServicesHttpRouteRulesMatchesQueryParametersExactMatchOrRegexMatchOrPresentMatchExactMatch(
    this.exactMatch,
  );

  final TfArg<String> exactMatch;

  @override
  String get blockKey => 'exact_match';

  @override
  Map<String, Object?> encode() => {'exact_match': exactMatch.toTfJson()};
}

/// The [NetworkServicesHttpRouteRulesMatchesQueryParametersExactMatchOrRegexMatchOrPresentMatch.regexMatch] choice: sets `regex_match`.
final class NetworkServicesHttpRouteRulesMatchesQueryParametersExactMatchOrRegexMatchOrPresentMatchRegexMatch
    extends
        NetworkServicesHttpRouteRulesMatchesQueryParametersExactMatchOrRegexMatchOrPresentMatch {
  const NetworkServicesHttpRouteRulesMatchesQueryParametersExactMatchOrRegexMatchOrPresentMatchRegexMatch(
    this.regexMatch,
  );

  final TfArg<String> regexMatch;

  @override
  String get blockKey => 'regex_match';

  @override
  Map<String, Object?> encode() => {'regex_match': regexMatch.toTfJson()};
}

/// The [NetworkServicesHttpRouteRulesMatchesQueryParametersExactMatchOrRegexMatchOrPresentMatch.presentMatch] choice: sets `present_match`.
final class NetworkServicesHttpRouteRulesMatchesQueryParametersExactMatchOrRegexMatchOrPresentMatchPresentMatch
    extends
        NetworkServicesHttpRouteRulesMatchesQueryParametersExactMatchOrRegexMatchOrPresentMatch {
  const NetworkServicesHttpRouteRulesMatchesQueryParametersExactMatchOrRegexMatchOrPresentMatchPresentMatch(
    this.presentMatch,
  );

  final TfArg<bool> presentMatch;

  @override
  String get blockKey => 'present_match';

  @override
  Map<String, Object?> encode() => {'present_match': presentMatch.toTfJson()};
}

/// Factory wrapper for `google_network_services_http_route`.
///
/// HttpRoute is the resource defining how HTTP traffic should be routed by a
/// Mesh or Gateway resource.
///
/// Cloud Service Mesh **HTTP route** — hostname + path matchers that
/// attach to a [GoogleNetworkServicesMesh] (or a gateway). Config only
/// until workloads join the mesh; do not attach a
/// [GoogleNetworkServicesGateway] in apply-smoke (SWG is $1.25/h).
final class GoogleNetworkServicesHttpRoute extends Resource {
  static const String tfType = 'google_network_services_http_route';

  GoogleNetworkServicesHttpRoute({
    required super.localName,
    required TfArg<String> name,
    required TfArg<List<String>> hostnames,
    required List<NetworkServicesHttpRouteRules> rules,
    TfArg<List<String>>? meshes,
    TfArg<List<String>>? gateways,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'hostnames': hostnames,
           'rules': TfArg.literal([for (final e in rules) e.encode()]),
           if (meshes != null) 'meshes': meshes,
           if (gateways != null) 'gateways': gateways,
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleNetworkServicesHttpRouteSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
