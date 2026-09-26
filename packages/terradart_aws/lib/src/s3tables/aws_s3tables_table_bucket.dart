// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3tables_table_bucket`.
const Set<String> _awsS3tablesTableBucketSensitive = <String>{};

/// Factory wrapper for `aws_s3tables_table_bucket`.
final class AwsS3tablesTableBucket extends Resource {
  static const String tfType = 'aws_s3tables_table_bucket';

  AwsS3tablesTableBucket({
    required super.localName,
    TfArg<Map<String, Object?>>? encryptionConfiguration,
    TfArg<bool>? forceDestroy,
    TfArg<Map<String, Object?>>? maintenanceConfiguration,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (encryptionConfiguration != null)
             'encryption_configuration': encryptionConfiguration,
           if (forceDestroy != null) 'force_destroy': forceDestroy,
           if (maintenanceConfiguration != null)
             'maintenance_configuration': maintenanceConfiguration,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsS3tablesTableBucketSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `owner_account_id` attribute.
  TfRef<String> get ownerAccountId =>
      TfRef.attribute<String>(this, 'owner_account_id');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
