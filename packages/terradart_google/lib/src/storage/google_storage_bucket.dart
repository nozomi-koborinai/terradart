// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_storage_bucket`.
const Set<String> _googleStorageBucketSensitive = <String>{};

/// Storage class for `google_storage_bucket.storage_class`.
///
/// `durableReducedAvailability` is the legacy class (deprecated 2018);
/// keep for completeness, GCP still accepts it for existing buckets.
enum BucketStorageClass {
  standard('STANDARD'),
  nearline('NEARLINE'),
  coldline('COLDLINE'),
  archive('ARCHIVE'),
  multiRegional('MULTI_REGIONAL'),
  regional('REGIONAL'),
  durableReducedAvailability('DURABLE_REDUCED_AVAILABILITY');

  const BucketStorageClass(this.terraformValue);
  final String terraformValue;
}

/// Action type for `lifecycle_rule.action.type`.
enum LifecycleActionType {
  delete('Delete'),
  setStorageClass('SetStorageClass');

  const LifecycleActionType(this.terraformValue);
  final String terraformValue;
}

/// Object versioning policy.
class StorageBucketVersioning {
  const StorageBucketVersioning({required this.enabled});
  final TfArg<bool> enabled;
  Map<String, Object?> toArgMap() => {'enabled': enabled};
}

/// One CORS configuration entry.
class StorageBucketBucketCors {
  const StorageBucketBucketCors({
    this.maxAgeSeconds,
    this.method,
    this.origin,
    this.responseHeader,
  });
  final TfArg<int>? maxAgeSeconds;
  final List<String>? method;
  final List<String>? origin;
  final List<String>? responseHeader;
  Map<String, Object?> toArgMap() => {
    if (maxAgeSeconds != null) 'max_age_seconds': maxAgeSeconds!.toTfJson(),
    if (method != null) 'method': method,
    if (origin != null) 'origin': origin,
    if (responseHeader != null) 'response_header': responseHeader,
  };
}

/// One `lifecycle_rule` entry: action + condition.
class StorageBucketLifecycleRule {
  const StorageBucketLifecycleRule({
    required this.action,
    required this.condition,
  });
  final StorageBucketLifecycleAction action;
  final StorageBucketLifecycleCondition condition;
  Map<String, Object?> toArgMap() => {
    'action': [action.toArgMap()],
    'condition': [condition.toArgMap()],
  };
}

/// Action to take when a lifecycle_rule's condition matches.
/// `storageClass` is required iff `type == LifecycleActionType.setStorageClass`.
class StorageBucketLifecycleAction {
  const StorageBucketLifecycleAction({required this.type, this.storageClass});
  final LifecycleActionType type;
  final BucketStorageClass? storageClass;
  Map<String, Object?> toArgMap() => {
    'type': type.terraformValue,
    if (storageClass != null) 'storage_class': storageClass!.terraformValue,
  };
}

