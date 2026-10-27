// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../key_vault/azurerm_key_vault.dart' show AzurermKeyVault;
import '../storage/azurerm_storage_account.dart' show AzurermStorageAccount;

/// Sensitive field paths for `azurerm_key_vault_managed_storage_account`.
const Set<String> _azurermKeyVaultManagedStorageAccountSensitive = <String>{};

/// Key Vault Managed Storage Account enum for `storage_account_key`.
extension type const KeyVaultManagedStorageAccountKey._(TfArg<String> _)
    implements TfArg<String> {
  KeyVaultManagedStorageAccountKey.variable(String name)
    : this._(TfArg.variable(name));
  KeyVaultManagedStorageAccountKey.expression(String template)
    : this._(TfArg.expression(template));
  const KeyVaultManagedStorageAccountKey.arg(TfArg<String> arg) : this._(arg);

  static const key1 = KeyVaultManagedStorageAccountKey._(TfArgLiteral('key1'));
  static const key2 = KeyVaultManagedStorageAccountKey._(TfArgLiteral('key2'));

  static const List<KeyVaultManagedStorageAccountKey> values = [key1, key2];
}

/// Factory wrapper for `azurerm_key_vault_managed_storage_account`.
final class AzurermKeyVaultManagedStorageAccount extends Resource {
  static const String tfType = 'azurerm_key_vault_managed_storage_account';

  AzurermKeyVaultManagedStorageAccount(
    super.localName, {
    required RefTo<AzurermKeyVault> keyVaultId,
    required TfArg<String> name,
    TfArg<bool>? regenerateKeyAutomatically,
    TfArg<String>? regenerationPeriod,
    required RefTo<AzurermStorageAccount> storageAccountId,
    required KeyVaultManagedStorageAccountKey storageAccountKey,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'key_vault_id': keyVaultId.encodeAs('id'),
           'name': name,
           'regenerate_key_automatically': ?regenerateKeyAutomatically,
           'regeneration_period': ?regenerationPeriod,
           'storage_account_id': storageAccountId.encodeAs('id'),
           'storage_account_key': storageAccountKey,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermKeyVaultManagedStorageAccountSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermKeyVaultManagedStorageAccount>`.
  RefTo<AzurermKeyVaultManagedStorageAccount> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `key_vault_id` attribute.
  TfRef<String> get keyVaultId => TfRef.attribute<String>(this, 'key_vault_id');

  /// Reference to `regenerate_key_automatically` attribute.
  TfRef<bool> get regenerateKeyAutomatically =>
      TfRef.attribute<bool>(this, 'regenerate_key_automatically');

  /// Reference to `regeneration_period` attribute.
  TfRef<String> get regenerationPeriod =>
      TfRef.attribute<String>(this, 'regeneration_period');

  /// Reference to `storage_account_id` attribute.
  TfRef<String> get storageAccountId =>
      TfRef.attribute<String>(this, 'storage_account_id');

  /// Reference to `storage_account_key` attribute.
  TfRef<String> get storageAccountKey =>
      TfRef.attribute<String>(this, 'storage_account_key');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
