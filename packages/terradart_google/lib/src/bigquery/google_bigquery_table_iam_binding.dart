// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_bigquery_table_iam_binding`.
const Set<String> _googleBigqueryTableIamBindingSensitive = <String>{};

/// Factory wrapper for `google_bigquery_table_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a BigQuery table.
///
/// Replaces the entire member list for that role on the table. Prefer
/// [GoogleBigqueryTableIamMember] when adding one principal without
/// touching existing bindings.
final class GoogleBigqueryTableIamBinding extends Resource {
  static const String tfType = 'google_bigquery_table_iam_binding';

  GoogleBigqueryTableIamBinding({
    required super.localName,
    required TfArg<String> datasetId,
    required TfArg<String> tableId,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<Map<String, dynamic>>? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dataset_id': datasetId,
           'table_id': tableId,
           'role': role,
           'members': members,
           if (condition != null) 'condition': condition,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBigqueryTableIamBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
