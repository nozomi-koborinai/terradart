// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_bigquery_dataset`.
const Set<String> _googleBigqueryDatasetSensitive = <String>{};

// ===========================================================================
// Enums
// ===========================================================================

/// Storage billing model for `google_bigquery_dataset.storage_billing_model`.
/// `LOGICAL` (default per BigQuery API) bills by logical bytes; `PHYSICAL`
/// bills by compressed on-disk bytes (typically cheaper for high-compression
/// data with infrequent reads).
extension type const DatasetStorageBillingModel._(TfArg<String> _)
    implements TfArg<String> {
  DatasetStorageBillingModel.variable(String name)
    : this._(TfArg.variable(name));
  DatasetStorageBillingModel.expression(String template)
    : this._(TfArg.expression(template));
  const DatasetStorageBillingModel.arg(TfArg<String> arg) : this._(arg);

  static const logical = DatasetStorageBillingModel._(TfArgLiteral('LOGICAL'));
  static const physical = DatasetStorageBillingModel._(
    TfArgLiteral('PHYSICAL'),
  );

  static const List<DatasetStorageBillingModel> values = [logical, physical];
}

// ===========================================================================
// BigqueryDatasetAccess — sealed (8 variants matching BigQuery's discriminated union)
// ===========================================================================
//
// BigQuery's `access` entry accepts exactly one identity field per entry.
// Modeling as a sealed hierarchy makes the choice exhaustive at the type
// level — the compiler enforces that callers pick one variant per
// [BigqueryDatasetAccess] instance. All variants may carry an optional [BigqueryDatasetAccessCondition]
// (CEL binding) per the underlying API. The five identity-typed variants
// accept a `role`; the reference-typed variants (view / dataset / routine)
// omit it because BigQuery infers the role from the resource shape.

/// Discriminated-union base for one `access` block entry.
///
/// Subclasses provide an [encode] method returning the snake-case map
/// for synth.
@immutable
sealed class BigqueryDatasetAccess {
  const BigqueryDatasetAccess({this.condition});

  /// `access` entry granting [role] to [userByEmail].
  const factory BigqueryDatasetAccess.userByEmail({
    required TfArg<String> userByEmail,
    TfArg<String>? role,
    BigqueryDatasetAccessCondition? condition,
  }) = BigqueryDatasetAccessUserByEmail;

  /// `access` entry granting [role] to [groupByEmail].
  const factory BigqueryDatasetAccess.groupByEmail({
    required TfArg<String> groupByEmail,
    TfArg<String>? role,
    BigqueryDatasetAccessCondition? condition,
  }) = BigqueryDatasetAccessGroupByEmail;

  /// `access` entry granting [role] to [specialGroup].
  const factory BigqueryDatasetAccess.specialGroup({
    required TfArg<String> specialGroup,
    TfArg<String>? role,
    BigqueryDatasetAccessCondition? condition,
  }) = BigqueryDatasetAccessSpecialGroup;

  /// `access` entry granting [role] to all members of [domain].
  const factory BigqueryDatasetAccess.domain({
    required TfArg<String> domain,
    TfArg<String>? role,
    BigqueryDatasetAccessCondition? condition,
  }) = BigqueryDatasetAccessDomain;

  /// `access` entry granting [role] to an arbitrary IAM principal (e.g.
  const factory BigqueryDatasetAccess.iamMember({
    required TfArg<String> iamMember,
    TfArg<String>? role,
    BigqueryDatasetAccessCondition? condition,
  }) = BigqueryDatasetAccessIamMember;

  /// `access` entry referring to a BigQuery view.
  const factory BigqueryDatasetAccess.view({
    required BigqueryDatasetView view,
    BigqueryDatasetAccessCondition? condition,
  }) = BigqueryDatasetAccessView;

  /// `access` entry referring to a dataset (transitive read for resource types listed in `targetTypes`).
  const factory BigqueryDatasetAccess.dataset({
    required BigqueryDatasetAccessChild dataset,
    BigqueryDatasetAccessCondition? condition,
  }) = BigqueryDatasetAccessDataset;

