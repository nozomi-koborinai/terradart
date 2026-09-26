// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3_bucket`.
const Set<String> _awsS3BucketSensitive = <String>{};

/// Typed helper for the `cors_rule` block of
/// `aws_s3_bucket` (derived from provider schema).
@immutable
final class S3BucketCorsRule {
  const S3BucketCorsRule({
    this.allowedHeaders,
    required this.allowedMethods,
    required this.allowedOrigins,
    this.exposeHeaders,
    this.maxAgeSeconds,
  });

  final TfArg<List<Object?>>? allowedHeaders;

  final TfArg<List<Object?>> allowedMethods;

  final TfArg<List<Object?>> allowedOrigins;

  final TfArg<List<Object?>>? exposeHeaders;

  final TfArg<num>? maxAgeSeconds;

  Map<String, Object?> encode() => {
    if (allowedHeaders != null) 'allowed_headers': allowedHeaders!.toTfJson(),
    'allowed_methods': allowedMethods.toTfJson(),
    'allowed_origins': allowedOrigins.toTfJson(),
    if (exposeHeaders != null) 'expose_headers': exposeHeaders!.toTfJson(),
    if (maxAgeSeconds != null) 'max_age_seconds': maxAgeSeconds!.toTfJson(),
  };
}

/// Typed helper for the `grant` block of
/// `aws_s3_bucket` (derived from provider schema).
@immutable
final class S3BucketGrant {
  const S3BucketGrant({
    this.id,
    required this.permissions,
    required this.type,
    this.uri,
  });

  final TfArg<String>? id;

  final TfArg<List<Object?>> permissions;

  final TfArg<String> type;

  final TfArg<String>? uri;

  Map<String, Object?> encode() => {
    if (id != null) 'id': id!.toTfJson(),
    'permissions': permissions.toTfJson(),
    'type': type.toTfJson(),
    if (uri != null) 'uri': uri!.toTfJson(),
  };
}

/// Typed helper for the `lifecycle_rule` block of
/// `aws_s3_bucket` (derived from provider schema).
@immutable
final class S3BucketLifecycleRule {
  const S3BucketLifecycleRule({
    this.abortIncompleteMultipartUploadDays,
    required this.enabled,
    this.id,
    this.prefix,
    this.tags,
    this.expiration,
    this.noncurrentVersionExpiration,
    this.noncurrentVersionTransition,
    this.transition,
  });

  final TfArg<num>? abortIncompleteMultipartUploadDays;

  final TfArg<bool> enabled;

  final TfArg<String>? id;

  final TfArg<String>? prefix;

  final TfArg<Map<String, String>>? tags;

  final S3BucketLifecycleRuleExpiration? expiration;

  final S3BucketLifecycleRuleNoncurrentVersionExpiration?
  noncurrentVersionExpiration;

  final List<S3BucketLifecycleRuleNoncurrentVersionTransition>?
  noncurrentVersionTransition;

  final List<S3BucketLifecycleRuleTransition>? transition;

  Map<String, Object?> encode() => {
    if (abortIncompleteMultipartUploadDays != null)
      'abort_incomplete_multipart_upload_days':
          abortIncompleteMultipartUploadDays!.toTfJson(),
    'enabled': enabled.toTfJson(),
    if (id != null) 'id': id!.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
    if (tags != null) 'tags': tags!.toTfJson(),
    if (expiration != null) 'expiration': expiration!.encode(),
    if (noncurrentVersionExpiration != null)
      'noncurrent_version_expiration': noncurrentVersionExpiration!.encode(),
    if (noncurrentVersionTransition != null)
      'noncurrent_version_transition': [
        for (final e in noncurrentVersionTransition!) e.encode(),
      ],
    if (transition != null)
      'transition': [for (final e in transition!) e.encode()],
  };
}

/// Typed helper for the `lifecycle_rule.expiration` block of
/// `aws_s3_bucket` (derived from provider schema).
@immutable
final class S3BucketLifecycleRuleExpiration {
  const S3BucketLifecycleRuleExpiration({
    this.date,
    this.days,
    this.expiredObjectDeleteMarker,
  });

  final TfArg<String>? date;

  final TfArg<num>? days;

  final TfArg<bool>? expiredObjectDeleteMarker;

  Map<String, Object?> encode() => {
    if (date != null) 'date': date!.toTfJson(),
    if (days != null) 'days': days!.toTfJson(),
    if (expiredObjectDeleteMarker != null)
      'expired_object_delete_marker': expiredObjectDeleteMarker!.toTfJson(),
  };
}

