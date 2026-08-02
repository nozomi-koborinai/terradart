// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_bigquery_table_iam_policy`.
const Set<String> _googleBigqueryTableIamPolicySensitive = <String>{};

/// Factory wrapper for `google_bigquery_table_iam_policy`.
///
/// Authoritative IAM policy for a BigQuery table.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleBigqueryTableIamMember] for single-principal grants.
final class GoogleBigqueryTableIamPolicy extends Resource {
  static const String tfType = 'google_bigquery_table_iam_policy';

  GoogleBigqueryTableIamPolicy({
    required super.localName,
    required TfArg<String> datasetId,
    required TfArg<String> tableId,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dataset_id': datasetId,
           'table_id': tableId,
           'policy_data': policyData,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBigqueryTableIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
