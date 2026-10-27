// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../data_share/azurerm_data_share_dataset_blob_storage.dart';

/// Sensitive field paths for `azurerm_data_share_dataset_blob_storage`.
const Set<String> _azurermDataShareDatasetBlobStorageSensitive = <String>{};

/// Factory wrapper for `azurerm_data_share_dataset_blob_storage`.
final class DataAzurermDataShareDatasetBlobStorage extends Data {
  static const String tfType = 'azurerm_data_share_dataset_blob_storage';

  DataAzurermDataShareDatasetBlobStorage(
    super.localName, {
    required TfArg<String> dataShareId,
    required TfArg<String> name,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'data_share_id': dataShareId, 'name': name},
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDataShareDatasetBlobStorageSensitive;

  /// A reference to the `azurerm_data_share_dataset_blob_storage` this data source reads, for
  /// arguments typed `RefTo<AzurermDataShareDatasetBlobStorage>`.
  RefTo<AzurermDataShareDatasetBlobStorage> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `container_name` attribute.
  TfRef<String> get containerName =>
      TfRef.attribute<String>(this, 'container_name');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `file_path` attribute.
  TfRef<String> get filePath => TfRef.attribute<String>(this, 'file_path');

  /// Reference to `folder_path` attribute.
  TfRef<String> get folderPath => TfRef.attribute<String>(this, 'folder_path');

  /// Reference to `storage_account` attribute.
  TfRef<List<Map<String, Object?>>> get storageAccount =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'storage_account');

  /// Reference to `data_share_id` attribute.
  TfRef<String> get dataShareId =>
      TfRef.attribute<String>(this, 'data_share_id');
}
