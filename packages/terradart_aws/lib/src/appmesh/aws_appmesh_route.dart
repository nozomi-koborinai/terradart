// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_appmesh_route`.
const Set<String> _awsAppmeshRouteSensitive = <String>{};

/// Typed helper for the `spec` block of
/// `aws_appmesh_route` (derived from provider schema).
@immutable
final class AppmeshRouteSpec {
  const AppmeshRouteSpec({
    this.priority,
    this.grpcRoute,
    this.http2Route,
    this.httpRoute,
    this.tcpRoute,
  });

  final TfArg<num>? priority;

  final AppmeshRouteGrpcRoute? grpcRoute;

  final AppmeshRouteHttp2Route? http2Route;

  final AppmeshRouteHttpRoute? httpRoute;

  final AppmeshRouteTcpRoute? tcpRoute;

  Map<String, Object?> encode() => {
    'priority': ?priority?.toTfJson(),
    'grpc_route': ?grpcRoute?.encode(),
    'http2_route': ?http2Route?.encode(),
    'http_route': ?httpRoute?.encode(),
    'tcp_route': ?tcpRoute?.encode(),
  };
}

/// Typed helper for the `spec.grpc_route` block of
/// `aws_appmesh_route` (derived from provider schema).
@immutable
final class AppmeshRouteGrpcRoute {
  const AppmeshRouteGrpcRoute({
    required this.action,
    this.match,
    this.retryPolicy,
    this.timeout,
  });

  final AppmeshRouteAction action;

  final AppmeshRouteGrpcRouteMatch? match;

  final AppmeshRouteGrpcRouteRetryPolicy? retryPolicy;

  final AppmeshRouteGrpcRouteTimeout? timeout;

  Map<String, Object?> encode() => {
    'action': action.encode(),
    'match': ?match?.encode(),
    'retry_policy': ?retryPolicy?.encode(),
    'timeout': ?timeout?.encode(),
  };
}

/// Typed helper for the `spec.grpc_route.action` block of
/// `aws_appmesh_route` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AppmeshRouteAction {
  const AppmeshRouteAction({required this.weightedTarget});

  final List<AppmeshRouteWeightedTarget> weightedTarget;

  Map<String, Object?> encode() => {
    'weighted_target': [for (final e in weightedTarget) e.encode()],
  };
}

/// Typed helper for the `spec.grpc_route.action.weighted_target` block of
/// `aws_appmesh_route` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AppmeshRouteWeightedTarget {
  const AppmeshRouteWeightedTarget({
    this.port,
    required this.virtualNode,
    required this.weight,
  });

  final TfArg<num>? port;

  final TfArg<String> virtualNode;

  final TfArg<num> weight;

  Map<String, Object?> encode() => {
    'port': ?port?.toTfJson(),
    'virtual_node': virtualNode.toTfJson(),
    'weight': weight.toTfJson(),
  };
}

/// Typed helper for the `spec.grpc_route.match` block of
/// `aws_appmesh_route` (derived from provider schema).
@immutable
final class AppmeshRouteGrpcRouteMatch {
  const AppmeshRouteGrpcRouteMatch({
    this.methodName,
    this.port,
    this.prefix,
    this.serviceName,
    this.metadata,
  });

  final TfArg<String>? methodName;

  final TfArg<num>? port;

  final TfArg<String>? prefix;

  final TfArg<String>? serviceName;

  final List<AppmeshRouteMetadata>? metadata;

  Map<String, Object?> encode() => {
    'method_name': ?methodName?.toTfJson(),
    'port': ?port?.toTfJson(),
    'prefix': ?prefix?.toTfJson(),
    'service_name': ?serviceName?.toTfJson(),
    if (metadata != null) 'metadata': [for (final e in metadata!) e.encode()],
  };
}

/// Typed helper for the `spec.grpc_route.match.metadata` block of
/// `aws_appmesh_route` (derived from provider schema).
@immutable
final class AppmeshRouteMetadata {
  const AppmeshRouteMetadata({this.invert, required this.name, this.match});

  final TfArg<bool>? invert;

  final TfArg<String> name;

  final AppmeshRouteMetadataMatch? match;

  Map<String, Object?> encode() => {
    'invert': ?invert?.toTfJson(),
    'name': name.toTfJson(),
    'match': ?match?.encode(),
  };
}

