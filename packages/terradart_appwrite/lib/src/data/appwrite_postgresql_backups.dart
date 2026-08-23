// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `appwrite_postgresql_backups`.
const Set<String> _appwritePostgresqlBackupsSensitive = <String>{};

/// Factory wrapper for `appwrite_postgresql_backups`.
///
/// Lists the backups taken of a dedicated Appwrite PostgreSQL database.
/// Restoring is not a Terraform operation, so this is how a backup ID is found
/// for a restore run through the Console or API.
final class DataAppwritePostgresqlBackups extends Data {
  static const String tfType = 'appwrite_postgresql_backups';

  DataAppwritePostgresqlBackups({
    required super.localName,
    required TfArg<String> databaseId,
    TfArg<String>? projectId,
    TfArg<List<String>>? queries,
  }) : super(
         terraformType: tfType,
         argMap: {
           'database_id': databaseId,
           if (projectId != null) 'project_id': projectId,
           if (queries != null) 'queries': queries,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwritePostgresqlBackupsSensitive;

  /// Reference to `total` attribute.
  TfRef<num> get total => TfRef.attribute<num>(this, 'total');
}
