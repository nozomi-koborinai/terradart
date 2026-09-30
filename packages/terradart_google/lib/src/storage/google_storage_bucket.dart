// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;

/// Sensitive field paths for `google_storage_bucket`.
const Set<String> _googleStorageBucketSensitive = <String>{};

/// Storage class for `google_storage_bucket.storage_class`.
///
/// `durableReducedAvailability` is the legacy class (deprecated 2018);
/// keep for completeness, GCP still accepts it for existing buckets.
enum BucketStorageClass implements TerraformEnum {
  standard('STANDARD'),
  nearline('NEARLINE'),
  coldline('COLDLINE'),
  archive('ARCHIVE'),
  multiRegional('MULTI_REGIONAL'),
  regional('REGIONAL'),
  durableReducedAvailability('DURABLE_REDUCED_AVAILABILITY');

  const BucketStorageClass(this.terraformValue);
  @override
  final String terraformValue;
}

/// Action type for `lifecycle_rule.action.type`.
enum LifecycleActionType implements TerraformEnum {
  delete('Delete'),
  setStorageClass('SetStorageClass');

  const LifecycleActionType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `autoclass` block of
/// `google_storage_bucket` (derived from provider schema).
@immutable
final class StorageBucketAutoclass {
  const StorageBucketAutoclass({
    required this.enabled,
    this.terminalStorageClass,
  });

  final TfArg<bool> enabled;

  final TfArg<String>? terminalStorageClass;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'terminal_storage_class': ?terminalStorageClass?.toTfJson(),
  };
}

/// Typed helper for the `cors` block of
/// `google_storage_bucket` (derived from provider schema).
@immutable
final class StorageBucketCors {
  const StorageBucketCors({
    this.maxAgeSeconds,
    this.method,
    this.origin,
    this.responseHeader,
  });

  final TfArg<num>? maxAgeSeconds;

  final TfArg<List<String>>? method;

  final TfArg<List<String>>? origin;

  final TfArg<List<String>>? responseHeader;

  Map<String, Object?> encode() => {
    'max_age_seconds': ?maxAgeSeconds?.toTfJson(),
    'method': ?method?.toTfJson(),
    'origin': ?origin?.toTfJson(),
    'response_header': ?responseHeader?.toTfJson(),
  };
}

/// Typed helper for the `custom_placement_config` block of
/// `google_storage_bucket` (derived from provider schema).
@immutable
final class StorageBucketCustomPlacementConfig {
  const StorageBucketCustomPlacementConfig({required this.dataLocations});

  final TfArg<List<String>> dataLocations;

  Map<String, Object?> encode() => {'data_locations': dataLocations.toTfJson()};
}

/// Typed helper for the `encryption` block of
/// `google_storage_bucket` (derived from provider schema).
@immutable
final class StorageBucketEncryption {
  const StorageBucketEncryption({
    this.defaultKmsKeyName,
    this.customerManagedEncryptionEnforcementConfig,
    this.customerSuppliedEncryptionEnforcementConfig,
    this.googleManagedEncryptionEnforcementConfig,
  });

  final TfArg<String>? defaultKmsKeyName;

  final StorageBucketEncryptionCustomerManagedEncryptionEnforcementConfig?
  customerManagedEncryptionEnforcementConfig;

  final StorageBucketEncryptionCustomerSuppliedEncryptionEnforcementConfig?
  customerSuppliedEncryptionEnforcementConfig;

  final StorageBucketEncryptionGoogleManagedEncryptionEnforcementConfig?
  googleManagedEncryptionEnforcementConfig;

  Map<String, Object?> encode() => {
    'default_kms_key_name': ?defaultKmsKeyName?.toTfJson(),
    'customer_managed_encryption_enforcement_config':
        ?customerManagedEncryptionEnforcementConfig?.encode(),
    'customer_supplied_encryption_enforcement_config':
        ?customerSuppliedEncryptionEnforcementConfig?.encode(),
    'google_managed_encryption_enforcement_config':
        ?googleManagedEncryptionEnforcementConfig?.encode(),
  };
}

