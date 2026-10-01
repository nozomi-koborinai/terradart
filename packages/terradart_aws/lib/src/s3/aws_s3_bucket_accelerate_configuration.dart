// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_s3_bucket_accelerate_configuration`.
const Set<String> _awsS3BucketAccelerateConfigurationSensitive = <String>{};

/// S3 Bucket Accelerate Configuration enum for `status`.
enum S3BucketAccelerateConfigurationStatus implements TerraformEnum {
  enabled('Enabled'),
  suspended('Suspended');

  const S3BucketAccelerateConfigurationStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_s3_bucket_accelerate_configuration`.
final class AwsS3BucketAccelerateConfiguration extends Resource {
  static const String tfType = 'aws_s3_bucket_accelerate_configuration';

  AwsS3BucketAccelerateConfiguration({
    required super.localName,
    required RefTo<AwsS3Bucket> bucket,
    TfArg<String>? expectedBucketOwner,
    TfArg<String>? region,
    required TfArg<S3BucketAccelerateConfigurationStatus> status,
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
           'status': status,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsS3BucketAccelerateConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsS3BucketAccelerateConfiguration>`.
  RefTo<AwsS3BucketAccelerateConfiguration> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `bucket` attribute.
  TfRef<String> get bucket => TfRef.attribute<String>(this, 'bucket');

  /// Reference to `expected_bucket_owner` attribute.
  TfRef<String> get expectedBucketOwner =>
      TfRef.attribute<String>(this, 'expected_bucket_owner');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
