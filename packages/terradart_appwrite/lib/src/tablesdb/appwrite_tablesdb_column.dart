// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `appwrite_tablesdb_column`.
const Set<String> _appwriteTablesdbColumnSensitive = <String>{};

/// Factory wrapper for `appwrite_tablesdb_column`.
///
/// Manages a column in an Appwrite table.
final class AppwriteTablesdbColumn extends Resource {
  static const String tfType = 'appwrite_tablesdb_column';

  AppwriteTablesdbColumn({
    required super.localName,
    required TfArg<String> databaseId,
    required TfArg<String> tableId,
    required TfArg<String> type,
    TfArg<String>? key,
    TfArg<bool>? columnRequired,
    TfArg<String>? defaultValue,
    TfArg<num>? size,
    TfArg<bool>? array,
    TfArg<List<String>>? elements,
    TfArg<bool>? encrypt,
    TfArg<num>? floatMax,
    TfArg<num>? floatMin,
    TfArg<num>? max,
    TfArg<num>? min,
    TfArg<String>? onDelete,
    TfArg<String>? relatedTableId,
    TfArg<String>? relationshipType,
    TfArg<bool>? twoWay,
    TfArg<String>? twoWayKey,
    TfArg<String>? projectId,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'database_id': databaseId,
           'table_id': tableId,
           'type': type,
           if (key != null) 'key': key,
           if (columnRequired != null) 'required': columnRequired,
           if (defaultValue != null) 'default': defaultValue,
           if (size != null) 'size': size,
           if (array != null) 'array': array,
           if (elements != null) 'elements': elements,
           if (encrypt != null) 'encrypt': encrypt,
           if (floatMax != null) 'float_max': floatMax,
           if (floatMin != null) 'float_min': floatMin,
           if (max != null) 'max': max,
           if (min != null) 'min': min,
           if (onDelete != null) 'on_delete': onDelete,
           if (relatedTableId != null) 'related_table_id': relatedTableId,
           if (relationshipType != null) 'relationship_type': relationshipType,
           if (twoWay != null) 'two_way': twoWay,
           if (twoWayKey != null) 'two_way_key': twoWayKey,
           if (projectId != null) 'project_id': projectId,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteTablesdbColumnSensitive;

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}
