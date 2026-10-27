// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_site_recovery_network_mapping`.
const Set<String> _azurermSiteRecoveryNetworkMappingSensitive = <String>{};

/// Factory wrapper for `azurerm_site_recovery_network_mapping`.
final class AzurermSiteRecoveryNetworkMapping extends Resource {
  static const String tfType = 'azurerm_site_recovery_network_mapping';

  AzurermSiteRecoveryNetworkMapping(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> recoveryVaultName,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> sourceNetworkId,
    required TfArg<String> sourceRecoveryFabricName,
    required TfArg<String> targetNetworkId,
    required TfArg<String> targetRecoveryFabricName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'recovery_vault_name': recoveryVaultName,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'source_network_id': sourceNetworkId,
           'source_recovery_fabric_name': sourceRecoveryFabricName,
           'target_network_id': targetNetworkId,
           'target_recovery_fabric_name': targetRecoveryFabricName,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSiteRecoveryNetworkMappingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSiteRecoveryNetworkMapping>`.
  RefTo<AzurermSiteRecoveryNetworkMapping> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `recovery_vault_name` attribute.
  TfRef<String> get recoveryVaultName =>
      TfRef.attribute<String>(this, 'recovery_vault_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `source_network_id` attribute.
  TfRef<String> get sourceNetworkId =>
      TfRef.attribute<String>(this, 'source_network_id');

  /// Reference to `source_recovery_fabric_name` attribute.
  TfRef<String> get sourceRecoveryFabricName =>
      TfRef.attribute<String>(this, 'source_recovery_fabric_name');

  /// Reference to `target_network_id` attribute.
  TfRef<String> get targetNetworkId =>
      TfRef.attribute<String>(this, 'target_network_id');

  /// Reference to `target_recovery_fabric_name` attribute.
  TfRef<String> get targetRecoveryFabricName =>
      TfRef.attribute<String>(this, 'target_recovery_fabric_name');
}
