// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3tables_table_policy`.
const Set<String> _awsS3tablesTablePolicySensitive = <String>{};

/// Factory wrapper for `aws_s3tables_table_policy`.
final class AwsS3tablesTablePolicy extends Resource {
  static const String tfType = 'aws_s3tables_table_policy';

  AwsS3tablesTablePolicy({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> namespace,
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
           'name': name,
           'namespace': namespace,
           if (region != null) 'region': region,
           'resource_policy': resourcePolicy,
           'table_bucket_arn': tableBucketArn,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsS3tablesTablePolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
