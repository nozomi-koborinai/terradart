// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import '../bigquery/google_bigquery_dataset.dart'
    show BigqueryDatasetAccessCondition;
import 'package:terradart_core/terradart_core.dart';

import '../bigquery/google_bigquery_dataset.dart' show GoogleBigqueryDataset;

/// Sensitive field paths for `google_bigquery_dataset_access`.
const Set<String> _googleBigqueryDatasetAccessSensitive = <String>{};

/// Predefined BigQuery special group for [GoogleBigqueryDatasetAccess].
extension type const BigqueryDatasetAccessPredefinedGroup._(TfArg<String> _)
    implements TfArg<String> {
  BigqueryDatasetAccessPredefinedGroup.variable(String name)
    : this._(TfArg.variable(name));
  BigqueryDatasetAccessPredefinedGroup.expression(String template)
    : this._(TfArg.expression(template));
  const BigqueryDatasetAccessPredefinedGroup.arg(TfArg<String> arg)
    : this._(arg);

  /// Owners of the enclosing project.
  static const projectOwners = BigqueryDatasetAccessPredefinedGroup._(
    TfArgLiteral('projectOwners'),
  );

  /// Readers of the enclosing project.
  static const projectReaders = BigqueryDatasetAccessPredefinedGroup._(
    TfArgLiteral('projectReaders'),
  );

  /// Writers of the enclosing project.
  static const projectWriters = BigqueryDatasetAccessPredefinedGroup._(
    TfArgLiteral('projectWriters'),
  );

  /// All authenticated BigQuery users.
  static const allAuthenticatedUsers = BigqueryDatasetAccessPredefinedGroup._(
    TfArgLiteral('allAuthenticatedUsers'),
  );

  static const List<BigqueryDatasetAccessPredefinedGroup> values = [
    projectOwners,
    projectReaders,
    projectWriters,
    allAuthenticatedUsers,
  ];
}

/// Target resource types an authorized [BigqueryDatasetAccessAuthorizedDataset]
/// applies to. Currently only views are supported.
extension type const BigqueryDatasetAccessDatasetTargetType._(TfArg<String> _)
    implements TfArg<String> {
  BigqueryDatasetAccessDatasetTargetType.variable(String name)
    : this._(TfArg.variable(name));
  BigqueryDatasetAccessDatasetTargetType.expression(String template)
    : this._(TfArg.expression(template));
  const BigqueryDatasetAccessDatasetTargetType.arg(TfArg<String> arg)
    : this._(arg);

  /// The entry applies to views in the dataset.
  static const views = BigqueryDatasetAccessDatasetTargetType._(
    TfArgLiteral('VIEWS'),
  );

  static const List<BigqueryDatasetAccessDatasetTargetType> values = [views];
}

/// A reference to a BigQuery dataset (`project_id` + `dataset_id`).
@immutable
class BigqueryDatasetAccessAuthDatasetReference {
  const BigqueryDatasetAccessAuthDatasetReference({
    required this.datasetId,
    required this.projectId,
  });

  final RefTo<GoogleBigqueryDataset> datasetId;
  final TfArg<String> projectId;

