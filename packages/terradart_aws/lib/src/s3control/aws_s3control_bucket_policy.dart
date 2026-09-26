// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3control_bucket_policy`.
const Set<String> _awsS3controlBucketPolicySensitive = <String>{};

/// Factory wrapper for `aws_s3control_bucket_policy`.
final class AwsS3controlBucketPolicy extends Resource {
  static const String tfType = 'aws_s3control_bucket_policy';

  AwsS3controlBucketPolicy({
    required super.localName,
    required TfArg<String> bucket,
    required TfArg<String> policy,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket,
           'policy': policy,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsS3controlBucketPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
