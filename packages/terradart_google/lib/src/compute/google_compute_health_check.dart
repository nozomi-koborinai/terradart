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
/// Listed here for use in `==` comparisons against [typeRef] reads.
enum HealthCheckType {
  http('HTTP'),
  https('HTTPS'),
  tcp('TCP'),
  ssl('SSL'),
  http2('HTTP2'),
  grpc('GRPC');

  const HealthCheckType(this.terraformValue);
  final String terraformValue;
}

/// `proxy_header` value used inside every per-protocol HTTP-shaped block
/// (HTTP, HTTPS, HTTP2, TCP, SSL). Defaults to [none] on the GCP API.
enum HealthCheckProxyHeader {
  none('NONE'),
  proxyV1('PROXY_V1');

  const HealthCheckProxyHeader(this.terraformValue);
  final String terraformValue;
}

/// `port_specification` value shared by every per-protocol config block.
///
/// - [useFixedPort]: use the literal `port` number.
/// - [useNamedPort]: resolve `port_name` against the InstanceGroup's
///   named-port map.
/// - [useServingPort]: for Network Endpoint Groups, use each endpoint's
///   declared port; for other backends, use the Backend Service's
///   `port` / `port_name`.
enum HealthCheckPortSpecification {
  useFixedPort('USE_FIXED_PORT'),
  useNamedPort('USE_NAMED_PORT'),
  useServingPort('USE_SERVING_PORT');

  const HealthCheckPortSpecification(this.terraformValue);
  final String terraformValue;
}

// ===========================================================================
// Per-protocol config blocks (each is max_items=1 in the TF schema).
// Naming uses the `Config` suffix to disambiguate from the legacy
// `google_compute_http_health_check` / `google_compute_https_health_check`
// resource wrappers. These types are shared across global +
// regional health checks.
// ===========================================================================

