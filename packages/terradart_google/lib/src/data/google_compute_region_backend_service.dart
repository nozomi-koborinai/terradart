// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_region_backend_service`.
const Set<String> _googleComputeRegionBackendServiceSensitive = <String>{};

/// Factory wrapper for `google_compute_region_backend_service`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleComputeRegionBackendService extends Data {
  static const String tfType = 'google_compute_region_backend_service';

  DataGoogleComputeRegionBackendService({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? project,
    TfArg<String>? region,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (project != null) 'project': project,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeRegionBackendServiceSensitive;

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

  /// Reference to `connection_draining_timeout_sec` attribute.
  TfRef<num> get connectionDrainingTimeoutSec =>
      TfRef.attribute<num>(this, 'connection_draining_timeout_sec');

  /// Reference to `connection_tracking_policy` attribute.
  TfRef<List<Map<String, Object?>>> get connectionTrackingPolicy =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'connection_tracking_policy',
      );

  /// Reference to `consistent_hash` attribute.
  TfRef<List<Map<String, Object?>>> get consistentHash =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'consistent_hash');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `custom_metrics` attribute.
  TfRef<List<Map<String, Object?>>> get customMetrics =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'custom_metrics');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `enable_cdn` attribute.
  TfRef<bool> get enableCdn => TfRef.attribute<bool>(this, 'enable_cdn');

  /// Reference to `failover_policy` attribute.
  TfRef<List<Map<String, Object?>>> get failoverPolicy =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'failover_policy');

  /// Reference to `fingerprint` attribute.
  TfRef<String> get fingerprint => TfRef.attribute<String>(this, 'fingerprint');

  /// Reference to `generated_id` attribute.
  TfRef<num> get generatedId => TfRef.attribute<num>(this, 'generated_id');

  /// Reference to `ha_policy` attribute.
  TfRef<List<Map<String, Object?>>> get haPolicy =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'ha_policy');

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

  /// Reference to `locality_lb_policy` attribute.
  TfRef<String> get localityLbPolicy =>
      TfRef.attribute<String>(this, 'locality_lb_policy');

  /// Reference to `log_config` attribute.
  TfRef<List<Map<String, Object?>>> get logConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'log_config');

  /// Reference to `network` attribute.
  TfRef<String> get network => TfRef.attribute<String>(this, 'network');

  /// Reference to `network_pass_through_lb_traffic_policy` attribute.
  TfRef<List<Map<String, Object?>>> get networkPassThroughLbTrafficPolicy =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'network_pass_through_lb_traffic_policy',
      );

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

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

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
