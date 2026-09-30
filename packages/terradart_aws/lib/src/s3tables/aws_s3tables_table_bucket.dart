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
           'encryption_configuration': ?encryptionConfiguration,
           'force_destroy': ?forceDestroy,
           'maintenance_configuration': ?maintenanceConfiguration,
           'name': name,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsS3tablesTableBucketSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsS3tablesTableBucket>`.
  RefTo<AwsS3tablesTableBucket> get ref => RefTo.of(this);

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

  /// Reference to `encryption_configuration` attribute.
  TfRef<Map<String, Object?>> get encryptionConfigurationRef =>
      TfRef.attribute<Map<String, Object?>>(this, 'encryption_configuration');

  /// Reference to `force_destroy` attribute.
  TfRef<bool> get forceDestroyRef =>
      TfRef.attribute<bool>(this, 'force_destroy');

  /// Reference to `maintenance_configuration` attribute.
  TfRef<Map<String, Object?>> get maintenanceConfigurationRef =>
      TfRef.attribute<Map<String, Object?>>(this, 'maintenance_configuration');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
