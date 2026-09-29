// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_storage_control_organization_intelligence_config`.
const Set<String> _googleStorageControlOrganizationIntelligenceConfigSensitive =
    <String>{};

/// Typed helper for the `filter` block of
/// `google_storage_control_organization_intelligence_config` (derived from provider schema).
@immutable
final class StorageControlOrganizationIntelligenceConfigFilter {
  const StorageControlOrganizationIntelligenceConfigFilter({
    this.excludedCloudStorageBucketsOrIncludedCloudStorageBuckets,
    this.excludedCloudStorageLocationsOrIncludedCloudStorageLocations,
  });

  final StorageControlOrganizationIntelligenceConfigFilterExcludedCloudStorageBucketsOrIncludedCloudStorageBuckets?
  excludedCloudStorageBucketsOrIncludedCloudStorageBuckets;

  final StorageControlOrganizationIntelligenceConfigFilterExcludedCloudStorageLocationsOrIncludedCloudStorageLocations?
  excludedCloudStorageLocationsOrIncludedCloudStorageLocations;

  Map<String, Object?> encode() => {
    ...?excludedCloudStorageBucketsOrIncludedCloudStorageBuckets?.encode(),
    ...?excludedCloudStorageLocationsOrIncludedCloudStorageLocations?.encode(),
  };
}

/// At most one of `excluded_cloud_storage_buckets`, `included_cloud_storage_buckets` on the `filter` block of `google_storage_control_organization_intelligence_config`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
sealed class StorageControlOrganizationIntelligenceConfigFilterExcludedCloudStorageBucketsOrIncludedCloudStorageBuckets {
  const StorageControlOrganizationIntelligenceConfigFilterExcludedCloudStorageBucketsOrIncludedCloudStorageBuckets();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// Sets `excluded_cloud_storage_buckets` (one of the [StorageControlOrganizationIntelligenceConfigFilterExcludedCloudStorageBucketsOrIncludedCloudStorageBuckets] choices).
final class StorageControlOrganizationIntelligenceConfigFilterExcludedCloudStorageBucketsOption
    extends
        StorageControlOrganizationIntelligenceConfigFilterExcludedCloudStorageBucketsOrIncludedCloudStorageBuckets {
  const StorageControlOrganizationIntelligenceConfigFilterExcludedCloudStorageBucketsOption({
    required this.excludedCloudStorageBuckets,
  });

  final StorageControlOrganizationIntelligenceConfigFilterExcludedCloudStorageBuckets
  excludedCloudStorageBuckets;

  @override
  String get blockKey => 'excluded_cloud_storage_buckets';

  @override
  Map<String, Object?> encode() => {
    'excluded_cloud_storage_buckets': excludedCloudStorageBuckets.encode(),
  };
}

/// Sets `included_cloud_storage_buckets` (one of the [StorageControlOrganizationIntelligenceConfigFilterExcludedCloudStorageBucketsOrIncludedCloudStorageBuckets] choices).
final class StorageControlOrganizationIntelligenceConfigFilterIncludedCloudStorageBucketsOption
    extends
        StorageControlOrganizationIntelligenceConfigFilterExcludedCloudStorageBucketsOrIncludedCloudStorageBuckets {
  const StorageControlOrganizationIntelligenceConfigFilterIncludedCloudStorageBucketsOption({
    required this.includedCloudStorageBuckets,
  });

  final StorageControlOrganizationIntelligenceConfigFilterIncludedCloudStorageBuckets
  includedCloudStorageBuckets;

  @override
  String get blockKey => 'included_cloud_storage_buckets';

  @override
  Map<String, Object?> encode() => {
    'included_cloud_storage_buckets': includedCloudStorageBuckets.encode(),
  };
}

/// At most one of `excluded_cloud_storage_locations`, `included_cloud_storage_locations` on the `filter` block of `google_storage_control_organization_intelligence_config`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
sealed class StorageControlOrganizationIntelligenceConfigFilterExcludedCloudStorageLocationsOrIncludedCloudStorageLocations {
  const StorageControlOrganizationIntelligenceConfigFilterExcludedCloudStorageLocationsOrIncludedCloudStorageLocations();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// Sets `excluded_cloud_storage_locations` (one of the [StorageControlOrganizationIntelligenceConfigFilterExcludedCloudStorageLocationsOrIncludedCloudStorageLocations] choices).
final class StorageControlOrganizationIntelligenceConfigFilterExcludedCloudStorageLocationsOption
    extends
        StorageControlOrganizationIntelligenceConfigFilterExcludedCloudStorageLocationsOrIncludedCloudStorageLocations {
  const StorageControlOrganizationIntelligenceConfigFilterExcludedCloudStorageLocationsOption({
    required this.excludedCloudStorageLocations,
  });

  final StorageControlOrganizationIntelligenceConfigFilterExcludedCloudStorageLocations
  excludedCloudStorageLocations;

  @override
  String get blockKey => 'excluded_cloud_storage_locations';

  @override
  Map<String, Object?> encode() => {
    'excluded_cloud_storage_locations': excludedCloudStorageLocations.encode(),
  };
}

/// Sets `included_cloud_storage_locations` (one of the [StorageControlOrganizationIntelligenceConfigFilterExcludedCloudStorageLocationsOrIncludedCloudStorageLocations] choices).
final class StorageControlOrganizationIntelligenceConfigFilterIncludedCloudStorageLocationsOption
    extends
        StorageControlOrganizationIntelligenceConfigFilterExcludedCloudStorageLocationsOrIncludedCloudStorageLocations {
  const StorageControlOrganizationIntelligenceConfigFilterIncludedCloudStorageLocationsOption({
    required this.includedCloudStorageLocations,
  });

  final StorageControlOrganizationIntelligenceConfigFilterIncludedCloudStorageLocations
  includedCloudStorageLocations;

  @override
  String get blockKey => 'included_cloud_storage_locations';

  @override
  Map<String, Object?> encode() => {
    'included_cloud_storage_locations': includedCloudStorageLocations.encode(),
  };
}

/// Typed helper for the `filter.excluded_cloud_storage_buckets` block of
/// `google_storage_control_organization_intelligence_config` (derived from provider schema).
@immutable
final class StorageControlOrganizationIntelligenceConfigFilterExcludedCloudStorageBuckets {
  const StorageControlOrganizationIntelligenceConfigFilterExcludedCloudStorageBuckets({
    required this.bucketIdRegexes,
  });

