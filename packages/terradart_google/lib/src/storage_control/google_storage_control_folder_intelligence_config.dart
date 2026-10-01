// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_storage_control_folder_intelligence_config`.
const Set<String> _googleStorageControlFolderIntelligenceConfigSensitive =
    <String>{};

/// Typed helper for the `filter` block of
/// `google_storage_control_folder_intelligence_config` (derived from provider schema).
@immutable
final class StorageControlFolderIntelligenceConfigFilter {
  const StorageControlFolderIntelligenceConfigFilter({
    this.cloudStorageBuckets,
    this.cloudStorageLocations,
  });

  final StorageControlFolderIntelligenceConfigCloudStorageBuckets?
  cloudStorageBuckets;

  final StorageControlFolderIntelligenceConfigCloudStorageLocations?
  cloudStorageLocations;

  Map<String, Object?> encode() => {
    ...?cloudStorageBuckets?.encode(),
    ...?cloudStorageLocations?.encode(),
  };
}

/// At most one of `excluded_cloud_storage_buckets`, `included_cloud_storage_buckets` on the `filter` block of `google_storage_control_folder_intelligence_config`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.excludedCloudStorageBuckets(...)`.
sealed class StorageControlFolderIntelligenceConfigCloudStorageBuckets {
  const StorageControlFolderIntelligenceConfigCloudStorageBuckets();

  /// Sets `excluded_cloud_storage_buckets`.
  const factory StorageControlFolderIntelligenceConfigCloudStorageBuckets.excludedCloudStorageBuckets(
    StorageControlFolderIntelligenceConfigExcludedCloudStorageBuckets
    excludedCloudStorageBuckets,
  ) = StorageControlFolderIntelligenceConfigExcludedCloudStorageBucketsChoice;

  /// Sets `included_cloud_storage_buckets`.
  const factory StorageControlFolderIntelligenceConfigCloudStorageBuckets.includedCloudStorageBuckets(
    StorageControlFolderIntelligenceConfigIncludedCloudStorageBuckets
    includedCloudStorageBuckets,
  ) = StorageControlFolderIntelligenceConfigIncludedCloudStorageBucketsChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [StorageControlFolderIntelligenceConfigCloudStorageBuckets.excludedCloudStorageBuckets] choice: sets `excluded_cloud_storage_buckets`.
final class StorageControlFolderIntelligenceConfigExcludedCloudStorageBucketsChoice
    extends StorageControlFolderIntelligenceConfigCloudStorageBuckets {
  const StorageControlFolderIntelligenceConfigExcludedCloudStorageBucketsChoice(
    this.excludedCloudStorageBuckets,
  );

  final StorageControlFolderIntelligenceConfigExcludedCloudStorageBuckets
  excludedCloudStorageBuckets;

  @override
  String get blockKey => 'excluded_cloud_storage_buckets';

  @override
  Map<String, Object?> encode() => {
    'excluded_cloud_storage_buckets': excludedCloudStorageBuckets.encode(),
  };
}

/// The [StorageControlFolderIntelligenceConfigCloudStorageBuckets.includedCloudStorageBuckets] choice: sets `included_cloud_storage_buckets`.
final class StorageControlFolderIntelligenceConfigIncludedCloudStorageBucketsChoice
    extends StorageControlFolderIntelligenceConfigCloudStorageBuckets {
  const StorageControlFolderIntelligenceConfigIncludedCloudStorageBucketsChoice(
    this.includedCloudStorageBuckets,
  );

  final StorageControlFolderIntelligenceConfigIncludedCloudStorageBuckets
  includedCloudStorageBuckets;

  @override
  String get blockKey => 'included_cloud_storage_buckets';

  @override
  Map<String, Object?> encode() => {
    'included_cloud_storage_buckets': includedCloudStorageBuckets.encode(),
  };
}

/// At most one of `excluded_cloud_storage_locations`, `included_cloud_storage_locations` on the `filter` block of `google_storage_control_folder_intelligence_config`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.excludedCloudStorageLocations(...)`.
sealed class StorageControlFolderIntelligenceConfigCloudStorageLocations {
  const StorageControlFolderIntelligenceConfigCloudStorageLocations();

  /// Sets `excluded_cloud_storage_locations`.
  const factory StorageControlFolderIntelligenceConfigCloudStorageLocations.excludedCloudStorageLocations(
    StorageControlFolderIntelligenceConfigExcludedCloudStorageLocations
    excludedCloudStorageLocations,
  ) = StorageControlFolderIntelligenceConfigExcludedCloudStorageLocationsChoice;

