// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    required TfArg<String> databaseId,
    TfArg<List<String>>? permissions,
    TfArg<String>? projectId,
    required TfArg<String> tableId,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data': data,
           'database_id': databaseId,
           if (permissions != null) 'permissions': permissions,
           if (projectId != null) 'project_id': projectId,
           'table_id': tableId,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteTablesdbRowSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}
