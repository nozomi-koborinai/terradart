// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../storage/google_storage_bucket.dart' show GoogleStorageBucket;

/// Sensitive field paths for `google_storage_insights_dataset_config`.
const Set<String> _googleStorageInsightsDatasetConfigSensitive = <String>{};

/// Storage Insights Dataset Config enum for `dataset_config_state`.
enum StorageInsightsDatasetConfigState implements TerraformEnum {
  configStateUnspecified('CONFIG_STATE_UNSPECIFIED'),
  configStateActive('CONFIG_STATE_ACTIVE'),
  configStateVerificationInProgress('CONFIG_STATE_VERIFICATION_IN_PROGRESS'),
  configStateCreated('CONFIG_STATE_CREATED'),
  configStateProcessing('CONFIG_STATE_PROCESSING');

  const StorageInsightsDatasetConfigState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Exactly one dataset source scope (MM `exactly_one_of`:
/// `source_projects` / `source_folders` / `organization_scope`).
sealed class StorageInsightsDatasetConfigSource {
  const StorageInsightsDatasetConfigSource();

  /// `source_projects` — index these project numbers.
  const factory StorageInsightsDatasetConfigSource.sourceProjects({
    required TfArg<List<String>> projectNumbers,
  }) = StorageInsightsDatasetConfigSourceProjects;

  /// `source_folders` — index these folder numbers.
  const factory StorageInsightsDatasetConfigSource.sourceFolders({
    required TfArg<List<String>> folderNumbers,
  }) = StorageInsightsDatasetConfigSourceFolders;

  /// `organization_scope` — index the whole organization.
  const factory StorageInsightsDatasetConfigSource.organizationScope() =
      StorageInsightsDatasetConfigOrganizationScope;

  /// Terraform attribute or nested-block key.
  String get blockKey;

  /// Flat `{blockKey: value}` so mixed nested-block / bool members share
  /// one argMap dispatch (see [GoogleColabNotebookExecution] compute).
  Map<String, Object?> encode();
}

/// `source_projects` — index these project numbers.
@immutable
final class StorageInsightsDatasetConfigSourceProjects
    extends StorageInsightsDatasetConfigSource {
  const StorageInsightsDatasetConfigSourceProjects({
    required this.projectNumbers,
  });

  final TfArg<List<String>> projectNumbers;

  @override
  String get blockKey => 'source_projects';

  @override
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
  const StorageInsightsDatasetConfigSourceFolders({
    required this.folderNumbers,
  });

  final TfArg<List<String>> folderNumbers;

  @override
  String get blockKey => 'source_folders';

  @override
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
  String get blockKey => 'organization_scope';

  @override
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
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
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

  @override
  String get blockKey => 'include_cloud_storage_locations';

  @override
  Map<String, Object?> encode() => {
    'include_cloud_storage_locations': includeCloudStorageLocations.encode(),
  };

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

  @override
  String get blockKey => 'exclude_cloud_storage_locations';

  @override
  Map<String, Object?> encode() => {
    'exclude_cloud_storage_locations': excludeCloudStorageLocations.encode(),
  };

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
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
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

  @override
  String get blockKey => 'include_cloud_storage_buckets';

  @override
  Map<String, Object?> encode() => {
    'include_cloud_storage_buckets': includeCloudStorageBuckets.encode(),
  };

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

  @override
  String get blockKey => 'exclude_cloud_storage_buckets';

  @override
  Map<String, Object?> encode() => {
    'exclude_cloud_storage_buckets': excludeCloudStorageBuckets.encode(),
  };

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

  Map<String, Object?> encode() => {'locations': locations.toTfJson()};
}

/// Typed helper for the `identity` block of
/// `google_storage_insights_dataset_config` (derived from provider schema).
@immutable
final class StorageInsightsDatasetConfigIdentity {
  const StorageInsightsDatasetConfigIdentity({required this.type});

  final TfArg<StorageInsightsDatasetConfigType> type;

  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// `type` — derived from the provider schema description.
enum StorageInsightsDatasetConfigType implements TerraformEnum {
  identityTypePerConfig('IDENTITY_TYPE_PER_CONFIG'),
  identityTypePerProject('IDENTITY_TYPE_PER_PROJECT');

  const StorageInsightsDatasetConfigType(this.terraformValue);
  @override
  final String terraformValue;
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
///   localName: 'inventory',
///   datasetConfigId: TfArg.literal('terradart-insights'),
///   location: TfArg.literal('asia-northeast1'),
///   retentionPeriodDays: TfArg.literal(1),
///   identity: StorageInsightsDatasetConfigIdentity(
///     type: TfArg.literal(
///       StorageInsightsDatasetConfigType.identityTypePerConfig,
///     ),
///   ),
///   source: StorageInsightsDatasetConfigSourceProjects(
///     projectNumbers: TfArg.literal([projectNumber]),
///   ),
/// );
/// ```
final class GoogleStorageInsightsDatasetConfig extends Resource {
  static const String tfType = 'google_storage_insights_dataset_config';

  GoogleStorageInsightsDatasetConfig({
    required super.localName,
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
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
  TfRef<num> get activityDataRetentionPeriodDaysRef =>
      TfRef.attribute<num>(this, 'activity_data_retention_period_days');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `include_newly_created_buckets` attribute.
  TfRef<bool> get includeNewlyCreatedBucketsRef =>
      TfRef.attribute<bool>(this, 'include_newly_created_buckets');

  /// Reference to `link_dataset` attribute.
  TfRef<bool> get linkDatasetRef => TfRef.attribute<bool>(this, 'link_dataset');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `organization_number` attribute.
  TfRef<String> get organizationNumberRef =>
      TfRef.attribute<String>(this, 'organization_number');

  /// Reference to `organization_scope` attribute.
  TfRef<bool> get organizationScopeRef =>
      TfRef.attribute<bool>(this, 'organization_scope');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `retention_period_days` attribute.
  TfRef<num> get retentionPeriodDaysRef =>
      TfRef.attribute<num>(this, 'retention_period_days');

  /// Reference to `dataset_config_id` attribute.
  TfRef<String> get datasetConfigIdRef =>
      TfRef.attribute<String>(this, 'dataset_config_id');
}
