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
    this.cloudStorageBuckets,
    this.cloudStorageLocations,
  });

  final StorageControlOrganizationIntelligenceConfigCloudStorageBuckets?
  cloudStorageBuckets;

  final StorageControlOrganizationIntelligenceConfigCloudStorageLocations?
  cloudStorageLocations;

  Map<String, Object?> encode() => {
    ...?cloudStorageBuckets?.encode(),
    ...?cloudStorageLocations?.encode(),
  };
}

/// At most one of `excluded_cloud_storage_buckets`, `included_cloud_storage_buckets` on the `filter` block of `google_storage_control_organization_intelligence_config`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.excludedCloudStorageBuckets(...)`.
sealed class StorageControlOrganizationIntelligenceConfigCloudStorageBuckets {
  const StorageControlOrganizationIntelligenceConfigCloudStorageBuckets();

  /// Sets `excluded_cloud_storage_buckets`.
  const factory StorageControlOrganizationIntelligenceConfigCloudStorageBuckets.excludedCloudStorageBuckets(
    StorageControlOrganizationIntelligenceConfigExcludedCloudStorageBuckets
    excludedCloudStorageBuckets,
  ) = StorageControlOrganizationIntelligenceConfigExcludedCloudStorageBucketsChoice;

  /// Sets `included_cloud_storage_buckets`.
  const factory StorageControlOrganizationIntelligenceConfigCloudStorageBuckets.includedCloudStorageBuckets(
    StorageControlOrganizationIntelligenceConfigIncludedCloudStorageBuckets
    includedCloudStorageBuckets,
  ) = StorageControlOrganizationIntelligenceConfigIncludedCloudStorageBucketsChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [StorageControlOrganizationIntelligenceConfigCloudStorageBuckets.excludedCloudStorageBuckets] choice: sets `excluded_cloud_storage_buckets`.
final class StorageControlOrganizationIntelligenceConfigExcludedCloudStorageBucketsChoice
    extends StorageControlOrganizationIntelligenceConfigCloudStorageBuckets {
  const StorageControlOrganizationIntelligenceConfigExcludedCloudStorageBucketsChoice(
    this.excludedCloudStorageBuckets,
  );

  final StorageControlOrganizationIntelligenceConfigExcludedCloudStorageBuckets
  excludedCloudStorageBuckets;

  @override
  String get blockKey => 'excluded_cloud_storage_buckets';

  @override
  Map<String, Object?> encode() => {
    'excluded_cloud_storage_buckets': excludedCloudStorageBuckets.encode(),
  };
}

/// The [StorageControlOrganizationIntelligenceConfigCloudStorageBuckets.includedCloudStorageBuckets] choice: sets `included_cloud_storage_buckets`.
final class StorageControlOrganizationIntelligenceConfigIncludedCloudStorageBucketsChoice
    extends StorageControlOrganizationIntelligenceConfigCloudStorageBuckets {
  const StorageControlOrganizationIntelligenceConfigIncludedCloudStorageBucketsChoice(
    this.includedCloudStorageBuckets,
  );

  final StorageControlOrganizationIntelligenceConfigIncludedCloudStorageBuckets
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
///
/// Pick one with a dot shorthand: `.excludedCloudStorageLocations(...)`.
sealed class StorageControlOrganizationIntelligenceConfigCloudStorageLocations {
  const StorageControlOrganizationIntelligenceConfigCloudStorageLocations();

  /// Sets `excluded_cloud_storage_locations`.
  const factory StorageControlOrganizationIntelligenceConfigCloudStorageLocations.excludedCloudStorageLocations(
    StorageControlOrganizationIntelligenceConfigExcludedCloudStorageLocations
    excludedCloudStorageLocations,
  ) = StorageControlOrganizationIntelligenceConfigExcludedCloudStorageLocationsChoice;

  /// Sets `included_cloud_storage_locations`.
  const factory StorageControlOrganizationIntelligenceConfigCloudStorageLocations.includedCloudStorageLocations(
    StorageControlOrganizationIntelligenceConfigIncludedCloudStorageLocations
    includedCloudStorageLocations,
  ) = StorageControlOrganizationIntelligenceConfigIncludedCloudStorageLocationsChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [StorageControlOrganizationIntelligenceConfigCloudStorageLocations.excludedCloudStorageLocations] choice: sets `excluded_cloud_storage_locations`.
final class StorageControlOrganizationIntelligenceConfigExcludedCloudStorageLocationsChoice
    extends StorageControlOrganizationIntelligenceConfigCloudStorageLocations {
  const StorageControlOrganizationIntelligenceConfigExcludedCloudStorageLocationsChoice(
    this.excludedCloudStorageLocations,
  );

  final StorageControlOrganizationIntelligenceConfigExcludedCloudStorageLocations
  excludedCloudStorageLocations;

  @override
  String get blockKey => 'excluded_cloud_storage_locations';

  @override
  Map<String, Object?> encode() => {
    'excluded_cloud_storage_locations': excludedCloudStorageLocations.encode(),
  };
}

/// The [StorageControlOrganizationIntelligenceConfigCloudStorageLocations.includedCloudStorageLocations] choice: sets `included_cloud_storage_locations`.
final class StorageControlOrganizationIntelligenceConfigIncludedCloudStorageLocationsChoice
    extends StorageControlOrganizationIntelligenceConfigCloudStorageLocations {
  const StorageControlOrganizationIntelligenceConfigIncludedCloudStorageLocationsChoice(
    this.includedCloudStorageLocations,
  );

  final StorageControlOrganizationIntelligenceConfigIncludedCloudStorageLocations
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
final class StorageControlOrganizationIntelligenceConfigExcludedCloudStorageBuckets {
  const StorageControlOrganizationIntelligenceConfigExcludedCloudStorageBuckets({
    required this.bucketIdRegexes,
  });

  final TfArg<List<String>> bucketIdRegexes;

  Map<String, Object?> encode() => {
    'bucket_id_regexes': bucketIdRegexes.toTfJson(),
  };
}

/// Typed helper for the `filter.excluded_cloud_storage_locations` block of
/// `google_storage_control_organization_intelligence_config` (derived from provider schema).
@immutable
final class StorageControlOrganizationIntelligenceConfigExcludedCloudStorageLocations {
  const StorageControlOrganizationIntelligenceConfigExcludedCloudStorageLocations({
    required this.locations,
  });

  final TfArg<List<String>> locations;

  Map<String, Object?> encode() => {'locations': locations.toTfJson()};
}

/// Typed helper for the `filter.included_cloud_storage_buckets` block of
/// `google_storage_control_organization_intelligence_config` (derived from provider schema).
@immutable
final class StorageControlOrganizationIntelligenceConfigIncludedCloudStorageBuckets {
  const StorageControlOrganizationIntelligenceConfigIncludedCloudStorageBuckets({
    required this.bucketIdRegexes,
  });

  final TfArg<List<String>> bucketIdRegexes;

  Map<String, Object?> encode() => {
    'bucket_id_regexes': bucketIdRegexes.toTfJson(),
  };
}

/// Typed helper for the `filter.included_cloud_storage_locations` block of
/// `google_storage_control_organization_intelligence_config` (derived from provider schema).
@immutable
final class StorageControlOrganizationIntelligenceConfigIncludedCloudStorageLocations {
  const StorageControlOrganizationIntelligenceConfigIncludedCloudStorageLocations({
    required this.locations,
  });

  final TfArg<List<String>> locations;

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
           'edition_config': ?editionConfig,
           'name': name,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleStorageControlOrganizationIntelligenceConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleStorageControlOrganizationIntelligenceConfig>`.
  RefTo<GoogleStorageControlOrganizationIntelligenceConfig> get ref =>
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
