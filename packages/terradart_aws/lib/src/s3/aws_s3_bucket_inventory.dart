// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3_bucket_inventory`.
const Set<String> _awsS3BucketInventorySensitive = <String>{};

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

  final TfArg<String> format;

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

/// Typed helper for the `destination.bucket.encryption` block of
/// `aws_s3_bucket_inventory` (derived from provider schema).
@immutable
final class S3BucketInventoryDestinationBucketEncryption {
  const S3BucketInventoryDestinationBucketEncryption({this.sseKms, this.sseS3});

  final S3BucketInventoryDestinationBucketEncryptionSseKms? sseKms;

  final S3BucketInventoryDestinationBucketEncryptionSseS3? sseS3;

  Map<String, Object?> encode() => {
    if (sseKms != null) 'sse_kms': sseKms!.encode(),
    if (sseS3 != null) 'sse_s3': sseS3!.encode(),
  };
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

  final TfArg<String> frequency;

  Map<String, Object?> encode() => {'frequency': frequency.toTfJson()};
}

/// Factory wrapper for `aws_s3_bucket_inventory`.
final class AwsS3BucketInventory extends Resource {
  static const String tfType = 'aws_s3_bucket_inventory';

  AwsS3BucketInventory({
    required super.localName,
    required TfArg<String> bucket,
    TfArg<bool>? enabled,
    required TfArg<String> includedObjectVersions,
    required TfArg<String> name,
    TfArg<List<String>>? optionalFields,
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
           if (optionalFields != null) 'optional_fields': optionalFields,
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
