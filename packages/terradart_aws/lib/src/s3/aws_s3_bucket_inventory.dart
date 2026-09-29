// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3_bucket_inventory`.
const Set<String> _awsS3BucketInventorySensitive = <String>{};

/// S3 Bucket Inventory Included Object enum for `included_object_versions`.
enum S3BucketInventoryIncludedObjectVersions implements TerraformEnum {
  all('All'),
  current('Current');

  const S3BucketInventoryIncludedObjectVersions(this.terraformValue);
  @override
  final String terraformValue;
}

/// S3 Bucket Inventory Optional enum for `optional_fields`.
enum S3BucketInventoryOptionalFields implements TerraformEnum {
  size('Size'),
  lastmodifieddate('LastModifiedDate'),
  storageclass('StorageClass'),
  etag('ETag'),
  ismultipartuploaded('IsMultipartUploaded'),
  replicationstatus('ReplicationStatus'),
  encryptionstatus('EncryptionStatus'),
  objectlockretainuntildate('ObjectLockRetainUntilDate'),
  objectlockmode('ObjectLockMode'),
  objectlocklegalholdstatus('ObjectLockLegalHoldStatus'),
  objectlockeventholdstatus('ObjectLockEventHoldStatus'),
  objectlockeventholdduration('ObjectLockEventHoldDuration'),
  intelligenttieringaccesstier('IntelligentTieringAccessTier'),
  bucketkeystatus('BucketKeyStatus'),
  checksumalgorithm('ChecksumAlgorithm'),
  objectaccesscontrollist('ObjectAccessControlList'),
  objectowner('ObjectOwner'),
  lifecycleexpirationdate('LifecycleExpirationDate');

