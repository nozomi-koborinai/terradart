// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_bigquery_datasets`.
const Set<String> _googleBigqueryDatasetsSensitive = <String>{};

/// Factory wrapper for `google_bigquery_datasets`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleBigqueryDatasets extends Data {
  static const String tfType = 'google_bigquery_datasets';

  DataGoogleBigqueryDatasets({required super.localName, TfArg<String>? project})
    : super(
        terraformType: tfType,
        argMap: {if (project != null) 'project': project},
      );

  @override
  Set<String> get sensitiveFields => _googleBigqueryDatasetsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `datasets` attribute.
  TfRef<List<Map<String, Object?>>> get datasets =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'datasets');
}
