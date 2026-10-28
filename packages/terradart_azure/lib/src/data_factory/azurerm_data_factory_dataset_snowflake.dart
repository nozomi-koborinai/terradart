// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_data_factory_dataset_snowflake`.
const Set<String> _azurermDataFactoryDatasetSnowflakeSensitive = <String>{};

/// Typed helper for the `schema_column` block of
/// `azurerm_data_factory_dataset_snowflake` (derived from provider schema).
@immutable
final class DataFactoryDatasetSnowflakeSchemaColumn {
  const DataFactoryDatasetSnowflakeSchemaColumn({
    required this.name,
    this.precision,
    this.scale,
    this.type,
  });

  final TfArg<String> name;

  final TfArg<num>? precision;

  final TfArg<num>? scale;

  final DataFactoryDatasetSnowflakeType? type;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'precision': ?precision?.toTfJson(),
    'scale': ?scale?.toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const DataFactoryDatasetSnowflakeType._(TfArg<String> _)
    implements TfArg<String> {
  DataFactoryDatasetSnowflakeType.variable(String name)
    : this._(TfArg.variable(name));
  DataFactoryDatasetSnowflakeType.expression(String template)
    : this._(TfArg.expression(template));
  const DataFactoryDatasetSnowflakeType.arg(TfArg<String> arg) : this._(arg);

  static const number = DataFactoryDatasetSnowflakeType._(
    TfArgLiteral('NUMBER'),
  );
  static const decimal = DataFactoryDatasetSnowflakeType._(
    TfArgLiteral('DECIMAL'),
  );
  static const numeric = DataFactoryDatasetSnowflakeType._(
    TfArgLiteral('NUMERIC'),
  );
  static const int = DataFactoryDatasetSnowflakeType._(TfArgLiteral('INT'));
  static const integer = DataFactoryDatasetSnowflakeType._(
    TfArgLiteral('INTEGER'),
  );
  static const bigint = DataFactoryDatasetSnowflakeType._(
    TfArgLiteral('BIGINT'),
  );
  static const smallint = DataFactoryDatasetSnowflakeType._(
    TfArgLiteral('SMALLINT'),
  );
  static const float = DataFactoryDatasetSnowflakeType._(TfArgLiteral('FLOAT'));
  static const float4 = DataFactoryDatasetSnowflakeType._(
    TfArgLiteral('FLOAT4'),
  );
  static const float8 = DataFactoryDatasetSnowflakeType._(
    TfArgLiteral('FLOAT8'),
  );
  static const double = DataFactoryDatasetSnowflakeType._(
    TfArgLiteral('DOUBLE'),
  );
  static const doublePrecision = DataFactoryDatasetSnowflakeType._(
    TfArgLiteral('DOUBLE PRECISION'),
  );
  static const real = DataFactoryDatasetSnowflakeType._(TfArgLiteral('REAL'));
  static const varchar = DataFactoryDatasetSnowflakeType._(
    TfArgLiteral('VARCHAR'),
  );
  static const char = DataFactoryDatasetSnowflakeType._(TfArgLiteral('CHAR'));
  static const character = DataFactoryDatasetSnowflakeType._(
    TfArgLiteral('CHARACTER'),
  );
  static const string = DataFactoryDatasetSnowflakeType._(
    TfArgLiteral('STRING'),
  );
  static const text = DataFactoryDatasetSnowflakeType._(TfArgLiteral('TEXT'));
  static const binary = DataFactoryDatasetSnowflakeType._(
    TfArgLiteral('BINARY'),
  );
  static const varbinary = DataFactoryDatasetSnowflakeType._(
    TfArgLiteral('VARBINARY'),
  );
  static const boolean = DataFactoryDatasetSnowflakeType._(
    TfArgLiteral('BOOLEAN'),
  );
  static const date = DataFactoryDatasetSnowflakeType._(TfArgLiteral('DATE'));
  static const datetime = DataFactoryDatasetSnowflakeType._(
    TfArgLiteral('DATETIME'),
  );
  static const time = DataFactoryDatasetSnowflakeType._(TfArgLiteral('TIME'));
  static const timestamp = DataFactoryDatasetSnowflakeType._(
    TfArgLiteral('TIMESTAMP'),
  );
  static const timestampLtz = DataFactoryDatasetSnowflakeType._(
    TfArgLiteral('TIMESTAMP_LTZ'),
  );
  static const timestampNtz = DataFactoryDatasetSnowflakeType._(
    TfArgLiteral('TIMESTAMP_NTZ'),
  );
  static const timestampTz = DataFactoryDatasetSnowflakeType._(
    TfArgLiteral('TIMESTAMP_TZ'),
  );
  static const variant = DataFactoryDatasetSnowflakeType._(
    TfArgLiteral('VARIANT'),
  );
  static const object = DataFactoryDatasetSnowflakeType._(
    TfArgLiteral('OBJECT'),
  );
  static const array = DataFactoryDatasetSnowflakeType._(TfArgLiteral('ARRAY'));
  static const geography = DataFactoryDatasetSnowflakeType._(
    TfArgLiteral('GEOGRAPHY'),
  );

  static const List<DataFactoryDatasetSnowflakeType> values = [
    number,
    decimal,
    numeric,
    int,
    integer,
    bigint,
    smallint,
    float,
    float4,
    float8,
    double,
    doublePrecision,
    real,
    varchar,
    char,
    character,
    string,
    text,
    binary,
    varbinary,
    boolean,
    date,
    datetime,
    time,
    timestamp,
    timestampLtz,
    timestampNtz,
    timestampTz,
    variant,
    object,
    array,
    geography,
  ];
}

/// Factory wrapper for `azurerm_data_factory_dataset_snowflake`.
final class AzurermDataFactoryDatasetSnowflake extends Resource {
  static const String tfType = 'azurerm_data_factory_dataset_snowflake';

  AzurermDataFactoryDatasetSnowflake(
    super.localName, {
    TfArg<Map<String, String>>? additionalProperties,
    TfArg<List<String>>? annotations,
    required TfArg<String> dataFactoryId,
    TfArg<String>? description,
    TfArg<String>? folder,
    required TfArg<String> linkedServiceName,
    required TfArg<String> name,
    TfArg<Map<String, String>>? parameters,
    TfArg<String>? schemaName,
    TfArg<String>? tableName,
    List<DataFactoryDatasetSnowflakeSchemaColumn>? schemaColumn,
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
           'schema_name': ?schemaName,
           'table_name': ?tableName,
           if (schemaColumn != null)
             'schema_column': TfArg.literal([
               for (final e in schemaColumn) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDataFactoryDatasetSnowflakeSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDataFactoryDatasetSnowflake>`.
  RefTo<AzurermDataFactoryDatasetSnowflake> get ref => RefTo.of(this);

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

  /// Reference to `schema_name` attribute.
  TfRef<String> get schemaName => TfRef.attribute<String>(this, 'schema_name');

  /// Reference to `table_name` attribute.
  TfRef<String> get tableName => TfRef.attribute<String>(this, 'table_name');
}
