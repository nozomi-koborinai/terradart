// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_region_health_check`.
const Set<String> _googleComputeRegionHealthCheckSensitive = <String>{};

// ===========================================================================
// Top-level enums (regional sibling — symbol-prefixed to avoid colliding
// with the global `google_compute_health_check` wrapper, which lives in
// the same `compute/` library and exports its own `HealthCheckType` /
// `HealthCheckProxyHeader` / `HealthCheckPortSpecification`. The string
// values are identical because both resources hit the same underlying
// GCP API enums.)
// ===========================================================================

/// Health-check protocol on a regional health check. Computed on the
/// resource (the GCP API derives it from which per-protocol config
/// block was set), so callers don't set this directly — they pick the
/// matching `*HealthCheck` block. Listed here for use in `==`
/// comparisons against the derived `type` getter.
extension type const RegionHealthCheckType._(TfArg<String> _)
    implements TfArg<String> {
  RegionHealthCheckType.variable(String name) : this._(TfArg.variable(name));
  RegionHealthCheckType.expression(String template)
    : this._(TfArg.expression(template));
  const RegionHealthCheckType.arg(TfArg<String> arg) : this._(arg);

  static const http = RegionHealthCheckType._(TfArgLiteral('HTTP'));
  static const https = RegionHealthCheckType._(TfArgLiteral('HTTPS'));
  static const tcp = RegionHealthCheckType._(TfArgLiteral('TCP'));
  static const ssl = RegionHealthCheckType._(TfArgLiteral('SSL'));
  static const http2 = RegionHealthCheckType._(TfArgLiteral('HTTP2'));
  static const grpc = RegionHealthCheckType._(TfArgLiteral('GRPC'));
  static const grpcWithTls = RegionHealthCheckType._(
    TfArgLiteral('GRPC_WITH_TLS'),
  );

  static const List<RegionHealthCheckType> values = [
    http,
    https,
    tcp,
    ssl,
    http2,
    grpc,
    grpcWithTls,
  ];
}

/// `proxy_header` value used inside the per-protocol HTTP-shaped blocks
/// (HTTP, HTTPS, HTTP2, TCP, SSL). Defaults to [none] on the GCP API.
extension type const RegionHealthCheckProxyHeader._(TfArg<String> _)
    implements TfArg<String> {
  RegionHealthCheckProxyHeader.variable(String name)
    : this._(TfArg.variable(name));
  RegionHealthCheckProxyHeader.expression(String template)
    : this._(TfArg.expression(template));
  const RegionHealthCheckProxyHeader.arg(TfArg<String> arg) : this._(arg);

  static const none = RegionHealthCheckProxyHeader._(TfArgLiteral('NONE'));
  static const proxyV1 = RegionHealthCheckProxyHeader._(
    TfArgLiteral('PROXY_V1'),
  );

  static const List<RegionHealthCheckProxyHeader> values = [none, proxyV1];
}

/// `port_specification` value shared by every per-protocol config block.
///
/// - [useFixedPort]: use the literal `port` number.
/// - [useNamedPort]: resolve `port_name` against the InstanceGroup's
///   named-port map.
/// - [useServingPort]: for Network Endpoint Groups, use each endpoint's
///   declared port; for other backends, use the Backend Service's
///   `port` / `port_name`.
extension type const RegionHealthCheckPortSpecification._(TfArg<String> _)
    implements TfArg<String> {
  RegionHealthCheckPortSpecification.variable(String name)
    : this._(TfArg.variable(name));
  RegionHealthCheckPortSpecification.expression(String template)
    : this._(TfArg.expression(template));
  const RegionHealthCheckPortSpecification.arg(TfArg<String> arg) : this._(arg);

  static const useFixedPort = RegionHealthCheckPortSpecification._(
    TfArgLiteral('USE_FIXED_PORT'),
  );
  static const useNamedPort = RegionHealthCheckPortSpecification._(
    TfArgLiteral('USE_NAMED_PORT'),
  );
  static const useServingPort = RegionHealthCheckPortSpecification._(
    TfArgLiteral('USE_SERVING_PORT'),
  );

  static const List<RegionHealthCheckPortSpecification> values = [
    useFixedPort,
    useNamedPort,
    useServingPort,
  ];
}

