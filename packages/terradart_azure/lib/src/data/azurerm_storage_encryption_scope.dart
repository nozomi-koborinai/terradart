// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../storage/azurerm_storage_encryption_scope.dart';
import '../storage/azurerm_storage_account.dart' show AzurermStorageAccount;

/// Sensitive field paths for `azurerm_storage_encryption_scope`.
const Set<String> _azurermStorageEncryptionScopeSensitive = <String>{};

/// Factory wrapper for `azurerm_storage_encryption_scope`.
final class DataAzurermStorageEncryptionScope extends Data {
  static const String tfType = 'azurerm_storage_encryption_scope';

  DataAzurermStorageEncryptionScope(
    super.localName, {
    required TfArg<String> name,
    required RefTo<AzurermStorageAccount> storageAccountId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'storage_account_id': storageAccountId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermStorageEncryptionScopeSensitive;

  /// A reference to the `azurerm_storage_encryption_scope` this data source reads, for
  /// arguments typed `RefTo<AzurermStorageEncryptionScope>`.
  RefTo<AzurermStorageEncryptionScope> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `key_vault_key_id` attribute.
  TfRef<String> get keyVaultKeyId =>
      TfRef.attribute<String>(this, 'key_vault_key_id');

  /// Reference to `source` attribute.
  TfRef<String> get source => TfRef.attribute<String>(this, 'source');

  /// Reference to `storage_account_id` attribute.
  TfRef<String> get storageAccountId =>
      TfRef.attribute<String>(this, 'storage_account_id');
}