  final TfArg<List<Object?>> bucketIdRegexes;

  Map<String, Object?> encode() => {
    'bucket_id_regexes': bucketIdRegexes.toTfJson(),
  };
}

/// Typed helper for the `filter.excluded_cloud_storage_locations` block of
/// `google_storage_control_organization_intelligence_config` (derived from provider schema).
@immutable
final class StorageControlOrganizationIntelligenceConfigFilterExcludedCloudStorageLocations {
  const StorageControlOrganizationIntelligenceConfigFilterExcludedCloudStorageLocations({
    required this.locations,
  });

  final TfArg<List<Object?>> locations;

  Map<String, Object?> encode() => {'locations': locations.toTfJson()};
}

/// Typed helper for the `filter.included_cloud_storage_buckets` block of
/// `google_storage_control_organization_intelligence_config` (derived from provider schema).
@immutable
final class StorageControlOrganizationIntelligenceConfigFilterIncludedCloudStorageBuckets {
  const StorageControlOrganizationIntelligenceConfigFilterIncludedCloudStorageBuckets({
    required this.bucketIdRegexes,
  });

  final TfArg<List<Object?>> bucketIdRegexes;

  Map<String, Object?> encode() => {
    'bucket_id_regexes': bucketIdRegexes.toTfJson(),
  };
}

/// Typed helper for the `filter.included_cloud_storage_locations` block of
/// `google_storage_control_organization_intelligence_config` (derived from provider schema).
@immutable
final class StorageControlOrganizationIntelligenceConfigFilterIncludedCloudStorageLocations {
  const StorageControlOrganizationIntelligenceConfigFilterIncludedCloudStorageLocations({
    required this.locations,
  });

  final TfArg<List<Object?>> locations;

  Map<String, Object?> encode() => {'locations': locations.toTfJson()};
}

/// Factory wrapper for `google_storage_control_organization_intelligence_config`.
///
/// The Organization Storage Intelligence Config resource represents GCS Storage
/// Intelligence operating on individual GCP organization. Storage Intelligence
/// Config is a singleton resource and individual instance exists on each GCP
/// organization.
///
/// Storage Intelligence is for Storage Admins to manage GCP storage assets at
/// scale for performance, cost, security & compliance.
///
/// Organization Storage Intelligence config — leftover factory on the
/// apply-excluded path (synth + `terraform validate` only).
///
/// Needs an organization / folder / external artifact that
/// standalone terradart-validate cannot supply. Do not apply.
final class GoogleStorageControlOrganizationIntelligenceConfig
    extends Resource {
  static const String tfType =
      'google_storage_control_organization_intelligence_config';

  GoogleStorageControlOrganizationIntelligenceConfig({
    required super.localName,
    TfArg<String>? editionConfig,
    required TfArg<String> name,
    StorageControlOrganizationIntelligenceConfigFilter? filter,
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
      _googleStorageControlOrganizationIntelligenceConfigSensitive;

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