/// Typed helper for the `lifecycle_rule.noncurrent_version_expiration` block of
/// `aws_s3_bucket` (derived from provider schema).
@immutable
final class S3BucketLifecycleRuleNoncurrentVersionExpiration {
  const S3BucketLifecycleRuleNoncurrentVersionExpiration({this.days});

  final TfArg<num>? days;

  Map<String, Object?> encode() => {if (days != null) 'days': days!.toTfJson()};
}

/// Typed helper for the `lifecycle_rule.noncurrent_version_transition` block of
/// `aws_s3_bucket` (derived from provider schema).
@immutable
final class S3BucketLifecycleRuleNoncurrentVersionTransition {
  const S3BucketLifecycleRuleNoncurrentVersionTransition({
    this.days,
    required this.storageClass,
  });

  final TfArg<num>? days;

  final TfArg<String> storageClass;

  Map<String, Object?> encode() => {
    if (days != null) 'days': days!.toTfJson(),
    'storage_class': storageClass.toTfJson(),
  };
}

/// Typed helper for the `lifecycle_rule.transition` block of
/// `aws_s3_bucket` (derived from provider schema).
@immutable
final class S3BucketLifecycleRuleTransition {
  const S3BucketLifecycleRuleTransition({
    this.date,
    this.days,
    required this.storageClass,
  });

  final TfArg<String>? date;

  final TfArg<num>? days;

  final TfArg<String> storageClass;

  Map<String, Object?> encode() => {
    if (date != null) 'date': date!.toTfJson(),
    if (days != null) 'days': days!.toTfJson(),
    'storage_class': storageClass.toTfJson(),
  };
}

/// Typed helper for the `logging` block of
/// `aws_s3_bucket` (derived from provider schema).
@immutable
final class S3BucketLogging {
  const S3BucketLogging({required this.targetBucket, this.targetPrefix});

  final TfArg<String> targetBucket;

  final TfArg<String>? targetPrefix;

  Map<String, Object?> encode() => {
    'target_bucket': targetBucket.toTfJson(),
    if (targetPrefix != null) 'target_prefix': targetPrefix!.toTfJson(),
  };
}

/// Typed helper for the `replication_configuration` block of
/// `aws_s3_bucket` (derived from provider schema).
@immutable
final class S3BucketReplicationConfiguration {
  const S3BucketReplicationConfiguration({
    required this.role,
    required this.rules,
  });

  final TfArg<String> role;

  final List<S3BucketReplicationConfigurationRules> rules;

  Map<String, Object?> encode() => {
    'role': role.toTfJson(),
    'rules': [for (final e in rules) e.encode()],
  };
}

/// Typed helper for the `replication_configuration.rules` block of
/// `aws_s3_bucket` (derived from provider schema).
@immutable
final class S3BucketReplicationConfigurationRules {
  const S3BucketReplicationConfigurationRules({
    this.deleteMarkerReplicationStatus,
    this.id,
    this.prefix,
    this.priority,
    required this.status,
    required this.destination,
    this.filter,
    this.sourceSelectionCriteria,
  });

  final TfArg<String>? deleteMarkerReplicationStatus;

  final TfArg<String>? id;

  final TfArg<String>? prefix;

  final TfArg<num>? priority;

  final TfArg<String> status;

  final S3BucketReplicationConfigurationRulesDestination destination;

  final S3BucketReplicationConfigurationRulesFilter? filter;

  final S3BucketReplicationConfigurationRulesSourceSelectionCriteria?
  sourceSelectionCriteria;

  Map<String, Object?> encode() => {
    if (deleteMarkerReplicationStatus != null)
      'delete_marker_replication_status': deleteMarkerReplicationStatus!
          .toTfJson(),
    if (id != null) 'id': id!.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
    if (priority != null) 'priority': priority!.toTfJson(),
    'status': status.toTfJson(),
    'destination': destination.encode(),
    if (filter != null) 'filter': filter!.encode(),
    if (sourceSelectionCriteria != null)
      'source_selection_criteria': sourceSelectionCriteria!.encode(),
  };
}

/// Typed helper for the `replication_configuration.rules.destination` block of
/// `aws_s3_bucket` (derived from provider schema).
@immutable
final class S3BucketReplicationConfigurationRulesDestination {
  const S3BucketReplicationConfigurationRulesDestination({
    this.accountId,
    required this.bucket,
    this.replicaKmsKeyId,
    this.storageClass,
    this.accessControlTranslation,
    this.metrics,
    this.replicationTime,
  });

  final TfArg<String>? accountId;

  final TfArg<String> bucket;

  final TfArg<String>? replicaKmsKeyId;

  final TfArg<String>? storageClass;

