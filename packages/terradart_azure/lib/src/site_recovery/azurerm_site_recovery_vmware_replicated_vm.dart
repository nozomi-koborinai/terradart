// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_site_recovery_vmware_replicated_vm`.
const Set<String> _azurermSiteRecoveryVmwareReplicatedVmSensitive = <String>{};

/// Site Recovery Vmware Replicated Vm Default Recovery Disk enum for `default_recovery_disk_type`.
extension type const SiteRecoveryVmwareReplicatedVmDefaultRecoveryDiskType._(
  TfArg<String> _
) implements TfArg<String> {
  SiteRecoveryVmwareReplicatedVmDefaultRecoveryDiskType.variable(String name)
    : this._(TfArg.variable(name));
  SiteRecoveryVmwareReplicatedVmDefaultRecoveryDiskType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const SiteRecoveryVmwareReplicatedVmDefaultRecoveryDiskType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const premiumLrs =
      SiteRecoveryVmwareReplicatedVmDefaultRecoveryDiskType._(
        TfArgLiteral('Premium_LRS'),
      );
  static const premiumv2Lrs =
      SiteRecoveryVmwareReplicatedVmDefaultRecoveryDiskType._(
        TfArgLiteral('PremiumV2_LRS'),
      );
  static const premiumZrs =
      SiteRecoveryVmwareReplicatedVmDefaultRecoveryDiskType._(
        TfArgLiteral('Premium_ZRS'),
      );
  static const standardLrs =
      SiteRecoveryVmwareReplicatedVmDefaultRecoveryDiskType._(
        TfArgLiteral('Standard_LRS'),
      );
  static const standardssdLrs =
      SiteRecoveryVmwareReplicatedVmDefaultRecoveryDiskType._(
        TfArgLiteral('StandardSSD_LRS'),
      );
  static const standardssdZrs =
      SiteRecoveryVmwareReplicatedVmDefaultRecoveryDiskType._(
        TfArgLiteral('StandardSSD_ZRS'),
      );
  static const ultrassdLrs =
      SiteRecoveryVmwareReplicatedVmDefaultRecoveryDiskType._(
        TfArgLiteral('UltraSSD_LRS'),
      );

  static const List<SiteRecoveryVmwareReplicatedVmDefaultRecoveryDiskType>
  values = [
    premiumLrs,
    premiumv2Lrs,
    premiumZrs,
    standardLrs,
    standardssdLrs,
    standardssdZrs,
    ultrassdLrs,
  ];
}

/// Site Recovery Vmware Replicated Vm License enum for `license_type`.
extension type const SiteRecoveryVmwareReplicatedVmLicenseType._(
  TfArg<String> _
) implements TfArg<String> {
  SiteRecoveryVmwareReplicatedVmLicenseType.variable(String name)
    : this._(TfArg.variable(name));
  SiteRecoveryVmwareReplicatedVmLicenseType.expression(String template)
    : this._(TfArg.expression(template));
  const SiteRecoveryVmwareReplicatedVmLicenseType.arg(TfArg<String> arg)
    : this._(arg);

  static const nolicensetype = SiteRecoveryVmwareReplicatedVmLicenseType._(
    TfArgLiteral('NoLicenseType'),
  );
  static const notspecified = SiteRecoveryVmwareReplicatedVmLicenseType._(
    TfArgLiteral('NotSpecified'),
  );
  static const windowsserver = SiteRecoveryVmwareReplicatedVmLicenseType._(
    TfArgLiteral('WindowsServer'),
  );

  static const List<SiteRecoveryVmwareReplicatedVmLicenseType> values = [
    nolicensetype,
    notspecified,
    windowsserver,
  ];
}

/// Exactly one of `default_log_storage_account_id`, `managed_disk` on `azurerm_site_recovery_vmware_replicated_vm`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.defaultLogStorageAccountId(...)`.
sealed class SiteRecoveryVmwareReplicatedVmDiskReplication {
  const SiteRecoveryVmwareReplicatedVmDiskReplication();

