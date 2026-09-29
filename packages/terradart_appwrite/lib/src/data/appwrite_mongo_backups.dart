// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../mongo/appwrite_mongo_database.dart' show AppwriteMongoDatabase;
import '../project/appwrite_project.dart' show AppwriteProject;

/// Sensitive field paths for `appwrite_mongo_backups`.
const Set<String> _appwriteMongoBackupsSensitive = <String>{};

/// Factory wrapper for `appwrite_mongo_backups`.
///
/// Lists the backups taken of a dedicated Appwrite MongoDB database. Restoring
/// is not a Terraform operation, so this is how a backup ID is found for a
/// restore run through the Console or API.
final class DataAppwriteMongoBackups extends Data {
  static const String tfType = 'appwrite_mongo_backups';

  DataAppwriteMongoBackups({
    required super.localName,
    required RefTo<AppwriteMongoDatabase> databaseId,
    RefTo<AppwriteProject>? projectId,
    TfArg<List<String>>? queries,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'database_id': databaseId.encodeAs('id'),
           'project_id': ?projectId?.encodeAs('id'),
           'queries': ?queries,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteMongoBackupsSensitive;

  /// Reference to `total` attribute.
  TfRef<num> get total => TfRef.attribute<num>(this, 'total');
}
