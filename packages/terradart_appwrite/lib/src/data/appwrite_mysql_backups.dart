// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../mysql/appwrite_mysql_database.dart' show AppwriteMysqlDatabase;
import '../project/appwrite_project.dart' show AppwriteProject;

/// Sensitive field paths for `appwrite_mysql_backups`.
const Set<String> _appwriteMysqlBackupsSensitive = <String>{};

/// Factory wrapper for `appwrite_mysql_backups`.
///
/// Lists the backups taken of a dedicated Appwrite MySQL database. Restoring is
/// not a Terraform operation, so this is how a backup ID is found for a restore
/// run through the Console or API.
final class DataAppwriteMysqlBackups extends Data {
  static const String tfType = 'appwrite_mysql_backups';

  DataAppwriteMysqlBackups({
    required super.localName,
    required RefTo<AppwriteMysqlDatabase> databaseId,
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
  Set<String> get sensitiveFields => _appwriteMysqlBackupsSensitive;

  /// Reference to `total` attribute.
  TfRef<num> get total => TfRef.attribute<num>(this, 'total');

  /// Reference to `database_id` attribute.
  TfRef<String> get databaseId => TfRef.attribute<String>(this, 'database_id');

  /// Reference to `project_id` attribute.
  TfRef<String> get projectId => TfRef.attribute<String>(this, 'project_id');

  /// Reference to `queries` attribute.
  TfRef<List<String>> get queries =>
      TfRef.attribute<List<String>>(this, 'queries');
}
