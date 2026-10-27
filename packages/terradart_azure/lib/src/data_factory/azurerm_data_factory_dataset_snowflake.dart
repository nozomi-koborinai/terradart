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

  final TfArg<String>? type;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'precision': ?precision?.toTfJson(),
    'scale': ?scale?.toTfJson(),
    'type': ?type?.toTfJson(),
  };
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
