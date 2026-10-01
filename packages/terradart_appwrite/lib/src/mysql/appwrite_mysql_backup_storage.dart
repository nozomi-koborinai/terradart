// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../mysql/appwrite_mysql_database.dart' show AppwriteMysqlDatabase;
import '../project/appwrite_project.dart' show AppwriteProject;

/// Sensitive field paths for `appwrite_mysql_backup_storage`.
const Set<String> _appwriteMysqlBackupStorageSensitive = <String>{
  'access_key',
  'secret_key',
};

/// Mysql Backup Storage enum for `storage_provider`.
enum MysqlBackupStorageProvider implements TerraformEnum {
  s3('s3'),
  gcs('gcs'),
  azure('azure');

  const MysqlBackupStorageProvider(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `appwrite_mysql_backup_storage`.
///
/// Sends the backups of a dedicated Appwrite MySQL database to a bucket you own
/// rather than Appwrite's default storage.
///
/// The API offers no route to read this configuration back, so Terraform cannot
/// detect drift, cannot verify what the server currently has, and cannot import
/// an existing configuration. Destroying this resource only removes it from
/// state; backups continue going to the last destination applied. Change the
/// destination by applying a new one.
///
/// Custom MySQL backup destination. The API has no read route, so
/// Terraform cannot detect drift or import an existing configuration.
/// [accessKey] / [secretKey] are sensitive — use `TfArg.variable`.
final class AppwriteMysqlBackupStorage extends Resource {
  static const String tfType = 'appwrite_mysql_backup_storage';

  AppwriteMysqlBackupStorage({
    required super.localName,
    required TfArg<String> accessKey,
    required TfArg<String> bucket,
    required RefTo<AppwriteMysqlDatabase> databaseId,
    TfArg<String>? endpoint,
    TfArg<String>? prefix,
    RefTo<AppwriteProject>? projectId,
    TfArg<String>? region,
    required TfArg<String> secretKey,
    required TfArg<MysqlBackupStorageProvider> storageProvider,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'access_key': accessKey,
           'bucket': bucket,
           'database_id': databaseId.encodeAs('id'),
           'endpoint': ?endpoint,
           'prefix': ?prefix,
           'project_id': ?projectId?.encodeAs('id'),
           'region': ?region,
           'secret_key': secretKey,
           'storage_provider': storageProvider,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteMysqlBackupStorageSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AppwriteMysqlBackupStorage>`.
  RefTo<AppwriteMysqlBackupStorage> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `access_key` attribute.
  TfRef<String> get accessKey => TfRef.attribute<String>(this, 'access_key');

  /// Reference to `bucket` attribute.
  TfRef<String> get bucket => TfRef.attribute<String>(this, 'bucket');

  /// Reference to `database_id` attribute.
  TfRef<String> get databaseId => TfRef.attribute<String>(this, 'database_id');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `prefix` attribute.
  TfRef<String> get prefix => TfRef.attribute<String>(this, 'prefix');

  /// Reference to `project_id` attribute.
  TfRef<String> get projectId => TfRef.attribute<String>(this, 'project_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `secret_key` attribute.
  TfRef<String> get secretKey => TfRef.attribute<String>(this, 'secret_key');

  /// Reference to `storage_provider` attribute.
  TfRef<String> get storageProvider =>
      TfRef.attribute<String>(this, 'storage_provider');
}
