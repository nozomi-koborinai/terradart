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
  const AppmeshGatewayRouteSpec({this.priority, required this.route});

  final TfArg<num>? priority;

  final AppmeshGatewayRouteSpecRoute route;

  @internal
  Map<String, Object?> encode() => {
    'priority': ?priority?.toTfJson(),
    ...route.encode(),
  };
}

/// Exactly one of `grpc_route`, `http2_route`, `http_route` on the `spec` block of `aws_appmesh_gateway_route`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.grpcRoute(...)`.
sealed class AppmeshGatewayRouteSpecRoute {
  const AppmeshGatewayRouteSpecRoute();

  /// Sets `grpc_route`.
  const factory AppmeshGatewayRouteSpecRoute.grpcRoute(
    AppmeshGatewayRouteGrpcRoute grpcRoute,
  ) = AppmeshGatewayRouteSpecGrpcRoute;

  /// Sets `http2_route`.
  const factory AppmeshGatewayRouteSpecRoute.http2Route(
    AppmeshGatewayRouteHttp2Route http2Route,
  ) = AppmeshGatewayRouteSpecHttp2Route;

  /// Sets `http_route`.
  const factory AppmeshGatewayRouteSpecRoute.httpRoute(
    AppmeshGatewayRouteHttpRoute httpRoute,
  ) = AppmeshGatewayRouteSpecHttpRoute;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [AppmeshGatewayRouteSpecRoute.grpcRoute] choice: sets `grpc_route`.
final class AppmeshGatewayRouteSpecGrpcRoute
    extends AppmeshGatewayRouteSpecRoute {
  const AppmeshGatewayRouteSpecGrpcRoute(this.grpcRoute);

  final AppmeshGatewayRouteGrpcRoute grpcRoute;

  @internal
  @override
  String get blockKey => 'grpc_route';

  @internal
  @override
  Map<String, Object?> encode() => {'grpc_route': grpcRoute.encode()};
}

/// The [AppmeshGatewayRouteSpecRoute.http2Route] choice: sets `http2_route`.
final class AppmeshGatewayRouteSpecHttp2Route
    extends AppmeshGatewayRouteSpecRoute {
  const AppmeshGatewayRouteSpecHttp2Route(this.http2Route);

  final AppmeshGatewayRouteHttp2Route http2Route;

  @internal
  @override
  String get blockKey => 'http2_route';

  @internal
  @override
  Map<String, Object?> encode() => {'http2_route': http2Route.encode()};
}

/// The [AppmeshGatewayRouteSpecRoute.httpRoute] choice: sets `http_route`.
final class AppmeshGatewayRouteSpecHttpRoute
    extends AppmeshGatewayRouteSpecRoute {
  const AppmeshGatewayRouteSpecHttpRoute(this.httpRoute);

  final AppmeshGatewayRouteHttpRoute httpRoute;

  @internal
  @override
  String get blockKey => 'http_route';

  @internal
  @override
  Map<String, Object?> encode() => {'http_route': httpRoute.encode()};
}

/// Typed helper for the `spec.grpc_route` block of
/// `aws_appmesh_gateway_route` (derived from provider schema).
@immutable
final class AppmeshGatewayRouteGrpcRoute {
  const AppmeshGatewayRouteGrpcRoute({
    required this.action,
    required this.match,
  });

  final AppmeshGatewayRouteGrpcRouteAction action;

  final AppmeshGatewayRouteGrpcRouteMatch match;

  @internal
  Map<String, Object?> encode() => {
    'action': action.encode(),
    'match': match.encode(),
  };
}

/// Typed helper for the `spec.grpc_route.action` block of
/// `aws_appmesh_gateway_route` (derived from provider schema).
@immutable
final class AppmeshGatewayRouteGrpcRouteAction {
  const AppmeshGatewayRouteGrpcRouteAction({required this.target});

  final AppmeshGatewayRouteTarget target;

  @internal
  Map<String, Object?> encode() => {'target': target.encode()};
}

/// Typed helper for the `spec.grpc_route.action.target` block of
/// `aws_appmesh_gateway_route` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AppmeshGatewayRouteTarget {
  const AppmeshGatewayRouteTarget({this.port, required this.virtualService});

  final TfArg<num>? port;

  final AppmeshGatewayRouteVirtualService virtualService;

  @internal
  Map<String, Object?> encode() => {
    'port': ?port?.toTfJson(),
    'virtual_service': virtualService.encode(),
  };
}

/// Typed helper for the `spec.grpc_route.action.target.virtual_service` block of
/// `aws_appmesh_gateway_route` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AppmeshGatewayRouteVirtualService {
  const AppmeshGatewayRouteVirtualService({required this.virtualServiceName});

  final TfArg<String> virtualServiceName;

  @internal
  Map<String, Object?> encode() => {
    'virtual_service_name': virtualServiceName.toTfJson(),
  };
}

