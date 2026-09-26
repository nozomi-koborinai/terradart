// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3_bucket_abac`.
const Set<String> _awsS3BucketAbacSensitive = <String>{};

/// Typed helper for the `abac_status` block of
/// `aws_s3_bucket_abac` (derived from provider schema).
@immutable
final class S3BucketAbacAbacStatus {
  const S3BucketAbacAbacStatus({required this.status});

  final TfArg<String> status;

  Map<String, Object?> encode() => {'status': status.toTfJson()};
}

/// Factory wrapper for `aws_s3_bucket_abac`.
final class AwsS3BucketAbac extends Resource {
  static const String tfType = 'aws_s3_bucket_abac';

  AwsS3BucketAbac({
    required super.localName,
    required TfArg<String> bucket,
    TfArg<String>? expectedBucketOwner,
    TfArg<String>? region,
    List<S3BucketAbacAbacStatus>? abacStatus,
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
           if (abacStatus != null)
             'abac_status': TfArg.literal([
               for (final e in abacStatus) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsS3BucketAbacSensitive;
}
