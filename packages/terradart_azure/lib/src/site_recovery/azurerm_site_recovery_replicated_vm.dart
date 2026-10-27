// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_site_recovery_replicated_vm`.
const Set<String> _azurermSiteRecoveryReplicatedVmSensitive = <String>{};

/// At most one of `target_availability_set_id`, `target_zone` on `azurerm_site_recovery_replicated_vm`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.targetAvailabilitySetId(...)`.
sealed class SiteRecoveryReplicatedVmTarget {
  const SiteRecoveryReplicatedVmTarget();

  /// Sets `target_availability_set_id`.
  const factory SiteRecoveryReplicatedVmTarget.targetAvailabilitySetId(
    TfArg<String> targetAvailabilitySetId,
  ) = SiteRecoveryReplicatedVmTargetAvailabilitySetId;

  /// Sets `target_zone`.
  const factory SiteRecoveryReplicatedVmTarget.targetZone(
    TfArg<String> targetZone,
  ) = SiteRecoveryReplicatedVmTargetZone;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [SiteRecoveryReplicatedVmTarget.targetAvailabilitySetId] choice: sets `target_availability_set_id`.
final class SiteRecoveryReplicatedVmTargetAvailabilitySetId
    extends SiteRecoveryReplicatedVmTarget {
  const SiteRecoveryReplicatedVmTargetAvailabilitySetId(
    this.targetAvailabilitySetId,
  );

  final TfArg<String> targetAvailabilitySetId;

  @internal
  @override
  String get blockKey => 'target_availability_set_id';

  @internal
  @override
  Map<String, Object?> encode() => {
    'target_availability_set_id': targetAvailabilitySetId.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'target_availability_set_id': targetAvailabilitySetId,
  };
}

/// The [SiteRecoveryReplicatedVmTarget.targetZone] choice: sets `target_zone`.
final class SiteRecoveryReplicatedVmTargetZone
    extends SiteRecoveryReplicatedVmTarget {
  const SiteRecoveryReplicatedVmTargetZone(this.targetZone);

  final TfArg<String> targetZone;

  @internal
  @override
  String get blockKey => 'target_zone';

  @internal
  @override
  Map<String, Object?> encode() => {'target_zone': targetZone.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'target_zone': targetZone};
}

/// Factory wrapper for `azurerm_site_recovery_replicated_vm`.
final class AzurermSiteRecoveryReplicatedVm extends Resource {
  static const String tfType = 'azurerm_site_recovery_replicated_vm';