  final S3BucketReplicationConfigurationRulesDestinationAccessControlTranslation?
  accessControlTranslation;

  final S3BucketReplicationConfigurationRulesDestinationMetrics? metrics;

  final S3BucketReplicationConfigurationRulesDestinationReplicationTime?
  replicationTime;

  Map<String, Object?> encode() => {
    if (accountId != null) 'account_id': accountId!.toTfJson(),
    'bucket': bucket.toTfJson(),
    if (replicaKmsKeyId != null)
      'replica_kms_key_id': replicaKmsKeyId!.toTfJson(),
    if (storageClass != null) 'storage_class': storageClass!.toTfJson(),
    if (accessControlTranslation != null)
      'access_control_translation': accessControlTranslation!.encode(),
    if (metrics != null) 'metrics': metrics!.encode(),
    if (replicationTime != null) 'replication_time': replicationTime!.encode(),
  };
}

/// Typed helper for the `replication_configuration.rules.destination.access_control_translation` block of
/// `aws_s3_bucket` (derived from provider schema).
@immutable
final class S3BucketReplicationConfigurationRulesDestinationAccessControlTranslation {
  const S3BucketReplicationConfigurationRulesDestinationAccessControlTranslation({
    required this.owner,
  });

  final TfArg<String> owner;

  Map<String, Object?> encode() => {'owner': owner.toTfJson()};
}

/// Typed helper for the `replication_configuration.rules.destination.metrics` block of
/// `aws_s3_bucket` (derived from provider schema).
@immutable
final class S3BucketReplicationConfigurationRulesDestinationMetrics {
  const S3BucketReplicationConfigurationRulesDestinationMetrics({
    this.minutes,
    this.status,
  });

  final TfArg<num>? minutes;

  final TfArg<String>? status;

  Map<String, Object?> encode() => {
    if (minutes != null) 'minutes': minutes!.toTfJson(),
    if (status != null) 'status': status!.toTfJson(),
  };
}

/// Typed helper for the `replication_configuration.rules.destination.replication_time` block of
/// `aws_s3_bucket` (derived from provider schema).
@immutable
final class S3BucketReplicationConfigurationRulesDestinationReplicationTime {
  const S3BucketReplicationConfigurationRulesDestinationReplicationTime({
    this.minutes,
    this.status,
  });

  final TfArg<num>? minutes;

  final TfArg<String>? status;

  Map<String, Object?> encode() => {
    if (minutes != null) 'minutes': minutes!.toTfJson(),
    if (status != null) 'status': status!.toTfJson(),
  };
}

/// Typed helper for the `replication_configuration.rules.filter` block of
/// `aws_s3_bucket` (derived from provider schema).
@immutable
final class S3BucketReplicationConfigurationRulesFilter {
  const S3BucketReplicationConfigurationRulesFilter({this.prefix, this.tags});

  final TfArg<String>? prefix;

  final TfArg<Map<String, String>>? tags;

  Map<String, Object?> encode() => {
    if (prefix != null) 'prefix': prefix!.toTfJson(),
    if (tags != null) 'tags': tags!.toTfJson(),
  };
}

/// Typed helper for the `replication_configuration.rules.source_selection_criteria` block of
/// `aws_s3_bucket` (derived from provider schema).
@immutable
final class S3BucketReplicationConfigurationRulesSourceSelectionCriteria {
  const S3BucketReplicationConfigurationRulesSourceSelectionCriteria({
    this.sseKmsEncryptedObjects,
  });

  final S3BucketReplicationConfigurationRulesSourceSelectionCriteriaSseKmsEncryptedObjects?
  sseKmsEncryptedObjects;

  Map<String, Object?> encode() => {
    if (sseKmsEncryptedObjects != null)
      'sse_kms_encrypted_objects': sseKmsEncryptedObjects!.encode(),
  };
}

/// Typed helper for the `replication_configuration.rules.source_selection_criteria.sse_kms_encrypted_objects` block of
/// `aws_s3_bucket` (derived from provider schema).
@immutable
final class S3BucketReplicationConfigurationRulesSourceSelectionCriteriaSseKmsEncryptedObjects {
  const S3BucketReplicationConfigurationRulesSourceSelectionCriteriaSseKmsEncryptedObjects({
    required this.enabled,
  });

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `versioning` block of
/// `aws_s3_bucket` (derived from provider schema).
@immutable
final class S3BucketVersioning {
  const S3BucketVersioning({this.enabled, this.mfaDelete});

  final TfArg<bool>? enabled;

  final TfArg<bool>? mfaDelete;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (mfaDelete != null) 'mfa_delete': mfaDelete!.toTfJson(),
  };
}

