// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../bigquery/google_bigquery_dataset.dart' show GoogleBigqueryDataset;
import '../bigquery/google_bigquery_table.dart' show GoogleBigqueryTable;

/// Sensitive field paths for `google_bigquery_row_access_policy`.
const Set<String> _googleBigqueryRowAccessPolicySensitive = <String>{};

/// Factory wrapper for `google_bigquery_row_access_policy`.
///
/// Represents access on a subset of rows on the specified table, defined by its
/// filter predicate. Access to the subset of rows is controlled by its IAM
/// policy.
final class GoogleBigqueryRowAccessPolicy extends Resource {
  static const String tfType = 'google_bigquery_row_access_policy';

  GoogleBigqueryRowAccessPolicy(
    super.localName, {
    required RefTo<GoogleBigqueryDataset> datasetId,
    required TfArg<String> filterPredicate,
    TfArg<List<String>>? grantees,
    required TfArg<String> policyId,
    TfArg<String>? project,
    required RefTo<GoogleBigqueryTable> tableId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dataset_id': datasetId.encodeAs('dataset_id'),
           'filter_predicate': filterPredicate,
           'grantees': ?grantees,
           'policy_id': policyId,
           'project': ?project,
           'table_id': tableId.encodeAs('table_id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBigqueryRowAccessPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBigqueryRowAccessPolicy>`.
  RefTo<GoogleBigqueryRowAccessPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_time` attribute.
  TfRef<String> get creationTime =>
      TfRef.attribute<String>(this, 'creation_time');

  /// Reference to `last_modified_time` attribute.
  TfRef<String> get lastModifiedTime =>
      TfRef.attribute<String>(this, 'last_modified_time');

  /// Reference to `dataset_id` attribute.
  TfRef<String> get datasetId => TfRef.attribute<String>(this, 'dataset_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `filter_predicate` attribute.
  TfRef<String> get filterPredicate =>
      TfRef.attribute<String>(this, 'filter_predicate');

  /// Reference to `grantees` attribute.
  TfRef<List<String>> get grantees =>
      TfRef.attribute<List<String>>(this, 'grantees');

  /// Reference to `policy_id` attribute.
  TfRef<String> get policyId => TfRef.attribute<String>(this, 'policy_id');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `table_id` attribute.
  TfRef<String> get tableId => TfRef.attribute<String>(this, 'table_id');
}
