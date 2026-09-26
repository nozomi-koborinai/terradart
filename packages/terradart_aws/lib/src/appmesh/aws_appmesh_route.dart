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

  final AppmeshRouteSpecGrpcRoute? grpcRoute;

  final AppmeshRouteSpecHttp2Route? http2Route;

  final AppmeshRouteSpecHttpRoute? httpRoute;

  final AppmeshRouteSpecTcpRoute? tcpRoute;

  Map<String, Object?> encode() => {
    if (priority != null) 'priority': priority!.toTfJson(),
    if (grpcRoute != null) 'grpc_route': grpcRoute!.encode(),
    if (http2Route != null) 'http2_route': http2Route!.encode(),
    if (httpRoute != null) 'http_route': httpRoute!.encode(),
    if (tcpRoute != null) 'tcp_route': tcpRoute!.encode(),
  };
}

/// Typed helper for the `spec.grpc_route` block of
/// `aws_appmesh_route` (derived from provider schema).
@immutable
final class AppmeshRouteSpecGrpcRoute {
  const AppmeshRouteSpecGrpcRoute({
    required this.action,
    this.match,
    this.retryPolicy,
    this.timeout,
  });

  final AppmeshRouteSpecGrpcRouteAction action;

  final AppmeshRouteSpecGrpcRouteMatch? match;

  final AppmeshRouteSpecGrpcRouteRetryPolicy? retryPolicy;

  final AppmeshRouteSpecGrpcRouteTimeout? timeout;

  Map<String, Object?> encode() => {
    'action': action.encode(),
    if (match != null) 'match': match!.encode(),
    if (retryPolicy != null) 'retry_policy': retryPolicy!.encode(),
    if (timeout != null) 'timeout': timeout!.encode(),
  };
}

/// Typed helper for the `spec.grpc_route.action` block of
/// `aws_appmesh_route` (derived from provider schema).
@immutable
final class AppmeshRouteSpecGrpcRouteAction {
  const AppmeshRouteSpecGrpcRouteAction({required this.weightedTarget});

  final List<AppmeshRouteSpecGrpcRouteActionWeightedTarget> weightedTarget;

  Map<String, Object?> encode() => {
    'weighted_target': [for (final e in weightedTarget) e.encode()],
  };
}

/// Typed helper for the `spec.grpc_route.action.weighted_target` block of
/// `aws_appmesh_route` (derived from provider schema).
@immutable
final class AppmeshRouteSpecGrpcRouteActionWeightedTarget {
  const AppmeshRouteSpecGrpcRouteActionWeightedTarget({
    this.port,
    required this.virtualNode,
    required this.weight,
  });

  final TfArg<num>? port;

  final TfArg<String> virtualNode;

  final TfArg<num> weight;

  Map<String, Object?> encode() => {
    if (port != null) 'port': port!.toTfJson(),
    'virtual_node': virtualNode.toTfJson(),
    'weight': weight.toTfJson(),
  };
}