/// `http_health_check` block. Set this (and only this) to make the
/// resource an HTTP health check.
@immutable
class HttpHealthCheckConfig {
  const HttpHealthCheckConfig({
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
  final String? host;

  /// Request path. Defaults to `/`.
  final String? requestPath;

  /// Bytes to match against the start of the response body. Empty
  /// means "any response counts as healthy". ASCII only.
  final String? response;

  /// TCP port. Defaults to 80.
  final int? port;

  /// Named port (resolved via the InstanceGroup's named-port map).
  final String? portName;

  /// Proxy header to prepend on the probe.
  final HealthCheckProxyHeader? proxyHeader;

  /// How the probe port is resolved (`port` vs `portName` vs the
  /// serving port).
  final HealthCheckPortSpecification? portSpecification;

  Map<String, Object?> toArgMap() => {
        if (host != null) 'host': host,
        if (requestPath != null) 'request_path': requestPath,
        if (response != null) 'response': response,
        if (port != null) 'port': port,
        if (portName != null) 'port_name': portName,
        if (proxyHeader != null) 'proxy_header': proxyHeader!.terraformValue,
        if (portSpecification != null)
          'port_specification': portSpecification!.terraformValue,
      };
}

/// `https_health_check` block.
@immutable
class HttpsHealthCheckConfig {
  const HttpsHealthCheckConfig({
    this.host,
    this.requestPath,
    this.response,
    this.port,
    this.portName,
    this.proxyHeader,
    this.portSpecification,
  });

  final String? host;
  final String? requestPath;
  final String? response;

  /// TCP port. Defaults to 443.
  final int? port;
  final String? portName;
  final HealthCheckProxyHeader? proxyHeader;
  final HealthCheckPortSpecification? portSpecification;

  Map<String, Object?> toArgMap() => {
        if (host != null) 'host': host,
        if (requestPath != null) 'request_path': requestPath,
        if (response != null) 'response': response,
        if (port != null) 'port': port,
        if (portName != null) 'port_name': portName,
        if (proxyHeader != null) 'proxy_header': proxyHeader!.terraformValue,
        if (portSpecification != null)
          'port_specification': portSpecification!.terraformValue,
      };
}

/// `http2_health_check` block.
@immutable
class Http2HealthCheckConfig {
  const Http2HealthCheckConfig({
    this.host,
    this.requestPath,
    this.response,
    this.port,
    this.portName,
    this.proxyHeader,
    this.portSpecification,
  });

  final String? host;
  final String? requestPath;
  final String? response;

  /// TCP port. Defaults to 443.
  final int? port;
  final String? portName;
  final HealthCheckProxyHeader? proxyHeader;
  final HealthCheckPortSpecification? portSpecification;

  Map<String, Object?> toArgMap() => {
        if (host != null) 'host': host,
        if (requestPath != null) 'request_path': requestPath,
        if (response != null) 'response': response,
        if (port != null) 'port': port,
        if (portName != null) 'port_name': portName,
        if (proxyHeader != null) 'proxy_header': proxyHeader!.terraformValue,
        if (portSpecification != null)
          'port_specification': portSpecification!.terraformValue,
      };
}

/// `tcp_health_check` block. Pure TCP connect-or-payload probe.
@immutable
class TcpHealthCheckConfig {
  const TcpHealthCheckConfig({
    this.request,
    this.response,
    this.port,
    this.portName,
    this.proxyHeader,
    this.portSpecification,
  });

  /// Bytes to send once the TCP connection is established. Empty means
  /// "connect-only is enough to be healthy". ASCII only.
  final String? request;

  /// Bytes to match against the start of the response. Empty matches
  /// any response.
  final String? response;

  /// TCP port. Defaults to 443.
  final int? port;
  final String? portName;
  final HealthCheckProxyHeader? proxyHeader;
  final HealthCheckPortSpecification? portSpecification;

  Map<String, Object?> toArgMap() => {
        if (request != null) 'request': request,
        if (response != null) 'response': response,
        if (port != null) 'port': port,
        if (portName != null) 'port_name': portName,
        if (proxyHeader != null) 'proxy_header': proxyHeader!.terraformValue,
        if (portSpecification != null)
          'port_specification': portSpecification!.terraformValue,
      };
}

/// `ssl_health_check` block. Pure SSL/TLS probe.
@immutable
class SslHealthCheckConfig {
  const SslHealthCheckConfig({
    this.request,
    this.response,
    this.port,
    this.portName,
    this.proxyHeader,
    this.portSpecification,
  });

  final String? request;
  final String? response;

  /// TCP port. Defaults to 443.
  final int? port;
  final String? portName;
  final HealthCheckProxyHeader? proxyHeader;
  final HealthCheckPortSpecification? portSpecification;

  Map<String, Object?> toArgMap() => {
        if (request != null) 'request': request,
        if (response != null) 'response': response,
        if (port != null) 'port': port,
        if (portName != null) 'port_name': portName,
        if (proxyHeader != null) 'proxy_header': proxyHeader!.terraformValue,
        if (portSpecification != null)
          'port_specification': portSpecification!.terraformValue,
      };
}

/// `grpc_health_check` block. Probes via the gRPC Health Checking
/// Protocol (`grpc.health.v1.Health/Check`).
@immutable
class GrpcHealthCheckConfig {
  const GrpcHealthCheckConfig({
    this.port,
    this.portName,
    this.portSpecification,
    this.grpcServiceName,
  });

  /// Port number. Must be set if `port_specification` is
  /// [HealthCheckPortSpecification.useFixedPort] and `portName` is
  /// unset. Valid 1-65535.
  final int? port;
  final String? portName;
  final HealthCheckPortSpecification? portSpecification;

  /// gRPC service name passed in the `service` field of the Check RPC.
  /// Empty means "report aggregate server health"; a non-empty name
  /// scopes the check to a specific registered service. ASCII only.
  final String? grpcServiceName;

  Map<String, Object?> toArgMap() => {
        if (port != null) 'port': port,
        if (portName != null) 'port_name': portName,
        if (portSpecification != null)
          'port_specification': portSpecification!.terraformValue,
        if (grpcServiceName != null) 'grpc_service_name': grpcServiceName,
      };
}

// ===========================================================================
// log_config (max_items=1)
// ===========================================================================

/// `log_config` block. Toggles Cloud Logging export of probe results.
@immutable
class HealthCheckLogConfig {
  const HealthCheckLogConfig({this.enable});

  /// `true` exports each probe result to Cloud Logging. Defaults to
  /// `false` (no logs).
  final bool? enable;

  Map<String, Object?> toArgMap() => {if (enable != null) 'enable': enable};
}

/// Factory wrapper for `google_compute_health_check` (provider
/// `hashicorp/google ~> 7.0`).
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
/// **Protocol invariant**: exactly one of the per-protocol config blocks
/// ([httpHealthCheck], [httpsHealthCheck], [http2HealthCheck],
/// [tcpHealthCheck], [sslHealthCheck], [grpcHealthCheck]) must be set,
/// and the choice determines the value the GCP API will compute for
/// `type` (which is read-only on this resource — surface it via
/// [typeRef]). The Terraform provider rejects configurations with
/// multiple blocks or none.
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
///   localName: 'api_hc',
///   name: TfArg.literal('api-hc'),
///   checkIntervalSec: TfArg.literal(10),
///   timeoutSec: TfArg.literal(5),
///   healthyThreshold: TfArg.literal(2),
///   unhealthyThreshold: TfArg.literal(3),
///   httpHealthCheck: const HttpHealthCheckConfig(
///     port: 8080,
///     requestPath: '/healthz',
///     proxyHeader: HealthCheckProxyHeader.none,
///     portSpecification: HealthCheckPortSpecification.useFixedPort,
///   ),
///   logConfig: const HealthCheckLogConfig(enable: true),
/// );
/// ```
///
/// Example (gRPC health check):
/// ```dart
/// final grpcHc = GoogleComputeHealthCheck(
///   localName: 'grpc_hc',
///   name: TfArg.literal('grpc-hc'),
///   grpcHealthCheck: const GrpcHealthCheckConfig(
///     port: 50051,
///     grpcServiceName: 'my.Service',
///     portSpecification: HealthCheckPortSpecification.useFixedPort,
///   ),
/// );
/// ```
///
/// Cross-resource references:
/// - Attach via [GoogleComputeBackendService.healthChecks] (list of
///   self-links).
///
/// Composition pattern: extends `Resource<$GoogleComputeHealthCheck>` for
/// runtime behavior.
final class GoogleComputeHealthCheck extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_compute_health_check';

  GoogleComputeHealthCheck({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? description,
    TfArg<num>? checkIntervalSec,
    TfArg<num>? timeoutSec,
    TfArg<num>? healthyThreshold,
    TfArg<num>? unhealthyThreshold,
    TfArg<List<String>>? sourceRegions,
    HttpHealthCheckConfig? httpHealthCheck,
    HttpsHealthCheckConfig? httpsHealthCheck,
    Http2HealthCheckConfig? http2HealthCheck,
    TcpHealthCheckConfig? tcpHealthCheck,
    SslHealthCheckConfig? sslHealthCheck,
    GrpcHealthCheckConfig? grpcHealthCheck,
    HealthCheckLogConfig? logConfig,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
          terraformType: $tfType,
          argMap: {
            'name': name,
            if (description != null) 'description': description,
            if (checkIntervalSec != null)
              'check_interval_sec': checkIntervalSec,
            if (timeoutSec != null) 'timeout_sec': timeoutSec,
            if (healthyThreshold != null) 'healthy_threshold': healthyThreshold,
            if (unhealthyThreshold != null)
              'unhealthy_threshold': unhealthyThreshold,
            if (sourceRegions != null) 'source_regions': sourceRegions,
            if (httpHealthCheck != null)
              'http_health_check': TfArg.literal([httpHealthCheck.toArgMap()]),
            if (httpsHealthCheck != null)
              'https_health_check':
                  TfArg.literal([httpsHealthCheck.toArgMap()]),
            if (http2HealthCheck != null)
              'http2_health_check':
                  TfArg.literal([http2HealthCheck.toArgMap()]),
            if (tcpHealthCheck != null)
              'tcp_health_check': TfArg.literal([tcpHealthCheck.toArgMap()]),
            if (sslHealthCheck != null)
              'ssl_health_check': TfArg.literal([sslHealthCheck.toArgMap()]),
            if (grpcHealthCheck != null)
              'grpc_health_check': TfArg.literal([grpcHealthCheck.toArgMap()]),
            if (logConfig != null)
              'log_config': TfArg.literal([logConfig.toArgMap()]),
            if (project != null) 'project': project,
          },
        );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields => _googleComputeHealthCheckSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute (full path
  /// `projects/{project}/global/healthChecks/{name}`).
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `self_link` attribute. This is the value
  /// [GoogleComputeBackendService.healthChecks] expects.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to the computed `type` attribute (the [HealthCheckType]
  /// the API inferred from which per-protocol block was set). Available
  /// after apply.
  TfRef<String> get typeRef => TfRef.attribute<String>(this, 'type');

  /// Reference to `creation_timestamp` (RFC3339).
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');
}
