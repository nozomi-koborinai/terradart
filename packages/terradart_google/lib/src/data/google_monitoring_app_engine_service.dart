// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_monitoring_app_engine_service`.
const Set<String> _googleMonitoringAppEngineServiceSensitive = <String>{};

/// Factory wrapper for `google_monitoring_app_engine_service`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleMonitoringAppEngineService extends Data {
  static const String tfType = 'google_monitoring_app_engine_service';

  DataGoogleMonitoringAppEngineService({
    required super.localName,
    required TfArg<String> moduleId,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {
           'module_id': moduleId,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleMonitoringAppEngineServiceSensitive;

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
}
