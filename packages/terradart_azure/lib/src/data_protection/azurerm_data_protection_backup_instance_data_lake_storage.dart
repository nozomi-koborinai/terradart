// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../storage/azurerm_storage_account.dart' show AzurermStorageAccount;

/// Sensitive field paths for `azurerm_data_protection_backup_instance_data_lake_storage`.
const Set<String> _azurermDataProtectionBackupInstanceDataLakeStorageSensitive =
    <String>{};

/// Factory wrapper for `azurerm_data_protection_backup_instance_data_lake_storage`.
final class AzurermDataProtectionBackupInstanceDataLakeStorage
    extends Resource {
  static const String tfType =
      'azurerm_data_protection_backup_instance_data_lake_storage';

  AzurermDataProtectionBackupInstanceDataLakeStorage(
    super.localName, {
    required TfArg<String> backupPolicyDataLakeStorageId,
    required TfArg<String> dataProtectionBackupVaultId,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermStorageAccount> storageAccountId,
    required TfArg<List<String>> storageContainerNames,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'backup_policy_data_lake_storage_id': backupPolicyDataLakeStorageId,
           'data_protection_backup_vault_id': dataProtectionBackupVaultId,
           'location': location,
           'name': name,
           'storage_account_id': storageAccountId.encodeAs('id'),
           'storage_container_names': storageContainerNames,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDataProtectionBackupInstanceDataLakeStorageSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDataProtectionBackupInstanceDataLakeStorage>`.
  RefTo<AzurermDataProtectionBackupInstanceDataLakeStorage> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `protection_state` attribute.
  TfRef<String> get protectionState =>
      TfRef.attribute<String>(this, 'protection_state');

  /// Reference to `backup_policy_data_lake_storage_id` attribute.
  TfRef<String> get backupPolicyDataLakeStorageId =>
      TfRef.attribute<String>(this, 'backup_policy_data_lake_storage_id');

  /// Reference to `data_protection_backup_vault_id` attribute.
  TfRef<String> get dataProtectionBackupVaultId =>
      TfRef.attribute<String>(this, 'data_protection_backup_vault_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `storage_account_id` attribute.
  TfRef<String> get storageAccountId =>
      TfRef.attribute<String>(this, 'storage_account_id');

  /// Reference to `storage_container_names` attribute.
  TfRef<List<String>> get storageContainerNames =>
      TfRef.attribute<List<String>>(this, 'storage_container_names');
}