// ===========================================================================
// ComputeRegionHealthCheckProtocol — sealed (http | https | http2 | tcp | ssl | grpc | grpcTls)
// ===========================================================================

sealed class ComputeRegionHealthCheckProtocol {
  const ComputeRegionHealthCheckProtocol();

  /// `http_health_check` block.
  const factory ComputeRegionHealthCheckProtocol.http({
    TfArg<String>? host,
    TfArg<String>? requestPath,
    TfArg<String>? response,
    TfArg<int>? port,
    TfArg<String>? portName,
    RegionHealthCheckProxyHeader? proxyHeader,
    RegionHealthCheckPortSpecification? portSpecification,
  }) = ComputeRegionHealthCheckHttpHealthCheckConfig;

  /// `https_health_check` block.
  const factory ComputeRegionHealthCheckProtocol.https({
    TfArg<String>? host,
    TfArg<String>? requestPath,
    TfArg<String>? response,
    TfArg<int>? port,
    TfArg<String>? portName,
    RegionHealthCheckProxyHeader? proxyHeader,
    RegionHealthCheckPortSpecification? portSpecification,
  }) = ComputeRegionHealthCheckHttpsHealthCheckConfig;

  /// `http2_health_check` block.
  const factory ComputeRegionHealthCheckProtocol.http2({
    TfArg<String>? host,
    TfArg<String>? requestPath,
    TfArg<String>? response,
    TfArg<int>? port,
    TfArg<String>? portName,
    RegionHealthCheckProxyHeader? proxyHeader,
    RegionHealthCheckPortSpecification? portSpecification,
  }) = ComputeRegionHealthCheckHttp2HealthCheckConfig;

  /// `tcp_health_check` block.
  const factory ComputeRegionHealthCheckProtocol.tcp({
    TfArg<String>? request,
    TfArg<String>? response,
    TfArg<int>? port,
    TfArg<String>? portName,
    RegionHealthCheckProxyHeader? proxyHeader,
    RegionHealthCheckPortSpecification? portSpecification,
  }) = ComputeRegionHealthCheckTcpHealthCheckConfig;

  /// `ssl_health_check` block.
  const factory ComputeRegionHealthCheckProtocol.ssl({
    TfArg<String>? request,
    TfArg<String>? response,
    TfArg<int>? port,
    TfArg<String>? portName,
    RegionHealthCheckProxyHeader? proxyHeader,
    RegionHealthCheckPortSpecification? portSpecification,
  }) = ComputeRegionHealthCheckSslHealthCheckConfig;

  /// `grpc_health_check` block.
  const factory ComputeRegionHealthCheckProtocol.grpc({
    TfArg<int>? port,
    TfArg<String>? portName,
    RegionHealthCheckPortSpecification? portSpecification,
    TfArg<String>? grpcServiceName,
  }) = ComputeRegionHealthCheckGrpcHealthCheckConfig;

  /// `grpc_tls_health_check` block.
  const factory ComputeRegionHealthCheckProtocol.grpcTls({
    TfArg<int>? port,
    RegionHealthCheckPortSpecification? portSpecification,
    TfArg<String>? grpcServiceName,
  }) = ComputeRegionHealthCheckGrpcTlsHealthCheckConfig;

  @internal
  String get blockKey;

  @internal
  List<Map<String, Object?>> encode();
}

// ===========================================================================
// Per-protocol config blocks (each is max_items=1 in the TF schema).
// Prefixed with `RegionHealthCheck` to avoid colliding with the global
// sibling's `HttpHealthCheckConfig` / etc.
// ===========================================================================

