// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `appwrite_tablesdb_table`.
const Set<String> _appwriteTablesdbTableSensitive = <String>{};

/// Factory wrapper for `appwrite_tablesdb_table`.
///
/// Manages an Appwrite table within a database.
final class AppwriteTablesdbTable extends Resource {
  static const String tfType = 'appwrite_tablesdb_table';

  AppwriteTablesdbTable({
    required super.localName,
    required TfArg<String> databaseId,
    TfArg<bool>? enabled,
    required TfArg<String> name,
    TfArg<List<String>>? permissions,
    TfArg<String>? projectId,
    TfArg<bool>? rowSecurity,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'database_id': databaseId,
           if (enabled != null) 'enabled': enabled,
           'name': name,
           if (permissions != null) 'permissions': permissions,
           if (projectId != null) 'project_id': projectId,
           if (rowSecurity != null) 'row_security': rowSecurity,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteTablesdbTableSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}
