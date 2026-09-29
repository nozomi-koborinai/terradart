// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../bigquery/google_bigquery_table_iam_policy.dart';
import '../bigquery/google_bigquery_dataset.dart' show GoogleBigqueryDataset;

/// Sensitive field paths for `google_bigquery_table_iam_policy`.
const Set<String> _googleBigqueryTableIamPolicySensitive = <String>{};

/// Factory wrapper for `google_bigquery_table_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleBigqueryTableIamPolicy extends Data {
  static const String tfType = 'google_bigquery_table_iam_policy';

  DataGoogleBigqueryTableIamPolicy({
    required super.localName,
    required RefTo<GoogleBigqueryDataset> datasetId,
    TfArg<String>? project,
    required TfArg<String> tableId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dataset_id': datasetId.encodeAs('dataset_id'),
           'project': ?project,
           'table_id': tableId,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBigqueryTableIamPolicySensitive;

  /// A reference to the `google_bigquery_table_iam_policy` this data source reads, for
  /// arguments typed `RefTo<GoogleBigqueryTableIamPolicy>`.
  RefTo<GoogleBigqueryTableIamPolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');
}
