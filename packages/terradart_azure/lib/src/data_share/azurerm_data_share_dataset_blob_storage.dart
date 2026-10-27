// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_data_share_dataset_blob_storage`.
const Set<String> _azurermDataShareDatasetBlobStorageSensitive = <String>{};

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
    TfArg<String>? filePath,
    TfArg<String>? folderPath,
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
           'file_path': ?filePath,
           'folder_path': ?folderPath,
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
