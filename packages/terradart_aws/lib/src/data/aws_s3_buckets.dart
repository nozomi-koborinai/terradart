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

  /// Reference to `bucket_region` attribute.
  TfRef<String> get bucketRegionRef =>
      TfRef.attribute<String>(this, 'bucket_region');

  /// Reference to `max_buckets` attribute.
  TfRef<num> get maxBucketsRef => TfRef.attribute<num>(this, 'max_buckets');

  /// Reference to `prefix` attribute.
  TfRef<String> get prefixRef => TfRef.attribute<String>(this, 'prefix');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
