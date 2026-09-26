// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_appmesh_gateway_route`.
const Set<String> _awsAppmeshGatewayRouteSensitive = <String>{};

/// Typed helper for the `spec` block of
/// `aws_appmesh_gateway_route` (derived from provider schema).
@immutable
final class AppmeshGatewayRouteSpec {
  const AppmeshGatewayRouteSpec({
    this.priority,
    this.grpcRoute,
    this.http2Route,
    this.httpRoute,
  });

  final TfArg<num>? priority;

  final AppmeshGatewayRouteSpecGrpcRoute? grpcRoute;

  final AppmeshGatewayRouteSpecHttp2Route? http2Route;

  final AppmeshGatewayRouteSpecHttpRoute? httpRoute;

  Map<String, Object?> encode() => {
    if (priority != null) 'priority': priority!.toTfJson(),
    if (grpcRoute != null) 'grpc_route': grpcRoute!.encode(),
    if (http2Route != null) 'http2_route': http2Route!.encode(),
    if (httpRoute != null) 'http_route': httpRoute!.encode(),
  };
}

/// Typed helper for the `spec.grpc_route` block of
/// `aws_appmesh_gateway_route` (derived from provider schema).
@immutable
final class AppmeshGatewayRouteSpecGrpcRoute {
  const AppmeshGatewayRouteSpecGrpcRoute({
    required this.action,
    required this.match,
  });

  final AppmeshGatewayRouteSpecGrpcRouteAction action;

  final AppmeshGatewayRouteSpecGrpcRouteMatch match;

  Map<String, Object?> encode() => {
    'action': action.encode(),
    'match': match.encode(),
  };
}

/// Typed helper for the `spec.grpc_route.action` block of
/// `aws_appmesh_gateway_route` (derived from provider schema).
@immutable
final class AppmeshGatewayRouteSpecGrpcRouteAction {
  const AppmeshGatewayRouteSpecGrpcRouteAction({required this.target});

  final AppmeshGatewayRouteSpecGrpcRouteActionTarget target;

  Map<String, Object?> encode() => {'target': target.encode()};
}

/// Typed helper for the `spec.grpc_route.action.target` block of
/// `aws_appmesh_gateway_route` (derived from provider schema).
@immutable
final class AppmeshGatewayRouteSpecGrpcRouteActionTarget {
  const AppmeshGatewayRouteSpecGrpcRouteActionTarget({
    this.port,
    required this.virtualService,
  });

  final TfArg<num>? port;

  final AppmeshGatewayRouteSpecGrpcRouteActionTargetVirtualService
  virtualService;

  Map<String, Object?> encode() => {
    if (port != null) 'port': port!.toTfJson(),
    'virtual_service': virtualService.encode(),
  };
}

/// Typed helper for the `spec.grpc_route.action.target.virtual_service` block of
/// `aws_appmesh_gateway_route` (derived from provider schema).
@immutable
final class AppmeshGatewayRouteSpecGrpcRouteActionTargetVirtualService {
  const AppmeshGatewayRouteSpecGrpcRouteActionTargetVirtualService({
    required this.virtualServiceName,
  });

  final TfArg<String> virtualServiceName;

  Map<String, Object?> encode() => {
    'virtual_service_name': virtualServiceName.toTfJson(),
  };
}

/// Typed helper for the `spec.grpc_route.match` block of
/// `aws_appmesh_gateway_route` (derived from provider schema).
@immutable
final class AppmeshGatewayRouteSpecGrpcRouteMatch {
  const AppmeshGatewayRouteSpecGrpcRouteMatch({
    this.port,
    required this.serviceName,
  });

  final TfArg<num>? port;

  final TfArg<String> serviceName;

  Map<String, Object?> encode() => {
    if (port != null) 'port': port!.toTfJson(),
    'service_name': serviceName.toTfJson(),
  };
}

/// Typed helper for the `spec.http2_route` block of
/// `aws_appmesh_gateway_route` (derived from provider schema).
@immutable
final class AppmeshGatewayRouteSpecHttp2Route {
  const AppmeshGatewayRouteSpecHttp2Route({
    required this.action,
    required this.match,
  });

