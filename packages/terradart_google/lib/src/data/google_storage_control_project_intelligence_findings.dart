// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_storage_control_project_intelligence_findings`.
const Set<String> _googleStorageControlProjectIntelligenceFindingsSensitive =
    <String>{};

/// Factory wrapper for `google_storage_control_project_intelligence_findings`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleStorageControlProjectIntelligenceFindings extends Data {
  static const String tfType =
      'google_storage_control_project_intelligence_findings';

  DataGoogleStorageControlProjectIntelligenceFindings({
    required super.localName,
    TfArg<String>? filter,
    TfArg<String>? location,
    TfArg<num>? pageSize,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (filter != null) 'filter': filter,
           if (location != null) 'location': location,
           if (pageSize != null) 'page_size': pageSize,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleStorageControlProjectIntelligenceFindingsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `findings` attribute.
  TfRef<List<Map<String, Object?>>> get findings =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'findings');
}
