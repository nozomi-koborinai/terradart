// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_data_factory_dataset_azure_blob`.
const Set<String> _azurermDataFactoryDatasetAzureBlobSensitive = <String>{};

/// Typed helper for the `schema_column` block of
/// `azurerm_data_factory_dataset_azure_blob` (derived from provider schema).
@immutable
final class DataFactoryDatasetAzureBlobSchemaColumn {
  const DataFactoryDatasetAzureBlobSchemaColumn({
    this.description,
    required this.name,
    this.type,
  });

  final TfArg<String>? description;

  final TfArg<String> name;

  final DataFactoryDatasetAzureBlobType? type;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'name': name.toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const DataFactoryDatasetAzureBlobType._(TfArg<String> _)
    implements TfArg<String> {
  DataFactoryDatasetAzureBlobType.variable(String name)
    : this._(TfArg.variable(name));
  DataFactoryDatasetAzureBlobType.expression(String template)
    : this._(TfArg.expression(template));
  const DataFactoryDatasetAzureBlobType.arg(TfArg<String> arg) : this._(arg);

  static const byte = DataFactoryDatasetAzureBlobType._(TfArgLiteral('Byte'));
  static const byte2 = DataFactoryDatasetAzureBlobType._(
    TfArgLiteral('Byte[]'),
  );
  static const boolean = DataFactoryDatasetAzureBlobType._(
    TfArgLiteral('Boolean'),
  );
  static const date = DataFactoryDatasetAzureBlobType._(TfArgLiteral('Date'));
  static const datetime = DataFactoryDatasetAzureBlobType._(
    TfArgLiteral('DateTime'),
  );
  static const datetimeoffset = DataFactoryDatasetAzureBlobType._(
    TfArgLiteral('DateTimeOffset'),
  );
  static const decimal = DataFactoryDatasetAzureBlobType._(
    TfArgLiteral('Decimal'),
  );
  static const double = DataFactoryDatasetAzureBlobType._(
    TfArgLiteral('Double'),
  );
  static const guid = DataFactoryDatasetAzureBlobType._(TfArgLiteral('Guid'));
  static const int16 = DataFactoryDatasetAzureBlobType._(TfArgLiteral('Int16'));
  static const int32 = DataFactoryDatasetAzureBlobType._(TfArgLiteral('Int32'));
  static const int64 = DataFactoryDatasetAzureBlobType._(TfArgLiteral('Int64'));
  static const single = DataFactoryDatasetAzureBlobType._(
    TfArgLiteral('Single'),
  );
  static const string = DataFactoryDatasetAzureBlobType._(
    TfArgLiteral('String'),
  );
  static const timespan = DataFactoryDatasetAzureBlobType._(
    TfArgLiteral('TimeSpan'),
  );

  static const List<DataFactoryDatasetAzureBlobType> values = [
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

/// Factory wrapper for `azurerm_data_factory_dataset_azure_blob`.
final class AzurermDataFactoryDatasetAzureBlob extends Resource {
  static const String tfType = 'azurerm_data_factory_dataset_azure_blob';

  AzurermDataFactoryDatasetAzureBlob(
    super.localName, {
    TfArg<Map<String, String>>? additionalProperties,
    TfArg<List<String>>? annotations,
    required TfArg<String> dataFactoryId,
    TfArg<String>? description,
    TfArg<bool>? dynamicFilenameEnabled,
    TfArg<bool>? dynamicPathEnabled,
    TfArg<String>? filename,
    TfArg<String>? folder,
    required TfArg<String> linkedServiceName,
    required TfArg<String> name,
    TfArg<Map<String, String>>? parameters,
    TfArg<String>? path,
    List<DataFactoryDatasetAzureBlobSchemaColumn>? schemaColumn,
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
           'dynamic_filename_enabled': ?dynamicFilenameEnabled,
           'dynamic_path_enabled': ?dynamicPathEnabled,
           'filename': ?filename,
           'folder': ?folder,
           'linked_service_name': linkedServiceName,
           'name': name,
           'parameters': ?parameters,
           'path': ?path,
           if (schemaColumn != null)
             'schema_column': TfArg.literal([
               for (final e in schemaColumn) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDataFactoryDatasetAzureBlobSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDataFactoryDatasetAzureBlob>`.
  RefTo<AzurermDataFactoryDatasetAzureBlob> get ref => RefTo.of(this);

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

  /// Reference to `dynamic_filename_enabled` attribute.
  TfRef<bool> get dynamicFilenameEnabled =>
      TfRef.attribute<bool>(this, 'dynamic_filename_enabled');

  /// Reference to `dynamic_path_enabled` attribute.
  TfRef<bool> get dynamicPathEnabled =>
      TfRef.attribute<bool>(this, 'dynamic_path_enabled');

  /// Reference to `filename` attribute.
  TfRef<String> get filename => TfRef.attribute<String>(this, 'filename');

  /// Reference to `folder` attribute.
  TfRef<String> get folder => TfRef.attribute<String>(this, 'folder');

  /// Reference to `linked_service_name` attribute.
  TfRef<String> get linkedServiceName =>
      TfRef.attribute<String>(this, 'linked_service_name');

  /// Reference to `parameters` attribute.
  TfRef<Map<String, String>> get parameters =>
      TfRef.attribute<Map<String, String>>(this, 'parameters');

  /// Reference to `path` attribute.
  TfRef<String> get path => TfRef.attribute<String>(this, 'path');
}