  final AppmeshGatewayRouteSpecHttp2RouteAction action;

  final AppmeshGatewayRouteSpecHttp2RouteMatch match;

  Map<String, Object?> encode() => {
    'action': action.encode(),
    'match': match.encode(),
  };
}

/// Typed helper for the `spec.http2_route.action` block of
/// `aws_appmesh_gateway_route` (derived from provider schema).
@immutable
final class AppmeshGatewayRouteSpecHttp2RouteAction {
  const AppmeshGatewayRouteSpecHttp2RouteAction({
    this.rewrite,
    required this.target,
  });

  final AppmeshGatewayRouteSpecHttp2RouteActionRewrite? rewrite;

  final AppmeshGatewayRouteSpecHttp2RouteActionTarget target;

  Map<String, Object?> encode() => {
    if (rewrite != null) 'rewrite': rewrite!.encode(),
    'target': target.encode(),
  };
}

/// Typed helper for the `spec.http2_route.action.rewrite` block of
/// `aws_appmesh_gateway_route` (derived from provider schema).
@immutable
final class AppmeshGatewayRouteSpecHttp2RouteActionRewrite {
  const AppmeshGatewayRouteSpecHttp2RouteActionRewrite({
    this.hostname,
    this.path,
    this.prefix,
  });

  final AppmeshGatewayRouteSpecHttp2RouteActionRewriteHostname? hostname;

  final AppmeshGatewayRouteSpecHttp2RouteActionRewritePath? path;

  final AppmeshGatewayRouteSpecHttp2RouteActionRewritePrefix? prefix;

  Map<String, Object?> encode() => {
    if (hostname != null) 'hostname': hostname!.encode(),
    if (path != null) 'path': path!.encode(),
    if (prefix != null) 'prefix': prefix!.encode(),
  };
}

/// Typed helper for the `spec.http2_route.action.rewrite.hostname` block of
/// `aws_appmesh_gateway_route` (derived from provider schema).
@immutable
final class AppmeshGatewayRouteSpecHttp2RouteActionRewriteHostname {
  const AppmeshGatewayRouteSpecHttp2RouteActionRewriteHostname({
    required this.defaultTargetHostname,
  });

  final TfArg<String> defaultTargetHostname;

  Map<String, Object?> encode() => {
    'default_target_hostname': defaultTargetHostname.toTfJson(),
  };
}

/// Typed helper for the `spec.http2_route.action.rewrite.path` block of
/// `aws_appmesh_gateway_route` (derived from provider schema).
@immutable
final class AppmeshGatewayRouteSpecHttp2RouteActionRewritePath {
  const AppmeshGatewayRouteSpecHttp2RouteActionRewritePath({
    required this.exact,
  });

  final TfArg<String> exact;

  Map<String, Object?> encode() => {'exact': exact.toTfJson()};
}

/// Typed helper for the `spec.http2_route.action.rewrite.prefix` block of
/// `aws_appmesh_gateway_route` (derived from provider schema).
@immutable
final class AppmeshGatewayRouteSpecHttp2RouteActionRewritePrefix {
  const AppmeshGatewayRouteSpecHttp2RouteActionRewritePrefix({
    this.defaultPrefix,
    this.value,
  });

  final TfArg<String>? defaultPrefix;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    if (defaultPrefix != null) 'default_prefix': defaultPrefix!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Typed helper for the `spec.http2_route.action.target` block of
/// `aws_appmesh_gateway_route` (derived from provider schema).
@immutable
final class AppmeshGatewayRouteSpecHttp2RouteActionTarget {
  const AppmeshGatewayRouteSpecHttp2RouteActionTarget({
    this.port,
    required this.virtualService,
  });

  final TfArg<num>? port;

  final AppmeshGatewayRouteSpecHttp2RouteActionTargetVirtualService
  virtualService;

