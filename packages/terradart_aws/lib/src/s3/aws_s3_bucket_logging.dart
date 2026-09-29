// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

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

  final TfArg<S3BucketLoggingTargetGrantPermission> permission;

  final S3BucketLoggingTargetGrantGrantee grantee;

  Map<String, Object?> encode() => {
    'permission': permission.toTfJson(),
    'grantee': grantee.encode(),
  };
}

/// `permission` — derived from the provider schema description.
enum S3BucketLoggingTargetGrantPermission implements TerraformEnum {
  fullControl('FULL_CONTROL'),
  read('READ'),
  write('WRITE');

  const S3BucketLoggingTargetGrantPermission(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<S3BucketLoggingTargetGrantGranteeType> type;

  final TfArg<String>? uri;

  Map<String, Object?> encode() => {
    if (emailAddress != null) 'email_address': emailAddress!.toTfJson(),
    if (id != null) 'id': id!.toTfJson(),
    'type': type.toTfJson(),
    if (uri != null) 'uri': uri!.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum S3BucketLoggingTargetGrantGranteeType implements TerraformEnum {
  canonicaluser('CanonicalUser'),
  amazoncustomerbyemail('AmazonCustomerByEmail'),
  group('Group');

  const S3BucketLoggingTargetGrantGranteeType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `target_object_key_format` block of
/// `aws_s3_bucket_logging` (derived from provider schema).
@immutable
final class S3BucketLoggingTargetObjectKeyFormat {
  const S3BucketLoggingTargetObjectKeyFormat({required this.prefix});

  final S3BucketLoggingTargetObjectKeyFormatPrefix prefix;

  Map<String, Object?> encode() => {...prefix.encode()};
}

/// Exactly one of `partitioned_prefix`, `simple_prefix` on the `target_object_key_format` block of `aws_s3_bucket_logging`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.partitionedPrefix(...)`.
sealed class S3BucketLoggingTargetObjectKeyFormatPrefix {
  const S3BucketLoggingTargetObjectKeyFormatPrefix();

  /// Sets `partitioned_prefix`.
  const factory S3BucketLoggingTargetObjectKeyFormatPrefix.partitionedPrefix(
    S3BucketLoggingTargetObjectKeyFormatPartitionedPrefix partitionedPrefix,
  ) = S3BucketLoggingTargetObjectKeyFormatPrefixPartitionedPrefix;

  /// Sets `simple_prefix`.
  const factory S3BucketLoggingTargetObjectKeyFormatPrefix.simplePrefix(
    S3BucketLoggingTargetObjectKeyFormatSimplePrefix simplePrefix,
  ) = S3BucketLoggingTargetObjectKeyFormatPrefixSimplePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [S3BucketLoggingTargetObjectKeyFormatPrefix.partitionedPrefix] choice: sets `partitioned_prefix`.
final class S3BucketLoggingTargetObjectKeyFormatPrefixPartitionedPrefix
    extends S3BucketLoggingTargetObjectKeyFormatPrefix {
  const S3BucketLoggingTargetObjectKeyFormatPrefixPartitionedPrefix(
    this.partitionedPrefix,
  );

  final S3BucketLoggingTargetObjectKeyFormatPartitionedPrefix partitionedPrefix;

  @override
  String get blockKey => 'partitioned_prefix';

  @override
  Map<String, Object?> encode() => {
    'partitioned_prefix': partitionedPrefix.encode(),
  };
}

/// The [S3BucketLoggingTargetObjectKeyFormatPrefix.simplePrefix] choice: sets `simple_prefix`.
final class S3BucketLoggingTargetObjectKeyFormatPrefixSimplePrefix
    extends S3BucketLoggingTargetObjectKeyFormatPrefix {
  const S3BucketLoggingTargetObjectKeyFormatPrefixSimplePrefix(
    this.simplePrefix,
  );

  final S3BucketLoggingTargetObjectKeyFormatSimplePrefix simplePrefix;

  @override
  String get blockKey => 'simple_prefix';

  @override
  Map<String, Object?> encode() => {'simple_prefix': simplePrefix.encode()};
}

/// Typed helper for the `target_object_key_format.partitioned_prefix` block of
/// `aws_s3_bucket_logging` (derived from provider schema).
@immutable
final class S3BucketLoggingTargetObjectKeyFormatPartitionedPrefix {
  const S3BucketLoggingTargetObjectKeyFormatPartitionedPrefix({
    required this.partitionDateSource,
  });

  final TfArg<
    S3BucketLoggingTargetObjectKeyFormatPartitionedPrefixPartitionDateSource
  >
  partitionDateSource;

  Map<String, Object?> encode() => {
    'partition_date_source': partitionDateSource.toTfJson(),
  };
}

/// `partition_date_source` — derived from the provider schema description.
enum S3BucketLoggingTargetObjectKeyFormatPartitionedPrefixPartitionDateSource
    implements TerraformEnum {
  eventtime('EventTime'),
  deliverytime('DeliveryTime');

  const S3BucketLoggingTargetObjectKeyFormatPartitionedPrefixPartitionDateSource(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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
    required RefTo<AwsS3Bucket> bucket,
    TfArg<String>? expectedBucketOwner,
    TfArg<String>? region,
    required RefTo<AwsS3Bucket> targetBucket,
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
           'bucket': bucket.encodeAs('id'),
           if (expectedBucketOwner != null)
             'expected_bucket_owner': expectedBucketOwner,
           if (region != null) 'region': region,
           'target_bucket': targetBucket.encodeAs('id'),
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsS3BucketLogging>`.
  RefTo<AwsS3BucketLogging> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
