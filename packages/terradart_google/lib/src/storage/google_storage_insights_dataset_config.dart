// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../storage/google_storage_bucket.dart' show GoogleStorageBucket;

/// Sensitive field paths for `google_storage_insights_dataset_config`.
const Set<String> _googleStorageInsightsDatasetConfigSensitive = <String>{};

/// Storage Insights Dataset Config enum for `dataset_config_state`.
extension type const StorageInsightsDatasetConfigState._(TfArg<String> _)
    implements TfArg<String> {
  StorageInsightsDatasetConfigState.variable(String name)
    : this._(TfArg.variable(name));
  StorageInsightsDatasetConfigState.expression(String template)
    : this._(TfArg.expression(template));
  const StorageInsightsDatasetConfigState.arg(TfArg<String> arg) : this._(arg);

  static const configStateUnspecified = StorageInsightsDatasetConfigState._(
    TfArgLiteral('CONFIG_STATE_UNSPECIFIED'),
  );
  static const configStateActive = StorageInsightsDatasetConfigState._(
    TfArgLiteral('CONFIG_STATE_ACTIVE'),
  );
  static const configStateVerificationInProgress =
      StorageInsightsDatasetConfigState._(
        TfArgLiteral('CONFIG_STATE_VERIFICATION_IN_PROGRESS'),
      );
  static const configStateCreated = StorageInsightsDatasetConfigState._(
    TfArgLiteral('CONFIG_STATE_CREATED'),
  );
  static const configStateProcessing = StorageInsightsDatasetConfigState._(
    TfArgLiteral('CONFIG_STATE_PROCESSING'),
  );

  static const List<StorageInsightsDatasetConfigState> values = [
    configStateUnspecified,
    configStateActive,
    configStateVerificationInProgress,
    configStateCreated,
    configStateProcessing,
  ];
}

/// Exactly one dataset source scope (MM `exactly_one_of`:
/// `source_projects` / `source_folders` / `organization_scope`).
sealed class StorageInsightsDatasetConfigSource {
  const StorageInsightsDatasetConfigSource();

  /// `source_projects` — index these project numbers.
  const factory StorageInsightsDatasetConfigSource.sourceProjects(
    TfArg<List<String>> projectNumbers,
  ) = StorageInsightsDatasetConfigSourceProjects;

  /// `source_folders` — index these folder numbers.
  const factory StorageInsightsDatasetConfigSource.sourceFolders(
    TfArg<List<String>> folderNumbers,
  ) = StorageInsightsDatasetConfigSourceFolders;

  /// `organization_scope` — index the whole organization.
  const factory StorageInsightsDatasetConfigSource.organizationScope() =
      StorageInsightsDatasetConfigOrganizationScope;

  /// Terraform attribute or nested-block key.
  @internal
  String get blockKey;

  /// Flat `{blockKey: value}` so mixed nested-block / bool members share
  /// one argMap dispatch (see [GoogleColabNotebookExecution] compute).
  @internal
  Map<String, Object?> encode();
}

/// `source_projects` — index these project numbers.
@immutable
final class StorageInsightsDatasetConfigSourceProjects
    extends StorageInsightsDatasetConfigSource {
  const StorageInsightsDatasetConfigSourceProjects(this.projectNumbers);

  final TfArg<List<String>> projectNumbers;

  @override
  @internal
  String get blockKey => 'source_projects';

  @override
  @internal
  Map<String, Object?> encode() => {
    blockKey: [
      {'project_numbers': projectNumbers.toTfJson()},
    ],
  };
}

/// `source_folders` — index these folder numbers.
@immutable
final class StorageInsightsDatasetConfigSourceFolders
    extends StorageInsightsDatasetConfigSource {
  const StorageInsightsDatasetConfigSourceFolders(this.folderNumbers);

  final TfArg<List<String>> folderNumbers;

  @override
  @internal
  String get blockKey => 'source_folders';

  @override
  @internal
  Map<String, Object?> encode() => {
    blockKey: [
      {'folder_numbers': folderNumbers.toTfJson()},
    ],
  };
}

/// `organization_scope` — index the whole organization.
@immutable
final class StorageInsightsDatasetConfigOrganizationScope
    extends StorageInsightsDatasetConfigSource {
  const StorageInsightsDatasetConfigOrganizationScope();

  @override
  @internal
  String get blockKey => 'organization_scope';

  @override
  @internal
  Map<String, Object?> encode() => {blockKey: true};
}

/// At most one of `include_cloud_storage_locations`, `exclude_cloud_storage_locations` on `google_storage_insights_dataset_config`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.includeCloudStorageLocations(...)`.
sealed class StorageInsightsDatasetConfigCloudStorageLocations {
  const StorageInsightsDatasetConfigCloudStorageLocations();

