// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../project/appwrite_project.dart' show AppwriteProject;
import '../tablesdb/appwrite_tablesdb.dart' show AppwriteTablesdb;
import '../tablesdb/appwrite_tablesdb_table.dart' show AppwriteTablesdbTable;

/// Sensitive field paths for `appwrite_tablesdb_column`.
const Set<String> _appwriteTablesdbColumnSensitive = <String>{};

/// Tablesdb Column enum for `type`.
enum TablesdbColumnType implements TerraformEnum {
  varchar('varchar'),
  text('text'),
  longtext('longtext'),
  mediumtext('mediumtext'),
  integer('integer'),
  bigint('bigint'),
  float('float'),
  boolean('boolean'),
  enumCase('enum'),
  email('email'),
  datetime('datetime'),
  url('url'),
  ip('ip'),
  point('point'),
  line('line'),
  polygon('polygon'),
  relationship('relationship'),
  string('string');

  const TablesdbColumnType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `appwrite_tablesdb_column`.
///
/// Manages a column in an Appwrite table.
final class AppwriteTablesdbColumn extends Resource {
  static const String tfType = 'appwrite_tablesdb_column';

  AppwriteTablesdbColumn({
    required super.localName,
    required RefTo<AppwriteTablesdb> databaseId,
    required RefTo<AppwriteTablesdbTable> tableId,
    required TfArg<TablesdbColumnType> type,
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
    RefTo<AppwriteTablesdbTable>? relatedTableId,
    TfArg<String>? relationshipType,
    TfArg<bool>? twoWay,
    TfArg<String>? twoWayKey,
    RefTo<AppwriteProject>? projectId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'database_id': databaseId.encodeAs('id'),
           'table_id': tableId.encodeAs('id'),
           'type': type,
           'key': ?key,
           if (columnRequired != null) 'required': columnRequired,
           if (defaultValue != null) 'default': defaultValue,
           'size': ?size,
           'array': ?array,
           'elements': ?elements,
           'encrypt': ?encrypt,
           'float_max': ?floatMax,
           'float_min': ?floatMin,
           'max': ?max,
           'min': ?min,
           'on_delete': ?onDelete,
           'related_table_id': ?relatedTableId?.encodeAs('id'),
           'relationship_type': ?relationshipType,
           'two_way': ?twoWay,
           'two_way_key': ?twoWayKey,
           'project_id': ?projectId?.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteTablesdbColumnSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AppwriteTablesdbColumn>`.
  RefTo<AppwriteTablesdbColumn> get ref => RefTo.of(this);

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}
