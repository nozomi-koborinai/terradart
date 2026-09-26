// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3tables_table_bucket_policy`.
const Set<String> _awsS3tablesTableBucketPolicySensitive = <String>{};

/// Factory wrapper for `aws_s3tables_table_bucket_policy`.
final class AwsS3tablesTableBucketPolicy extends Resource {
  static const String tfType = 'aws_s3tables_table_bucket_policy';

  AwsS3tablesTableBucketPolicy({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> resourcePolicy,
    required TfArg<String> tableBucketArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'resource_policy': resourcePolicy,
           'table_bucket_arn': tableBucketArn,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsS3tablesTableBucketPolicySensitive;
}