  /// `access` entry referring to a BigQuery routine.
  const factory BigqueryDatasetAccess.routine({
    required BigqueryDatasetRoutineRef routine,
    BigqueryDatasetAccessCondition? condition,
  }) = BigqueryDatasetAccessRoutine;

  /// Optional CEL binding restricting when this access entry applies.
  final BigqueryDatasetAccessCondition? condition;

  /// Encodes this entry into the snake-case map shape expected by
  /// Terraform's bigquery_dataset.access schema.
  @internal
  Map<String, Object?> encode();
}

/// `access` entry granting [role] to [userByEmail].
@immutable
final class BigqueryDatasetAccessUserByEmail extends BigqueryDatasetAccess {
  const BigqueryDatasetAccessUserByEmail({
    required this.userByEmail,
    this.role,
    super.condition,
  });

  final TfArg<String> userByEmail;
  final TfArg<String>? role;

  @override
  @internal
  Map<String, Object?> encode() => {
    'user_by_email': userByEmail.toTfJson(),
    if (role != null) 'role': role!.toTfJson(),
    if (condition != null) 'condition': [condition!.encode()],
  };
}

/// `access` entry granting [role] to [groupByEmail].
@immutable
final class BigqueryDatasetAccessGroupByEmail extends BigqueryDatasetAccess {
  const BigqueryDatasetAccessGroupByEmail({
    required this.groupByEmail,
    this.role,
    super.condition,
  });

  final TfArg<String> groupByEmail;
  final TfArg<String>? role;

  @override
  @internal
  Map<String, Object?> encode() => {
    'group_by_email': groupByEmail.toTfJson(),
    if (role != null) 'role': role!.toTfJson(),
    if (condition != null) 'condition': [condition!.encode()],
  };
}

/// `access` entry granting [role] to [specialGroup]. Documented values
/// include `projectOwners`, `projectReaders`, `projectWriters`,
/// `allAuthenticatedUsers` (BigQuery treats these as case-sensitive).
@immutable
final class BigqueryDatasetAccessSpecialGroup extends BigqueryDatasetAccess {
  const BigqueryDatasetAccessSpecialGroup({
    required this.specialGroup,
    this.role,
    super.condition,
  });

  final TfArg<String> specialGroup;
  final TfArg<String>? role;

  @override
  @internal
  Map<String, Object?> encode() => {
    'special_group': specialGroup.toTfJson(),
    if (role != null) 'role': role!.toTfJson(),
    if (condition != null) 'condition': [condition!.encode()],
  };
}

/// `access` entry granting [role] to all members of [domain].
@immutable
final class BigqueryDatasetAccessDomain extends BigqueryDatasetAccess {
  const BigqueryDatasetAccessDomain({
    required this.domain,
    this.role,
    super.condition,
  });

  final TfArg<String> domain;
  final TfArg<String>? role;

  @override
  @internal
  Map<String, Object?> encode() => {
    'domain': domain.toTfJson(),
    if (role != null) 'role': role!.toTfJson(),
    if (condition != null) 'condition': [condition!.encode()],
  };
}

/// `access` entry granting [role] to an arbitrary IAM principal (e.g.
/// `allUsers`, service identities) via [iamMember].
@immutable
final class BigqueryDatasetAccessIamMember extends BigqueryDatasetAccess {
  const BigqueryDatasetAccessIamMember({
    required this.iamMember,
    this.role,
    super.condition,
  });

  final TfArg<String> iamMember;
  final TfArg<String>? role;

  @override
  @internal
  Map<String, Object?> encode() => {
    'iam_member': iamMember.toTfJson(),
    if (role != null) 'role': role!.toTfJson(),
    if (condition != null) 'condition': [condition!.encode()],
  };
}

/// `access` entry referring to a BigQuery view. Granting view access lets
/// queries against the view read tables in this dataset. Role is not
/// required for view bindings.
@immutable
final class BigqueryDatasetAccessView extends BigqueryDatasetAccess {
  const BigqueryDatasetAccessView({required this.view, super.condition});

