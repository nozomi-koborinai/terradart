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

  DataGoogleStorageControlOrganizationIntelligenceFindingsSummary(
    super.localName, {
    TfArg<String>? filter,
    TfArg<String>? location,
    required TfArg<String> organization,
    TfArg<String>? resourceScope,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'filter': ?filter,
           'location': ?location,
           'organization': organization,
           'resource_scope': ?resourceScope,
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

  /// Reference to `filter` attribute.
  TfRef<String> get filter => TfRef.attribute<String>(this, 'filter');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `organization` attribute.
  TfRef<String> get organization =>
      TfRef.attribute<String>(this, 'organization');

  /// Reference to `resource_scope` attribute.
  TfRef<String> get resourceScope =>
      TfRef.attribute<String>(this, 'resource_scope');
}
