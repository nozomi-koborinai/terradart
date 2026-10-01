// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../bigquery/google_bigquery_routine.dart' show GoogleBigqueryRoutine;

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

  GoogleBigqueryRoutineIamPolicy(
    super.localName, {
    TfArg<String>? datasetId,
    required RefTo<GoogleBigqueryRoutine> routine,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dataset_id': ?(datasetId ?? routine.alsoAs('dataset_id')),
           'routine_id': routine.encodeAs('routine_id'),
           'policy_data': policyData,
           'project': ?(project ?? routine.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBigqueryRoutineIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBigqueryRoutineIamPolicy>`.
  RefTo<GoogleBigqueryRoutineIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `dataset_id` attribute.
  TfRef<String> get datasetId => TfRef.attribute<String>(this, 'dataset_id');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `routine_id` attribute.
  TfRef<String> get routineId => TfRef.attribute<String>(this, 'routine_id');
}
