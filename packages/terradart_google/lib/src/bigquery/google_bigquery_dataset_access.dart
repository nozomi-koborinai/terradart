// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_bigquery_dataset_access`.
const Set<String> _googleBigqueryDatasetAccessSensitive = <String>{};

/// Predefined BigQuery special group for [GoogleBigqueryDatasetAccess].
enum BigqueryDatasetAccessPredefinedGroup implements TerraformEnum {
  /// Owners of the enclosing project.
  projectOwners('projectOwners'),

  /// Readers of the enclosing project.
  projectReaders('projectReaders'),

  /// Writers of the enclosing project.
  projectWriters('projectWriters'),

  /// All authenticated BigQuery users.
  allAuthenticatedUsers('allAuthenticatedUsers');

  const BigqueryDatasetAccessPredefinedGroup(this.terraformValue);
  @override
  final String terraformValue;
}

/// Target resource types an authorized [BigqueryDatasetAccessAuthorizedDataset]
/// applies to. Currently only views are supported.
enum BigqueryDatasetAccessDatasetTargetType implements TerraformEnum {
  /// The entry applies to views in the dataset.
  views('VIEWS');

  const BigqueryDatasetAccessDatasetTargetType(this.terraformValue);
  @override
  final String terraformValue;
}

/// A reference to a BigQuery dataset (`project_id` + `dataset_id`).
@immutable
class BigqueryDatasetAccessAuthDatasetReference {
  const BigqueryDatasetAccessAuthDatasetReference({
    required this.datasetId,
    required this.projectId,
  });

  final TfArg<String> datasetId;
  final TfArg<String> projectId;

  Map<String, Object?> encode() => {
    'dataset_id': datasetId.toTfJson(),
    'project_id': projectId.toTfJson(),
  };
}

/// `dataset` access block — grants another dataset's resources access to
/// this dataset (an "authorized dataset").
@immutable
class BigqueryDatasetAccessAuthorizedDataset {
  const BigqueryDatasetAccessAuthorizedDataset({
    required this.dataset,
    required this.targetTypes,
  });

  /// The dataset being authorized.
  final BigqueryDatasetAccessAuthDatasetReference dataset;

  /// Which resource types the entry applies to (currently
  /// [BigqueryDatasetAccessDatasetTargetType.views]).
  final List<BigqueryDatasetAccessDatasetTargetType> targetTypes;

  Map<String, Object?> encode() => {
    'dataset': dataset.encode(),
    'target_types': targetTypes.map((t) => t.terraformValue).toList(),
  };
}

/// `view` access block — an authorized view that may query this dataset.
@immutable
class BigqueryDatasetAccessAuthorizedView {
  const BigqueryDatasetAccessAuthorizedView({
    required this.datasetId,
    required this.projectId,
    required this.tableId,
  });

  final TfArg<String> datasetId;
  final TfArg<String> projectId;
  final TfArg<String> tableId;

  Map<String, Object?> encode() => {
    'dataset_id': datasetId.toTfJson(),
    'project_id': projectId.toTfJson(),
    'table_id': tableId.toTfJson(),
  };
}

/// `routine` access block — an authorized routine that may access this
/// dataset.
@immutable
class BigqueryDatasetAccessAuthorizedRoutine {
  const BigqueryDatasetAccessAuthorizedRoutine({
    required this.datasetId,
    required this.projectId,
    required this.routineId,
  });

  final TfArg<String> datasetId;
  final TfArg<String> projectId;
  final TfArg<String> routineId;

  Map<String, Object?> encode() => {
    'dataset_id': datasetId.toTfJson(),
    'project_id': projectId.toTfJson(),
    'routine_id': routineId.toTfJson(),
  };
}

/// Factory wrapper for `google_bigquery_dataset_access`.
///
/// A single access entry on a BigQuery dataset, managed as a standalone
/// resource (the non-inline counterpart of `GoogleBigqueryDataset.access`).
///
/// Provide **exactly one** principal/target per entry:
/// - a principal — [userByEmail] / [groupByEmail] / [domain] /
///   [specialGroup] / [iamMember] — paired with [role]; **or**
/// - an authorized resource — [view] / [routine] / [authorizedDataset]
///   (these do **not** take a [role]).
///
/// Example (grant a group READER):
/// ```dart
/// GoogleBigqueryDatasetAccess(
///   localName: 'analysts_reader',
///   datasetId: TfArg.ref(dataset.datasetIdRef),
///   role: TfArg.literal('READER'),
///   groupByEmail: TfArg.literal('analysts@example.com'),
/// );
/// ```
final class GoogleBigqueryDatasetAccess extends Resource {
  static const String tfType = 'google_bigquery_dataset_access';

  GoogleBigqueryDatasetAccess({
    required super.localName,
    required TfArg<String> datasetId,
    TfArg<String>? role,
    TfArg<String>? userByEmail,
    TfArg<String>? groupByEmail,
    TfArg<String>? domain,
    TfArg<BigqueryDatasetAccessPredefinedGroup>? specialGroup,
    TfArg<String>? iamMember,
    BigqueryDatasetAccessAuthorizedView? view,
    BigqueryDatasetAccessAuthorizedRoutine? routine,
    BigqueryDatasetAccessAuthorizedDataset? authorizedDataset,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dataset_id': datasetId,
           if (role != null) 'role': role,
           if (userByEmail != null) 'user_by_email': userByEmail,
           if (groupByEmail != null) 'group_by_email': groupByEmail,
           if (domain != null) 'domain': domain,
           if (specialGroup != null) 'special_group': specialGroup,
           if (iamMember != null) 'iam_member': iamMember,
           if (view != null) 'view': TfArg.literal(view.encode()),
           if (routine != null) 'routine': TfArg.literal(routine.encode()),
           if (authorizedDataset != null)
             'dataset': TfArg.literal(authorizedDataset.encode()),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBigqueryDatasetAccessSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_updated_member` attribute.
  TfRef<bool> get apiUpdatedMember =>
      TfRef.attribute<bool>(this, 'api_updated_member');
}
