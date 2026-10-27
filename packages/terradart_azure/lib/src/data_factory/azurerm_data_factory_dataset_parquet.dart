// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_data_factory_dataset_parquet`.
const Set<String> _azurermDataFactoryDatasetParquetSensitive = <String>{};

/// Typed helper for the `azure_blob_fs_location` block of
/// `azurerm_data_factory_dataset_parquet` (derived from provider schema).
@immutable
final class DataFactoryDatasetParquetAzureBlobFsLocation {
  const DataFactoryDatasetParquetAzureBlobFsLocation({
    this.dynamicFileSystemEnabled,
    this.dynamicFilenameEnabled,
    this.dynamicPathEnabled,
    this.fileSystem,
    this.filename,
    this.path,
  });

  final TfArg<bool>? dynamicFileSystemEnabled;

  final TfArg<bool>? dynamicFilenameEnabled;

  final TfArg<bool>? dynamicPathEnabled;

  final TfArg<String>? fileSystem;

  final TfArg<String>? filename;

  final TfArg<String>? path;

  @internal
  Map<String, Object?> encode() => {
    'dynamic_file_system_enabled': ?dynamicFileSystemEnabled?.toTfJson(),
    'dynamic_filename_enabled': ?dynamicFilenameEnabled?.toTfJson(),
    'dynamic_path_enabled': ?dynamicPathEnabled?.toTfJson(),
    'file_system': ?fileSystem?.toTfJson(),
    'filename': ?filename?.toTfJson(),
    'path': ?path?.toTfJson(),
  };
}

/// Typed helper for the `azure_blob_storage_location` block of
/// `azurerm_data_factory_dataset_parquet` (derived from provider schema).
@immutable
final class DataFactoryDatasetParquetAzureBlobStorageLocation {
  const DataFactoryDatasetParquetAzureBlobStorageLocation({
    required this.container,
    this.dynamicContainerEnabled,
    this.dynamicFilenameEnabled,
    this.dynamicPathEnabled,
    this.filename,
    this.path,
  });

  final TfArg<String> container;

  final TfArg<bool>? dynamicContainerEnabled;

  final TfArg<bool>? dynamicFilenameEnabled;

  final TfArg<bool>? dynamicPathEnabled;

  final TfArg<String>? filename;

  final TfArg<String>? path;

  @internal
  Map<String, Object?> encode() => {
    'container': container.toTfJson(),
    'dynamic_container_enabled': ?dynamicContainerEnabled?.toTfJson(),
    'dynamic_filename_enabled': ?dynamicFilenameEnabled?.toTfJson(),
    'dynamic_path_enabled': ?dynamicPathEnabled?.toTfJson(),
    'filename': ?filename?.toTfJson(),
    'path': ?path?.toTfJson(),
  };
}

/// Typed helper for the `http_server_location` block of
/// `azurerm_data_factory_dataset_parquet` (derived from provider schema).
@immutable
final class DataFactoryDatasetParquetHttpServerLocation {
  const DataFactoryDatasetParquetHttpServerLocation({
    this.dynamicFilenameEnabled,
    this.dynamicPathEnabled,
    required this.filename,
    this.path,
    required this.relativeUrl,
  });

  final TfArg<bool>? dynamicFilenameEnabled;

  final TfArg<bool>? dynamicPathEnabled;

  final TfArg<String> filename;

  final TfArg<String>? path;

  final TfArg<String> relativeUrl;

  @internal
  Map<String, Object?> encode() => {
    'dynamic_filename_enabled': ?dynamicFilenameEnabled?.toTfJson(),
    'dynamic_path_enabled': ?dynamicPathEnabled?.toTfJson(),
    'filename': filename.toTfJson(),
    'path': ?path?.toTfJson(),
    'relative_url': relativeUrl.toTfJson(),
  };
}

/// Typed helper for the `schema_column` block of
/// `azurerm_data_factory_dataset_parquet` (derived from provider schema).
@immutable
final class DataFactoryDatasetParquetSchemaColumn {
  const DataFactoryDatasetParquetSchemaColumn({
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

/// Factory wrapper for `azurerm_data_factory_dataset_parquet`.
final class AzurermDataFactoryDatasetParquet extends Resource {
  static const String tfType = 'azurerm_data_factory_dataset_parquet';

  AzurermDataFactoryDatasetParquet(
    super.localName, {
    TfArg<Map<String, String>>? additionalProperties,
    TfArg<List<String>>? annotations,
    TfArg<String>? compressionCodec,
    TfArg<String>? compressionLevel,
    required TfArg<String> dataFactoryId,
    TfArg<String>? description,
    TfArg<String>? folder,
    required TfArg<String> linkedServiceName,
    required TfArg<String> name,
    TfArg<Map<String, String>>? parameters,
    DataFactoryDatasetParquetAzureBlobFsLocation? azureBlobFsLocation,
    DataFactoryDatasetParquetAzureBlobStorageLocation? azureBlobStorageLocation,
    DataFactoryDatasetParquetHttpServerLocation? httpServerLocation,
    List<DataFactoryDatasetParquetSchemaColumn>? schemaColumn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'additional_properties': ?additionalProperties,
           'annotations': ?annotations,
           'compression_codec': ?compressionCodec,
           'compression_level': ?compressionLevel,
           'data_factory_id': dataFactoryId,
           'description': ?description,
           'folder': ?folder,
           'linked_service_name': linkedServiceName,
           'name': name,
           'parameters': ?parameters,
           if (azureBlobFsLocation != null)
             'azure_blob_fs_location': TfArg.literal(
               azureBlobFsLocation.encode(),
             ),
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
  Set<String> get sensitiveFields => _azurermDataFactoryDatasetParquetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDataFactoryDatasetParquet>`.
  RefTo<AzurermDataFactoryDatasetParquet> get ref => RefTo.of(this);

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

  /// Reference to `compression_codec` attribute.
  TfRef<String> get compressionCodec =>
      TfRef.attribute<String>(this, 'compression_codec');

  /// Reference to `compression_level` attribute.
  TfRef<String> get compressionLevel =>
      TfRef.attribute<String>(this, 'compression_level');

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
