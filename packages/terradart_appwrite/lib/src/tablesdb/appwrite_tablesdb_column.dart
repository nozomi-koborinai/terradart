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
extension type const TablesdbColumnType._(TfArg<String> _)
    implements TfArg<String> {
  TablesdbColumnType.variable(String name) : this._(TfArg.variable(name));
  TablesdbColumnType.expression(String template)
    : this._(TfArg.expression(template));
  const TablesdbColumnType.arg(TfArg<String> arg) : this._(arg);

  static const varchar = TablesdbColumnType._(TfArgLiteral('varchar'));
  static const text = TablesdbColumnType._(TfArgLiteral('text'));
  static const longtext = TablesdbColumnType._(TfArgLiteral('longtext'));
  static const mediumtext = TablesdbColumnType._(TfArgLiteral('mediumtext'));
  static const integer = TablesdbColumnType._(TfArgLiteral('integer'));
  static const bigint = TablesdbColumnType._(TfArgLiteral('bigint'));
  static const float = TablesdbColumnType._(TfArgLiteral('float'));
  static const boolean = TablesdbColumnType._(TfArgLiteral('boolean'));
  static const enumCase = TablesdbColumnType._(TfArgLiteral('enum'));
  static const email = TablesdbColumnType._(TfArgLiteral('email'));
  static const datetime = TablesdbColumnType._(TfArgLiteral('datetime'));
  static const url = TablesdbColumnType._(TfArgLiteral('url'));
  static const ip = TablesdbColumnType._(TfArgLiteral('ip'));
  static const point = TablesdbColumnType._(TfArgLiteral('point'));
  static const line = TablesdbColumnType._(TfArgLiteral('line'));
  static const polygon = TablesdbColumnType._(TfArgLiteral('polygon'));
  static const relationship = TablesdbColumnType._(
    TfArgLiteral('relationship'),
  );
  static const string = TablesdbColumnType._(TfArgLiteral('string'));

  static const List<TablesdbColumnType> values = [
    varchar,
    text,
    longtext,
    mediumtext,
    integer,
    bigint,
    float,
    boolean,
    enumCase,
    email,
    datetime,
    url,
    ip,
    point,
    line,
    polygon,
    relationship,
    string,
  ];
}

/// Factory wrapper for `appwrite_tablesdb_column`.
///
/// Manages a column in an Appwrite table.
final class AppwriteTablesdbColumn extends Resource {
  static const String tfType = 'appwrite_tablesdb_column';

  AppwriteTablesdbColumn(
    super.localName, {
    required RefTo<AppwriteTablesdb> databaseId,
    required RefTo<AppwriteTablesdbTable> tableId,
    required TablesdbColumnType type,
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

  /// Reference to `array` attribute.
  TfRef<bool> get array => TfRef.attribute<bool>(this, 'array');

  /// Reference to `database_id` attribute.
  TfRef<String> get databaseId => TfRef.attribute<String>(this, 'database_id');

  /// Reference to `default` attribute.
  TfRef<String> get defaultAttr => TfRef.attribute<String>(this, 'default');

  /// Reference to `elements` attribute.
  TfRef<List<String>> get elements =>
      TfRef.attribute<List<String>>(this, 'elements');

  /// Reference to `encrypt` attribute.
  TfRef<bool> get encrypt => TfRef.attribute<bool>(this, 'encrypt');

  /// Reference to `float_max` attribute.
  TfRef<num> get floatMax => TfRef.attribute<num>(this, 'float_max');

  /// Reference to `float_min` attribute.
  TfRef<num> get floatMin => TfRef.attribute<num>(this, 'float_min');

  /// Reference to `key` attribute.
  TfRef<String> get key => TfRef.attribute<String>(this, 'key');

  /// Reference to `max` attribute.
  TfRef<num> get max => TfRef.attribute<num>(this, 'max');

  /// Reference to `min` attribute.
  TfRef<num> get min => TfRef.attribute<num>(this, 'min');

  /// Reference to `on_delete` attribute.
  TfRef<String> get onDelete => TfRef.attribute<String>(this, 'on_delete');

  /// Reference to `project_id` attribute.
  TfRef<String> get projectId => TfRef.attribute<String>(this, 'project_id');

  /// Reference to `related_table_id` attribute.
  TfRef<String> get relatedTableId =>
      TfRef.attribute<String>(this, 'related_table_id');

  /// Reference to `relationship_type` attribute.
  TfRef<String> get relationshipType =>
      TfRef.attribute<String>(this, 'relationship_type');

  /// Reference to `required` attribute.
  TfRef<bool> get required => TfRef.attribute<bool>(this, 'required');

  /// Reference to `size` attribute.
  TfRef<num> get size => TfRef.attribute<num>(this, 'size');

  /// Reference to `table_id` attribute.
  TfRef<String> get tableId => TfRef.attribute<String>(this, 'table_id');

  /// Reference to `two_way` attribute.
  TfRef<bool> get twoWay => TfRef.attribute<bool>(this, 'two_way');

  /// Reference to `two_way_key` attribute.
  TfRef<String> get twoWayKey => TfRef.attribute<String>(this, 'two_way_key');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
