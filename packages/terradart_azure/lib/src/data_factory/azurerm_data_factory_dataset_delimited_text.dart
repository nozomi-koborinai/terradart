// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_data_factory_dataset_delimited_text`.
const Set<String> _azurermDataFactoryDatasetDelimitedTextSensitive = <String>{};

/// Data Factory Dataset Delimited Text Compression enum for `compression_codec`.
extension type const DataFactoryDatasetDelimitedTextCompressionCodec._(
  TfArg<String> _
) implements TfArg<String> {
  DataFactoryDatasetDelimitedTextCompressionCodec.variable(String name)
    : this._(TfArg.variable(name));
  DataFactoryDatasetDelimitedTextCompressionCodec.expression(String template)
    : this._(TfArg.expression(template));
  const DataFactoryDatasetDelimitedTextCompressionCodec.arg(TfArg<String> arg)
    : this._(arg);

  static const none = DataFactoryDatasetDelimitedTextCompressionCodec._(
    TfArgLiteral('None'),
  );
  static const bzip2 = DataFactoryDatasetDelimitedTextCompressionCodec._(
    TfArgLiteral('bzip2'),
  );
  static const gzip = DataFactoryDatasetDelimitedTextCompressionCodec._(
    TfArgLiteral('gzip'),
  );
  static const deflate = DataFactoryDatasetDelimitedTextCompressionCodec._(
    TfArgLiteral('deflate'),
  );
  static const zipdeflate = DataFactoryDatasetDelimitedTextCompressionCodec._(
    TfArgLiteral('ZipDeflate'),
  );
  static const targzip = DataFactoryDatasetDelimitedTextCompressionCodec._(
    TfArgLiteral('TarGzip'),
  );
  static const tar = DataFactoryDatasetDelimitedTextCompressionCodec._(
    TfArgLiteral('Tar'),
  );
  static const snappy = DataFactoryDatasetDelimitedTextCompressionCodec._(
    TfArgLiteral('snappy'),
  );
  static const lz4 = DataFactoryDatasetDelimitedTextCompressionCodec._(
    TfArgLiteral('lz4'),
  );

  static const List<DataFactoryDatasetDelimitedTextCompressionCodec> values = [
    none,
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

/// Data Factory Dataset Delimited Text Compression enum for `compression_level`.
extension type const DataFactoryDatasetDelimitedTextCompressionLevel._(
  TfArg<String> _
) implements TfArg<String> {
  DataFactoryDatasetDelimitedTextCompressionLevel.variable(String name)
    : this._(TfArg.variable(name));
  DataFactoryDatasetDelimitedTextCompressionLevel.expression(String template)
    : this._(TfArg.expression(template));
  const DataFactoryDatasetDelimitedTextCompressionLevel.arg(TfArg<String> arg)
    : this._(arg);

  static const optimal = DataFactoryDatasetDelimitedTextCompressionLevel._(
    TfArgLiteral('Optimal'),
  );
  static const fastest = DataFactoryDatasetDelimitedTextCompressionLevel._(
    TfArgLiteral('Fastest'),
  );

  static const List<DataFactoryDatasetDelimitedTextCompressionLevel> values = [
    optimal,
    fastest,
  ];
}

/// Exactly one of `azure_blob_fs_location`, `azure_blob_storage_location`, `http_server_location` on `azurerm_data_factory_dataset_delimited_text`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.azureBlobFsLocation(...)`.
sealed class DataFactoryDatasetDelimitedTextLocation {
  const DataFactoryDatasetDelimitedTextLocation();

  /// Sets `azure_blob_fs_location`.
  const factory DataFactoryDatasetDelimitedTextLocation.azureBlobFsLocation(
    DataFactoryDatasetDelimitedTextAzureBlobFsLocation azureBlobFsLocation,
  ) = DataFactoryDatasetDelimitedTextAzureBlobFsLocationChoice;

  /// Sets `azure_blob_storage_location`.
  const factory DataFactoryDatasetDelimitedTextLocation.azureBlobStorageLocation(
    DataFactoryDatasetDelimitedTextAzureBlobStorageLocation
    azureBlobStorageLocation,
  ) = DataFactoryDatasetDelimitedTextAzureBlobStorageLocationChoice;

  /// Sets `http_server_location`.
  const factory DataFactoryDatasetDelimitedTextLocation.httpServerLocation(
    DataFactoryDatasetDelimitedTextHttpServerLocation httpServerLocation,
  ) = DataFactoryDatasetDelimitedTextHttpServerLocationChoice;

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

/// The [DataFactoryDatasetDelimitedTextLocation.azureBlobFsLocation] choice: sets `azure_blob_fs_location`.
final class DataFactoryDatasetDelimitedTextAzureBlobFsLocationChoice
    extends DataFactoryDatasetDelimitedTextLocation {
  const DataFactoryDatasetDelimitedTextAzureBlobFsLocationChoice(
    this.azureBlobFsLocation,
  );

  final DataFactoryDatasetDelimitedTextAzureBlobFsLocation azureBlobFsLocation;

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

/// The [DataFactoryDatasetDelimitedTextLocation.azureBlobStorageLocation] choice: sets `azure_blob_storage_location`.
final class DataFactoryDatasetDelimitedTextAzureBlobStorageLocationChoice
    extends DataFactoryDatasetDelimitedTextLocation {
  const DataFactoryDatasetDelimitedTextAzureBlobStorageLocationChoice(
    this.azureBlobStorageLocation,
  );

  final DataFactoryDatasetDelimitedTextAzureBlobStorageLocation
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

/// The [DataFactoryDatasetDelimitedTextLocation.httpServerLocation] choice: sets `http_server_location`.
final class DataFactoryDatasetDelimitedTextHttpServerLocationChoice
    extends DataFactoryDatasetDelimitedTextLocation {
  const DataFactoryDatasetDelimitedTextHttpServerLocationChoice(
    this.httpServerLocation,
  );

  final DataFactoryDatasetDelimitedTextHttpServerLocation httpServerLocation;

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
/// `azurerm_data_factory_dataset_delimited_text` (derived from provider schema).
@immutable
final class DataFactoryDatasetDelimitedTextAzureBlobFsLocation {
  const DataFactoryDatasetDelimitedTextAzureBlobFsLocation({
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
/// `azurerm_data_factory_dataset_delimited_text` (derived from provider schema).
@immutable
final class DataFactoryDatasetDelimitedTextAzureBlobStorageLocation {
  const DataFactoryDatasetDelimitedTextAzureBlobStorageLocation({
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
/// `azurerm_data_factory_dataset_delimited_text` (derived from provider schema).
@immutable
final class DataFactoryDatasetDelimitedTextHttpServerLocation {
  const DataFactoryDatasetDelimitedTextHttpServerLocation({
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
/// `azurerm_data_factory_dataset_delimited_text` (derived from provider schema).
@immutable
final class DataFactoryDatasetDelimitedTextSchemaColumn {
  const DataFactoryDatasetDelimitedTextSchemaColumn({
    this.description,
    required this.name,
    this.type,
  });

  final TfArg<String>? description;

  final TfArg<String> name;

  final DataFactoryDatasetDelimitedTextType? type;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'name': name.toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const DataFactoryDatasetDelimitedTextType._(TfArg<String> _)
    implements TfArg<String> {
  DataFactoryDatasetDelimitedTextType.variable(String name)
    : this._(TfArg.variable(name));
  DataFactoryDatasetDelimitedTextType.expression(String template)
    : this._(TfArg.expression(template));
  const DataFactoryDatasetDelimitedTextType.arg(TfArg<String> arg)
    : this._(arg);

  static const byte = DataFactoryDatasetDelimitedTextType._(
    TfArgLiteral('Byte'),
  );
  static const byte2 = DataFactoryDatasetDelimitedTextType._(
    TfArgLiteral('Byte[]'),
  );
  static const boolean = DataFactoryDatasetDelimitedTextType._(
    TfArgLiteral('Boolean'),
  );
  static const date = DataFactoryDatasetDelimitedTextType._(
    TfArgLiteral('Date'),
  );
  static const datetime = DataFactoryDatasetDelimitedTextType._(
    TfArgLiteral('DateTime'),
  );
  static const datetimeoffset = DataFactoryDatasetDelimitedTextType._(
    TfArgLiteral('DateTimeOffset'),
  );
  static const decimal = DataFactoryDatasetDelimitedTextType._(
    TfArgLiteral('Decimal'),
  );
  static const double = DataFactoryDatasetDelimitedTextType._(
    TfArgLiteral('Double'),
  );
  static const guid = DataFactoryDatasetDelimitedTextType._(
    TfArgLiteral('Guid'),
  );
  static const int16 = DataFactoryDatasetDelimitedTextType._(
    TfArgLiteral('Int16'),
  );
  static const int32 = DataFactoryDatasetDelimitedTextType._(
    TfArgLiteral('Int32'),
  );
  static const int64 = DataFactoryDatasetDelimitedTextType._(
    TfArgLiteral('Int64'),
  );
  static const single = DataFactoryDatasetDelimitedTextType._(
    TfArgLiteral('Single'),
  );
  static const string = DataFactoryDatasetDelimitedTextType._(
    TfArgLiteral('String'),
  );
  static const timespan = DataFactoryDatasetDelimitedTextType._(
    TfArgLiteral('TimeSpan'),
  );

  static const List<DataFactoryDatasetDelimitedTextType> values = [
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

/// Factory wrapper for `azurerm_data_factory_dataset_delimited_text`.
final class AzurermDataFactoryDatasetDelimitedText extends Resource {
  static const String tfType = 'azurerm_data_factory_dataset_delimited_text';

  AzurermDataFactoryDatasetDelimitedText(
    super.localName, {
    TfArg<Map<String, String>>? additionalProperties,
    TfArg<List<String>>? annotations,
    TfArg<String>? columnDelimiter,
    DataFactoryDatasetDelimitedTextCompressionCodec? compressionCodec,
    DataFactoryDatasetDelimitedTextCompressionLevel? compressionLevel,
    required TfArg<String> dataFactoryId,
    TfArg<String>? description,
    TfArg<String>? encoding,
    TfArg<String>? escapeCharacter,
    TfArg<bool>? firstRowAsHeader,
    TfArg<String>? folder,
    required TfArg<String> linkedServiceName,
    required TfArg<String> name,
    TfArg<String>? nullValue,
    TfArg<Map<String, String>>? parameters,
    TfArg<String>? quoteCharacter,
    TfArg<String>? rowDelimiter,
    required DataFactoryDatasetDelimitedTextLocation location,
    List<DataFactoryDatasetDelimitedTextSchemaColumn>? schemaColumn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'additional_properties': ?additionalProperties,
           'annotations': ?annotations,
           'column_delimiter': ?columnDelimiter,
           'compression_codec': ?compressionCodec,
           'compression_level': ?compressionLevel,
           'data_factory_id': dataFactoryId,
           'description': ?description,
           'encoding': ?encoding,
           'escape_character': ?escapeCharacter,
           'first_row_as_header': ?firstRowAsHeader,
           'folder': ?folder,
           'linked_service_name': linkedServiceName,
           'name': name,
           'null_value': ?nullValue,
           'parameters': ?parameters,
           'quote_character': ?quoteCharacter,
           'row_delimiter': ?rowDelimiter,
           ...location.argMap,
           if (schemaColumn != null)
             'schema_column': TfArg.literal([
               for (final e in schemaColumn) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDataFactoryDatasetDelimitedTextSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDataFactoryDatasetDelimitedText>`.
  RefTo<AzurermDataFactoryDatasetDelimitedText> get ref => RefTo.of(this);

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

  /// Reference to `column_delimiter` attribute.
  TfRef<String> get columnDelimiter =>
      TfRef.attribute<String>(this, 'column_delimiter');

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

  /// Reference to `encoding` attribute.
  TfRef<String> get encoding => TfRef.attribute<String>(this, 'encoding');

  /// Reference to `escape_character` attribute.
  TfRef<String> get escapeCharacter =>
      TfRef.attribute<String>(this, 'escape_character');

  /// Reference to `first_row_as_header` attribute.
  TfRef<bool> get firstRowAsHeader =>
      TfRef.attribute<bool>(this, 'first_row_as_header');

  /// Reference to `folder` attribute.
  TfRef<String> get folder => TfRef.attribute<String>(this, 'folder');

  /// Reference to `linked_service_name` attribute.
  TfRef<String> get linkedServiceName =>
      TfRef.attribute<String>(this, 'linked_service_name');

  /// Reference to `null_value` attribute.
  TfRef<String> get nullValue => TfRef.attribute<String>(this, 'null_value');

  /// Reference to `parameters` attribute.
  TfRef<Map<String, String>> get parameters =>
      TfRef.attribute<Map<String, String>>(this, 'parameters');

  /// Reference to `quote_character` attribute.
  TfRef<String> get quoteCharacter =>
      TfRef.attribute<String>(this, 'quote_character');

  /// Reference to `row_delimiter` attribute.
  TfRef<String> get rowDelimiter =>
      TfRef.attribute<String>(this, 'row_delimiter');
}
