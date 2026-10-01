// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_health_check`.
const Set<String> _googleComputeHealthCheckSensitive = <String>{};

// ===========================================================================
// Top-level enums shared across global + regional health checks
// ===========================================================================

/// Health-check protocol. Computed on the resource (the GCP API derives
/// it from which per-protocol config block was set), so callers don't
/// set this directly — they pick the matching `*HealthCheck` block.
/// Listed here for use in `==` comparisons against the derived `type`
/// getter.
extension type const HealthCheckType._(TfArg<String> _)
    implements TfArg<String> {
  HealthCheckType.variable(String name) : this._(TfArg.variable(name));
  HealthCheckType.expression(String template)
    : this._(TfArg.expression(template));
  const HealthCheckType.arg(TfArg<String> arg) : this._(arg);

  static const http = HealthCheckType._(TfArgLiteral('HTTP'));
  static const https = HealthCheckType._(TfArgLiteral('HTTPS'));
  static const tcp = HealthCheckType._(TfArgLiteral('TCP'));
  static const ssl = HealthCheckType._(TfArgLiteral('SSL'));
  static const http2 = HealthCheckType._(TfArgLiteral('HTTP2'));
  static const grpc = HealthCheckType._(TfArgLiteral('GRPC'));
  static const grpcWithTls = HealthCheckType._(TfArgLiteral('GRPC_WITH_TLS'));

  static const List<HealthCheckType> values = [
    http,
    https,
    tcp,
    ssl,
    http2,
    grpc,
    grpcWithTls,
  ];
}

/// `proxy_header` value used inside every per-protocol HTTP-shaped block
/// (HTTP, HTTPS, HTTP2, TCP, SSL). Defaults to [none] on the GCP API.
extension type const HealthCheckProxyHeader._(TfArg<String> _)
    implements TfArg<String> {
  HealthCheckProxyHeader.variable(String name) : this._(TfArg.variable(name));
  HealthCheckProxyHeader.expression(String template)
    : this._(TfArg.expression(template));
  const HealthCheckProxyHeader.arg(TfArg<String> arg) : this._(arg);

  static const none = HealthCheckProxyHeader._(TfArgLiteral('NONE'));
  static const proxyV1 = HealthCheckProxyHeader._(TfArgLiteral('PROXY_V1'));

  static const List<HealthCheckProxyHeader> values = [none, proxyV1];
}

/// `port_specification` value shared by every per-protocol config block.
///
/// - [useFixedPort]: use the literal `port` number.
/// - [useNamedPort]: resolve `port_name` against the InstanceGroup's
///   named-port map.
/// - [useServingPort]: for Network Endpoint Groups, use each endpoint's
///   declared port; for other backends, use the Backend Service's
///   `port` / `port_name`.
extension type const HealthCheckPortSpecification._(TfArg<String> _)
    implements TfArg<String> {
  HealthCheckPortSpecification.variable(String name)
    : this._(TfArg.variable(name));
  HealthCheckPortSpecification.expression(String template)
    : this._(TfArg.expression(template));
  const HealthCheckPortSpecification.arg(TfArg<String> arg) : this._(arg);

  static const useFixedPort = HealthCheckPortSpecification._(
    TfArgLiteral('USE_FIXED_PORT'),
  );
  static const useNamedPort = HealthCheckPortSpecification._(
    TfArgLiteral('USE_NAMED_PORT'),
  );
  static const useServingPort = HealthCheckPortSpecification._(
    TfArgLiteral('USE_SERVING_PORT'),
  );

  static const List<HealthCheckPortSpecification> values = [
    useFixedPort,
    useNamedPort,
    useServingPort,
  ];
}

// ===========================================================================
// ComputeHealthCheckProtocol — sealed (http | https | http2 | tcp | ssl | grpc | grpcTls)
// ===========================================================================

/// Mutually exclusive per-protocol config block. Each concrete `*Config`
/// type below is a sealed variant with its own [blockKey].
sealed class ComputeHealthCheckProtocol {
  const ComputeHealthCheckProtocol();