  Map<String, Object?> encode() => {
    if (port != null) 'port': port!.toTfJson(),
    'virtual_service': virtualService.encode(),
  };
}

/// Typed helper for the `spec.http2_route.action.target.virtual_service` block of
/// `aws_appmesh_gateway_route` (derived from provider schema).
@immutable
final class AppmeshGatewayRouteSpecHttp2RouteActionTargetVirtualService {
  const AppmeshGatewayRouteSpecHttp2RouteActionTargetVirtualService({
    required this.virtualServiceName,
  });

  final TfArg<String> virtualServiceName;

  Map<String, Object?> encode() => {
    'virtual_service_name': virtualServiceName.toTfJson(),
  };
}

/// Typed helper for the `spec.http2_route.match` block of
/// `aws_appmesh_gateway_route` (derived from provider schema).
@immutable
final class AppmeshGatewayRouteSpecHttp2RouteMatch {
  const AppmeshGatewayRouteSpecHttp2RouteMatch({
    this.port,
    this.prefix,
    this.header,
    this.hostname,
    this.path,
    this.queryParameter,
  });

  final TfArg<num>? port;

  final TfArg<String>? prefix;

  final List<AppmeshGatewayRouteSpecHttp2RouteMatchHeader>? header;

  final AppmeshGatewayRouteSpecHttp2RouteMatchHostname? hostname;

  final AppmeshGatewayRouteSpecHttp2RouteMatchPath? path;

  final List<AppmeshGatewayRouteSpecHttp2RouteMatchQueryParameter>?
  queryParameter;

  Map<String, Object?> encode() => {
    if (port != null) 'port': port!.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
    if (header != null) 'header': [for (final e in header!) e.encode()],
    if (hostname != null) 'hostname': hostname!.encode(),
    if (path != null) 'path': path!.encode(),
    if (queryParameter != null)
      'query_parameter': [for (final e in queryParameter!) e.encode()],
  };
}

/// Typed helper for the `spec.http2_route.match.header` block of
/// `aws_appmesh_gateway_route` (derived from provider schema).
@immutable
final class AppmeshGatewayRouteSpecHttp2RouteMatchHeader {
  const AppmeshGatewayRouteSpecHttp2RouteMatchHeader({
    this.invert,
    required this.name,
    this.match,
  });

  final TfArg<bool>? invert;

  final TfArg<String> name;

  final AppmeshGatewayRouteSpecHttp2RouteMatchHeaderMatch? match;

