// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../s3/aws_s3_bucket_object_lock_configuration.dart';
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_s3_bucket_object_lock_configuration`.
const Set<String> _awsS3BucketObjectLockConfigurationSensitive = <String>{};

/// Factory wrapper for `aws_s3_bucket_object_lock_configuration`.
final class DataAwsS3BucketObjectLockConfiguration extends Data {
  static const String tfType = 'aws_s3_bucket_object_lock_configuration';

  DataAwsS3BucketObjectLockConfiguration({
    required super.localName,
    required RefTo<AwsS3Bucket> bucket,
    TfArg<String>? expectedBucketOwner,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket.encodeAs('id'),
           'expected_bucket_owner': ?expectedBucketOwner,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsS3BucketObjectLockConfigurationSensitive;

  /// A reference to the `aws_s3_bucket_object_lock_configuration` this data source reads, for
  /// arguments typed `RefTo<AwsS3BucketObjectLockConfiguration>`.
  RefTo<AwsS3BucketObjectLockConfiguration> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `object_lock_enabled` attribute.
  TfRef<String> get objectLockEnabled =>
      TfRef.attribute<String>(this, 'object_lock_enabled');

  /// Reference to `rule` attribute.
  TfRef<List<Map<String, Object?>>> get rule =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'rule');

  /// Reference to `bucket` attribute.
  TfRef<String> get bucketRef => TfRef.attribute<String>(this, 'bucket');

  /// Reference to `expected_bucket_owner` attribute.
  TfRef<String> get expectedBucketOwnerRef =>
      TfRef.attribute<String>(this, 'expected_bucket_owner');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
