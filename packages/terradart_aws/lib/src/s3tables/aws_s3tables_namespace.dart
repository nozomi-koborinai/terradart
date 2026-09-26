// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3tables_namespace`.
const Set<String> _awsS3tablesNamespaceSensitive = <String>{};

/// Factory wrapper for `aws_s3tables_namespace`.
final class AwsS3tablesNamespace extends Resource {
  static const String tfType = 'aws_s3tables_namespace';

  AwsS3tablesNamespace({
    required super.localName,
    required TfArg<String> namespace,
    TfArg<String>? region,
    required TfArg<String> tableBucketArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'namespace': namespace,
           if (region != null) 'region': region,
           'table_bucket_arn': tableBucketArn,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsS3tablesNamespaceSensitive;

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `created_by` attribute.
  TfRef<String> get createdBy => TfRef.attribute<String>(this, 'created_by');

  /// Reference to `owner_account_id` attribute.
  TfRef<String> get ownerAccountId =>
      TfRef.attribute<String>(this, 'owner_account_id');
}
