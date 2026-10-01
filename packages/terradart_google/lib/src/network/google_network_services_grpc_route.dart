// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_services_grpc_route`.
const Set<String> _googleNetworkServicesGrpcRouteSensitive = <String>{};

/// Typed helper for the `rules` block of
/// `google_network_services_grpc_route` (derived from provider schema).
@immutable
final class NetworkServicesGrpcRouteRules {
  const NetworkServicesGrpcRouteRules({this.action, this.matches});

  final NetworkServicesGrpcRouteAction? action;

  final List<NetworkServicesGrpcRouteMatches>? matches;

  Map<String, Object?> encode() => {
    'action': ?action?.encode(),
    if (matches != null) 'matches': [for (final e in matches!) e.encode()],
  };
}

/// Typed helper for the `rules.action` block of
/// `google_network_services_grpc_route` (derived from provider schema).
@immutable
final class NetworkServicesGrpcRouteAction {
  const NetworkServicesGrpcRouteAction({
    this.timeout,
    this.destinations,
    this.faultInjectionPolicy,
    this.retryPolicy,
  });

  final TfArg<String>? timeout;

  final List<NetworkServicesGrpcRouteDestinations>? destinations;

  final NetworkServicesGrpcRouteFaultInjectionPolicy? faultInjectionPolicy;

  final NetworkServicesGrpcRouteRetryPolicy? retryPolicy;

  Map<String, Object?> encode() => {
    'timeout': ?timeout?.toTfJson(),
    if (destinations != null)
      'destinations': [for (final e in destinations!) e.encode()],
    'fault_injection_policy': ?faultInjectionPolicy?.encode(),
    'retry_policy': ?retryPolicy?.encode(),
  };
}

/// Typed helper for the `rules.action.destinations` block of
/// `google_network_services_grpc_route` (derived from provider schema).
@immutable
final class NetworkServicesGrpcRouteDestinations {
  const NetworkServicesGrpcRouteDestinations({this.serviceName, this.weight});

  final TfArg<String>? serviceName;

  final TfArg<num>? weight;

  Map<String, Object?> encode() => {
    'service_name': ?serviceName?.toTfJson(),
    'weight': ?weight?.toTfJson(),
  };
}

/// Typed helper for the `rules.action.fault_injection_policy` block of
/// `google_network_services_grpc_route` (derived from provider schema).
@immutable
final class NetworkServicesGrpcRouteFaultInjectionPolicy {
  const NetworkServicesGrpcRouteFaultInjectionPolicy({this.abort, this.delay});

  final NetworkServicesGrpcRouteAbort? abort;

  final NetworkServicesGrpcRouteDelay? delay;

  Map<String, Object?> encode() => {
    'abort': ?abort?.encode(),
    'delay': ?delay?.encode(),
  };
}

/// Typed helper for the `rules.action.fault_injection_policy.abort` block of
/// `google_network_services_grpc_route` (derived from provider schema).
@immutable
final class NetworkServicesGrpcRouteAbort {
  const NetworkServicesGrpcRouteAbort({this.httpStatus, this.percentage});

  final TfArg<num>? httpStatus;

  final TfArg<num>? percentage;

  Map<String, Object?> encode() => {
    'http_status': ?httpStatus?.toTfJson(),
    'percentage': ?percentage?.toTfJson(),
  };
}

/// Typed helper for the `rules.action.fault_injection_policy.delay` block of
/// `google_network_services_grpc_route` (derived from provider schema).
@immutable
final class NetworkServicesGrpcRouteDelay {
  const NetworkServicesGrpcRouteDelay({this.fixedDelay, this.percentage});

  final TfArg<String>? fixedDelay;

  final TfArg<num>? percentage;

  Map<String, Object?> encode() => {
    'fixed_delay': ?fixedDelay?.toTfJson(),
    'percentage': ?percentage?.toTfJson(),
  };
}

/// Typed helper for the `rules.action.retry_policy` block of
/// `google_network_services_grpc_route` (derived from provider schema).
@immutable
final class NetworkServicesGrpcRouteRetryPolicy {
  const NetworkServicesGrpcRouteRetryPolicy({
    this.numRetries,
    this.retryConditions,
  });

