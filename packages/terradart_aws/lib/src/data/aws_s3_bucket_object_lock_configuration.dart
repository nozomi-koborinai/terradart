// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3_bucket_object_lock_configuration`.
const Set<String> _awsS3BucketObjectLockConfigurationSensitive = <String>{};

/// Factory wrapper for `aws_s3_bucket_object_lock_configuration`.
final class DataAwsS3BucketObjectLockConfiguration extends Data {
  static const String tfType = 'aws_s3_bucket_object_lock_configuration';

  DataAwsS3BucketObjectLockConfiguration({
    required super.localName,
    required TfArg<String> bucket,
    TfArg<String>? expectedBucketOwner,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket,
           if (expectedBucketOwner != null)
             'expected_bucket_owner': expectedBucketOwner,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsS3BucketObjectLockConfigurationSensitive;

  /// Reference to `object_lock_enabled` attribute.
  TfRef<String> get objectLockEnabled =>
      TfRef.attribute<String>(this, 'object_lock_enabled');

  /// Reference to `rule` attribute.
  TfRef<List<Map<String, Object?>>> get rule =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'rule');
}