  Map<String, Object?> encode() => {
    if (invert != null) 'invert': invert!.toTfJson(),
    'name': name.toTfJson(),
    if (match != null) 'match': match!.encode(),
  };
}

/// Typed helper for the `spec.http2_route.match.header.match` block of
/// `aws_appmesh_gateway_route` (derived from provider schema).
@immutable
final class AppmeshGatewayRouteSpecHttp2RouteMatchHeaderMatch {
  const AppmeshGatewayRouteSpecHttp2RouteMatchHeaderMatch({
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

  final AppmeshGatewayRouteSpecHttp2RouteMatchHeaderMatchRange? range;

  Map<String, Object?> encode() => {
    if (exact != null) 'exact': exact!.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
    if (regex != null) 'regex': regex!.toTfJson(),
    if (suffix != null) 'suffix': suffix!.toTfJson(),
    if (range != null) 'range': range!.encode(),
  };
}

/// Typed helper for the `spec.http2_route.match.header.match.range` block of
/// `aws_appmesh_gateway_route` (derived from provider schema).
@immutable
final class AppmeshGatewayRouteSpecHttp2RouteMatchHeaderMatchRange {
  const AppmeshGatewayRouteSpecHttp2RouteMatchHeaderMatchRange({
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

/// Typed helper for the `spec.http2_route.match.hostname` block of
/// `aws_appmesh_gateway_route` (derived from provider schema).
@immutable
final class AppmeshGatewayRouteSpecHttp2RouteMatchHostname {
  const AppmeshGatewayRouteSpecHttp2RouteMatchHostname({
    this.exact,
    this.suffix,
  });

  final TfArg<String>? exact;

  final TfArg<String>? suffix;

  Map<String, Object?> encode() => {
    if (exact != null) 'exact': exact!.toTfJson(),
    if (suffix != null) 'suffix': suffix!.toTfJson(),
  };
}

/// Typed helper for the `spec.http2_route.match.path` block of
/// `aws_appmesh_gateway_route` (derived from provider schema).
@immutable
final class AppmeshGatewayRouteSpecHttp2RouteMatchPath {
  const AppmeshGatewayRouteSpecHttp2RouteMatchPath({this.exact, this.regex});

  final TfArg<String>? exact;

  final TfArg<String>? regex;

  Map<String, Object?> encode() => {
    if (exact != null) 'exact': exact!.toTfJson(),
    if (regex != null) 'regex': regex!.toTfJson(),
  };
}

/// Typed helper for the `spec.http2_route.match.query_parameter` block of
/// `aws_appmesh_gateway_route` (derived from provider schema).
@immutable
final class AppmeshGatewayRouteSpecHttp2RouteMatchQueryParameter {
  const AppmeshGatewayRouteSpecHttp2RouteMatchQueryParameter({
    required this.name,
    this.match,
  });

  final TfArg<String> name;

  final AppmeshGatewayRouteSpecHttp2RouteMatchQueryParameterMatch? match;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    if (match != null) 'match': match!.encode(),
  };
}

/// Typed helper for the `spec.http2_route.match.query_parameter.match` block of
/// `aws_appmesh_gateway_route` (derived from provider schema).
@immutable
final class AppmeshGatewayRouteSpecHttp2RouteMatchQueryParameterMatch {
  const AppmeshGatewayRouteSpecHttp2RouteMatchQueryParameterMatch({this.exact});

  final TfArg<String>? exact;

  Map<String, Object?> encode() => {
    if (exact != null) 'exact': exact!.toTfJson(),
  };
}

/// Typed helper for the `spec.http_route` block of
/// `aws_appmesh_gateway_route` (derived from provider schema).
@immutable
final class AppmeshGatewayRouteSpecHttpRoute {
  const AppmeshGatewayRouteSpecHttpRoute({
    required this.action,
    required this.match,
  });

  final AppmeshGatewayRouteSpecHttpRouteAction action;

  final AppmeshGatewayRouteSpecHttpRouteMatch match;

  Map<String, Object?> encode() => {
    'action': action.encode(),
    'match': match.encode(),
  };
}

/// Typed helper for the `spec.http_route.action` block of
/// `aws_appmesh_gateway_route` (derived from provider schema).
@immutable
final class AppmeshGatewayRouteSpecHttpRouteAction {
  const AppmeshGatewayRouteSpecHttpRouteAction({
    this.rewrite,
    required this.target,
  });

  final AppmeshGatewayRouteSpecHttpRouteActionRewrite? rewrite;

  final AppmeshGatewayRouteSpecHttpRouteActionTarget target;

  Map<String, Object?> encode() => {
    if (rewrite != null) 'rewrite': rewrite!.encode(),
    'target': target.encode(),
  };
}

/// Typed helper for the `spec.http_route.action.rewrite` block of
/// `aws_appmesh_gateway_route` (derived from provider schema).
@immutable
final class AppmeshGatewayRouteSpecHttpRouteActionRewrite {
  const AppmeshGatewayRouteSpecHttpRouteActionRewrite({
    this.hostname,
    this.path,
    this.prefix,
  });

  final AppmeshGatewayRouteSpecHttpRouteActionRewriteHostname? hostname;

  final AppmeshGatewayRouteSpecHttpRouteActionRewritePath? path;

  final AppmeshGatewayRouteSpecHttpRouteActionRewritePrefix? prefix;

  Map<String, Object?> encode() => {
    if (hostname != null) 'hostname': hostname!.encode(),
    if (path != null) 'path': path!.encode(),
    if (prefix != null) 'prefix': prefix!.encode(),
  };
}

/// Typed helper for the `spec.http_route.action.rewrite.hostname` block of
/// `aws_appmesh_gateway_route` (derived from provider schema).
@immutable
final class AppmeshGatewayRouteSpecHttpRouteActionRewriteHostname {
  const AppmeshGatewayRouteSpecHttpRouteActionRewriteHostname({
    required this.defaultTargetHostname,
  });

  final TfArg<String> defaultTargetHostname;

  Map<String, Object?> encode() => {
    'default_target_hostname': defaultTargetHostname.toTfJson(),
  };
}

/// Typed helper for the `spec.http_route.action.rewrite.path` block of
/// `aws_appmesh_gateway_route` (derived from provider schema).
@immutable
final class AppmeshGatewayRouteSpecHttpRouteActionRewritePath {
  const AppmeshGatewayRouteSpecHttpRouteActionRewritePath({
    required this.exact,
  });

  final TfArg<String> exact;

  Map<String, Object?> encode() => {'exact': exact.toTfJson()};
}

/// Typed helper for the `spec.http_route.action.rewrite.prefix` block of
/// `aws_appmesh_gateway_route` (derived from provider schema).
@immutable
final class AppmeshGatewayRouteSpecHttpRouteActionRewritePrefix {
  const AppmeshGatewayRouteSpecHttpRouteActionRewritePrefix({
    this.defaultPrefix,
    this.value,
  });

  final TfArg<String>? defaultPrefix;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    if (defaultPrefix != null) 'default_prefix': defaultPrefix!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Typed helper for the `spec.http_route.action.target` block of
/// `aws_appmesh_gateway_route` (derived from provider schema).
@immutable
final class AppmeshGatewayRouteSpecHttpRouteActionTarget {
  const AppmeshGatewayRouteSpecHttpRouteActionTarget({
    this.port,
    required this.virtualService,
  });

  final TfArg<num>? port;

  final AppmeshGatewayRouteSpecHttpRouteActionTargetVirtualService
  virtualService;

  Map<String, Object?> encode() => {
    if (port != null) 'port': port!.toTfJson(),
    'virtual_service': virtualService.encode(),
  };
}

/// Typed helper for the `spec.http_route.action.target.virtual_service` block of
/// `aws_appmesh_gateway_route` (derived from provider schema).
@immutable
final class AppmeshGatewayRouteSpecHttpRouteActionTargetVirtualService {
  const AppmeshGatewayRouteSpecHttpRouteActionTargetVirtualService({
    required this.virtualServiceName,
  });

  final TfArg<String> virtualServiceName;

  Map<String, Object?> encode() => {
    'virtual_service_name': virtualServiceName.toTfJson(),
  };
}

/// Typed helper for the `spec.http_route.match` block of
/// `aws_appmesh_gateway_route` (derived from provider schema).
@immutable
final class AppmeshGatewayRouteSpecHttpRouteMatch {
  const AppmeshGatewayRouteSpecHttpRouteMatch({
    this.port,
    this.prefix,
    this.header,
    this.hostname,
    this.path,
    this.queryParameter,
  });

  final TfArg<num>? port;

  final TfArg<String>? prefix;

  final List<AppmeshGatewayRouteSpecHttpRouteMatchHeader>? header;

  final AppmeshGatewayRouteSpecHttpRouteMatchHostname? hostname;

  final AppmeshGatewayRouteSpecHttpRouteMatchPath? path;

  final List<AppmeshGatewayRouteSpecHttpRouteMatchQueryParameter>?
  queryParameter;

  Map<String, Object?> encode() => {
    if (port != null) 'port': port!.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
    if (header != null) 'header': [for (final e in header!) e.encode()],
    if (hostname != null) 'hostname': hostname!.encode(),
    if (path != null) 'path': path!.encode(),
    if (queryParameter != null)
      'query_parameter': [for (final e in queryParameter!) e.encode()],
  };
}

/// Typed helper for the `spec.http_route.match.header` block of
/// `aws_appmesh_gateway_route` (derived from provider schema).
@immutable
final class AppmeshGatewayRouteSpecHttpRouteMatchHeader {
  const AppmeshGatewayRouteSpecHttpRouteMatchHeader({
    this.invert,
    required this.name,
    this.match,
  });

  final TfArg<bool>? invert;

  final TfArg<String> name;

  final AppmeshGatewayRouteSpecHttpRouteMatchHeaderMatch? match;

  Map<String, Object?> encode() => {
    if (invert != null) 'invert': invert!.toTfJson(),
    'name': name.toTfJson(),
    if (match != null) 'match': match!.encode(),
  };
}

/// Typed helper for the `spec.http_route.match.header.match` block of
/// `aws_appmesh_gateway_route` (derived from provider schema).
@immutable
final class AppmeshGatewayRouteSpecHttpRouteMatchHeaderMatch {
  const AppmeshGatewayRouteSpecHttpRouteMatchHeaderMatch({
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

  final AppmeshGatewayRouteSpecHttpRouteMatchHeaderMatchRange? range;

  Map<String, Object?> encode() => {
    if (exact != null) 'exact': exact!.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
    if (regex != null) 'regex': regex!.toTfJson(),
    if (suffix != null) 'suffix': suffix!.toTfJson(),
    if (range != null) 'range': range!.encode(),
  };
}

/// Typed helper for the `spec.http_route.match.header.match.range` block of
/// `aws_appmesh_gateway_route` (derived from provider schema).
@immutable
final class AppmeshGatewayRouteSpecHttpRouteMatchHeaderMatchRange {
  const AppmeshGatewayRouteSpecHttpRouteMatchHeaderMatchRange({
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

/// Typed helper for the `spec.http_route.match.hostname` block of
/// `aws_appmesh_gateway_route` (derived from provider schema).
@immutable
final class AppmeshGatewayRouteSpecHttpRouteMatchHostname {
  const AppmeshGatewayRouteSpecHttpRouteMatchHostname({
    this.exact,
    this.suffix,
  });

  final TfArg<String>? exact;

  final TfArg<String>? suffix;

  Map<String, Object?> encode() => {
    if (exact != null) 'exact': exact!.toTfJson(),
    if (suffix != null) 'suffix': suffix!.toTfJson(),
  };
}

/// Typed helper for the `spec.http_route.match.path` block of
/// `aws_appmesh_gateway_route` (derived from provider schema).
@immutable
final class AppmeshGatewayRouteSpecHttpRouteMatchPath {
  const AppmeshGatewayRouteSpecHttpRouteMatchPath({this.exact, this.regex});

  final TfArg<String>? exact;

  final TfArg<String>? regex;

  Map<String, Object?> encode() => {
    if (exact != null) 'exact': exact!.toTfJson(),
    if (regex != null) 'regex': regex!.toTfJson(),
  };
}

/// Typed helper for the `spec.http_route.match.query_parameter` block of
/// `aws_appmesh_gateway_route` (derived from provider schema).
@immutable
final class AppmeshGatewayRouteSpecHttpRouteMatchQueryParameter {
  const AppmeshGatewayRouteSpecHttpRouteMatchQueryParameter({
    required this.name,
    this.match,
  });

  final TfArg<String> name;

  final AppmeshGatewayRouteSpecHttpRouteMatchQueryParameterMatch? match;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    if (match != null) 'match': match!.encode(),
  };
}

/// Typed helper for the `spec.http_route.match.query_parameter.match` block of
/// `aws_appmesh_gateway_route` (derived from provider schema).
@immutable
final class AppmeshGatewayRouteSpecHttpRouteMatchQueryParameterMatch {
  const AppmeshGatewayRouteSpecHttpRouteMatchQueryParameterMatch({this.exact});

  final TfArg<String>? exact;

  Map<String, Object?> encode() => {
    if (exact != null) 'exact': exact!.toTfJson(),
  };
}

/// Factory wrapper for `aws_appmesh_gateway_route`.
final class AwsAppmeshGatewayRoute extends Resource {
  static const String tfType = 'aws_appmesh_gateway_route';

  AwsAppmeshGatewayRoute({
    required super.localName,
    required TfArg<String> meshName,
    TfArg<String>? meshOwner,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> virtualGatewayName,
    required AppmeshGatewayRouteSpec spec,
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
           'virtual_gateway_name': virtualGatewayName,
           'spec': TfArg.literal(spec.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppmeshGatewayRouteSensitive;

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
