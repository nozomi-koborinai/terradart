// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_bigquery_dataset`.
const Set<String> _googleBigqueryDatasetSensitive = <String>{};

// ===========================================================================
// Enums
// ===========================================================================

/// Storage billing model for `google_bigquery_dataset.storage_billing_model`.
/// `LOGICAL` (default per BigQuery API) bills by logical bytes; `PHYSICAL`
/// bills by compressed on-disk bytes (typically cheaper for high-compression
/// data with infrequent reads).
enum DatasetStorageBillingModel {
  logical('LOGICAL'),
  physical('PHYSICAL');

  const DatasetStorageBillingModel(this.terraformValue);
  final String terraformValue;
}

// ===========================================================================
// Access — sealed (8 variants matching BigQuery's discriminated union)
// ===========================================================================
//
// BigQuery's `access` entry accepts exactly one identity field per entry.
// Modeling as a sealed hierarchy makes the choice exhaustive at the type
// level — the compiler enforces that callers pick one variant per
// [Access] instance. All variants may carry an optional [AccessCondition]
// (CEL binding) per the underlying API. The five identity-typed variants
// accept a `role`; the reference-typed variants (view / dataset / routine)
// omit it because BigQuery infers the role from the resource shape.

/// Discriminated-union base for one `access` block entry.
///
/// Subclasses provide an [encode] method returning the snake-case map
/// for synth.
@immutable
sealed class Access {
  const Access({this.condition});

  /// Optional CEL binding restricting when this access entry applies.
  final AccessCondition? condition;

  /// Encodes this entry into the snake-case map shape expected by
  /// Terraform's bigquery_dataset.access schema.
  Map<String, Object?> encode();
}

/// `access` entry granting [role] to [userByEmail].
@immutable
final class AccessUserByEmail extends Access {
  const AccessUserByEmail({
    required this.userByEmail,
    this.role,
    super.condition,
  });

  final TfArg<String> userByEmail;
  final TfArg<String>? role;

  @override
  Map<String, Object?> encode() => {
    'user_by_email': userByEmail.toTfJson(),
    if (role != null) 'role': role!.toTfJson(),
    if (condition != null) 'condition': [condition!.encode()],
  };
}

/// `access` entry granting [role] to [groupByEmail].
@immutable
final class AccessGroupByEmail extends Access {
  const AccessGroupByEmail({
    required this.groupByEmail,
    this.role,
    super.condition,
  });

  final TfArg<String> groupByEmail;
  final TfArg<String>? role;

  @override
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
final class AccessSpecialGroup extends Access {
  const AccessSpecialGroup({
    required this.specialGroup,
    this.role,
    super.condition,
  });

  final TfArg<String> specialGroup;
  final TfArg<String>? role;

  @override
  Map<String, Object?> encode() => {
    'special_group': specialGroup.toTfJson(),
    if (role != null) 'role': role!.toTfJson(),
    if (condition != null) 'condition': [condition!.encode()],
  };
}

/// `access` entry granting [role] to all members of [domain].
@immutable
final class AccessDomain extends Access {
  const AccessDomain({required this.domain, this.role, super.condition});

  final TfArg<String> domain;
  final TfArg<String>? role;

  @override
  Map<String, Object?> encode() => {
    'domain': domain.toTfJson(),
    if (role != null) 'role': role!.toTfJson(),
    if (condition != null) 'condition': [condition!.encode()],
  };
}

/// `access` entry granting [role] to an arbitrary IAM principal (e.g.
/// `allUsers`, service identities) via [iamMember].
@immutable
final class AccessIamMember extends Access {
  const AccessIamMember({required this.iamMember, this.role, super.condition});

  final TfArg<String> iamMember;
  final TfArg<String>? role;

  @override
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
final class AccessView extends Access {
  const AccessView({required this.view, super.condition});

  final DatasetView view;

  @override
  Map<String, Object?> encode() => {
    'view': [view.encode()],
    if (condition != null) 'condition': [condition!.encode()],
  };
}

/// `access` entry referring to a dataset (transitive read for resource
/// types listed in `targetTypes`).
@immutable
final class AccessDataset extends Access {
  const AccessDataset({required this.dataset, super.condition});

  final DatasetAccessChild dataset;

