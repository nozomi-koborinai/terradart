// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_bigquery_routine_iam_policy`.
const Set<String> _googleBigqueryRoutineIamPolicySensitive = <String>{};

/// Factory wrapper for `google_bigquery_routine_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleBigqueryRoutineIamPolicy extends Data {
  static const String tfType = 'google_bigquery_routine_iam_policy';

  DataGoogleBigqueryRoutineIamPolicy({
    required super.localName,
    required TfArg<String> datasetId,
    TfArg<String>? project,
    required TfArg<String> routineId,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dataset_id': datasetId,
           if (project != null) 'project': project,
           'routine_id': routineId,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBigqueryRoutineIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');
}
