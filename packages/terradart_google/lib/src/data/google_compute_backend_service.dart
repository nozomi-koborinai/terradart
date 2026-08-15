// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_backend_service`.
const Set<String> _googleComputeBackendServiceSensitive = <String>{};

/// Factory wrapper for `google_compute_backend_service`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleComputeBackendService extends Data {
  static const String tfType = 'google_compute_backend_service';

  DataGoogleComputeBackendService({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, if (project != null) 'project': project},
       );

  @override
  Set<String> get sensitiveFields => _googleComputeBackendServiceSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `affinity_cookie_ttl_sec` attribute.
  TfRef<num> get affinityCookieTtlSec =>
      TfRef.attribute<num>(this, 'affinity_cookie_ttl_sec');

  /// Reference to `backend` attribute.
  TfRef<List<Map<String, Object?>>> get backend =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'backend');

  /// Reference to `cdn_policy` attribute.
  TfRef<List<Map<String, Object?>>> get cdnPolicy =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'cdn_policy');

  /// Reference to `circuit_breakers` attribute.
  TfRef<List<Map<String, Object?>>> get circuitBreakers =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'circuit_breakers');

  /// Reference to `compression_mode` attribute.
  TfRef<String> get compressionMode =>
      TfRef.attribute<String>(this, 'compression_mode');

  /// Reference to `connection_draining_timeout_sec` attribute.
  TfRef<num> get connectionDrainingTimeoutSec =>
      TfRef.attribute<num>(this, 'connection_draining_timeout_sec');

  /// Reference to `consistent_hash` attribute.
  TfRef<List<Map<String, Object?>>> get consistentHash =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'consistent_hash');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `custom_metrics` attribute.
  TfRef<List<Map<String, Object?>>> get customMetrics =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'custom_metrics');

  /// Reference to `custom_request_headers` attribute.
  TfRef<List<String>> get customRequestHeaders =>
      TfRef.attribute<List<String>>(this, 'custom_request_headers');

  /// Reference to `custom_response_headers` attribute.
  TfRef<List<String>> get customResponseHeaders =>
      TfRef.attribute<List<String>>(this, 'custom_response_headers');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `edge_security_policy` attribute.
  TfRef<String> get edgeSecurityPolicy =>
      TfRef.attribute<String>(this, 'edge_security_policy');

  /// Reference to `enable_cdn` attribute.
  TfRef<bool> get enableCdn => TfRef.attribute<bool>(this, 'enable_cdn');

  /// Reference to `external_managed_migration_state` attribute.
  TfRef<String> get externalManagedMigrationState =>
      TfRef.attribute<String>(this, 'external_managed_migration_state');

  /// Reference to `external_managed_migration_testing_percentage` attribute.
  TfRef<num> get externalManagedMigrationTestingPercentage =>
      TfRef.attribute<num>(
        this,
        'external_managed_migration_testing_percentage',
      );

  /// Reference to `fingerprint` attribute.
  TfRef<String> get fingerprint => TfRef.attribute<String>(this, 'fingerprint');

  /// Reference to `generated_id` attribute.
  TfRef<num> get generatedId => TfRef.attribute<num>(this, 'generated_id');

  /// Reference to `health_checks` attribute.
  TfRef<List<String>> get healthChecks =>
      TfRef.attribute<List<String>>(this, 'health_checks');

  /// Reference to `iap` attribute.
  TfRef<List<Map<String, Object?>>> get iap =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'iap');

  /// Reference to `ip_address_selection_policy` attribute.
  TfRef<String> get ipAddressSelectionPolicy =>
      TfRef.attribute<String>(this, 'ip_address_selection_policy');

  /// Reference to `load_balancing_scheme` attribute.
  TfRef<String> get loadBalancingScheme =>
      TfRef.attribute<String>(this, 'load_balancing_scheme');

  /// Reference to `locality_lb_policies` attribute.
  TfRef<List<Map<String, Object?>>> get localityLbPolicies =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'locality_lb_policies');

  /// Reference to `locality_lb_policy` attribute.
  TfRef<String> get localityLbPolicy =>
      TfRef.attribute<String>(this, 'locality_lb_policy');

  /// Reference to `log_config` attribute.
  TfRef<List<Map<String, Object?>>> get logConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'log_config');

  /// Reference to `max_stream_duration` attribute.
  TfRef<List<Map<String, Object?>>> get maxStreamDuration =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'max_stream_duration');

  /// Reference to `outlier_detection` attribute.
  TfRef<List<Map<String, Object?>>> get outlierDetection =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'outlier_detection');

  /// Reference to `params` attribute.
  TfRef<List<Map<String, Object?>>> get params =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'params');

  /// Reference to `port_name` attribute.
  TfRef<String> get portName => TfRef.attribute<String>(this, 'port_name');

  /// Reference to `protocol` attribute.
  TfRef<String> get protocol => TfRef.attribute<String>(this, 'protocol');

  /// Reference to `security_policy` attribute.
  TfRef<String> get securityPolicy =>
      TfRef.attribute<String>(this, 'security_policy');

  /// Reference to `security_settings` attribute.
  TfRef<List<Map<String, Object?>>> get securitySettings =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'security_settings');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `service_lb_policy` attribute.
  TfRef<String> get serviceLbPolicy =>
      TfRef.attribute<String>(this, 'service_lb_policy');

  /// Reference to `session_affinity` attribute.
  TfRef<String> get sessionAffinity =>
      TfRef.attribute<String>(this, 'session_affinity');

  /// Reference to `strong_session_affinity_cookie` attribute.
  TfRef<List<Map<String, Object?>>> get strongSessionAffinityCookie =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'strong_session_affinity_cookie',
      );

  /// Reference to `timeout_sec` attribute.
  TfRef<num> get timeoutSec => TfRef.attribute<num>(this, 'timeout_sec');

  /// Reference to `tls_settings` attribute.
  TfRef<List<Map<String, Object?>>> get tlsSettings =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'tls_settings');
}