  /// Sets `include_cloud_storage_locations`.
  const factory StorageInsightsDatasetConfigCloudStorageLocations.includeCloudStorageLocations(
    StorageInsightsDatasetConfigIncludeCloudStorageLocations
    includeCloudStorageLocations,
  ) = StorageInsightsDatasetConfigIncludeCloudStorageLocationsChoice;

  /// Sets `exclude_cloud_storage_locations`.
  const factory StorageInsightsDatasetConfigCloudStorageLocations.excludeCloudStorageLocations(
    StorageInsightsDatasetConfigExcludeCloudStorageLocations
    excludeCloudStorageLocations,
  ) = StorageInsightsDatasetConfigExcludeCloudStorageLocationsChoice;

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

/// The [StorageInsightsDatasetConfigCloudStorageLocations.includeCloudStorageLocations] choice: sets `include_cloud_storage_locations`.
final class StorageInsightsDatasetConfigIncludeCloudStorageLocationsChoice
    extends StorageInsightsDatasetConfigCloudStorageLocations {
  const StorageInsightsDatasetConfigIncludeCloudStorageLocationsChoice(
    this.includeCloudStorageLocations,
  );

  final StorageInsightsDatasetConfigIncludeCloudStorageLocations
  includeCloudStorageLocations;

  @internal
  @override
  String get blockKey => 'include_cloud_storage_locations';

  @internal
  @override
  Map<String, Object?> encode() => {
    'include_cloud_storage_locations': includeCloudStorageLocations.encode(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'include_cloud_storage_locations': TfArg.literal(
      includeCloudStorageLocations.encode(),
    ),
  };
}

/// The [StorageInsightsDatasetConfigCloudStorageLocations.excludeCloudStorageLocations] choice: sets `exclude_cloud_storage_locations`.
final class StorageInsightsDatasetConfigExcludeCloudStorageLocationsChoice
    extends StorageInsightsDatasetConfigCloudStorageLocations {
  const StorageInsightsDatasetConfigExcludeCloudStorageLocationsChoice(
    this.excludeCloudStorageLocations,
  );

  final StorageInsightsDatasetConfigExcludeCloudStorageLocations
  excludeCloudStorageLocations;

  @internal
  @override
  String get blockKey => 'exclude_cloud_storage_locations';

  @internal
  @override
  Map<String, Object?> encode() => {
    'exclude_cloud_storage_locations': excludeCloudStorageLocations.encode(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'exclude_cloud_storage_locations': TfArg.literal(
      excludeCloudStorageLocations.encode(),
    ),
  };
}

/// At most one of `include_cloud_storage_buckets`, `exclude_cloud_storage_buckets` on `google_storage_insights_dataset_config`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.includeCloudStorageBuckets(...)`.
sealed class StorageInsightsDatasetConfigCloudStorageBuckets {
  const StorageInsightsDatasetConfigCloudStorageBuckets();

  /// Sets `include_cloud_storage_buckets`.
  const factory StorageInsightsDatasetConfigCloudStorageBuckets.includeCloudStorageBuckets(
    StorageInsightsDatasetConfigIncludeCloudStorageBuckets
    includeCloudStorageBuckets,
  ) = StorageInsightsDatasetConfigIncludeCloudStorageBucketsChoice;

  /// Sets `exclude_cloud_storage_buckets`.
  const factory StorageInsightsDatasetConfigCloudStorageBuckets.excludeCloudStorageBuckets(
    StorageInsightsDatasetConfigExcludeCloudStorageBuckets
    excludeCloudStorageBuckets,
  ) = StorageInsightsDatasetConfigExcludeCloudStorageBucketsChoice;

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

/// The [StorageInsightsDatasetConfigCloudStorageBuckets.includeCloudStorageBuckets] choice: sets `include_cloud_storage_buckets`.
final class StorageInsightsDatasetConfigIncludeCloudStorageBucketsChoice
    extends StorageInsightsDatasetConfigCloudStorageBuckets {
  const StorageInsightsDatasetConfigIncludeCloudStorageBucketsChoice(
    this.includeCloudStorageBuckets,
  );

  final StorageInsightsDatasetConfigIncludeCloudStorageBuckets
  includeCloudStorageBuckets;

  @internal
  @override
  String get blockKey => 'include_cloud_storage_buckets';

  @internal
  @override
  Map<String, Object?> encode() => {
    'include_cloud_storage_buckets': includeCloudStorageBuckets.encode(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'include_cloud_storage_buckets': TfArg.literal(
      includeCloudStorageBuckets.encode(),
    ),
  };
}

/// The [StorageInsightsDatasetConfigCloudStorageBuckets.excludeCloudStorageBuckets] choice: sets `exclude_cloud_storage_buckets`.
final class StorageInsightsDatasetConfigExcludeCloudStorageBucketsChoice
    extends StorageInsightsDatasetConfigCloudStorageBuckets {
  const StorageInsightsDatasetConfigExcludeCloudStorageBucketsChoice(
    this.excludeCloudStorageBuckets,
  );

  final StorageInsightsDatasetConfigExcludeCloudStorageBuckets
  excludeCloudStorageBuckets;

  @internal
  @override
  String get blockKey => 'exclude_cloud_storage_buckets';

  @internal
  @override
  Map<String, Object?> encode() => {
    'exclude_cloud_storage_buckets': excludeCloudStorageBuckets.encode(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'exclude_cloud_storage_buckets': TfArg.literal(
      excludeCloudStorageBuckets.encode(),
    ),
  };
}

/// Typed helper for the `exclude_cloud_storage_buckets` block of
/// `google_storage_insights_dataset_config` (derived from provider schema).
@immutable
final class StorageInsightsDatasetConfigExcludeCloudStorageBuckets {
  const StorageInsightsDatasetConfigExcludeCloudStorageBuckets({
    required this.cloudStorageBuckets,
  });

  final List<
    StorageInsightsDatasetConfigExcludeCloudStorageBucketsCloudStorageBuckets
  >
  cloudStorageBuckets;

  @internal
  Map<String, Object?> encode() => {
    'cloud_storage_buckets': [for (final e in cloudStorageBuckets) e.encode()],
  };
}

/// Typed helper for the `exclude_cloud_storage_buckets.cloud_storage_buckets` block of
/// `google_storage_insights_dataset_config` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class StorageInsightsDatasetConfigExcludeCloudStorageBucketsCloudStorageBuckets {
  const StorageInsightsDatasetConfigExcludeCloudStorageBucketsCloudStorageBuckets({
    this.bucketName,
    this.bucketPrefixRegex,
  });

  final RefTo<GoogleStorageBucket>? bucketName;

  final TfArg<String>? bucketPrefixRegex;

  @internal
  Map<String, Object?> encode() => {
    'bucket_name': ?bucketName?.encodeAs('name').toTfJson(),
    'bucket_prefix_regex': ?bucketPrefixRegex?.toTfJson(),
  };
}

/// Typed helper for the `exclude_cloud_storage_locations` block of
/// `google_storage_insights_dataset_config` (derived from provider schema).
@immutable
final class StorageInsightsDatasetConfigExcludeCloudStorageLocations {
  const StorageInsightsDatasetConfigExcludeCloudStorageLocations({
    required this.locations,
  });

  final TfArg<List<String>> locations;

  @internal
  Map<String, Object?> encode() => {'locations': locations.toTfJson()};
}

/// Typed helper for the `identity` block of
/// `google_storage_insights_dataset_config` (derived from provider schema).
@immutable
final class StorageInsightsDatasetConfigIdentity {
  const StorageInsightsDatasetConfigIdentity({required this.type});

  final StorageInsightsDatasetConfigType type;

  @internal
  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// `type` — derived from the provider schema description.
extension type const StorageInsightsDatasetConfigType._(TfArg<String> _)
    implements TfArg<String> {
  StorageInsightsDatasetConfigType.variable(String name)
    : this._(TfArg.variable(name));
  StorageInsightsDatasetConfigType.expression(String template)
    : this._(TfArg.expression(template));
  const StorageInsightsDatasetConfigType.arg(TfArg<String> arg) : this._(arg);

  static const identityTypePerConfig = StorageInsightsDatasetConfigType._(
    TfArgLiteral('IDENTITY_TYPE_PER_CONFIG'),
  );
  static const identityTypePerProject = StorageInsightsDatasetConfigType._(
    TfArgLiteral('IDENTITY_TYPE_PER_PROJECT'),
  );

  static const List<StorageInsightsDatasetConfigType> values = [
    identityTypePerConfig,
    identityTypePerProject,
  ];
}

/// Typed helper for the `include_cloud_storage_buckets` block of
/// `google_storage_insights_dataset_config` (derived from provider schema).
@immutable
final class StorageInsightsDatasetConfigIncludeCloudStorageBuckets {
  const StorageInsightsDatasetConfigIncludeCloudStorageBuckets({
    required this.cloudStorageBuckets,
  });

  final List<
    StorageInsightsDatasetConfigExcludeCloudStorageBucketsCloudStorageBuckets
  >
  cloudStorageBuckets;

  @internal
  Map<String, Object?> encode() => {
    'cloud_storage_buckets': [for (final e in cloudStorageBuckets) e.encode()],
  };
}

/// Typed helper for the `include_cloud_storage_locations` block of
/// `google_storage_insights_dataset_config` (derived from provider schema).
@immutable
final class StorageInsightsDatasetConfigIncludeCloudStorageLocations {
  const StorageInsightsDatasetConfigIncludeCloudStorageLocations({
    required this.locations,
  });

  final TfArg<List<String>> locations;

  @internal
  Map<String, Object?> encode() => {'locations': locations.toTfJson()};
}

/// Factory wrapper for `google_storage_insights_dataset_config`.
///
/// Represents a Storage Insights DatasetConfig.
///
/// Storage Insights **dataset config** — indexes Cloud Storage metadata
/// for a project, folder, or organization. Pick exactly one
/// [StorageInsightsDatasetConfigSource].
///
/// This is a Storage Intelligence exclusive: linking or processing a
/// dataset can enable billed STANDARD object-management (gcp-cost:
/// Cloud Storage `95FF-2EF5-5EA1` Storage Intelligence Standard Object
/// Management Fee `F67F-9FAF-E4FB` **$2.5e-06/s**). Leave
/// [linkDataset] unset/`false` so Terraform can destroy the config.
/// **Never** apply on `terradart-validate`.
///
/// Example (project scope, unlinked):
/// ```dart
/// GoogleStorageInsightsDatasetConfig(
///   'inventory',
///   datasetConfigId: TfArg.literal('terradart-insights'),
///   location: TfArg.literal('asia-northeast1'),
///   retentionPeriodDays: TfArg.literal(1),
///   identity: StorageInsightsDatasetConfigIdentity(
///     type: StorageInsightsDatasetConfigType.identityTypePerConfig,
///   ),
///   source: StorageInsightsDatasetConfigSourceProjects(
///     TfArg.literal([projectNumber]),
///   ),
/// );
/// ```
final class GoogleStorageInsightsDatasetConfig extends Resource {
  static const String tfType = 'google_storage_insights_dataset_config';

  GoogleStorageInsightsDatasetConfig(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> datasetConfigId,
    required TfArg<num> retentionPeriodDays,
    required StorageInsightsDatasetConfigIdentity identity,
    required StorageInsightsDatasetConfigSource source,
    StorageInsightsDatasetConfigCloudStorageBuckets? cloudStorageBuckets,
    TfArg<bool>? includeNewlyCreatedBuckets,
    TfArg<String>? description,
    TfArg<bool>? linkDataset,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    TfArg<num>? activityDataRetentionPeriodDays,
    StorageInsightsDatasetConfigCloudStorageLocations? cloudStorageLocations,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'dataset_config_id': datasetConfigId,
           'retention_period_days': retentionPeriodDays,
           'identity': TfArg.literal(identity.encode()),
           ...?cloudStorageBuckets?.argMap,
           'include_newly_created_buckets': ?includeNewlyCreatedBuckets,
           'description': ?description,
           'link_dataset': ?linkDataset,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
           source.blockKey: TfArg.literal(source.encode()[source.blockKey]),
           'activity_data_retention_period_days':
               ?activityDataRetentionPeriodDays,
           ...?cloudStorageLocations?.argMap,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleStorageInsightsDatasetConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleStorageInsightsDatasetConfig>`.
  RefTo<GoogleStorageInsightsDatasetConfig> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `dataset_config_state` attribute.
  TfRef<String> get datasetConfigState =>
      TfRef.attribute<String>(this, 'dataset_config_state');

  /// Reference to `link` attribute.
  TfRef<List<Map<String, Object?>>> get link =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'link');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `activity_data_retention_period_days` attribute.
  TfRef<num> get activityDataRetentionPeriodDays =>
      TfRef.attribute<num>(this, 'activity_data_retention_period_days');

  /// Reference to `dataset_config_id` attribute.
  TfRef<String> get datasetConfigId =>
      TfRef.attribute<String>(this, 'dataset_config_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `include_newly_created_buckets` attribute.
  TfRef<bool> get includeNewlyCreatedBuckets =>
      TfRef.attribute<bool>(this, 'include_newly_created_buckets');

  /// Reference to `link_dataset` attribute.
  TfRef<bool> get linkDataset => TfRef.attribute<bool>(this, 'link_dataset');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `organization_number` attribute.
  TfRef<String> get organizationNumber =>
      TfRef.attribute<String>(this, 'organization_number');

  /// Reference to `organization_scope` attribute.
  TfRef<bool> get organizationScope =>
      TfRef.attribute<bool>(this, 'organization_scope');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `retention_period_days` attribute.
  TfRef<num> get retentionPeriodDays =>
      TfRef.attribute<num>(this, 'retention_period_days');
}
