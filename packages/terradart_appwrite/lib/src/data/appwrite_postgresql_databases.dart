// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `appwrite_postgresql_databases`.
const Set<String> _appwritePostgresqlDatabasesSensitive = <String>{};

/// Factory wrapper for `appwrite_postgresql_databases`.
///
/// Lists the dedicated Appwrite PostgreSQL databases in a project. Connection
/// credentials are deliberately not included; read them from the singular
/// `appwrite_postgresql_database` data source for the one database that needs
/// them, so a listing does not put every password into state.
final class DataAppwritePostgresqlDatabases extends Data {
  static const String tfType = 'appwrite_postgresql_databases';

  DataAppwritePostgresqlDatabases({
    required super.localName,
    TfArg<String>? projectId,
    TfArg<List<String>>? queries,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (projectId != null) 'project_id': projectId,
           if (queries != null) 'queries': queries,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwritePostgresqlDatabasesSensitive;

  /// Reference to `total` attribute.
  TfRef<num> get total => TfRef.attribute<num>(this, 'total');
}