/// Typed helper for the `spec.grpc_route.match.metadata.match` block of
/// `aws_appmesh_route` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AppmeshRouteMetadataMatch {
  const AppmeshRouteMetadataMatch({
    this.exact,
    this.prefix,
    this.regex,
    this.suffix,
    this.range,
  });

  final TfArg<String>? exact;

  final TfArg<String>? prefix;

  final TfArg<String>? regex;

  final TfArg<String>? suffix;

  final AppmeshRouteRange? range;

  Map<String, Object?> encode() => {
    'exact': ?exact?.toTfJson(),
    'prefix': ?prefix?.toTfJson(),
    'regex': ?regex?.toTfJson(),
    'suffix': ?suffix?.toTfJson(),
    'range': ?range?.encode(),
  };
}

/// Typed helper for the `spec.grpc_route.match.metadata.match.range` block of
/// `aws_appmesh_route` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AppmeshRouteRange {
  const AppmeshRouteRange({required this.end, required this.start});

  final TfArg<num> end;

  final TfArg<num> start;

  Map<String, Object?> encode() => {
    'end': end.toTfJson(),
    'start': start.toTfJson(),
  };
}

/// Typed helper for the `spec.grpc_route.retry_policy` block of
/// `aws_appmesh_route` (derived from provider schema).
@immutable
final class AppmeshRouteGrpcRouteRetryPolicy {
  const AppmeshRouteGrpcRouteRetryPolicy({
    this.grpcRetryEvents,
    this.httpRetryEvents,
    required this.maxRetries,
    this.tcpRetryEvents,
    required this.perRetryTimeout,
  });

  final TfArg<List<String>>? grpcRetryEvents;

  final TfArg<List<String>>? httpRetryEvents;

  final TfArg<num> maxRetries;

  final TfArg<List<String>>? tcpRetryEvents;

  final AppmeshRouteGrpcRoutePerRetryTimeout perRetryTimeout;

  Map<String, Object?> encode() => {
    'grpc_retry_events': ?grpcRetryEvents?.toTfJson(),
    'http_retry_events': ?httpRetryEvents?.toTfJson(),
    'max_retries': maxRetries.toTfJson(),
    'tcp_retry_events': ?tcpRetryEvents?.toTfJson(),
    'per_retry_timeout': perRetryTimeout.encode(),
  };
}

/// Typed helper for the `spec.grpc_route.retry_policy.per_retry_timeout` block of
/// `aws_appmesh_route` (derived from provider schema).
@immutable
final class AppmeshRouteGrpcRoutePerRetryTimeout {
  const AppmeshRouteGrpcRoutePerRetryTimeout({
    required this.unit,
    required this.value,
  });

  final TfArg<AppmeshRouteUnit> unit;

  final TfArg<num> value;

