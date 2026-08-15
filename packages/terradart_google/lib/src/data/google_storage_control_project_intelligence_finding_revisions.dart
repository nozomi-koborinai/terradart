// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_storage_control_project_intelligence_finding_revisions`.
const Set<String>
_googleStorageControlProjectIntelligenceFindingRevisionsSensitive = <String>{};

/// Factory wrapper for `google_storage_control_project_intelligence_finding_revisions`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleStorageControlProjectIntelligenceFindingRevisions
    extends Data {
  static const String tfType =
      'google_storage_control_project_intelligence_finding_revisions';

  DataGoogleStorageControlProjectIntelligenceFindingRevisions({
    required super.localName,
    required TfArg<String> findingId,
    TfArg<String>? location,
    TfArg<num>? pageSize,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {
           'finding_id': findingId,
           if (location != null) 'location': location,
           if (pageSize != null) 'page_size': pageSize,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleStorageControlProjectIntelligenceFindingRevisionsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `revisions` attribute.
  TfRef<List<Map<String, Object?>>> get revisions =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'revisions');
}