  final BigqueryDatasetView view;

  @override
  @internal
  Map<String, Object?> encode() => {
    'view': [view.encode()],
    if (condition != null) 'condition': [condition!.encode()],
  };
}

/// `access` entry referring to a dataset (transitive read for resource
/// types listed in `targetTypes`).
@immutable
final class BigqueryDatasetAccessDataset extends BigqueryDatasetAccess {
  const BigqueryDatasetAccessDataset({required this.dataset, super.condition});

  final BigqueryDatasetAccessChild dataset;

  @override
  @internal
  Map<String, Object?> encode() => {
    'dataset': [dataset.encode()],
    if (condition != null) 'condition': [condition!.encode()],
  };
}

/// `access` entry referring to a BigQuery routine. Role is not required.
@immutable
final class BigqueryDatasetAccessRoutine extends BigqueryDatasetAccess {
  const BigqueryDatasetAccessRoutine({required this.routine, super.condition});

  final BigqueryDatasetRoutineRef routine;

  @override
  @internal
  Map<String, Object?> encode() => {
    'routine': [routine.encode()],
    if (condition != null) 'condition': [condition!.encode()],
  };
}

// ===========================================================================
// BigqueryDatasetAccess sub-block helpers
// ===========================================================================

/// `access.view` sub-block — fully qualified BigQuery view reference.
@immutable
class BigqueryDatasetView {
  const BigqueryDatasetView({
    required this.projectId,
    required this.datasetId,
    required this.tableId,
  });

  final TfArg<String> projectId;
  final RefTo<GoogleBigqueryDataset> datasetId;
  final TfArg<String> tableId;

  @internal
  Map<String, Object?> encode() => {
    'project_id': projectId.toTfJson(),
    'dataset_id': datasetId.encodeAs('dataset_id').toTfJson(),
    'table_id': tableId.toTfJson(),
  };
}

/// `access.dataset` sub-block — pairs a [dataset] reference with the
/// [targetTypes] this binding applies to (currently only `VIEWS`).
@immutable
class BigqueryDatasetAccessChild {
  const BigqueryDatasetAccessChild({
    required this.dataset,
    required this.targetTypes,
  });

  final BigqueryDatasetReference dataset;
  final List<TfArg<String>> targetTypes;

  @internal
  Map<String, Object?> encode() => {
    'dataset': [dataset.encode()],
    'target_types': targetTypes.map((t) => t.toTfJson()).toList(),
  };
}

/// `access.dataset.dataset` and `access.routine` projectId+datasetId pair.
@immutable
class BigqueryDatasetReference {
  const BigqueryDatasetReference({
    required this.projectId,
    required this.datasetId,
  });

  final TfArg<String> projectId;
  final RefTo<GoogleBigqueryDataset> datasetId;

  @internal
  Map<String, Object?> encode() => {
    'project_id': projectId.toTfJson(),
    'dataset_id': datasetId.encodeAs('dataset_id').toTfJson(),
  };
}

/// `access.routine` sub-block — fully qualified BigQuery routine reference.
@immutable
class BigqueryDatasetRoutineRef {
  const BigqueryDatasetRoutineRef({
    required this.projectId,
    required this.datasetId,
    required this.routineId,
  });

  final TfArg<String> projectId;
  final RefTo<GoogleBigqueryDataset> datasetId;
  final TfArg<String> routineId;

  @internal
  Map<String, Object?> encode() => {
    'project_id': projectId.toTfJson(),
    'dataset_id': datasetId.encodeAs('dataset_id').toTfJson(),
    'routine_id': routineId.toTfJson(),
  };
}

/// `access.condition` — CEL binding restricting when an access entry
/// applies. [expression] is the CEL source; the other three fields are
/// metadata for debugging / UI surfaces.
@immutable
class BigqueryDatasetAccessCondition {
  const BigqueryDatasetAccessCondition({
    required this.expression,
    this.title,
    this.description,
    this.location,
  });