/// `http_health_check` block. Set this (and only this) to make the
/// resource an HTTP health check.
@immutable
final class ComputeRegionHealthCheckHttpHealthCheckConfig
    extends ComputeRegionHealthCheckProtocol {
  const ComputeRegionHealthCheckHttpHealthCheckConfig({
    this.host,
    this.requestPath,
    this.response,
    this.port,
    this.portName,
    this.proxyHeader,
    this.portSpecification,
  });

  /// Value of the `Host` header on the probe request. Defaults to the
  /// public IP being probed when left empty.
  final TfArg<String>? host;

  /// Request path. Defaults to `/`.
  final TfArg<String>? requestPath;

  /// Bytes to match against the start of the response body. Empty
  /// means "any response counts as healthy". ASCII only.
  final TfArg<String>? response;

  /// TCP port. Defaults to 80.
  final TfArg<int>? port;

  /// Named port (resolved via the InstanceGroup's named-port map).
  final TfArg<String>? portName;

  /// Proxy header to prepend on the probe.
  final RegionHealthCheckProxyHeader? proxyHeader;

  /// How the probe port is resolved (`port` vs `portName` vs the
  /// serving port).
  final RegionHealthCheckPortSpecification? portSpecification;

  Map<String, Object?> toArgMap() => {
    if (host != null) 'host': host!.toTfJson(),
    if (requestPath != null) 'request_path': requestPath!.toTfJson(),
    if (response != null) 'response': response!.toTfJson(),
    if (port != null) 'port': port!.toTfJson(),
    if (portName != null) 'port_name': portName!.toTfJson(),
    if (proxyHeader != null) 'proxy_header': proxyHeader!.toTfJson(),
    if (portSpecification != null)
      'port_specification': portSpecification!.toTfJson(),
  };

  @override
  @internal
  String get blockKey => 'http_health_check';

  @override
  @internal
  List<Map<String, Object?>> encode() => [toArgMap()];
}

/// `https_health_check` block.
@immutable
final class ComputeRegionHealthCheckHttpsHealthCheckConfig
    extends ComputeRegionHealthCheckProtocol {
  const ComputeRegionHealthCheckHttpsHealthCheckConfig({
    this.host,
    this.requestPath,
    this.response,
    this.port,
    this.portName,
    this.proxyHeader,
    this.portSpecification,
  });

  final TfArg<String>? host;
  final TfArg<String>? requestPath;
  final TfArg<String>? response;

  /// TCP port. Defaults to 443.
  final TfArg<int>? port;
  final TfArg<String>? portName;
  final RegionHealthCheckProxyHeader? proxyHeader;
  final RegionHealthCheckPortSpecification? portSpecification;

  Map<String, Object?> toArgMap() => {
    if (host != null) 'host': host!.toTfJson(),
    if (requestPath != null) 'request_path': requestPath!.toTfJson(),
    if (response != null) 'response': response!.toTfJson(),
    if (port != null) 'port': port!.toTfJson(),
    if (portName != null) 'port_name': portName!.toTfJson(),
    if (proxyHeader != null) 'proxy_header': proxyHeader!.toTfJson(),
    if (portSpecification != null)
      'port_specification': portSpecification!.toTfJson(),
  };

  @override
  @internal
  String get blockKey => 'https_health_check';

  @override
  @internal
  List<Map<String, Object?>> encode() => [toArgMap()];
}

