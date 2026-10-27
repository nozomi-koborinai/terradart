// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_data_factory_dataset_azure_sql_table`.
const Set<String> _azurermDataFactoryDatasetAzureSqlTableSensitive = <String>{};

/// Typed helper for the `schema_column` block of
/// `azurerm_data_factory_dataset_azure_sql_table` (derived from provider schema).
@immutable
final class DataFactoryDatasetAzureSqlTableSchemaColumn {
  const DataFactoryDatasetAzureSqlTableSchemaColumn({
    this.description,
    required this.name,
    this.type,
  });

  final TfArg<String>? description;

  final TfArg<String> name;

  final DataFactoryDatasetAzureSqlTableType? type;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'name': name.toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const DataFactoryDatasetAzureSqlTableType._(TfArg<String> _)
    implements TfArg<String> {
  DataFactoryDatasetAzureSqlTableType.variable(String name)
    : this._(TfArg.variable(name));
  DataFactoryDatasetAzureSqlTableType.expression(String template)
    : this._(TfArg.expression(template));
  const DataFactoryDatasetAzureSqlTableType.arg(TfArg<String> arg)
    : this._(arg);

  static const byte = DataFactoryDatasetAzureSqlTableType._(
    TfArgLiteral('Byte'),
  );
  static const byte2 = DataFactoryDatasetAzureSqlTableType._(
    TfArgLiteral('Byte[]'),
  );
  static const boolean = DataFactoryDatasetAzureSqlTableType._(
    TfArgLiteral('Boolean'),
  );
  static const date = DataFactoryDatasetAzureSqlTableType._(
    TfArgLiteral('Date'),
  );
  static const datetime = DataFactoryDatasetAzureSqlTableType._(
    TfArgLiteral('DateTime'),
  );
  static const datetimeoffset = DataFactoryDatasetAzureSqlTableType._(
    TfArgLiteral('DateTimeOffset'),
  );
  static const decimal = DataFactoryDatasetAzureSqlTableType._(
    TfArgLiteral('Decimal'),
  );
  static const double = DataFactoryDatasetAzureSqlTableType._(
    TfArgLiteral('Double'),
  );
  static const guid = DataFactoryDatasetAzureSqlTableType._(
    TfArgLiteral('Guid'),
  );
  static const int16 = DataFactoryDatasetAzureSqlTableType._(
    TfArgLiteral('Int16'),
  );
  static const int32 = DataFactoryDatasetAzureSqlTableType._(
    TfArgLiteral('Int32'),
  );
  static const int64 = DataFactoryDatasetAzureSqlTableType._(
    TfArgLiteral('Int64'),
  );
  static const single = DataFactoryDatasetAzureSqlTableType._(
    TfArgLiteral('Single'),
  );
  static const string = DataFactoryDatasetAzureSqlTableType._(
    TfArgLiteral('String'),
  );
  static const timespan = DataFactoryDatasetAzureSqlTableType._(
    TfArgLiteral('TimeSpan'),
  );

  static const List<DataFactoryDatasetAzureSqlTableType> values = [
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

/// Factory wrapper for `azurerm_data_factory_dataset_azure_sql_table`.
final class AzurermDataFactoryDatasetAzureSqlTable extends Resource {
  static const String tfType = 'azurerm_data_factory_dataset_azure_sql_table';

  AzurermDataFactoryDatasetAzureSqlTable(
    super.localName, {
    TfArg<Map<String, String>>? additionalProperties,
    TfArg<List<String>>? annotations,
    required TfArg<String> dataFactoryId,
    TfArg<String>? description,
    TfArg<String>? folder,
    required TfArg<String> linkedServiceId,
    required TfArg<String> name,
    TfArg<Map<String, String>>? parameters,
    TfArg<String>? schema,
    TfArg<String>? table,
    List<DataFactoryDatasetAzureSqlTableSchemaColumn>? schemaColumn,
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
           'linked_service_id': linkedServiceId,
           'name': name,
           'parameters': ?parameters,
           'schema': ?schema,
           'table': ?table,
           if (schemaColumn != null)
             'schema_column': TfArg.literal([
               for (final e in schemaColumn) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDataFactoryDatasetAzureSqlTableSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDataFactoryDatasetAzureSqlTable>`.
  RefTo<AzurermDataFactoryDatasetAzureSqlTable> get ref => RefTo.of(this);

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

  /// Reference to `linked_service_id` attribute.
  TfRef<String> get linkedServiceId =>
      TfRef.attribute<String>(this, 'linked_service_id');

  /// Reference to `parameters` attribute.
  TfRef<Map<String, String>> get parameters =>
      TfRef.attribute<Map<String, String>>(this, 'parameters');

  /// Reference to `schema` attribute.
  TfRef<String> get schema => TfRef.attribute<String>(this, 'schema');

  /// Reference to `table` attribute.
  TfRef<String> get table => TfRef.attribute<String>(this, 'table');
}
