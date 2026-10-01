// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../auth/appwrite_permission.dart' show AppwritePermission;
import '../project/appwrite_project.dart' show AppwriteProject;
import '../tablesdb/appwrite_tablesdb.dart' show AppwriteTablesdb;
import '../tablesdb/appwrite_tablesdb_table.dart' show AppwriteTablesdbTable;

/// Sensitive field paths for `appwrite_tablesdb_row`.
const Set<String> _appwriteTablesdbRowSensitive = <String>{};

/// Factory wrapper for `appwrite_tablesdb_row`.
///
/// Manages a row in an Appwrite tablesdb table.
final class AppwriteTablesdbRow extends Resource {
  static const String tfType = 'appwrite_tablesdb_row';

  AppwriteTablesdbRow({
    required super.localName,
    required TfArg<String> data,
    required RefTo<AppwriteTablesdb> databaseId,
    TfArg<List<AppwritePermission>>? permissions,
    RefTo<AppwriteProject>? projectId,
    required RefTo<AppwriteTablesdbTable> tableId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data': data,
           'database_id': databaseId.encodeAs('id'),
           'permissions': ?permissions,
           'project_id': ?projectId?.encodeAs('id'),
           'table_id': tableId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteTablesdbRowSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AppwriteTablesdbRow>`.
  RefTo<AppwriteTablesdbRow> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `data` attribute.
  TfRef<String> get data => TfRef.attribute<String>(this, 'data');

  /// Reference to `database_id` attribute.
  TfRef<String> get databaseId => TfRef.attribute<String>(this, 'database_id');

  /// Reference to `permissions` attribute.
  TfRef<List<String>> get permissions =>
      TfRef.attribute<List<String>>(this, 'permissions');

  /// Reference to `project_id` attribute.
  TfRef<String> get projectId => TfRef.attribute<String>(this, 'project_id');

  /// Reference to `table_id` attribute.
  TfRef<String> get tableId => TfRef.attribute<String>(this, 'table_id');
}
