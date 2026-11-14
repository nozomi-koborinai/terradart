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

  @internal
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
    this.idleTimeout,
    this.timeout,
    this.corsPolicy,
    this.destinations,
    this.directResponse,
    this.faultInjectionPolicy,
    this.redirect,
    this.requestHeaderModifier,
    this.requestMirrorPolicy,
    this.responseHeaderModifier,
    this.retryPolicy,
    this.urlRewrite,
  });

  final TfArg<String>? idleTimeout;

  final TfArg<String>? timeout;

  final NetworkServicesHttpRouteCorsPolicy? corsPolicy;

  final List<NetworkServicesHttpRouteDestinations>? destinations;

  final NetworkServicesHttpRouteDirectResponse? directResponse;

  final NetworkServicesHttpRouteFaultInjectionPolicy? faultInjectionPolicy;

  final NetworkServicesHttpRouteRedirect? redirect;

  final NetworkServicesHttpRouteRequestHeaderModifier? requestHeaderModifier;

  final NetworkServicesHttpRouteRequestMirrorPolicy? requestMirrorPolicy;

  final NetworkServicesHttpRouteResponseHeaderModifier? responseHeaderModifier;

  final NetworkServicesHttpRouteRetryPolicy? retryPolicy;

  final NetworkServicesHttpRouteUrlRewrite? urlRewrite;

  @internal
  Map<String, Object?> encode() => {
    'idle_timeout': ?idleTimeout?.toTfJson(),
    'timeout': ?timeout?.toTfJson(),
    'cors_policy': ?corsPolicy?.encode(),
    if (destinations != null)
      'destinations': [for (final e in destinations!) e.encode()],
    'direct_response': ?directResponse?.encode(),
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

  @internal
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

  @internal
  Map<String, Object?> encode() => {
    'service_name': ?serviceName?.toTfJson(),
    'weight': ?weight?.toTfJson(),
  };
}

/// Typed helper for the `rules.action.direct_response` block of
/// `google_network_services_http_route` (derived from provider schema).
@immutable
final class NetworkServicesHttpRouteDirectResponse {
  const NetworkServicesHttpRouteDirectResponse({
    this.bytesBody,
    required this.status,
    this.stringBody,
  });

  final TfArg<String>? bytesBody;

  final TfArg<num> status;

  final TfArg<String>? stringBody;

  @internal
  Map<String, Object?> encode() => {
    'bytes_body': ?bytesBody?.toTfJson(),
    'status': status.toTfJson(),
    'string_body': ?stringBody?.toTfJson(),
  };
}

/// Typed helper for the `rules.action.fault_injection_policy` block of
/// `google_network_services_http_route` (derived from provider schema).
@immutable
final class NetworkServicesHttpRouteFaultInjectionPolicy {
  const NetworkServicesHttpRouteFaultInjectionPolicy({this.abort, this.delay});

  final NetworkServicesHttpRouteAbort? abort;

  final NetworkServicesHttpRouteDelay? delay;

  @internal
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

  @internal
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

  @internal
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

  final NetworkServicesHttpRouteResponseCode? responseCode;

  final TfArg<bool>? stripQuery;

  @internal
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

/// `response_code` — derived from the provider schema description.
extension type const NetworkServicesHttpRouteResponseCode._(TfArg<String> _)
    implements TfArg<String> {
  NetworkServicesHttpRouteResponseCode.variable(String name)
    : this._(TfArg.variable(name));
  NetworkServicesHttpRouteResponseCode.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkServicesHttpRouteResponseCode.arg(TfArg<String> arg)
    : this._(arg);

  static const movedPermanentlyDefault = NetworkServicesHttpRouteResponseCode._(
    TfArgLiteral('MOVED_PERMANENTLY_DEFAULT'),
  );
  static const found = NetworkServicesHttpRouteResponseCode._(
    TfArgLiteral('FOUND'),
  );
  static const seeOther = NetworkServicesHttpRouteResponseCode._(
    TfArgLiteral('SEE_OTHER'),
  );
  static const temporaryRedirect = NetworkServicesHttpRouteResponseCode._(
    TfArgLiteral('TEMPORARY_REDIRECT'),
  );
  static const permanentRedirect = NetworkServicesHttpRouteResponseCode._(
    TfArgLiteral('PERMANENT_REDIRECT'),
  );

  static const List<NetworkServicesHttpRouteResponseCode> values = [
    movedPermanentlyDefault,
    found,
    seeOther,
    temporaryRedirect,
    permanentRedirect,
  ];
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

  @internal
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
  const NetworkServicesHttpRouteRequestMirrorPolicy({
    this.mirrorPercent,
    this.destination,
  });

  final TfArg<num>? mirrorPercent;

  final NetworkServicesHttpRouteDestination? destination;

  @internal
  Map<String, Object?> encode() => {
    'mirror_percent': ?mirrorPercent?.toTfJson(),
    'destination': ?destination?.encode(),
  };
}

/// Typed helper for the `rules.action.request_mirror_policy.destination` block of
/// `google_network_services_http_route` (derived from provider schema).
@immutable
final class NetworkServicesHttpRouteDestination {
  const NetworkServicesHttpRouteDestination({this.serviceName, this.weight});

