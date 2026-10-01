// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../auth/appwrite_permission.dart' show AppwritePermission;
import '../project/appwrite_project.dart' show AppwriteProject;
import '../tablesdb/appwrite_tablesdb.dart' show AppwriteTablesdb;

/// Sensitive field paths for `appwrite_tablesdb_table`.
const Set<String> _appwriteTablesdbTableSensitive = <String>{};

/// Factory wrapper for `appwrite_tablesdb_table`.
///
/// Manages an Appwrite table within a database.
final class AppwriteTablesdbTable extends Resource {
  static const String tfType = 'appwrite_tablesdb_table';

  AppwriteTablesdbTable(
    super.localName, {
    required RefTo<AppwriteTablesdb> databaseId,
    TfArg<bool>? enabled,
    required TfArg<String> name,
    TfArg<List<AppwritePermission>>? permissions,
    RefTo<AppwriteProject>? projectId,
    TfArg<bool>? rowSecurity,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'database_id': databaseId.encodeAs('id'),
           'enabled': ?enabled,
           'name': name,
           'permissions': ?permissions,
           'project_id': ?projectId?.encodeAs('id'),
           'row_security': ?rowSecurity,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteTablesdbTableSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AppwriteTablesdbTable>`.
  RefTo<AppwriteTablesdbTable> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `database_id` attribute.
  TfRef<String> get databaseId => TfRef.attribute<String>(this, 'database_id');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `permissions` attribute.
  TfRef<List<String>> get permissions =>
      TfRef.attribute<List<String>>(this, 'permissions');

  /// Reference to `project_id` attribute.
  TfRef<String> get projectId => TfRef.attribute<String>(this, 'project_id');

  /// Reference to `row_security` attribute.
  TfRef<bool> get rowSecurity => TfRef.attribute<bool>(this, 'row_security');
}
