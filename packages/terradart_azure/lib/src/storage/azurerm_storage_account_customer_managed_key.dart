// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../storage/azurerm_storage_account.dart' show AzurermStorageAccount;

/// Sensitive field paths for `azurerm_storage_account_customer_managed_key`.
const Set<String> _azurermStorageAccountCustomerManagedKeySensitive =
    <String>{};

/// Factory wrapper for `azurerm_storage_account_customer_managed_key`.
final class AzurermStorageAccountCustomerManagedKey extends Resource {
  static const String tfType = 'azurerm_storage_account_customer_managed_key';

  AzurermStorageAccountCustomerManagedKey(
    super.localName, {
    TfArg<String>? federatedIdentityClientId,
    required TfArg<String> keyVaultKeyId,
    required RefTo<AzurermStorageAccount> storageAccountId,
    TfArg<String>? userAssignedIdentityId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'federated_identity_client_id': ?federatedIdentityClientId,
           'key_vault_key_id': keyVaultKeyId,
           'storage_account_id': storageAccountId.encodeAs('id'),
           'user_assigned_identity_id': ?userAssignedIdentityId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermStorageAccountCustomerManagedKeySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermStorageAccountCustomerManagedKey>`.
  RefTo<AzurermStorageAccountCustomerManagedKey> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `federated_identity_client_id` attribute.
  TfRef<String> get federatedIdentityClientId =>
      TfRef.attribute<String>(this, 'federated_identity_client_id');

  /// Reference to `key_vault_key_id` attribute.
  TfRef<String> get keyVaultKeyId =>
      TfRef.attribute<String>(this, 'key_vault_key_id');

  /// Reference to `storage_account_id` attribute.
  TfRef<String> get storageAccountId =>
      TfRef.attribute<String>(this, 'storage_account_id');

  /// Reference to `user_assigned_identity_id` attribute.
  TfRef<String> get userAssignedIdentityId =>
      TfRef.attribute<String>(this, 'user_assigned_identity_id');
}