  @internal
  Map<String, Object?> encode() => {
    'dataset_id': datasetId.encodeAs('dataset_id').toTfJson(),
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

  @internal
  Map<String, Object?> encode() => {
    'dataset': dataset.encode(),
    'target_types': targetTypes.map((t) => t.toTfJson()).toList(),
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

  final RefTo<GoogleBigqueryDataset> datasetId;
  final TfArg<String> projectId;
  final TfArg<String> tableId;

  @internal
  Map<String, Object?> encode() => {
    'dataset_id': datasetId.encodeAs('dataset_id').toTfJson(),
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

  final RefTo<GoogleBigqueryDataset> datasetId;
  final TfArg<String> projectId;
  final TfArg<String> routineId;

  @internal
  Map<String, Object?> encode() => {
    'dataset_id': datasetId.encodeAs('dataset_id').toTfJson(),
    'project_id': projectId.toTfJson(),
    'routine_id': routineId.toTfJson(),
  };
}

/// Exactly one of `user_by_email`, `group_by_email`, `domain`, `special_group`, `iam_member`, `view`, `dataset`, `routine` on `google_bigquery_dataset_access`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.userByEmail(...)`.
sealed class BigqueryDatasetAccessGrantee {
  const BigqueryDatasetAccessGrantee();

  /// Sets `user_by_email`.
  const factory BigqueryDatasetAccessGrantee.userByEmail(
    TfArg<String> userByEmail,
  ) = BigqueryDatasetAccessGranteeUserByEmail;

  /// Sets `group_by_email`.
  const factory BigqueryDatasetAccessGrantee.groupByEmail(
    TfArg<String> groupByEmail,
  ) = BigqueryDatasetAccessGranteeGroupByEmail;

  /// Sets `domain`.
  const factory BigqueryDatasetAccessGrantee.domain(TfArg<String> domain) =
      BigqueryDatasetAccessGranteeDomain;

  /// Sets `special_group`.
  const factory BigqueryDatasetAccessGrantee.specialGroup(
    BigqueryDatasetAccessPredefinedGroup specialGroup,
  ) = BigqueryDatasetAccessGranteeSpecialGroup;

  /// Sets `iam_member`.
  const factory BigqueryDatasetAccessGrantee.iamMember(
    TfArg<String> iamMember,
  ) = BigqueryDatasetAccessGranteeIamMember;

  /// Sets `view`.
  const factory BigqueryDatasetAccessGrantee.view(
    BigqueryDatasetAccessAuthorizedView view,
  ) = BigqueryDatasetAccessGranteeView;

  /// Sets `dataset`.
  const factory BigqueryDatasetAccessGrantee.authorizedDataset(
    BigqueryDatasetAccessAuthorizedDataset authorizedDataset,
  ) = BigqueryDatasetAccessGranteeDataset;

  /// Sets `routine`.
  const factory BigqueryDatasetAccessGrantee.routine(
    BigqueryDatasetAccessAuthorizedRoutine routine,
  ) = BigqueryDatasetAccessGranteeRoutine;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [BigqueryDatasetAccessGrantee.userByEmail] choice: sets `user_by_email`.
final class BigqueryDatasetAccessGranteeUserByEmail
    extends BigqueryDatasetAccessGrantee {
  const BigqueryDatasetAccessGranteeUserByEmail(this.userByEmail);

  final TfArg<String> userByEmail;

  @internal
  @override
  String get blockKey => 'user_by_email';

  @internal
  @override
  Map<String, Object?> encode() => {'user_by_email': userByEmail.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'user_by_email': userByEmail};
}

/// The [BigqueryDatasetAccessGrantee.groupByEmail] choice: sets `group_by_email`.
final class BigqueryDatasetAccessGranteeGroupByEmail
    extends BigqueryDatasetAccessGrantee {
  const BigqueryDatasetAccessGranteeGroupByEmail(this.groupByEmail);

  final TfArg<String> groupByEmail;

  @internal
  @override
  String get blockKey => 'group_by_email';

  @internal
  @override
  Map<String, Object?> encode() => {'group_by_email': groupByEmail.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'group_by_email': groupByEmail};
}

/// The [BigqueryDatasetAccessGrantee.domain] choice: sets `domain`.
final class BigqueryDatasetAccessGranteeDomain
    extends BigqueryDatasetAccessGrantee {
  const BigqueryDatasetAccessGranteeDomain(this.domain);

  final TfArg<String> domain;

  @internal
  @override
  String get blockKey => 'domain';

  @internal
  @override
  Map<String, Object?> encode() => {'domain': domain.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'domain': domain};
}

/// The [BigqueryDatasetAccessGrantee.specialGroup] choice: sets `special_group`.
final class BigqueryDatasetAccessGranteeSpecialGroup
    extends BigqueryDatasetAccessGrantee {
  const BigqueryDatasetAccessGranteeSpecialGroup(this.specialGroup);

  final BigqueryDatasetAccessPredefinedGroup specialGroup;

  @internal
  @override
  String get blockKey => 'special_group';

  @internal
  @override
  Map<String, Object?> encode() => {'special_group': specialGroup.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'special_group': specialGroup};
}

/// The [BigqueryDatasetAccessGrantee.iamMember] choice: sets `iam_member`.
final class BigqueryDatasetAccessGranteeIamMember
    extends BigqueryDatasetAccessGrantee {
  const BigqueryDatasetAccessGranteeIamMember(this.iamMember);

  final TfArg<String> iamMember;

  @internal
  @override
  String get blockKey => 'iam_member';

  @internal
  @override
  Map<String, Object?> encode() => {'iam_member': iamMember.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'iam_member': iamMember};
}

/// The [BigqueryDatasetAccessGrantee.view] choice: sets `view`.
final class BigqueryDatasetAccessGranteeView
    extends BigqueryDatasetAccessGrantee {
  const BigqueryDatasetAccessGranteeView(this.view);

  final BigqueryDatasetAccessAuthorizedView view;

  @internal
  @override
  String get blockKey => 'view';

  @internal
  @override
  Map<String, Object?> encode() => {'view': view.encode()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'view': TfArg.literal(view.encode()),
  };
}

/// The [BigqueryDatasetAccessGrantee.authorizedDataset] choice: sets `dataset`.
final class BigqueryDatasetAccessGranteeDataset
    extends BigqueryDatasetAccessGrantee {
  const BigqueryDatasetAccessGranteeDataset(this.authorizedDataset);

  final BigqueryDatasetAccessAuthorizedDataset authorizedDataset;

  @internal
  @override
  String get blockKey => 'dataset';

  @internal
  @override
  Map<String, Object?> encode() => {'dataset': authorizedDataset.encode()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'dataset': TfArg.literal(authorizedDataset.encode()),
  };
}

/// The [BigqueryDatasetAccessGrantee.routine] choice: sets `routine`.
final class BigqueryDatasetAccessGranteeRoutine
    extends BigqueryDatasetAccessGrantee {
  const BigqueryDatasetAccessGranteeRoutine(this.routine);

  final BigqueryDatasetAccessAuthorizedRoutine routine;

  @internal
  @override
  String get blockKey => 'routine';

  @internal
  @override
  Map<String, Object?> encode() => {'routine': routine.encode()};

  @internal
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
///   'analysts_reader',
///   datasetId: dataset.ref,
///   role: .literal('READER'),
///   grantee: .groupByEmail(.literal('analysts@example.com')),
/// );
/// ```
final class GoogleBigqueryDatasetAccess extends Resource {
  static const String tfType = 'google_bigquery_dataset_access';

  GoogleBigqueryDatasetAccess(
    super.localName, {
    required RefTo<GoogleBigqueryDataset> datasetId,
    TfArg<String>? role,
    required BigqueryDatasetAccessGrantee grantee,
    BigqueryDatasetAccessCondition? condition,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dataset_id': datasetId.encodeAs('dataset_id'),
           'role': ?role,
           ...grantee.argMap,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
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

  /// Reference to `dataset_id` attribute.
  TfRef<String> get datasetId => TfRef.attribute<String>(this, 'dataset_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `domain` attribute.
  TfRef<String> get domain => TfRef.attribute<String>(this, 'domain');

  /// Reference to `group_by_email` attribute.
  TfRef<String> get groupByEmail =>
      TfRef.attribute<String>(this, 'group_by_email');

  /// Reference to `iam_member` attribute.
  TfRef<String> get iamMember => TfRef.attribute<String>(this, 'iam_member');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');

  /// Reference to `special_group` attribute.
  TfRef<String> get specialGroup =>
      TfRef.attribute<String>(this, 'special_group');

  /// Reference to `user_by_email` attribute.
  TfRef<String> get userByEmail =>
      TfRef.attribute<String>(this, 'user_by_email');
}