/// `http2_health_check` block.
@immutable
final class ComputeRegionHealthCheckHttp2HealthCheckConfig
    extends ComputeRegionHealthCheckProtocol {
  const ComputeRegionHealthCheckHttp2HealthCheckConfig({
    this.host,
    this.requestPath,
    this.response,
    this.port,
    this.portName,
    this.proxyHeader,
    this.portSpecification,
  });

  final TfArg<String>? host;
  final TfArg<String>? requestPath;
  final TfArg<String>? response;

  /// TCP port. Defaults to 443.
  final TfArg<int>? port;
  final TfArg<String>? portName;
  final RegionHealthCheckProxyHeader? proxyHeader;
  final RegionHealthCheckPortSpecification? portSpecification;

  Map<String, Object?> toArgMap() => {
    if (host != null) 'host': host!.toTfJson(),
    if (requestPath != null) 'request_path': requestPath!.toTfJson(),
    if (response != null) 'response': response!.toTfJson(),
    if (port != null) 'port': port!.toTfJson(),
    if (portName != null) 'port_name': portName!.toTfJson(),
    if (proxyHeader != null) 'proxy_header': proxyHeader!.toTfJson(),
    if (portSpecification != null)
      'port_specification': portSpecification!.toTfJson(),
  };

  @override
  @internal
  String get blockKey => 'http2_health_check';

  @override
  @internal
  List<Map<String, Object?>> encode() => [toArgMap()];
}

/// `tcp_health_check` block. Pure TCP connect-or-payload probe.
@immutable
final class ComputeRegionHealthCheckTcpHealthCheckConfig
    extends ComputeRegionHealthCheckProtocol {
  const ComputeRegionHealthCheckTcpHealthCheckConfig({
    this.request,
    this.response,
    this.port,
    this.portName,
    this.proxyHeader,
    this.portSpecification,
  });

  /// Bytes to send once the TCP connection is established. Empty means
  /// "connect-only is enough to be healthy". ASCII only.
  final TfArg<String>? request;

  /// Bytes to match against the start of the response. Empty matches
  /// any response.
  final TfArg<String>? response;

  /// TCP port. Defaults to 80 on the regional resource.
  final TfArg<int>? port;
  final TfArg<String>? portName;
  final RegionHealthCheckProxyHeader? proxyHeader;
  final RegionHealthCheckPortSpecification? portSpecification;

  Map<String, Object?> toArgMap() => {
    if (request != null) 'request': request!.toTfJson(),
    if (response != null) 'response': response!.toTfJson(),
    if (port != null) 'port': port!.toTfJson(),
    if (portName != null) 'port_name': portName!.toTfJson(),
    if (proxyHeader != null) 'proxy_header': proxyHeader!.toTfJson(),
    if (portSpecification != null)
      'port_specification': portSpecification!.toTfJson(),
  };

  @override
  @internal
  String get blockKey => 'tcp_health_check';

  @override
  @internal
  List<Map<String, Object?>> encode() => [toArgMap()];
}

/// `ssl_health_check` block. Pure SSL/TLS probe.
@immutable
final class ComputeRegionHealthCheckSslHealthCheckConfig
    extends ComputeRegionHealthCheckProtocol {
  const ComputeRegionHealthCheckSslHealthCheckConfig({
    this.request,
    this.response,
    this.port,
    this.portName,
    this.proxyHeader,
    this.portSpecification,
  });

  final TfArg<String>? request;
  final TfArg<String>? response;

  /// TCP port. Defaults to 443.
  final TfArg<int>? port;
  final TfArg<String>? portName;
  final RegionHealthCheckProxyHeader? proxyHeader;
  final RegionHealthCheckPortSpecification? portSpecification;

  Map<String, Object?> toArgMap() => {
    if (request != null) 'request': request!.toTfJson(),
    if (response != null) 'response': response!.toTfJson(),
    if (port != null) 'port': port!.toTfJson(),
    if (portName != null) 'port_name': portName!.toTfJson(),
    if (proxyHeader != null) 'proxy_header': proxyHeader!.toTfJson(),
    if (portSpecification != null)
      'port_specification': portSpecification!.toTfJson(),
  };

  @override
  @internal
  String get blockKey => 'ssl_health_check';

  @override
  @internal
  List<Map<String, Object?>> encode() => [toArgMap()];
}