  const S3BucketInventoryOptionalFields(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `destination` block of
/// `aws_s3_bucket_inventory` (derived from provider schema).
@immutable
final class S3BucketInventoryDestination {
  const S3BucketInventoryDestination({required this.bucket});

  final S3BucketInventoryDestinationBucket bucket;

  Map<String, Object?> encode() => {'bucket': bucket.encode()};
}

/// Typed helper for the `destination.bucket` block of
/// `aws_s3_bucket_inventory` (derived from provider schema).
@immutable
final class S3BucketInventoryDestinationBucket {
  const S3BucketInventoryDestinationBucket({
    this.accountId,
    required this.bucketArn,
    required this.format,
    this.prefix,
    this.encryption,
  });

  final TfArg<String>? accountId;

  final TfArg<String> bucketArn;

  final TfArg<S3BucketInventoryDestinationBucketFormat> format;

  final TfArg<String>? prefix;

  final S3BucketInventoryDestinationBucketEncryption? encryption;

  Map<String, Object?> encode() => {
    if (accountId != null) 'account_id': accountId!.toTfJson(),
    'bucket_arn': bucketArn.toTfJson(),
    'format': format.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
    if (encryption != null) 'encryption': encryption!.encode(),
  };
}

/// `format` — derived from the provider schema description.
enum S3BucketInventoryDestinationBucketFormat implements TerraformEnum {
  csv('CSV'),
  orc('ORC'),
  parquet('Parquet');

  const S3BucketInventoryDestinationBucketFormat(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `destination.bucket.encryption` block of
/// `aws_s3_bucket_inventory` (derived from provider schema).
@immutable
final class S3BucketInventoryDestinationBucketEncryption {
  const S3BucketInventoryDestinationBucketEncryption({this.sseKmsOrSseS3});

  final S3BucketInventoryDestinationBucketEncryptionSseKmsOrSseS3?
  sseKmsOrSseS3;

  Map<String, Object?> encode() => {...?sseKmsOrSseS3?.encode()};
}

/// At most one of `sse_kms`, `sse_s3` on the `destination.bucket.encryption` block of `aws_s3_bucket_inventory`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.sseKms(...)`.
sealed class S3BucketInventoryDestinationBucketEncryptionSseKmsOrSseS3 {
  const S3BucketInventoryDestinationBucketEncryptionSseKmsOrSseS3();

  /// Sets `sse_kms`.
  const factory S3BucketInventoryDestinationBucketEncryptionSseKmsOrSseS3.sseKms(
    S3BucketInventoryDestinationBucketEncryptionSseKms sseKms,
  ) = S3BucketInventoryDestinationBucketEncryptionSseKmsOrSseS3SseKms;

  /// Sets `sse_s3`.
  const factory S3BucketInventoryDestinationBucketEncryptionSseKmsOrSseS3.sseS3(
    S3BucketInventoryDestinationBucketEncryptionSseS3 sseS3,
  ) = S3BucketInventoryDestinationBucketEncryptionSseKmsOrSseS3SseS3;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [S3BucketInventoryDestinationBucketEncryptionSseKmsOrSseS3.sseKms] choice: sets `sse_kms`.
final class S3BucketInventoryDestinationBucketEncryptionSseKmsOrSseS3SseKms
    extends S3BucketInventoryDestinationBucketEncryptionSseKmsOrSseS3 {
  const S3BucketInventoryDestinationBucketEncryptionSseKmsOrSseS3SseKms(
    this.sseKms,
  );

  final S3BucketInventoryDestinationBucketEncryptionSseKms sseKms;

  @override
  String get blockKey => 'sse_kms';

  @override
  Map<String, Object?> encode() => {'sse_kms': sseKms.encode()};
}

/// The [S3BucketInventoryDestinationBucketEncryptionSseKmsOrSseS3.sseS3] choice: sets `sse_s3`.
final class S3BucketInventoryDestinationBucketEncryptionSseKmsOrSseS3SseS3
    extends S3BucketInventoryDestinationBucketEncryptionSseKmsOrSseS3 {
  const S3BucketInventoryDestinationBucketEncryptionSseKmsOrSseS3SseS3(
    this.sseS3,
  );

  final S3BucketInventoryDestinationBucketEncryptionSseS3 sseS3;

  @override
  String get blockKey => 'sse_s3';

  @override
  Map<String, Object?> encode() => {'sse_s3': sseS3.encode()};
}

/// Typed helper for the `destination.bucket.encryption.sse_kms` block of
/// `aws_s3_bucket_inventory` (derived from provider schema).
@immutable
final class S3BucketInventoryDestinationBucketEncryptionSseKms {
  const S3BucketInventoryDestinationBucketEncryptionSseKms({
    required this.keyId,
  });

  final TfArg<String> keyId;

  Map<String, Object?> encode() => {'key_id': keyId.toTfJson()};
}

/// Typed helper for the `destination.bucket.encryption.sse_s3` block of
/// `aws_s3_bucket_inventory` (derived from provider schema).
@immutable
final class S3BucketInventoryDestinationBucketEncryptionSseS3 {
  const S3BucketInventoryDestinationBucketEncryptionSseS3();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `filter` block of
/// `aws_s3_bucket_inventory` (derived from provider schema).
@immutable
final class S3BucketInventoryFilter {
  const S3BucketInventoryFilter({this.prefix});

  final TfArg<String>? prefix;

  Map<String, Object?> encode() => {
    if (prefix != null) 'prefix': prefix!.toTfJson(),
  };
}

/// Typed helper for the `schedule` block of
/// `aws_s3_bucket_inventory` (derived from provider schema).
@immutable
final class S3BucketInventorySchedule {
  const S3BucketInventorySchedule({required this.frequency});

  final TfArg<S3BucketInventoryScheduleFrequency> frequency;

  Map<String, Object?> encode() => {'frequency': frequency.toTfJson()};
}

/// `frequency` — derived from the provider schema description.
enum S3BucketInventoryScheduleFrequency implements TerraformEnum {
  daily('Daily'),
  weekly('Weekly');

  const S3BucketInventoryScheduleFrequency(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_s3_bucket_inventory`.
final class AwsS3BucketInventory extends Resource {
  static const String tfType = 'aws_s3_bucket_inventory';

  AwsS3BucketInventory({
    required super.localName,
    required TfArg<String> bucket,
    TfArg<bool>? enabled,
    required TfArg<S3BucketInventoryIncludedObjectVersions>
    includedObjectVersions,
    required TfArg<String> name,
    List<TfArg<S3BucketInventoryOptionalFields>>? optionalFields,
    TfArg<String>? region,
    required S3BucketInventoryDestination destination,
    S3BucketInventoryFilter? filter,
    required S3BucketInventorySchedule schedule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket,
           if (enabled != null) 'enabled': enabled,
           'included_object_versions': includedObjectVersions,
           'name': name,
           if (optionalFields != null)
             'optional_fields': TfArg.literal([
               for (final e in optionalFields) e.toTfJson(),
             ]),
           if (region != null) 'region': region,
           'destination': TfArg.literal(destination.encode()),
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
           'schedule': TfArg.literal(schedule.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsS3BucketInventorySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
