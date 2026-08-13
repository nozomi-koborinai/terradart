// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_storage_insights_dataset_config`.
const Set<String> _googleStorageInsightsDatasetConfigSensitive = <String>{};

/// Storage Insights Dataset Config Dataset Config enum for `dataset_config_state`.
enum StorageInsightsDatasetConfigDatasetConfigState implements TerraformEnum {
  configStateUnspecified('CONFIG_STATE_UNSPECIFIED'),
  configStateActive('CONFIG_STATE_ACTIVE'),
  configStateVerificationInProgress('CONFIG_STATE_VERIFICATION_IN_PROGRESS'),
  configStateCreated('CONFIG_STATE_CREATED'),
  configStateProcessing('CONFIG_STATE_PROCESSING');

  const StorageInsightsDatasetConfigDatasetConfigState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Exactly one dataset source scope (MM `exactly_one_of`:
/// `source_projects` / `source_folders` / `organization_scope`).
sealed class StorageInsightsDatasetConfigSource {
  const StorageInsightsDatasetConfigSource();

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
@immutable
final class StorageInsightsDatasetConfigExcludeCloudStorageBucketsCloudStorageBuckets {
  const StorageInsightsDatasetConfigExcludeCloudStorageBucketsCloudStorageBuckets({
    this.bucketName,
    this.bucketPrefixRegex,
  });

  final TfArg<String>? bucketName;

  final TfArg<String>? bucketPrefixRegex;

  Map<String, Object?> encode() => {
    if (bucketName != null) 'bucket_name': bucketName!.toTfJson(),
    if (bucketPrefixRegex != null)
      'bucket_prefix_regex': bucketPrefixRegex!.toTfJson(),
  };
}

/// Typed helper for the `exclude_cloud_storage_locations` block of
/// `google_storage_insights_dataset_config` (derived from provider schema).
@immutable
final class StorageInsightsDatasetConfigExcludeCloudStorageLocations {
  const StorageInsightsDatasetConfigExcludeCloudStorageLocations({
    required this.locations,
  });

  final TfArg<List<Object?>> locations;

  Map<String, Object?> encode() => {'locations': locations.toTfJson()};
}

/// Typed helper for the `identity` block of
/// `google_storage_insights_dataset_config` (derived from provider schema).
@immutable
final class StorageInsightsDatasetConfigIdentity {
  const StorageInsightsDatasetConfigIdentity({required this.type});

  final TfArg<StorageInsightsDatasetConfigIdentityType> type;

  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// `type` — derived from the provider schema description.
enum StorageInsightsDatasetConfigIdentityType implements TerraformEnum {
  identityTypePerConfig('IDENTITY_TYPE_PER_CONFIG'),
  identityTypePerProject('IDENTITY_TYPE_PER_PROJECT');

  const StorageInsightsDatasetConfigIdentityType(this.terraformValue);
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
    StorageInsightsDatasetConfigIncludeCloudStorageBucketsCloudStorageBuckets
  >
  cloudStorageBuckets;

  Map<String, Object?> encode() => {
    'cloud_storage_buckets': [for (final e in cloudStorageBuckets) e.encode()],
  };
}

/// Typed helper for the `include_cloud_storage_buckets.cloud_storage_buckets` block of
/// `google_storage_insights_dataset_config` (derived from provider schema).
@immutable
final class StorageInsightsDatasetConfigIncludeCloudStorageBucketsCloudStorageBuckets {
  const StorageInsightsDatasetConfigIncludeCloudStorageBucketsCloudStorageBuckets({
    this.bucketName,
    this.bucketPrefixRegex,
  });

  final TfArg<String>? bucketName;

  final TfArg<String>? bucketPrefixRegex;

  Map<String, Object?> encode() => {
    if (bucketName != null) 'bucket_name': bucketName!.toTfJson(),
    if (bucketPrefixRegex != null)
      'bucket_prefix_regex': bucketPrefixRegex!.toTfJson(),
  };
}

/// Typed helper for the `include_cloud_storage_locations` block of
/// `google_storage_insights_dataset_config` (derived from provider schema).
@immutable
final class StorageInsightsDatasetConfigIncludeCloudStorageLocations {
  const StorageInsightsDatasetConfigIncludeCloudStorageLocations({
    required this.locations,
  });

  final TfArg<List<Object?>> locations;

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
///       StorageInsightsDatasetConfigIdentityType.identityTypePerConfig,
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
    StorageInsightsDatasetConfigIncludeCloudStorageBuckets?
    includeCloudStorageBuckets,
    TfArg<bool>? includeNewlyCreatedBuckets,
    TfArg<String>? description,
    TfArg<bool>? linkDataset,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'dataset_config_id': datasetConfigId,
           'retention_period_days': retentionPeriodDays,
           'identity': TfArg.literal(identity.encode()),
           if (includeCloudStorageBuckets != null)
             'include_cloud_storage_buckets': TfArg.literal(
               includeCloudStorageBuckets.encode(),
             ),
           if (includeNewlyCreatedBuckets != null)
             'include_newly_created_buckets': includeNewlyCreatedBuckets,
           if (description != null) 'description': description,
           if (linkDataset != null) 'link_dataset': linkDataset,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
           source.blockKey: TfArg.literal(source.encode()[source.blockKey]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleStorageInsightsDatasetConfigSensitive;

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

  /// Reference to `dataset_config_id` attribute.
  TfRef<String> get datasetConfigIdRef =>
      TfRef.attribute<String>(this, 'dataset_config_id');
}
