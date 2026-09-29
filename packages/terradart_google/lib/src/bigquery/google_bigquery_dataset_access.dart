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

/// Exactly one of `user_by_email`, `group_by_email`, `domain`, `special_group`, `iam_member`, `view`, `dataset`, `routine` on `google_bigquery_dataset_access`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.userByEmail(...)`.
sealed class BigqueryDatasetAccessUserByEmailOrGroupByEmailOrDomainOrSpecialGroupOrIamMemberOrViewOrDatasetOrRoutine {
  const BigqueryDatasetAccessUserByEmailOrGroupByEmailOrDomainOrSpecialGroupOrIamMemberOrViewOrDatasetOrRoutine();

  /// Sets `user_by_email`.
  const factory BigqueryDatasetAccessUserByEmailOrGroupByEmailOrDomainOrSpecialGroupOrIamMemberOrViewOrDatasetOrRoutine.userByEmail(
    TfArg<String> userByEmail,
  ) = BigqueryDatasetAccessUserByEmailOrGroupByEmailOrDomainOrSpecialGroupOrIamMemberOrViewOrDatasetOrRoutineUserByEmail;

  /// Sets `group_by_email`.
  const factory BigqueryDatasetAccessUserByEmailOrGroupByEmailOrDomainOrSpecialGroupOrIamMemberOrViewOrDatasetOrRoutine.groupByEmail(
    TfArg<String> groupByEmail,
  ) = BigqueryDatasetAccessUserByEmailOrGroupByEmailOrDomainOrSpecialGroupOrIamMemberOrViewOrDatasetOrRoutineGroupByEmail;

  /// Sets `domain`.
  const factory BigqueryDatasetAccessUserByEmailOrGroupByEmailOrDomainOrSpecialGroupOrIamMemberOrViewOrDatasetOrRoutine.domain(
    TfArg<String> domain,
  ) = BigqueryDatasetAccessUserByEmailOrGroupByEmailOrDomainOrSpecialGroupOrIamMemberOrViewOrDatasetOrRoutineDomain;

  /// Sets `special_group`.
  const factory BigqueryDatasetAccessUserByEmailOrGroupByEmailOrDomainOrSpecialGroupOrIamMemberOrViewOrDatasetOrRoutine.specialGroup(
    TfArg<BigqueryDatasetAccessPredefinedGroup> specialGroup,
  ) = BigqueryDatasetAccessUserByEmailOrGroupByEmailOrDomainOrSpecialGroupOrIamMemberOrViewOrDatasetOrRoutineSpecialGroup;

  /// Sets `iam_member`.
  const factory BigqueryDatasetAccessUserByEmailOrGroupByEmailOrDomainOrSpecialGroupOrIamMemberOrViewOrDatasetOrRoutine.iamMember(
    TfArg<String> iamMember,
  ) = BigqueryDatasetAccessUserByEmailOrGroupByEmailOrDomainOrSpecialGroupOrIamMemberOrViewOrDatasetOrRoutineIamMember;

  /// Sets `view`.
  const factory BigqueryDatasetAccessUserByEmailOrGroupByEmailOrDomainOrSpecialGroupOrIamMemberOrViewOrDatasetOrRoutine.view(
    BigqueryDatasetAccessAuthorizedView view,
  ) = BigqueryDatasetAccessUserByEmailOrGroupByEmailOrDomainOrSpecialGroupOrIamMemberOrViewOrDatasetOrRoutineView;

  /// Sets `dataset`.
  const factory BigqueryDatasetAccessUserByEmailOrGroupByEmailOrDomainOrSpecialGroupOrIamMemberOrViewOrDatasetOrRoutine.authorizedDataset(
    BigqueryDatasetAccessAuthorizedDataset authorizedDataset,
  ) = BigqueryDatasetAccessUserByEmailOrGroupByEmailOrDomainOrSpecialGroupOrIamMemberOrViewOrDatasetOrRoutineDataset;

