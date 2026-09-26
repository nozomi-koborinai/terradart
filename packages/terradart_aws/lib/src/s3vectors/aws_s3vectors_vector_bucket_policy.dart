// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3vectors_vector_bucket_policy`.
const Set<String> _awsS3vectorsVectorBucketPolicySensitive = <String>{};

/// Factory wrapper for `aws_s3vectors_vector_bucket_policy`.
final class AwsS3vectorsVectorBucketPolicy extends Resource {
  static const String tfType = 'aws_s3vectors_vector_bucket_policy';

  AwsS3vectorsVectorBucketPolicy({
    required super.localName,
    required TfArg<String> policy,
    TfArg<String>? region,
    required TfArg<String> vectorBucketArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'policy': policy,
           if (region != null) 'region': region,
           'vector_bucket_arn': vectorBucketArn,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsS3vectorsVectorBucketPolicySensitive;
}
