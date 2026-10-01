// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_monitoring_mesh_istio_service`.
const Set<String> _googleMonitoringMeshIstioServiceSensitive = <String>{};

/// Factory wrapper for `google_monitoring_mesh_istio_service`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleMonitoringMeshIstioService extends Data {
  static const String tfType = 'google_monitoring_mesh_istio_service';

  DataGoogleMonitoringMeshIstioService(
    super.localName, {
    required TfArg<String> meshUid,
    TfArg<String>? project,
    required TfArg<String> serviceName,
    required TfArg<String> serviceNamespace,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'mesh_uid': meshUid,
           'project': ?project,
           'service_name': serviceName,
           'service_namespace': serviceNamespace,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleMonitoringMeshIstioServiceSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `mesh_uid` attribute.
  TfRef<String> get meshUid => TfRef.attribute<String>(this, 'mesh_uid');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `service_name` attribute.
  TfRef<String> get serviceName =>
      TfRef.attribute<String>(this, 'service_name');

  /// Reference to `service_namespace` attribute.
  TfRef<String> get serviceNamespace =>
      TfRef.attribute<String>(this, 'service_namespace');
}