/// Typed helper for the `encryption.customer_managed_encryption_enforcement_config` block of
/// `google_storage_bucket` (derived from provider schema).
@immutable
final class StorageBucketEncryptionCustomerManagedEncryptionEnforcementConfig {
  const StorageBucketEncryptionCustomerManagedEncryptionEnforcementConfig({
    required this.restrictionMode,
  });

  final TfArg<String> restrictionMode;

  Map<String, Object?> encode() => {
    'restriction_mode': restrictionMode.toTfJson(),
  };
}

/// Typed helper for the `encryption.customer_supplied_encryption_enforcement_config` block of
/// `google_storage_bucket` (derived from provider schema).
@immutable
final class StorageBucketEncryptionCustomerSuppliedEncryptionEnforcementConfig {
  const StorageBucketEncryptionCustomerSuppliedEncryptionEnforcementConfig({
    required this.restrictionMode,
  });

  final TfArg<String> restrictionMode;

  Map<String, Object?> encode() => {
    'restriction_mode': restrictionMode.toTfJson(),
  };
}

/// Typed helper for the `encryption.google_managed_encryption_enforcement_config` block of
/// `google_storage_bucket` (derived from provider schema).
@immutable
final class StorageBucketEncryptionGoogleManagedEncryptionEnforcementConfig {
  const StorageBucketEncryptionGoogleManagedEncryptionEnforcementConfig({
    required this.restrictionMode,
  });

  final TfArg<String> restrictionMode;

  Map<String, Object?> encode() => {
    'restriction_mode': restrictionMode.toTfJson(),
  };
}

/// Typed helper for the `hierarchical_namespace` block of
/// `google_storage_bucket` (derived from provider schema).
@immutable
final class StorageBucketHierarchicalNamespace {
  const StorageBucketHierarchicalNamespace({required this.enabled});

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `ip_filter` block of
/// `google_storage_bucket` (derived from provider schema).
@immutable
final class StorageBucketIpFilter {
  const StorageBucketIpFilter({
    this.allowAllServiceAgentAccess,
    this.allowCrossOrgVpcs,
    required this.mode,
    this.publicNetworkSource,
    this.vpcNetworkSources,
  });

  final TfArg<bool>? allowAllServiceAgentAccess;

  final TfArg<bool>? allowCrossOrgVpcs;

  final TfArg<String> mode;

  final StorageBucketIpFilterPublicNetworkSource? publicNetworkSource;

  final List<StorageBucketIpFilterVpcNetworkSources>? vpcNetworkSources;

  Map<String, Object?> encode() => {
    'allow_all_service_agent_access': ?allowAllServiceAgentAccess?.toTfJson(),
    'allow_cross_org_vpcs': ?allowCrossOrgVpcs?.toTfJson(),
    'mode': mode.toTfJson(),
    'public_network_source': ?publicNetworkSource?.encode(),
    if (vpcNetworkSources != null)
      'vpc_network_sources': [for (final e in vpcNetworkSources!) e.encode()],
  };
}

/// Typed helper for the `ip_filter.public_network_source` block of
/// `google_storage_bucket` (derived from provider schema).
@immutable
final class StorageBucketIpFilterPublicNetworkSource {
  const StorageBucketIpFilterPublicNetworkSource({
    required this.allowedIpCidrRanges,
  });

  final TfArg<List<String>> allowedIpCidrRanges;

  Map<String, Object?> encode() => {
    'allowed_ip_cidr_ranges': allowedIpCidrRanges.toTfJson(),
  };
}

/// Typed helper for the `ip_filter.vpc_network_sources` block of
/// `google_storage_bucket` (derived from provider schema).
@immutable
final class StorageBucketIpFilterVpcNetworkSources {
  const StorageBucketIpFilterVpcNetworkSources({
    required this.allowedIpCidrRanges,
    required this.network,
  });

  final TfArg<List<String>> allowedIpCidrRanges;

  final RefTo<GoogleComputeNetwork> network;

