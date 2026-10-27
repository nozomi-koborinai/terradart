// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_data_protection_backup_vault_customer_managed_key`.
const Set<String> _azurermDataProtectionBackupVaultCustomerManagedKeySensitive =
    <String>{};

/// Factory wrapper for `azurerm_data_protection_backup_vault_customer_managed_key`.
final class AzurermDataProtectionBackupVaultCustomerManagedKey
    extends Resource {
  static const String tfType =
      'azurerm_data_protection_backup_vault_customer_managed_key';

  AzurermDataProtectionBackupVaultCustomerManagedKey(
    super.localName, {
    required TfArg<String> dataProtectionBackupVaultId,
    required TfArg<String> keyVaultKeyId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data_protection_backup_vault_id': dataProtectionBackupVaultId,
           'key_vault_key_id': keyVaultKeyId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDataProtectionBackupVaultCustomerManagedKeySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDataProtectionBackupVaultCustomerManagedKey>`.
  RefTo<AzurermDataProtectionBackupVaultCustomerManagedKey> get ref =>
      RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `data_protection_backup_vault_id` attribute.
  TfRef<String> get dataProtectionBackupVaultId =>
      TfRef.attribute<String>(this, 'data_protection_backup_vault_id');

  /// Reference to `key_vault_key_id` attribute.
  TfRef<String> get keyVaultKeyId =>
      TfRef.attribute<String>(this, 'key_vault_key_id');
}
