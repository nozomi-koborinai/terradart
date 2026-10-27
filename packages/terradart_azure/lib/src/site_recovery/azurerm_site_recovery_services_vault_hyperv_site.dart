// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_site_recovery_services_vault_hyperv_site`.
const Set<String> _azurermSiteRecoveryServicesVaultHypervSiteSensitive =
    <String>{};

/// Factory wrapper for `azurerm_site_recovery_services_vault_hyperv_site`.
final class AzurermSiteRecoveryServicesVaultHypervSite extends Resource {
  static const String tfType =
      'azurerm_site_recovery_services_vault_hyperv_site';

  AzurermSiteRecoveryServicesVaultHypervSite(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> recoveryVaultId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, 'recovery_vault_id': recoveryVaultId},
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSiteRecoveryServicesVaultHypervSiteSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSiteRecoveryServicesVaultHypervSite>`.
  RefTo<AzurermSiteRecoveryServicesVaultHypervSite> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `recovery_vault_id` attribute.
  TfRef<String> get recoveryVaultId =>
      TfRef.attribute<String>(this, 'recovery_vault_id');
}
