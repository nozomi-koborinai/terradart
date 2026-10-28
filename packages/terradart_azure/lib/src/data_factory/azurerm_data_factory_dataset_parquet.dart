// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_data_factory_dataset_parquet`.
const Set<String> _azurermDataFactoryDatasetParquetSensitive = <String>{};

/// Data Factory Dataset Parquet Compression enum for `compression_codec`.
extension type const DataFactoryDatasetParquetCompressionCodec._(
  TfArg<String> _
) implements TfArg<String> {
  DataFactoryDatasetParquetCompressionCodec.variable(String name)
    : this._(TfArg.variable(name));
  DataFactoryDatasetParquetCompressionCodec.expression(String template)
    : this._(TfArg.expression(template));
  const DataFactoryDatasetParquetCompressionCodec.arg(TfArg<String> arg)
    : this._(arg);

  static const bzip2 = DataFactoryDatasetParquetCompressionCodec._(
    TfArgLiteral('bzip2'),
  );
  static const gzip = DataFactoryDatasetParquetCompressionCodec._(
    TfArgLiteral('gzip'),
  );
  static const deflate = DataFactoryDatasetParquetCompressionCodec._(
    TfArgLiteral('deflate'),
  );
  static const zipdeflate = DataFactoryDatasetParquetCompressionCodec._(
    TfArgLiteral('ZipDeflate'),
  );
  static const targzip = DataFactoryDatasetParquetCompressionCodec._(
    TfArgLiteral('TarGzip'),
  );
  static const tar = DataFactoryDatasetParquetCompressionCodec._(
    TfArgLiteral('Tar'),
  );
  static const snappy = DataFactoryDatasetParquetCompressionCodec._(
    TfArgLiteral('snappy'),
  );
  static const lz4 = DataFactoryDatasetParquetCompressionCodec._(
    TfArgLiteral('lz4'),
  );

  static const List<DataFactoryDatasetParquetCompressionCodec> values = [
    bzip2,
    gzip,
    deflate,
    zipdeflate,
    targzip,
    tar,
    snappy,
    lz4,
  ];
}

/// Data Factory Dataset Parquet Compression enum for `compression_level`.
extension type const DataFactoryDatasetParquetCompressionLevel._(
  TfArg<String> _
) implements TfArg<String> {
  DataFactoryDatasetParquetCompressionLevel.variable(String name)
    : this._(TfArg.variable(name));
  DataFactoryDatasetParquetCompressionLevel.expression(String template)
    : this._(TfArg.expression(template));
  const DataFactoryDatasetParquetCompressionLevel.arg(TfArg<String> arg)
    : this._(arg);

  static const optimal = DataFactoryDatasetParquetCompressionLevel._(
    TfArgLiteral('Optimal'),
  );
  static const fastest = DataFactoryDatasetParquetCompressionLevel._(
    TfArgLiteral('Fastest'),
  );

  static const List<DataFactoryDatasetParquetCompressionLevel> values = [
    optimal,
    fastest,
  ];
}

/// Exactly one of `azure_blob_fs_location`, `azure_blob_storage_location`, `http_server_location` on `azurerm_data_factory_dataset_parquet`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.azureBlobFsLocation(...)`.
sealed class DataFactoryDatasetParquetLocation {
  const DataFactoryDatasetParquetLocation();

  /// Sets `azure_blob_fs_location`.
  const factory DataFactoryDatasetParquetLocation.azureBlobFsLocation(
    DataFactoryDatasetParquetAzureBlobFsLocation azureBlobFsLocation,
  ) = DataFactoryDatasetParquetAzureBlobFsLocationChoice;

  /// Sets `azure_blob_storage_location`.
  const factory DataFactoryDatasetParquetLocation.azureBlobStorageLocation(
    DataFactoryDatasetParquetAzureBlobStorageLocation azureBlobStorageLocation,
  ) = DataFactoryDatasetParquetAzureBlobStorageLocationChoice;

