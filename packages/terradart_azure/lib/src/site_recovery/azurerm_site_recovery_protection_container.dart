// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_site_recovery_protection_container`.
const Set<String> _azurermSiteRecoveryProtectionContainerSensitive = <String>{};

/// Factory wrapper for `azurerm_site_recovery_protection_container`.
final class AzurermSiteRecoveryProtectionContainer extends Resource {
  static const String tfType = 'azurerm_site_recovery_protection_container';

  AzurermSiteRecoveryProtectionContainer(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> recoveryFabricName,
    required TfArg<String> recoveryVaultName,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'recovery_fabric_name': recoveryFabricName,
           'recovery_vault_name': recoveryVaultName,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSiteRecoveryProtectionContainerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSiteRecoveryProtectionContainer>`.
  RefTo<AzurermSiteRecoveryProtectionContainer> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `recovery_fabric_name` attribute.
  TfRef<String> get recoveryFabricName =>
      TfRef.attribute<String>(this, 'recovery_fabric_name');

  /// Reference to `recovery_vault_name` attribute.
  TfRef<String> get recoveryVaultName =>
      TfRef.attribute<String>(this, 'recovery_vault_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
