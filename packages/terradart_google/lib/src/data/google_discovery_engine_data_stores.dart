// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_discovery_engine_data_stores`.
const Set<String> _googleDiscoveryEngineDataStoresSensitive = <String>{};

/// Factory wrapper for `google_discovery_engine_data_stores`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleDiscoveryEngineDataStores extends Data {
  static const String tfType = 'google_discovery_engine_data_stores';

  DataGoogleDiscoveryEngineDataStores({
    required super.localName,
    TfArg<String>? location,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (location != null) 'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDiscoveryEngineDataStoresSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `data_stores` attribute.
  TfRef<List<Map<String, Object?>>> get dataStores =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'data_stores');
}
