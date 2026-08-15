// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_bigquery_tables`.
const Set<String> _googleBigqueryTablesSensitive = <String>{};

/// Factory wrapper for `google_bigquery_tables`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleBigqueryTables extends Data {
  static const String tfType = 'google_bigquery_tables';

  DataGoogleBigqueryTables({
    required super.localName,
    required TfArg<String> datasetId,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dataset_id': datasetId,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBigqueryTablesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `tables` attribute.
  TfRef<List<Map<String, Object?>>> get tables =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'tables');
}
