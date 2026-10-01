// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../mongo/appwrite_mongo_database.dart' show AppwriteMongoDatabase;
import '../project/appwrite_project.dart' show AppwriteProject;

/// Sensitive field paths for `appwrite_mongo_backup_storage`.
const Set<String> _appwriteMongoBackupStorageSensitive = <String>{
  'access_key',
  'secret_key',
};

/// Mongo Backup Storage enum for `storage_provider`.
extension type const MongoBackupStorageProvider._(TfArg<String> _)
    implements TfArg<String> {
  MongoBackupStorageProvider.variable(String name)
    : this._(TfArg.variable(name));
  MongoBackupStorageProvider.expression(String template)
    : this._(TfArg.expression(template));
  const MongoBackupStorageProvider.arg(TfArg<String> arg) : this._(arg);

  static const s3 = MongoBackupStorageProvider._(TfArgLiteral('s3'));
  static const gcs = MongoBackupStorageProvider._(TfArgLiteral('gcs'));
  static const azure = MongoBackupStorageProvider._(TfArgLiteral('azure'));

  static const List<MongoBackupStorageProvider> values = [s3, gcs, azure];
}

/// Factory wrapper for `appwrite_mongo_backup_storage`.
///
/// Sends the backups of a dedicated Appwrite MongoDB database to a bucket you
/// own rather than Appwrite's default storage.
///
/// The API offers no route to read this configuration back, so Terraform cannot
/// detect drift, cannot verify what the server currently has, and cannot import
/// an existing configuration. Destroying this resource only removes it from
/// state; backups continue going to the last destination applied. Change the
/// destination by applying a new one.
///
/// Custom MongoDB backup destination. The API has no read route, so
/// Terraform cannot detect drift or import an existing configuration.
/// [accessKey] / [secretKey] are sensitive — use `TfArg.variable`.
final class AppwriteMongoBackupStorage extends Resource {
  static const String tfType = 'appwrite_mongo_backup_storage';

  AppwriteMongoBackupStorage(
    super.localName, {
    required Sensitive<String> accessKey,
    required TfArg<String> bucket,
    required RefTo<AppwriteMongoDatabase> databaseId,
    TfArg<String>? endpoint,
    TfArg<String>? prefix,
    RefTo<AppwriteProject>? projectId,
    TfArg<String>? region,
    required Sensitive<String> secretKey,
    required MongoBackupStorageProvider storageProvider,
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
  Set<String> get sensitiveFields => _appwriteMongoBackupStorageSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AppwriteMongoBackupStorage>`.
  RefTo<AppwriteMongoBackupStorage> get ref => RefTo.of(this);

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
