// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_rds_custom_db_engine_version`.
const Set<String> _awsRdsCustomDbEngineVersionSensitive = <String>{};

/// Rds Custom Db Engine Version enum for `status`.
enum RdsCustomDbEngineVersionStatus implements TerraformEnum {
  available('available'),
  inactive('inactive'),
  inactiveExceptRestore('inactive-except-restore');

  const RdsCustomDbEngineVersionStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `filename`, `manifest` on `aws_rds_custom_db_engine_version`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.filename(...)`.
sealed class RdsCustomDbEngineVersionManifest {
  const RdsCustomDbEngineVersionManifest();

  /// Sets `filename`.
  const factory RdsCustomDbEngineVersionManifest.filename(
    TfArg<String> filename,
  ) = RdsCustomDbEngineVersionManifestFilename;

  /// Sets `manifest`.
  const factory RdsCustomDbEngineVersionManifest.manifest(
    TfArg<String> manifest,
  ) = RdsCustomDbEngineVersionManifestChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [RdsCustomDbEngineVersionManifest.filename] choice: sets `filename`.
final class RdsCustomDbEngineVersionManifestFilename
    extends RdsCustomDbEngineVersionManifest {
  const RdsCustomDbEngineVersionManifestFilename(this.filename);

  final TfArg<String> filename;

  @override
  String get blockKey => 'filename';

  @override
  Map<String, Object?> encode() => {'filename': filename.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'filename': filename};
}

/// The [RdsCustomDbEngineVersionManifest.manifest] choice: sets `manifest`.
final class RdsCustomDbEngineVersionManifestChoice
    extends RdsCustomDbEngineVersionManifest {
  const RdsCustomDbEngineVersionManifestChoice(this.manifest);

  final TfArg<String> manifest;

  @override
  String get blockKey => 'manifest';

  @override
  Map<String, Object?> encode() => {'manifest': manifest.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'manifest': manifest};
}

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
    RdsCustomDbEngineVersionManifest? manifest,
    RefTo<AwsKmsKey>? kmsKeyId,
    TfArg<String>? manifestHash,
    TfArg<String>? region,
    TfArg<String>? sourceImageId,
    TfArg<RdsCustomDbEngineVersionStatus>? status,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'database_installation_files_s3_bucket_name':
               ?databaseInstallationFilesS3BucketName,
           'database_installation_files_s3_prefix':
               ?databaseInstallationFilesS3Prefix,
           'description': ?description,
           'engine': engine,
           'engine_version': engineVersion,
           ...?manifest?.argMap,
           'kms_key_id': ?kmsKeyId?.encodeAs('arn'),
           'manifest_hash': ?manifestHash,
           'region': ?region,
           'source_image_id': ?sourceImageId,
           'status': ?status,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRdsCustomDbEngineVersionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRdsCustomDbEngineVersion>`.
  RefTo<AwsRdsCustomDbEngineVersion> get ref => RefTo.of(this);

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