/// `grpc_health_check` block. Probes via the gRPC Health Checking
/// Protocol (`grpc.health.v1.Health/Check`).
@immutable
final class ComputeRegionHealthCheckGrpcHealthCheckConfig
    extends ComputeRegionHealthCheckProtocol {
  const ComputeRegionHealthCheckGrpcHealthCheckConfig({
    this.port,
    this.portName,
    this.portSpecification,
    this.grpcServiceName,
  });

  /// Port number. Must be set if `port_specification` is
  /// [RegionHealthCheckPortSpecification.useFixedPort] and `portName`
  /// is unset. Valid 1-65535.
  final TfArg<int>? port;
  final TfArg<String>? portName;
  final RegionHealthCheckPortSpecification? portSpecification;

  /// gRPC service name passed in the `service` field of the Check RPC.
  /// Empty means "report aggregate server health"; a non-empty name
  /// scopes the check to a specific registered service. ASCII only.
  final TfArg<String>? grpcServiceName;

  Map<String, Object?> toArgMap() => {
    if (port != null) 'port': port!.toTfJson(),
    if (portName != null) 'port_name': portName!.toTfJson(),
    if (portSpecification != null)
      'port_specification': portSpecification!.toTfJson(),
    if (grpcServiceName != null)
      'grpc_service_name': grpcServiceName!.toTfJson(),
  };

  @override
  @internal
  String get blockKey => 'grpc_health_check';

  @override
  @internal
  List<Map<String, Object?>> encode() => [toArgMap()];
}

/// `grpc_tls_health_check` block. Probes via the gRPC Health Checking
/// Protocol over TLS.
@immutable
final class ComputeRegionHealthCheckGrpcTlsHealthCheckConfig
    extends ComputeRegionHealthCheckProtocol {
  const ComputeRegionHealthCheckGrpcTlsHealthCheckConfig({
    this.port,
    this.portSpecification,
    this.grpcServiceName,
  });

  /// Port number. Must be set if `port_specification` is
  /// [RegionHealthCheckPortSpecification.useFixedPort]. Valid 1-65535.
  final TfArg<int>? port;
  final RegionHealthCheckPortSpecification? portSpecification;

  /// gRPC service name passed in the `service` field of the Check RPC.
  /// Empty means "report aggregate server health". ASCII only.
  final TfArg<String>? grpcServiceName;

  Map<String, Object?> toArgMap() => {
    if (port != null) 'port': port!.toTfJson(),
    if (portSpecification != null)
      'port_specification': portSpecification!.toTfJson(),
    if (grpcServiceName != null)
      'grpc_service_name': grpcServiceName!.toTfJson(),
  };

  @override
  @internal
  String get blockKey => 'grpc_tls_health_check';

  @override
  @internal
  List<Map<String, Object?>> encode() => [toArgMap()];
}

// ===========================================================================
// log_config (max_items=1)
// ===========================================================================

/// `log_config` block. Toggles Cloud Logging export of probe results.
@immutable
class ComputeRegionHealthCheckLogConfig {
  const ComputeRegionHealthCheckLogConfig({this.enable});

  /// `true` exports each probe result to Cloud Logging. Defaults to
  /// `false` (no logs).
  final TfArg<bool>? enable;

  Map<String, Object?> toArgMap() => {
    if (enable != null) 'enable': enable!.toTfJson(),
  };
}

