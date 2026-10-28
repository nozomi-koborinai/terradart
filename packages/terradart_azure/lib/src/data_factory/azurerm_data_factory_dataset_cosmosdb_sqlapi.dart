// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_data_factory_dataset_cosmosdb_sqlapi`.
const Set<String> _azurermDataFactoryDatasetCosmosdbSqlapiSensitive =
    <String>{};

/// Typed helper for the `schema_column` block of
/// `azurerm_data_factory_dataset_cosmosdb_sqlapi` (derived from provider schema).
@immutable
final class DataFactoryDatasetCosmosdbSqlapiSchemaColumn {
  const DataFactoryDatasetCosmosdbSqlapiSchemaColumn({
    this.description,
    required this.name,
    this.type,
  });

  final TfArg<String>? description;

  final TfArg<String> name;

  final DataFactoryDatasetCosmosdbSqlapiType? type;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'name': name.toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const DataFactoryDatasetCosmosdbSqlapiType._(TfArg<String> _)
    implements TfArg<String> {
  DataFactoryDatasetCosmosdbSqlapiType.variable(String name)
    : this._(TfArg.variable(name));
  DataFactoryDatasetCosmosdbSqlapiType.expression(String template)
    : this._(TfArg.expression(template));
  const DataFactoryDatasetCosmosdbSqlapiType.arg(TfArg<String> arg)
    : this._(arg);

  static const byte = DataFactoryDatasetCosmosdbSqlapiType._(
    TfArgLiteral('Byte'),
  );
  static const byte2 = DataFactoryDatasetCosmosdbSqlapiType._(
    TfArgLiteral('Byte[]'),
  );
  static const boolean = DataFactoryDatasetCosmosdbSqlapiType._(
    TfArgLiteral('Boolean'),
  );
  static const date = DataFactoryDatasetCosmosdbSqlapiType._(
    TfArgLiteral('Date'),
  );
  static const datetime = DataFactoryDatasetCosmosdbSqlapiType._(
    TfArgLiteral('DateTime'),
  );
  static const datetimeoffset = DataFactoryDatasetCosmosdbSqlapiType._(
    TfArgLiteral('DateTimeOffset'),
  );
  static const decimal = DataFactoryDatasetCosmosdbSqlapiType._(
    TfArgLiteral('Decimal'),
  );
  static const double = DataFactoryDatasetCosmosdbSqlapiType._(
    TfArgLiteral('Double'),
  );
  static const guid = DataFactoryDatasetCosmosdbSqlapiType._(
    TfArgLiteral('Guid'),
  );
  static const int16 = DataFactoryDatasetCosmosdbSqlapiType._(
    TfArgLiteral('Int16'),
  );
  static const int32 = DataFactoryDatasetCosmosdbSqlapiType._(
    TfArgLiteral('Int32'),
  );
  static const int64 = DataFactoryDatasetCosmosdbSqlapiType._(
    TfArgLiteral('Int64'),
  );
  static const single = DataFactoryDatasetCosmosdbSqlapiType._(
    TfArgLiteral('Single'),
  );
  static const string = DataFactoryDatasetCosmosdbSqlapiType._(
    TfArgLiteral('String'),
  );
  static const timespan = DataFactoryDatasetCosmosdbSqlapiType._(
    TfArgLiteral('TimeSpan'),
  );

  static const List<DataFactoryDatasetCosmosdbSqlapiType> values = [
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

/// Factory wrapper for `azurerm_data_factory_dataset_cosmosdb_sqlapi`.
final class AzurermDataFactoryDatasetCosmosdbSqlapi extends Resource {
  static const String tfType = 'azurerm_data_factory_dataset_cosmosdb_sqlapi';

  AzurermDataFactoryDatasetCosmosdbSqlapi(
    super.localName, {
    TfArg<Map<String, String>>? additionalProperties,
    TfArg<List<String>>? annotations,
    TfArg<String>? collectionName,
    required TfArg<String> dataFactoryId,
    TfArg<String>? description,
    TfArg<String>? folder,
    required TfArg<String> linkedServiceName,
    required TfArg<String> name,
    TfArg<Map<String, String>>? parameters,
    List<DataFactoryDatasetCosmosdbSqlapiSchemaColumn>? schemaColumn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'additional_properties': ?additionalProperties,
           'annotations': ?annotations,
           'collection_name': ?collectionName,
           'data_factory_id': dataFactoryId,
           'description': ?description,
           'folder': ?folder,
           'linked_service_name': linkedServiceName,
           'name': name,
           'parameters': ?parameters,
           if (schemaColumn != null)
             'schema_column': TfArg.literal([
               for (final e in schemaColumn) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDataFactoryDatasetCosmosdbSqlapiSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDataFactoryDatasetCosmosdbSqlapi>`.
  RefTo<AzurermDataFactoryDatasetCosmosdbSqlapi> get ref => RefTo.of(this);

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

  /// Reference to `collection_name` attribute.
  TfRef<String> get collectionName =>
      TfRef.attribute<String>(this, 'collection_name');

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
}