/// Condition under which a lifecycle_rule's action fires.
class StorageBucketLifecycleCondition {
  const StorageBucketLifecycleCondition({
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
    this.withState,
  });
  final TfArg<int>? age;
  final TfArg<String>? createdBefore;
  final TfArg<String>? customTimeBefore;
  final TfArg<int>? daysSinceCustomTime;
  final TfArg<int>? daysSinceNoncurrentTime;
  final List<String>? matchesPrefix;
  final List<String>? matchesStorageClass;
  final List<String>? matchesSuffix;
  final TfArg<String>? noncurrentTimeBefore;
  final TfArg<int>? numNewerVersions;
  final TfArg<bool>? sendAgeIfZero;
  final TfArg<bool>? sendDaysSinceCustomTimeIfZero;
  final TfArg<bool>? sendDaysSinceNoncurrentTimeIfZero;
  final TfArg<bool>? sendNumNewerVersionsIfZero;
  final TfArg<String>? withState;
  Map<String, Object?> toArgMap() => {
    if (age != null) 'age': age!.toTfJson(),
    if (createdBefore != null) 'created_before': createdBefore!.toTfJson(),
    if (customTimeBefore != null)
      'custom_time_before': customTimeBefore!.toTfJson(),
    if (daysSinceCustomTime != null)
      'days_since_custom_time': daysSinceCustomTime!.toTfJson(),
    if (daysSinceNoncurrentTime != null)
      'days_since_noncurrent_time': daysSinceNoncurrentTime!.toTfJson(),
    if (matchesPrefix != null) 'matches_prefix': matchesPrefix,
    if (matchesStorageClass != null)
      'matches_storage_class': matchesStorageClass,
    if (matchesSuffix != null) 'matches_suffix': matchesSuffix,
    if (noncurrentTimeBefore != null)
      'noncurrent_time_before': noncurrentTimeBefore!.toTfJson(),
    if (numNewerVersions != null)
      'num_newer_versions': numNewerVersions!.toTfJson(),
    if (sendAgeIfZero != null) 'send_age_if_zero': sendAgeIfZero!.toTfJson(),
    if (sendDaysSinceCustomTimeIfZero != null)
      'send_days_since_custom_time_if_zero': sendDaysSinceCustomTimeIfZero!
          .toTfJson(),
    if (sendDaysSinceNoncurrentTimeIfZero != null)
      'send_days_since_noncurrent_time_if_zero':
          sendDaysSinceNoncurrentTimeIfZero!.toTfJson(),
    if (sendNumNewerVersionsIfZero != null)
      'send_num_newer_versions_if_zero': sendNumNewerVersionsIfZero!.toTfJson(),
    if (withState != null) 'with_state': withState!.toTfJson(),
  };
}

/// StorageBucketEncryption configuration: optional CMEK key + 3 enforcement sub-blocks.
class StorageBucketEncryption {
  const StorageBucketEncryption({
    this.defaultKmsKeyName,
    this.customerManagedEncryptionEnforcementConfig,
    this.customerSuppliedEncryptionEnforcementConfig,
    this.googleManagedEncryptionEnforcementConfig,
  });
  final TfArg<String>? defaultKmsKeyName;
  final StorageBucketEncryptionEnforcementConfig?
  customerManagedEncryptionEnforcementConfig;
  final StorageBucketEncryptionEnforcementConfig?
  customerSuppliedEncryptionEnforcementConfig;
  final StorageBucketEncryptionEnforcementConfig?
  googleManagedEncryptionEnforcementConfig;
  Map<String, Object?> toArgMap() => {
    if (defaultKmsKeyName != null)
      'default_kms_key_name': defaultKmsKeyName!.toTfJson(),
    if (customerManagedEncryptionEnforcementConfig != null)
      'customer_managed_encryption_enforcement_config': [
        customerManagedEncryptionEnforcementConfig!.toArgMap(),
      ],
    if (customerSuppliedEncryptionEnforcementConfig != null)
      'customer_supplied_encryption_enforcement_config': [
        customerSuppliedEncryptionEnforcementConfig!.toArgMap(),
      ],
    if (googleManagedEncryptionEnforcementConfig != null)
      'google_managed_encryption_enforcement_config': [
        googleManagedEncryptionEnforcementConfig!.toArgMap(),
      ],
  };
}

/// Shared shape for the 3 `encryption.*_enforcement_config` sub-blocks.
class StorageBucketEncryptionEnforcementConfig {
  const StorageBucketEncryptionEnforcementConfig({
    required this.restrictionMode,
  });
  final TfArg<String> restrictionMode;
  Map<String, Object?> toArgMap() => {'restriction_mode': restrictionMode};
}

/// Retention policy. `retentionPeriod` is in seconds.
class StorageBucketRetentionPolicy {
  const StorageBucketRetentionPolicy({
    required this.retentionPeriod,
    this.isLocked,
  });
  final TfArg<String> retentionPeriod;
  final TfArg<bool>? isLocked;
  Map<String, Object?> toArgMap() => {
    'retention_period': retentionPeriod.toTfJson(),
    if (isLocked != null) 'is_locked': isLocked!.toTfJson(),
  };
}

