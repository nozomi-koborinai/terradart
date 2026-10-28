// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_data_share_dataset_blob_storage`.
const Set<String> _azurermDataShareDatasetBlobStorageSensitive = <String>{};

/// At most one of `file_path`, `folder_path` on `azurerm_data_share_dataset_blob_storage`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.filePath(...)`.
sealed class DataShareDatasetBlobStoragePath {
  const DataShareDatasetBlobStoragePath();

  /// Sets `file_path`.
  const factory DataShareDatasetBlobStoragePath.filePath(
    TfArg<String> filePath,
  ) = DataShareDatasetBlobStorageFilePath;

  /// Sets `folder_path`.
  const factory DataShareDatasetBlobStoragePath.folderPath(
    TfArg<String> folderPath,
  ) = DataShareDatasetBlobStorageFolderPath;

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

/// The [DataShareDatasetBlobStoragePath.filePath] choice: sets `file_path`.
final class DataShareDatasetBlobStorageFilePath
    extends DataShareDatasetBlobStoragePath {
  const DataShareDatasetBlobStorageFilePath(this.filePath);

  final TfArg<String> filePath;

  @internal
  @override
  String get blockKey => 'file_path';

  @internal
  @override
  Map<String, Object?> encode() => {'file_path': filePath.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'file_path': filePath};
}

/// The [DataShareDatasetBlobStoragePath.folderPath] choice: sets `folder_path`.
final class DataShareDatasetBlobStorageFolderPath
    extends DataShareDatasetBlobStoragePath {
  const DataShareDatasetBlobStorageFolderPath(this.folderPath);

  final TfArg<String> folderPath;

  @internal
  @override
  String get blockKey => 'folder_path';

  @internal
  @override
  Map<String, Object?> encode() => {'folder_path': folderPath.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'folder_path': folderPath};
}

/// Typed helper for the `storage_account` block of
/// `azurerm_data_share_dataset_blob_storage` (derived from provider schema).
@immutable
final class DataShareDatasetBlobStorageAccount {
  const DataShareDatasetBlobStorageAccount({
    required this.name,
    required this.resourceGroupName,
    required this.subscriptionId,
  });

  final TfArg<String> name;

  final TfArg<String> resourceGroupName;

  final TfArg<String> subscriptionId;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'resource_group_name': resourceGroupName.toTfJson(),
    'subscription_id': subscriptionId.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_data_share_dataset_blob_storage`.
final class AzurermDataShareDatasetBlobStorage extends Resource {
  static const String tfType = 'azurerm_data_share_dataset_blob_storage';

  AzurermDataShareDatasetBlobStorage(
    super.localName, {
    required TfArg<String> containerName,
    required TfArg<String> dataShareId,
    DataShareDatasetBlobStoragePath? path,
    required TfArg<String> name,
    required DataShareDatasetBlobStorageAccount storageAccount,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'container_name': containerName,
           'data_share_id': dataShareId,
           ...?path?.argMap,
           'name': name,
           'storage_account': TfArg.literal(storageAccount.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDataShareDatasetBlobStorageSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDataShareDatasetBlobStorage>`.
  RefTo<AzurermDataShareDatasetBlobStorage> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `container_name` attribute.
  TfRef<String> get containerName =>
      TfRef.attribute<String>(this, 'container_name');

  /// Reference to `data_share_id` attribute.
  TfRef<String> get dataShareId =>
      TfRef.attribute<String>(this, 'data_share_id');

  /// Reference to `file_path` attribute.
  TfRef<String> get filePath => TfRef.attribute<String>(this, 'file_path');

  /// Reference to `folder_path` attribute.
  TfRef<String> get folderPath => TfRef.attribute<String>(this, 'folder_path');
}
