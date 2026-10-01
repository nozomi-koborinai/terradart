// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../project/appwrite_project.dart' show AppwriteProject;
import '../tablesdb/appwrite_tablesdb.dart' show AppwriteTablesdb;
import '../tablesdb/appwrite_tablesdb_table.dart' show AppwriteTablesdbTable;

/// Sensitive field paths for `appwrite_tablesdb_index`.
const Set<String> _appwriteTablesdbIndexSensitive = <String>{};

/// Factory wrapper for `appwrite_tablesdb_index`.
///
/// Manages an index on an Appwrite table.
final class AppwriteTablesdbIndex extends Resource {
  static const String tfType = 'appwrite_tablesdb_index';

  AppwriteTablesdbIndex({
    required super.localName,
    required TfArg<List<String>> columns,
    required RefTo<AppwriteTablesdb> databaseId,
    TfArg<String>? key,
    TfArg<List<String>>? orders,
    RefTo<AppwriteProject>? projectId,
    required RefTo<AppwriteTablesdbTable> tableId,
    required TfArg<String> type,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'columns': columns,
           'database_id': databaseId.encodeAs('id'),
           'key': ?key,
           'orders': ?orders,
           'project_id': ?projectId?.encodeAs('id'),
           'table_id': tableId.encodeAs('id'),
           'type': type,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteTablesdbIndexSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AppwriteTablesdbIndex>`.
  RefTo<AppwriteTablesdbIndex> get ref => RefTo.of(this);

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `columns` attribute.
  TfRef<List<String>> get columns =>
      TfRef.attribute<List<String>>(this, 'columns');

  /// Reference to `database_id` attribute.
  TfRef<String> get databaseId => TfRef.attribute<String>(this, 'database_id');

  /// Reference to `key` attribute.
  TfRef<String> get key => TfRef.attribute<String>(this, 'key');

  /// Reference to `orders` attribute.
  TfRef<List<String>> get orders =>
      TfRef.attribute<List<String>>(this, 'orders');

  /// Reference to `project_id` attribute.
  TfRef<String> get projectId => TfRef.attribute<String>(this, 'project_id');

  /// Reference to `table_id` attribute.
  TfRef<String> get tableId => TfRef.attribute<String>(this, 'table_id');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
