// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../s3/aws_s3_bucket_policy.dart';
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_s3_bucket_policy`.
const Set<String> _awsS3BucketPolicySensitive = <String>{};

/// Factory wrapper for `aws_s3_bucket_policy`.
final class DataAwsS3BucketPolicy extends Data {
  static const String tfType = 'aws_s3_bucket_policy';

  DataAwsS3BucketPolicy(
    super.localName, {
    required RefTo<AwsS3Bucket> bucket,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'bucket': bucket.encodeAs('id'), 'region': ?region},
       );

  @override
  Set<String> get sensitiveFields => _awsS3BucketPolicySensitive;

  /// A reference to the `aws_s3_bucket_policy` this data source reads, for
  /// arguments typed `RefTo<AwsS3BucketPolicy>`.
  RefTo<AwsS3BucketPolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `policy` attribute.
  TfRef<String> get policy => TfRef.attribute<String>(this, 'policy');

  /// Reference to `bucket` attribute.
  TfRef<String> get bucket => TfRef.attribute<String>(this, 'bucket');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
