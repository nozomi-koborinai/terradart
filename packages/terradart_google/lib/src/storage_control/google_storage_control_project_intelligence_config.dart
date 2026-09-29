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
    this.excludedCloudStorageBucketsOrIncludedCloudStorageBuckets,
    this.excludedCloudStorageLocationsOrIncludedCloudStorageLocations,
  });

  final StorageControlProjectIntelligenceConfigFilterExcludedCloudStorageBucketsOrIncludedCloudStorageBuckets?
  excludedCloudStorageBucketsOrIncludedCloudStorageBuckets;

  final StorageControlProjectIntelligenceConfigFilterExcludedCloudStorageLocationsOrIncludedCloudStorageLocations?
  excludedCloudStorageLocationsOrIncludedCloudStorageLocations;

  Map<String, Object?> encode() => {
    ...?excludedCloudStorageBucketsOrIncludedCloudStorageBuckets?.encode(),
    ...?excludedCloudStorageLocationsOrIncludedCloudStorageLocations?.encode(),
  };
}

/// At most one of `excluded_cloud_storage_buckets`, `included_cloud_storage_buckets` on the `filter` block of `google_storage_control_project_intelligence_config`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
sealed class StorageControlProjectIntelligenceConfigFilterExcludedCloudStorageBucketsOrIncludedCloudStorageBuckets {
  const StorageControlProjectIntelligenceConfigFilterExcludedCloudStorageBucketsOrIncludedCloudStorageBuckets();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// Sets `excluded_cloud_storage_buckets` (one of the [StorageControlProjectIntelligenceConfigFilterExcludedCloudStorageBucketsOrIncludedCloudStorageBuckets] choices).
final class StorageControlProjectIntelligenceConfigFilterExcludedCloudStorageBucketsOption
    extends
        StorageControlProjectIntelligenceConfigFilterExcludedCloudStorageBucketsOrIncludedCloudStorageBuckets {
  const StorageControlProjectIntelligenceConfigFilterExcludedCloudStorageBucketsOption({
    required this.excludedCloudStorageBuckets,
  });

  final StorageControlProjectIntelligenceConfigFilterExcludedCloudStorageBuckets
  excludedCloudStorageBuckets;

  @override
  String get blockKey => 'excluded_cloud_storage_buckets';

  @override
  Map<String, Object?> encode() => {
    'excluded_cloud_storage_buckets': excludedCloudStorageBuckets.encode(),
  };
}

/// Sets `included_cloud_storage_buckets` (one of the [StorageControlProjectIntelligenceConfigFilterExcludedCloudStorageBucketsOrIncludedCloudStorageBuckets] choices).
final class StorageControlProjectIntelligenceConfigFilterIncludedCloudStorageBucketsOption
    extends
        StorageControlProjectIntelligenceConfigFilterExcludedCloudStorageBucketsOrIncludedCloudStorageBuckets {
  const StorageControlProjectIntelligenceConfigFilterIncludedCloudStorageBucketsOption({
    required this.includedCloudStorageBuckets,
  });

  final StorageControlProjectIntelligenceConfigFilterIncludedCloudStorageBuckets
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
sealed class StorageControlProjectIntelligenceConfigFilterExcludedCloudStorageLocationsOrIncludedCloudStorageLocations {
  const StorageControlProjectIntelligenceConfigFilterExcludedCloudStorageLocationsOrIncludedCloudStorageLocations();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// Sets `excluded_cloud_storage_locations` (one of the [StorageControlProjectIntelligenceConfigFilterExcludedCloudStorageLocationsOrIncludedCloudStorageLocations] choices).
final class StorageControlProjectIntelligenceConfigFilterExcludedCloudStorageLocationsOption
    extends
        StorageControlProjectIntelligenceConfigFilterExcludedCloudStorageLocationsOrIncludedCloudStorageLocations {
  const StorageControlProjectIntelligenceConfigFilterExcludedCloudStorageLocationsOption({
    required this.excludedCloudStorageLocations,
  });

  final StorageControlProjectIntelligenceConfigFilterExcludedCloudStorageLocations
  excludedCloudStorageLocations;

  @override
  String get blockKey => 'excluded_cloud_storage_locations';

  @override
  Map<String, Object?> encode() => {
    'excluded_cloud_storage_locations': excludedCloudStorageLocations.encode(),
  };
}

/// Sets `included_cloud_storage_locations` (one of the [StorageControlProjectIntelligenceConfigFilterExcludedCloudStorageLocationsOrIncludedCloudStorageLocations] choices).
final class StorageControlProjectIntelligenceConfigFilterIncludedCloudStorageLocationsOption
    extends
        StorageControlProjectIntelligenceConfigFilterExcludedCloudStorageLocationsOrIncludedCloudStorageLocations {
  const StorageControlProjectIntelligenceConfigFilterIncludedCloudStorageLocationsOption({
    required this.includedCloudStorageLocations,
  });

  final StorageControlProjectIntelligenceConfigFilterIncludedCloudStorageLocations
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
final class StorageControlProjectIntelligenceConfigFilterExcludedCloudStorageBuckets {
  const StorageControlProjectIntelligenceConfigFilterExcludedCloudStorageBuckets({
    required this.bucketIdRegexes,
  });

  final TfArg<List<Object?>> bucketIdRegexes;

  Map<String, Object?> encode() => {
    'bucket_id_regexes': bucketIdRegexes.toTfJson(),
  };
}

/// Typed helper for the `filter.excluded_cloud_storage_locations` block of
/// `google_storage_control_project_intelligence_config` (derived from provider schema).
@immutable
final class StorageControlProjectIntelligenceConfigFilterExcludedCloudStorageLocations {
  const StorageControlProjectIntelligenceConfigFilterExcludedCloudStorageLocations({
    required this.locations,
  });

  final TfArg<List<Object?>> locations;

  Map<String, Object?> encode() => {'locations': locations.toTfJson()};
}

/// Typed helper for the `filter.included_cloud_storage_buckets` block of
/// `google_storage_control_project_intelligence_config` (derived from provider schema).
@immutable
final class StorageControlProjectIntelligenceConfigFilterIncludedCloudStorageBuckets {
  const StorageControlProjectIntelligenceConfigFilterIncludedCloudStorageBuckets({
    required this.bucketIdRegexes,
  });

  final TfArg<List<Object?>> bucketIdRegexes;

  Map<String, Object?> encode() => {
    'bucket_id_regexes': bucketIdRegexes.toTfJson(),
  };
}

/// Typed helper for the `filter.included_cloud_storage_locations` block of
/// `google_storage_control_project_intelligence_config` (derived from provider schema).
@immutable
final class StorageControlProjectIntelligenceConfigFilterIncludedCloudStorageLocations {
  const StorageControlProjectIntelligenceConfigFilterIncludedCloudStorageLocations({
    required this.locations,
  });

  final TfArg<List<Object?>> locations;

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
///   localName: 'intelligence',
///   name: TfArg.literal(projectId),
///   editionConfig: TfArg.literal(
///     StorageControlProjectIntelligenceConfigEditionConfig.disabled,
///   ),
/// );
/// ```
final class GoogleStorageControlProjectIntelligenceConfig extends Resource {
  static const String tfType =
      'google_storage_control_project_intelligence_config';

  GoogleStorageControlProjectIntelligenceConfig({
    required super.localName,
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
           if (editionConfig != null) 'edition_config': editionConfig,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleStorageControlProjectIntelligenceConfigSensitive;

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