  /// Sets `default_log_storage_account_id`.
  const factory SiteRecoveryVmwareReplicatedVmDiskReplication.defaultLogStorageAccountId(
    TfArg<String> defaultLogStorageAccountId,
  ) = SiteRecoveryVmwareReplicatedVmDiskReplicationDefaultLogStorageAccountId;

  /// Sets `managed_disk`.
  const factory SiteRecoveryVmwareReplicatedVmDiskReplication.managedDisk(
    List<SiteRecoveryVmwareReplicatedVmManagedDisk> managedDisk,
  ) = SiteRecoveryVmwareReplicatedVmDiskReplicationManagedDisk;

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

/// The [SiteRecoveryVmwareReplicatedVmDiskReplication.defaultLogStorageAccountId] choice: sets `default_log_storage_account_id`.
final class SiteRecoveryVmwareReplicatedVmDiskReplicationDefaultLogStorageAccountId
    extends SiteRecoveryVmwareReplicatedVmDiskReplication {
  const SiteRecoveryVmwareReplicatedVmDiskReplicationDefaultLogStorageAccountId(
    this.defaultLogStorageAccountId,
  );

  final TfArg<String> defaultLogStorageAccountId;

  @internal
  @override
  String get blockKey => 'default_log_storage_account_id';

  @internal
  @override
  Map<String, Object?> encode() => {
    'default_log_storage_account_id': defaultLogStorageAccountId.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'default_log_storage_account_id': defaultLogStorageAccountId,
  };
}

/// The [SiteRecoveryVmwareReplicatedVmDiskReplication.managedDisk] choice: sets `managed_disk`.
final class SiteRecoveryVmwareReplicatedVmDiskReplicationManagedDisk
    extends SiteRecoveryVmwareReplicatedVmDiskReplication {
  const SiteRecoveryVmwareReplicatedVmDiskReplicationManagedDisk(
    this.managedDisk,
  );

  final List<SiteRecoveryVmwareReplicatedVmManagedDisk> managedDisk;

  @internal
  @override
  String get blockKey => 'managed_disk';

  @internal
  @override
  Map<String, Object?> encode() => {
    'managed_disk': [for (final e in managedDisk) e.encode()],
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'managed_disk': TfArg.literal([for (final e in managedDisk) e.encode()]),
  };
}

/// At most one of `target_availability_set_id`, `target_zone` on `azurerm_site_recovery_vmware_replicated_vm`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.targetAvailabilitySetId(...)`.
sealed class SiteRecoveryVmwareReplicatedVmTarget {
  const SiteRecoveryVmwareReplicatedVmTarget();

  /// Sets `target_availability_set_id`.
  const factory SiteRecoveryVmwareReplicatedVmTarget.targetAvailabilitySetId(
    TfArg<String> targetAvailabilitySetId,
  ) = SiteRecoveryVmwareReplicatedVmTargetAvailabilitySetId;

