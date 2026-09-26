// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3_bucket_logging`.
const Set<String> _awsS3BucketLoggingSensitive = <String>{};

/// Typed helper for the `target_grant` block of
/// `aws_s3_bucket_logging` (derived from provider schema).
@immutable
final class S3BucketLoggingTargetGrant {
  const S3BucketLoggingTargetGrant({
    required this.permission,
    required this.grantee,
  });

  final TfArg<String> permission;

  final S3BucketLoggingTargetGrantGrantee grantee;

  Map<String, Object?> encode() => {
    'permission': permission.toTfJson(),
    'grantee': grantee.encode(),
  };
}

/// Typed helper for the `target_grant.grantee` block of
/// `aws_s3_bucket_logging` (derived from provider schema).
@immutable
final class S3BucketLoggingTargetGrantGrantee {
  const S3BucketLoggingTargetGrantGrantee({
    this.emailAddress,
    this.id,
    required this.type,
    this.uri,
  });

  final TfArg<String>? emailAddress;

  final TfArg<String>? id;

  final TfArg<String> type;

  final TfArg<String>? uri;

  Map<String, Object?> encode() => {
    if (emailAddress != null) 'email_address': emailAddress!.toTfJson(),
    if (id != null) 'id': id!.toTfJson(),
    'type': type.toTfJson(),
    if (uri != null) 'uri': uri!.toTfJson(),
  };
}

/// Typed helper for the `target_object_key_format` block of
/// `aws_s3_bucket_logging` (derived from provider schema).
@immutable
final class S3BucketLoggingTargetObjectKeyFormat {
  const S3BucketLoggingTargetObjectKeyFormat({
    this.partitionedPrefix,
    this.simplePrefix,
  });

  final S3BucketLoggingTargetObjectKeyFormatPartitionedPrefix?
  partitionedPrefix;

  final S3BucketLoggingTargetObjectKeyFormatSimplePrefix? simplePrefix;

  Map<String, Object?> encode() => {
    if (partitionedPrefix != null)
      'partitioned_prefix': partitionedPrefix!.encode(),
    if (simplePrefix != null) 'simple_prefix': simplePrefix!.encode(),
  };
}

/// Typed helper for the `target_object_key_format.partitioned_prefix` block of
/// `aws_s3_bucket_logging` (derived from provider schema).
@immutable
final class S3BucketLoggingTargetObjectKeyFormatPartitionedPrefix {
  const S3BucketLoggingTargetObjectKeyFormatPartitionedPrefix({
    required this.partitionDateSource,
  });

  final TfArg<String> partitionDateSource;

  Map<String, Object?> encode() => {
    'partition_date_source': partitionDateSource.toTfJson(),
  };
}

/// Typed helper for the `target_object_key_format.simple_prefix` block of
/// `aws_s3_bucket_logging` (derived from provider schema).
@immutable
final class S3BucketLoggingTargetObjectKeyFormatSimplePrefix {
  const S3BucketLoggingTargetObjectKeyFormatSimplePrefix();

  Map<String, Object?> encode() => {};
}

/// Factory wrapper for `aws_s3_bucket_logging`.
final class AwsS3BucketLogging extends Resource {
  static const String tfType = 'aws_s3_bucket_logging';

  AwsS3BucketLogging({
    required super.localName,
    required TfArg<String> bucket,
    TfArg<String>? expectedBucketOwner,
    TfArg<String>? region,
    required TfArg<String> targetBucket,
    required TfArg<String> targetPrefix,
    List<S3BucketLoggingTargetGrant>? targetGrant,
    S3BucketLoggingTargetObjectKeyFormat? targetObjectKeyFormat,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket,
           if (expectedBucketOwner != null)
             'expected_bucket_owner': expectedBucketOwner,
           if (region != null) 'region': region,
           'target_bucket': targetBucket,
           'target_prefix': targetPrefix,
           if (targetGrant != null)
             'target_grant': TfArg.literal([
               for (final e in targetGrant) e.encode(),
             ]),
           if (targetObjectKeyFormat != null)
             'target_object_key_format': TfArg.literal(
               targetObjectKeyFormat.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsS3BucketLoggingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
