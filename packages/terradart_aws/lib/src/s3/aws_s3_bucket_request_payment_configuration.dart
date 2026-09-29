// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_s3_bucket_request_payment_configuration`.
const Set<String> _awsS3BucketRequestPaymentConfigurationSensitive = <String>{};

/// S3 Bucket Request Payment Configuration enum for `payer`.
enum S3BucketRequestPaymentConfigurationPayer implements TerraformEnum {
  requester('Requester'),
  bucketowner('BucketOwner');

  const S3BucketRequestPaymentConfigurationPayer(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_s3_bucket_request_payment_configuration`.
final class AwsS3BucketRequestPaymentConfiguration extends Resource {
  static const String tfType = 'aws_s3_bucket_request_payment_configuration';

  AwsS3BucketRequestPaymentConfiguration({
    required super.localName,
    required RefTo<AwsS3Bucket> bucket,
    TfArg<String>? expectedBucketOwner,
    required TfArg<S3BucketRequestPaymentConfigurationPayer> payer,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket.encodeAs('id'),
           'expected_bucket_owner': ?expectedBucketOwner,
           'payer': payer,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsS3BucketRequestPaymentConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsS3BucketRequestPaymentConfiguration>`.
  RefTo<AwsS3BucketRequestPaymentConfiguration> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
