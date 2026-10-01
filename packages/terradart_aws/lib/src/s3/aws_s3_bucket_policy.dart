// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_s3_bucket_policy`.
const Set<String> _awsS3BucketPolicySensitive = <String>{};

/// Factory wrapper for `aws_s3_bucket_policy`.
final class AwsS3BucketPolicy extends Resource {
  static const String tfType = 'aws_s3_bucket_policy';

  AwsS3BucketPolicy({
    required super.localName,
    required RefTo<AwsS3Bucket> bucket,
    required TfArg<String> policy,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket.encodeAs('id'),
           'policy': policy,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsS3BucketPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsS3BucketPolicy>`.
  RefTo<AwsS3BucketPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `bucket` attribute.
  TfRef<String> get bucket => TfRef.attribute<String>(this, 'bucket');

  /// Reference to `policy` attribute.
  TfRef<String> get policy => TfRef.attribute<String>(this, 'policy');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
