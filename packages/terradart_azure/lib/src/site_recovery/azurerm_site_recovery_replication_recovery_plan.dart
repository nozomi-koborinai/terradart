// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_site_recovery_replication_recovery_plan`.
const Set<String> _azurermSiteRecoveryReplicationRecoveryPlanSensitive =
    <String>{};

/// Typed helper for the `azure_to_azure_settings` block of
/// `azurerm_site_recovery_replication_recovery_plan` (derived from provider schema).
@immutable
final class SiteRecoveryReplicationRecoveryPlanAzureToAzureSettings {
  const SiteRecoveryReplicationRecoveryPlanAzureToAzureSettings({
    this.primaryEdgeZone,
    this.primaryZone,
    this.recoveryEdgeZone,
    this.recoveryZone,
  });

  final TfArg<String>? primaryEdgeZone;

  final TfArg<String>? primaryZone;

  final TfArg<String>? recoveryEdgeZone;

  final TfArg<String>? recoveryZone;

  @internal
  Map<String, Object?> encode() => {
    'primary_edge_zone': ?primaryEdgeZone?.toTfJson(),
    'primary_zone': ?primaryZone?.toTfJson(),
    'recovery_edge_zone': ?recoveryEdgeZone?.toTfJson(),
    'recovery_zone': ?recoveryZone?.toTfJson(),
  };
}

/// Typed helper for the `boot_recovery_group` block of
/// `azurerm_site_recovery_replication_recovery_plan` (derived from provider schema).
@immutable
final class SiteRecoveryReplicationRecoveryPlanBootRecoveryGroup {
  const SiteRecoveryReplicationRecoveryPlanBootRecoveryGroup({
    this.replicatedProtectedItems,
    this.postAction,
    this.preAction,
  });

  final TfArg<List<String>>? replicatedProtectedItems;

  final List<SiteRecoveryReplicationRecoveryPlanPostAction>? postAction;

  final List<SiteRecoveryReplicationRecoveryPlanPreAction>? preAction;

  @internal
  Map<String, Object?> encode() => {
    'replicated_protected_items': ?replicatedProtectedItems?.toTfJson(),
    if (postAction != null)
      'post_action': [for (final e in postAction!) e.encode()],
    if (preAction != null)
      'pre_action': [for (final e in preAction!) e.encode()],
  };
}

/// Typed helper for the `boot_recovery_group.post_action` block of
/// `azurerm_site_recovery_replication_recovery_plan` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SiteRecoveryReplicationRecoveryPlanPostAction {
  const SiteRecoveryReplicationRecoveryPlanPostAction({
    this.fabricLocation,
    required this.failOverDirections,
    required this.failOverTypes,
    this.manualActionInstruction,
    required this.name,
    this.runbookId,
    this.scriptPath,
    required this.type,
  });

  final TfArg<String>? fabricLocation;

  final TfArg<List<String>> failOverDirections;

  final TfArg<List<String>> failOverTypes;

  final TfArg<String>? manualActionInstruction;

  final TfArg<String> name;

  final TfArg<String>? runbookId;

  final TfArg<String>? scriptPath;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'fabric_location': ?fabricLocation?.toTfJson(),
    'fail_over_directions': failOverDirections.toTfJson(),
    'fail_over_types': failOverTypes.toTfJson(),
    'manual_action_instruction': ?manualActionInstruction?.toTfJson(),
    'name': name.toTfJson(),
    'runbook_id': ?runbookId?.toTfJson(),
    'script_path': ?scriptPath?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `boot_recovery_group.pre_action` block of
/// `azurerm_site_recovery_replication_recovery_plan` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SiteRecoveryReplicationRecoveryPlanPreAction {
  const SiteRecoveryReplicationRecoveryPlanPreAction({
    this.fabricLocation,
    required this.failOverDirections,
    required this.failOverTypes,
    this.manualActionInstruction,
    required this.name,
    this.runbookId,
    this.scriptPath,
    required this.type,
  });

  final TfArg<String>? fabricLocation;

  final TfArg<List<String>> failOverDirections;

  final TfArg<List<String>> failOverTypes;

  final TfArg<String>? manualActionInstruction;

  final TfArg<String> name;

  final TfArg<String>? runbookId;

  final TfArg<String>? scriptPath;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'fabric_location': ?fabricLocation?.toTfJson(),
    'fail_over_directions': failOverDirections.toTfJson(),
    'fail_over_types': failOverTypes.toTfJson(),
    'manual_action_instruction': ?manualActionInstruction?.toTfJson(),
    'name': name.toTfJson(),
    'runbook_id': ?runbookId?.toTfJson(),
    'script_path': ?scriptPath?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `failover_recovery_group` block of
