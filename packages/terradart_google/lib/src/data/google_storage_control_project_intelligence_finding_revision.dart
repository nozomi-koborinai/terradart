// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_storage_control_project_intelligence_finding_revision`.
const Set<String>
_googleStorageControlProjectIntelligenceFindingRevisionSensitive = <String>{};

/// Factory wrapper for `google_storage_control_project_intelligence_finding_revision`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleStorageControlProjectIntelligenceFindingRevision
    extends Data {
  static const String tfType =
      'google_storage_control_project_intelligence_finding_revision';

  DataGoogleStorageControlProjectIntelligenceFindingRevision({
    required super.localName,
    required TfArg<String> findingId,
    TfArg<String>? location,
    TfArg<String>? project,
    required TfArg<String> revisionId,
  }) : super(
         terraformType: tfType,
         argMap: {
           'finding_id': findingId,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
           'revision_id': revisionId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleStorageControlProjectIntelligenceFindingRevisionSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `snapshot` attribute.
  TfRef<List<Map<String, Object?>>> get snapshot =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'snapshot');
}
