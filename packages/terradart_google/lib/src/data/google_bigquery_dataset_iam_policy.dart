// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_bigquery_dataset_iam_policy`.
const Set<String> _googleBigqueryDatasetIamPolicySensitive = <String>{};

/// Factory wrapper for `google_bigquery_dataset_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleBigqueryDatasetIamPolicy extends Data {
  static const String tfType = 'google_bigquery_dataset_iam_policy';

  DataGoogleBigqueryDatasetIamPolicy({
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
  Set<String> get sensitiveFields => _googleBigqueryDatasetIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');
}
