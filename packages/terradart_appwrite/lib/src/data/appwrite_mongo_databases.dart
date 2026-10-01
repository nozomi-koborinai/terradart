// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../project/appwrite_project.dart' show AppwriteProject;

/// Sensitive field paths for `appwrite_mongo_databases`.
const Set<String> _appwriteMongoDatabasesSensitive = <String>{};

/// Factory wrapper for `appwrite_mongo_databases`.
///
/// Lists the dedicated Appwrite MongoDB databases in a project. Connection
/// credentials are deliberately not included; read them from the singular
/// `appwrite_mongo_database` data source for the one database that needs them,
/// so a listing does not put every password into state.
final class DataAppwriteMongoDatabases extends Data {
  static const String tfType = 'appwrite_mongo_databases';

  DataAppwriteMongoDatabases({
    required super.localName,
    RefTo<AppwriteProject>? projectId,
    TfArg<List<String>>? queries,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'project_id': ?projectId?.encodeAs('id'),
           'queries': ?queries,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteMongoDatabasesSensitive;

  /// Reference to `total` attribute.
  TfRef<num> get total => TfRef.attribute<num>(this, 'total');

  /// Reference to `project_id` attribute.
  TfRef<String> get projectId => TfRef.attribute<String>(this, 'project_id');

  /// Reference to `queries` attribute.
  TfRef<List<String>> get queries =>
      TfRef.attribute<List<String>>(this, 'queries');
}
