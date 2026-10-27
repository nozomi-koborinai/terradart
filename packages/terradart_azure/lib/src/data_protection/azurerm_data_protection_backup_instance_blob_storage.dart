// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../storage/azurerm_storage_account.dart' show AzurermStorageAccount;

/// Sensitive field paths for `azurerm_data_protection_backup_instance_blob_storage`.
const Set<String> _azurermDataProtectionBackupInstanceBlobStorageSensitive =
    <String>{};

/// Factory wrapper for `azurerm_data_protection_backup_instance_blob_storage`.
final class AzurermDataProtectionBackupInstanceBlobStorage extends Resource {
  static const String tfType =
      'azurerm_data_protection_backup_instance_blob_storage';

  AzurermDataProtectionBackupInstanceBlobStorage(
    super.localName, {
    required TfArg<String> backupPolicyId,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<List<String>>? storageAccountContainerNames,
    required RefTo<AzurermStorageAccount> storageAccountId,
    required TfArg<String> vaultId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'backup_policy_id': backupPolicyId,
           'location': location,
           'name': name,
           'storage_account_container_names': ?storageAccountContainerNames,
           'storage_account_id': storageAccountId.encodeAs('id'),
           'vault_id': vaultId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDataProtectionBackupInstanceBlobStorageSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDataProtectionBackupInstanceBlobStorage>`.
  RefTo<AzurermDataProtectionBackupInstanceBlobStorage> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `protection_state` attribute.
  TfRef<String> get protectionState =>
      TfRef.attribute<String>(this, 'protection_state');

  /// Reference to `backup_policy_id` attribute.
  TfRef<String> get backupPolicyId =>
      TfRef.attribute<String>(this, 'backup_policy_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `storage_account_container_names` attribute.
  TfRef<List<String>> get storageAccountContainerNames =>
      TfRef.attribute<List<String>>(this, 'storage_account_container_names');

  /// Reference to `storage_account_id` attribute.
  TfRef<String> get storageAccountId =>
      TfRef.attribute<String>(this, 'storage_account_id');

  /// Reference to `vault_id` attribute.
  TfRef<String> get vaultId => TfRef.attribute<String>(this, 'vault_id');
}
