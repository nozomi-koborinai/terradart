// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_data_factory_dataset_json`.
const Set<String> _azurermDataFactoryDatasetJsonSensitive = <String>{};

/// At most one of `azure_blob_storage_location`, `http_server_location` on `azurerm_data_factory_dataset_json`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.azureBlobStorageLocation(...)`.
sealed class DataFactoryDatasetJsonLocation {
  const DataFactoryDatasetJsonLocation();

  /// Sets `azure_blob_storage_location`.
  const factory DataFactoryDatasetJsonLocation.azureBlobStorageLocation(
    DataFactoryDatasetJsonAzureBlobStorageLocation azureBlobStorageLocation,
  ) = DataFactoryDatasetJsonAzureBlobStorageLocationChoice;

  /// Sets `http_server_location`.
  const factory DataFactoryDatasetJsonLocation.httpServerLocation(
    DataFactoryDatasetJsonHttpServerLocation httpServerLocation,
  ) = DataFactoryDatasetJsonHttpServerLocationChoice;

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

/// The [DataFactoryDatasetJsonLocation.azureBlobStorageLocation] choice: sets `azure_blob_storage_location`.
final class DataFactoryDatasetJsonAzureBlobStorageLocationChoice
    extends DataFactoryDatasetJsonLocation {
  const DataFactoryDatasetJsonAzureBlobStorageLocationChoice(
    this.azureBlobStorageLocation,
  );

  final DataFactoryDatasetJsonAzureBlobStorageLocation azureBlobStorageLocation;

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

/// The [DataFactoryDatasetJsonLocation.httpServerLocation] choice: sets `http_server_location`.
final class DataFactoryDatasetJsonHttpServerLocationChoice
    extends DataFactoryDatasetJsonLocation {
  const DataFactoryDatasetJsonHttpServerLocationChoice(this.httpServerLocation);

  final DataFactoryDatasetJsonHttpServerLocation httpServerLocation;

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

  final DataFactoryDatasetJsonType? type;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'name': name.toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const DataFactoryDatasetJsonType._(TfArg<String> _)
    implements TfArg<String> {
  DataFactoryDatasetJsonType.variable(String name)
    : this._(TfArg.variable(name));
  DataFactoryDatasetJsonType.expression(String template)
    : this._(TfArg.expression(template));
  const DataFactoryDatasetJsonType.arg(TfArg<String> arg) : this._(arg);

  static const byte = DataFactoryDatasetJsonType._(TfArgLiteral('Byte'));
  static const byte2 = DataFactoryDatasetJsonType._(TfArgLiteral('Byte[]'));
  static const boolean = DataFactoryDatasetJsonType._(TfArgLiteral('Boolean'));
  static const date = DataFactoryDatasetJsonType._(TfArgLiteral('Date'));
  static const datetime = DataFactoryDatasetJsonType._(
    TfArgLiteral('DateTime'),
  );
  static const datetimeoffset = DataFactoryDatasetJsonType._(
    TfArgLiteral('DateTimeOffset'),
  );
  static const decimal = DataFactoryDatasetJsonType._(TfArgLiteral('Decimal'));
  static const double = DataFactoryDatasetJsonType._(TfArgLiteral('Double'));
  static const guid = DataFactoryDatasetJsonType._(TfArgLiteral('Guid'));
  static const int16 = DataFactoryDatasetJsonType._(TfArgLiteral('Int16'));
  static const int32 = DataFactoryDatasetJsonType._(TfArgLiteral('Int32'));
  static const int64 = DataFactoryDatasetJsonType._(TfArgLiteral('Int64'));
  static const single = DataFactoryDatasetJsonType._(TfArgLiteral('Single'));
  static const string = DataFactoryDatasetJsonType._(TfArgLiteral('String'));
  static const timespan = DataFactoryDatasetJsonType._(
    TfArgLiteral('TimeSpan'),
  );

  static const List<DataFactoryDatasetJsonType> values = [
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
    DataFactoryDatasetJsonLocation? location,
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
           ...?location?.argMap,
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