/// Typed helper for the `spec.grpc_route.match` block of
/// `aws_appmesh_route` (derived from provider schema).
@immutable
final class AppmeshRouteSpecGrpcRouteMatch {
  const AppmeshRouteSpecGrpcRouteMatch({
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

  final List<AppmeshRouteSpecGrpcRouteMatchMetadata>? metadata;

  Map<String, Object?> encode() => {
    if (methodName != null) 'method_name': methodName!.toTfJson(),
    if (port != null) 'port': port!.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
    if (serviceName != null) 'service_name': serviceName!.toTfJson(),
    if (metadata != null) 'metadata': [for (final e in metadata!) e.encode()],
  };
}

/// Typed helper for the `spec.grpc_route.match.metadata` block of
/// `aws_appmesh_route` (derived from provider schema).
@immutable
final class AppmeshRouteSpecGrpcRouteMatchMetadata {
  const AppmeshRouteSpecGrpcRouteMatchMetadata({
    this.invert,
    required this.name,
    this.match,
  });

  final TfArg<bool>? invert;

  final TfArg<String> name;

  final AppmeshRouteSpecGrpcRouteMatchMetadataMatch? match;

  Map<String, Object?> encode() => {
    if (invert != null) 'invert': invert!.toTfJson(),
    'name': name.toTfJson(),
    if (match != null) 'match': match!.encode(),
  };
}

/// Typed helper for the `spec.grpc_route.match.metadata.match` block of
/// `aws_appmesh_route` (derived from provider schema).
@immutable
final class AppmeshRouteSpecGrpcRouteMatchMetadataMatch {
  const AppmeshRouteSpecGrpcRouteMatchMetadataMatch({
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

  final AppmeshRouteSpecGrpcRouteMatchMetadataMatchRange? range;

  Map<String, Object?> encode() => {
    if (exact != null) 'exact': exact!.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
    if (regex != null) 'regex': regex!.toTfJson(),
    if (suffix != null) 'suffix': suffix!.toTfJson(),
    if (range != null) 'range': range!.encode(),
  };
}

/// Typed helper for the `spec.grpc_route.match.metadata.match.range` block of
/// `aws_appmesh_route` (derived from provider schema).
@immutable
final class AppmeshRouteSpecGrpcRouteMatchMetadataMatchRange {
  const AppmeshRouteSpecGrpcRouteMatchMetadataMatchRange({
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

/// Typed helper for the `spec.grpc_route.retry_policy` block of
/// `aws_appmesh_route` (derived from provider schema).
@immutable
final class AppmeshRouteSpecGrpcRouteRetryPolicy {
  const AppmeshRouteSpecGrpcRouteRetryPolicy({
    this.grpcRetryEvents,
    this.httpRetryEvents,
    required this.maxRetries,
    this.tcpRetryEvents,
    required this.perRetryTimeout,
  });

  final TfArg<List<Object?>>? grpcRetryEvents;

  final TfArg<List<Object?>>? httpRetryEvents;

  final TfArg<num> maxRetries;

  final TfArg<List<Object?>>? tcpRetryEvents;

  final AppmeshRouteSpecGrpcRouteRetryPolicyPerRetryTimeout perRetryTimeout;

  Map<String, Object?> encode() => {
    if (grpcRetryEvents != null)
      'grpc_retry_events': grpcRetryEvents!.toTfJson(),
    if (httpRetryEvents != null)
      'http_retry_events': httpRetryEvents!.toTfJson(),
    'max_retries': maxRetries.toTfJson(),
    if (tcpRetryEvents != null) 'tcp_retry_events': tcpRetryEvents!.toTfJson(),
    'per_retry_timeout': perRetryTimeout.encode(),
  };
}

/// Typed helper for the `spec.grpc_route.retry_policy.per_retry_timeout` block of
/// `aws_appmesh_route` (derived from provider schema).
@immutable
final class AppmeshRouteSpecGrpcRouteRetryPolicyPerRetryTimeout {
  const AppmeshRouteSpecGrpcRouteRetryPolicyPerRetryTimeout({
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

/// Typed helper for the `spec.grpc_route.timeout` block of
/// `aws_appmesh_route` (derived from provider schema).
@immutable
final class AppmeshRouteSpecGrpcRouteTimeout {
  const AppmeshRouteSpecGrpcRouteTimeout({this.idle, this.perRequest});

  final AppmeshRouteSpecGrpcRouteTimeoutIdle? idle;

  final AppmeshRouteSpecGrpcRouteTimeoutPerRequest? perRequest;

  Map<String, Object?> encode() => {
    if (idle != null) 'idle': idle!.encode(),
    if (perRequest != null) 'per_request': perRequest!.encode(),
  };
}

/// Typed helper for the `spec.grpc_route.timeout.idle` block of
/// `aws_appmesh_route` (derived from provider schema).
@immutable
final class AppmeshRouteSpecGrpcRouteTimeoutIdle {
  const AppmeshRouteSpecGrpcRouteTimeoutIdle({
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

/// Typed helper for the `spec.grpc_route.timeout.per_request` block of
/// `aws_appmesh_route` (derived from provider schema).
@immutable
final class AppmeshRouteSpecGrpcRouteTimeoutPerRequest {
  const AppmeshRouteSpecGrpcRouteTimeoutPerRequest({
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

/// Typed helper for the `spec.http2_route` block of
/// `aws_appmesh_route` (derived from provider schema).
@immutable
final class AppmeshRouteSpecHttp2Route {
  const AppmeshRouteSpecHttp2Route({
    required this.action,
    required this.match,
    this.retryPolicy,
    this.timeout,
  });

  final AppmeshRouteSpecHttp2RouteAction action;

  final AppmeshRouteSpecHttp2RouteMatch match;

  final AppmeshRouteSpecHttp2RouteRetryPolicy? retryPolicy;

  final AppmeshRouteSpecHttp2RouteTimeout? timeout;

  Map<String, Object?> encode() => {
    'action': action.encode(),
    'match': match.encode(),
    if (retryPolicy != null) 'retry_policy': retryPolicy!.encode(),
    if (timeout != null) 'timeout': timeout!.encode(),
  };
}

/// Typed helper for the `spec.http2_route.action` block of
/// `aws_appmesh_route` (derived from provider schema).
@immutable
final class AppmeshRouteSpecHttp2RouteAction {
  const AppmeshRouteSpecHttp2RouteAction({required this.weightedTarget});

  final List<AppmeshRouteSpecHttp2RouteActionWeightedTarget> weightedTarget;

  Map<String, Object?> encode() => {
    'weighted_target': [for (final e in weightedTarget) e.encode()],
  };
}

/// Typed helper for the `spec.http2_route.action.weighted_target` block of
/// `aws_appmesh_route` (derived from provider schema).
@immutable
final class AppmeshRouteSpecHttp2RouteActionWeightedTarget {
  const AppmeshRouteSpecHttp2RouteActionWeightedTarget({
    this.port,
    required this.virtualNode,
    required this.weight,
  });

  final TfArg<num>? port;

  final TfArg<String> virtualNode;

  final TfArg<num> weight;

  Map<String, Object?> encode() => {
    if (port != null) 'port': port!.toTfJson(),
    'virtual_node': virtualNode.toTfJson(),
    'weight': weight.toTfJson(),
  };
}

/// Typed helper for the `spec.http2_route.match` block of
/// `aws_appmesh_route` (derived from provider schema).
@immutable
final class AppmeshRouteSpecHttp2RouteMatch {
  const AppmeshRouteSpecHttp2RouteMatch({
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

  final List<AppmeshRouteSpecHttp2RouteMatchHeader>? header;

  final AppmeshRouteSpecHttp2RouteMatchPath? path;

  final List<AppmeshRouteSpecHttp2RouteMatchQueryParameter>? queryParameter;

  Map<String, Object?> encode() => {
    if (method != null) 'method': method!.toTfJson(),
    if (port != null) 'port': port!.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
    if (scheme != null) 'scheme': scheme!.toTfJson(),
    if (header != null) 'header': [for (final e in header!) e.encode()],
    if (path != null) 'path': path!.encode(),
    if (queryParameter != null)
      'query_parameter': [for (final e in queryParameter!) e.encode()],
  };
}

/// Typed helper for the `spec.http2_route.match.header` block of
/// `aws_appmesh_route` (derived from provider schema).
@immutable
final class AppmeshRouteSpecHttp2RouteMatchHeader {
  const AppmeshRouteSpecHttp2RouteMatchHeader({
    this.invert,
    required this.name,
    this.match,
  });

  final TfArg<bool>? invert;

  final TfArg<String> name;

  final AppmeshRouteSpecHttp2RouteMatchHeaderMatch? match;

  Map<String, Object?> encode() => {
    if (invert != null) 'invert': invert!.toTfJson(),
    'name': name.toTfJson(),
    if (match != null) 'match': match!.encode(),
  };
}

/// Typed helper for the `spec.http2_route.match.header.match` block of
/// `aws_appmesh_route` (derived from provider schema).
@immutable
final class AppmeshRouteSpecHttp2RouteMatchHeaderMatch {
  const AppmeshRouteSpecHttp2RouteMatchHeaderMatch({
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

  final AppmeshRouteSpecHttp2RouteMatchHeaderMatchRange? range;

  Map<String, Object?> encode() => {
    if (exact != null) 'exact': exact!.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
    if (regex != null) 'regex': regex!.toTfJson(),
    if (suffix != null) 'suffix': suffix!.toTfJson(),
    if (range != null) 'range': range!.encode(),
  };
}

/// Typed helper for the `spec.http2_route.match.header.match.range` block of
/// `aws_appmesh_route` (derived from provider schema).
@immutable
final class AppmeshRouteSpecHttp2RouteMatchHeaderMatchRange {
  const AppmeshRouteSpecHttp2RouteMatchHeaderMatchRange({
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

/// Typed helper for the `spec.http2_route.match.path` block of
/// `aws_appmesh_route` (derived from provider schema).
@immutable
final class AppmeshRouteSpecHttp2RouteMatchPath {
  const AppmeshRouteSpecHttp2RouteMatchPath({this.exact, this.regex});

  final TfArg<String>? exact;

  final TfArg<String>? regex;

  Map<String, Object?> encode() => {
    if (exact != null) 'exact': exact!.toTfJson(),
    if (regex != null) 'regex': regex!.toTfJson(),
  };
}

/// Typed helper for the `spec.http2_route.match.query_parameter` block of
/// `aws_appmesh_route` (derived from provider schema).
@immutable
final class AppmeshRouteSpecHttp2RouteMatchQueryParameter {
  const AppmeshRouteSpecHttp2RouteMatchQueryParameter({
    required this.name,
    this.match,
  });

  final TfArg<String> name;

  final AppmeshRouteSpecHttp2RouteMatchQueryParameterMatch? match;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    if (match != null) 'match': match!.encode(),
  };
}

/// Typed helper for the `spec.http2_route.match.query_parameter.match` block of
/// `aws_appmesh_route` (derived from provider schema).
@immutable
final class AppmeshRouteSpecHttp2RouteMatchQueryParameterMatch {
  const AppmeshRouteSpecHttp2RouteMatchQueryParameterMatch({this.exact});

  final TfArg<String>? exact;

  Map<String, Object?> encode() => {
    if (exact != null) 'exact': exact!.toTfJson(),
  };
}

/// Typed helper for the `spec.http2_route.retry_policy` block of
/// `aws_appmesh_route` (derived from provider schema).
@immutable
final class AppmeshRouteSpecHttp2RouteRetryPolicy {
  const AppmeshRouteSpecHttp2RouteRetryPolicy({
    this.httpRetryEvents,
    required this.maxRetries,
    this.tcpRetryEvents,
    required this.perRetryTimeout,
  });

  final TfArg<List<Object?>>? httpRetryEvents;

  final TfArg<num> maxRetries;

  final TfArg<List<Object?>>? tcpRetryEvents;

  final AppmeshRouteSpecHttp2RouteRetryPolicyPerRetryTimeout perRetryTimeout;

  Map<String, Object?> encode() => {
    if (httpRetryEvents != null)
      'http_retry_events': httpRetryEvents!.toTfJson(),
    'max_retries': maxRetries.toTfJson(),
    if (tcpRetryEvents != null) 'tcp_retry_events': tcpRetryEvents!.toTfJson(),
    'per_retry_timeout': perRetryTimeout.encode(),
  };
}

/// Typed helper for the `spec.http2_route.retry_policy.per_retry_timeout` block of
/// `aws_appmesh_route` (derived from provider schema).
@immutable
final class AppmeshRouteSpecHttp2RouteRetryPolicyPerRetryTimeout {
  const AppmeshRouteSpecHttp2RouteRetryPolicyPerRetryTimeout({
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
@immutable
final class AppmeshRouteSpecHttp2RouteTimeout {
  const AppmeshRouteSpecHttp2RouteTimeout({this.idle, this.perRequest});

  final AppmeshRouteSpecHttp2RouteTimeoutIdle? idle;

  final AppmeshRouteSpecHttp2RouteTimeoutPerRequest? perRequest;

  Map<String, Object?> encode() => {
    if (idle != null) 'idle': idle!.encode(),
    if (perRequest != null) 'per_request': perRequest!.encode(),
  };
}

/// Typed helper for the `spec.http2_route.timeout.idle` block of
/// `aws_appmesh_route` (derived from provider schema).
@immutable
final class AppmeshRouteSpecHttp2RouteTimeoutIdle {
  const AppmeshRouteSpecHttp2RouteTimeoutIdle({
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

/// Typed helper for the `spec.http2_route.timeout.per_request` block of
/// `aws_appmesh_route` (derived from provider schema).
@immutable
final class AppmeshRouteSpecHttp2RouteTimeoutPerRequest {
  const AppmeshRouteSpecHttp2RouteTimeoutPerRequest({
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
final class AppmeshRouteSpecHttpRoute {
  const AppmeshRouteSpecHttpRoute({
    required this.action,
    required this.match,
    this.retryPolicy,
    this.timeout,
  });

  final AppmeshRouteSpecHttpRouteAction action;

  final AppmeshRouteSpecHttpRouteMatch match;

  final AppmeshRouteSpecHttpRouteRetryPolicy? retryPolicy;

  final AppmeshRouteSpecHttpRouteTimeout? timeout;

  Map<String, Object?> encode() => {
    'action': action.encode(),
    'match': match.encode(),
    if (retryPolicy != null) 'retry_policy': retryPolicy!.encode(),
    if (timeout != null) 'timeout': timeout!.encode(),
  };
}

/// Typed helper for the `spec.http_route.action` block of
/// `aws_appmesh_route` (derived from provider schema).
@immutable
final class AppmeshRouteSpecHttpRouteAction {
  const AppmeshRouteSpecHttpRouteAction({required this.weightedTarget});

  final List<AppmeshRouteSpecHttpRouteActionWeightedTarget> weightedTarget;

  Map<String, Object?> encode() => {
    'weighted_target': [for (final e in weightedTarget) e.encode()],
  };
}

/// Typed helper for the `spec.http_route.action.weighted_target` block of
/// `aws_appmesh_route` (derived from provider schema).
@immutable
final class AppmeshRouteSpecHttpRouteActionWeightedTarget {
  const AppmeshRouteSpecHttpRouteActionWeightedTarget({
    this.port,
    required this.virtualNode,
    required this.weight,
  });

  final TfArg<num>? port;

  final TfArg<String> virtualNode;

  final TfArg<num> weight;

  Map<String, Object?> encode() => {
    if (port != null) 'port': port!.toTfJson(),
    'virtual_node': virtualNode.toTfJson(),
    'weight': weight.toTfJson(),
  };
}

/// Typed helper for the `spec.http_route.match` block of
/// `aws_appmesh_route` (derived from provider schema).
@immutable
final class AppmeshRouteSpecHttpRouteMatch {
  const AppmeshRouteSpecHttpRouteMatch({
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

  final List<AppmeshRouteSpecHttpRouteMatchHeader>? header;

  final AppmeshRouteSpecHttpRouteMatchPath? path;

  final List<AppmeshRouteSpecHttpRouteMatchQueryParameter>? queryParameter;

  Map<String, Object?> encode() => {
    if (method != null) 'method': method!.toTfJson(),
    if (port != null) 'port': port!.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
    if (scheme != null) 'scheme': scheme!.toTfJson(),
    if (header != null) 'header': [for (final e in header!) e.encode()],
    if (path != null) 'path': path!.encode(),
    if (queryParameter != null)
      'query_parameter': [for (final e in queryParameter!) e.encode()],
  };
}

/// Typed helper for the `spec.http_route.match.header` block of
/// `aws_appmesh_route` (derived from provider schema).
@immutable
final class AppmeshRouteSpecHttpRouteMatchHeader {
  const AppmeshRouteSpecHttpRouteMatchHeader({
    this.invert,
    required this.name,
    this.match,
  });

  final TfArg<bool>? invert;

  final TfArg<String> name;

  final AppmeshRouteSpecHttpRouteMatchHeaderMatch? match;

  Map<String, Object?> encode() => {
    if (invert != null) 'invert': invert!.toTfJson(),
    'name': name.toTfJson(),
    if (match != null) 'match': match!.encode(),
  };
}

/// Typed helper for the `spec.http_route.match.header.match` block of
/// `aws_appmesh_route` (derived from provider schema).
@immutable
final class AppmeshRouteSpecHttpRouteMatchHeaderMatch {
  const AppmeshRouteSpecHttpRouteMatchHeaderMatch({
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

  final AppmeshRouteSpecHttpRouteMatchHeaderMatchRange? range;

  Map<String, Object?> encode() => {
    if (exact != null) 'exact': exact!.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
    if (regex != null) 'regex': regex!.toTfJson(),
    if (suffix != null) 'suffix': suffix!.toTfJson(),
    if (range != null) 'range': range!.encode(),
  };
}

/// Typed helper for the `spec.http_route.match.header.match.range` block of
/// `aws_appmesh_route` (derived from provider schema).
@immutable
final class AppmeshRouteSpecHttpRouteMatchHeaderMatchRange {
  const AppmeshRouteSpecHttpRouteMatchHeaderMatchRange({
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

/// Typed helper for the `spec.http_route.match.path` block of
/// `aws_appmesh_route` (derived from provider schema).
@immutable
final class AppmeshRouteSpecHttpRouteMatchPath {
  const AppmeshRouteSpecHttpRouteMatchPath({this.exact, this.regex});

  final TfArg<String>? exact;

  final TfArg<String>? regex;

  Map<String, Object?> encode() => {
    if (exact != null) 'exact': exact!.toTfJson(),
    if (regex != null) 'regex': regex!.toTfJson(),
  };
}

/// Typed helper for the `spec.http_route.match.query_parameter` block of
/// `aws_appmesh_route` (derived from provider schema).
@immutable
final class AppmeshRouteSpecHttpRouteMatchQueryParameter {
  const AppmeshRouteSpecHttpRouteMatchQueryParameter({
    required this.name,
    this.match,
  });

  final TfArg<String> name;

  final AppmeshRouteSpecHttpRouteMatchQueryParameterMatch? match;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    if (match != null) 'match': match!.encode(),
  };
}

/// Typed helper for the `spec.http_route.match.query_parameter.match` block of
/// `aws_appmesh_route` (derived from provider schema).
@immutable
final class AppmeshRouteSpecHttpRouteMatchQueryParameterMatch {
  const AppmeshRouteSpecHttpRouteMatchQueryParameterMatch({this.exact});

  final TfArg<String>? exact;

  Map<String, Object?> encode() => {
    if (exact != null) 'exact': exact!.toTfJson(),
  };
}

/// Typed helper for the `spec.http_route.retry_policy` block of
/// `aws_appmesh_route` (derived from provider schema).
@immutable
final class AppmeshRouteSpecHttpRouteRetryPolicy {
  const AppmeshRouteSpecHttpRouteRetryPolicy({
    this.httpRetryEvents,
    required this.maxRetries,
    this.tcpRetryEvents,
    required this.perRetryTimeout,
  });

  final TfArg<List<Object?>>? httpRetryEvents;

  final TfArg<num> maxRetries;

  final TfArg<List<Object?>>? tcpRetryEvents;

  final AppmeshRouteSpecHttpRouteRetryPolicyPerRetryTimeout perRetryTimeout;

  Map<String, Object?> encode() => {
    if (httpRetryEvents != null)
      'http_retry_events': httpRetryEvents!.toTfJson(),
    'max_retries': maxRetries.toTfJson(),
    if (tcpRetryEvents != null) 'tcp_retry_events': tcpRetryEvents!.toTfJson(),
    'per_retry_timeout': perRetryTimeout.encode(),
  };
}

/// Typed helper for the `spec.http_route.retry_policy.per_retry_timeout` block of
/// `aws_appmesh_route` (derived from provider schema).
@immutable
final class AppmeshRouteSpecHttpRouteRetryPolicyPerRetryTimeout {
  const AppmeshRouteSpecHttpRouteRetryPolicyPerRetryTimeout({
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

/// Typed helper for the `spec.http_route.timeout` block of
/// `aws_appmesh_route` (derived from provider schema).
@immutable
final class AppmeshRouteSpecHttpRouteTimeout {
  const AppmeshRouteSpecHttpRouteTimeout({this.idle, this.perRequest});

  final AppmeshRouteSpecHttpRouteTimeoutIdle? idle;

  final AppmeshRouteSpecHttpRouteTimeoutPerRequest? perRequest;

  Map<String, Object?> encode() => {
    if (idle != null) 'idle': idle!.encode(),
    if (perRequest != null) 'per_request': perRequest!.encode(),
  };
}

/// Typed helper for the `spec.http_route.timeout.idle` block of
/// `aws_appmesh_route` (derived from provider schema).
@immutable
final class AppmeshRouteSpecHttpRouteTimeoutIdle {
  const AppmeshRouteSpecHttpRouteTimeoutIdle({
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

/// Typed helper for the `spec.http_route.timeout.per_request` block of
/// `aws_appmesh_route` (derived from provider schema).
@immutable
final class AppmeshRouteSpecHttpRouteTimeoutPerRequest {
  const AppmeshRouteSpecHttpRouteTimeoutPerRequest({
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

/// Typed helper for the `spec.tcp_route` block of
/// `aws_appmesh_route` (derived from provider schema).
@immutable
final class AppmeshRouteSpecTcpRoute {
  const AppmeshRouteSpecTcpRoute({
    required this.action,
    this.match,
    this.timeout,
  });

  final AppmeshRouteSpecTcpRouteAction action;

  final AppmeshRouteSpecTcpRouteMatch? match;

  final AppmeshRouteSpecTcpRouteTimeout? timeout;

  Map<String, Object?> encode() => {
    'action': action.encode(),
    if (match != null) 'match': match!.encode(),
    if (timeout != null) 'timeout': timeout!.encode(),
  };
}

/// Typed helper for the `spec.tcp_route.action` block of
/// `aws_appmesh_route` (derived from provider schema).
@immutable
final class AppmeshRouteSpecTcpRouteAction {
  const AppmeshRouteSpecTcpRouteAction({required this.weightedTarget});

  final List<AppmeshRouteSpecTcpRouteActionWeightedTarget> weightedTarget;

  Map<String, Object?> encode() => {
    'weighted_target': [for (final e in weightedTarget) e.encode()],
  };
}

/// Typed helper for the `spec.tcp_route.action.weighted_target` block of
/// `aws_appmesh_route` (derived from provider schema).
@immutable
final class AppmeshRouteSpecTcpRouteActionWeightedTarget {
  const AppmeshRouteSpecTcpRouteActionWeightedTarget({
    this.port,
    required this.virtualNode,
    required this.weight,
  });

  final TfArg<num>? port;

  final TfArg<String> virtualNode;

  final TfArg<num> weight;

  Map<String, Object?> encode() => {
    if (port != null) 'port': port!.toTfJson(),
    'virtual_node': virtualNode.toTfJson(),
    'weight': weight.toTfJson(),
  };
}

/// Typed helper for the `spec.tcp_route.match` block of
/// `aws_appmesh_route` (derived from provider schema).
@immutable
final class AppmeshRouteSpecTcpRouteMatch {
  const AppmeshRouteSpecTcpRouteMatch({this.port});

  final TfArg<num>? port;

  Map<String, Object?> encode() => {if (port != null) 'port': port!.toTfJson()};
}

/// Typed helper for the `spec.tcp_route.timeout` block of
/// `aws_appmesh_route` (derived from provider schema).
@immutable
final class AppmeshRouteSpecTcpRouteTimeout {
  const AppmeshRouteSpecTcpRouteTimeout({this.idle});

  final AppmeshRouteSpecTcpRouteTimeoutIdle? idle;

  Map<String, Object?> encode() => {if (idle != null) 'idle': idle!.encode()};
}

/// Typed helper for the `spec.tcp_route.timeout.idle` block of
/// `aws_appmesh_route` (derived from provider schema).
@immutable
final class AppmeshRouteSpecTcpRouteTimeoutIdle {
  const AppmeshRouteSpecTcpRouteTimeoutIdle({
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
           if (meshOwner != null) 'mesh_owner': meshOwner,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'virtual_router_name': virtualRouterName,
           'spec': TfArg.literal(spec.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppmeshRouteSensitive;

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
}
