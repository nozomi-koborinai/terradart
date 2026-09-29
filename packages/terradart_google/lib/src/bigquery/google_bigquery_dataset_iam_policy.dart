// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../bigquery/google_bigquery_dataset.dart' show GoogleBigqueryDataset;

/// Sensitive field paths for `google_bigquery_dataset_iam_policy`.
const Set<String> _googleBigqueryDatasetIamPolicySensitive = <String>{};

/// Factory wrapper for `google_bigquery_dataset_iam_policy`.
///
/// Authoritative IAM policy for a BigQuery dataset.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleBigqueryDatasetIamMember] for single-principal grants.
final class GoogleBigqueryDatasetIamPolicy extends Resource {
  static const String tfType = 'google_bigquery_dataset_iam_policy';

  GoogleBigqueryDatasetIamPolicy({
    required super.localName,
    required RefTo<GoogleBigqueryDataset> datasetId,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dataset_id': datasetId.encodeAs('dataset_id'),
           'policy_data': policyData,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBigqueryDatasetIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBigqueryDatasetIamPolicy>`.
  RefTo<GoogleBigqueryDatasetIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
