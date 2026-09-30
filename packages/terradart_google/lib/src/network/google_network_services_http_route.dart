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

  final NetworkServicesHttpRouteAction? action;

  final List<NetworkServicesHttpRouteMatches>? matches;

  Map<String, Object?> encode() => {
    'action': ?action?.encode(),
    if (matches != null) 'matches': [for (final e in matches!) e.encode()],
  };
}

/// Typed helper for the `rules.action` block of
/// `google_network_services_http_route` (derived from provider schema).
@immutable
final class NetworkServicesHttpRouteAction {
  const NetworkServicesHttpRouteAction({
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

  final NetworkServicesHttpRouteCorsPolicy? corsPolicy;

  final List<NetworkServicesHttpRouteDestinations>? destinations;

  final NetworkServicesHttpRouteFaultInjectionPolicy? faultInjectionPolicy;

  final NetworkServicesHttpRouteRedirect? redirect;

  final NetworkServicesHttpRouteRequestHeaderModifier? requestHeaderModifier;

  final NetworkServicesHttpRouteRequestMirrorPolicy? requestMirrorPolicy;

  final NetworkServicesHttpRouteResponseHeaderModifier? responseHeaderModifier;

  final NetworkServicesHttpRouteRetryPolicy? retryPolicy;

  final NetworkServicesHttpRouteUrlRewrite? urlRewrite;

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
final class NetworkServicesHttpRouteCorsPolicy {
  const NetworkServicesHttpRouteCorsPolicy({
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
final class NetworkServicesHttpRouteDestinations {
  const NetworkServicesHttpRouteDestinations({this.serviceName, this.weight});

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
final class NetworkServicesHttpRouteFaultInjectionPolicy {
  const NetworkServicesHttpRouteFaultInjectionPolicy({this.abort, this.delay});

  final NetworkServicesHttpRouteAbort? abort;

  final NetworkServicesHttpRouteDelay? delay;

  Map<String, Object?> encode() => {
    'abort': ?abort?.encode(),
    'delay': ?delay?.encode(),
  };
}

/// Typed helper for the `rules.action.fault_injection_policy.abort` block of
/// `google_network_services_http_route` (derived from provider schema).
@immutable
final class NetworkServicesHttpRouteAbort {
  const NetworkServicesHttpRouteAbort({this.httpStatus, this.percentage});

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
final class NetworkServicesHttpRouteDelay {
  const NetworkServicesHttpRouteDelay({this.fixedDelay, this.percentage});

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
final class NetworkServicesHttpRouteRedirect {
  const NetworkServicesHttpRouteRedirect({
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
final class NetworkServicesHttpRouteRequestHeaderModifier {
  const NetworkServicesHttpRouteRequestHeaderModifier({
    this.add,
    this.remove,
    this.set,
  });

  final TfArg<Map<String, String>>? add;

  final TfArg<List<String>>? remove;

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
final class NetworkServicesHttpRouteRequestMirrorPolicy {
  const NetworkServicesHttpRouteRequestMirrorPolicy({this.destination});

  final NetworkServicesHttpRouteDestination? destination;

  Map<String, Object?> encode() => {'destination': ?destination?.encode()};
}

/// Typed helper for the `rules.action.request_mirror_policy.destination` block of
/// `google_network_services_http_route` (derived from provider schema).
@immutable
final class NetworkServicesHttpRouteDestination {
  const NetworkServicesHttpRouteDestination({this.serviceName, this.weight});

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
final class NetworkServicesHttpRouteResponseHeaderModifier {
  const NetworkServicesHttpRouteResponseHeaderModifier({
    this.add,
    this.remove,
    this.set,
  });

  final TfArg<Map<String, String>>? add;

  final TfArg<List<String>>? remove;

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
final class NetworkServicesHttpRouteRetryPolicy {
  const NetworkServicesHttpRouteRetryPolicy({
    this.numRetries,
    this.perTryTimeout,
    this.retryConditions,
  });

  final TfArg<num>? numRetries;

  final TfArg<String>? perTryTimeout;

  final TfArg<List<String>>? retryConditions;

  Map<String, Object?> encode() => {
    'num_retries': ?numRetries?.toTfJson(),
    'per_try_timeout': ?perTryTimeout?.toTfJson(),
    'retry_conditions': ?retryConditions?.toTfJson(),
  };
}

/// Typed helper for the `rules.action.url_rewrite` block of
/// `google_network_services_http_route` (derived from provider schema).
@immutable
final class NetworkServicesHttpRouteUrlRewrite {
  const NetworkServicesHttpRouteUrlRewrite({
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
final class NetworkServicesHttpRouteMatches {
  const NetworkServicesHttpRouteMatches({
    required this.match,
    this.ignoreCase,
    this.headers,
    this.queryParameters,
  });

  final NetworkServicesHttpRouteMatch match;

  final TfArg<bool>? ignoreCase;

  final List<NetworkServicesHttpRouteHeaders>? headers;

  final List<NetworkServicesHttpRouteQueryParameters>? queryParameters;

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
sealed class NetworkServicesHttpRouteMatch {
  const NetworkServicesHttpRouteMatch();

  /// Sets `full_path_match`.
  const factory NetworkServicesHttpRouteMatch.fullPathMatch(
    TfArg<String> fullPathMatch,
  ) = NetworkServicesHttpRouteFullPathMatch;

  /// Sets `prefix_match`.
  const factory NetworkServicesHttpRouteMatch.prefixMatch(
    TfArg<String> prefixMatch,
  ) = NetworkServicesHttpRoutePrefixMatch;

  /// Sets `regex_match`.
  const factory NetworkServicesHttpRouteMatch.regexMatch(
    TfArg<String> regexMatch,
  ) = NetworkServicesHttpRouteRegexMatch;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [NetworkServicesHttpRouteMatch.fullPathMatch] choice: sets `full_path_match`.
final class NetworkServicesHttpRouteFullPathMatch
    extends NetworkServicesHttpRouteMatch {
  const NetworkServicesHttpRouteFullPathMatch(this.fullPathMatch);

  final TfArg<String> fullPathMatch;

  @override
  String get blockKey => 'full_path_match';

  @override
  Map<String, Object?> encode() => {
    'full_path_match': fullPathMatch.toTfJson(),
  };
}

/// The [NetworkServicesHttpRouteMatch.prefixMatch] choice: sets `prefix_match`.
final class NetworkServicesHttpRoutePrefixMatch
    extends NetworkServicesHttpRouteMatch {
  const NetworkServicesHttpRoutePrefixMatch(this.prefixMatch);

  final TfArg<String> prefixMatch;

  @override
  String get blockKey => 'prefix_match';

  @override
  Map<String, Object?> encode() => {'prefix_match': prefixMatch.toTfJson()};
}

/// The [NetworkServicesHttpRouteMatch.regexMatch] choice: sets `regex_match`.
final class NetworkServicesHttpRouteRegexMatch
    extends NetworkServicesHttpRouteMatch {
  const NetworkServicesHttpRouteRegexMatch(this.regexMatch);

  final TfArg<String> regexMatch;

  @override
  String get blockKey => 'regex_match';

  @override
  Map<String, Object?> encode() => {'regex_match': regexMatch.toTfJson()};
}

/// Typed helper for the `rules.matches.headers` block of
/// `google_network_services_http_route` (derived from provider schema).
@immutable
final class NetworkServicesHttpRouteHeaders {
  const NetworkServicesHttpRouteHeaders({
    required this.match,
    this.header,
    this.invertMatch,
  });

  final NetworkServicesHttpRouteHeadersMatch match;

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
sealed class NetworkServicesHttpRouteHeadersMatch {
  const NetworkServicesHttpRouteHeadersMatch();

  /// Sets `exact_match`.
  const factory NetworkServicesHttpRouteHeadersMatch.exactMatch(
    TfArg<String> exactMatch,
  ) = NetworkServicesHttpRouteHeadersExactMatch;

  /// Sets `regex_match`.
  const factory NetworkServicesHttpRouteHeadersMatch.regexMatch(
    TfArg<String> regexMatch,
  ) = NetworkServicesHttpRouteHeadersRegexMatch;

  /// Sets `prefix_match`.
  const factory NetworkServicesHttpRouteHeadersMatch.prefixMatch(
    TfArg<String> prefixMatch,
  ) = NetworkServicesHttpRouteHeadersPrefixMatch;

  /// Sets `present_match`.
  const factory NetworkServicesHttpRouteHeadersMatch.presentMatch(
    TfArg<bool> presentMatch,
  ) = NetworkServicesHttpRouteHeadersPresentMatch;

  /// Sets `suffix_match`.
  const factory NetworkServicesHttpRouteHeadersMatch.suffixMatch(
    TfArg<String> suffixMatch,
  ) = NetworkServicesHttpRouteHeadersSuffixMatch;

  /// Sets `range_match`.
  const factory NetworkServicesHttpRouteHeadersMatch.rangeMatch(
    NetworkServicesHttpRouteRangeMatch rangeMatch,
  ) = NetworkServicesHttpRouteHeadersRangeMatch;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [NetworkServicesHttpRouteHeadersMatch.exactMatch] choice: sets `exact_match`.
final class NetworkServicesHttpRouteHeadersExactMatch
    extends NetworkServicesHttpRouteHeadersMatch {
  const NetworkServicesHttpRouteHeadersExactMatch(this.exactMatch);

  final TfArg<String> exactMatch;

  @override
  String get blockKey => 'exact_match';

  @override
  Map<String, Object?> encode() => {'exact_match': exactMatch.toTfJson()};
}

/// The [NetworkServicesHttpRouteHeadersMatch.regexMatch] choice: sets `regex_match`.
final class NetworkServicesHttpRouteHeadersRegexMatch
    extends NetworkServicesHttpRouteHeadersMatch {
  const NetworkServicesHttpRouteHeadersRegexMatch(this.regexMatch);

  final TfArg<String> regexMatch;

  @override
  String get blockKey => 'regex_match';

  @override
  Map<String, Object?> encode() => {'regex_match': regexMatch.toTfJson()};
}

/// The [NetworkServicesHttpRouteHeadersMatch.prefixMatch] choice: sets `prefix_match`.
final class NetworkServicesHttpRouteHeadersPrefixMatch
    extends NetworkServicesHttpRouteHeadersMatch {
  const NetworkServicesHttpRouteHeadersPrefixMatch(this.prefixMatch);

  final TfArg<String> prefixMatch;

  @override
  String get blockKey => 'prefix_match';

  @override
  Map<String, Object?> encode() => {'prefix_match': prefixMatch.toTfJson()};
}

/// The [NetworkServicesHttpRouteHeadersMatch.presentMatch] choice: sets `present_match`.
final class NetworkServicesHttpRouteHeadersPresentMatch
    extends NetworkServicesHttpRouteHeadersMatch {
  const NetworkServicesHttpRouteHeadersPresentMatch(this.presentMatch);

  final TfArg<bool> presentMatch;

  @override
  String get blockKey => 'present_match';

  @override
  Map<String, Object?> encode() => {'present_match': presentMatch.toTfJson()};
}

/// The [NetworkServicesHttpRouteHeadersMatch.suffixMatch] choice: sets `suffix_match`.
final class NetworkServicesHttpRouteHeadersSuffixMatch
    extends NetworkServicesHttpRouteHeadersMatch {
  const NetworkServicesHttpRouteHeadersSuffixMatch(this.suffixMatch);

  final TfArg<String> suffixMatch;

  @override
  String get blockKey => 'suffix_match';

  @override
  Map<String, Object?> encode() => {'suffix_match': suffixMatch.toTfJson()};
}

/// The [NetworkServicesHttpRouteHeadersMatch.rangeMatch] choice: sets `range_match`.
final class NetworkServicesHttpRouteHeadersRangeMatch
    extends NetworkServicesHttpRouteHeadersMatch {
  const NetworkServicesHttpRouteHeadersRangeMatch(this.rangeMatch);

  final NetworkServicesHttpRouteRangeMatch rangeMatch;

  @override
  String get blockKey => 'range_match';

  @override
  Map<String, Object?> encode() => {'range_match': rangeMatch.encode()};
}

/// Typed helper for the `rules.matches.headers.range_match` block of
/// `google_network_services_http_route` (derived from provider schema).
@immutable
final class NetworkServicesHttpRouteRangeMatch {
  const NetworkServicesHttpRouteRangeMatch({
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
final class NetworkServicesHttpRouteQueryParameters {
  const NetworkServicesHttpRouteQueryParameters({
    required this.match,
    this.queryParameter,
  });

  final NetworkServicesHttpRouteQueryParametersMatch match;

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
sealed class NetworkServicesHttpRouteQueryParametersMatch {
  const NetworkServicesHttpRouteQueryParametersMatch();

  /// Sets `exact_match`.
  const factory NetworkServicesHttpRouteQueryParametersMatch.exactMatch(
    TfArg<String> exactMatch,
  ) = NetworkServicesHttpRouteQueryParametersExactMatch;

  /// Sets `regex_match`.
  const factory NetworkServicesHttpRouteQueryParametersMatch.regexMatch(
    TfArg<String> regexMatch,
  ) = NetworkServicesHttpRouteQueryParametersRegexMatch;

  /// Sets `present_match`.
  const factory NetworkServicesHttpRouteQueryParametersMatch.presentMatch(
    TfArg<bool> presentMatch,
  ) = NetworkServicesHttpRouteQueryParametersPresentMatch;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [NetworkServicesHttpRouteQueryParametersMatch.exactMatch] choice: sets `exact_match`.
final class NetworkServicesHttpRouteQueryParametersExactMatch
    extends NetworkServicesHttpRouteQueryParametersMatch {
  const NetworkServicesHttpRouteQueryParametersExactMatch(this.exactMatch);

  final TfArg<String> exactMatch;

  @override
  String get blockKey => 'exact_match';

  @override
  Map<String, Object?> encode() => {'exact_match': exactMatch.toTfJson()};
}

/// The [NetworkServicesHttpRouteQueryParametersMatch.regexMatch] choice: sets `regex_match`.
final class NetworkServicesHttpRouteQueryParametersRegexMatch
    extends NetworkServicesHttpRouteQueryParametersMatch {
  const NetworkServicesHttpRouteQueryParametersRegexMatch(this.regexMatch);

  final TfArg<String> regexMatch;

  @override
  String get blockKey => 'regex_match';

  @override
  Map<String, Object?> encode() => {'regex_match': regexMatch.toTfJson()};
}

/// The [NetworkServicesHttpRouteQueryParametersMatch.presentMatch] choice: sets `present_match`.
final class NetworkServicesHttpRouteQueryParametersPresentMatch
    extends NetworkServicesHttpRouteQueryParametersMatch {
  const NetworkServicesHttpRouteQueryParametersPresentMatch(this.presentMatch);

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

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `gateways` attribute.
  TfRef<List<String>> get gatewaysRef =>
      TfRef.attribute<List<String>>(this, 'gateways');

  /// Reference to `hostnames` attribute.
  TfRef<List<String>> get hostnamesRef =>
      TfRef.attribute<List<String>>(this, 'hostnames');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `meshes` attribute.
  TfRef<List<String>> get meshesRef =>
      TfRef.attribute<List<String>>(this, 'meshes');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
