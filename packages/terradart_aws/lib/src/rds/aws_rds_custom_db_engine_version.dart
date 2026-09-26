// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_rds_custom_db_engine_version`.
const Set<String> _awsRdsCustomDbEngineVersionSensitive = <String>{};

/// Factory wrapper for `aws_rds_custom_db_engine_version`.
final class AwsRdsCustomDbEngineVersion extends Resource {
  static const String tfType = 'aws_rds_custom_db_engine_version';

  AwsRdsCustomDbEngineVersion({
    required super.localName,
    TfArg<String>? databaseInstallationFilesS3BucketName,
    TfArg<String>? databaseInstallationFilesS3Prefix,
    TfArg<String>? description,
    required TfArg<String> engine,
    required TfArg<String> engineVersion,
    TfArg<String>? filename,
    TfArg<String>? kmsKeyId,
    TfArg<String>? manifest,
    TfArg<String>? manifestHash,
    TfArg<String>? region,
    TfArg<String>? sourceImageId,
    TfArg<String>? status,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (databaseInstallationFilesS3BucketName != null)
             'database_installation_files_s3_bucket_name':
                 databaseInstallationFilesS3BucketName,
           if (databaseInstallationFilesS3Prefix != null)
             'database_installation_files_s3_prefix':
                 databaseInstallationFilesS3Prefix,
           if (description != null) 'description': description,
           'engine': engine,
           'engine_version': engineVersion,
           if (filename != null) 'filename': filename,
           if (kmsKeyId != null) 'kms_key_id': kmsKeyId,
           if (manifest != null) 'manifest': manifest,
           if (manifestHash != null) 'manifest_hash': manifestHash,
           if (region != null) 'region': region,
           if (sourceImageId != null) 'source_image_id': sourceImageId,
           if (status != null) 'status': status,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRdsCustomDbEngineVersionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `db_parameter_group_family` attribute.
  TfRef<String> get dbParameterGroupFamily =>
      TfRef.attribute<String>(this, 'db_parameter_group_family');

  /// Reference to `image_id` attribute.
  TfRef<String> get imageId => TfRef.attribute<String>(this, 'image_id');

  /// Reference to `major_engine_version` attribute.
  TfRef<String> get majorEngineVersion =>
      TfRef.attribute<String>(this, 'major_engine_version');

  /// Reference to `manifest_computed` attribute.
  TfRef<String> get manifestComputed =>
      TfRef.attribute<String>(this, 'manifest_computed');
}