/// Access-log delivery configuration.
class StorageBucketBucketLogging {
  const StorageBucketBucketLogging({
    required this.logBucket,
    this.logObjectPrefix,
  });
  final TfArg<String> logBucket;
  final TfArg<String>? logObjectPrefix;
  Map<String, Object?> toArgMap() => {
    'log_bucket': logBucket.toTfJson(),
    if (logObjectPrefix != null)
      'log_object_prefix': logObjectPrefix!.toTfJson(),
  };
}

/// Static-website hosting configuration.
class StorageBucketBucketWebsite {
  const StorageBucketBucketWebsite({this.mainPageSuffix, this.notFoundPage});
  final TfArg<String>? mainPageSuffix;
  final TfArg<String>? notFoundPage;
  Map<String, Object?> toArgMap() => {
    if (mainPageSuffix != null) 'main_page_suffix': mainPageSuffix!.toTfJson(),
    if (notFoundPage != null) 'not_found_page': notFoundPage!.toTfJson(),
  };
}

/// StorageBucketAutoclass tiering.
class StorageBucketAutoclass {
  const StorageBucketAutoclass({
    required this.enabled,
    this.terminalStorageClass,
  });
  final TfArg<bool> enabled;
  final TfArg<String>? terminalStorageClass;
  Map<String, Object?> toArgMap() => {
    'enabled': enabled.toTfJson(),
    if (terminalStorageClass != null)
      'terminal_storage_class': terminalStorageClass!.toTfJson(),
  };
}

/// Custom placement (dual-region) configuration.
class StorageBucketCustomPlacementConfig {
  const StorageBucketCustomPlacementConfig({required this.dataLocations});
  final List<String> dataLocations;
  Map<String, Object?> toArgMap() => {'data_locations': dataLocations};
}

/// Hierarchical namespace (folders).
class StorageBucketHierarchicalNamespace {
  const StorageBucketHierarchicalNamespace({required this.enabled});
  final TfArg<bool> enabled;
  Map<String, Object?> toArgMap() => {'enabled': enabled};
}

/// IP-based access control for `google_storage_bucket.ip_filter`.
class StorageBucketIpFilter {
  const StorageBucketIpFilter({
    required this.mode,
    this.allowAllServiceAgentAccess,
    this.allowCrossOrgVpcs,
    this.publicNetworkSource,
    this.vpcNetworkSources,
  });
  final TfArg<String> mode;
  final TfArg<bool>? allowAllServiceAgentAccess;
  final TfArg<bool>? allowCrossOrgVpcs;
  final StorageBucketPublicNetworkSource? publicNetworkSource;
  final List<StorageBucketVpcNetworkSource>? vpcNetworkSources;
  Map<String, Object?> toArgMap() => {
    'mode': mode.toTfJson(),
    if (allowAllServiceAgentAccess != null)
      'allow_all_service_agent_access': allowAllServiceAgentAccess!.toTfJson(),
    if (allowCrossOrgVpcs != null)
      'allow_cross_org_vpcs': allowCrossOrgVpcs!.toTfJson(),
    if (publicNetworkSource != null)
      'public_network_source': [publicNetworkSource!.toArgMap()],
    if (vpcNetworkSources != null)
      'vpc_network_sources': vpcNetworkSources!
          .map((v) => v.toArgMap())
          .toList(),
  };
}

class StorageBucketPublicNetworkSource {
  const StorageBucketPublicNetworkSource({required this.allowedIpCidrRanges});
  final List<String> allowedIpCidrRanges;
  Map<String, Object?> toArgMap() => {
    'allowed_ip_cidr_ranges': allowedIpCidrRanges,
  };
}

class StorageBucketVpcNetworkSource {
  const StorageBucketVpcNetworkSource({
    required this.network,
    required this.allowedIpCidrRanges,
  });
  final TfArg<String> network;
  final List<String> allowedIpCidrRanges;
  Map<String, Object?> toArgMap() => {
    'network': network.toTfJson(),
    'allowed_ip_cidr_ranges': allowedIpCidrRanges,
  };
}

