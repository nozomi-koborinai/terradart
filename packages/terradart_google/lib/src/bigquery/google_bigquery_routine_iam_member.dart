// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_bigquery_routine_iam_member`.
const Set<String> _googleBigqueryRoutineIamMemberSensitive = <String>{};

/// Factory wrapper for `google_bigquery_routine_iam_member`.
final class GoogleBigqueryRoutineIamMember extends Resource {
  static const String tfType = 'google_bigquery_routine_iam_member';

  GoogleBigqueryRoutineIamMember({
    required super.localName,
    required TfArg<String> datasetId,
    required TfArg<String> routineId,
    required TfArg<String> role,
    required TfArg<String> member,
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
           'member': member,
           if (condition != null) 'condition': condition,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBigqueryRoutineIamMemberSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