  Map<String, Object?> encode() => {
    'unit': unit.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `unit` — derived from the provider schema description.
enum AppmeshRouteUnit implements TerraformEnum {
  s('s'),
  ms('ms');

  const AppmeshRouteUnit(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `spec.grpc_route.timeout` block of
/// `aws_appmesh_route` (derived from provider schema).
@immutable
final class AppmeshRouteGrpcRouteTimeout {
  const AppmeshRouteGrpcRouteTimeout({this.idle, this.perRequest});

  final AppmeshRouteGrpcRouteIdle? idle;

  final AppmeshRouteGrpcRoutePerRequest? perRequest;

  Map<String, Object?> encode() => {
    'idle': ?idle?.encode(),
    'per_request': ?perRequest?.encode(),
  };
}

/// Typed helper for the `spec.grpc_route.timeout.idle` block of
/// `aws_appmesh_route` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AppmeshRouteGrpcRouteIdle {
  const AppmeshRouteGrpcRouteIdle({required this.unit, required this.value});

  final TfArg<AppmeshRouteUnit> unit;

  final TfArg<num> value;

  Map<String, Object?> encode() => {
    'unit': unit.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `spec.grpc_route.timeout.per_request` block of
/// `aws_appmesh_route` (derived from provider schema).
@immutable
final class AppmeshRouteGrpcRoutePerRequest {
  const AppmeshRouteGrpcRoutePerRequest({
    required this.unit,
    required this.value,
  });

  final TfArg<AppmeshRouteUnit> unit;

  final TfArg<num> value;

  Map<String, Object?> encode() => {
    'unit': unit.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `spec.http2_route` block of
/// `aws_appmesh_route` (derived from provider schema).
@immutable
final class AppmeshRouteHttp2Route {
  const AppmeshRouteHttp2Route({
    required this.action,
    required this.match,
    this.retryPolicy,
    this.timeout,
  });

  final AppmeshRouteAction action;

  final AppmeshRouteHttp2RouteMatch match;

  final AppmeshRouteHttp2RouteRetryPolicy? retryPolicy;

  final AppmeshRouteHttp2RouteTimeout? timeout;

  Map<String, Object?> encode() => {
    'action': action.encode(),
    'match': match.encode(),
    'retry_policy': ?retryPolicy?.encode(),
    'timeout': ?timeout?.encode(),
  };
}

/// Typed helper for the `spec.http2_route.match` block of
/// `aws_appmesh_route` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AppmeshRouteHttp2RouteMatch {
  const AppmeshRouteHttp2RouteMatch({
    this.method,
    this.port,
    this.prefix,
    this.scheme,
    this.header,
    this.path,
    this.queryParameter,
  });

  final TfArg<String>? method;

  final TfArg<num>? port;

  final TfArg<String>? prefix;

  final TfArg<String>? scheme;

  final List<AppmeshRouteHeader>? header;

  final AppmeshRoutePath? path;

  final List<AppmeshRouteQueryParameter>? queryParameter;

  Map<String, Object?> encode() => {
    'method': ?method?.toTfJson(),
    'port': ?port?.toTfJson(),
    'prefix': ?prefix?.toTfJson(),
    'scheme': ?scheme?.toTfJson(),
    if (header != null) 'header': [for (final e in header!) e.encode()],
    'path': ?path?.encode(),
    if (queryParameter != null)
      'query_parameter': [for (final e in queryParameter!) e.encode()],
  };
}

/// Typed helper for the `spec.http2_route.match.header` block of
/// `aws_appmesh_route` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AppmeshRouteHeader {
  const AppmeshRouteHeader({this.invert, required this.name, this.match});

  final TfArg<bool>? invert;

  final TfArg<String> name;

  final AppmeshRouteMetadataMatch? match;

  Map<String, Object?> encode() => {
    'invert': ?invert?.toTfJson(),
    'name': name.toTfJson(),
    'match': ?match?.encode(),
  };
}

/// Typed helper for the `spec.http2_route.match.path` block of
/// `aws_appmesh_route` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AppmeshRoutePath {
  const AppmeshRoutePath({this.exact, this.regex});

  final TfArg<String>? exact;

  final TfArg<String>? regex;

  Map<String, Object?> encode() => {
    'exact': ?exact?.toTfJson(),
    'regex': ?regex?.toTfJson(),
  };
}

/// Typed helper for the `spec.http2_route.match.query_parameter` block of
/// `aws_appmesh_route` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AppmeshRouteQueryParameter {
  const AppmeshRouteQueryParameter({required this.name, this.match});

  final TfArg<String> name;

  final AppmeshRouteQueryParameterMatch? match;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'match': ?match?.encode(),
  };
}

/// Typed helper for the `spec.http2_route.match.query_parameter.match` block of
/// `aws_appmesh_route` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AppmeshRouteQueryParameterMatch {
  const AppmeshRouteQueryParameterMatch({this.exact});

  final TfArg<String>? exact;

  Map<String, Object?> encode() => {'exact': ?exact?.toTfJson()};
}

/// Typed helper for the `spec.http2_route.retry_policy` block of
/// `aws_appmesh_route` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AppmeshRouteHttp2RouteRetryPolicy {
  const AppmeshRouteHttp2RouteRetryPolicy({
    this.httpRetryEvents,
    required this.maxRetries,
    this.tcpRetryEvents,
    required this.perRetryTimeout,
  });

  final TfArg<List<String>>? httpRetryEvents;

  final TfArg<num> maxRetries;

  final TfArg<List<String>>? tcpRetryEvents;

  final AppmeshRouteHttp2RoutePerRetryTimeout perRetryTimeout;

  Map<String, Object?> encode() => {
    'http_retry_events': ?httpRetryEvents?.toTfJson(),
    'max_retries': maxRetries.toTfJson(),
    'tcp_retry_events': ?tcpRetryEvents?.toTfJson(),
    'per_retry_timeout': perRetryTimeout.encode(),
  };
}

/// Typed helper for the `spec.http2_route.retry_policy.per_retry_timeout` block of
/// `aws_appmesh_route` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AppmeshRouteHttp2RoutePerRetryTimeout {
  const AppmeshRouteHttp2RoutePerRetryTimeout({
    required this.unit,
    required this.value,
  });

  final TfArg<String> unit;

  final TfArg<num> value;

  Map<String, Object?> encode() => {
    'unit': unit.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `spec.http2_route.timeout` block of
/// `aws_appmesh_route` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AppmeshRouteHttp2RouteTimeout {
  const AppmeshRouteHttp2RouteTimeout({this.idle, this.perRequest});

  final AppmeshRouteHttp2RouteIdle? idle;

  final AppmeshRouteHttp2RoutePerRequest? perRequest;

  Map<String, Object?> encode() => {
    'idle': ?idle?.encode(),
    'per_request': ?perRequest?.encode(),
  };
}