/// Typed helper for the `website` block of
/// `aws_s3_bucket` (derived from provider schema).
@immutable
final class S3BucketWebsite {
  const S3BucketWebsite({
    this.errorDocument,
    this.indexDocument,
    this.redirectAllRequestsTo,
    this.routingRules,
  });

  final TfArg<String>? errorDocument;

  final TfArg<String>? indexDocument;

  final TfArg<String>? redirectAllRequestsTo;

  final TfArg<String>? routingRules;

  Map<String, Object?> encode() => {
    if (errorDocument != null) 'error_document': errorDocument!.toTfJson(),
    if (indexDocument != null) 'index_document': indexDocument!.toTfJson(),
    if (redirectAllRequestsTo != null)
      'redirect_all_requests_to': redirectAllRequestsTo!.toTfJson(),
    if (routingRules != null) 'routing_rules': routingRules!.toTfJson(),
  };
}

/// Factory wrapper for `aws_s3_bucket`.
final class AwsS3Bucket extends Resource {
  static const String tfType = 'aws_s3_bucket';

  AwsS3Bucket({
    required super.localName,
    TfArg<String>? accelerationStatus,
    TfArg<String>? acl,
    TfArg<String>? bucket,
    TfArg<String>? bucketNamespace,
    TfArg<String>? bucketPrefix,
    TfArg<bool>? forceDestroy,
    TfArg<bool>? objectLockEnabled,
    TfArg<String>? policy,
    TfArg<String>? region,
    TfArg<String>? requestPayer,
    TfArg<Map<String, String>>? tags,
    List<S3BucketCorsRule>? corsRule,
    List<S3BucketGrant>? grant,
    List<S3BucketLifecycleRule>? lifecycleRule,
    S3BucketLogging? logging,
    TfArg<Map<String, dynamic>>? objectLockConfiguration,
    S3BucketReplicationConfiguration? replicationConfiguration,
    TfArg<Map<String, dynamic>>? serverSideEncryptionConfiguration,
    S3BucketVersioning? versioning,
    S3BucketWebsite? website,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accelerationStatus != null)
             'acceleration_status': accelerationStatus,
           if (acl != null) 'acl': acl,
           if (bucket != null) 'bucket': bucket,
           if (bucketNamespace != null) 'bucket_namespace': bucketNamespace,
           if (bucketPrefix != null) 'bucket_prefix': bucketPrefix,
           if (forceDestroy != null) 'force_destroy': forceDestroy,
           if (objectLockEnabled != null)
             'object_lock_enabled': objectLockEnabled,
           if (policy != null) 'policy': policy,
           if (region != null) 'region': region,
           if (requestPayer != null) 'request_payer': requestPayer,
           if (tags != null) 'tags': tags,
           if (corsRule != null)
             'cors_rule': TfArg.literal([for (final e in corsRule) e.encode()]),
           if (grant != null)
             'grant': TfArg.literal([for (final e in grant) e.encode()]),
           if (lifecycleRule != null)
             'lifecycle_rule': TfArg.literal([
               for (final e in lifecycleRule) e.encode(),
             ]),
           if (logging != null) 'logging': TfArg.literal(logging.encode()),
           if (objectLockConfiguration != null)
             'object_lock_configuration': objectLockConfiguration,
           if (replicationConfiguration != null)
             'replication_configuration': TfArg.literal(
               replicationConfiguration.encode(),
             ),
           if (serverSideEncryptionConfiguration != null)
             'server_side_encryption_configuration':
                 serverSideEncryptionConfiguration,
           if (versioning != null)
             'versioning': TfArg.literal(versioning.encode()),
           if (website != null) 'website': TfArg.literal(website.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsS3BucketSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `bucket_domain_name` attribute.
  TfRef<String> get bucketDomainName =>
      TfRef.attribute<String>(this, 'bucket_domain_name');

  /// Reference to `bucket_region` attribute.
  TfRef<String> get bucketRegion =>
      TfRef.attribute<String>(this, 'bucket_region');

  /// Reference to `bucket_regional_domain_name` attribute.
  TfRef<String> get bucketRegionalDomainName =>
      TfRef.attribute<String>(this, 'bucket_regional_domain_name');

  /// Reference to `hosted_zone_id` attribute.
  TfRef<String> get hostedZoneId =>
      TfRef.attribute<String>(this, 'hosted_zone_id');

  /// Reference to `website_domain` attribute.
  TfRef<String> get websiteDomain =>
      TfRef.attribute<String>(this, 'website_domain');

  /// Reference to `website_endpoint` attribute.
  TfRef<String> get websiteEndpoint =>
      TfRef.attribute<String>(this, 'website_endpoint');
}