/// `azurerm_site_recovery_replication_recovery_plan` (derived from provider schema).
@immutable
final class SiteRecoveryReplicationRecoveryPlanFailoverRecoveryGroup {
  const SiteRecoveryReplicationRecoveryPlanFailoverRecoveryGroup({
    this.postAction,
    this.preAction,
  });

  final List<SiteRecoveryReplicationRecoveryPlanPostAction>? postAction;

  final List<SiteRecoveryReplicationRecoveryPlanPreAction>? preAction;

  @internal
  Map<String, Object?> encode() => {
    if (postAction != null)
      'post_action': [for (final e in postAction!) e.encode()],
    if (preAction != null)
      'pre_action': [for (final e in preAction!) e.encode()],
  };
}

/// Typed helper for the `shutdown_recovery_group` block of
/// `azurerm_site_recovery_replication_recovery_plan` (derived from provider schema).
@immutable
final class SiteRecoveryReplicationRecoveryPlanShutdownRecoveryGroup {
  const SiteRecoveryReplicationRecoveryPlanShutdownRecoveryGroup({
    this.postAction,
    this.preAction,
  });

  final List<SiteRecoveryReplicationRecoveryPlanPostAction>? postAction;

  final List<SiteRecoveryReplicationRecoveryPlanPreAction>? preAction;

  @internal
  Map<String, Object?> encode() => {
    if (postAction != null)
      'post_action': [for (final e in postAction!) e.encode()],
    if (preAction != null)
      'pre_action': [for (final e in preAction!) e.encode()],
  };
}

/// Factory wrapper for `azurerm_site_recovery_replication_recovery_plan`.
final class AzurermSiteRecoveryReplicationRecoveryPlan extends Resource {
  static const String tfType =
      'azurerm_site_recovery_replication_recovery_plan';

  AzurermSiteRecoveryReplicationRecoveryPlan(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> recoveryVaultId,
    required TfArg<String> sourceRecoveryFabricId,
    required TfArg<String> targetRecoveryFabricId,
    SiteRecoveryReplicationRecoveryPlanAzureToAzureSettings?
    azureToAzureSettings,
    required List<SiteRecoveryReplicationRecoveryPlanBootRecoveryGroup>
    bootRecoveryGroup,
    required SiteRecoveryReplicationRecoveryPlanFailoverRecoveryGroup
    failoverRecoveryGroup,
    required SiteRecoveryReplicationRecoveryPlanShutdownRecoveryGroup
    shutdownRecoveryGroup,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'recovery_vault_id': recoveryVaultId,
           'source_recovery_fabric_id': sourceRecoveryFabricId,
           'target_recovery_fabric_id': targetRecoveryFabricId,
           if (azureToAzureSettings != null)
             'azure_to_azure_settings': TfArg.literal(
               azureToAzureSettings.encode(),
             ),
           'boot_recovery_group': TfArg.literal([
             for (final e in bootRecoveryGroup) e.encode(),
           ]),
           'failover_recovery_group': TfArg.literal(
             failoverRecoveryGroup.encode(),
           ),
           'shutdown_recovery_group': TfArg.literal(
             shutdownRecoveryGroup.encode(),
           ),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSiteRecoveryReplicationRecoveryPlanSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSiteRecoveryReplicationRecoveryPlan>`.
  RefTo<AzurermSiteRecoveryReplicationRecoveryPlan> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `recovery_vault_id` attribute.
  TfRef<String> get recoveryVaultId =>
      TfRef.attribute<String>(this, 'recovery_vault_id');

  /// Reference to `source_recovery_fabric_id` attribute.
  TfRef<String> get sourceRecoveryFabricId =>
      TfRef.attribute<String>(this, 'source_recovery_fabric_id');

  /// Reference to `target_recovery_fabric_id` attribute.
  TfRef<String> get targetRecoveryFabricId =>
      TfRef.attribute<String>(this, 'target_recovery_fabric_id');
}
