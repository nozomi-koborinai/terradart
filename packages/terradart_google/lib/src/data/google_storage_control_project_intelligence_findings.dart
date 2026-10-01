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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'filter': ?filter,
           'location': ?location,
           'page_size': ?pageSize,
           'project': ?project,
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

  /// Reference to `filter` attribute.
  TfRef<String> get filter => TfRef.attribute<String>(this, 'filter');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `page_size` attribute.
  TfRef<num> get pageSize => TfRef.attribute<num>(this, 'page_size');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
