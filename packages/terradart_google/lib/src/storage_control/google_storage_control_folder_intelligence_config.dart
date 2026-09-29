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
    this.excludedCloudStorageBucketsOrIncludedCloudStorageBuckets,
    this.excludedCloudStorageLocationsOrIncludedCloudStorageLocations,
  });

  final StorageControlFolderIntelligenceConfigFilterExcludedCloudStorageBucketsOrIncludedCloudStorageBuckets?
  excludedCloudStorageBucketsOrIncludedCloudStorageBuckets;

  final StorageControlFolderIntelligenceConfigFilterExcludedCloudStorageLocationsOrIncludedCloudStorageLocations?
  excludedCloudStorageLocationsOrIncludedCloudStorageLocations;

  Map<String, Object?> encode() => {
    ...?excludedCloudStorageBucketsOrIncludedCloudStorageBuckets?.encode(),
    ...?excludedCloudStorageLocationsOrIncludedCloudStorageLocations?.encode(),
  };
}

/// At most one of `excluded_cloud_storage_buckets`, `included_cloud_storage_buckets` on the `filter` block of `google_storage_control_folder_intelligence_config`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.excludedCloudStorageBuckets(...)`.
sealed class StorageControlFolderIntelligenceConfigFilterExcludedCloudStorageBucketsOrIncludedCloudStorageBuckets {
  const StorageControlFolderIntelligenceConfigFilterExcludedCloudStorageBucketsOrIncludedCloudStorageBuckets();

  /// Sets `excluded_cloud_storage_buckets`.
  const factory StorageControlFolderIntelligenceConfigFilterExcludedCloudStorageBucketsOrIncludedCloudStorageBuckets.excludedCloudStorageBuckets(
    StorageControlFolderIntelligenceConfigFilterExcludedCloudStorageBuckets
    excludedCloudStorageBuckets,
  ) = StorageControlFolderIntelligenceConfigFilterExcludedCloudStorageBucketsOrIncludedCloudStorageBucketsExcludedCloudStorageBuckets;

