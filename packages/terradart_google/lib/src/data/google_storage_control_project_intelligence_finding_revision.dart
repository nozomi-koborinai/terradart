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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'finding_id': findingId,
           'location': ?location,
           'project': ?project,
           'revision_id': revisionId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleStorageControlProjectIntelligenceFindingRevisionSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `snapshot` attribute.
  TfRef<List<Map<String, Object?>>> get snapshot =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'snapshot');

  /// Reference to `finding_id` attribute.
  TfRef<String> get findingId => TfRef.attribute<String>(this, 'finding_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `revision_id` attribute.
  TfRef<String> get revisionId => TfRef.attribute<String>(this, 'revision_id');
}