  /// `http_health_check` block.
  const factory ComputeHealthCheckProtocol.http({
    TfArg<String>? host,
    TfArg<String>? requestPath,
    TfArg<String>? response,
    TfArg<int>? port,
    TfArg<String>? portName,
    HealthCheckProxyHeader? proxyHeader,
    HealthCheckPortSpecification? portSpecification,
  }) = ComputeHealthCheckHttpHealthCheckConfig;

  /// `https_health_check` block.
  const factory ComputeHealthCheckProtocol.https({
    TfArg<String>? host,
    TfArg<String>? requestPath,
    TfArg<String>? response,
    TfArg<int>? port,
    TfArg<String>? portName,
    HealthCheckProxyHeader? proxyHeader,
    HealthCheckPortSpecification? portSpecification,
  }) = ComputeHealthCheckHttpsHealthCheckConfig;

  /// `http2_health_check` block.
  const factory ComputeHealthCheckProtocol.http2({
    TfArg<String>? host,
    TfArg<String>? requestPath,
    TfArg<String>? response,
    TfArg<int>? port,
    TfArg<String>? portName,
    HealthCheckProxyHeader? proxyHeader,
    HealthCheckPortSpecification? portSpecification,
  }) = ComputeHealthCheckHttp2HealthCheckConfig;

  /// `tcp_health_check` block.
  const factory ComputeHealthCheckProtocol.tcp({
    TfArg<String>? request,
    TfArg<String>? response,
    TfArg<int>? port,
    TfArg<String>? portName,
    HealthCheckProxyHeader? proxyHeader,
    HealthCheckPortSpecification? portSpecification,
  }) = ComputeHealthCheckTcpHealthCheckConfig;

  /// `ssl_health_check` block.
  const factory ComputeHealthCheckProtocol.ssl({
    TfArg<String>? request,
    TfArg<String>? response,
    TfArg<int>? port,
    TfArg<String>? portName,
    HealthCheckProxyHeader? proxyHeader,
    HealthCheckPortSpecification? portSpecification,
  }) = ComputeHealthCheckSslHealthCheckConfig;

  /// `grpc_health_check` block.
  const factory ComputeHealthCheckProtocol.grpc({
    TfArg<int>? port,
    TfArg<String>? portName,
    HealthCheckPortSpecification? portSpecification,
    TfArg<String>? grpcServiceName,
  }) = ComputeHealthCheckGrpcHealthCheckConfig;

  /// `grpc_tls_health_check` block.
  const factory ComputeHealthCheckProtocol.grpcTls({
    TfArg<int>? port,
    HealthCheckPortSpecification? portSpecification,
    TfArg<String>? grpcServiceName,
  }) = ComputeHealthCheckGrpcTlsHealthCheckConfig;

  /// Terraform nested-block key (e.g. `https_health_check`).
  String get blockKey;

  List<Map<String, Object?>> encode();
}

// ===========================================================================
// Per-protocol config blocks (each is max_items=1 in the TF schema).