  final TfArg<String> expression;
  final TfArg<String>? title;
  final TfArg<String>? description;
  final TfArg<String>? location;

  @internal
  Map<String, Object?> encode() => {
    'expression': expression.toTfJson(),
    if (title != null) 'title': title!.toTfJson(),
    if (description != null) 'description': description!.toTfJson(),
    if (location != null) 'location': location!.toTfJson(),
  };
}

// ===========================================================================
// Top-level nested-block helpers
// ===========================================================================

// ===========================================================================
// Factory
// ===========================================================================

/// Typed helper for the `default_encryption_configuration` block of
/// `google_bigquery_dataset` (derived from provider schema).
@immutable
final class BigqueryDatasetDefaultEncryptionConfiguration {
  const BigqueryDatasetDefaultEncryptionConfiguration({
    required this.kmsKeyName,
  });

  final RefTo<GoogleKmsCryptoKey> kmsKeyName;

  @internal
  Map<String, Object?> encode() => {
    'kms_key_name': kmsKeyName.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `external_catalog_dataset_options` block of
/// `google_bigquery_dataset` (derived from provider schema).
@immutable
final class BigqueryDatasetExternalCatalogDatasetOptions {
  const BigqueryDatasetExternalCatalogDatasetOptions({
    this.defaultStorageLocationUri,
    this.parameters,
  });

  final TfArg<String>? defaultStorageLocationUri;

  final TfArg<Map<String, String>>? parameters;

  @internal
  Map<String, Object?> encode() => {
    'default_storage_location_uri': ?defaultStorageLocationUri?.toTfJson(),
    'parameters': ?parameters?.toTfJson(),
  };
}

/// Typed helper for the `external_dataset_reference` block of
/// `google_bigquery_dataset` (derived from provider schema).
@immutable
final class BigqueryDatasetExternalDatasetReference {
  const BigqueryDatasetExternalDatasetReference({
    required this.connection,
    required this.externalSource,
  });

  final TfArg<String> connection;

  final TfArg<String> externalSource;

  @internal
  Map<String, Object?> encode() => {
    'connection': connection.toTfJson(),
    'external_source': externalSource.toTfJson(),
  };
}

/// Factory wrapper for `google_bigquery_dataset`.
///
/// Datasets allow you to organize and control access to your tables.
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_bigquery_dataset.`).
/// - `datasetId`: BigQuery dataset ID. Letters/digits/underscores, up to
///   1024 chars; immutable after create.
///
/// The `access` block is a discriminated union: BigQuery accepts exactly
/// one of `user_by_email` / `group_by_email` / `special_group` / `domain`
/// / `iam_member` / `view` / `dataset` / `routine` per entry. We model it
/// as a sealed [BigqueryDatasetAccess] hierarchy so the choice is exhaustive at the
/// type level. The five simple identity variants accept a [role]; the
/// reference variants (view / dataset / routine) deny it per the
/// BigQuery API contract.
///
/// Example:
/// ```dart
/// final analytics = GoogleBigqueryDataset(
///   'analytics',
///   datasetId: .literal('analytics_prod'),
///   location: TfArg.literal('US'),
///   friendlyName: TfArg.literal('Analytics Production'),
///   defaultTableExpirationMs: TfArg.literal(3600000),
///   access: const [
///     BigqueryDatasetAccessUserByEmail(
///       userByEmail: TfArgLiteral('data-eng@example.com'),
///       role: TfArgLiteral('OWNER'),
///     ),
///     BigqueryDatasetAccessSpecialGroup(
///       specialGroup: TfArgLiteral('projectReaders'),
///       role: TfArgLiteral('READER'),
///     ),
///   ],
/// );
/// ```
final class GoogleBigqueryDataset extends Resource {
  static const String tfType = 'google_bigquery_dataset';

  GoogleBigqueryDataset(
    super.localName, {
    required TfArg<String> datasetId,
    TfArg<String>? friendlyName,
    TfArg<String>? description,
    TfArg<String>? location,
    TfArg<num>? defaultTableExpirationMs,
    TfArg<num>? defaultPartitionExpirationMs,
    TfArg<String>? defaultCollation,
    TfArg<bool>? isCaseInsensitive,
    TfArg<String>? maxTimeTravelHours,
    DatasetStorageBillingModel? storageBillingModel,
    TfArg<bool>? deleteContentsOnDestroy,
    TfArg<Map<String, String>>? labels,
    TfArg<Map<String, String>>? resourceTags,
    List<BigqueryDatasetAccess>? access,
    BigqueryDatasetDefaultEncryptionConfiguration?
    defaultEncryptionConfiguration,
    BigqueryDatasetExternalDatasetReference? externalDatasetReference,
    BigqueryDatasetExternalCatalogDatasetOptions? externalCatalogDatasetOptions,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dataset_id': datasetId,
           'friendly_name': ?friendlyName,
           'description': ?description,
           'location': ?location,
           'default_table_expiration_ms': ?defaultTableExpirationMs,
           'default_partition_expiration_ms': ?defaultPartitionExpirationMs,
           'default_collation': ?defaultCollation,
           'is_case_insensitive': ?isCaseInsensitive,
           'max_time_travel_hours': ?maxTimeTravelHours,
           'storage_billing_model': ?storageBillingModel,
           'delete_contents_on_destroy': ?deleteContentsOnDestroy,
           'labels': ?labels,
           'resource_tags': ?resourceTags,
           if (access != null)
             'access': TfArg.literal(access.map((a) => a.encode()).toList()),
           if (defaultEncryptionConfiguration != null)
             'default_encryption_configuration': TfArg.literal(
               defaultEncryptionConfiguration.encode(),
             ),
           if (externalDatasetReference != null)
             'external_dataset_reference': TfArg.literal(
               externalDatasetReference.encode(),
             ),
           if (externalCatalogDatasetOptions != null)
             'external_catalog_dataset_options': TfArg.literal(
               externalCatalogDatasetOptions.encode(),
             ),
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBigqueryDatasetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBigqueryDataset>`.
  RefTo<GoogleBigqueryDataset> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_time` attribute.
  TfRef<num> get creationTime => TfRef.attribute<num>(this, 'creation_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `last_modified_time` attribute.
  TfRef<num> get lastModifiedTime =>
      TfRef.attribute<num>(this, 'last_modified_time');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `dataset_id` attribute.
  TfRef<String> get datasetId => TfRef.attribute<String>(this, 'dataset_id');

  /// Reference to `default_collation` attribute.
  TfRef<String> get defaultCollation =>
      TfRef.attribute<String>(this, 'default_collation');

  /// Reference to `default_partition_expiration_ms` attribute.
  TfRef<num> get defaultPartitionExpirationMs =>
      TfRef.attribute<num>(this, 'default_partition_expiration_ms');

  /// Reference to `default_table_expiration_ms` attribute.
  TfRef<num> get defaultTableExpirationMs =>
      TfRef.attribute<num>(this, 'default_table_expiration_ms');

  /// Reference to `delete_contents_on_destroy` attribute.
  TfRef<bool> get deleteContentsOnDestroy =>
      TfRef.attribute<bool>(this, 'delete_contents_on_destroy');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `friendly_name` attribute.
  TfRef<String> get friendlyName =>
      TfRef.attribute<String>(this, 'friendly_name');

  /// Reference to `is_case_insensitive` attribute.
  TfRef<bool> get isCaseInsensitive =>
      TfRef.attribute<bool>(this, 'is_case_insensitive');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `max_time_travel_hours` attribute.
  TfRef<String> get maxTimeTravelHours =>
      TfRef.attribute<String>(this, 'max_time_travel_hours');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `resource_tags` attribute.
  TfRef<Map<String, String>> get resourceTags =>
      TfRef.attribute<Map<String, String>>(this, 'resource_tags');

  /// Reference to `storage_billing_model` attribute.
  TfRef<String> get storageBillingModel =>
      TfRef.attribute<String>(this, 'storage_billing_model');
}
