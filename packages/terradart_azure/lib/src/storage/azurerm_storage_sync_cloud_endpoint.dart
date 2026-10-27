// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../storage/azurerm_storage_account.dart' show AzurermStorageAccount;

/// Sensitive field paths for `azurerm_storage_sync_cloud_endpoint`.
const Set<String> _azurermStorageSyncCloudEndpointSensitive = <String>{};

/// Factory wrapper for `azurerm_storage_sync_cloud_endpoint`.
final class AzurermStorageSyncCloudEndpoint extends Resource {
  static const String tfType = 'azurerm_storage_sync_cloud_endpoint';

  AzurermStorageSyncCloudEndpoint(
    super.localName, {
    required TfArg<String> fileShareName,
    required TfArg<String> name,
    required RefTo<AzurermStorageAccount> storageAccountId,
    TfArg<String>? storageAccountTenantId,
    required TfArg<String> storageSyncGroupId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'file_share_name': fileShareName,
           'name': name,
           'storage_account_id': storageAccountId.encodeAs('id'),
           'storage_account_tenant_id': ?storageAccountTenantId,
           'storage_sync_group_id': storageSyncGroupId,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermStorageSyncCloudEndpointSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermStorageSyncCloudEndpoint>`.
  RefTo<AzurermStorageSyncCloudEndpoint> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `file_share_name` attribute.
  TfRef<String> get fileShareName =>
      TfRef.attribute<String>(this, 'file_share_name');

  /// Reference to `storage_account_id` attribute.
  TfRef<String> get storageAccountId =>
      TfRef.attribute<String>(this, 'storage_account_id');

  /// Reference to `storage_account_tenant_id` attribute.
  TfRef<String> get storageAccountTenantId =>
      TfRef.attribute<String>(this, 'storage_account_tenant_id');

  /// Reference to `storage_sync_group_id` attribute.
  TfRef<String> get storageSyncGroupId =>
      TfRef.attribute<String>(this, 'storage_sync_group_id');
}
