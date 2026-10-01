// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../postgresql/appwrite_postgresql_database.dart'
    show AppwritePostgresqlDatabase;
import '../project/appwrite_project.dart' show AppwriteProject;

/// Sensitive field paths for `appwrite_postgresql_extension`.
const Set<String> _appwritePostgresqlExtensionSensitive = <String>{};

/// Factory wrapper for `appwrite_postgresql_extension`.
///
/// Installs an extension into a dedicated Appwrite PostgreSQL database. Read
/// the installable names from the `available` list of the corresponding
/// extensions data source.
final class AppwritePostgresqlExtension extends Resource {
  static const String tfType = 'appwrite_postgresql_extension';

  AppwritePostgresqlExtension(
    super.localName, {
    required RefTo<AppwritePostgresqlDatabase> databaseId,
    required TfArg<String> name,
    RefTo<AppwriteProject>? projectId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'database_id': databaseId.encodeAs('id'),
           'name': name,
           'project_id': ?projectId?.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _appwritePostgresqlExtensionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AppwritePostgresqlExtension>`.
  RefTo<AppwritePostgresqlExtension> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `database_id` attribute.
  TfRef<String> get databaseId => TfRef.attribute<String>(this, 'database_id');

  /// Reference to `project_id` attribute.
  TfRef<String> get projectId => TfRef.attribute<String>(this, 'project_id');
}
