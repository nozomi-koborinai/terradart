// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_bigquery_routine_iam_policy`.
const Set<String> _googleBigqueryRoutineIamPolicySensitive = <String>{};

/// Factory wrapper for `google_bigquery_routine_iam_policy`.
///
/// Authoritative IAM policy for a BigQuery routine.
///
/// `policy_data` replaces the entire IAM policy on the routine. Prefer
/// [GoogleBigqueryRoutineIamMember] for single-principal grants.
final class GoogleBigqueryRoutineIamPolicy extends Resource {
  static const String tfType = 'google_bigquery_routine_iam_policy';

  GoogleBigqueryRoutineIamPolicy({
    required super.localName,
    required TfArg<String> datasetId,
    required TfArg<String> routineId,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dataset_id': datasetId,
           'routine_id': routineId,
           'policy_data': policyData,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBigqueryRoutineIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
