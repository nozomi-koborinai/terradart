// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_storage_control_project_intelligence_config`.
const Set<String> _googleStorageControlProjectIntelligenceConfigSensitive =
    <String>{};

/// Edition configuration of the Storage Intelligence resource.
enum StorageControlProjectIntelligenceConfigEditionConfig
    implements TerraformEnum {
  inherit('INHERIT'),
  trial('TRIAL'),
  disabled('DISABLED'),
  standard('STANDARD');

  const StorageControlProjectIntelligenceConfigEditionConfig(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `filter` block of
/// `google_storage_control_project_intelligence_config` (derived from provider schema).
@immutable
final class StorageControlProjectIntelligenceConfigFilter {
  const StorageControlProjectIntelligenceConfigFilter({
    this.cloudStorageBuckets,
    this.cloudStorageLocations,
  });

  final StorageControlProjectIntelligenceConfigCloudStorageBuckets?
  cloudStorageBuckets;

  final StorageControlProjectIntelligenceConfigCloudStorageLocations?
  cloudStorageLocations;

  Map<String, Object?> encode() => {
    ...?cloudStorageBuckets?.encode(),
    ...?cloudStorageLocations?.encode(),
  };
}

/// At most one of `excluded_cloud_storage_buckets`, `included_cloud_storage_buckets` on the `filter` block of `google_storage_control_project_intelligence_config`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.excludedCloudStorageBuckets(...)`.
sealed class StorageControlProjectIntelligenceConfigCloudStorageBuckets {
  const StorageControlProjectIntelligenceConfigCloudStorageBuckets();

  /// Sets `excluded_cloud_storage_buckets`.
  const factory StorageControlProjectIntelligenceConfigCloudStorageBuckets.excludedCloudStorageBuckets(
    StorageControlProjectIntelligenceConfigExcludedCloudStorageBuckets
    excludedCloudStorageBuckets,
  ) = StorageControlProjectIntelligenceConfigExcludedCloudStorageBucketsChoice;

  /// Sets `included_cloud_storage_buckets`.
  const factory StorageControlProjectIntelligenceConfigCloudStorageBuckets.includedCloudStorageBuckets(
    StorageControlProjectIntelligenceConfigIncludedCloudStorageBuckets
    includedCloudStorageBuckets,
  ) = StorageControlProjectIntelligenceConfigIncludedCloudStorageBucketsChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [StorageControlProjectIntelligenceConfigCloudStorageBuckets.excludedCloudStorageBuckets] choice: sets `excluded_cloud_storage_buckets`.
final class StorageControlProjectIntelligenceConfigExcludedCloudStorageBucketsChoice
    extends StorageControlProjectIntelligenceConfigCloudStorageBuckets {
  const StorageControlProjectIntelligenceConfigExcludedCloudStorageBucketsChoice(
    this.excludedCloudStorageBuckets,
  );

  final StorageControlProjectIntelligenceConfigExcludedCloudStorageBuckets
  excludedCloudStorageBuckets;

  @override
  String get blockKey => 'excluded_cloud_storage_buckets';

  @override
  Map<String, Object?> encode() => {
    'excluded_cloud_storage_buckets': excludedCloudStorageBuckets.encode(),
  };
}

/// The [StorageControlProjectIntelligenceConfigCloudStorageBuckets.includedCloudStorageBuckets] choice: sets `included_cloud_storage_buckets`.
final class StorageControlProjectIntelligenceConfigIncludedCloudStorageBucketsChoice
    extends StorageControlProjectIntelligenceConfigCloudStorageBuckets {
  const StorageControlProjectIntelligenceConfigIncludedCloudStorageBucketsChoice(
    this.includedCloudStorageBuckets,
  );

  final StorageControlProjectIntelligenceConfigIncludedCloudStorageBuckets
  includedCloudStorageBuckets;

  @override
  String get blockKey => 'included_cloud_storage_buckets';

  @override
  Map<String, Object?> encode() => {
    'included_cloud_storage_buckets': includedCloudStorageBuckets.encode(),
  };
}

/// At most one of `excluded_cloud_storage_locations`, `included_cloud_storage_locations` on the `filter` block of `google_storage_control_project_intelligence_config`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.excludedCloudStorageLocations(...)`.
sealed class StorageControlProjectIntelligenceConfigCloudStorageLocations {
  const StorageControlProjectIntelligenceConfigCloudStorageLocations();

  /// Sets `excluded_cloud_storage_locations`.
  const factory StorageControlProjectIntelligenceConfigCloudStorageLocations.excludedCloudStorageLocations(
    StorageControlProjectIntelligenceConfigExcludedCloudStorageLocations
    excludedCloudStorageLocations,
  ) = StorageControlProjectIntelligenceConfigExcludedCloudStorageLocationsChoice;

  /// Sets `included_cloud_storage_locations`.
  const factory StorageControlProjectIntelligenceConfigCloudStorageLocations.includedCloudStorageLocations(
    StorageControlProjectIntelligenceConfigIncludedCloudStorageLocations
    includedCloudStorageLocations,
  ) = StorageControlProjectIntelligenceConfigIncludedCloudStorageLocationsChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [StorageControlProjectIntelligenceConfigCloudStorageLocations.excludedCloudStorageLocations] choice: sets `excluded_cloud_storage_locations`.
final class StorageControlProjectIntelligenceConfigExcludedCloudStorageLocationsChoice
    extends StorageControlProjectIntelligenceConfigCloudStorageLocations {
  const StorageControlProjectIntelligenceConfigExcludedCloudStorageLocationsChoice(
    this.excludedCloudStorageLocations,
  );

  final StorageControlProjectIntelligenceConfigExcludedCloudStorageLocations
  excludedCloudStorageLocations;

  @override
  String get blockKey => 'excluded_cloud_storage_locations';

  @override
  Map<String, Object?> encode() => {
    'excluded_cloud_storage_locations': excludedCloudStorageLocations.encode(),
  };
}

/// The [StorageControlProjectIntelligenceConfigCloudStorageLocations.includedCloudStorageLocations] choice: sets `included_cloud_storage_locations`.
final class StorageControlProjectIntelligenceConfigIncludedCloudStorageLocationsChoice
    extends StorageControlProjectIntelligenceConfigCloudStorageLocations {
  const StorageControlProjectIntelligenceConfigIncludedCloudStorageLocationsChoice(
    this.includedCloudStorageLocations,
  );

  final StorageControlProjectIntelligenceConfigIncludedCloudStorageLocations
  includedCloudStorageLocations;

  @override
  String get blockKey => 'included_cloud_storage_locations';

  @override
  Map<String, Object?> encode() => {
    'included_cloud_storage_locations': includedCloudStorageLocations.encode(),
  };
}

/// Typed helper for the `filter.excluded_cloud_storage_buckets` block of
/// `google_storage_control_project_intelligence_config` (derived from provider schema).
@immutable
final class StorageControlProjectIntelligenceConfigExcludedCloudStorageBuckets {
  const StorageControlProjectIntelligenceConfigExcludedCloudStorageBuckets({
    required this.bucketIdRegexes,
  });

  final TfArg<List<String>> bucketIdRegexes;

  Map<String, Object?> encode() => {
    'bucket_id_regexes': bucketIdRegexes.toTfJson(),
  };
}

/// Typed helper for the `filter.excluded_cloud_storage_locations` block of
/// `google_storage_control_project_intelligence_config` (derived from provider schema).
@immutable
final class StorageControlProjectIntelligenceConfigExcludedCloudStorageLocations {
  const StorageControlProjectIntelligenceConfigExcludedCloudStorageLocations({
    required this.locations,
  });

  final TfArg<List<String>> locations;

  Map<String, Object?> encode() => {'locations': locations.toTfJson()};
}

/// Typed helper for the `filter.included_cloud_storage_buckets` block of
/// `google_storage_control_project_intelligence_config` (derived from provider schema).
@immutable
final class StorageControlProjectIntelligenceConfigIncludedCloudStorageBuckets {
  const StorageControlProjectIntelligenceConfigIncludedCloudStorageBuckets({
    required this.bucketIdRegexes,
  });

  final TfArg<List<String>> bucketIdRegexes;

  Map<String, Object?> encode() => {
    'bucket_id_regexes': bucketIdRegexes.toTfJson(),
  };
}

/// Typed helper for the `filter.included_cloud_storage_locations` block of
/// `google_storage_control_project_intelligence_config` (derived from provider schema).
@immutable
final class StorageControlProjectIntelligenceConfigIncludedCloudStorageLocations {
  const StorageControlProjectIntelligenceConfigIncludedCloudStorageLocations({
    required this.locations,
  });

  final TfArg<List<String>> locations;

  Map<String, Object?> encode() => {'locations': locations.toTfJson()};
}

/// Factory wrapper for `google_storage_control_project_intelligence_config`.
///
/// The Project Storage Intelligence Config resource represents GCS Storage
/// Intelligence operating on individual GCP project. Storage Intelligence
/// Config is a singleton resource and individual instance exists on each GCP
/// project.
///
/// Storage Intelligence is for Storage Admins to manage GCP storage assets at
/// scale for performance, cost, security & compliance.
///
/// Project-level **Cloud Storage Intelligence config** — a singleton that
/// controls whether Storage Intelligence runs on this GCP project.
///
/// Prefer [editionConfig] `DISABLED` for smoke stacks: the config is free
/// project metadata. Do **not** set `STANDARD` (or a paid `TRIAL` path) in
/// apply-smoke — those editions can enable billed Storage Intelligence.
/// `INHERIT` follows the parent org/folder setting and may still resolve
/// to a paid edition.
///
/// Terraform create/update use `PATCH`; destroy is state-only
/// (`exclude_delete` upstream) and leaves the GCP singleton in place.
///
/// Enable `storage.googleapis.com` via [GoogleProjectService] before apply.
///
/// Example:
/// ```dart
/// GoogleStorageControlProjectIntelligenceConfig(
///   'intelligence',
///   name: TfArg.literal(projectId),
///   editionConfig: TfArg.literal(
///     StorageControlProjectIntelligenceConfigEditionConfig.disabled,
///   ),
/// );
/// ```
final class GoogleStorageControlProjectIntelligenceConfig extends Resource {
  static const String tfType =
      'google_storage_control_project_intelligence_config';

  GoogleStorageControlProjectIntelligenceConfig(
    super.localName, {
    required TfArg<String> name,
    TfArg<StorageControlProjectIntelligenceConfigEditionConfig>? editionConfig,
    StorageControlProjectIntelligenceConfigFilter? filter,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'edition_config': ?editionConfig,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleStorageControlProjectIntelligenceConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleStorageControlProjectIntelligenceConfig>`.
  RefTo<GoogleStorageControlProjectIntelligenceConfig> get ref =>
      RefTo.of(this);

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