  @override
  Map<String, Object?> encode() => {
    'dataset': [dataset.encode()],
    if (condition != null) 'condition': [condition!.encode()],
  };
}

/// `access` entry referring to a BigQuery routine. Role is not required.
@immutable
final class AccessRoutine extends Access {
  const AccessRoutine({required this.routine, super.condition});

  final DatasetRoutineRef routine;

  @override
  Map<String, Object?> encode() => {
    'routine': [routine.encode()],
    if (condition != null) 'condition': [condition!.encode()],
  };
}

// ===========================================================================
// Access sub-block helpers
// ===========================================================================

/// `access.view` sub-block — fully qualified BigQuery view reference.
@immutable
class DatasetView {
  const DatasetView({
    required this.projectId,
    required this.datasetId,
    required this.tableId,
  });

  final TfArg<String> projectId;
  final TfArg<String> datasetId;
  final TfArg<String> tableId;

  Map<String, Object?> encode() => {
    'project_id': projectId.toTfJson(),
    'dataset_id': datasetId.toTfJson(),
    'table_id': tableId.toTfJson(),
  };
}

/// `access.dataset` sub-block — pairs a [dataset] reference with the
/// [targetTypes] this binding applies to (currently only `VIEWS`).
@immutable
class DatasetAccessChild {
  const DatasetAccessChild({required this.dataset, required this.targetTypes});

  final DatasetReference dataset;
  final List<TfArg<String>> targetTypes;

  Map<String, Object?> encode() => {
    'dataset': [dataset.encode()],
    'target_types': targetTypes.map((t) => t.toTfJson()).toList(),
  };
}

/// `access.dataset.dataset` and `access.routine` projectId+datasetId pair.
@immutable
class DatasetReference {
  const DatasetReference({required this.projectId, required this.datasetId});

  final TfArg<String> projectId;
  final TfArg<String> datasetId;

  Map<String, Object?> encode() => {
    'project_id': projectId.toTfJson(),
    'dataset_id': datasetId.toTfJson(),
  };
}

/// `access.routine` sub-block — fully qualified BigQuery routine reference.
@immutable
class DatasetRoutineRef {
  const DatasetRoutineRef({
    required this.projectId,
    required this.datasetId,
    required this.routineId,
  });

  final TfArg<String> projectId;
  final TfArg<String> datasetId;
  final TfArg<String> routineId;

  Map<String, Object?> encode() => {
    'project_id': projectId.toTfJson(),
    'dataset_id': datasetId.toTfJson(),
    'routine_id': routineId.toTfJson(),
  };
}

/// `access.condition` — CEL binding restricting when an access entry
/// applies. [expression] is the CEL source; the other three fields are
/// metadata for debugging / UI surfaces.
@immutable
class AccessCondition {
  const AccessCondition({
    required this.expression,
    this.title,
    this.description,
    this.location,
  });

  final TfArg<String> expression;
  final TfArg<String>? title;
  final TfArg<String>? description;
  final TfArg<String>? location;

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

/// `default_encryption_configuration` block — CMEK key for tables that
/// do not specify their own encryption.
@immutable
class DefaultEncryptionConfiguration {
  const DefaultEncryptionConfiguration({required this.kmsKeyName});

  final TfArg<String> kmsKeyName;

  Map<String, Object?> encode() => {'kms_key_name': kmsKeyName.toTfJson()};
}

/// `external_dataset_reference` block — points the dataset at an
/// externally-managed source (e.g. AWS Glue) via [connection].
@immutable
class ExternalDatasetReference {
  const ExternalDatasetReference({
    required this.externalSource,
    required this.connection,
  });

  final TfArg<String> externalSource;
  final TfArg<String> connection;

  Map<String, Object?> encode() => {
    'external_source': externalSource.toTfJson(),
    'connection': connection.toTfJson(),
  };
}

/// `external_catalog_dataset_options` block — open-source catalog metadata
/// for datasets bridged from Iceberg / Hive Metastore-compatible sources.
@immutable
class ExternalCatalogDatasetOptions {
  const ExternalCatalogDatasetOptions({
    this.defaultStorageLocationUri,
    this.parameters,
  });

  final TfArg<String>? defaultStorageLocationUri;
  final TfArg<Map<String, String>>? parameters;

