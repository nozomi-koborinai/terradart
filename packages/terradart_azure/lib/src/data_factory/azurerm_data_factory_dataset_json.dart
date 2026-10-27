// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_data_factory_dataset_json`.
const Set<String> _azurermDataFactoryDatasetJsonSensitive = <String>{};

/// Typed helper for the `azure_blob_storage_location` block of
/// `azurerm_data_factory_dataset_json` (derived from provider schema).
@immutable
final class DataFactoryDatasetJsonAzureBlobStorageLocation {
  const DataFactoryDatasetJsonAzureBlobStorageLocation({
    required this.container,
    this.dynamicContainerEnabled,
    this.dynamicFilenameEnabled,
    this.dynamicPathEnabled,
    required this.filename,
    required this.path,
  });

  final TfArg<String> container;

  final TfArg<bool>? dynamicContainerEnabled;

  final TfArg<bool>? dynamicFilenameEnabled;

  final TfArg<bool>? dynamicPathEnabled;

  final TfArg<String> filename;

  final TfArg<String> path;

  @internal
  Map<String, Object?> encode() => {
    'container': container.toTfJson(),
    'dynamic_container_enabled': ?dynamicContainerEnabled?.toTfJson(),
    'dynamic_filename_enabled': ?dynamicFilenameEnabled?.toTfJson(),
    'dynamic_path_enabled': ?dynamicPathEnabled?.toTfJson(),
    'filename': filename.toTfJson(),
    'path': path.toTfJson(),
  };
}

/// Typed helper for the `http_server_location` block of
/// `azurerm_data_factory_dataset_json` (derived from provider schema).
@immutable
final class DataFactoryDatasetJsonHttpServerLocation {
  const DataFactoryDatasetJsonHttpServerLocation({
    this.dynamicFilenameEnabled,
    this.dynamicPathEnabled,
    required this.filename,
    required this.path,
    required this.relativeUrl,
  });

  final TfArg<bool>? dynamicFilenameEnabled;

  final TfArg<bool>? dynamicPathEnabled;

  final TfArg<String> filename;

  final TfArg<String> path;

  final TfArg<String> relativeUrl;

  @internal
  Map<String, Object?> encode() => {
    'dynamic_filename_enabled': ?dynamicFilenameEnabled?.toTfJson(),
    'dynamic_path_enabled': ?dynamicPathEnabled?.toTfJson(),
    'filename': filename.toTfJson(),
    'path': path.toTfJson(),
    'relative_url': relativeUrl.toTfJson(),
  };
}

/// Typed helper for the `schema_column` block of
/// `azurerm_data_factory_dataset_json` (derived from provider schema).
@immutable
final class DataFactoryDatasetJsonSchemaColumn {
  const DataFactoryDatasetJsonSchemaColumn({
    this.description,
    required this.name,
    this.type,
  });

  final TfArg<String>? description;

  final TfArg<String> name;

  final TfArg<String>? type;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'name': name.toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_data_factory_dataset_json`.
final class AzurermDataFactoryDatasetJson extends Resource {
  static const String tfType = 'azurerm_data_factory_dataset_json';

  AzurermDataFactoryDatasetJson(
    super.localName, {
    TfArg<Map<String, String>>? additionalProperties,
    TfArg<List<String>>? annotations,
    required TfArg<String> dataFactoryId,
    TfArg<String>? description,
    TfArg<String>? encoding,
    TfArg<String>? folder,
    required TfArg<String> linkedServiceName,
    required TfArg<String> name,
    TfArg<Map<String, String>>? parameters,
    DataFactoryDatasetJsonAzureBlobStorageLocation? azureBlobStorageLocation,
    DataFactoryDatasetJsonHttpServerLocation? httpServerLocation,
    List<DataFactoryDatasetJsonSchemaColumn>? schemaColumn,
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
           'encoding': ?encoding,
           'folder': ?folder,
           'linked_service_name': linkedServiceName,
           'name': name,
           'parameters': ?parameters,
           if (azureBlobStorageLocation != null)
             'azure_blob_storage_location': TfArg.literal(
               azureBlobStorageLocation.encode(),
             ),
           if (httpServerLocation != null)
             'http_server_location': TfArg.literal(httpServerLocation.encode()),
           if (schemaColumn != null)
             'schema_column': TfArg.literal([
               for (final e in schemaColumn) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermDataFactoryDatasetJsonSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDataFactoryDatasetJson>`.
  RefTo<AzurermDataFactoryDatasetJson> get ref => RefTo.of(this);

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

  /// Reference to `encoding` attribute.
  TfRef<String> get encoding => TfRef.attribute<String>(this, 'encoding');

  /// Reference to `folder` attribute.
  TfRef<String> get folder => TfRef.attribute<String>(this, 'folder');

  /// Reference to `linked_service_name` attribute.
  TfRef<String> get linkedServiceName =>
      TfRef.attribute<String>(this, 'linked_service_name');

  /// Reference to `parameters` attribute.
  TfRef<Map<String, String>> get parameters =>
      TfRef.attribute<Map<String, String>>(this, 'parameters');
}
