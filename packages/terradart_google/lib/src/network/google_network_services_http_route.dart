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
    'action': ?action?.encode(),
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
    'timeout': ?timeout?.toTfJson(),
    'cors_policy': ?corsPolicy?.encode(),
    if (destinations != null)
      'destinations': [for (final e in destinations!) e.encode()],
    'fault_injection_policy': ?faultInjectionPolicy?.encode(),
    'redirect': ?redirect?.encode(),
    'request_header_modifier': ?requestHeaderModifier?.encode(),
    'request_mirror_policy': ?requestMirrorPolicy?.encode(),
    'response_header_modifier': ?responseHeaderModifier?.encode(),
    'retry_policy': ?retryPolicy?.encode(),
    'url_rewrite': ?urlRewrite?.encode(),
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
    'service_name': ?serviceName?.toTfJson(),
    'weight': ?weight?.toTfJson(),
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
    'abort': ?abort?.encode(),
    'delay': ?delay?.encode(),
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
    'http_status': ?httpStatus?.toTfJson(),
    'percentage': ?percentage?.toTfJson(),
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
    'fixed_delay': ?fixedDelay?.toTfJson(),
    'percentage': ?percentage?.toTfJson(),
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
    'host_redirect': ?hostRedirect?.toTfJson(),
    'https_redirect': ?httpsRedirect?.toTfJson(),
    'path_redirect': ?pathRedirect?.toTfJson(),
    'port_redirect': ?portRedirect?.toTfJson(),
    'prefix_rewrite': ?prefixRewrite?.toTfJson(),
    'response_code': ?responseCode?.toTfJson(),
    'strip_query': ?stripQuery?.toTfJson(),
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
    'add': ?add?.toTfJson(),
    'remove': ?remove?.toTfJson(),
    'set': ?set?.toTfJson(),
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

  Map<String, Object?> encode() => {'destination': ?destination?.encode()};
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
    'service_name': ?serviceName?.toTfJson(),
    'weight': ?weight?.toTfJson(),
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
    'add': ?add?.toTfJson(),
    'remove': ?remove?.toTfJson(),
    'set': ?set?.toTfJson(),
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
    'num_retries': ?numRetries?.toTfJson(),
    'per_try_timeout': ?perTryTimeout?.toTfJson(),
    'retry_conditions': ?retryConditions?.toTfJson(),
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
    'host_rewrite': ?hostRewrite?.toTfJson(),
    'path_prefix_rewrite': ?pathPrefixRewrite?.toTfJson(),
  };
}

/// Typed helper for the `rules.matches` block of
/// `google_network_services_http_route` (derived from provider schema).
@immutable
final class NetworkServicesHttpRouteRulesMatches {
  const NetworkServicesHttpRouteRulesMatches({
    required this.match,
    this.ignoreCase,
    this.headers,
    this.queryParameters,
  });

  final NetworkServicesHttpRouteRulesMatchesMatch match;

  final TfArg<bool>? ignoreCase;

  final List<NetworkServicesHttpRouteRulesMatchesHeaders>? headers;

  final List<NetworkServicesHttpRouteRulesMatchesQueryParameters>?
  queryParameters;

  Map<String, Object?> encode() => {
    ...match.encode(),
    'ignore_case': ?ignoreCase?.toTfJson(),
    if (headers != null) 'headers': [for (final e in headers!) e.encode()],
    if (queryParameters != null)
      'query_parameters': [for (final e in queryParameters!) e.encode()],
  };
}

/// Exactly one of `full_path_match`, `prefix_match`, `regex_match` on the `rules.matches` block of `google_network_services_http_route`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.fullPathMatch(...)`.
sealed class NetworkServicesHttpRouteRulesMatchesMatch {
  const NetworkServicesHttpRouteRulesMatchesMatch();

  /// Sets `full_path_match`.
  const factory NetworkServicesHttpRouteRulesMatchesMatch.fullPathMatch(
    TfArg<String> fullPathMatch,
  ) = NetworkServicesHttpRouteRulesMatchesMatchFullPathMatch;

  /// Sets `prefix_match`.
  const factory NetworkServicesHttpRouteRulesMatchesMatch.prefixMatch(
    TfArg<String> prefixMatch,
  ) = NetworkServicesHttpRouteRulesMatchesMatchPrefixMatch;

