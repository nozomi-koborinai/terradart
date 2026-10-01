// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../postgresql/appwrite_postgresql_database.dart'
    show AppwritePostgresqlDatabase;
import '../project/appwrite_project.dart' show AppwriteProject;

/// Sensitive field paths for `appwrite_postgresql_extensions`.
const Set<String> _appwritePostgresqlExtensionsSensitive = <String>{};

/// Factory wrapper for `appwrite_postgresql_extensions`.
///
/// Lists the extensions installed on, and available to, a dedicated Appwrite
/// PostgreSQL database.
final class DataAppwritePostgresqlExtensions extends Data {
  static const String tfType = 'appwrite_postgresql_extensions';

  DataAppwritePostgresqlExtensions(
    super.localName, {
    required RefTo<AppwritePostgresqlDatabase> databaseId,
    RefTo<AppwriteProject>? projectId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'database_id': databaseId.encodeAs('id'),
           'project_id': ?projectId?.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _appwritePostgresqlExtensionsSensitive;

  /// Reference to `available` attribute.
  TfRef<List<String>> get available =>
      TfRef.attribute<List<String>>(this, 'available');

  /// Reference to `installed` attribute.
  TfRef<List<String>> get installed =>
      TfRef.attribute<List<String>>(this, 'installed');

  /// Reference to `database_id` attribute.
  TfRef<String> get databaseId => TfRef.attribute<String>(this, 'database_id');

  /// Reference to `project_id` attribute.
  TfRef<String> get projectId => TfRef.attribute<String>(this, 'project_id');
}