/// `http_health_check` block. Set this (and only this) to make the
/// resource an HTTP health check.
@immutable
final class ComputeHealthCheckHttpHealthCheckConfig
    extends ComputeHealthCheckProtocol {
  const ComputeHealthCheckHttpHealthCheckConfig({
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
  final HealthCheckProxyHeader? proxyHeader;

  /// How the probe port is resolved (`port` vs `portName` vs the
  /// serving port).
  final HealthCheckPortSpecification? portSpecification;

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
  String get blockKey => 'http_health_check';

  @override
  List<Map<String, Object?>> encode() => [toArgMap()];
}

/// `https_health_check` block.
@immutable
final class ComputeHealthCheckHttpsHealthCheckConfig
    extends ComputeHealthCheckProtocol {
  const ComputeHealthCheckHttpsHealthCheckConfig({
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
  final HealthCheckProxyHeader? proxyHeader;
  final HealthCheckPortSpecification? portSpecification;

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
  String get blockKey => 'https_health_check';

  @override
  List<Map<String, Object?>> encode() => [toArgMap()];
}

/// `http2_health_check` block.
@immutable
final class ComputeHealthCheckHttp2HealthCheckConfig
    extends ComputeHealthCheckProtocol {
  const ComputeHealthCheckHttp2HealthCheckConfig({
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
  final HealthCheckProxyHeader? proxyHeader;
  final HealthCheckPortSpecification? portSpecification;

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
  String get blockKey => 'http2_health_check';

  @override
  List<Map<String, Object?>> encode() => [toArgMap()];
}

/// `tcp_health_check` block. Pure TCP connect-or-payload probe.
@immutable
final class ComputeHealthCheckTcpHealthCheckConfig
    extends ComputeHealthCheckProtocol {
  const ComputeHealthCheckTcpHealthCheckConfig({
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

  /// TCP port. Defaults to 443.
  final TfArg<int>? port;
  final TfArg<String>? portName;
  final HealthCheckProxyHeader? proxyHeader;
  final HealthCheckPortSpecification? portSpecification;

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
  String get blockKey => 'tcp_health_check';

  @override
  List<Map<String, Object?>> encode() => [toArgMap()];
}

/// `ssl_health_check` block. Pure SSL/TLS probe.
@immutable
final class ComputeHealthCheckSslHealthCheckConfig
    extends ComputeHealthCheckProtocol {
  const ComputeHealthCheckSslHealthCheckConfig({
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
  final HealthCheckProxyHeader? proxyHeader;
  final HealthCheckPortSpecification? portSpecification;

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
  String get blockKey => 'ssl_health_check';

  @override
  List<Map<String, Object?>> encode() => [toArgMap()];
}

/// `grpc_health_check` block. Probes via the gRPC Health Checking
/// Protocol (`grpc.health.v1.Health/Check`).
@immutable
final class ComputeHealthCheckGrpcHealthCheckConfig
    extends ComputeHealthCheckProtocol {
  const ComputeHealthCheckGrpcHealthCheckConfig({
    this.port,
    this.portName,
    this.portSpecification,
    this.grpcServiceName,
  });

  /// Port number. Must be set if `port_specification` is
  /// [HealthCheckPortSpecification.useFixedPort] and `portName` is
  /// unset. Valid 1-65535.
  final TfArg<int>? port;
  final TfArg<String>? portName;
  final HealthCheckPortSpecification? portSpecification;

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
  String get blockKey => 'grpc_health_check';

  @override
  List<Map<String, Object?>> encode() => [toArgMap()];
}

/// `grpc_tls_health_check` block. Probes via the gRPC Health Checking
/// Protocol over TLS.
@immutable
final class ComputeHealthCheckGrpcTlsHealthCheckConfig
    extends ComputeHealthCheckProtocol {
  const ComputeHealthCheckGrpcTlsHealthCheckConfig({
    this.port,
    this.portSpecification,
    this.grpcServiceName,
  });

  /// Port number. Must be set if `port_specification` is
  /// [HealthCheckPortSpecification.useFixedPort]. Valid 1-65535.
  final TfArg<int>? port;
  final HealthCheckPortSpecification? portSpecification;

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
  String get blockKey => 'grpc_tls_health_check';

  @override
  List<Map<String, Object?>> encode() => [toArgMap()];
}

// ===========================================================================
// log_config (max_items=1)
// ===========================================================================

/// `log_config` block. Toggles Cloud Logging export of probe results.
@immutable
class ComputeHealthCheckLogConfig {
  const ComputeHealthCheckLogConfig({this.enable});

  /// `true` exports each probe result to Cloud Logging. Defaults to
  /// `false` (no logs).
  final TfArg<bool>? enable;

  Map<String, Object?> toArgMap() => {
    if (enable != null) 'enable': enable!.toTfJson(),
  };
}

/// Factory wrapper for `google_compute_health_check`.
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
/// ~>**NOTE**: Legacy HTTP(S) health checks must be used for target pool-based
/// network load balancers. See the [official
/// guide](https://cloud.google.com/load-balancing/docs/health-check-concepts#selecting_hc)
/// for choosing a type of health check.
///
/// A **global** health check polls instances behind a load balancer at a
/// configurable interval. Once attached to a backend service (see
/// [GoogleComputeBackendService.healthChecks]) it gates which backends
/// receive traffic — instances that fail [unhealthyThreshold] consecutive
/// probes are pulled out of rotation until they succeed
/// [healthyThreshold] consecutive probes in a row.
///
/// For regional health checks (required by regional internal /
/// internal-managed load balancers) use
/// `google_compute_region_health_check` (curated separately).
///
/// Choose exactly one [ComputeHealthCheckProtocol] variant (HTTP, HTTPS,
/// HTTP2, TCP, SSL, gRPC, or gRPC over TLS). The choice determines the read-only `type`
/// getter value. The sealed type enforces the GCP / Terraform
/// exactly-one constraint at compile time.
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_compute_health_check.`).
/// - `name`: GCP health-check resource name (1-63 chars, lowercase
///   RFC1035). Forces replacement when changed.
///
/// Example (HTTP health check on `/healthz`):
/// ```dart
/// final apiHc = GoogleComputeHealthCheck(
///   'api_hc',
///   name: TfArg.literal('api-hc'),
///   checkIntervalSec: TfArg.literal(10),
///   timeoutSec: TfArg.literal(5),
///   healthyThreshold: TfArg.literal(2),
///   unhealthyThreshold: TfArg.literal(3),
///   protocol: .http(
///     port: TfArg.literal(8080),
///     requestPath: TfArg.literal('/healthz'),
///     proxyHeader: HealthCheckProxyHeader.none,
///     portSpecification: HealthCheckPortSpecification.useFixedPort,
///   ),
///   logConfig: ComputeHealthCheckLogConfig(enable: .literal(true)),
/// );
/// ```
///
/// Example (gRPC health check):
/// ```dart
/// final grpcHc = GoogleComputeHealthCheck(
///   'grpc_hc',
///   name: TfArg.literal('grpc-hc'),
///   protocol: .grpc(
///     port: TfArg.literal(50051),
///     grpcServiceName: TfArg.literal('my.Service'),
///     portSpecification: HealthCheckPortSpecification.useFixedPort,
///   ),
/// );
/// ```
///
/// Cross-resource references:
/// - Attach via [GoogleComputeBackendService.healthChecks] (list of
///   self-links).
///
/// Composition pattern: extends `Resource` for
/// runtime behavior.
final class GoogleComputeHealthCheck extends Resource {
  static const String tfType = 'google_compute_health_check';

  GoogleComputeHealthCheck(
    super.localName, {
    required TfArg<String> name,
    TfArg<String>? description,
    TfArg<num>? checkIntervalSec,
    TfArg<num>? timeoutSec,
    TfArg<num>? healthyThreshold,
    TfArg<num>? unhealthyThreshold,
    TfArg<List<String>>? sourceRegions,
    required ComputeHealthCheckProtocol protocol,
    ComputeHealthCheckLogConfig? logConfig,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'description': ?description,
           'check_interval_sec': ?checkIntervalSec,
           'timeout_sec': ?timeoutSec,
           'healthy_threshold': ?healthyThreshold,
           'unhealthy_threshold': ?unhealthyThreshold,
           'source_regions': ?sourceRegions,
           if (logConfig != null)
             'log_config': TfArg.literal([logConfig.toArgMap()]),
           'project': ?project,
           protocol.blockKey: TfArg.literal(protocol.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeHealthCheckSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeHealthCheck>`.
  RefTo<GoogleComputeHealthCheck> get ref => RefTo.of(this);

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

  /// Reference to `source_regions` attribute.
  TfRef<List<String>> get sourceRegions =>
      TfRef.attribute<List<String>>(this, 'source_regions');

  /// Reference to `timeout_sec` attribute.
  TfRef<num> get timeoutSec => TfRef.attribute<num>(this, 'timeout_sec');

  /// Reference to `unhealthy_threshold` attribute.
  TfRef<num> get unhealthyThreshold =>
      TfRef.attribute<num>(this, 'unhealthy_threshold');
}
