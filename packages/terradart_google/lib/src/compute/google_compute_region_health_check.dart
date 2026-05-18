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
/// comparisons against [typeRef] reads.
enum RegionHealthCheckType {
  http('HTTP'),
  https('HTTPS'),
  tcp('TCP'),
  ssl('SSL'),
  http2('HTTP2'),
  grpc('GRPC');

  const RegionHealthCheckType(this.terraformValue);
  final String terraformValue;
}

/// `proxy_header` value used inside the per-protocol HTTP-shaped blocks
/// (HTTP, HTTPS, HTTP2, TCP, SSL). Defaults to [none] on the GCP API.
enum RegionHealthCheckProxyHeader {
  none('NONE'),
  proxyV1('PROXY_V1');

  const RegionHealthCheckProxyHeader(this.terraformValue);
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
enum RegionHealthCheckPortSpecification {
  useFixedPort('USE_FIXED_PORT'),
  useNamedPort('USE_NAMED_PORT'),
  useServingPort('USE_SERVING_PORT');

  const RegionHealthCheckPortSpecification(this.terraformValue);
  final String terraformValue;
}

// ===========================================================================
// Per-protocol config blocks (each is max_items=1 in the TF schema).
// Prefixed with `RegionHealthCheck` to avoid colliding with the global
// sibling's `HttpHealthCheckConfig` / etc.
// ===========================================================================

/// `http_health_check` block. Set this (and only this) to make the
/// resource an HTTP health check.
@immutable
class RegionHealthCheckHttpConfig {
  const RegionHealthCheckHttpConfig({
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
  final RegionHealthCheckProxyHeader? proxyHeader;

  /// How the probe port is resolved (`port` vs `portName` vs the
  /// serving port).
  final RegionHealthCheckPortSpecification? portSpecification;

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
class RegionHealthCheckHttpsConfig {
  const RegionHealthCheckHttpsConfig({
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
  final RegionHealthCheckProxyHeader? proxyHeader;
  final RegionHealthCheckPortSpecification? portSpecification;

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
class RegionHealthCheckHttp2Config {
  const RegionHealthCheckHttp2Config({
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
  final RegionHealthCheckProxyHeader? proxyHeader;
  final RegionHealthCheckPortSpecification? portSpecification;

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
class RegionHealthCheckTcpConfig {
  const RegionHealthCheckTcpConfig({
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

  /// TCP port. Defaults to 80 on the regional resource.
  final int? port;
  final String? portName;
  final RegionHealthCheckProxyHeader? proxyHeader;
  final RegionHealthCheckPortSpecification? portSpecification;

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
class RegionHealthCheckSslConfig {
  const RegionHealthCheckSslConfig({
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
  final RegionHealthCheckProxyHeader? proxyHeader;
  final RegionHealthCheckPortSpecification? portSpecification;

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
class RegionHealthCheckGrpcConfig {
  const RegionHealthCheckGrpcConfig({
    this.port,
    this.portName,
    this.portSpecification,
    this.grpcServiceName,
  });

  /// Port number. Must be set if `port_specification` is
  /// [RegionHealthCheckPortSpecification.useFixedPort] and `portName`
  /// is unset. Valid 1-65535.
  final int? port;
  final String? portName;
  final RegionHealthCheckPortSpecification? portSpecification;

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
class RegionHealthCheckLogConfig {
  const RegionHealthCheckLogConfig({this.enable});

  /// `true` exports each probe result to Cloud Logging. Defaults to
  /// `false` (no logs).
  final bool? enable;

  Map<String, Object?> toArgMap() => {if (enable != null) 'enable': enable};
}

/// Factory wrapper for `google_compute_region_health_check` (provider
/// `hashicorp/google ~> 7.0`).
///
/// A **regional** health check polls instances behind a regional load
/// balancer at a configurable interval. Required by regional internal
/// (`INTERNAL`) and internal-managed (`INTERNAL_MANAGED`) load
/// balancers; regional external schemes also accept it. For global
/// load balancers use the regionless `google_compute_health_check`
/// (curated separately).
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
///   `google_compute_region_health_check.`).
/// - `name`: GCP health-check resource name (1-63 chars, lowercase
///   RFC1035). Forces replacement when changed.
/// - [region]: GCP region the health check lives in (e.g.
///   `'us-central1'`). Required in practice — without it the provider
///   falls back to the provider-level default region, which is rarely
///   what callers want and makes the resource non-portable across
///   environments. Pass `TfArg.literal('asia-northeast1')` or
///   `TfArg.ref(...)` against a tfvar.
///
/// Example (HTTPS regional health check):
/// ```dart
/// final apiHc = GoogleComputeRegionHealthCheck(
///   localName: 'api_hc',
///   name: TfArg.literal('api-region-hc'),
///   region: TfArg.literal('asia-northeast1'),
///   checkIntervalSec: TfArg.literal(10),
///   timeoutSec: TfArg.literal(5),
///   healthyThreshold: TfArg.literal(2),
///   unhealthyThreshold: TfArg.literal(3),
///   httpsHealthCheck: const RegionHealthCheckHttpsConfig(
///     port: 443,
///     requestPath: '/healthz',
///     portSpecification:
///         RegionHealthCheckPortSpecification.useFixedPort,
///   ),
///   logConfig: const RegionHealthCheckLogConfig(enable: true),
/// );
/// ```
///
/// Cross-resource references:
/// - Attach via `google_compute_region_backend_service.health_checks`
///   (list of self-links; that resource is curated separately).
///
/// Composition pattern: extends `Resource<$GoogleComputeRegionHealthCheck>`
/// for runtime behavior.
final class GoogleComputeRegionHealthCheck extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_compute_region_health_check';

  GoogleComputeRegionHealthCheck({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<String>? description,
    TfArg<num>? checkIntervalSec,
    TfArg<num>? timeoutSec,
    TfArg<num>? healthyThreshold,
    TfArg<num>? unhealthyThreshold,
    RegionHealthCheckHttpConfig? httpHealthCheck,
    RegionHealthCheckHttpsConfig? httpsHealthCheck,
    RegionHealthCheckHttp2Config? http2HealthCheck,
    RegionHealthCheckTcpConfig? tcpHealthCheck,
    RegionHealthCheckSslConfig? sslHealthCheck,
    RegionHealthCheckGrpcConfig? grpcHealthCheck,
    RegionHealthCheckLogConfig? logConfig,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
          terraformType: $tfType,
          argMap: {
            'name': name,
            if (region != null) 'region': region,
            if (description != null) 'description': description,
            if (checkIntervalSec != null)
              'check_interval_sec': checkIntervalSec,
            if (timeoutSec != null) 'timeout_sec': timeoutSec,
            if (healthyThreshold != null) 'healthy_threshold': healthyThreshold,
            if (unhealthyThreshold != null)
              'unhealthy_threshold': unhealthyThreshold,
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
  Set<String> get $sensitiveFields => _googleComputeRegionHealthCheckSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute (full path
  /// `projects/{project}/regions/{region}/healthChecks/{name}`).
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `self_link` attribute. This is the value
  /// `google_compute_region_backend_service.health_checks` expects.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to the computed `type` attribute (the
  /// [RegionHealthCheckType] the API inferred from which per-protocol
  /// block was set). Available after apply.
  TfRef<String> get typeRef => TfRef.attribute<String>(this, 'type');

  /// Reference to the computed server-assigned numeric `health_check_id`.
  TfRef<int> get healthCheckId => TfRef.attribute<int>(this, 'health_check_id');

  /// Reference to `creation_timestamp` (RFC3339).
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');
}
