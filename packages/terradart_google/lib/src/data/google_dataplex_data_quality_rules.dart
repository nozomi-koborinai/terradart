// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataplex_data_quality_rules`.
const Set<String> _googleDataplexDataQualityRulesSensitive = <String>{};

/// Factory wrapper for `google_dataplex_data_quality_rules`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleDataplexDataQualityRules extends Data {
  static const String tfType = 'google_dataplex_data_quality_rules';

  DataGoogleDataplexDataQualityRules({
    required super.localName,
    required TfArg<String> dataScanId,
    TfArg<String>? location,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data_scan_id': dataScanId,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataplexDataQualityRulesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `rules` attribute.
  TfRef<List<Map<String, Object?>>> get rules =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'rules');
}