  /// Sets `target_zone`.
  const factory SiteRecoveryVmwareReplicatedVmTarget.targetZone(
    TfArg<String> targetZone,
  ) = SiteRecoveryVmwareReplicatedVmTargetZone;

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

/// The [SiteRecoveryVmwareReplicatedVmTarget.targetAvailabilitySetId] choice: sets `target_availability_set_id`.
final class SiteRecoveryVmwareReplicatedVmTargetAvailabilitySetId
    extends SiteRecoveryVmwareReplicatedVmTarget {
  const SiteRecoveryVmwareReplicatedVmTargetAvailabilitySetId(
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

/// The [SiteRecoveryVmwareReplicatedVmTarget.targetZone] choice: sets `target_zone`.
final class SiteRecoveryVmwareReplicatedVmTargetZone
    extends SiteRecoveryVmwareReplicatedVmTarget {
  const SiteRecoveryVmwareReplicatedVmTargetZone(this.targetZone);

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

/// Typed helper for the `managed_disk` block of
/// `azurerm_site_recovery_vmware_replicated_vm` (derived from provider schema).
@immutable
final class SiteRecoveryVmwareReplicatedVmManagedDisk {
  const SiteRecoveryVmwareReplicatedVmManagedDisk({
    required this.diskId,
    this.logStorageAccountId,
    this.targetDiskEncryptionSetId,
    required this.targetDiskType,
  });

  final TfArg<String> diskId;

  final TfArg<String>? logStorageAccountId;

  final TfArg<String>? targetDiskEncryptionSetId;

  final TfArg<String> targetDiskType;

  @internal
  Map<String, Object?> encode() => {
    'disk_id': diskId.toTfJson(),
    'log_storage_account_id': ?logStorageAccountId?.toTfJson(),
    'target_disk_encryption_set_id': ?targetDiskEncryptionSetId?.toTfJson(),
    'target_disk_type': targetDiskType.toTfJson(),
  };
}

/// Typed helper for the `network_interface` block of
/// `azurerm_site_recovery_vmware_replicated_vm` (derived from provider schema).
@immutable
final class SiteRecoveryVmwareReplicatedVmNetworkInterface {
  const SiteRecoveryVmwareReplicatedVmNetworkInterface({
    required this.isPrimary,
    required this.sourceMacAddress,
    this.targetStaticIp,
    this.targetSubnetName,
    this.testSubnetName,
  });

  final TfArg<bool> isPrimary;

  final TfArg<String> sourceMacAddress;

  final TfArg<String>? targetStaticIp;

  final TfArg<String>? targetSubnetName;

  final TfArg<String>? testSubnetName;

  @internal
  Map<String, Object?> encode() => {
    'is_primary': isPrimary.toTfJson(),
    'source_mac_address': sourceMacAddress.toTfJson(),
    'target_static_ip': ?targetStaticIp?.toTfJson(),
    'target_subnet_name': ?targetSubnetName?.toTfJson(),
    'test_subnet_name': ?testSubnetName?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_site_recovery_vmware_replicated_vm`.
final class AzurermSiteRecoveryVmwareReplicatedVm extends Resource {
  static const String tfType = 'azurerm_site_recovery_vmware_replicated_vm';

  AzurermSiteRecoveryVmwareReplicatedVm(
    super.localName, {
    required TfArg<String> applianceName,
    required SiteRecoveryVmwareReplicatedVmDiskReplication diskReplication,
    SiteRecoveryVmwareReplicatedVmDefaultRecoveryDiskType?
    defaultRecoveryDiskType,
    TfArg<String>? defaultTargetDiskEncryptionSetId,
    SiteRecoveryVmwareReplicatedVmLicenseType? licenseType,
    TfArg<String>? multiVmGroupName,
    required TfArg<String> name,
    required TfArg<String> physicalServerCredentialName,
    required TfArg<String> recoveryReplicationPolicyId,
    required TfArg<String> recoveryVaultId,
    required TfArg<String> sourceVmName,
    SiteRecoveryVmwareReplicatedVmTarget? target,
    TfArg<String>? targetBootDiagnosticsStorageAccountId,
    TfArg<String>? targetNetworkId,
    TfArg<String>? targetProximityPlacementGroupId,
    required TfArg<String> targetResourceGroupId,
    required TfArg<String> targetVmName,
    TfArg<String>? targetVmSize,
    TfArg<String>? testNetworkId,
    List<SiteRecoveryVmwareReplicatedVmNetworkInterface>? networkInterface,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'appliance_name': applianceName,
           ...diskReplication.argMap,
           'default_recovery_disk_type': ?defaultRecoveryDiskType,
           'default_target_disk_encryption_set_id':
               ?defaultTargetDiskEncryptionSetId,
           'license_type': ?licenseType,
           'multi_vm_group_name': ?multiVmGroupName,
           'name': name,
           'physical_server_credential_name': physicalServerCredentialName,
           'recovery_replication_policy_id': recoveryReplicationPolicyId,
           'recovery_vault_id': recoveryVaultId,
           'source_vm_name': sourceVmName,
           ...?target?.argMap,
           'target_boot_diagnostics_storage_account_id':
               ?targetBootDiagnosticsStorageAccountId,
           'target_network_id': ?targetNetworkId,
           'target_proximity_placement_group_id':
               ?targetProximityPlacementGroupId,
           'target_resource_group_id': targetResourceGroupId,
           'target_vm_name': targetVmName,
           'target_vm_size': ?targetVmSize,
           'test_network_id': ?testNetworkId,
           if (networkInterface != null)
             'network_interface': TfArg.literal([
               for (final e in networkInterface) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSiteRecoveryVmwareReplicatedVmSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSiteRecoveryVmwareReplicatedVm>`.
  RefTo<AzurermSiteRecoveryVmwareReplicatedVm> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `appliance_name` attribute.
  TfRef<String> get applianceName =>
      TfRef.attribute<String>(this, 'appliance_name');

  /// Reference to `default_log_storage_account_id` attribute.
  TfRef<String> get defaultLogStorageAccountId =>
      TfRef.attribute<String>(this, 'default_log_storage_account_id');

  /// Reference to `default_recovery_disk_type` attribute.
  TfRef<String> get defaultRecoveryDiskType =>
      TfRef.attribute<String>(this, 'default_recovery_disk_type');

  /// Reference to `default_target_disk_encryption_set_id` attribute.
  TfRef<String> get defaultTargetDiskEncryptionSetId =>
      TfRef.attribute<String>(this, 'default_target_disk_encryption_set_id');

  /// Reference to `license_type` attribute.
  TfRef<String> get licenseType =>
      TfRef.attribute<String>(this, 'license_type');

  /// Reference to `multi_vm_group_name` attribute.
  TfRef<String> get multiVmGroupName =>
      TfRef.attribute<String>(this, 'multi_vm_group_name');

  /// Reference to `physical_server_credential_name` attribute.
  TfRef<String> get physicalServerCredentialName =>
      TfRef.attribute<String>(this, 'physical_server_credential_name');

  /// Reference to `recovery_replication_policy_id` attribute.
  TfRef<String> get recoveryReplicationPolicyId =>
      TfRef.attribute<String>(this, 'recovery_replication_policy_id');

  /// Reference to `recovery_vault_id` attribute.
  TfRef<String> get recoveryVaultId =>
      TfRef.attribute<String>(this, 'recovery_vault_id');

  /// Reference to `source_vm_name` attribute.
  TfRef<String> get sourceVmName =>
      TfRef.attribute<String>(this, 'source_vm_name');

  /// Reference to `target_availability_set_id` attribute.
  TfRef<String> get targetAvailabilitySetId =>
      TfRef.attribute<String>(this, 'target_availability_set_id');

  /// Reference to `target_boot_diagnostics_storage_account_id` attribute.
  TfRef<String> get targetBootDiagnosticsStorageAccountId =>
      TfRef.attribute<String>(
        this,
        'target_boot_diagnostics_storage_account_id',
      );

  /// Reference to `target_network_id` attribute.
  TfRef<String> get targetNetworkId =>
      TfRef.attribute<String>(this, 'target_network_id');

  /// Reference to `target_proximity_placement_group_id` attribute.
  TfRef<String> get targetProximityPlacementGroupId =>
      TfRef.attribute<String>(this, 'target_proximity_placement_group_id');

  /// Reference to `target_resource_group_id` attribute.
  TfRef<String> get targetResourceGroupId =>
      TfRef.attribute<String>(this, 'target_resource_group_id');

  /// Reference to `target_vm_name` attribute.
  TfRef<String> get targetVmName =>
      TfRef.attribute<String>(this, 'target_vm_name');

  /// Reference to `target_vm_size` attribute.
  TfRef<String> get targetVmSize =>
      TfRef.attribute<String>(this, 'target_vm_size');

  /// Reference to `target_zone` attribute.
  TfRef<String> get targetZone => TfRef.attribute<String>(this, 'target_zone');

  /// Reference to `test_network_id` attribute.
  TfRef<String> get testNetworkId =>
      TfRef.attribute<String>(this, 'test_network_id');
}
