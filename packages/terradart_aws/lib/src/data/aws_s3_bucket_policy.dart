// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3_bucket_policy`.
const Set<String> _awsS3BucketPolicySensitive = <String>{};

/// Factory wrapper for `aws_s3_bucket_policy`.
final class DataAwsS3BucketPolicy extends Data {
  static const String tfType = 'aws_s3_bucket_policy';

  DataAwsS3BucketPolicy({
    required super.localName,
    required TfArg<String> bucket,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'bucket': bucket, if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields => _awsS3BucketPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `policy` attribute.
  TfRef<String> get policy => TfRef.attribute<String>(this, 'policy');
}
