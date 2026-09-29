// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3_buckets`.
const Set<String> _awsS3BucketsSensitive = <String>{};

/// Factory wrapper for `aws_s3_buckets`.
final class DataAwsS3Buckets extends Data {
  static const String tfType = 'aws_s3_buckets';

  DataAwsS3Buckets({
    required super.localName,
    TfArg<String>? bucketRegion,
    TfArg<num>? maxBuckets,
    TfArg<String>? prefix,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket_region': ?bucketRegion,
           'max_buckets': ?maxBuckets,
           'prefix': ?prefix,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsS3BucketsSensitive;

  /// Reference to `buckets` attribute.
  TfRef<List<Map<String, Object?>>> get buckets =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'buckets');
}
