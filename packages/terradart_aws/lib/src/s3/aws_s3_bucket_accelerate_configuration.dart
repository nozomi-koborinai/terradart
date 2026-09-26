// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3_bucket_accelerate_configuration`.
const Set<String> _awsS3BucketAccelerateConfigurationSensitive = <String>{};

/// Factory wrapper for `aws_s3_bucket_accelerate_configuration`.
final class AwsS3BucketAccelerateConfiguration extends Resource {
  static const String tfType = 'aws_s3_bucket_accelerate_configuration';

  AwsS3BucketAccelerateConfiguration({
    required super.localName,
    required TfArg<String> bucket,
    TfArg<String>? expectedBucketOwner,
    TfArg<String>? region,
    required TfArg<String> status,
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
           'status': status,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsS3BucketAccelerateConfigurationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