  AzurermSiteRecoveryReplicatedVm(
    super.localName, {
    TfArg<List<Map<String, Object?>>>? managedDisk,
    TfArg<String>? multiVmGroupName,
    required TfArg<String> name,
    TfArg<List<Map<String, Object?>>>? networkInterface,
    required TfArg<String> recoveryReplicationPolicyId,
    required TfArg<String> recoveryVaultName,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> sourceRecoveryFabricName,
    required TfArg<String> sourceRecoveryProtectionContainerName,
    required TfArg<String> sourceVmId,
    SiteRecoveryReplicatedVmTarget? target,
    TfArg<String>? targetBootDiagnosticStorageAccountId,
    TfArg<String>? targetCapacityReservationGroupId,
    TfArg<String>? targetEdgeZone,
    TfArg<String>? targetNetworkId,
    TfArg<String>? targetProximityPlacementGroupId,
    required TfArg<String> targetRecoveryFabricId,
    required TfArg<String> targetRecoveryProtectionContainerId,
    required TfArg<String> targetResourceGroupId,
    TfArg<String>? targetVirtualMachineScaleSetId,
    TfArg<String>? targetVirtualMachineSize,
    TfArg<String>? testNetworkId,
    TfArg<List<Map<String, Object?>>>? unmanagedDisk,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'managed_disk': ?managedDisk,
           'multi_vm_group_name': ?multiVmGroupName,
           'name': name,
           'network_interface': ?networkInterface,
           'recovery_replication_policy_id': recoveryReplicationPolicyId,
           'recovery_vault_name': recoveryVaultName,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'source_recovery_fabric_name': sourceRecoveryFabricName,
           'source_recovery_protection_container_name':
               sourceRecoveryProtectionContainerName,
           'source_vm_id': sourceVmId,
           ...?target?.argMap,
           'target_boot_diagnostic_storage_account_id':
               ?targetBootDiagnosticStorageAccountId,
           'target_capacity_reservation_group_id':
               ?targetCapacityReservationGroupId,
           'target_edge_zone': ?targetEdgeZone,
           'target_network_id': ?targetNetworkId,
           'target_proximity_placement_group_id':
               ?targetProximityPlacementGroupId,
           'target_recovery_fabric_id': targetRecoveryFabricId,
           'target_recovery_protection_container_id':
               targetRecoveryProtectionContainerId,
           'target_resource_group_id': targetResourceGroupId,
           'target_virtual_machine_scale_set_id':
               ?targetVirtualMachineScaleSetId,
           'target_virtual_machine_size': ?targetVirtualMachineSize,
           'test_network_id': ?testNetworkId,
           'unmanaged_disk': ?unmanagedDisk,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermSiteRecoveryReplicatedVmSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSiteRecoveryReplicatedVm>`.
  RefTo<AzurermSiteRecoveryReplicatedVm> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `managed_disk` attribute.
  TfRef<List<Map<String, Object?>>> get managedDisk =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'managed_disk');

  /// Reference to `multi_vm_group_name` attribute.
  TfRef<String> get multiVmGroupName =>
      TfRef.attribute<String>(this, 'multi_vm_group_name');

  /// Reference to `network_interface` attribute.
  TfRef<List<Map<String, Object?>>> get networkInterface =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'network_interface');

  /// Reference to `recovery_replication_policy_id` attribute.
  TfRef<String> get recoveryReplicationPolicyId =>
      TfRef.attribute<String>(this, 'recovery_replication_policy_id');

  /// Reference to `recovery_vault_name` attribute.
  TfRef<String> get recoveryVaultName =>
      TfRef.attribute<String>(this, 'recovery_vault_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `source_recovery_fabric_name` attribute.
  TfRef<String> get sourceRecoveryFabricName =>
      TfRef.attribute<String>(this, 'source_recovery_fabric_name');

  /// Reference to `source_recovery_protection_container_name` attribute.
  TfRef<String> get sourceRecoveryProtectionContainerName =>
      TfRef.attribute<String>(
        this,
        'source_recovery_protection_container_name',
      );

  /// Reference to `source_vm_id` attribute.
  TfRef<String> get sourceVmId => TfRef.attribute<String>(this, 'source_vm_id');

  /// Reference to `target_availability_set_id` attribute.
  TfRef<String> get targetAvailabilitySetId =>
      TfRef.attribute<String>(this, 'target_availability_set_id');

  /// Reference to `target_boot_diagnostic_storage_account_id` attribute.
  TfRef<String> get targetBootDiagnosticStorageAccountId =>
      TfRef.attribute<String>(
        this,
        'target_boot_diagnostic_storage_account_id',
      );

  /// Reference to `target_capacity_reservation_group_id` attribute.
  TfRef<String> get targetCapacityReservationGroupId =>
      TfRef.attribute<String>(this, 'target_capacity_reservation_group_id');

  /// Reference to `target_edge_zone` attribute.
  TfRef<String> get targetEdgeZone =>
      TfRef.attribute<String>(this, 'target_edge_zone');

  /// Reference to `target_network_id` attribute.
  TfRef<String> get targetNetworkId =>
      TfRef.attribute<String>(this, 'target_network_id');

  /// Reference to `target_proximity_placement_group_id` attribute.
  TfRef<String> get targetProximityPlacementGroupId =>
      TfRef.attribute<String>(this, 'target_proximity_placement_group_id');

  /// Reference to `target_recovery_fabric_id` attribute.
  TfRef<String> get targetRecoveryFabricId =>
      TfRef.attribute<String>(this, 'target_recovery_fabric_id');

  /// Reference to `target_recovery_protection_container_id` attribute.
  TfRef<String> get targetRecoveryProtectionContainerId =>
      TfRef.attribute<String>(this, 'target_recovery_protection_container_id');

  /// Reference to `target_resource_group_id` attribute.
  TfRef<String> get targetResourceGroupId =>
      TfRef.attribute<String>(this, 'target_resource_group_id');

  /// Reference to `target_virtual_machine_scale_set_id` attribute.
  TfRef<String> get targetVirtualMachineScaleSetId =>
      TfRef.attribute<String>(this, 'target_virtual_machine_scale_set_id');

  /// Reference to `target_virtual_machine_size` attribute.
  TfRef<String> get targetVirtualMachineSize =>
      TfRef.attribute<String>(this, 'target_virtual_machine_size');

  /// Reference to `target_zone` attribute.
  TfRef<String> get targetZone => TfRef.attribute<String>(this, 'target_zone');

  /// Reference to `test_network_id` attribute.
  TfRef<String> get testNetworkId =>
      TfRef.attribute<String>(this, 'test_network_id');

  /// Reference to `unmanaged_disk` attribute.
  TfRef<List<Map<String, Object?>>> get unmanagedDisk =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'unmanaged_disk');
}