  Map<String, Object?> encode() => {
    if (defaultStorageLocationUri != null)
      'default_storage_location_uri': defaultStorageLocationUri!.toTfJson(),
    if (parameters != null) 'parameters': parameters!.toTfJson(),
  };
}

// ===========================================================================
// Factory
// ===========================================================================

/// Factory wrapper for `google_bigquery_dataset` (provider `hashicorp/google ~> 7.0`).
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
/// as a sealed [Access] hierarchy so the choice is exhaustive at the
/// type level. The five simple identity variants accept a [role]; the
/// reference variants (view / dataset / routine) deny it per the
/// BigQuery API contract.
///
/// Example:
/// ```dart
/// final analytics = GoogleBigqueryDataset(
///   localName: 'analytics',
///   datasetId: TfArg.literal('analytics_prod'),
///   location: TfArg.literal('US'),
///   friendlyName: TfArg.literal('Analytics Production'),
///   defaultTableExpirationMs: TfArg.literal(3600000),
///   access: const [
///     AccessUserByEmail(
///       userByEmail: TfArgLiteral('data-eng@example.com'),
///       role: TfArgLiteral('OWNER'),
///     ),
///     AccessSpecialGroup(
///       specialGroup: TfArgLiteral('projectReaders'),
///       role: TfArgLiteral('READER'),
///     ),
///   ],
/// );
/// ```
final class GoogleBigqueryDataset extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_bigquery_dataset';

  GoogleBigqueryDataset({
    required super.localName,
    required TfArg<String> datasetId,
    TfArg<String>? friendlyName,
    TfArg<String>? description,
    TfArg<String>? location,
    TfArg<num>? defaultTableExpirationMs,
    TfArg<num>? defaultPartitionExpirationMs,
    TfArg<String>? defaultCollation,
    TfArg<bool>? isCaseInsensitive,
    TfArg<String>? maxTimeTravelHours,
    TfArg<DatasetStorageBillingModel>? storageBillingModel,
    TfArg<bool>? deleteContentsOnDestroy,
    TfArg<Map<String, String>>? labels,
    TfArg<Map<String, String>>? resourceTags,
    List<Access>? access,
    DefaultEncryptionConfiguration? defaultEncryptionConfiguration,
    ExternalDatasetReference? externalDatasetReference,
    ExternalCatalogDatasetOptions? externalCatalogDatasetOptions,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: $tfType,
         argMap: {
           'dataset_id': datasetId,
           if (friendlyName != null) 'friendly_name': friendlyName,
           if (description != null) 'description': description,
           if (location != null) 'location': location,
           if (defaultTableExpirationMs != null)
             'default_table_expiration_ms': defaultTableExpirationMs,
           if (defaultPartitionExpirationMs != null)
             'default_partition_expiration_ms': defaultPartitionExpirationMs,
           if (defaultCollation != null) 'default_collation': defaultCollation,
           if (isCaseInsensitive != null)
             'is_case_insensitive': isCaseInsensitive,
           if (maxTimeTravelHours != null)
             'max_time_travel_hours': maxTimeTravelHours,
           if (storageBillingModel != null)
             'storage_billing_model': storageBillingModel,
           if (deleteContentsOnDestroy != null)
             'delete_contents_on_destroy': deleteContentsOnDestroy,
           if (labels != null) 'labels': labels,
           if (resourceTags != null) 'resource_tags': resourceTags,
           if (access != null)
             'access': TfArg.literal(access.map((a) => a.encode()).toList()),
           if (defaultEncryptionConfiguration != null)
             'default_encryption_configuration': TfArg.literal([
               defaultEncryptionConfiguration.encode(),
             ]),
           if (externalDatasetReference != null)
             'external_dataset_reference': TfArg.literal([
               externalDatasetReference.encode(),
             ]),
           if (externalCatalogDatasetOptions != null)
             'external_catalog_dataset_options': TfArg.literal([
               externalCatalogDatasetOptions.encode(),
             ]),
           if (project != null) 'project': project,
         },
       );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields => _googleBigqueryDatasetSensitive;

  /// Reference to `dataset_id` attribute. BigQuery tables reference their
  /// parent dataset via this value (e.g. `dataset.datasetIdRef` passed to
  /// `google_bigquery_table.dataset_id`).
  TfRef<String> get datasetIdRef => TfRef.attribute<String>(this, 'dataset_id');

  /// Reference to `id` attribute (full dataset path
  /// `projects/{project}/datasets/{dataset_id}`).
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `self_link` attribute (HTTPS API path).
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');
}
