// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_data_factory_dataset_binary`.
const Set<String> _azurermDataFactoryDatasetBinarySensitive = <String>{};

/// At most one of `azure_blob_storage_location`, `http_server_location`, `sftp_server_location` on `azurerm_data_factory_dataset_binary`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.azureBlobStorageLocation(...)`.
sealed class DataFactoryDatasetBinaryLocation {
  const DataFactoryDatasetBinaryLocation();

  /// Sets `azure_blob_storage_location`.
  const factory DataFactoryDatasetBinaryLocation.azureBlobStorageLocation(
    DataFactoryDatasetBinaryAzureBlobStorageLocation azureBlobStorageLocation,
  ) = DataFactoryDatasetBinaryAzureBlobStorageLocationChoice;

  /// Sets `http_server_location`.
  const factory DataFactoryDatasetBinaryLocation.httpServerLocation(
    DataFactoryDatasetBinaryHttpServerLocation httpServerLocation,
  ) = DataFactoryDatasetBinaryHttpServerLocationChoice;

  /// Sets `sftp_server_location`.
  const factory DataFactoryDatasetBinaryLocation.sftpServerLocation(
    DataFactoryDatasetBinarySftpServerLocation sftpServerLocation,
  ) = DataFactoryDatasetBinarySftpServerLocationChoice;

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

/// The [DataFactoryDatasetBinaryLocation.azureBlobStorageLocation] choice: sets `azure_blob_storage_location`.
final class DataFactoryDatasetBinaryAzureBlobStorageLocationChoice
    extends DataFactoryDatasetBinaryLocation {
  const DataFactoryDatasetBinaryAzureBlobStorageLocationChoice(
    this.azureBlobStorageLocation,
  );

  final DataFactoryDatasetBinaryAzureBlobStorageLocation
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

/// The [DataFactoryDatasetBinaryLocation.httpServerLocation] choice: sets `http_server_location`.
final class DataFactoryDatasetBinaryHttpServerLocationChoice
    extends DataFactoryDatasetBinaryLocation {
  const DataFactoryDatasetBinaryHttpServerLocationChoice(
    this.httpServerLocation,
  );

  final DataFactoryDatasetBinaryHttpServerLocation httpServerLocation;

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

/// The [DataFactoryDatasetBinaryLocation.sftpServerLocation] choice: sets `sftp_server_location`.
final class DataFactoryDatasetBinarySftpServerLocationChoice
    extends DataFactoryDatasetBinaryLocation {
  const DataFactoryDatasetBinarySftpServerLocationChoice(
    this.sftpServerLocation,
  );

  final DataFactoryDatasetBinarySftpServerLocation sftpServerLocation;

  @internal
  @override
  String get blockKey => 'sftp_server_location';

  @internal
  @override
  Map<String, Object?> encode() => {
    'sftp_server_location': sftpServerLocation.encode(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'sftp_server_location': TfArg.literal(sftpServerLocation.encode()),
  };
}

/// Typed helper for the `azure_blob_storage_location` block of
/// `azurerm_data_factory_dataset_binary` (derived from provider schema).
@immutable
final class DataFactoryDatasetBinaryAzureBlobStorageLocation {
  const DataFactoryDatasetBinaryAzureBlobStorageLocation({
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

/// Typed helper for the `compression` block of
/// `azurerm_data_factory_dataset_binary` (derived from provider schema).
@immutable
final class DataFactoryDatasetBinaryCompression {
  const DataFactoryDatasetBinaryCompression({this.level, required this.type});

  final DataFactoryDatasetBinaryLevel? level;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'level': ?level?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `level` — derived from the provider schema description.
extension type const DataFactoryDatasetBinaryLevel._(TfArg<String> _)
    implements TfArg<String> {
  DataFactoryDatasetBinaryLevel.variable(String name)
    : this._(TfArg.variable(name));
  DataFactoryDatasetBinaryLevel.expression(String template)
    : this._(TfArg.expression(template));
  const DataFactoryDatasetBinaryLevel.arg(TfArg<String> arg) : this._(arg);

  static const optimal = DataFactoryDatasetBinaryLevel._(
    TfArgLiteral('Optimal'),
  );
  static const fastest = DataFactoryDatasetBinaryLevel._(
    TfArgLiteral('Fastest'),
  );

  static const List<DataFactoryDatasetBinaryLevel> values = [optimal, fastest];
}

/// Typed helper for the `http_server_location` block of
/// `azurerm_data_factory_dataset_binary` (derived from provider schema).
@immutable
final class DataFactoryDatasetBinaryHttpServerLocation {
  const DataFactoryDatasetBinaryHttpServerLocation({
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

/// Typed helper for the `sftp_server_location` block of
/// `azurerm_data_factory_dataset_binary` (derived from provider schema).
@immutable
final class DataFactoryDatasetBinarySftpServerLocation {
  const DataFactoryDatasetBinarySftpServerLocation({
    this.dynamicFilenameEnabled,
    this.dynamicPathEnabled,
    required this.filename,
    required this.path,
  });

  final TfArg<bool>? dynamicFilenameEnabled;

  final TfArg<bool>? dynamicPathEnabled;

  final TfArg<String> filename;

  final TfArg<String> path;

  @internal
  Map<String, Object?> encode() => {
    'dynamic_filename_enabled': ?dynamicFilenameEnabled?.toTfJson(),
    'dynamic_path_enabled': ?dynamicPathEnabled?.toTfJson(),
    'filename': filename.toTfJson(),
    'path': path.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_data_factory_dataset_binary`.
final class AzurermDataFactoryDatasetBinary extends Resource {
  static const String tfType = 'azurerm_data_factory_dataset_binary';

  AzurermDataFactoryDatasetBinary(
    super.localName, {
    TfArg<Map<String, String>>? additionalProperties,
    TfArg<List<String>>? annotations,
    required TfArg<String> dataFactoryId,
    TfArg<String>? description,
    TfArg<String>? folder,
    required TfArg<String> linkedServiceName,
    required TfArg<String> name,
    TfArg<Map<String, String>>? parameters,
    DataFactoryDatasetBinaryLocation? location,
    DataFactoryDatasetBinaryCompression? compression,
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
           ...?location?.argMap,
           if (compression != null)
             'compression': TfArg.literal(compression.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermDataFactoryDatasetBinarySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDataFactoryDatasetBinary>`.
  RefTo<AzurermDataFactoryDatasetBinary> get ref => RefTo.of(this);

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
}