  final TfArg<String>? serviceName;

  final TfArg<num>? weight;

  @internal
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

  @internal
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

  @internal
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

  @internal
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
    this.fullPathMatch,
    this.ignoreCase,
    this.prefixMatch,
    this.regexMatch,
    this.headers,
    this.queryParameters,
  });

  final TfArg<String>? fullPathMatch;

  final TfArg<bool>? ignoreCase;

  final TfArg<String>? prefixMatch;

  final TfArg<String>? regexMatch;

  final List<NetworkServicesHttpRouteHeaders>? headers;

  final List<NetworkServicesHttpRouteQueryParameters>? queryParameters;

  @internal
  Map<String, Object?> encode() => {
    'full_path_match': ?fullPathMatch?.toTfJson(),
    'ignore_case': ?ignoreCase?.toTfJson(),
    'prefix_match': ?prefixMatch?.toTfJson(),
    'regex_match': ?regexMatch?.toTfJson(),
    if (headers != null) 'headers': [for (final e in headers!) e.encode()],
    if (queryParameters != null)
      'query_parameters': [for (final e in queryParameters!) e.encode()],
  };
}

/// Typed helper for the `rules.matches.headers` block of
/// `google_network_services_http_route` (derived from provider schema).
@immutable
final class NetworkServicesHttpRouteHeaders {
  const NetworkServicesHttpRouteHeaders({
    this.exactMatch,
    this.header,
    this.invertMatch,
    this.prefixMatch,
    this.presentMatch,
    this.regexMatch,
    this.suffixMatch,
    this.rangeMatch,
  });

  final TfArg<String>? exactMatch;

  final TfArg<String>? header;

  final TfArg<bool>? invertMatch;

  final TfArg<String>? prefixMatch;

  final TfArg<bool>? presentMatch;

  final TfArg<String>? regexMatch;

  final TfArg<String>? suffixMatch;

  final NetworkServicesHttpRouteRangeMatch? rangeMatch;

  @internal
  Map<String, Object?> encode() => {
    'exact_match': ?exactMatch?.toTfJson(),
    'header': ?header?.toTfJson(),
    'invert_match': ?invertMatch?.toTfJson(),
    'prefix_match': ?prefixMatch?.toTfJson(),
    'present_match': ?presentMatch?.toTfJson(),
    'regex_match': ?regexMatch?.toTfJson(),
    'suffix_match': ?suffixMatch?.toTfJson(),
    'range_match': ?rangeMatch?.encode(),
  };
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

  @internal
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
    this.exactMatch,
    this.presentMatch,
    this.queryParameter,
    this.regexMatch,
  });

  final TfArg<String>? exactMatch;

  final TfArg<bool>? presentMatch;

  final TfArg<String>? queryParameter;

  final TfArg<String>? regexMatch;

  @internal
  Map<String, Object?> encode() => {
    'exact_match': ?exactMatch?.toTfJson(),
    'present_match': ?presentMatch?.toTfJson(),
    'query_parameter': ?queryParameter?.toTfJson(),
    'regex_match': ?regexMatch?.toTfJson(),
  };
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

  GoogleNetworkServicesHttpRoute(
    super.localName, {
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

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `gateways` attribute.
  TfRef<List<String>> get gateways =>
      TfRef.attribute<List<String>>(this, 'gateways');

  /// Reference to `hostnames` attribute.
  TfRef<List<String>> get hostnames =>
      TfRef.attribute<List<String>>(this, 'hostnames');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `meshes` attribute.
  TfRef<List<String>> get meshes =>
      TfRef.attribute<List<String>>(this, 'meshes');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
