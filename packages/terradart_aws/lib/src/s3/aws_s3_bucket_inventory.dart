// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

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

  final RefTo<AwsS3Bucket> bucketArn;

  final TfArg<S3BucketInventoryDestinationBucketFormat> format;

  final TfArg<String>? prefix;

  final S3BucketInventoryDestinationBucketEncryption? encryption;

  Map<String, Object?> encode() => {
    'account_id': ?accountId?.toTfJson(),
    'bucket_arn': bucketArn.encodeAs('arn').toTfJson(),
    'format': format.toTfJson(),
    'prefix': ?prefix?.toTfJson(),
    'encryption': ?encryption?.encode(),
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

/// At most one of `sse_kms`, `sse_s3` on the `destination.bucket.encryption` block of `aws_s3_bucket_inventory`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.sseKms(...)`.
sealed class S3BucketInventoryDestinationBucketEncryption {
  const S3BucketInventoryDestinationBucketEncryption();

  /// Sets `sse_kms`.
  const factory S3BucketInventoryDestinationBucketEncryption.sseKms(
    S3BucketInventoryDestinationBucketEncryptionSseKms sseKms,
  ) = S3BucketInventoryDestinationBucketEncryptionSseKmsChoice;

  /// Sets `sse_s3`.
  const factory S3BucketInventoryDestinationBucketEncryption.sseS3(
    S3BucketInventoryDestinationBucketEncryptionSseS3 sseS3,
  ) = S3BucketInventoryDestinationBucketEncryptionSseS3Choice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [S3BucketInventoryDestinationBucketEncryption.sseKms] choice: sets `sse_kms`.
final class S3BucketInventoryDestinationBucketEncryptionSseKmsChoice
    extends S3BucketInventoryDestinationBucketEncryption {
  const S3BucketInventoryDestinationBucketEncryptionSseKmsChoice(this.sseKms);

  final S3BucketInventoryDestinationBucketEncryptionSseKms sseKms;

  @override
  String get blockKey => 'sse_kms';

  @override
  Map<String, Object?> encode() => {'sse_kms': sseKms.encode()};
}

/// The [S3BucketInventoryDestinationBucketEncryption.sseS3] choice: sets `sse_s3`.
final class S3BucketInventoryDestinationBucketEncryptionSseS3Choice
    extends S3BucketInventoryDestinationBucketEncryption {
  const S3BucketInventoryDestinationBucketEncryptionSseS3Choice(this.sseS3);

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

  final RefTo<AwsKmsKey> keyId;

  Map<String, Object?> encode() => {'key_id': keyId.encodeAs('arn').toTfJson()};
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

  Map<String, Object?> encode() => {'prefix': ?prefix?.toTfJson()};
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
    required RefTo<AwsS3Bucket> bucket,
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
           'bucket': bucket.encodeAs('id'),
           'enabled': ?enabled,
           'included_object_versions': includedObjectVersions,
           'name': name,
           if (optionalFields != null)
             'optional_fields': TfArg.literal([
               for (final e in optionalFields) e.toTfJson(),
             ]),
           'region': ?region,
           'destination': TfArg.literal(destination.encode()),
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
           'schedule': TfArg.literal(schedule.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsS3BucketInventorySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsS3BucketInventory>`.
  RefTo<AwsS3BucketInventory> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
