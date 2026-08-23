// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `appwrite_mongo_backup_storage`.
const Set<String> _appwriteMongoBackupStorageSensitive = <String>{
  'access_key',
  'secret_key',
};

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

  AppwriteMongoBackupStorage({
    required super.localName,
    required TfArg<String> accessKey,
    required TfArg<String> bucket,
    required TfArg<String> databaseId,
    TfArg<String>? endpoint,
    TfArg<String>? prefix,
    TfArg<String>? projectId,
    TfArg<String>? region,
    required TfArg<String> secretKey,
    required TfArg<String> storageProvider,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'access_key': accessKey,
           'bucket': bucket,
           'database_id': databaseId,
           if (endpoint != null) 'endpoint': endpoint,
           if (prefix != null) 'prefix': prefix,
           if (projectId != null) 'project_id': projectId,
           if (region != null) 'region': region,
           'secret_key': secretKey,
           'storage_provider': storageProvider,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteMongoBackupStorageSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
