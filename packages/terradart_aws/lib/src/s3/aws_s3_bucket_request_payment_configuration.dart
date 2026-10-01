// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_s3_bucket_request_payment_configuration`.
const Set<String> _awsS3BucketRequestPaymentConfigurationSensitive = <String>{};

/// S3 Bucket Request Payment Configuration enum for `payer`.
extension type const S3BucketRequestPaymentConfigurationPayer._(TfArg<String> _)
    implements TfArg<String> {
  S3BucketRequestPaymentConfigurationPayer.variable(String name)
    : this._(TfArg.variable(name));
  S3BucketRequestPaymentConfigurationPayer.expression(String template)
    : this._(TfArg.expression(template));
  const S3BucketRequestPaymentConfigurationPayer.arg(TfArg<String> arg)
    : this._(arg);

  static const requester = S3BucketRequestPaymentConfigurationPayer._(
    TfArgLiteral('Requester'),
  );
  static const bucketowner = S3BucketRequestPaymentConfigurationPayer._(
    TfArgLiteral('BucketOwner'),
  );

  static const List<S3BucketRequestPaymentConfigurationPayer> values = [
    requester,
    bucketowner,
  ];
}

/// Factory wrapper for `aws_s3_bucket_request_payment_configuration`.
final class AwsS3BucketRequestPaymentConfiguration extends Resource {
  static const String tfType = 'aws_s3_bucket_request_payment_configuration';

  AwsS3BucketRequestPaymentConfiguration(
    super.localName, {
    required RefTo<AwsS3Bucket> bucket,
    TfArg<String>? expectedBucketOwner,
    required S3BucketRequestPaymentConfigurationPayer payer,
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

  /// Reference to `bucket` attribute.
  TfRef<String> get bucket => TfRef.attribute<String>(this, 'bucket');

  /// Reference to `expected_bucket_owner` attribute.
  TfRef<String> get expectedBucketOwner =>
      TfRef.attribute<String>(this, 'expected_bucket_owner');

  /// Reference to `payer` attribute.
  TfRef<String> get payer => TfRef.attribute<String>(this, 'payer');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
