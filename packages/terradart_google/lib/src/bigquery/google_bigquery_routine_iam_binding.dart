// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_bigquery_routine_iam_binding`.
const Set<String> _googleBigqueryRoutineIamBindingSensitive = <String>{};

/// Factory wrapper for `google_bigquery_routine_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a BigQuery routine.
///
/// Replaces the entire member list for that role on the routine. Prefer
/// [GoogleBigqueryRoutineIamMember] when adding one principal without
/// touching existing bindings.
final class GoogleBigqueryRoutineIamBinding extends Resource {
  static const String tfType = 'google_bigquery_routine_iam_binding';

  GoogleBigqueryRoutineIamBinding({
    required super.localName,
    required TfArg<String> datasetId,
    required TfArg<String> routineId,
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
           'routine_id': routineId,
           'role': role,
           'members': members,
           if (condition != null) 'condition': condition,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBigqueryRoutineIamBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