  /// Sets `regex_match`.
  const factory NetworkServicesHttpRouteRulesMatchesMatch.regexMatch(
    TfArg<String> regexMatch,
  ) = NetworkServicesHttpRouteRulesMatchesMatchRegexMatch;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [NetworkServicesHttpRouteRulesMatchesMatch.fullPathMatch] choice: sets `full_path_match`.
final class NetworkServicesHttpRouteRulesMatchesMatchFullPathMatch
    extends NetworkServicesHttpRouteRulesMatchesMatch {
  const NetworkServicesHttpRouteRulesMatchesMatchFullPathMatch(
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

/// The [NetworkServicesHttpRouteRulesMatchesMatch.prefixMatch] choice: sets `prefix_match`.
final class NetworkServicesHttpRouteRulesMatchesMatchPrefixMatch
    extends NetworkServicesHttpRouteRulesMatchesMatch {
  const NetworkServicesHttpRouteRulesMatchesMatchPrefixMatch(this.prefixMatch);

  final TfArg<String> prefixMatch;

  @override
  String get blockKey => 'prefix_match';

  @override
  Map<String, Object?> encode() => {'prefix_match': prefixMatch.toTfJson()};
}

/// The [NetworkServicesHttpRouteRulesMatchesMatch.regexMatch] choice: sets `regex_match`.
final class NetworkServicesHttpRouteRulesMatchesMatchRegexMatch
    extends NetworkServicesHttpRouteRulesMatchesMatch {
  const NetworkServicesHttpRouteRulesMatchesMatchRegexMatch(this.regexMatch);

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
    required this.match,
    this.header,
    this.invertMatch,
  });

  final NetworkServicesHttpRouteRulesMatchesHeadersMatch match;

  final TfArg<String>? header;

  final TfArg<bool>? invertMatch;

  Map<String, Object?> encode() => {
    ...match.encode(),
    'header': ?header?.toTfJson(),
    'invert_match': ?invertMatch?.toTfJson(),
  };
}

/// Exactly one of `exact_match`, `regex_match`, `prefix_match`, `present_match`, `suffix_match`, `range_match` on the `rules.matches.headers` block of `google_network_services_http_route`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.exactMatch(...)`.
sealed class NetworkServicesHttpRouteRulesMatchesHeadersMatch {
  const NetworkServicesHttpRouteRulesMatchesHeadersMatch();

  /// Sets `exact_match`.
  const factory NetworkServicesHttpRouteRulesMatchesHeadersMatch.exactMatch(
    TfArg<String> exactMatch,
  ) = NetworkServicesHttpRouteRulesMatchesHeadersMatchExactMatch;

  /// Sets `regex_match`.
  const factory NetworkServicesHttpRouteRulesMatchesHeadersMatch.regexMatch(
    TfArg<String> regexMatch,
  ) = NetworkServicesHttpRouteRulesMatchesHeadersMatchRegexMatch;

  /// Sets `prefix_match`.
  const factory NetworkServicesHttpRouteRulesMatchesHeadersMatch.prefixMatch(
    TfArg<String> prefixMatch,
  ) = NetworkServicesHttpRouteRulesMatchesHeadersMatchPrefixMatch;

  /// Sets `present_match`.
  const factory NetworkServicesHttpRouteRulesMatchesHeadersMatch.presentMatch(
    TfArg<bool> presentMatch,
  ) = NetworkServicesHttpRouteRulesMatchesHeadersMatchPresentMatch;

  /// Sets `suffix_match`.
  const factory NetworkServicesHttpRouteRulesMatchesHeadersMatch.suffixMatch(
    TfArg<String> suffixMatch,
  ) = NetworkServicesHttpRouteRulesMatchesHeadersMatchSuffixMatch;

  /// Sets `range_match`.
  const factory NetworkServicesHttpRouteRulesMatchesHeadersMatch.rangeMatch(
    NetworkServicesHttpRouteRulesMatchesHeadersRangeMatch rangeMatch,
  ) = NetworkServicesHttpRouteRulesMatchesHeadersMatchRangeMatch;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [NetworkServicesHttpRouteRulesMatchesHeadersMatch.exactMatch] choice: sets `exact_match`.
final class NetworkServicesHttpRouteRulesMatchesHeadersMatchExactMatch
    extends NetworkServicesHttpRouteRulesMatchesHeadersMatch {
  const NetworkServicesHttpRouteRulesMatchesHeadersMatchExactMatch(
    this.exactMatch,
  );

  final TfArg<String> exactMatch;

  @override
  String get blockKey => 'exact_match';

  @override
  Map<String, Object?> encode() => {'exact_match': exactMatch.toTfJson()};
}

/// The [NetworkServicesHttpRouteRulesMatchesHeadersMatch.regexMatch] choice: sets `regex_match`.
final class NetworkServicesHttpRouteRulesMatchesHeadersMatchRegexMatch
    extends NetworkServicesHttpRouteRulesMatchesHeadersMatch {
  const NetworkServicesHttpRouteRulesMatchesHeadersMatchRegexMatch(
    this.regexMatch,
  );

  final TfArg<String> regexMatch;

  @override
  String get blockKey => 'regex_match';

  @override
  Map<String, Object?> encode() => {'regex_match': regexMatch.toTfJson()};
}

/// The [NetworkServicesHttpRouteRulesMatchesHeadersMatch.prefixMatch] choice: sets `prefix_match`.
final class NetworkServicesHttpRouteRulesMatchesHeadersMatchPrefixMatch
    extends NetworkServicesHttpRouteRulesMatchesHeadersMatch {
  const NetworkServicesHttpRouteRulesMatchesHeadersMatchPrefixMatch(
    this.prefixMatch,
  );

  final TfArg<String> prefixMatch;

  @override
  String get blockKey => 'prefix_match';

  @override
  Map<String, Object?> encode() => {'prefix_match': prefixMatch.toTfJson()};
}

/// The [NetworkServicesHttpRouteRulesMatchesHeadersMatch.presentMatch] choice: sets `present_match`.
final class NetworkServicesHttpRouteRulesMatchesHeadersMatchPresentMatch
    extends NetworkServicesHttpRouteRulesMatchesHeadersMatch {
  const NetworkServicesHttpRouteRulesMatchesHeadersMatchPresentMatch(
    this.presentMatch,
  );

  final TfArg<bool> presentMatch;

  @override
  String get blockKey => 'present_match';

  @override
  Map<String, Object?> encode() => {'present_match': presentMatch.toTfJson()};
}

/// The [NetworkServicesHttpRouteRulesMatchesHeadersMatch.suffixMatch] choice: sets `suffix_match`.
final class NetworkServicesHttpRouteRulesMatchesHeadersMatchSuffixMatch
    extends NetworkServicesHttpRouteRulesMatchesHeadersMatch {
  const NetworkServicesHttpRouteRulesMatchesHeadersMatchSuffixMatch(
    this.suffixMatch,
  );

  final TfArg<String> suffixMatch;

  @override
  String get blockKey => 'suffix_match';

  @override
  Map<String, Object?> encode() => {'suffix_match': suffixMatch.toTfJson()};
}

/// The [NetworkServicesHttpRouteRulesMatchesHeadersMatch.rangeMatch] choice: sets `range_match`.
final class NetworkServicesHttpRouteRulesMatchesHeadersMatchRangeMatch
    extends NetworkServicesHttpRouteRulesMatchesHeadersMatch {
  const NetworkServicesHttpRouteRulesMatchesHeadersMatchRangeMatch(
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
    required this.match,
    this.queryParameter,
  });

