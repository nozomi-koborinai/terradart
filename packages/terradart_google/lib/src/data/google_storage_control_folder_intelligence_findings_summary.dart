// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_storage_control_folder_intelligence_findings_summary`.
const Set<String>
_googleStorageControlFolderIntelligenceFindingsSummarySensitive = <String>{};

/// Factory wrapper for `google_storage_control_folder_intelligence_findings_summary`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleStorageControlFolderIntelligenceFindingsSummary
    extends Data {
  static const String tfType =
      'google_storage_control_folder_intelligence_findings_summary';

  DataGoogleStorageControlFolderIntelligenceFindingsSummary({
    required super.localName,
    TfArg<String>? filter,
    required TfArg<String> folder,
    TfArg<String>? location,
    TfArg<String>? resourceScope,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (filter != null) 'filter': filter,
           'folder': folder,
           if (location != null) 'location': location,
           if (resourceScope != null) 'resource_scope': resourceScope,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleStorageControlFolderIntelligenceFindingsSummarySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `finding_summaries` attribute.
  TfRef<List<Map<String, Object?>>> get findingSummaries =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'finding_summaries');
}
