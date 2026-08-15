// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_storage_control_organization_intelligence_findings_summary`.
const Set<String>
_googleStorageControlOrganizationIntelligenceFindingsSummarySensitive =
    <String>{};

/// Factory wrapper for `google_storage_control_organization_intelligence_findings_summary`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleStorageControlOrganizationIntelligenceFindingsSummary
    extends Data {
  static const String tfType =
      'google_storage_control_organization_intelligence_findings_summary';

  DataGoogleStorageControlOrganizationIntelligenceFindingsSummary({
    required super.localName,
    TfArg<String>? filter,
    TfArg<String>? location,
    required TfArg<String> organization,
    TfArg<String>? resourceScope,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (filter != null) 'filter': filter,
           if (location != null) 'location': location,
           'organization': organization,
           if (resourceScope != null) 'resource_scope': resourceScope,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleStorageControlOrganizationIntelligenceFindingsSummarySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `finding_summaries` attribute.
  TfRef<List<Map<String, Object?>>> get findingSummaries =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'finding_summaries');
}
