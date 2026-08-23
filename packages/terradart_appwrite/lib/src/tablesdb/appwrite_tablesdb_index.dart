// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    required TfArg<String> databaseId,
    TfArg<String>? key,
    TfArg<List<String>>? orders,
    TfArg<String>? projectId,
    required TfArg<String> tableId,
    required TfArg<String> type,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'columns': columns,
           'database_id': databaseId,
           if (key != null) 'key': key,
           if (orders != null) 'orders': orders,
           if (projectId != null) 'project_id': projectId,
           'table_id': tableId,
           'type': type,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteTablesdbIndexSensitive;

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}
