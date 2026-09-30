// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_monitoring_cluster_istio_service`.
const Set<String> _googleMonitoringClusterIstioServiceSensitive = <String>{};

/// Factory wrapper for `google_monitoring_cluster_istio_service`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleMonitoringClusterIstioService extends Data {
  static const String tfType = 'google_monitoring_cluster_istio_service';

  DataGoogleMonitoringClusterIstioService({
    required super.localName,
    required TfArg<String> clusterName,
    required TfArg<String> location,
    TfArg<String>? project,
    required TfArg<String> serviceName,
    required TfArg<String> serviceNamespace,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_name': clusterName,
           'location': location,
           'project': ?project,
           'service_name': serviceName,
           'service_namespace': serviceNamespace,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleMonitoringClusterIstioServiceSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `service_id` attribute.
  TfRef<String> get serviceId => TfRef.attribute<String>(this, 'service_id');

  /// Reference to `telemetry` attribute.
  TfRef<List<Map<String, Object?>>> get telemetry =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'telemetry');

  /// Reference to `user_labels` attribute.
  TfRef<Map<String, String>> get userLabels =>
      TfRef.attribute<Map<String, String>>(this, 'user_labels');

  /// Reference to `cluster_name` attribute.
  TfRef<String> get clusterNameRef =>
      TfRef.attribute<String>(this, 'cluster_name');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `service_name` attribute.
  TfRef<String> get serviceNameRef =>
      TfRef.attribute<String>(this, 'service_name');

  /// Reference to `service_namespace` attribute.
  TfRef<String> get serviceNamespaceRef =>
      TfRef.attribute<String>(this, 'service_namespace');
}
