// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../site_recovery/azurerm_site_recovery_replication_recovery_plan.dart';

/// Sensitive field paths for `azurerm_site_recovery_replication_recovery_plan`.
const Set<String> _azurermSiteRecoveryReplicationRecoveryPlanSensitive =
    <String>{};

/// Factory wrapper for `azurerm_site_recovery_replication_recovery_plan`.
final class DataAzurermSiteRecoveryReplicationRecoveryPlan extends Data {
  static const String tfType =
      'azurerm_site_recovery_replication_recovery_plan';

  DataAzurermSiteRecoveryReplicationRecoveryPlan(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> recoveryVaultId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, 'recovery_vault_id': recoveryVaultId},
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSiteRecoveryReplicationRecoveryPlanSensitive;

  /// A reference to the `azurerm_site_recovery_replication_recovery_plan` this data source reads, for
  /// arguments typed `RefTo<AzurermSiteRecoveryReplicationRecoveryPlan>`.
  RefTo<AzurermSiteRecoveryReplicationRecoveryPlan> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `azure_to_azure_settings` attribute.
  TfRef<List<Map<String, Object?>>> get azureToAzureSettings =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'azure_to_azure_settings',
      );

  /// Reference to `failover_deployment_model` attribute.
  TfRef<String> get failoverDeploymentModel =>
      TfRef.attribute<String>(this, 'failover_deployment_model');

  /// Reference to `recovery_group` attribute.
  TfRef<List<Map<String, Object?>>> get recoveryGroup =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'recovery_group');

  /// Reference to `source_recovery_fabric_id` attribute.
  TfRef<String> get sourceRecoveryFabricId =>
      TfRef.attribute<String>(this, 'source_recovery_fabric_id');

  /// Reference to `target_recovery_fabric_id` attribute.
  TfRef<String> get targetRecoveryFabricId =>
      TfRef.attribute<String>(this, 'target_recovery_fabric_id');

  /// Reference to `recovery_vault_id` attribute.
  TfRef<String> get recoveryVaultId =>
      TfRef.attribute<String>(this, 'recovery_vault_id');
}