/// Factory wrapper for `google_compute_region_health_check`.
///
/// Health Checks determine whether instances are responsive and able to do
/// work. They are an important part of a comprehensive load balancing
/// configuration, as they enable monitoring instances behind load balancers.
///
/// Health Checks poll instances at a specified interval. Instances that do not
/// respond successfully to some number of probes in a row are marked as
/// unhealthy. No new connections are sent to unhealthy instances, though
/// existing connections will continue. The health check will continue to poll
/// unhealthy instances. If an instance later responds successfully to some
/// number of consecutive probes, it is marked healthy again and can receive new
/// connections.
///
/// A **regional** health check polls instances behind a regional load
/// balancer at a configurable interval. Required by regional internal
/// (`INTERNAL`) and internal-managed (`INTERNAL_MANAGED`) load
/// balancers; regional external schemes also accept it. For global
/// load balancers use the regionless `google_compute_health_check`
/// (curated separately).
///
/// **Protocol invariant**: [protocol] takes exactly one
/// [ComputeRegionHealthCheckProtocol] variant (HTTP, HTTPS, HTTP2, TCP,
/// SSL, gRPC, or gRPC over TLS), and the choice determines the value
/// the GCP API will compute for `type` (which is read-only on this
/// resource — accessible via the derived `type` getter).
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_compute_region_health_check.`).
/// - `name`: GCP health-check resource name (1-63 chars, lowercase
///   RFC1035). Forces replacement when changed.
/// - [region]: GCP region the health check lives in (e.g.
///   `'us-central1'`). Required in practice — without it the provider
///   falls back to the provider-level default region, which is rarely
///   what callers want and makes the resource non-portable across
///   environments. Pass `TfArg.literal('asia-northeast1')` or
///   `...` against a tfvar.
///
/// Example (HTTPS regional health check):
/// ```dart
/// final apiHc = GoogleComputeRegionHealthCheck(
///   'api_hc',
///   name: TfArg.literal('api-region-hc'),
///   region: TfArg.literal('asia-northeast1'),
///   checkIntervalSec: TfArg.literal(10),
///   timeoutSec: TfArg.literal(5),
///   healthyThreshold: TfArg.literal(2),
///   unhealthyThreshold: TfArg.literal(3),
///   protocol: .https(
///     port: .literal(443),
///     requestPath: .literal('/healthz'),
///     portSpecification: .useFixedPort,
///   ),
///   logConfig: ComputeRegionHealthCheckLogConfig(enable: .literal(true)),
/// );
/// ```
///
/// Cross-resource references:
/// - Attach via `google_compute_region_backend_service.health_checks`
///   (list of self-links; that resource is curated separately).
///
/// Composition pattern: extends `Resource`
/// for runtime behavior.
final class GoogleComputeRegionHealthCheck extends Resource {
  static const String tfType = 'google_compute_region_health_check';

  GoogleComputeRegionHealthCheck(
    super.localName, {
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<String>? description,
    TfArg<num>? checkIntervalSec,
    TfArg<num>? timeoutSec,
    TfArg<num>? healthyThreshold,
    TfArg<num>? unhealthyThreshold,
    required ComputeRegionHealthCheckProtocol protocol,
    ComputeRegionHealthCheckLogConfig? logConfig,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'region': ?region,
           'description': ?description,
           'check_interval_sec': ?checkIntervalSec,
           'timeout_sec': ?timeoutSec,
           'healthy_threshold': ?healthyThreshold,
           'unhealthy_threshold': ?unhealthyThreshold,
           if (logConfig != null)
             'log_config': TfArg.literal([logConfig.toArgMap()]),
           'project': ?project,
           protocol.blockKey: TfArg.literal(protocol.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeRegionHealthCheckSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeRegionHealthCheck>`.
  RefTo<GoogleComputeRegionHealthCheck> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `check_interval_sec` attribute.
  TfRef<num> get checkIntervalSec =>
      TfRef.attribute<num>(this, 'check_interval_sec');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `healthy_threshold` attribute.
  TfRef<num> get healthyThreshold =>
      TfRef.attribute<num>(this, 'healthy_threshold');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `timeout_sec` attribute.
  TfRef<num> get timeoutSec => TfRef.attribute<num>(this, 'timeout_sec');

  /// Reference to `unhealthy_threshold` attribute.
  TfRef<num> get unhealthyThreshold =>
      TfRef.attribute<num>(this, 'unhealthy_threshold');

  /// Reference to the computed server-assigned numeric `health_check_id`.
  /// Kept at `TfRef<int>` — schema type is `number` (derived would widen
  /// to `TfRef<num>`).
  TfRef<int> get healthCheckId => TfRef.attribute<int>(this, 'health_check_id');
}