  /// Sets `routine`.
  const factory BigqueryDatasetAccessUserByEmailOrGroupByEmailOrDomainOrSpecialGroupOrIamMemberOrViewOrDatasetOrRoutine.routine(
    BigqueryDatasetAccessAuthorizedRoutine routine,
  ) = BigqueryDatasetAccessUserByEmailOrGroupByEmailOrDomainOrSpecialGroupOrIamMemberOrViewOrDatasetOrRoutineRoutine;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [BigqueryDatasetAccessUserByEmailOrGroupByEmailOrDomainOrSpecialGroupOrIamMemberOrViewOrDatasetOrRoutine.userByEmail] choice: sets `user_by_email`.
final class BigqueryDatasetAccessUserByEmailOrGroupByEmailOrDomainOrSpecialGroupOrIamMemberOrViewOrDatasetOrRoutineUserByEmail
    extends
        BigqueryDatasetAccessUserByEmailOrGroupByEmailOrDomainOrSpecialGroupOrIamMemberOrViewOrDatasetOrRoutine {
  const BigqueryDatasetAccessUserByEmailOrGroupByEmailOrDomainOrSpecialGroupOrIamMemberOrViewOrDatasetOrRoutineUserByEmail(
    this.userByEmail,
  );

  final TfArg<String> userByEmail;

  @override
  String get blockKey => 'user_by_email';

  @override
  Map<String, Object?> encode() => {'user_by_email': userByEmail.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'user_by_email': userByEmail};
}

/// The [BigqueryDatasetAccessUserByEmailOrGroupByEmailOrDomainOrSpecialGroupOrIamMemberOrViewOrDatasetOrRoutine.groupByEmail] choice: sets `group_by_email`.
final class BigqueryDatasetAccessUserByEmailOrGroupByEmailOrDomainOrSpecialGroupOrIamMemberOrViewOrDatasetOrRoutineGroupByEmail
    extends
        BigqueryDatasetAccessUserByEmailOrGroupByEmailOrDomainOrSpecialGroupOrIamMemberOrViewOrDatasetOrRoutine {
  const BigqueryDatasetAccessUserByEmailOrGroupByEmailOrDomainOrSpecialGroupOrIamMemberOrViewOrDatasetOrRoutineGroupByEmail(
    this.groupByEmail,
  );

  final TfArg<String> groupByEmail;

  @override
  String get blockKey => 'group_by_email';

  @override
  Map<String, Object?> encode() => {'group_by_email': groupByEmail.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'group_by_email': groupByEmail};
}

/// The [BigqueryDatasetAccessUserByEmailOrGroupByEmailOrDomainOrSpecialGroupOrIamMemberOrViewOrDatasetOrRoutine.domain] choice: sets `domain`.
final class BigqueryDatasetAccessUserByEmailOrGroupByEmailOrDomainOrSpecialGroupOrIamMemberOrViewOrDatasetOrRoutineDomain
    extends
        BigqueryDatasetAccessUserByEmailOrGroupByEmailOrDomainOrSpecialGroupOrIamMemberOrViewOrDatasetOrRoutine {
  const BigqueryDatasetAccessUserByEmailOrGroupByEmailOrDomainOrSpecialGroupOrIamMemberOrViewOrDatasetOrRoutineDomain(
    this.domain,
  );

  final TfArg<String> domain;

  @override
  String get blockKey => 'domain';

  @override
  Map<String, Object?> encode() => {'domain': domain.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'domain': domain};
}

/// The [BigqueryDatasetAccessUserByEmailOrGroupByEmailOrDomainOrSpecialGroupOrIamMemberOrViewOrDatasetOrRoutine.specialGroup] choice: sets `special_group`.
final class BigqueryDatasetAccessUserByEmailOrGroupByEmailOrDomainOrSpecialGroupOrIamMemberOrViewOrDatasetOrRoutineSpecialGroup
    extends
        BigqueryDatasetAccessUserByEmailOrGroupByEmailOrDomainOrSpecialGroupOrIamMemberOrViewOrDatasetOrRoutine {
  const BigqueryDatasetAccessUserByEmailOrGroupByEmailOrDomainOrSpecialGroupOrIamMemberOrViewOrDatasetOrRoutineSpecialGroup(
    this.specialGroup,
  );

  final TfArg<BigqueryDatasetAccessPredefinedGroup> specialGroup;

  @override
  String get blockKey => 'special_group';

  @override
  Map<String, Object?> encode() => {'special_group': specialGroup.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'special_group': specialGroup};
}

/// The [BigqueryDatasetAccessUserByEmailOrGroupByEmailOrDomainOrSpecialGroupOrIamMemberOrViewOrDatasetOrRoutine.iamMember] choice: sets `iam_member`.
final class BigqueryDatasetAccessUserByEmailOrGroupByEmailOrDomainOrSpecialGroupOrIamMemberOrViewOrDatasetOrRoutineIamMember
    extends
        BigqueryDatasetAccessUserByEmailOrGroupByEmailOrDomainOrSpecialGroupOrIamMemberOrViewOrDatasetOrRoutine {
  const BigqueryDatasetAccessUserByEmailOrGroupByEmailOrDomainOrSpecialGroupOrIamMemberOrViewOrDatasetOrRoutineIamMember(
    this.iamMember,
  );

  final TfArg<String> iamMember;

  @override
  String get blockKey => 'iam_member';

  @override
  Map<String, Object?> encode() => {'iam_member': iamMember.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'iam_member': iamMember};
}

/// The [BigqueryDatasetAccessUserByEmailOrGroupByEmailOrDomainOrSpecialGroupOrIamMemberOrViewOrDatasetOrRoutine.view] choice: sets `view`.
final class BigqueryDatasetAccessUserByEmailOrGroupByEmailOrDomainOrSpecialGroupOrIamMemberOrViewOrDatasetOrRoutineView
    extends
        BigqueryDatasetAccessUserByEmailOrGroupByEmailOrDomainOrSpecialGroupOrIamMemberOrViewOrDatasetOrRoutine {
  const BigqueryDatasetAccessUserByEmailOrGroupByEmailOrDomainOrSpecialGroupOrIamMemberOrViewOrDatasetOrRoutineView(
    this.view,
  );

  final BigqueryDatasetAccessAuthorizedView view;

  @override
  String get blockKey => 'view';

  @override
  Map<String, Object?> encode() => {'view': view.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'view': TfArg.literal(view.encode()),
  };
}

/// The [BigqueryDatasetAccessUserByEmailOrGroupByEmailOrDomainOrSpecialGroupOrIamMemberOrViewOrDatasetOrRoutine.authorizedDataset] choice: sets `dataset`.
final class BigqueryDatasetAccessUserByEmailOrGroupByEmailOrDomainOrSpecialGroupOrIamMemberOrViewOrDatasetOrRoutineDataset
    extends
        BigqueryDatasetAccessUserByEmailOrGroupByEmailOrDomainOrSpecialGroupOrIamMemberOrViewOrDatasetOrRoutine {
  const BigqueryDatasetAccessUserByEmailOrGroupByEmailOrDomainOrSpecialGroupOrIamMemberOrViewOrDatasetOrRoutineDataset(
    this.authorizedDataset,
  );

  final BigqueryDatasetAccessAuthorizedDataset authorizedDataset;

  @override
  String get blockKey => 'dataset';

  @override
  Map<String, Object?> encode() => {'dataset': authorizedDataset.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'dataset': TfArg.literal(authorizedDataset.encode()),
  };
}

/// The [BigqueryDatasetAccessUserByEmailOrGroupByEmailOrDomainOrSpecialGroupOrIamMemberOrViewOrDatasetOrRoutine.routine] choice: sets `routine`.
final class BigqueryDatasetAccessUserByEmailOrGroupByEmailOrDomainOrSpecialGroupOrIamMemberOrViewOrDatasetOrRoutineRoutine
    extends
        BigqueryDatasetAccessUserByEmailOrGroupByEmailOrDomainOrSpecialGroupOrIamMemberOrViewOrDatasetOrRoutine {
  const BigqueryDatasetAccessUserByEmailOrGroupByEmailOrDomainOrSpecialGroupOrIamMemberOrViewOrDatasetOrRoutineRoutine(
    this.routine,
  );

  final BigqueryDatasetAccessAuthorizedRoutine routine;

  @override
  String get blockKey => 'routine';

  @override
  Map<String, Object?> encode() => {'routine': routine.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'routine': TfArg.literal(routine.encode()),
  };
}

/// Factory wrapper for `google_bigquery_dataset_access`.
///
/// Gives dataset access for a single entity. This resource is intended to be
/// used in cases where it is not possible to compile a full list of access
/// blocks to include in a `google_bigquery_dataset` resource, to enable them to
/// be added separately.
///
/// ~> **Note:** If this resource is used alongside a `google_bigquery_dataset`
/// resource, the dataset resource must either have no defined `access` blocks
/// or a `lifecycle` block with `ignore_changes = [access]` so they don't fight
/// over which accesses should be on the dataset. Additionally, both resource
/// cannot be modified in the same apply.
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
    required BigqueryDatasetAccessUserByEmailOrGroupByEmailOrDomainOrSpecialGroupOrIamMemberOrViewOrDatasetOrRoutine
    userByEmailOrGroupByEmailOrDomainOrSpecialGroupOrIamMemberOrViewOrDatasetOrRoutine,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dataset_id': datasetId,
           if (role != null) 'role': role,
           ...userByEmailOrGroupByEmailOrDomainOrSpecialGroupOrIamMemberOrViewOrDatasetOrRoutine
               .argMap,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBigqueryDatasetAccessSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBigqueryDatasetAccess>`.
  RefTo<GoogleBigqueryDatasetAccess> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_updated_member` attribute.
  TfRef<bool> get apiUpdatedMember =>
      TfRef.attribute<bool>(this, 'api_updated_member');
}
