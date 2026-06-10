// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_bigquery_row_access_policy`.
const Set<String> _googleBigqueryRowAccessPolicySensitive = <String>{};

/// Factory wrapper for `google_bigquery_row_access_policy`.
final class GoogleBigqueryRowAccessPolicy extends Resource {
  static const String tfType = 'google_bigquery_row_access_policy';

  GoogleBigqueryRowAccessPolicy({
    required super.localName,
    required TfArg<String> datasetId,
    required TfArg<String> filterPredicate,
    TfArg<List<String>>? grantees,
    required TfArg<String> policyId,
    TfArg<String>? project,
    required TfArg<String> tableId,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dataset_id': datasetId,
           'filter_predicate': filterPredicate,
           if (grantees != null) 'grantees': grantees,
           'policy_id': policyId,
           if (project != null) 'project': project,
           'table_id': tableId,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBigqueryRowAccessPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_time` attribute.
  TfRef<String> get creationTime =>
      TfRef.attribute<String>(this, 'creation_time');

  /// Reference to `last_modified_time` attribute.
  TfRef<String> get lastModifiedTime =>
      TfRef.attribute<String>(this, 'last_modified_time');
}
