// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3_bucket`.
const Set<String> _awsS3BucketSensitive = <String>{};

/// S3 Bucket Acceleration enum for `acceleration_status`.
enum S3BucketAccelerationStatus implements TerraformEnum {
  enabled('Enabled'),
  suspended('Suspended');

  const S3BucketAccelerationStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// S3 Bucket Bucket enum for `bucket_namespace`.
enum S3BucketBucketNamespace implements TerraformEnum {
  accountRegional('account-regional'),
  global('global');

  const S3BucketBucketNamespace(this.terraformValue);
  @override
  final String terraformValue;
}

/// S3 Bucket Request enum for `request_payer`.
enum S3BucketRequestPayer implements TerraformEnum {
  requester('Requester'),
  bucketowner('BucketOwner');

  const S3BucketRequestPayer(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `acl`, `grant` on `aws_s3_bucket`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.acl(...)`.
sealed class S3BucketAclOrGrant {
  const S3BucketAclOrGrant();

  /// Sets `acl`.
  const factory S3BucketAclOrGrant.acl(TfArg<String> acl) =
      S3BucketAclOrGrantAcl;

  /// Sets `grant`.
  const factory S3BucketAclOrGrant.grant(List<S3BucketGrant> grant) =
      S3BucketAclOrGrantGrant;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [S3BucketAclOrGrant.acl] choice: sets `acl`.
final class S3BucketAclOrGrantAcl extends S3BucketAclOrGrant {
  const S3BucketAclOrGrantAcl(this.acl);

  final TfArg<String> acl;

  @override
  String get blockKey => 'acl';

  @override
  Map<String, Object?> encode() => {'acl': acl.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'acl': acl};
}

/// The [S3BucketAclOrGrant.grant] choice: sets `grant`.
final class S3BucketAclOrGrantGrant extends S3BucketAclOrGrant {
  const S3BucketAclOrGrantGrant(this.grant);

  final List<S3BucketGrant> grant;

  @override
  String get blockKey => 'grant';

  @override
  Map<String, Object?> encode() => {
    'grant': [for (final e in grant) e.encode()],
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'grant': TfArg.literal([for (final e in grant) e.encode()]),
  };
}

/// At most one of `bucket`, `bucket_prefix` on `aws_s3_bucket`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.bucket(...)`.
sealed class S3BucketBucket {
  const S3BucketBucket();

  /// Sets `bucket`.
  const factory S3BucketBucket.bucket(TfArg<String> bucket) =
      S3BucketBucketBucket;

  /// Sets `bucket_prefix`.
  const factory S3BucketBucket.bucketPrefix(TfArg<String> bucketPrefix) =
      S3BucketBucketBucketPrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [S3BucketBucket.bucket] choice: sets `bucket`.
final class S3BucketBucketBucket extends S3BucketBucket {
  const S3BucketBucketBucket(this.bucket);

  final TfArg<String> bucket;

  @override
  String get blockKey => 'bucket';

  @override
  Map<String, Object?> encode() => {'bucket': bucket.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'bucket': bucket};
}

/// The [S3BucketBucket.bucketPrefix] choice: sets `bucket_prefix`.
final class S3BucketBucketBucketPrefix extends S3BucketBucket {
  const S3BucketBucketBucketPrefix(this.bucketPrefix);

  final TfArg<String> bucketPrefix;

  @override
  String get blockKey => 'bucket_prefix';

  @override
  Map<String, Object?> encode() => {'bucket_prefix': bucketPrefix.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'bucket_prefix': bucketPrefix};
}

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

  final List<TfArg<S3BucketGrantPermissions>> permissions;

  final TfArg<S3BucketGrantType> type;

  final TfArg<String>? uri;

  Map<String, Object?> encode() => {
    if (id != null) 'id': id!.toTfJson(),
    'permissions': [for (final e in permissions) e.toTfJson()],
    'type': type.toTfJson(),
    if (uri != null) 'uri': uri!.toTfJson(),
  };
}

/// `permissions` — derived from the provider schema description.
enum S3BucketGrantPermissions implements TerraformEnum {
  fullControl('FULL_CONTROL'),
  write('WRITE'),
  writeAcp('WRITE_ACP'),
  read('READ'),
  readAcp('READ_ACP');

  const S3BucketGrantPermissions(this.terraformValue);
  @override
  final String terraformValue;
}

/// `type` — derived from the provider schema description.
enum S3BucketGrantType implements TerraformEnum {
  canonicaluser('CanonicalUser'),
  group('Group');

  const S3BucketGrantType(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<S3BucketLifecycleRuleNoncurrentVersionTransitionStorageClass>
  storageClass;

  Map<String, Object?> encode() => {
    if (days != null) 'days': days!.toTfJson(),
    'storage_class': storageClass.toTfJson(),
  };
}

/// `storage_class` — derived from the provider schema description.
enum S3BucketLifecycleRuleNoncurrentVersionTransitionStorageClass
    implements TerraformEnum {
  glacier('GLACIER'),
  standardIa('STANDARD_IA'),
  onezoneIa('ONEZONE_IA'),
  intelligentTiering('INTELLIGENT_TIERING'),
  deepArchive('DEEP_ARCHIVE'),
  glacierIr('GLACIER_IR');

  const S3BucketLifecycleRuleNoncurrentVersionTransitionStorageClass(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final TfArg<S3BucketLifecycleRuleTransitionStorageClass> storageClass;

  Map<String, Object?> encode() => {
    if (date != null) 'date': date!.toTfJson(),
    if (days != null) 'days': days!.toTfJson(),
    'storage_class': storageClass.toTfJson(),
  };
}

/// `storage_class` — derived from the provider schema description.
enum S3BucketLifecycleRuleTransitionStorageClass implements TerraformEnum {
  glacier('GLACIER'),
  standardIa('STANDARD_IA'),
  onezoneIa('ONEZONE_IA'),
  intelligentTiering('INTELLIGENT_TIERING'),
  deepArchive('DEEP_ARCHIVE'),
  glacierIr('GLACIER_IR');

  const S3BucketLifecycleRuleTransitionStorageClass(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<
    S3BucketReplicationConfigurationRulesDeleteMarkerReplicationStatus
  >?
  deleteMarkerReplicationStatus;

  final TfArg<String>? id;

  final TfArg<String>? prefix;

  final TfArg<num>? priority;

  final TfArg<S3BucketReplicationConfigurationRulesStatus> status;

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

/// `delete_marker_replication_status` — derived from the provider schema description.
enum S3BucketReplicationConfigurationRulesDeleteMarkerReplicationStatus
    implements TerraformEnum {
  enabled('Enabled');

  const S3BucketReplicationConfigurationRulesDeleteMarkerReplicationStatus(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `status` — derived from the provider schema description.
enum S3BucketReplicationConfigurationRulesStatus implements TerraformEnum {
  enabled('Enabled'),
  disabled('Disabled');

  const S3BucketReplicationConfigurationRulesStatus(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<S3BucketReplicationConfigurationRulesDestinationStorageClass>?
  storageClass;

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

/// `storage_class` — derived from the provider schema description.
enum S3BucketReplicationConfigurationRulesDestinationStorageClass
    implements TerraformEnum {
  standard('STANDARD'),
  reducedRedundancy('REDUCED_REDUNDANCY'),
  standardIa('STANDARD_IA'),
  onezoneIa('ONEZONE_IA'),
  intelligentTiering('INTELLIGENT_TIERING'),
  glacier('GLACIER'),
  deepArchive('DEEP_ARCHIVE'),
  outposts('OUTPOSTS'),
  glacierIr('GLACIER_IR'),
  snow('SNOW'),
  expressOnezone('EXPRESS_ONEZONE'),
  fsxOpenzfs('FSX_OPENZFS'),
  fsxOntap('FSX_ONTAP'),
  awsBackupWarm('AWS_BACKUP_WARM'),
  awsBackupLowCostWarm('AWS_BACKUP_LOW_COST_WARM');

  const S3BucketReplicationConfigurationRulesDestinationStorageClass(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `replication_configuration.rules.destination.access_control_translation` block of
/// `aws_s3_bucket` (derived from provider schema).
@immutable
final class S3BucketReplicationConfigurationRulesDestinationAccessControlTranslation {
  const S3BucketReplicationConfigurationRulesDestinationAccessControlTranslation({
    required this.owner,
  });

  final TfArg<
    S3BucketReplicationConfigurationRulesDestinationAccessControlTranslationOwner
  >
  owner;

  Map<String, Object?> encode() => {'owner': owner.toTfJson()};
}

/// `owner` — derived from the provider schema description.
enum S3BucketReplicationConfigurationRulesDestinationAccessControlTranslationOwner
    implements TerraformEnum {
  destination('Destination');

  const S3BucketReplicationConfigurationRulesDestinationAccessControlTranslationOwner(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final TfArg<S3BucketReplicationConfigurationRulesDestinationMetricsStatus>?
  status;

  Map<String, Object?> encode() => {
    if (minutes != null) 'minutes': minutes!.toTfJson(),
    if (status != null) 'status': status!.toTfJson(),
  };
}

/// `status` — derived from the provider schema description.
enum S3BucketReplicationConfigurationRulesDestinationMetricsStatus
    implements TerraformEnum {
  enabled('Enabled'),
  disabled('Disabled');

  const S3BucketReplicationConfigurationRulesDestinationMetricsStatus(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final TfArg<
    S3BucketReplicationConfigurationRulesDestinationReplicationTimeStatus
  >?
  status;

  Map<String, Object?> encode() => {
    if (minutes != null) 'minutes': minutes!.toTfJson(),
    if (status != null) 'status': status!.toTfJson(),
  };
}

/// `status` — derived from the provider schema description.
enum S3BucketReplicationConfigurationRulesDestinationReplicationTimeStatus
    implements TerraformEnum {
  enabled('Enabled'),
  disabled('Disabled');

  const S3BucketReplicationConfigurationRulesDestinationReplicationTimeStatus(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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
    required this.indexDocumentOrRedirectAllRequestsTo,
    this.routingRules,
  });

  final TfArg<String>? errorDocument;

  final S3BucketWebsiteIndexDocumentOrRedirectAllRequestsTo
  indexDocumentOrRedirectAllRequestsTo;

  final TfArg<String>? routingRules;

  Map<String, Object?> encode() => {
    if (errorDocument != null) 'error_document': errorDocument!.toTfJson(),
    ...indexDocumentOrRedirectAllRequestsTo.encode(),
    if (routingRules != null) 'routing_rules': routingRules!.toTfJson(),
  };
}

/// Exactly one of `index_document`, `redirect_all_requests_to` on the `website` block of `aws_s3_bucket`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.indexDocument(...)`.
sealed class S3BucketWebsiteIndexDocumentOrRedirectAllRequestsTo {
  const S3BucketWebsiteIndexDocumentOrRedirectAllRequestsTo();

  /// Sets `index_document`.
  const factory S3BucketWebsiteIndexDocumentOrRedirectAllRequestsTo.indexDocument(
    TfArg<String> indexDocument,
  ) = S3BucketWebsiteIndexDocumentOrRedirectAllRequestsToIndexDocument;

  /// Sets `redirect_all_requests_to`.
  const factory S3BucketWebsiteIndexDocumentOrRedirectAllRequestsTo.redirectAllRequestsTo(
    TfArg<String> redirectAllRequestsTo,
  ) = S3BucketWebsiteIndexDocumentOrRedirectAllRequestsToRedirectAllRequestsTo;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [S3BucketWebsiteIndexDocumentOrRedirectAllRequestsTo.indexDocument] choice: sets `index_document`.
final class S3BucketWebsiteIndexDocumentOrRedirectAllRequestsToIndexDocument
    extends S3BucketWebsiteIndexDocumentOrRedirectAllRequestsTo {
  const S3BucketWebsiteIndexDocumentOrRedirectAllRequestsToIndexDocument(
    this.indexDocument,
  );

  final TfArg<String> indexDocument;

  @override
  String get blockKey => 'index_document';

  @override
  Map<String, Object?> encode() => {'index_document': indexDocument.toTfJson()};
}

/// The [S3BucketWebsiteIndexDocumentOrRedirectAllRequestsTo.redirectAllRequestsTo] choice: sets `redirect_all_requests_to`.
final class S3BucketWebsiteIndexDocumentOrRedirectAllRequestsToRedirectAllRequestsTo
    extends S3BucketWebsiteIndexDocumentOrRedirectAllRequestsTo {
  const S3BucketWebsiteIndexDocumentOrRedirectAllRequestsToRedirectAllRequestsTo(
    this.redirectAllRequestsTo,
  );

  final TfArg<String> redirectAllRequestsTo;

  @override
  String get blockKey => 'redirect_all_requests_to';

  @override
  Map<String, Object?> encode() => {
    'redirect_all_requests_to': redirectAllRequestsTo.toTfJson(),
  };
}

/// Factory wrapper for `aws_s3_bucket`.
final class AwsS3Bucket extends Resource {
  static const String tfType = 'aws_s3_bucket';

  AwsS3Bucket({
    required super.localName,
    TfArg<S3BucketAccelerationStatus>? accelerationStatus,
    S3BucketAclOrGrant? aclOrGrant,
    S3BucketBucket? bucket,
    TfArg<S3BucketBucketNamespace>? bucketNamespace,
    TfArg<bool>? forceDestroy,
    TfArg<bool>? objectLockEnabled,
    TfArg<String>? policy,
    TfArg<String>? region,
    TfArg<S3BucketRequestPayer>? requestPayer,
    TfArg<Map<String, String>>? tags,
    List<S3BucketCorsRule>? corsRule,
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
           ...?aclOrGrant?.argMap,
           ...?bucket?.argMap,
           if (bucketNamespace != null) 'bucket_namespace': bucketNamespace,
           if (forceDestroy != null) 'force_destroy': forceDestroy,
           if (objectLockEnabled != null)
             'object_lock_enabled': objectLockEnabled,
           if (policy != null) 'policy': policy,
           if (region != null) 'region': region,
           if (requestPayer != null) 'request_payer': requestPayer,
           if (tags != null) 'tags': tags,
           if (corsRule != null)
             'cors_rule': TfArg.literal([for (final e in corsRule) e.encode()]),
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsS3Bucket>`.
  RefTo<AwsS3Bucket> get ref => RefTo.of(this);

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
