// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_storage_control_project_intelligence_findings_summary`.
const Set<String>
_googleStorageControlProjectIntelligenceFindingsSummarySensitive = <String>{};

/// Factory wrapper for `google_storage_control_project_intelligence_findings_summary`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleStorageControlProjectIntelligenceFindingsSummary
    extends Data {
  static const String tfType =
      'google_storage_control_project_intelligence_findings_summary';

  DataGoogleStorageControlProjectIntelligenceFindingsSummary({
    required super.localName,
    TfArg<String>? filter,
    TfArg<String>? location,
    TfArg<String>? project,
    TfArg<String>? resourceScope,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (filter != null) 'filter': filter,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
           if (resourceScope != null) 'resource_scope': resourceScope,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleStorageControlProjectIntelligenceFindingsSummarySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `finding_summaries` attribute.
  TfRef<List<Map<String, Object?>>> get findingSummaries =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'finding_summaries');
}
