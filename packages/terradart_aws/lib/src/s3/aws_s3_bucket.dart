// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

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

/// S3 Bucket enum for `bucket_namespace`.
enum S3BucketNamespace implements TerraformEnum {
  accountRegional('account-regional'),
  global('global');

  const S3BucketNamespace(this.terraformValue);
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
sealed class S3BucketAccess {
  const S3BucketAccess();

  /// Sets `acl`.
  const factory S3BucketAccess.acl(TfArg<String> acl) = S3BucketAccessAcl;

  /// Sets `grant`.
  const factory S3BucketAccess.grant(List<S3BucketGrant> grant) =
      S3BucketAccessGrant;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [S3BucketAccess.acl] choice: sets `acl`.
final class S3BucketAccessAcl extends S3BucketAccess {
  const S3BucketAccessAcl(this.acl);

  final TfArg<String> acl;

  @override
  String get blockKey => 'acl';

  @override
  Map<String, Object?> encode() => {'acl': acl.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'acl': acl};
}

/// The [S3BucketAccess.grant] choice: sets `grant`.
final class S3BucketAccessGrant extends S3BucketAccess {
  const S3BucketAccessGrant(this.grant);

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
sealed class S3BucketName {
  const S3BucketName();

  /// Sets `bucket`.
  const factory S3BucketName.bucket(TfArg<String> bucket) = S3BucketNameBucket;

  /// Sets `bucket_prefix`.
  const factory S3BucketName.bucketPrefix(TfArg<String> bucketPrefix) =
      S3BucketNameBucketPrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [S3BucketName.bucket] choice: sets `bucket`.
final class S3BucketNameBucket extends S3BucketName {
  const S3BucketNameBucket(this.bucket);

  final TfArg<String> bucket;

  @override
  String get blockKey => 'bucket';

  @override
  Map<String, Object?> encode() => {'bucket': bucket.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'bucket': bucket};
}

/// The [S3BucketName.bucketPrefix] choice: sets `bucket_prefix`.
final class S3BucketNameBucketPrefix extends S3BucketName {
  const S3BucketNameBucketPrefix(this.bucketPrefix);

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

  final TfArg<List<String>>? allowedHeaders;

  final TfArg<List<String>> allowedMethods;

  final TfArg<List<String>> allowedOrigins;

  final TfArg<List<String>>? exposeHeaders;

  final TfArg<num>? maxAgeSeconds;

  Map<String, Object?> encode() => {
    'allowed_headers': ?allowedHeaders?.toTfJson(),
    'allowed_methods': allowedMethods.toTfJson(),
    'allowed_origins': allowedOrigins.toTfJson(),
    'expose_headers': ?exposeHeaders?.toTfJson(),
    'max_age_seconds': ?maxAgeSeconds?.toTfJson(),
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

  final List<TfArg<S3BucketPermissions>> permissions;

  final TfArg<S3BucketType> type;

  final TfArg<String>? uri;

  Map<String, Object?> encode() => {
    'id': ?id?.toTfJson(),
    'permissions': [for (final e in permissions) e.toTfJson()],
    'type': type.toTfJson(),
    'uri': ?uri?.toTfJson(),
  };
}

/// `permissions` — derived from the provider schema description.
enum S3BucketPermissions implements TerraformEnum {
  fullControl('FULL_CONTROL'),
  write('WRITE'),
  writeAcp('WRITE_ACP'),
  read('READ'),
  readAcp('READ_ACP');

  const S3BucketPermissions(this.terraformValue);
  @override
  final String terraformValue;
}

/// `type` — derived from the provider schema description.
enum S3BucketType implements TerraformEnum {
  canonicaluser('CanonicalUser'),
  group('Group');

  const S3BucketType(this.terraformValue);
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

  final S3BucketExpiration? expiration;

  final S3BucketNoncurrentVersionExpiration? noncurrentVersionExpiration;

  final List<S3BucketNoncurrentVersionTransition>? noncurrentVersionTransition;

  final List<S3BucketTransition>? transition;

