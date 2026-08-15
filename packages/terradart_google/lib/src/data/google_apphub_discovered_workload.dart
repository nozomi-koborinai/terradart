// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_apphub_discovered_workload`.
const Set<String> _googleApphubDiscoveredWorkloadSensitive = <String>{};

/// Factory wrapper for `google_apphub_discovered_workload`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleApphubDiscoveredWorkload extends Data {
  static const String tfType = 'google_apphub_discovered_workload';

  DataGoogleApphubDiscoveredWorkload({
    required super.localName,
    required TfArg<String> location,
    TfArg<String>? project,
    required TfArg<String> workloadUri,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           if (project != null) 'project': project,
           'workload_uri': workloadUri,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApphubDiscoveredWorkloadSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `workload_properties` attribute.
  TfRef<List<Map<String, Object?>>> get workloadProperties =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'workload_properties');

  /// Reference to `workload_reference` attribute.
  TfRef<List<Map<String, Object?>>> get workloadReference =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'workload_reference');
}
