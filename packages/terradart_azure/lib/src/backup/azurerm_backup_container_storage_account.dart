// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;
import '../storage/azurerm_storage_account.dart' show AzurermStorageAccount;

/// Sensitive field paths for `azurerm_backup_container_storage_account`.
const Set<String> _azurermBackupContainerStorageAccountSensitive = <String>{};

/// Factory wrapper for `azurerm_backup_container_storage_account`.
final class AzurermBackupContainerStorageAccount extends Resource {
  static const String tfType = 'azurerm_backup_container_storage_account';

  AzurermBackupContainerStorageAccount(
    super.localName, {
    required TfArg<String> recoveryVaultName,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required RefTo<AzurermStorageAccount> storageAccountId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'recovery_vault_name': recoveryVaultName,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'storage_account_id': storageAccountId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermBackupContainerStorageAccountSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermBackupContainerStorageAccount>`.
  RefTo<AzurermBackupContainerStorageAccount> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `recovery_vault_name` attribute.
  TfRef<String> get recoveryVaultName =>
      TfRef.attribute<String>(this, 'recovery_vault_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `storage_account_id` attribute.
  TfRef<String> get storageAccountId =>
      TfRef.attribute<String>(this, 'storage_account_id');
}
