// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_site_recovery_hyperv_network_mapping`.
const Set<String> _azurermSiteRecoveryHypervNetworkMappingSensitive =
    <String>{};

/// Factory wrapper for `azurerm_site_recovery_hyperv_network_mapping`.
final class AzurermSiteRecoveryHypervNetworkMapping extends Resource {
  static const String tfType = 'azurerm_site_recovery_hyperv_network_mapping';

  AzurermSiteRecoveryHypervNetworkMapping(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> recoveryVaultId,
    required TfArg<String> sourceNetworkName,
    required TfArg<String> sourceSystemCenterVirtualMachineManagerName,
    required TfArg<String> targetNetworkId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'recovery_vault_id': recoveryVaultId,
           'source_network_name': sourceNetworkName,
           'source_system_center_virtual_machine_manager_name':
               sourceSystemCenterVirtualMachineManagerName,
           'target_network_id': targetNetworkId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSiteRecoveryHypervNetworkMappingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSiteRecoveryHypervNetworkMapping>`.
  RefTo<AzurermSiteRecoveryHypervNetworkMapping> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `recovery_vault_id` attribute.
  TfRef<String> get recoveryVaultId =>
      TfRef.attribute<String>(this, 'recovery_vault_id');

  /// Reference to `source_network_name` attribute.
  TfRef<String> get sourceNetworkName =>
      TfRef.attribute<String>(this, 'source_network_name');

  /// Reference to `source_system_center_virtual_machine_manager_name` attribute.
  TfRef<String> get sourceSystemCenterVirtualMachineManagerName =>
      TfRef.attribute<String>(
        this,
        'source_system_center_virtual_machine_manager_name',
      );

  /// Reference to `target_network_id` attribute.
  TfRef<String> get targetNetworkId =>
      TfRef.attribute<String>(this, 'target_network_id');
}