  Map<String, Object?> encode() => {
    'allowed_ip_cidr_ranges': allowedIpCidrRanges.toTfJson(),
    'network': network.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `lifecycle_rule` block of
/// `google_storage_bucket` (derived from provider schema).
@immutable
final class StorageBucketLifecycleRule {
  const StorageBucketLifecycleRule({
    required this.action,
    required this.condition,
  });

  final StorageBucketLifecycleRuleAction action;

  final StorageBucketLifecycleRuleCondition condition;

  Map<String, Object?> encode() => {
    'action': action.encode(),
    'condition': condition.encode(),
  };
}

/// Typed helper for the `lifecycle_rule.action` block of
/// `google_storage_bucket` (derived from provider schema).
@immutable
final class StorageBucketLifecycleRuleAction {
  const StorageBucketLifecycleRuleAction({
    this.storageClass,
    required this.type,
  });

  final TfArg<BucketStorageClass>? storageClass;

  final TfArg<LifecycleActionType> type;

  Map<String, Object?> encode() => {
    'storage_class': ?storageClass?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `lifecycle_rule.condition` block of
/// `google_storage_bucket` (derived from provider schema).
@immutable
final class StorageBucketLifecycleRuleCondition {
  const StorageBucketLifecycleRuleCondition({
    this.age,
    this.createdBefore,
    this.customTimeBefore,
    this.daysSinceCustomTime,
    this.daysSinceNoncurrentTime,
    this.matchesPrefix,
    this.matchesStorageClass,
    this.matchesSuffix,
    this.noncurrentTimeBefore,
    this.numNewerVersions,
    this.sendAgeIfZero,
    this.sendDaysSinceCustomTimeIfZero,
    this.sendDaysSinceNoncurrentTimeIfZero,
    this.sendNumNewerVersionsIfZero,
    this.sizeAboveBytes,
    this.sizeBelowBytes,
    this.withState,
  });

  final TfArg<num>? age;

  final TfArg<String>? createdBefore;

  final TfArg<String>? customTimeBefore;

  final TfArg<num>? daysSinceCustomTime;

  final TfArg<num>? daysSinceNoncurrentTime;

  final TfArg<List<String>>? matchesPrefix;

  final TfArg<List<String>>? matchesStorageClass;

  final TfArg<List<String>>? matchesSuffix;

  final TfArg<String>? noncurrentTimeBefore;

  final TfArg<num>? numNewerVersions;

  final TfArg<bool>? sendAgeIfZero;

  final TfArg<bool>? sendDaysSinceCustomTimeIfZero;

  final TfArg<bool>? sendDaysSinceNoncurrentTimeIfZero;

  final TfArg<bool>? sendNumNewerVersionsIfZero;

  final TfArg<num>? sizeAboveBytes;

  final TfArg<num>? sizeBelowBytes;

  final TfArg<String>? withState;

  Map<String, Object?> encode() => {
    'age': ?age?.toTfJson(),
    'created_before': ?createdBefore?.toTfJson(),
    'custom_time_before': ?customTimeBefore?.toTfJson(),
    'days_since_custom_time': ?daysSinceCustomTime?.toTfJson(),
    'days_since_noncurrent_time': ?daysSinceNoncurrentTime?.toTfJson(),
    'matches_prefix': ?matchesPrefix?.toTfJson(),
    'matches_storage_class': ?matchesStorageClass?.toTfJson(),
    'matches_suffix': ?matchesSuffix?.toTfJson(),
    'noncurrent_time_before': ?noncurrentTimeBefore?.toTfJson(),
    'num_newer_versions': ?numNewerVersions?.toTfJson(),
    'send_age_if_zero': ?sendAgeIfZero?.toTfJson(),
    'send_days_since_custom_time_if_zero': ?sendDaysSinceCustomTimeIfZero
        ?.toTfJson(),
    'send_days_since_noncurrent_time_if_zero':
        ?sendDaysSinceNoncurrentTimeIfZero?.toTfJson(),
    'send_num_newer_versions_if_zero': ?sendNumNewerVersionsIfZero?.toTfJson(),
    'size_above_bytes': ?sizeAboveBytes?.toTfJson(),
    'size_below_bytes': ?sizeBelowBytes?.toTfJson(),
    'with_state': ?withState?.toTfJson(),
  };
}

/// Typed helper for the `logging` block of
/// `google_storage_bucket` (derived from provider schema).
@immutable
final class StorageBucketLogging {
  const StorageBucketLogging({required this.logBucket, this.logObjectPrefix});

  final TfArg<String> logBucket;

  final TfArg<String>? logObjectPrefix;

  Map<String, Object?> encode() => {
    'log_bucket': logBucket.toTfJson(),
    'log_object_prefix': ?logObjectPrefix?.toTfJson(),
  };
}

/// Typed helper for the `retention_policy` block of
/// `google_storage_bucket` (derived from provider schema).
@immutable
final class StorageBucketRetentionPolicy {
  const StorageBucketRetentionPolicy({
    this.isLocked,
    required this.retentionPeriod,
  });

  final TfArg<bool>? isLocked;

  final TfArg<String> retentionPeriod;

  Map<String, Object?> encode() => {
    'is_locked': ?isLocked?.toTfJson(),
    'retention_period': retentionPeriod.toTfJson(),
  };
}

/// Typed helper for the `soft_delete_policy` block of
/// `google_storage_bucket` (derived from provider schema).
@immutable
final class StorageBucketSoftDeletePolicy {
  const StorageBucketSoftDeletePolicy({this.retentionDurationSeconds});

  final TfArg<num>? retentionDurationSeconds;

  Map<String, Object?> encode() => {
    'retention_duration_seconds': ?retentionDurationSeconds?.toTfJson(),
  };
}

/// Typed helper for the `versioning` block of
/// `google_storage_bucket` (derived from provider schema).
@immutable
final class StorageBucketVersioning {
  const StorageBucketVersioning({required this.enabled});

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `website` block of
/// `google_storage_bucket` (derived from provider schema).
@immutable
final class StorageBucketWebsite {
  const StorageBucketWebsite({this.mainPageSuffix, this.notFoundPage});

  final TfArg<String>? mainPageSuffix;

  final TfArg<String>? notFoundPage;

  Map<String, Object?> encode() => {
    'main_page_suffix': ?mainPageSuffix?.toTfJson(),
    'not_found_page': ?notFoundPage?.toTfJson(),
  };
}

/// Factory wrapper for `google_storage_bucket`.
///
/// The Buckets resource represents a bucket in Google Cloud Storage. There is a
/// single global namespace shared by all buckets. For more information, see
/// Bucket Name Requirements.
///
/// Buckets contain objects which can be accessed by their own methods. In
/// addition to the acl property, buckets contain bucketAccessControls, for use
/// in fine-grained manipulation of an existing bucket's access controls.
///
/// A bucket is always owned by the project team owners group.
///
/// Example:
/// ```dart
/// final assets = GoogleStorageBucket(
///   localName: 'assets',
///   name: TfArg.literal('my-app-assets-prod'),
///   location: TfArg.literal('ASIA-NORTHEAST1'),
///   storageClass: TfArg.literal(BucketStorageClass.standard),
///   forceDestroy: TfArg.literal(false),
///   versioning: const StorageBucketVersioning(enabled: true),
///   uniformBucketLevelAccess: TfArg.literal(true),
/// );
/// ```
final class GoogleStorageBucket extends Resource {
  static const String tfType = 'google_storage_bucket';

  GoogleStorageBucket({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    TfArg<BucketStorageClass>? storageClass,
    TfArg<bool>? forceDestroy,
    TfArg<String>? publicAccessPrevention,
    TfArg<bool>? uniformBucketLevelAccess,
    TfArg<bool>? defaultEventBasedHold,
    TfArg<bool>? enableObjectRetention,
    TfArg<bool>? requesterPays,
    TfArg<String>? rpo,
    TfArg<Map<String, String>>? labels,
    StorageBucketVersioning? versioning,
    List<StorageBucketCors>? cors,
    List<StorageBucketLifecycleRule>? lifecycleRule,
    StorageBucketEncryption? encryption,
    StorageBucketRetentionPolicy? retentionPolicy,
    StorageBucketLogging? logging,
    StorageBucketWebsite? website,
    StorageBucketAutoclass? autoclass,
    StorageBucketCustomPlacementConfig? customPlacementConfig,
    StorageBucketHierarchicalNamespace? hierarchicalNamespace,
    StorageBucketIpFilter? ipFilter,
    StorageBucketSoftDeletePolicy? softDeletePolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'storage_class': ?storageClass,
           'force_destroy': ?forceDestroy,
           'public_access_prevention': ?publicAccessPrevention,
           'uniform_bucket_level_access': ?uniformBucketLevelAccess,
           'default_event_based_hold': ?defaultEventBasedHold,
           'enable_object_retention': ?enableObjectRetention,
           'requester_pays': ?requesterPays,
           'rpo': ?rpo,
           'labels': ?labels,
           if (versioning != null)
             'versioning': TfArg.literal(versioning.encode()),
           if (cors != null)
             'cors': TfArg.literal([for (final e in cors) e.encode()]),
           if (lifecycleRule != null)
             'lifecycle_rule': TfArg.literal([
               for (final e in lifecycleRule) e.encode(),
             ]),
           if (encryption != null)
             'encryption': TfArg.literal(encryption.encode()),
           if (retentionPolicy != null)
             'retention_policy': TfArg.literal(retentionPolicy.encode()),
           if (logging != null) 'logging': TfArg.literal(logging.encode()),
           if (website != null) 'website': TfArg.literal(website.encode()),
           if (autoclass != null)
             'autoclass': TfArg.literal(autoclass.encode()),
           if (customPlacementConfig != null)
             'custom_placement_config': TfArg.literal(
               customPlacementConfig.encode(),
             ),
           if (hierarchicalNamespace != null)
             'hierarchical_namespace': TfArg.literal(
               hierarchicalNamespace.encode(),
             ),
           if (ipFilter != null) 'ip_filter': TfArg.literal(ipFilter.encode()),
           if (softDeletePolicy != null)
             'soft_delete_policy': TfArg.literal(softDeletePolicy.encode()),
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleStorageBucketSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleStorageBucket>`.
  RefTo<GoogleStorageBucket> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `project_number` attribute.
  TfRef<num> get projectNumber => TfRef.attribute<num>(this, 'project_number');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `time_created` attribute.
  TfRef<String> get timeCreated =>
      TfRef.attribute<String>(this, 'time_created');

  /// Reference to `updated` attribute.
  TfRef<String> get updated => TfRef.attribute<String>(this, 'updated');

  /// Reference to `url` attribute.
  TfRef<String> get url => TfRef.attribute<String>(this, 'url');

  /// Reference to `default_event_based_hold` attribute.
  TfRef<bool> get defaultEventBasedHoldRef =>
      TfRef.attribute<bool>(this, 'default_event_based_hold');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `enable_object_retention` attribute.
  TfRef<bool> get enableObjectRetentionRef =>
      TfRef.attribute<bool>(this, 'enable_object_retention');

  /// Reference to `force_destroy` attribute.
  TfRef<bool> get forceDestroyRef =>
      TfRef.attribute<bool>(this, 'force_destroy');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `public_access_prevention` attribute.
  TfRef<String> get publicAccessPreventionRef =>
      TfRef.attribute<String>(this, 'public_access_prevention');

  /// Reference to `requester_pays` attribute.
  TfRef<bool> get requesterPaysRef =>
      TfRef.attribute<bool>(this, 'requester_pays');

  /// Reference to `rpo` attribute.
  TfRef<String> get rpoRef => TfRef.attribute<String>(this, 'rpo');

  /// Reference to `storage_class` attribute.
  TfRef<String> get storageClassRef =>
      TfRef.attribute<String>(this, 'storage_class');

  /// Reference to `uniform_bucket_level_access` attribute.
  TfRef<bool> get uniformBucketLevelAccessRef =>
      TfRef.attribute<bool>(this, 'uniform_bucket_level_access');
}