  final NetworkServicesHttpRouteRulesMatchesQueryParametersMatch match;

  final TfArg<String>? queryParameter;

  Map<String, Object?> encode() => {
    ...match.encode(),
    'query_parameter': ?queryParameter?.toTfJson(),
  };
}

/// Exactly one of `exact_match`, `regex_match`, `present_match` on the `rules.matches.query_parameters` block of `google_network_services_http_route`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.exactMatch(...)`.
sealed class NetworkServicesHttpRouteRulesMatchesQueryParametersMatch {
  const NetworkServicesHttpRouteRulesMatchesQueryParametersMatch();

  /// Sets `exact_match`.
  const factory NetworkServicesHttpRouteRulesMatchesQueryParametersMatch.exactMatch(
    TfArg<String> exactMatch,
  ) = NetworkServicesHttpRouteRulesMatchesQueryParametersMatchExactMatch;

  /// Sets `regex_match`.
  const factory NetworkServicesHttpRouteRulesMatchesQueryParametersMatch.regexMatch(
    TfArg<String> regexMatch,
  ) = NetworkServicesHttpRouteRulesMatchesQueryParametersMatchRegexMatch;

  /// Sets `present_match`.
  const factory NetworkServicesHttpRouteRulesMatchesQueryParametersMatch.presentMatch(
    TfArg<bool> presentMatch,
  ) = NetworkServicesHttpRouteRulesMatchesQueryParametersMatchPresentMatch;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [NetworkServicesHttpRouteRulesMatchesQueryParametersMatch.exactMatch] choice: sets `exact_match`.
final class NetworkServicesHttpRouteRulesMatchesQueryParametersMatchExactMatch
    extends NetworkServicesHttpRouteRulesMatchesQueryParametersMatch {
  const NetworkServicesHttpRouteRulesMatchesQueryParametersMatchExactMatch(
    this.exactMatch,
  );

  final TfArg<String> exactMatch;

  @override
  String get blockKey => 'exact_match';

  @override
  Map<String, Object?> encode() => {'exact_match': exactMatch.toTfJson()};
}

/// The [NetworkServicesHttpRouteRulesMatchesQueryParametersMatch.regexMatch] choice: sets `regex_match`.
final class NetworkServicesHttpRouteRulesMatchesQueryParametersMatchRegexMatch
    extends NetworkServicesHttpRouteRulesMatchesQueryParametersMatch {
  const NetworkServicesHttpRouteRulesMatchesQueryParametersMatchRegexMatch(
    this.regexMatch,
  );

  final TfArg<String> regexMatch;

  @override
  String get blockKey => 'regex_match';

  @override
  Map<String, Object?> encode() => {'regex_match': regexMatch.toTfJson()};
}

/// The [NetworkServicesHttpRouteRulesMatchesQueryParametersMatch.presentMatch] choice: sets `present_match`.
final class NetworkServicesHttpRouteRulesMatchesQueryParametersMatchPresentMatch
    extends NetworkServicesHttpRouteRulesMatchesQueryParametersMatch {
  const NetworkServicesHttpRouteRulesMatchesQueryParametersMatchPresentMatch(
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
           'meshes': ?meshes,
           'gateways': ?gateways,
           'description': ?description,
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleNetworkServicesHttpRouteSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleNetworkServicesHttpRoute>`.
  RefTo<GoogleNetworkServicesHttpRoute> get ref => RefTo.of(this);

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
