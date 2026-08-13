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

  final NetworkServicesGrpcRouteRulesAction? action;

  final List<NetworkServicesGrpcRouteRulesMatches>? matches;

  Map<String, Object?> encode() => {
    if (action != null) 'action': action!.encode(),
    if (matches != null) 'matches': [for (final e in matches!) e.encode()],
  };
}

/// Typed helper for the `rules.action` block of
/// `google_network_services_grpc_route` (derived from provider schema).
@immutable
final class NetworkServicesGrpcRouteRulesAction {
  const NetworkServicesGrpcRouteRulesAction({
    this.timeout,
    this.destinations,
    this.faultInjectionPolicy,
    this.retryPolicy,
  });

  final TfArg<String>? timeout;

  final List<NetworkServicesGrpcRouteRulesActionDestinations>? destinations;

  final NetworkServicesGrpcRouteRulesActionFaultInjectionPolicy?
  faultInjectionPolicy;

  final NetworkServicesGrpcRouteRulesActionRetryPolicy? retryPolicy;

  Map<String, Object?> encode() => {
    if (timeout != null) 'timeout': timeout!.toTfJson(),
    if (destinations != null)
      'destinations': [for (final e in destinations!) e.encode()],
    if (faultInjectionPolicy != null)
      'fault_injection_policy': faultInjectionPolicy!.encode(),
    if (retryPolicy != null) 'retry_policy': retryPolicy!.encode(),
  };
}

/// Typed helper for the `rules.action.destinations` block of
/// `google_network_services_grpc_route` (derived from provider schema).
@immutable
final class NetworkServicesGrpcRouteRulesActionDestinations {
  const NetworkServicesGrpcRouteRulesActionDestinations({
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
/// `google_network_services_grpc_route` (derived from provider schema).
@immutable
final class NetworkServicesGrpcRouteRulesActionFaultInjectionPolicy {
  const NetworkServicesGrpcRouteRulesActionFaultInjectionPolicy({
    this.abort,
    this.delay,
  });

  final NetworkServicesGrpcRouteRulesActionFaultInjectionPolicyAbort? abort;

  final NetworkServicesGrpcRouteRulesActionFaultInjectionPolicyDelay? delay;

  Map<String, Object?> encode() => {
    if (abort != null) 'abort': abort!.encode(),
    if (delay != null) 'delay': delay!.encode(),
  };
}

/// Typed helper for the `rules.action.fault_injection_policy.abort` block of
/// `google_network_services_grpc_route` (derived from provider schema).
@immutable
final class NetworkServicesGrpcRouteRulesActionFaultInjectionPolicyAbort {
  const NetworkServicesGrpcRouteRulesActionFaultInjectionPolicyAbort({
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
/// `google_network_services_grpc_route` (derived from provider schema).
@immutable
final class NetworkServicesGrpcRouteRulesActionFaultInjectionPolicyDelay {
  const NetworkServicesGrpcRouteRulesActionFaultInjectionPolicyDelay({
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

/// Typed helper for the `rules.action.retry_policy` block of
/// `google_network_services_grpc_route` (derived from provider schema).
@immutable
final class NetworkServicesGrpcRouteRulesActionRetryPolicy {
  const NetworkServicesGrpcRouteRulesActionRetryPolicy({
    this.numRetries,
    this.retryConditions,
  });

  final TfArg<num>? numRetries;

  final List<
    TfArg<NetworkServicesGrpcRouteRulesActionRetryPolicyRetryConditions>
  >?
  retryConditions;

  Map<String, Object?> encode() => {
    if (numRetries != null) 'num_retries': numRetries!.toTfJson(),
    if (retryConditions != null)
      'retry_conditions': [for (final e in retryConditions!) e.toTfJson()],
  };
}

/// `retry_conditions` — derived from the provider schema description.
enum NetworkServicesGrpcRouteRulesActionRetryPolicyRetryConditions
    implements TerraformEnum {
  connectFailure('connect-failure'),
  refusedStream('refused-stream'),
  cancelled('cancelled'),
  deadlineExceeded('deadline-exceeded'),
  resourceExhausted('resource-exhausted'),
  unavailable('unavailable');

  const NetworkServicesGrpcRouteRulesActionRetryPolicyRetryConditions(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `rules.matches` block of
/// `google_network_services_grpc_route` (derived from provider schema).
@immutable
final class NetworkServicesGrpcRouteRulesMatches {
  const NetworkServicesGrpcRouteRulesMatches({this.headers, this.method});

  final List<NetworkServicesGrpcRouteRulesMatchesHeaders>? headers;

  final NetworkServicesGrpcRouteRulesMatchesMethod? method;

  Map<String, Object?> encode() => {
    if (headers != null) 'headers': [for (final e in headers!) e.encode()],
    if (method != null) 'method': method!.encode(),
  };
}

/// Typed helper for the `rules.matches.headers` block of
/// `google_network_services_grpc_route` (derived from provider schema).
@immutable
final class NetworkServicesGrpcRouteRulesMatchesHeaders {
  const NetworkServicesGrpcRouteRulesMatchesHeaders({
    required this.key,
    this.type,
    required this.value,
  });

  final TfArg<String> key;

  final TfArg<NetworkServicesGrpcRouteRulesMatchesHeadersType>? type;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum NetworkServicesGrpcRouteRulesMatchesHeadersType implements TerraformEnum {
  typeUnspecified('TYPE_UNSPECIFIED'),
  exact('EXACT'),
  regularExpression('REGULAR_EXPRESSION');

  const NetworkServicesGrpcRouteRulesMatchesHeadersType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `rules.matches.method` block of
/// `google_network_services_grpc_route` (derived from provider schema).
@immutable
final class NetworkServicesGrpcRouteRulesMatchesMethod {
  const NetworkServicesGrpcRouteRulesMatchesMethod({
    this.caseSensitive,
    required this.grpcMethod,
    required this.grpcService,
  });

  final TfArg<bool>? caseSensitive;

  final TfArg<String> grpcMethod;

  final TfArg<String> grpcService;

  Map<String, Object?> encode() => {
    if (caseSensitive != null) 'case_sensitive': caseSensitive!.toTfJson(),
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
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'hostnames': hostnames,
           'rules': TfArg.literal([for (final e in rules) e.encode()]),
           if (meshes != null) 'meshes': meshes,
           if (gateways != null) 'gateways': gateways,
           if (location != null) 'location': location,
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleNetworkServicesGrpcRouteSensitive;

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
