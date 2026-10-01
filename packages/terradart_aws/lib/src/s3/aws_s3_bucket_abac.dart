// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_s3_bucket_abac`.
const Set<String> _awsS3BucketAbacSensitive = <String>{};

/// Typed helper for the `abac_status` block of
/// `aws_s3_bucket_abac` (derived from provider schema).
@immutable
final class S3BucketAbacStatus {
  const S3BucketAbacStatus({required this.status});

  final TfArg<String> status;

  Map<String, Object?> encode() => {'status': status.toTfJson()};
}

/// Factory wrapper for `aws_s3_bucket_abac`.
final class AwsS3BucketAbac extends Resource {
  static const String tfType = 'aws_s3_bucket_abac';

  AwsS3BucketAbac(
    super.localName, {
    required RefTo<AwsS3Bucket> bucket,
    TfArg<String>? expectedBucketOwner,
    TfArg<String>? region,
    List<S3BucketAbacStatus>? abacStatus,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket.encodeAs('id'),
           'expected_bucket_owner': ?expectedBucketOwner,
           'region': ?region,
           if (abacStatus != null)
             'abac_status': TfArg.literal([
               for (final e in abacStatus) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsS3BucketAbacSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsS3BucketAbac>`.
  RefTo<AwsS3BucketAbac> get ref => RefTo.of(this);

  /// Reference to `bucket` attribute.
  TfRef<String> get bucket => TfRef.attribute<String>(this, 'bucket');

  /// Reference to `expected_bucket_owner` attribute.
  TfRef<String> get expectedBucketOwner =>
      TfRef.attribute<String>(this, 'expected_bucket_owner');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
