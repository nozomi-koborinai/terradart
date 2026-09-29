// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../bigquery/google_bigquery_dataset.dart' show GoogleBigqueryDataset;

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
    required RefTo<GoogleBigqueryDataset> datasetId,
    required TfArg<String> routineId,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<Map<String, dynamic>>? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dataset_id': datasetId.encodeAs('dataset_id'),
           'routine_id': routineId,
           'role': role,
           'members': members,
           'condition': ?condition,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBigqueryRoutineIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBigqueryRoutineIamBinding>`.
  RefTo<GoogleBigqueryRoutineIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