  /// Sets `included_cloud_storage_locations`.
  const factory StorageControlFolderIntelligenceConfigCloudStorageLocations.includedCloudStorageLocations(
    StorageControlFolderIntelligenceConfigIncludedCloudStorageLocations
    includedCloudStorageLocations,
  ) = StorageControlFolderIntelligenceConfigIncludedCloudStorageLocationsChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [StorageControlFolderIntelligenceConfigCloudStorageLocations.excludedCloudStorageLocations] choice: sets `excluded_cloud_storage_locations`.
final class StorageControlFolderIntelligenceConfigExcludedCloudStorageLocationsChoice
    extends StorageControlFolderIntelligenceConfigCloudStorageLocations {
  const StorageControlFolderIntelligenceConfigExcludedCloudStorageLocationsChoice(
    this.excludedCloudStorageLocations,
  );

  final StorageControlFolderIntelligenceConfigExcludedCloudStorageLocations
  excludedCloudStorageLocations;

  @override
  String get blockKey => 'excluded_cloud_storage_locations';

  @override
  Map<String, Object?> encode() => {
    'excluded_cloud_storage_locations': excludedCloudStorageLocations.encode(),
  };
}

/// The [StorageControlFolderIntelligenceConfigCloudStorageLocations.includedCloudStorageLocations] choice: sets `included_cloud_storage_locations`.
final class StorageControlFolderIntelligenceConfigIncludedCloudStorageLocationsChoice
    extends StorageControlFolderIntelligenceConfigCloudStorageLocations {
  const StorageControlFolderIntelligenceConfigIncludedCloudStorageLocationsChoice(
    this.includedCloudStorageLocations,
  );

  final StorageControlFolderIntelligenceConfigIncludedCloudStorageLocations
  includedCloudStorageLocations;

  @override
  String get blockKey => 'included_cloud_storage_locations';

  @override
  Map<String, Object?> encode() => {
    'included_cloud_storage_locations': includedCloudStorageLocations.encode(),
  };
}

/// Typed helper for the `filter.excluded_cloud_storage_buckets` block of
/// `google_storage_control_folder_intelligence_config` (derived from provider schema).
@immutable
final class StorageControlFolderIntelligenceConfigExcludedCloudStorageBuckets {
  const StorageControlFolderIntelligenceConfigExcludedCloudStorageBuckets({
    required this.bucketIdRegexes,
  });

  final TfArg<List<String>> bucketIdRegexes;

  Map<String, Object?> encode() => {
    'bucket_id_regexes': bucketIdRegexes.toTfJson(),
  };
}

/// Typed helper for the `filter.excluded_cloud_storage_locations` block of
/// `google_storage_control_folder_intelligence_config` (derived from provider schema).
@immutable
final class StorageControlFolderIntelligenceConfigExcludedCloudStorageLocations {
  const StorageControlFolderIntelligenceConfigExcludedCloudStorageLocations({
    required this.locations,
  });

  final TfArg<List<String>> locations;

  Map<String, Object?> encode() => {'locations': locations.toTfJson()};
}

/// Typed helper for the `filter.included_cloud_storage_buckets` block of
/// `google_storage_control_folder_intelligence_config` (derived from provider schema).
@immutable
final class StorageControlFolderIntelligenceConfigIncludedCloudStorageBuckets {
  const StorageControlFolderIntelligenceConfigIncludedCloudStorageBuckets({
    required this.bucketIdRegexes,
  });

  final TfArg<List<String>> bucketIdRegexes;

  Map<String, Object?> encode() => {
    'bucket_id_regexes': bucketIdRegexes.toTfJson(),
  };
}

/// Typed helper for the `filter.included_cloud_storage_locations` block of
/// `google_storage_control_folder_intelligence_config` (derived from provider schema).
@immutable
final class StorageControlFolderIntelligenceConfigIncludedCloudStorageLocations {
  const StorageControlFolderIntelligenceConfigIncludedCloudStorageLocations({
    required this.locations,
  });

  final TfArg<List<String>> locations;

  Map<String, Object?> encode() => {'locations': locations.toTfJson()};
}

/// Factory wrapper for `google_storage_control_folder_intelligence_config`.
///
/// The Folder Storage Intelligence resource represents GCS Storage Intelligence
/// operating on individual GCP Folder. Storage Intelligence is a singleton
/// resource and individual instance exists on each GCP Folder.
///
/// Storage Intelligence is for Storage Admins to manage GCP storage assets at
/// scale for performance, cost, security & compliance.
///
/// Folder Storage Intelligence config — leftover factory on the
/// apply-excluded path (synth + `terraform validate` only).
///
/// Needs an organization / folder / external artifact that
/// standalone terradart-validate cannot supply. Do not apply.
final class GoogleStorageControlFolderIntelligenceConfig extends Resource {
  static const String tfType =
      'google_storage_control_folder_intelligence_config';

  GoogleStorageControlFolderIntelligenceConfig(
    super.localName, {
    TfArg<String>? editionConfig,
    required TfArg<String> name,
    StorageControlFolderIntelligenceConfigFilter? filter,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'edition_config': ?editionConfig,
           'name': name,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleStorageControlFolderIntelligenceConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleStorageControlFolderIntelligenceConfig>`.
  RefTo<GoogleStorageControlFolderIntelligenceConfig> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_intelligence_config` attribute.
  TfRef<List<Map<String, Object?>>> get effectiveIntelligenceConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'effective_intelligence_config',
      );

  /// Reference to `trial_config` attribute.
  TfRef<List<Map<String, Object?>>> get trialConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'trial_config');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `edition_config` attribute.
  TfRef<String> get editionConfig =>
      TfRef.attribute<String>(this, 'edition_config');
}
