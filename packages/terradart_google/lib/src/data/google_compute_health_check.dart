// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_health_check`.
const Set<String> _googleComputeHealthCheckSensitive = <String>{};

/// Factory wrapper for `google_compute_health_check`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleComputeHealthCheck extends Data {
  static const String tfType = 'google_compute_health_check';

  DataGoogleComputeHealthCheck({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, if (project != null) 'project': project},
       );

  @override
  Set<String> get sensitiveFields => _googleComputeHealthCheckSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `check_interval_sec` attribute.
  TfRef<num> get checkIntervalSec =>
      TfRef.attribute<num>(this, 'check_interval_sec');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `grpc_health_check` attribute.
  TfRef<List<Map<String, Object?>>> get grpcHealthCheck =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'grpc_health_check');

  /// Reference to `grpc_tls_health_check` attribute.
  TfRef<List<Map<String, Object?>>> get grpcTlsHealthCheck =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'grpc_tls_health_check',
      );

  /// Reference to `healthy_threshold` attribute.
  TfRef<num> get healthyThreshold =>
      TfRef.attribute<num>(this, 'healthy_threshold');

  /// Reference to `http2_health_check` attribute.
  TfRef<List<Map<String, Object?>>> get http2HealthCheck =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'http2_health_check');

  /// Reference to `http_health_check` attribute.
  TfRef<List<Map<String, Object?>>> get httpHealthCheck =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'http_health_check');

  /// Reference to `https_health_check` attribute.
  TfRef<List<Map<String, Object?>>> get httpsHealthCheck =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'https_health_check');

  /// Reference to `log_config` attribute.
  TfRef<List<Map<String, Object?>>> get logConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'log_config');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `source_regions` attribute.
  TfRef<List<String>> get sourceRegions =>
      TfRef.attribute<List<String>>(this, 'source_regions');

  /// Reference to `ssl_health_check` attribute.
  TfRef<List<Map<String, Object?>>> get sslHealthCheck =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'ssl_health_check');

  /// Reference to `tcp_health_check` attribute.
  TfRef<List<Map<String, Object?>>> get tcpHealthCheck =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'tcp_health_check');

  /// Reference to `timeout_sec` attribute.
  TfRef<num> get timeoutSec => TfRef.attribute<num>(this, 'timeout_sec');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `unhealthy_threshold` attribute.
  TfRef<num> get unhealthyThreshold =>
      TfRef.attribute<num>(this, 'unhealthy_threshold');
}
