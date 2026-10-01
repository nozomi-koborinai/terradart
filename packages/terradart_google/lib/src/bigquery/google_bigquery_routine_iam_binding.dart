// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../bigquery/google_bigquery_routine.dart' show GoogleBigqueryRoutine;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_bigquery_routine_iam_binding`.
const Set<String> _googleBigqueryRoutineIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_bigquery_routine_iam_binding` (derived from provider schema).
@immutable
final class BigqueryRoutineIamBindingCondition {
  const BigqueryRoutineIamBindingCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String> title;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'title': title.toTfJson(),
  };
}

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
    TfArg<String>? datasetId,
    required RefTo<GoogleBigqueryRoutine> routine,
    required TfArg<String> role,
    required TfArg<List<IamPrincipal>> members,
    BigqueryRoutineIamBindingCondition? condition,
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
           'role': role,
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'project': ?(project ?? routine.alsoAs('project')),
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

  /// Reference to `dataset_id` attribute.
  TfRef<String> get datasetId => TfRef.attribute<String>(this, 'dataset_id');

  /// Reference to `members` attribute.
  TfRef<List<String>> get members =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');

  /// Reference to `routine_id` attribute.
  TfRef<String> get routineId => TfRef.attribute<String>(this, 'routine_id');
}
