// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_data_protection_backup_instance_cosmosdb_account`.
const Set<String> _azurermDataProtectionBackupInstanceCosmosdbAccountSensitive =
    <String>{};

/// Factory wrapper for `azurerm_data_protection_backup_instance_cosmosdb_account`.
final class AzurermDataProtectionBackupInstanceCosmosdbAccount
    extends Resource {
  static const String tfType =
      'azurerm_data_protection_backup_instance_cosmosdb_account';

  AzurermDataProtectionBackupInstanceCosmosdbAccount(
    super.localName, {
    required TfArg<String> cosmosdbAccountId,
    required TfArg<String> dataProtectionBackupPolicyCosmosdbAccountId,
    required TfArg<String> dataProtectionBackupVaultId,
    required TfArg<String> location,
    required TfArg<String> name,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cosmosdb_account_id': cosmosdbAccountId,
           'data_protection_backup_policy_cosmosdb_account_id':
               dataProtectionBackupPolicyCosmosdbAccountId,
           'data_protection_backup_vault_id': dataProtectionBackupVaultId,
           'location': location,
           'name': name,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDataProtectionBackupInstanceCosmosdbAccountSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDataProtectionBackupInstanceCosmosdbAccount>`.
  RefTo<AzurermDataProtectionBackupInstanceCosmosdbAccount> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `protection_state` attribute.
  TfRef<String> get protectionState =>
      TfRef.attribute<String>(this, 'protection_state');

  /// Reference to `cosmosdb_account_id` attribute.
  TfRef<String> get cosmosdbAccountId =>
      TfRef.attribute<String>(this, 'cosmosdb_account_id');

  /// Reference to `data_protection_backup_policy_cosmosdb_account_id` attribute.
  TfRef<String> get dataProtectionBackupPolicyCosmosdbAccountId =>
      TfRef.attribute<String>(
        this,
        'data_protection_backup_policy_cosmosdb_account_id',
      );

  /// Reference to `data_protection_backup_vault_id` attribute.
  TfRef<String> get dataProtectionBackupVaultId =>
      TfRef.attribute<String>(this, 'data_protection_backup_vault_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');
}