  final TfArg<num>? numRetries;

  final List<TfArg<NetworkServicesGrpcRouteRetryConditions>>? retryConditions;

  Map<String, Object?> encode() => {
    'num_retries': ?numRetries?.toTfJson(),
    if (retryConditions != null)
      'retry_conditions': [for (final e in retryConditions!) e.toTfJson()],
  };
}

/// `retry_conditions` — derived from the provider schema description.
enum NetworkServicesGrpcRouteRetryConditions implements TerraformEnum {
  connectFailure('connect-failure'),
  refusedStream('refused-stream'),
  cancelled('cancelled'),
  deadlineExceeded('deadline-exceeded'),
  resourceExhausted('resource-exhausted'),
  unavailable('unavailable');

  const NetworkServicesGrpcRouteRetryConditions(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `rules.matches` block of
/// `google_network_services_grpc_route` (derived from provider schema).
@immutable
final class NetworkServicesGrpcRouteMatches {
  const NetworkServicesGrpcRouteMatches({this.headers, this.method});

  final List<NetworkServicesGrpcRouteHeaders>? headers;

  final NetworkServicesGrpcRouteMethod? method;

  Map<String, Object?> encode() => {
    if (headers != null) 'headers': [for (final e in headers!) e.encode()],
    'method': ?method?.encode(),
  };
}

/// Typed helper for the `rules.matches.headers` block of
/// `google_network_services_grpc_route` (derived from provider schema).
@immutable
final class NetworkServicesGrpcRouteHeaders {
  const NetworkServicesGrpcRouteHeaders({
    required this.key,
    this.type,
    required this.value,
  });

  final TfArg<String> key;

  final TfArg<NetworkServicesGrpcRouteType>? type;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'type': ?type?.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum NetworkServicesGrpcRouteType implements TerraformEnum {
  typeUnspecified('TYPE_UNSPECIFIED'),
  exact('EXACT'),
  regularExpression('REGULAR_EXPRESSION');

  const NetworkServicesGrpcRouteType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `rules.matches.method` block of
/// `google_network_services_grpc_route` (derived from provider schema).
@immutable
final class NetworkServicesGrpcRouteMethod {
  const NetworkServicesGrpcRouteMethod({
    this.caseSensitive,
    required this.grpcMethod,
    required this.grpcService,
  });

  final TfArg<bool>? caseSensitive;

  final TfArg<String> grpcMethod;

  final TfArg<String> grpcService;

  Map<String, Object?> encode() => {
    'case_sensitive': ?caseSensitive?.toTfJson(),
    'grpc_method': grpcMethod.toTfJson(),
    'grpc_service': grpcService.toTfJson(),
  };
}

/// Factory wrapper for `google_network_services_grpc_route`.
///
/// GrpcRoute is the resource defining how gRPC traffic routed by a Mesh or
/// Gateway resource is routed.
///
/// Cloud Service Mesh **gRPC route** — hostname + method matchers that
/// attach to a [GoogleNetworkServicesMesh] (or a gateway). Config only
/// until workloads join the mesh; do not attach a
/// [GoogleNetworkServicesGateway] in apply-smoke (SWG is $1.25/h).
final class GoogleNetworkServicesGrpcRoute extends Resource {
  static const String tfType = 'google_network_services_grpc_route';

  GoogleNetworkServicesGrpcRoute({
    required super.localName,
    required TfArg<String> name,
    required TfArg<List<String>> hostnames,
    required List<NetworkServicesGrpcRouteRules> rules,
    TfArg<List<String>>? meshes,
    TfArg<List<String>>? gateways,
    TfArg<String>? location,
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
           'location': ?location,
           'description': ?description,
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleNetworkServicesGrpcRouteSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleNetworkServicesGrpcRoute>`.
  RefTo<GoogleNetworkServicesGrpcRoute> get ref => RefTo.of(this);

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

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `meshes` attribute.
  TfRef<List<String>> get meshes =>
      TfRef.attribute<List<String>>(this, 'meshes');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