/// Typed helper for the `spec.grpc_route.match` block of
/// `aws_appmesh_gateway_route` (derived from provider schema).
@immutable
final class AppmeshGatewayRouteGrpcRouteMatch {
  const AppmeshGatewayRouteGrpcRouteMatch({
    this.port,
    required this.serviceName,
  });

  final TfArg<num>? port;

  final TfArg<String> serviceName;

  @internal
  Map<String, Object?> encode() => {
    'port': ?port?.toTfJson(),
    'service_name': serviceName.toTfJson(),
  };
}

/// Typed helper for the `spec.http2_route` block of
/// `aws_appmesh_gateway_route` (derived from provider schema).
@immutable
final class AppmeshGatewayRouteHttp2Route {
  const AppmeshGatewayRouteHttp2Route({
    required this.action,
    required this.match,
  });

  final AppmeshGatewayRouteHttp2RouteAction action;

  final AppmeshGatewayRouteHttp2RouteMatch match;

  @internal
  Map<String, Object?> encode() => {
    'action': action.encode(),
    'match': match.encode(),
  };
}

/// Typed helper for the `spec.http2_route.action` block of
/// `aws_appmesh_gateway_route` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AppmeshGatewayRouteHttp2RouteAction {
  const AppmeshGatewayRouteHttp2RouteAction({
    this.rewrite,
    required this.target,
  });

  final AppmeshGatewayRouteRewrite? rewrite;

  final AppmeshGatewayRouteTarget target;

  @internal
  Map<String, Object?> encode() => {
    'rewrite': ?rewrite?.encode(),
    'target': target.encode(),
  };
}

/// Typed helper for the `spec.http2_route.action.rewrite` block of
/// `aws_appmesh_gateway_route` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AppmeshGatewayRouteRewrite {
  const AppmeshGatewayRouteRewrite({this.hostname, this.path, this.prefix});

  final AppmeshGatewayRouteRewriteHostname? hostname;

  final AppmeshGatewayRouteRewritePath? path;

  final AppmeshGatewayRoutePrefix? prefix;

  @internal
  Map<String, Object?> encode() => {
    'hostname': ?hostname?.encode(),
    'path': ?path?.encode(),
    'prefix': ?prefix?.encode(),
  };
}

/// Typed helper for the `spec.http2_route.action.rewrite.hostname` block of
/// `aws_appmesh_gateway_route` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AppmeshGatewayRouteRewriteHostname {
  const AppmeshGatewayRouteRewriteHostname({
    required this.defaultTargetHostname,
  });

  final TfArg<String> defaultTargetHostname;

  @internal
  Map<String, Object?> encode() => {
    'default_target_hostname': defaultTargetHostname.toTfJson(),
  };
}

/// Typed helper for the `spec.http2_route.action.rewrite.path` block of
/// `aws_appmesh_gateway_route` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AppmeshGatewayRouteRewritePath {
  const AppmeshGatewayRouteRewritePath({required this.exact});

  final TfArg<String> exact;

  @internal
  Map<String, Object?> encode() => {'exact': exact.toTfJson()};
}

/// Typed helper for the `spec.http2_route.action.rewrite.prefix` block of
/// `aws_appmesh_gateway_route` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AppmeshGatewayRoutePrefix {
  const AppmeshGatewayRoutePrefix({this.defaultPrefix, this.value});

  final TfArg<String>? defaultPrefix;

  final TfArg<String>? value;

  @internal
  Map<String, Object?> encode() => {
    'default_prefix': ?defaultPrefix?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `spec.http2_route.match` block of
/// `aws_appmesh_gateway_route` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AppmeshGatewayRouteHttp2RouteMatch {
  const AppmeshGatewayRouteHttp2RouteMatch({
    this.port,
    this.prefix,
    this.header,
    this.hostname,
    this.path,
    this.queryParameter,
  });

  final TfArg<num>? port;

  final TfArg<String>? prefix;

  final List<AppmeshGatewayRouteHeader>? header;

  final AppmeshGatewayRouteHostname? hostname;

  final AppmeshGatewayRoutePath? path;

  final List<AppmeshGatewayRouteQueryParameter>? queryParameter;

  @internal
  Map<String, Object?> encode() => {
    'port': ?port?.toTfJson(),
    'prefix': ?prefix?.toTfJson(),
    if (header != null) 'header': [for (final e in header!) e.encode()],
    'hostname': ?hostname?.encode(),
    'path': ?path?.encode(),
    if (queryParameter != null)
      'query_parameter': [for (final e in queryParameter!) e.encode()],
  };
}

