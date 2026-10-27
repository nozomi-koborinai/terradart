// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../storage/azurerm_storage_account.dart' show AzurermStorageAccount;

/// Sensitive field paths for `azurerm_storage_encryption_scope`.
const Set<String> _azurermStorageEncryptionScopeSensitive = <String>{};

/// Storage Encryption Scope enum for `source`.
extension type const StorageEncryptionScopeSource._(TfArg<String> _)
    implements TfArg<String> {
  StorageEncryptionScopeSource.variable(String name)
    : this._(TfArg.variable(name));
  StorageEncryptionScopeSource.expression(String template)
    : this._(TfArg.expression(template));
  const StorageEncryptionScopeSource.arg(TfArg<String> arg) : this._(arg);

  static const microsoftKeyvault = StorageEncryptionScopeSource._(
    TfArgLiteral('Microsoft.KeyVault'),
  );
  static const microsoftStorage = StorageEncryptionScopeSource._(
    TfArgLiteral('Microsoft.Storage'),
  );

  static const List<StorageEncryptionScopeSource> values = [
    microsoftKeyvault,
    microsoftStorage,
  ];
}

/// Factory wrapper for `azurerm_storage_encryption_scope`.
final class AzurermStorageEncryptionScope extends Resource {
  static const String tfType = 'azurerm_storage_encryption_scope';

  AzurermStorageEncryptionScope(
    super.localName, {
    TfArg<bool>? infrastructureEncryptionRequired,
    TfArg<String>? keyVaultKeyId,
    required TfArg<String> name,
    required StorageEncryptionScopeSource source,
    required RefTo<AzurermStorageAccount> storageAccountId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'infrastructure_encryption_required':
               ?infrastructureEncryptionRequired,
           'key_vault_key_id': ?keyVaultKeyId,
           'name': name,
           'source': source,
           'storage_account_id': storageAccountId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermStorageEncryptionScopeSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermStorageEncryptionScope>`.
  RefTo<AzurermStorageEncryptionScope> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `infrastructure_encryption_required` attribute.
  TfRef<bool> get infrastructureEncryptionRequired =>
      TfRef.attribute<bool>(this, 'infrastructure_encryption_required');

  /// Reference to `key_vault_key_id` attribute.
  TfRef<String> get keyVaultKeyId =>
      TfRef.attribute<String>(this, 'key_vault_key_id');

  /// Reference to `source` attribute.
  TfRef<String> get source => TfRef.attribute<String>(this, 'source');

  /// Reference to `storage_account_id` attribute.
  TfRef<String> get storageAccountId =>
      TfRef.attribute<String>(this, 'storage_account_id');
}