/// Soft-delete policy. `retentionDurationSeconds == 0` disables soft-delete.
class StorageBucketSoftDeletePolicy {
  const StorageBucketSoftDeletePolicy({this.retentionDurationSeconds});
  final TfArg<int>? retentionDurationSeconds;
  Map<String, Object?> toArgMap() => {
    if (retentionDurationSeconds != null)
      'retention_duration_seconds': retentionDurationSeconds!.toTfJson(),
  };
}

/// Factory wrapper for `google_storage_bucket` (provider `hashicorp/google ~> 7.0`).
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_storage_bucket.`).
/// - `name`: GCS bucket name (globally unique, immutable).
/// - `location`: GCS location (e.g. `'ASIA-NORTHEAST1'`, `'US'`, `'EU'`).
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
///
/// Manages a Cloud Storage bucket. Composition pattern: extends
/// `Resource<$GoogleStorageBucket>` for runtime behavior. The 13 nested
/// blocks (lifecycle_rule / versioning / cors / encryption / etc.) are
/// modeled as helper classes in the `prelude` below.
final class GoogleStorageBucket extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_storage_bucket';

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
    List<StorageBucketBucketCors>? cors,
    List<StorageBucketLifecycleRule>? lifecycleRule,
    StorageBucketEncryption? encryption,
    StorageBucketRetentionPolicy? retentionPolicy,
    StorageBucketBucketLogging? logging,
    StorageBucketBucketWebsite? website,
    StorageBucketAutoclass? autoclass,
    StorageBucketCustomPlacementConfig? customPlacementConfig,
    StorageBucketHierarchicalNamespace? hierarchicalNamespace,
    StorageBucketIpFilter? ipFilter,
    StorageBucketSoftDeletePolicy? softDeletePolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: $tfType,
         argMap: {
           'name': name,
           'location': location,
           if (storageClass != null) 'storage_class': storageClass,
           if (forceDestroy != null) 'force_destroy': forceDestroy,
           if (publicAccessPrevention != null)
             'public_access_prevention': publicAccessPrevention,
           if (uniformBucketLevelAccess != null)
             'uniform_bucket_level_access': uniformBucketLevelAccess,
           if (defaultEventBasedHold != null)
             'default_event_based_hold': defaultEventBasedHold,
           if (enableObjectRetention != null)
             'enable_object_retention': enableObjectRetention,
           if (requesterPays != null) 'requester_pays': requesterPays,
           if (rpo != null) 'rpo': rpo,
           if (labels != null) 'labels': labels,
           if (versioning != null)
             'versioning': TfArg.literal([versioning.toArgMap()]),
           if (cors != null)
             'cors': TfArg.literal(cors.map((c) => c.toArgMap()).toList()),
           if (lifecycleRule != null)
             'lifecycle_rule': TfArg.literal(
               lifecycleRule.map((r) => r.toArgMap()).toList(),
             ),
           if (encryption != null)
             'encryption': TfArg.literal([encryption.toArgMap()]),
           if (retentionPolicy != null)
             'retention_policy': TfArg.literal([retentionPolicy.toArgMap()]),
           if (logging != null) 'logging': TfArg.literal([logging.toArgMap()]),
           if (website != null) 'website': TfArg.literal([website.toArgMap()]),
           if (autoclass != null)
             'autoclass': TfArg.literal([autoclass.toArgMap()]),
           if (customPlacementConfig != null)
             'custom_placement_config': TfArg.literal([
               customPlacementConfig.toArgMap(),
             ]),
           if (hierarchicalNamespace != null)
             'hierarchical_namespace': TfArg.literal([
               hierarchicalNamespace.toArgMap(),
             ]),
           if (ipFilter != null)
             'ip_filter': TfArg.literal([ipFilter.toArgMap()]),
           if (softDeletePolicy != null)
             'soft_delete_policy': TfArg.literal([softDeletePolicy.toArgMap()]),
           if (project != null) 'project': project,
         },
       );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields => _googleStorageBucketSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute (the bucket name, since GCS bucket
  /// names are globally unique).
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `url` attribute (`gs://<name>`).
  TfRef<String> get url => TfRef.attribute<String>(this, 'url');

  /// Reference to `self_link` attribute (HTTPS API path).
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');
}