  Map<String, Object?> encode() => {
    'abort_incomplete_multipart_upload_days':
        ?abortIncompleteMultipartUploadDays?.toTfJson(),
    'enabled': enabled.toTfJson(),
    'id': ?id?.toTfJson(),
    'prefix': ?prefix?.toTfJson(),
    'tags': ?tags?.toTfJson(),
    'expiration': ?expiration?.encode(),
    'noncurrent_version_expiration': ?noncurrentVersionExpiration?.encode(),
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
final class S3BucketExpiration {
  const S3BucketExpiration({
    this.date,
    this.days,
    this.expiredObjectDeleteMarker,
  });

  final TfArg<String>? date;

  final TfArg<num>? days;

  final TfArg<bool>? expiredObjectDeleteMarker;

  Map<String, Object?> encode() => {
    'date': ?date?.toTfJson(),
    'days': ?days?.toTfJson(),
    'expired_object_delete_marker': ?expiredObjectDeleteMarker?.toTfJson(),
  };
}

/// Typed helper for the `lifecycle_rule.noncurrent_version_expiration` block of
/// `aws_s3_bucket` (derived from provider schema).
@immutable
final class S3BucketNoncurrentVersionExpiration {
  const S3BucketNoncurrentVersionExpiration({this.days});

  final TfArg<num>? days;

  Map<String, Object?> encode() => {'days': ?days?.toTfJson()};
}

/// Typed helper for the `lifecycle_rule.noncurrent_version_transition` block of
/// `aws_s3_bucket` (derived from provider schema).
@immutable
final class S3BucketNoncurrentVersionTransition {
  const S3BucketNoncurrentVersionTransition({
    this.days,
    required this.storageClass,
  });

  final TfArg<num>? days;

  final TfArg<S3BucketStorageClass> storageClass;

  Map<String, Object?> encode() => {
    'days': ?days?.toTfJson(),
    'storage_class': storageClass.toTfJson(),
  };
}

/// `storage_class` — derived from the provider schema description.
enum S3BucketStorageClass implements TerraformEnum {
  glacier('GLACIER'),
  standardIa('STANDARD_IA'),
  onezoneIa('ONEZONE_IA'),
  intelligentTiering('INTELLIGENT_TIERING'),
  deepArchive('DEEP_ARCHIVE'),
  glacierIr('GLACIER_IR');

  const S3BucketStorageClass(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `lifecycle_rule.transition` block of
/// `aws_s3_bucket` (derived from provider schema).
@immutable
final class S3BucketTransition {
  const S3BucketTransition({this.date, this.days, required this.storageClass});

  final TfArg<String>? date;

  final TfArg<num>? days;

  final TfArg<S3BucketStorageClass> storageClass;

  Map<String, Object?> encode() => {
    'date': ?date?.toTfJson(),
    'days': ?days?.toTfJson(),
    'storage_class': storageClass.toTfJson(),
  };
}

/// Typed helper for the `logging` block of
/// `aws_s3_bucket` (derived from provider schema).
@immutable
final class S3BucketLogging {
  const S3BucketLogging({required this.targetBucket, this.targetPrefix});

  final RefTo<AwsS3Bucket> targetBucket;

  final TfArg<String>? targetPrefix;

  Map<String, Object?> encode() => {
    'target_bucket': targetBucket.encodeAs('id').toTfJson(),
    'target_prefix': ?targetPrefix?.toTfJson(),
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

  final RefTo<AwsIamRole> role;

  final List<S3BucketRules> rules;

  Map<String, Object?> encode() => {
    'role': role.encodeAs('arn').toTfJson(),
    'rules': [for (final e in rules) e.encode()],
  };
}

/// Typed helper for the `replication_configuration.rules` block of
/// `aws_s3_bucket` (derived from provider schema).
@immutable
final class S3BucketRules {
  const S3BucketRules({
    this.deleteMarkerReplicationStatus,
    this.id,
    this.prefix,
    this.priority,
    required this.status,
    required this.destination,
    this.filter,
    this.sourceSelectionCriteria,
  });

  final TfArg<S3BucketDeleteMarkerReplicationStatus>?
  deleteMarkerReplicationStatus;

  final TfArg<String>? id;

  final TfArg<String>? prefix;

  final TfArg<num>? priority;

  final TfArg<S3BucketStatus> status;

  final S3BucketDestination destination;

  final S3BucketFilter? filter;

  final S3BucketSourceSelectionCriteria? sourceSelectionCriteria;

  Map<String, Object?> encode() => {
    'delete_marker_replication_status': ?deleteMarkerReplicationStatus
        ?.toTfJson(),
    'id': ?id?.toTfJson(),
    'prefix': ?prefix?.toTfJson(),
    'priority': ?priority?.toTfJson(),
    'status': status.toTfJson(),
    'destination': destination.encode(),
    'filter': ?filter?.encode(),
    'source_selection_criteria': ?sourceSelectionCriteria?.encode(),
  };
}

/// `delete_marker_replication_status` — derived from the provider schema description.
enum S3BucketDeleteMarkerReplicationStatus implements TerraformEnum {
  enabled('Enabled');

  const S3BucketDeleteMarkerReplicationStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// `status` — derived from the provider schema description.
enum S3BucketStatus implements TerraformEnum {
  enabled('Enabled'),
  disabled('Disabled');

  const S3BucketStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `replication_configuration.rules.destination` block of
/// `aws_s3_bucket` (derived from provider schema).
@immutable
final class S3BucketDestination {
  const S3BucketDestination({
    this.accountId,
    required this.bucket,
    this.replicaKmsKeyId,
    this.storageClass,
    this.accessControlTranslation,
    this.metrics,
    this.replicationTime,
  });

  final TfArg<String>? accountId;

  final RefTo<AwsS3Bucket> bucket;

  final TfArg<String>? replicaKmsKeyId;

  final TfArg<S3BucketDestinationStorageClass>? storageClass;

  final S3BucketAccessControlTranslation? accessControlTranslation;

  final S3BucketMetrics? metrics;

  final S3BucketReplicationTime? replicationTime;

  Map<String, Object?> encode() => {
    'account_id': ?accountId?.toTfJson(),
    'bucket': bucket.encodeAs('arn').toTfJson(),
    'replica_kms_key_id': ?replicaKmsKeyId?.toTfJson(),
    'storage_class': ?storageClass?.toTfJson(),
    'access_control_translation': ?accessControlTranslation?.encode(),
    'metrics': ?metrics?.encode(),
    'replication_time': ?replicationTime?.encode(),
  };
}

/// `storage_class` — derived from the provider schema description.
enum S3BucketDestinationStorageClass implements TerraformEnum {
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

  const S3BucketDestinationStorageClass(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `replication_configuration.rules.destination.access_control_translation` block of
/// `aws_s3_bucket` (derived from provider schema).
@immutable
final class S3BucketAccessControlTranslation {
  const S3BucketAccessControlTranslation({required this.owner});

  final TfArg<S3BucketOwner> owner;

  Map<String, Object?> encode() => {'owner': owner.toTfJson()};
}

/// `owner` — derived from the provider schema description.
enum S3BucketOwner implements TerraformEnum {
  destination('Destination');

  const S3BucketOwner(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `replication_configuration.rules.destination.metrics` block of
/// `aws_s3_bucket` (derived from provider schema).
@immutable
final class S3BucketMetrics {
  const S3BucketMetrics({this.minutes, this.status});

  final TfArg<num>? minutes;

  final TfArg<S3BucketStatus>? status;

  Map<String, Object?> encode() => {
    'minutes': ?minutes?.toTfJson(),
    'status': ?status?.toTfJson(),
  };
}

/// Typed helper for the `replication_configuration.rules.destination.replication_time` block of
/// `aws_s3_bucket` (derived from provider schema).
@immutable
final class S3BucketReplicationTime {
  const S3BucketReplicationTime({this.minutes, this.status});

  final TfArg<num>? minutes;

  final TfArg<S3BucketStatus>? status;

  Map<String, Object?> encode() => {
    'minutes': ?minutes?.toTfJson(),
    'status': ?status?.toTfJson(),
  };
}

/// Typed helper for the `replication_configuration.rules.filter` block of
/// `aws_s3_bucket` (derived from provider schema).
@immutable
final class S3BucketFilter {
  const S3BucketFilter({this.prefix, this.tags});

  final TfArg<String>? prefix;

  final TfArg<Map<String, String>>? tags;

  Map<String, Object?> encode() => {
    'prefix': ?prefix?.toTfJson(),
    'tags': ?tags?.toTfJson(),
  };
}

/// Typed helper for the `replication_configuration.rules.source_selection_criteria` block of
/// `aws_s3_bucket` (derived from provider schema).
@immutable
final class S3BucketSourceSelectionCriteria {
  const S3BucketSourceSelectionCriteria({this.sseKmsEncryptedObjects});

  final S3BucketSseKmsEncryptedObjects? sseKmsEncryptedObjects;

  Map<String, Object?> encode() => {
    'sse_kms_encrypted_objects': ?sseKmsEncryptedObjects?.encode(),
  };
}

/// Typed helper for the `replication_configuration.rules.source_selection_criteria.sse_kms_encrypted_objects` block of
/// `aws_s3_bucket` (derived from provider schema).
@immutable
final class S3BucketSseKmsEncryptedObjects {
  const S3BucketSseKmsEncryptedObjects({required this.enabled});

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
    'enabled': ?enabled?.toTfJson(),
    'mfa_delete': ?mfaDelete?.toTfJson(),
  };
}

/// Typed helper for the `website` block of
/// `aws_s3_bucket` (derived from provider schema).
@immutable
final class S3BucketWebsite {
  const S3BucketWebsite({
    this.errorDocument,
    required this.mode,
    this.routingRules,
  });

  final TfArg<String>? errorDocument;

  final S3BucketMode mode;

  final TfArg<String>? routingRules;

  Map<String, Object?> encode() => {
    'error_document': ?errorDocument?.toTfJson(),
    ...mode.encode(),
    'routing_rules': ?routingRules?.toTfJson(),
  };
}

/// Exactly one of `index_document`, `redirect_all_requests_to` on the `website` block of `aws_s3_bucket`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.indexDocument(...)`.
sealed class S3BucketMode {
  const S3BucketMode();

  /// Sets `index_document`.
  const factory S3BucketMode.indexDocument(TfArg<String> indexDocument) =
      S3BucketModeIndexDocument;

  /// Sets `redirect_all_requests_to`.
  const factory S3BucketMode.redirectAllRequestsTo(
    TfArg<String> redirectAllRequestsTo,
  ) = S3BucketModeRedirectAllRequestsTo;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [S3BucketMode.indexDocument] choice: sets `index_document`.
final class S3BucketModeIndexDocument extends S3BucketMode {
  const S3BucketModeIndexDocument(this.indexDocument);

  final TfArg<String> indexDocument;

  @override
  String get blockKey => 'index_document';

  @override
  Map<String, Object?> encode() => {'index_document': indexDocument.toTfJson()};
}

/// The [S3BucketMode.redirectAllRequestsTo] choice: sets `redirect_all_requests_to`.
final class S3BucketModeRedirectAllRequestsTo extends S3BucketMode {
  const S3BucketModeRedirectAllRequestsTo(this.redirectAllRequestsTo);

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
    S3BucketAccess? access,
    S3BucketName? name,
    TfArg<S3BucketNamespace>? bucketNamespace,
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
           'acceleration_status': ?accelerationStatus,
           ...?access?.argMap,
           ...?name?.argMap,
           'bucket_namespace': ?bucketNamespace,
           'force_destroy': ?forceDestroy,
           'object_lock_enabled': ?objectLockEnabled,
           'policy': ?policy,
           'region': ?region,
           'request_payer': ?requestPayer,
           'tags': ?tags,
           if (corsRule != null)
             'cors_rule': TfArg.literal([for (final e in corsRule) e.encode()]),
           if (lifecycleRule != null)
             'lifecycle_rule': TfArg.literal([
               for (final e in lifecycleRule) e.encode(),
             ]),
           if (logging != null) 'logging': TfArg.literal(logging.encode()),
           'object_lock_configuration': ?objectLockConfiguration,
           if (replicationConfiguration != null)
             'replication_configuration': TfArg.literal(
               replicationConfiguration.encode(),
             ),
           'server_side_encryption_configuration':
               ?serverSideEncryptionConfiguration,
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

  /// Reference to `acceleration_status` attribute.
  TfRef<String> get accelerationStatus =>
      TfRef.attribute<String>(this, 'acceleration_status');

  /// Reference to `acl` attribute.
  TfRef<String> get acl => TfRef.attribute<String>(this, 'acl');

  /// Reference to `bucket` attribute.
  TfRef<String> get bucket => TfRef.attribute<String>(this, 'bucket');

  /// Reference to `bucket_namespace` attribute.
  TfRef<String> get bucketNamespace =>
      TfRef.attribute<String>(this, 'bucket_namespace');

  /// Reference to `bucket_prefix` attribute.
  TfRef<String> get bucketPrefix =>
      TfRef.attribute<String>(this, 'bucket_prefix');

  /// Reference to `force_destroy` attribute.
  TfRef<bool> get forceDestroy => TfRef.attribute<bool>(this, 'force_destroy');

  /// Reference to `object_lock_enabled` attribute.
  TfRef<bool> get objectLockEnabled =>
      TfRef.attribute<bool>(this, 'object_lock_enabled');

  /// Reference to `policy` attribute.
  TfRef<String> get policy => TfRef.attribute<String>(this, 'policy');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `request_payer` attribute.
  TfRef<String> get requestPayer =>
      TfRef.attribute<String>(this, 'request_payer');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