  /// Sets `included_cloud_storage_buckets`.
  const factory StorageControlFolderIntelligenceConfigFilterExcludedCloudStorageBucketsOrIncludedCloudStorageBuckets.includedCloudStorageBuckets(
    StorageControlFolderIntelligenceConfigFilterIncludedCloudStorageBuckets
    includedCloudStorageBuckets,
  ) = StorageControlFolderIntelligenceConfigFilterExcludedCloudStorageBucketsOrIncludedCloudStorageBucketsIncludedCloudStorageBuckets;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [StorageControlFolderIntelligenceConfigFilterExcludedCloudStorageBucketsOrIncludedCloudStorageBuckets.excludedCloudStorageBuckets] choice: sets `excluded_cloud_storage_buckets`.
final class StorageControlFolderIntelligenceConfigFilterExcludedCloudStorageBucketsOrIncludedCloudStorageBucketsExcludedCloudStorageBuckets
    extends
        StorageControlFolderIntelligenceConfigFilterExcludedCloudStorageBucketsOrIncludedCloudStorageBuckets {
  const StorageControlFolderIntelligenceConfigFilterExcludedCloudStorageBucketsOrIncludedCloudStorageBucketsExcludedCloudStorageBuckets(
    this.excludedCloudStorageBuckets,
  );

  final StorageControlFolderIntelligenceConfigFilterExcludedCloudStorageBuckets
  excludedCloudStorageBuckets;

  @override
  String get blockKey => 'excluded_cloud_storage_buckets';

  @override
  Map<String, Object?> encode() => {
    'excluded_cloud_storage_buckets': excludedCloudStorageBuckets.encode(),
  };
}

/// The [StorageControlFolderIntelligenceConfigFilterExcludedCloudStorageBucketsOrIncludedCloudStorageBuckets.includedCloudStorageBuckets] choice: sets `included_cloud_storage_buckets`.
final class StorageControlFolderIntelligenceConfigFilterExcludedCloudStorageBucketsOrIncludedCloudStorageBucketsIncludedCloudStorageBuckets
    extends
        StorageControlFolderIntelligenceConfigFilterExcludedCloudStorageBucketsOrIncludedCloudStorageBuckets {
  const StorageControlFolderIntelligenceConfigFilterExcludedCloudStorageBucketsOrIncludedCloudStorageBucketsIncludedCloudStorageBuckets(
    this.includedCloudStorageBuckets,
  );

  final StorageControlFolderIntelligenceConfigFilterIncludedCloudStorageBuckets
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
sealed class StorageControlFolderIntelligenceConfigFilterExcludedCloudStorageLocationsOrIncludedCloudStorageLocations {
  const StorageControlFolderIntelligenceConfigFilterExcludedCloudStorageLocationsOrIncludedCloudStorageLocations();

  /// Sets `excluded_cloud_storage_locations`.
  const factory StorageControlFolderIntelligenceConfigFilterExcludedCloudStorageLocationsOrIncludedCloudStorageLocations.excludedCloudStorageLocations(
    StorageControlFolderIntelligenceConfigFilterExcludedCloudStorageLocations
    excludedCloudStorageLocations,
  ) = StorageControlFolderIntelligenceConfigFilterExcludedCloudStorageLocationsOrIncludedCloudStorageLocationsExcludedCloudStorageLocations;

  /// Sets `included_cloud_storage_locations`.
  const factory StorageControlFolderIntelligenceConfigFilterExcludedCloudStorageLocationsOrIncludedCloudStorageLocations.includedCloudStorageLocations(
    StorageControlFolderIntelligenceConfigFilterIncludedCloudStorageLocations
    includedCloudStorageLocations,
  ) = StorageControlFolderIntelligenceConfigFilterExcludedCloudStorageLocationsOrIncludedCloudStorageLocationsIncludedCloudStorageLocations;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [StorageControlFolderIntelligenceConfigFilterExcludedCloudStorageLocationsOrIncludedCloudStorageLocations.excludedCloudStorageLocations] choice: sets `excluded_cloud_storage_locations`.
final class StorageControlFolderIntelligenceConfigFilterExcludedCloudStorageLocationsOrIncludedCloudStorageLocationsExcludedCloudStorageLocations
    extends
        StorageControlFolderIntelligenceConfigFilterExcludedCloudStorageLocationsOrIncludedCloudStorageLocations {
  const StorageControlFolderIntelligenceConfigFilterExcludedCloudStorageLocationsOrIncludedCloudStorageLocationsExcludedCloudStorageLocations(
    this.excludedCloudStorageLocations,
  );

  final StorageControlFolderIntelligenceConfigFilterExcludedCloudStorageLocations
  excludedCloudStorageLocations;

  @override
  String get blockKey => 'excluded_cloud_storage_locations';

  @override
  Map<String, Object?> encode() => {
    'excluded_cloud_storage_locations': excludedCloudStorageLocations.encode(),
  };
}

/// The [StorageControlFolderIntelligenceConfigFilterExcludedCloudStorageLocationsOrIncludedCloudStorageLocations.includedCloudStorageLocations] choice: sets `included_cloud_storage_locations`.
final class StorageControlFolderIntelligenceConfigFilterExcludedCloudStorageLocationsOrIncludedCloudStorageLocationsIncludedCloudStorageLocations
    extends
        StorageControlFolderIntelligenceConfigFilterExcludedCloudStorageLocationsOrIncludedCloudStorageLocations {
  const StorageControlFolderIntelligenceConfigFilterExcludedCloudStorageLocationsOrIncludedCloudStorageLocationsIncludedCloudStorageLocations(
    this.includedCloudStorageLocations,
  );

  final StorageControlFolderIntelligenceConfigFilterIncludedCloudStorageLocations
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
final class StorageControlFolderIntelligenceConfigFilterExcludedCloudStorageBuckets {
  const StorageControlFolderIntelligenceConfigFilterExcludedCloudStorageBuckets({
    required this.bucketIdRegexes,
  });

  final TfArg<List<Object?>> bucketIdRegexes;

  Map<String, Object?> encode() => {
    'bucket_id_regexes': bucketIdRegexes.toTfJson(),
  };
}

/// Typed helper for the `filter.excluded_cloud_storage_locations` block of
/// `google_storage_control_folder_intelligence_config` (derived from provider schema).
@immutable
final class StorageControlFolderIntelligenceConfigFilterExcludedCloudStorageLocations {
  const StorageControlFolderIntelligenceConfigFilterExcludedCloudStorageLocations({
    required this.locations,
  });

  final TfArg<List<Object?>> locations;

  Map<String, Object?> encode() => {'locations': locations.toTfJson()};
}

/// Typed helper for the `filter.included_cloud_storage_buckets` block of
/// `google_storage_control_folder_intelligence_config` (derived from provider schema).
@immutable
final class StorageControlFolderIntelligenceConfigFilterIncludedCloudStorageBuckets {
  const StorageControlFolderIntelligenceConfigFilterIncludedCloudStorageBuckets({
    required this.bucketIdRegexes,
  });

  final TfArg<List<Object?>> bucketIdRegexes;

  Map<String, Object?> encode() => {
    'bucket_id_regexes': bucketIdRegexes.toTfJson(),
  };
}

/// Typed helper for the `filter.included_cloud_storage_locations` block of
/// `google_storage_control_folder_intelligence_config` (derived from provider schema).
@immutable
final class StorageControlFolderIntelligenceConfigFilterIncludedCloudStorageLocations {
  const StorageControlFolderIntelligenceConfigFilterIncludedCloudStorageLocations({
    required this.locations,
  });

  final TfArg<List<Object?>> locations;

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

  GoogleStorageControlFolderIntelligenceConfig({
    required super.localName,
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
           if (editionConfig != null) 'edition_config': editionConfig,
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
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}