/// Typed helper for the `spec.http2_route.timeout.idle` block of
/// `aws_appmesh_route` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AppmeshRouteHttp2RouteIdle {
  const AppmeshRouteHttp2RouteIdle({required this.unit, required this.value});

  final TfArg<String> unit;

  final TfArg<num> value;

  Map<String, Object?> encode() => {
    'unit': unit.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `spec.http2_route.timeout.per_request` block of
/// `aws_appmesh_route` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AppmeshRouteHttp2RoutePerRequest {
  const AppmeshRouteHttp2RoutePerRequest({
    required this.unit,
    required this.value,
  });

  final TfArg<String> unit;

  final TfArg<num> value;

  Map<String, Object?> encode() => {
    'unit': unit.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `spec.http_route` block of
/// `aws_appmesh_route` (derived from provider schema).
@immutable
final class AppmeshRouteHttpRoute {
  const AppmeshRouteHttpRoute({
    required this.action,
    required this.match,
    this.retryPolicy,
    this.timeout,
  });

  final AppmeshRouteAction action;

  final AppmeshRouteHttp2RouteMatch match;

  final AppmeshRouteHttp2RouteRetryPolicy? retryPolicy;

  final AppmeshRouteHttp2RouteTimeout? timeout;

  Map<String, Object?> encode() => {
    'action': action.encode(),
    'match': match.encode(),
    'retry_policy': ?retryPolicy?.encode(),
    'timeout': ?timeout?.encode(),
  };
}

/// Typed helper for the `spec.tcp_route` block of
/// `aws_appmesh_route` (derived from provider schema).
@immutable
final class AppmeshRouteTcpRoute {
  const AppmeshRouteTcpRoute({required this.action, this.match, this.timeout});

  final AppmeshRouteAction action;

  final AppmeshRouteTcpRouteMatch? match;

  final AppmeshRouteTcpRouteTimeout? timeout;

  Map<String, Object?> encode() => {
    'action': action.encode(),
    'match': ?match?.encode(),
    'timeout': ?timeout?.encode(),
  };
}

/// Typed helper for the `spec.tcp_route.match` block of
/// `aws_appmesh_route` (derived from provider schema).
@immutable
final class AppmeshRouteTcpRouteMatch {
  const AppmeshRouteTcpRouteMatch({this.port});

  final TfArg<num>? port;

  Map<String, Object?> encode() => {'port': ?port?.toTfJson()};
}

/// Typed helper for the `spec.tcp_route.timeout` block of
/// `aws_appmesh_route` (derived from provider schema).
@immutable
final class AppmeshRouteTcpRouteTimeout {
  const AppmeshRouteTcpRouteTimeout({this.idle});

  final AppmeshRouteGrpcRouteIdle? idle;

  Map<String, Object?> encode() => {'idle': ?idle?.encode()};
}

/// Factory wrapper for `aws_appmesh_route`.
final class AwsAppmeshRoute extends Resource {
  static const String tfType = 'aws_appmesh_route';

  AwsAppmeshRoute({
    required super.localName,
    required TfArg<String> meshName,
    TfArg<String>? meshOwner,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> virtualRouterName,
    required AppmeshRouteSpec spec,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'mesh_name': meshName,
           'mesh_owner': ?meshOwner,
           'name': name,
           'region': ?region,
           'tags': ?tags,
           'virtual_router_name': virtualRouterName,
           'spec': TfArg.literal(spec.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppmeshRouteSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAppmeshRoute>`.
  RefTo<AwsAppmeshRoute> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_date` attribute.
  TfRef<String> get createdDate =>
      TfRef.attribute<String>(this, 'created_date');

  /// Reference to `last_updated_date` attribute.
  TfRef<String> get lastUpdatedDate =>
      TfRef.attribute<String>(this, 'last_updated_date');

  /// Reference to `resource_owner` attribute.
  TfRef<String> get resourceOwner =>
      TfRef.attribute<String>(this, 'resource_owner');

  /// Reference to `mesh_name` attribute.
  TfRef<String> get meshNameRef => TfRef.attribute<String>(this, 'mesh_name');

  /// Reference to `mesh_owner` attribute.
  TfRef<String> get meshOwnerRef => TfRef.attribute<String>(this, 'mesh_owner');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `virtual_router_name` attribute.
  TfRef<String> get virtualRouterNameRef =>
      TfRef.attribute<String>(this, 'virtual_router_name');
}
