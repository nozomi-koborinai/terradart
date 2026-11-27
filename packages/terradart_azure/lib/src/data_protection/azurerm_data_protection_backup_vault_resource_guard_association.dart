// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_data_protection_backup_vault_resource_guard_association`.
const Set<String>
_azurermDataProtectionBackupVaultResourceGuardAssociationSensitive = <String>{};

/// Factory wrapper for `azurerm_data_protection_backup_vault_resource_guard_association`.
final class AzurermDataProtectionBackupVaultResourceGuardAssociation
    extends Resource {
  static const String tfType =
      'azurerm_data_protection_backup_vault_resource_guard_association';

  AzurermDataProtectionBackupVaultResourceGuardAssociation(
    super.localName, {
    required TfArg<String> dataProtectionBackupVaultId,
    required TfArg<String> dataProtectionResourceGuardId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data_protection_backup_vault_id': dataProtectionBackupVaultId,
           'data_protection_resource_guard_id': dataProtectionResourceGuardId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDataProtectionBackupVaultResourceGuardAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDataProtectionBackupVaultResourceGuardAssociation>`.
  RefTo<AzurermDataProtectionBackupVaultResourceGuardAssociation> get ref =>
      RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `data_protection_backup_vault_id` attribute.
  TfRef<String> get dataProtectionBackupVaultId =>
      TfRef.attribute<String>(this, 'data_protection_backup_vault_id');

  /// Reference to `data_protection_resource_guard_id` attribute.
  TfRef<String> get dataProtectionResourceGuardId =>
      TfRef.attribute<String>(this, 'data_protection_resource_guard_id');
}
