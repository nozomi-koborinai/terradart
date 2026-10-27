// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../storage/azurerm_storage_account.dart' show AzurermStorageAccount;

/// Sensitive field paths for `azurerm_data_share_dataset_data_lake_gen2`.
const Set<String> _azurermDataShareDatasetDataLakeGen2Sensitive = <String>{};

/// Factory wrapper for `azurerm_data_share_dataset_data_lake_gen2`.
final class AzurermDataShareDatasetDataLakeGen2 extends Resource {
  static const String tfType = 'azurerm_data_share_dataset_data_lake_gen2';

  AzurermDataShareDatasetDataLakeGen2(
    super.localName, {
    TfArg<String>? filePath,
    required TfArg<String> fileSystemName,
    TfArg<String>? folderPath,
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
           'file_path': ?filePath,
           'file_system_name': fileSystemName,
           'folder_path': ?folderPath,
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
