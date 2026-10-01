// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../bigquery/google_bigquery_table.dart' show GoogleBigqueryTable;

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
    TfArg<String>? datasetId,
    required RefTo<GoogleBigqueryTable> table,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dataset_id': ?(datasetId ?? table.alsoAs('dataset_id')),
           'table_id': table.encodeAs('table_id'),
           'policy_data': policyData,
           'project': ?(project ?? table.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBigqueryTableIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBigqueryTableIamPolicy>`.
  RefTo<GoogleBigqueryTableIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `dataset_id` attribute.
  TfRef<String> get datasetIdRef => TfRef.attribute<String>(this, 'dataset_id');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyDataRef =>
      TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `table_id` attribute.
  TfRef<String> get tableIdRef => TfRef.attribute<String>(this, 'table_id');
}
