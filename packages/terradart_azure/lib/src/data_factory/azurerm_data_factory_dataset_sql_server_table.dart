// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_data_factory_dataset_sql_server_table`.
const Set<String> _azurermDataFactoryDatasetSqlServerTableSensitive =
    <String>{};

/// Typed helper for the `schema_column` block of
/// `azurerm_data_factory_dataset_sql_server_table` (derived from provider schema).
@immutable
final class DataFactoryDatasetSqlServerTableSchemaColumn {
  const DataFactoryDatasetSqlServerTableSchemaColumn({
    this.description,
    required this.name,
    this.type,
  });

  final TfArg<String>? description;

  final TfArg<String> name;

  final DataFactoryDatasetSqlServerTableType? type;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'name': name.toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const DataFactoryDatasetSqlServerTableType._(TfArg<String> _)
    implements TfArg<String> {
  DataFactoryDatasetSqlServerTableType.variable(String name)
    : this._(TfArg.variable(name));
  DataFactoryDatasetSqlServerTableType.expression(String template)
    : this._(TfArg.expression(template));
  const DataFactoryDatasetSqlServerTableType.arg(TfArg<String> arg)
    : this._(arg);

  static const byte = DataFactoryDatasetSqlServerTableType._(
    TfArgLiteral('Byte'),
  );
  static const byte2 = DataFactoryDatasetSqlServerTableType._(
    TfArgLiteral('Byte[]'),
  );
  static const boolean = DataFactoryDatasetSqlServerTableType._(
    TfArgLiteral('Boolean'),
  );
  static const date = DataFactoryDatasetSqlServerTableType._(
    TfArgLiteral('Date'),
  );
  static const datetime = DataFactoryDatasetSqlServerTableType._(
    TfArgLiteral('DateTime'),
  );
  static const datetimeoffset = DataFactoryDatasetSqlServerTableType._(
    TfArgLiteral('DateTimeOffset'),
  );
  static const decimal = DataFactoryDatasetSqlServerTableType._(
    TfArgLiteral('Decimal'),
  );
  static const double = DataFactoryDatasetSqlServerTableType._(
    TfArgLiteral('Double'),
  );
  static const guid = DataFactoryDatasetSqlServerTableType._(
    TfArgLiteral('Guid'),
  );
  static const int16 = DataFactoryDatasetSqlServerTableType._(
    TfArgLiteral('Int16'),
  );
  static const int32 = DataFactoryDatasetSqlServerTableType._(
    TfArgLiteral('Int32'),
  );
  static const int64 = DataFactoryDatasetSqlServerTableType._(
    TfArgLiteral('Int64'),
  );
  static const single = DataFactoryDatasetSqlServerTableType._(
    TfArgLiteral('Single'),
  );
  static const string = DataFactoryDatasetSqlServerTableType._(
    TfArgLiteral('String'),
  );
  static const timespan = DataFactoryDatasetSqlServerTableType._(
    TfArgLiteral('TimeSpan'),
  );

  static const List<DataFactoryDatasetSqlServerTableType> values = [
    byte,
    byte2,
    boolean,
    date,
    datetime,
    datetimeoffset,
    decimal,
    double,
    guid,
    int16,
    int32,
    int64,
    single,
    string,
    timespan,
  ];
}

/// Factory wrapper for `azurerm_data_factory_dataset_sql_server_table`.
final class AzurermDataFactoryDatasetSqlServerTable extends Resource {
  static const String tfType = 'azurerm_data_factory_dataset_sql_server_table';

  AzurermDataFactoryDatasetSqlServerTable(
    super.localName, {
    TfArg<Map<String, String>>? additionalProperties,
    TfArg<List<String>>? annotations,
    required TfArg<String> dataFactoryId,
    TfArg<String>? description,
    TfArg<String>? folder,
    required TfArg<String> linkedServiceName,
    required TfArg<String> name,
    TfArg<Map<String, String>>? parameters,
    TfArg<String>? tableName,
    List<DataFactoryDatasetSqlServerTableSchemaColumn>? schemaColumn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'additional_properties': ?additionalProperties,
           'annotations': ?annotations,
           'data_factory_id': dataFactoryId,
           'description': ?description,
           'folder': ?folder,
           'linked_service_name': linkedServiceName,
           'name': name,
           'parameters': ?parameters,
           'table_name': ?tableName,
           if (schemaColumn != null)
             'schema_column': TfArg.literal([
               for (final e in schemaColumn) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDataFactoryDatasetSqlServerTableSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDataFactoryDatasetSqlServerTable>`.
  RefTo<AzurermDataFactoryDatasetSqlServerTable> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `additional_properties` attribute.
  TfRef<Map<String, String>> get additionalProperties =>
      TfRef.attribute<Map<String, String>>(this, 'additional_properties');

  /// Reference to `annotations` attribute.
  TfRef<List<String>> get annotations =>
      TfRef.attribute<List<String>>(this, 'annotations');

  /// Reference to `data_factory_id` attribute.
  TfRef<String> get dataFactoryId =>
      TfRef.attribute<String>(this, 'data_factory_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `folder` attribute.
  TfRef<String> get folder => TfRef.attribute<String>(this, 'folder');

  /// Reference to `linked_service_name` attribute.
  TfRef<String> get linkedServiceName =>
      TfRef.attribute<String>(this, 'linked_service_name');

  /// Reference to `parameters` attribute.
  TfRef<Map<String, String>> get parameters =>
      TfRef.attribute<Map<String, String>>(this, 'parameters');

  /// Reference to `table_name` attribute.
  TfRef<String> get tableName => TfRef.attribute<String>(this, 'table_name');
}
