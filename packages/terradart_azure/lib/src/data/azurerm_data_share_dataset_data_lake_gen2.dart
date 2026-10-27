// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../data_share/azurerm_data_share_dataset_data_lake_gen2.dart';

/// Sensitive field paths for `azurerm_data_share_dataset_data_lake_gen2`.
const Set<String> _azurermDataShareDatasetDataLakeGen2Sensitive = <String>{};

/// Factory wrapper for `azurerm_data_share_dataset_data_lake_gen2`.
final class DataAzurermDataShareDatasetDataLakeGen2 extends Data {
  static const String tfType = 'azurerm_data_share_dataset_data_lake_gen2';

  DataAzurermDataShareDatasetDataLakeGen2(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> shareId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, 'share_id': shareId},
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDataShareDatasetDataLakeGen2Sensitive;

  /// A reference to the `azurerm_data_share_dataset_data_lake_gen2` this data source reads, for
  /// arguments typed `RefTo<AzurermDataShareDatasetDataLakeGen2>`.
  RefTo<AzurermDataShareDatasetDataLakeGen2> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

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

  /// Reference to `storage_account_id` attribute.
  TfRef<String> get storageAccountId =>
      TfRef.attribute<String>(this, 'storage_account_id');

  /// Reference to `share_id` attribute.
  TfRef<String> get shareId => TfRef.attribute<String>(this, 'share_id');
}