/// Typed helper for the `spec.http2_route.match.header` block of
/// `aws_appmesh_gateway_route` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AppmeshGatewayRouteHeader {
  const AppmeshGatewayRouteHeader({
    this.invert,
    required this.name,
    this.match,
  });

  final TfArg<bool>? invert;

  final TfArg<String> name;

  final AppmeshGatewayRouteHeaderMatch? match;

  @internal
  Map<String, Object?> encode() => {
    'invert': ?invert?.toTfJson(),
    'name': name.toTfJson(),
    'match': ?match?.encode(),
  };
}

/// Typed helper for the `spec.http2_route.match.header.match` block of
/// `aws_appmesh_gateway_route` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AppmeshGatewayRouteHeaderMatch {
  const AppmeshGatewayRouteHeaderMatch({
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

  final AppmeshGatewayRouteRange? range;

  @internal
  Map<String, Object?> encode() => {
    'exact': ?exact?.toTfJson(),
    'prefix': ?prefix?.toTfJson(),
    'regex': ?regex?.toTfJson(),
    'suffix': ?suffix?.toTfJson(),
    'range': ?range?.encode(),
  };
}

/// Typed helper for the `spec.http2_route.match.header.match.range` block of
/// `aws_appmesh_gateway_route` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AppmeshGatewayRouteRange {
  const AppmeshGatewayRouteRange({required this.end, required this.start});

  final TfArg<num> end;

  final TfArg<num> start;

  @internal
  Map<String, Object?> encode() => {
    'end': end.toTfJson(),
    'start': start.toTfJson(),
  };
}

/// Typed helper for the `spec.http2_route.match.hostname` block of
/// `aws_appmesh_gateway_route` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AppmeshGatewayRouteHostname {
  const AppmeshGatewayRouteHostname({this.exact, this.suffix});

  final TfArg<String>? exact;

  final TfArg<String>? suffix;

  @internal
  Map<String, Object?> encode() => {
    'exact': ?exact?.toTfJson(),
    'suffix': ?suffix?.toTfJson(),
  };
}

/// Typed helper for the `spec.http2_route.match.path` block of
/// `aws_appmesh_gateway_route` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AppmeshGatewayRoutePath {
  const AppmeshGatewayRoutePath({this.exact, this.regex});

  final TfArg<String>? exact;

  final TfArg<String>? regex;

  @internal
  Map<String, Object?> encode() => {
    'exact': ?exact?.toTfJson(),
    'regex': ?regex?.toTfJson(),
  };
}

/// Typed helper for the `spec.http2_route.match.query_parameter` block of
/// `aws_appmesh_gateway_route` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AppmeshGatewayRouteQueryParameter {
  const AppmeshGatewayRouteQueryParameter({required this.name, this.match});

  final TfArg<String> name;

  final AppmeshGatewayRouteQueryParameterMatch? match;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'match': ?match?.encode(),
  };
}

/// Typed helper for the `spec.http2_route.match.query_parameter.match` block of
/// `aws_appmesh_gateway_route` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AppmeshGatewayRouteQueryParameterMatch {
  const AppmeshGatewayRouteQueryParameterMatch({this.exact});

  final TfArg<String>? exact;

  @internal
  Map<String, Object?> encode() => {'exact': ?exact?.toTfJson()};
}

/// Typed helper for the `spec.http_route` block of
/// `aws_appmesh_gateway_route` (derived from provider schema).
@immutable
final class AppmeshGatewayRouteHttpRoute {
  const AppmeshGatewayRouteHttpRoute({
    required this.action,
    required this.match,
  });

  final AppmeshGatewayRouteHttp2RouteAction action;

  final AppmeshGatewayRouteHttp2RouteMatch match;

  @internal
  Map<String, Object?> encode() => {
    'action': action.encode(),
    'match': match.encode(),
  };
}

/// Factory wrapper for `aws_appmesh_gateway_route`.
final class AwsAppmeshGatewayRoute extends Resource {
  static const String tfType = 'aws_appmesh_gateway_route';

  AwsAppmeshGatewayRoute(
    super.localName, {
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
           'mesh_owner': ?meshOwner,
           'name': name,
           'region': ?region,
           'tags': ?tags,
           'virtual_gateway_name': virtualGatewayName,
           'spec': TfArg.literal(spec.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppmeshGatewayRouteSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAppmeshGatewayRoute>`.
  RefTo<AwsAppmeshGatewayRoute> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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
  TfRef<String> get meshName => TfRef.attribute<String>(this, 'mesh_name');

  /// Reference to `mesh_owner` attribute.
  TfRef<String> get meshOwner => TfRef.attribute<String>(this, 'mesh_owner');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `virtual_gateway_name` attribute.
  TfRef<String> get virtualGatewayName =>
      TfRef.attribute<String>(this, 'virtual_gateway_name');
}
