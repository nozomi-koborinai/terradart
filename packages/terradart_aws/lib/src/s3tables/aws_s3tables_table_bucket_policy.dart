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
           'region': ?region,
           'resource_policy': resourcePolicy,
           'table_bucket_arn': tableBucketArn,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsS3tablesTableBucketPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsS3tablesTableBucketPolicy>`.
  RefTo<AwsS3tablesTableBucketPolicy> get ref => RefTo.of(this);

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_policy` attribute.
  TfRef<String> get resourcePolicyRef =>
      TfRef.attribute<String>(this, 'resource_policy');

  /// Reference to `table_bucket_arn` attribute.
  TfRef<String> get tableBucketArnRef =>
      TfRef.attribute<String>(this, 'table_bucket_arn');
}
