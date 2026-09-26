// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3_bucket_request_payment_configuration`.
const Set<String> _awsS3BucketRequestPaymentConfigurationSensitive = <String>{};

/// Factory wrapper for `aws_s3_bucket_request_payment_configuration`.
final class AwsS3BucketRequestPaymentConfiguration extends Resource {
  static const String tfType = 'aws_s3_bucket_request_payment_configuration';

  AwsS3BucketRequestPaymentConfiguration({
    required super.localName,
    required TfArg<String> bucket,
    TfArg<String>? expectedBucketOwner,
    required TfArg<String> payer,
    TfArg<String>? region,
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
           'payer': payer,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsS3BucketRequestPaymentConfigurationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
