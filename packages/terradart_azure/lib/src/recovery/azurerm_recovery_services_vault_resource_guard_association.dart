// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_recovery_services_vault_resource_guard_association`.
const Set<String>
_azurermRecoveryServicesVaultResourceGuardAssociationSensitive = <String>{};

/// Factory wrapper for `azurerm_recovery_services_vault_resource_guard_association`.
final class AzurermRecoveryServicesVaultResourceGuardAssociation
    extends Resource {
  static const String tfType =
      'azurerm_recovery_services_vault_resource_guard_association';

  AzurermRecoveryServicesVaultResourceGuardAssociation(
    super.localName, {
    required TfArg<String> resourceGuardId,
    required TfArg<String> vaultId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'resource_guard_id': resourceGuardId, 'vault_id': vaultId},
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermRecoveryServicesVaultResourceGuardAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermRecoveryServicesVaultResourceGuardAssociation>`.
  RefTo<AzurermRecoveryServicesVaultResourceGuardAssociation> get ref =>
      RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `resource_guard_id` attribute.
  TfRef<String> get resourceGuardId =>
      TfRef.attribute<String>(this, 'resource_guard_id');

  /// Reference to `vault_id` attribute.
  TfRef<String> get vaultId => TfRef.attribute<String>(this, 'vault_id');
}
