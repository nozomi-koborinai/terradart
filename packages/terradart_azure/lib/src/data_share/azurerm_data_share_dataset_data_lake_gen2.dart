// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../storage/azurerm_storage_account.dart' show AzurermStorageAccount;

/// Sensitive field paths for `azurerm_data_share_dataset_data_lake_gen2`.
const Set<String> _azurermDataShareDatasetDataLakeGen2Sensitive = <String>{};

/// At most one of `file_path`, `folder_path` on `azurerm_data_share_dataset_data_lake_gen2`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.filePath(...)`.
sealed class DataShareDatasetDataLakeGen2Path {
  const DataShareDatasetDataLakeGen2Path();

  /// Sets `file_path`.
  const factory DataShareDatasetDataLakeGen2Path.filePath(
    TfArg<String> filePath,
  ) = DataShareDatasetDataLakeGen2FilePath;

  /// Sets `folder_path`.
  const factory DataShareDatasetDataLakeGen2Path.folderPath(
    TfArg<String> folderPath,
  ) = DataShareDatasetDataLakeGen2FolderPath;

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

/// The [DataShareDatasetDataLakeGen2Path.filePath] choice: sets `file_path`.
final class DataShareDatasetDataLakeGen2FilePath
    extends DataShareDatasetDataLakeGen2Path {
  const DataShareDatasetDataLakeGen2FilePath(this.filePath);

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

/// The [DataShareDatasetDataLakeGen2Path.folderPath] choice: sets `folder_path`.
final class DataShareDatasetDataLakeGen2FolderPath
    extends DataShareDatasetDataLakeGen2Path {
  const DataShareDatasetDataLakeGen2FolderPath(this.folderPath);

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

/// Factory wrapper for `azurerm_data_share_dataset_data_lake_gen2`.
final class AzurermDataShareDatasetDataLakeGen2 extends Resource {
  static const String tfType = 'azurerm_data_share_dataset_data_lake_gen2';

  AzurermDataShareDatasetDataLakeGen2(
    super.localName, {
    DataShareDatasetDataLakeGen2Path? path,
    required TfArg<String> fileSystemName,
    required TfArg<String> name,
    required TfArg<String> shareId,
    required RefTo<AzurermStorageAccount> storageAccountId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...?path?.argMap,
           'file_system_name': fileSystemName,
           'name': name,
           'share_id': shareId,
           'storage_account_id': storageAccountId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDataShareDatasetDataLakeGen2Sensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDataShareDatasetDataLakeGen2>`.
  RefTo<AzurermDataShareDatasetDataLakeGen2> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `file_path` attribute.
  TfRef<String> get filePath => TfRef.attribute<String>(this, 'file_path');

  /// Reference to `file_system_name` attribute.
  TfRef<String> get fileSystemName =>
      TfRef.attribute<String>(this, 'file_system_name');

  /// Reference to `folder_path` attribute.
  TfRef<String> get folderPath => TfRef.attribute<String>(this, 'folder_path');

  /// Reference to `share_id` attribute.
  TfRef<String> get shareId => TfRef.attribute<String>(this, 'share_id');

  /// Reference to `storage_account_id` attribute.
  TfRef<String> get storageAccountId =>
      TfRef.attribute<String>(this, 'storage_account_id');
}