  /// Sets `http_server_location`.
  const factory DataFactoryDatasetParquetLocation.httpServerLocation(
    DataFactoryDatasetParquetHttpServerLocation httpServerLocation,
  ) = DataFactoryDatasetParquetHttpServerLocationChoice;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [DataFactoryDatasetParquetLocation.azureBlobFsLocation] choice: sets `azure_blob_fs_location`.
final class DataFactoryDatasetParquetAzureBlobFsLocationChoice
    extends DataFactoryDatasetParquetLocation {
  const DataFactoryDatasetParquetAzureBlobFsLocationChoice(
    this.azureBlobFsLocation,
  );

  final DataFactoryDatasetParquetAzureBlobFsLocation azureBlobFsLocation;

  @internal
  @override
  String get blockKey => 'azure_blob_fs_location';

  @internal
  @override
  Map<String, Object?> encode() => {
    'azure_blob_fs_location': azureBlobFsLocation.encode(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'azure_blob_fs_location': TfArg.literal(azureBlobFsLocation.encode()),
  };
}

/// The [DataFactoryDatasetParquetLocation.azureBlobStorageLocation] choice: sets `azure_blob_storage_location`.
final class DataFactoryDatasetParquetAzureBlobStorageLocationChoice
    extends DataFactoryDatasetParquetLocation {
  const DataFactoryDatasetParquetAzureBlobStorageLocationChoice(
    this.azureBlobStorageLocation,
  );

  final DataFactoryDatasetParquetAzureBlobStorageLocation
  azureBlobStorageLocation;

  @internal
  @override
  String get blockKey => 'azure_blob_storage_location';

  @internal
  @override
  Map<String, Object?> encode() => {
    'azure_blob_storage_location': azureBlobStorageLocation.encode(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'azure_blob_storage_location': TfArg.literal(
      azureBlobStorageLocation.encode(),
    ),
  };
}

/// The [DataFactoryDatasetParquetLocation.httpServerLocation] choice: sets `http_server_location`.
final class DataFactoryDatasetParquetHttpServerLocationChoice
    extends DataFactoryDatasetParquetLocation {
  const DataFactoryDatasetParquetHttpServerLocationChoice(
    this.httpServerLocation,
  );

  final DataFactoryDatasetParquetHttpServerLocation httpServerLocation;

  @internal
  @override
  String get blockKey => 'http_server_location';

  @internal
  @override
  Map<String, Object?> encode() => {
    'http_server_location': httpServerLocation.encode(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'http_server_location': TfArg.literal(httpServerLocation.encode()),
  };
}

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

  final DataFactoryDatasetParquetType? type;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'name': name.toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const DataFactoryDatasetParquetType._(TfArg<String> _)
    implements TfArg<String> {
  DataFactoryDatasetParquetType.variable(String name)
    : this._(TfArg.variable(name));
  DataFactoryDatasetParquetType.expression(String template)
    : this._(TfArg.expression(template));
  const DataFactoryDatasetParquetType.arg(TfArg<String> arg) : this._(arg);

  static const byte = DataFactoryDatasetParquetType._(TfArgLiteral('Byte'));
  static const byte2 = DataFactoryDatasetParquetType._(TfArgLiteral('Byte[]'));
  static const boolean = DataFactoryDatasetParquetType._(
    TfArgLiteral('Boolean'),
  );
  static const date = DataFactoryDatasetParquetType._(TfArgLiteral('Date'));
  static const datetime = DataFactoryDatasetParquetType._(
    TfArgLiteral('DateTime'),
  );
  static const datetimeoffset = DataFactoryDatasetParquetType._(
    TfArgLiteral('DateTimeOffset'),
  );
  static const decimal = DataFactoryDatasetParquetType._(
    TfArgLiteral('Decimal'),
  );
  static const double = DataFactoryDatasetParquetType._(TfArgLiteral('Double'));
  static const guid = DataFactoryDatasetParquetType._(TfArgLiteral('Guid'));
  static const int16 = DataFactoryDatasetParquetType._(TfArgLiteral('Int16'));
  static const int32 = DataFactoryDatasetParquetType._(TfArgLiteral('Int32'));
  static const int64 = DataFactoryDatasetParquetType._(TfArgLiteral('Int64'));
  static const single = DataFactoryDatasetParquetType._(TfArgLiteral('Single'));
  static const string = DataFactoryDatasetParquetType._(TfArgLiteral('String'));
  static const timespan = DataFactoryDatasetParquetType._(
    TfArgLiteral('TimeSpan'),
  );

  static const List<DataFactoryDatasetParquetType> values = [
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

/// Factory wrapper for `azurerm_data_factory_dataset_parquet`.
final class AzurermDataFactoryDatasetParquet extends Resource {
  static const String tfType = 'azurerm_data_factory_dataset_parquet';

  AzurermDataFactoryDatasetParquet(
    super.localName, {
    TfArg<Map<String, String>>? additionalProperties,
    TfArg<List<String>>? annotations,
    DataFactoryDatasetParquetCompressionCodec? compressionCodec,
    DataFactoryDatasetParquetCompressionLevel? compressionLevel,
    required TfArg<String> dataFactoryId,
    TfArg<String>? description,
    TfArg<String>? folder,
    required TfArg<String> linkedServiceName,
    required TfArg<String> name,
    TfArg<Map<String, String>>? parameters,
    required DataFactoryDatasetParquetLocation location,
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
           ...location.argMap,
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
