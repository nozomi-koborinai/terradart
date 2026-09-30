// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;
import '../compute/google_compute_subnetwork.dart' show GoogleComputeSubnetwork;
import '../iam/google_service_account.dart' show GoogleServiceAccount;
import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_backup_dr_restore_workload`.
const Set<String> _googleBackupDrRestoreWorkloadSensitive = <String>{
  'compute_instance_restore_properties.disks.disk_encryption_key.raw_key',
  'compute_instance_restore_properties.disks.disk_encryption_key.rsa_encrypted_key',
  'compute_instance_restore_properties.instance_encryption_key.raw_key',
  'compute_instance_restore_properties.instance_encryption_key.rsa_encrypted_key',
  'disk_restore_properties.disk_encryption_key.raw_key',
  'disk_restore_properties.disk_encryption_key.rsa_encrypted_key',
};

/// Typed helper for the `compute_instance_restore_properties` block of
/// `google_backup_dr_restore_workload` (derived from provider schema).
@immutable
final class BackupDrRestoreWorkloadComputeInstanceRestoreProperties {
  const BackupDrRestoreWorkloadComputeInstanceRestoreProperties({
    this.canIpForward,
    this.deletionProtection,
    this.description,
    this.hostname,
    this.keyRevocationActionType,
    this.machineType,
    this.minCpuPlatform,
    required this.name,
    this.privateIpv6GoogleAccess,
    this.resourcePolicies,
    this.advancedMachineFeatures,
    this.allocationAffinity,
    this.confidentialInstanceConfig,
    this.disks,
    this.displayDevice,
    this.guestAccelerators,
    this.instanceEncryptionKey,
    this.labels,
    this.metadata,
    this.networkInterfaces,
    this.networkPerformanceConfig,
    this.params,
    this.scheduling,
    this.serviceAccounts,
    this.shieldedInstanceConfig,
    this.tags,
  });

  final TfArg<bool>? canIpForward;

  final TfArg<bool>? deletionProtection;

  final TfArg<String>? description;

  final TfArg<String>? hostname;

  final TfArg<
    BackupDrRestoreWorkloadComputeInstanceRestorePropertiesKeyRevocationActionType
  >?
  keyRevocationActionType;

  final TfArg<String>? machineType;

  final TfArg<String>? minCpuPlatform;

  final TfArg<String> name;

  final TfArg<
    BackupDrRestoreWorkloadComputeInstanceRestorePropertiesPrivateIpv6GoogleAccess
  >?
  privateIpv6GoogleAccess;

  final TfArg<List<String>>? resourcePolicies;

  final BackupDrRestoreWorkloadComputeInstanceRestorePropertiesAdvancedMachineFeatures?
  advancedMachineFeatures;

  final BackupDrRestoreWorkloadComputeInstanceRestorePropertiesAllocationAffinity?
  allocationAffinity;

  final BackupDrRestoreWorkloadComputeInstanceRestorePropertiesConfidentialInstanceConfig?
  confidentialInstanceConfig;

  final List<BackupDrRestoreWorkloadComputeInstanceRestorePropertiesDisks>?
  disks;

  final BackupDrRestoreWorkloadComputeInstanceRestorePropertiesDisplayDevice?
  displayDevice;

  final List<
    BackupDrRestoreWorkloadComputeInstanceRestorePropertiesGuestAccelerators
  >?
  guestAccelerators;

  final BackupDrRestoreWorkloadComputeInstanceRestorePropertiesInstanceEncryptionKey?
  instanceEncryptionKey;

  final List<BackupDrRestoreWorkloadComputeInstanceRestorePropertiesLabels>?
  labels;

  final BackupDrRestoreWorkloadComputeInstanceRestorePropertiesMetadata?
  metadata;

  final List<
    BackupDrRestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaces
  >?
  networkInterfaces;

  final BackupDrRestoreWorkloadComputeInstanceRestorePropertiesNetworkPerformanceConfig?
  networkPerformanceConfig;

  final BackupDrRestoreWorkloadComputeInstanceRestorePropertiesParams? params;

  final BackupDrRestoreWorkloadComputeInstanceRestorePropertiesScheduling?
  scheduling;

  final List<
    BackupDrRestoreWorkloadComputeInstanceRestorePropertiesServiceAccounts
  >?
  serviceAccounts;

  final BackupDrRestoreWorkloadComputeInstanceRestorePropertiesShieldedInstanceConfig?
  shieldedInstanceConfig;

  final BackupDrRestoreWorkloadComputeInstanceRestorePropertiesTags? tags;

  Map<String, Object?> encode() => {
    'can_ip_forward': ?canIpForward?.toTfJson(),
    'deletion_protection': ?deletionProtection?.toTfJson(),
    'description': ?description?.toTfJson(),
    'hostname': ?hostname?.toTfJson(),
    'key_revocation_action_type': ?keyRevocationActionType?.toTfJson(),
    'machine_type': ?machineType?.toTfJson(),
    'min_cpu_platform': ?minCpuPlatform?.toTfJson(),
    'name': name.toTfJson(),
    'private_ipv6_google_access': ?privateIpv6GoogleAccess?.toTfJson(),
    'resource_policies': ?resourcePolicies?.toTfJson(),
    'advanced_machine_features': ?advancedMachineFeatures?.encode(),
    'allocation_affinity': ?allocationAffinity?.encode(),
    'confidential_instance_config': ?confidentialInstanceConfig?.encode(),
    if (disks != null) 'disks': [for (final e in disks!) e.encode()],
    'display_device': ?displayDevice?.encode(),
    if (guestAccelerators != null)
      'guest_accelerators': [for (final e in guestAccelerators!) e.encode()],
    'instance_encryption_key': ?instanceEncryptionKey?.encode(),
    if (labels != null) 'labels': [for (final e in labels!) e.encode()],
    'metadata': ?metadata?.encode(),
    if (networkInterfaces != null)
      'network_interfaces': [for (final e in networkInterfaces!) e.encode()],
    'network_performance_config': ?networkPerformanceConfig?.encode(),
    'params': ?params?.encode(),
    'scheduling': ?scheduling?.encode(),
    if (serviceAccounts != null)
      'service_accounts': [for (final e in serviceAccounts!) e.encode()],
    'shielded_instance_config': ?shieldedInstanceConfig?.encode(),
    'tags': ?tags?.encode(),
  };
}

/// `key_revocation_action_type` — derived from the provider schema description.
enum BackupDrRestoreWorkloadComputeInstanceRestorePropertiesKeyRevocationActionType
    implements TerraformEnum {
  keyRevocationActionTypeUnspecified('KEY_REVOCATION_ACTION_TYPE_UNSPECIFIED'),
  none('NONE'),
  stop('STOP');

  const BackupDrRestoreWorkloadComputeInstanceRestorePropertiesKeyRevocationActionType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `private_ipv6_google_access` — derived from the provider schema description.
enum BackupDrRestoreWorkloadComputeInstanceRestorePropertiesPrivateIpv6GoogleAccess
    implements TerraformEnum {
  instancePrivateIpv6GoogleAccessUnspecified(
    'INSTANCE_PRIVATE_IPV6_GOOGLE_ACCESS_UNSPECIFIED',
  ),
  inheritFromSubnetwork('INHERIT_FROM_SUBNETWORK'),
  enableOutboundVmAccessToGoogle('ENABLE_OUTBOUND_VM_ACCESS_TO_GOOGLE'),
  enableBidirectionalAccessToGoogle('ENABLE_BIDIRECTIONAL_ACCESS_TO_GOOGLE');

  const BackupDrRestoreWorkloadComputeInstanceRestorePropertiesPrivateIpv6GoogleAccess(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `compute_instance_restore_properties.advanced_machine_features` block of
/// `google_backup_dr_restore_workload` (derived from provider schema).
@immutable
final class BackupDrRestoreWorkloadComputeInstanceRestorePropertiesAdvancedMachineFeatures {
  const BackupDrRestoreWorkloadComputeInstanceRestorePropertiesAdvancedMachineFeatures({
    this.enableNestedVirtualization,
    this.enableUefiNetworking,
    this.threadsPerCore,
    this.visibleCoreCount,
  });

  final TfArg<bool>? enableNestedVirtualization;

  final TfArg<bool>? enableUefiNetworking;

  final TfArg<num>? threadsPerCore;

  final TfArg<num>? visibleCoreCount;

  Map<String, Object?> encode() => {
    'enable_nested_virtualization': ?enableNestedVirtualization?.toTfJson(),
    'enable_uefi_networking': ?enableUefiNetworking?.toTfJson(),
    'threads_per_core': ?threadsPerCore?.toTfJson(),
    'visible_core_count': ?visibleCoreCount?.toTfJson(),
  };
}

/// Typed helper for the `compute_instance_restore_properties.allocation_affinity` block of
/// `google_backup_dr_restore_workload` (derived from provider schema).
@immutable
final class BackupDrRestoreWorkloadComputeInstanceRestorePropertiesAllocationAffinity {
  const BackupDrRestoreWorkloadComputeInstanceRestorePropertiesAllocationAffinity({
    this.consumeAllocationType,
    this.key,
    this.values,
  });

  final TfArg<
    BackupDrRestoreWorkloadComputeInstanceRestorePropertiesAllocationAffinityConsumeAllocationType
  >?
  consumeAllocationType;

  final TfArg<String>? key;

  final TfArg<List<String>>? values;

  Map<String, Object?> encode() => {
    'consume_allocation_type': ?consumeAllocationType?.toTfJson(),
    'key': ?key?.toTfJson(),
    'values': ?values?.toTfJson(),
  };
}

/// `consume_allocation_type` — derived from the provider schema description.
enum BackupDrRestoreWorkloadComputeInstanceRestorePropertiesAllocationAffinityConsumeAllocationType
    implements TerraformEnum {
  typeUnspecified('TYPE_UNSPECIFIED'),
  noReservation('NO_RESERVATION'),
  anyReservation('ANY_RESERVATION'),
  specificReservation('SPECIFIC_RESERVATION');

  const BackupDrRestoreWorkloadComputeInstanceRestorePropertiesAllocationAffinityConsumeAllocationType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `compute_instance_restore_properties.confidential_instance_config` block of
/// `google_backup_dr_restore_workload` (derived from provider schema).
@immutable
final class BackupDrRestoreWorkloadComputeInstanceRestorePropertiesConfidentialInstanceConfig {
  const BackupDrRestoreWorkloadComputeInstanceRestorePropertiesConfidentialInstanceConfig({
    this.enableConfidentialCompute,
  });

  final TfArg<bool>? enableConfidentialCompute;

  Map<String, Object?> encode() => {
    'enable_confidential_compute': ?enableConfidentialCompute?.toTfJson(),
  };
}

/// Typed helper for the `compute_instance_restore_properties.disks` block of
/// `google_backup_dr_restore_workload` (derived from provider schema).
@immutable
final class BackupDrRestoreWorkloadComputeInstanceRestorePropertiesDisks {
  const BackupDrRestoreWorkloadComputeInstanceRestorePropertiesDisks({
    this.autoDelete,
    this.boot,
    this.deviceName,
    this.diskInterface,
    this.diskSizeGb,
    this.diskType,
    this.index,
    this.kind,
    this.license,
    this.mode,
    this.savedState,
    this.source,
    this.type,
    this.diskEncryptionKey,
    this.guestOsFeature,
    this.initializeParams,
  });

  final TfArg<bool>? autoDelete;

  final TfArg<bool>? boot;

  final TfArg<String>? deviceName;

  final TfArg<
    BackupDrRestoreWorkloadComputeInstanceRestorePropertiesDisksDiskInterface
  >?
  diskInterface;

  final TfArg<num>? diskSizeGb;

  final TfArg<String>? diskType;

  final TfArg<num>? index;

  final TfArg<String>? kind;

  final TfArg<List<String>>? license;

  final TfArg<BackupDrRestoreWorkloadComputeInstanceRestorePropertiesDisksMode>?
  mode;

  final TfArg<
    BackupDrRestoreWorkloadComputeInstanceRestorePropertiesDisksSavedState
  >?
  savedState;

  final TfArg<String>? source;

  final TfArg<BackupDrRestoreWorkloadComputeInstanceRestorePropertiesDisksType>?
  type;

  final BackupDrRestoreWorkloadComputeInstanceRestorePropertiesDisksDiskEncryptionKey?
  diskEncryptionKey;

  final List<
    BackupDrRestoreWorkloadComputeInstanceRestorePropertiesDisksGuestOsFeature
  >?
  guestOsFeature;

  final BackupDrRestoreWorkloadComputeInstanceRestorePropertiesDisksInitializeParams?
  initializeParams;

  Map<String, Object?> encode() => {
    'auto_delete': ?autoDelete?.toTfJson(),
    'boot': ?boot?.toTfJson(),
    'device_name': ?deviceName?.toTfJson(),
    'disk_interface': ?diskInterface?.toTfJson(),
    'disk_size_gb': ?diskSizeGb?.toTfJson(),
    'disk_type': ?diskType?.toTfJson(),
    'index': ?index?.toTfJson(),
    'kind': ?kind?.toTfJson(),
    'license': ?license?.toTfJson(),
    'mode': ?mode?.toTfJson(),
    'saved_state': ?savedState?.toTfJson(),
    'source': ?source?.toTfJson(),
    'type': ?type?.toTfJson(),
    'disk_encryption_key': ?diskEncryptionKey?.encode(),
    if (guestOsFeature != null)
      'guest_os_feature': [for (final e in guestOsFeature!) e.encode()],
    'initialize_params': ?initializeParams?.encode(),
  };
}

/// `disk_interface` — derived from the provider schema description.
enum BackupDrRestoreWorkloadComputeInstanceRestorePropertiesDisksDiskInterface
    implements TerraformEnum {
  diskInterfaceUnspecified('DISK_INTERFACE_UNSPECIFIED'),
  scsi('SCSI'),
  nvme('NVME'),
  nvdimm('NVDIMM'),
  iscsi('ISCSI');

  const BackupDrRestoreWorkloadComputeInstanceRestorePropertiesDisksDiskInterface(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `mode` — derived from the provider schema description.
enum BackupDrRestoreWorkloadComputeInstanceRestorePropertiesDisksMode
    implements TerraformEnum {
  diskModeUnspecified('DISK_MODE_UNSPECIFIED'),
  readWrite('READ_WRITE'),
  readOnly('READ_ONLY'),
  locked('LOCKED');

  const BackupDrRestoreWorkloadComputeInstanceRestorePropertiesDisksMode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `saved_state` — derived from the provider schema description.
enum BackupDrRestoreWorkloadComputeInstanceRestorePropertiesDisksSavedState
    implements TerraformEnum {
  diskSavedStateUnspecified('DISK_SAVED_STATE_UNSPECIFIED'),
  preserved('PRESERVED');

  const BackupDrRestoreWorkloadComputeInstanceRestorePropertiesDisksSavedState(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `type` — derived from the provider schema description.
enum BackupDrRestoreWorkloadComputeInstanceRestorePropertiesDisksType
    implements TerraformEnum {
  diskTypeUnspecified('DISK_TYPE_UNSPECIFIED'),
  scratch('SCRATCH'),
  persistent('PERSISTENT');

  const BackupDrRestoreWorkloadComputeInstanceRestorePropertiesDisksType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `compute_instance_restore_properties.disks.disk_encryption_key` block of
/// `google_backup_dr_restore_workload` (derived from provider schema).
@immutable
final class BackupDrRestoreWorkloadComputeInstanceRestorePropertiesDisksDiskEncryptionKey {
  const BackupDrRestoreWorkloadComputeInstanceRestorePropertiesDisksDiskEncryptionKey({
    this.kmsKeyName,
    this.kmsKeyServiceAccount,
    this.rawKey,
    this.rsaEncryptedKey,
  });

  final RefTo<GoogleKmsCryptoKey>? kmsKeyName;

  final TfArg<String>? kmsKeyServiceAccount;

  final TfArg<String>? rawKey;

  final TfArg<String>? rsaEncryptedKey;

  Map<String, Object?> encode() => {
    'kms_key_name': ?kmsKeyName?.encodeAs('id').toTfJson(),
    'kms_key_service_account': ?kmsKeyServiceAccount?.toTfJson(),
    'raw_key': ?rawKey?.toTfJson(),
    'rsa_encrypted_key': ?rsaEncryptedKey?.toTfJson(),
  };
}

/// Typed helper for the `compute_instance_restore_properties.disks.guest_os_feature` block of
/// `google_backup_dr_restore_workload` (derived from provider schema).
@immutable
final class BackupDrRestoreWorkloadComputeInstanceRestorePropertiesDisksGuestOsFeature {
  const BackupDrRestoreWorkloadComputeInstanceRestorePropertiesDisksGuestOsFeature({
    this.type,
  });

  final TfArg<
    BackupDrRestoreWorkloadComputeInstanceRestorePropertiesDisksGuestOsFeatureType
  >?
  type;

  Map<String, Object?> encode() => {'type': ?type?.toTfJson()};
}

/// `type` — derived from the provider schema description.
enum BackupDrRestoreWorkloadComputeInstanceRestorePropertiesDisksGuestOsFeatureType
    implements TerraformEnum {
  featureTypeUnspecified('FEATURE_TYPE_UNSPECIFIED'),
  virtioScsiMultiqueue('VIRTIO_SCSI_MULTIQUEUE'),
  windows('WINDOWS'),
  multiIpSubnet('MULTI_IP_SUBNET'),
  uefiCompatible('UEFI_COMPATIBLE'),
  secureBoot('SECURE_BOOT'),
  gvnic('GVNIC'),
  sevCapable('SEV_CAPABLE'),
  bareMetalLinuxCompatible('BARE_METAL_LINUX_COMPATIBLE'),
  suspendResumeCompatible('SUSPEND_RESUME_COMPATIBLE'),
  sevLiveMigratable('SEV_LIVE_MIGRATABLE'),
  sevSnpCapable('SEV_SNP_CAPABLE'),
  tdxCapable('TDX_CAPABLE'),
  idpf('IDPF'),
  sevLiveMigratableV2('SEV_LIVE_MIGRATABLE_V2');

  const BackupDrRestoreWorkloadComputeInstanceRestorePropertiesDisksGuestOsFeatureType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `compute_instance_restore_properties.disks.initialize_params` block of
/// `google_backup_dr_restore_workload` (derived from provider schema).
@immutable
final class BackupDrRestoreWorkloadComputeInstanceRestorePropertiesDisksInitializeParams {
  const BackupDrRestoreWorkloadComputeInstanceRestorePropertiesDisksInitializeParams({
    this.diskName,
    this.replicaZones,
  });

  final TfArg<String>? diskName;

  final TfArg<List<String>>? replicaZones;

  Map<String, Object?> encode() => {
    'disk_name': ?diskName?.toTfJson(),
    'replica_zones': ?replicaZones?.toTfJson(),
  };
}

/// Typed helper for the `compute_instance_restore_properties.display_device` block of
/// `google_backup_dr_restore_workload` (derived from provider schema).
@immutable
final class BackupDrRestoreWorkloadComputeInstanceRestorePropertiesDisplayDevice {
  const BackupDrRestoreWorkloadComputeInstanceRestorePropertiesDisplayDevice({
    this.enableDisplay,
  });

  final TfArg<bool>? enableDisplay;

  Map<String, Object?> encode() => {
    'enable_display': ?enableDisplay?.toTfJson(),
  };
}

/// Typed helper for the `compute_instance_restore_properties.guest_accelerators` block of
/// `google_backup_dr_restore_workload` (derived from provider schema).
@immutable
final class BackupDrRestoreWorkloadComputeInstanceRestorePropertiesGuestAccelerators {
  const BackupDrRestoreWorkloadComputeInstanceRestorePropertiesGuestAccelerators({
    this.acceleratorCount,
    this.acceleratorType,
  });

  final TfArg<num>? acceleratorCount;

  final TfArg<String>? acceleratorType;

  Map<String, Object?> encode() => {
    'accelerator_count': ?acceleratorCount?.toTfJson(),
    'accelerator_type': ?acceleratorType?.toTfJson(),
  };
}

/// Typed helper for the `compute_instance_restore_properties.instance_encryption_key` block of
/// `google_backup_dr_restore_workload` (derived from provider schema).
@immutable
final class BackupDrRestoreWorkloadComputeInstanceRestorePropertiesInstanceEncryptionKey {
  const BackupDrRestoreWorkloadComputeInstanceRestorePropertiesInstanceEncryptionKey({
    this.kmsKeyName,
    this.kmsKeyServiceAccount,
    this.rawKey,
    this.rsaEncryptedKey,
  });

  final RefTo<GoogleKmsCryptoKey>? kmsKeyName;

  final TfArg<String>? kmsKeyServiceAccount;

  final TfArg<String>? rawKey;

  final TfArg<String>? rsaEncryptedKey;

  Map<String, Object?> encode() => {
    'kms_key_name': ?kmsKeyName?.encodeAs('id').toTfJson(),
    'kms_key_service_account': ?kmsKeyServiceAccount?.toTfJson(),
    'raw_key': ?rawKey?.toTfJson(),
    'rsa_encrypted_key': ?rsaEncryptedKey?.toTfJson(),
  };
}

/// Typed helper for the `compute_instance_restore_properties.labels` block of
/// `google_backup_dr_restore_workload` (derived from provider schema).
@immutable
final class BackupDrRestoreWorkloadComputeInstanceRestorePropertiesLabels {
  const BackupDrRestoreWorkloadComputeInstanceRestorePropertiesLabels({
    required this.key,
    this.value,
  });

  final TfArg<String> key;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `compute_instance_restore_properties.metadata` block of
/// `google_backup_dr_restore_workload` (derived from provider schema).
@immutable
final class BackupDrRestoreWorkloadComputeInstanceRestorePropertiesMetadata {
  const BackupDrRestoreWorkloadComputeInstanceRestorePropertiesMetadata({
    this.items,
  });

  final List<
    BackupDrRestoreWorkloadComputeInstanceRestorePropertiesMetadataItems
  >?
  items;

  Map<String, Object?> encode() => {
    if (items != null) 'items': [for (final e in items!) e.encode()],
  };
}

/// Typed helper for the `compute_instance_restore_properties.metadata.items` block of
/// `google_backup_dr_restore_workload` (derived from provider schema).
@immutable
final class BackupDrRestoreWorkloadComputeInstanceRestorePropertiesMetadataItems {
  const BackupDrRestoreWorkloadComputeInstanceRestorePropertiesMetadataItems({
    this.key,
    this.value,
  });

  final TfArg<String>? key;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'key': ?key?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `compute_instance_restore_properties.network_interfaces` block of
/// `google_backup_dr_restore_workload` (derived from provider schema).
@immutable
final class BackupDrRestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaces {
  const BackupDrRestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaces({
    this.internalIpv6PrefixLength,
    this.ipAddress,
    this.ipv6AccessType,
    this.ipv6Address,
    this.network,
    this.networkAttachment,
    this.nicType,
    this.queueCount,
    this.stackType,
    this.subnetwork,
    this.accessConfigs,
    this.aliasIpRanges,
    this.ipv6AccessConfigs,
  });

  final TfArg<num>? internalIpv6PrefixLength;

  final TfArg<String>? ipAddress;

  final TfArg<
    BackupDrRestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfacesIpv6AccessType
  >?
  ipv6AccessType;

  final TfArg<String>? ipv6Address;

  final RefTo<GoogleComputeNetwork>? network;

  final TfArg<String>? networkAttachment;

  final TfArg<
    BackupDrRestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfacesNicType
  >?
  nicType;

  final TfArg<num>? queueCount;

  final TfArg<
    BackupDrRestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfacesStackType
  >?
  stackType;

  final RefTo<GoogleComputeSubnetwork>? subnetwork;

  final List<
    BackupDrRestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfacesAccessConfigs
  >?
  accessConfigs;

  final List<
    BackupDrRestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfacesAliasIpRanges
  >?
  aliasIpRanges;

  final List<
    BackupDrRestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfacesIpv6AccessConfigs
  >?
  ipv6AccessConfigs;

  Map<String, Object?> encode() => {
    'internal_ipv6_prefix_length': ?internalIpv6PrefixLength?.toTfJson(),
    'ip_address': ?ipAddress?.toTfJson(),
    'ipv6_access_type': ?ipv6AccessType?.toTfJson(),
    'ipv6_address': ?ipv6Address?.toTfJson(),
    'network': ?network?.encodeAs('id').toTfJson(),
    'network_attachment': ?networkAttachment?.toTfJson(),
    'nic_type': ?nicType?.toTfJson(),
    'queue_count': ?queueCount?.toTfJson(),
    'stack_type': ?stackType?.toTfJson(),
    'subnetwork': ?subnetwork?.encodeAs('id').toTfJson(),
    if (accessConfigs != null)
      'access_configs': [for (final e in accessConfigs!) e.encode()],
    if (aliasIpRanges != null)
      'alias_ip_ranges': [for (final e in aliasIpRanges!) e.encode()],
    if (ipv6AccessConfigs != null)
      'ipv6_access_configs': [for (final e in ipv6AccessConfigs!) e.encode()],
  };
}

/// `ipv6_access_type` — derived from the provider schema description.
enum BackupDrRestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfacesIpv6AccessType
    implements TerraformEnum {
  unspecifiedIpv6AccessType('UNSPECIFIED_IPV6_ACCESS_TYPE'),
  internal('INTERNAL'),
  external('EXTERNAL');

  const BackupDrRestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfacesIpv6AccessType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `nic_type` — derived from the provider schema description.
enum BackupDrRestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfacesNicType
    implements TerraformEnum {
  nicTypeUnspecified('NIC_TYPE_UNSPECIFIED'),
  virtioNet('VIRTIO_NET'),
  gvnic('GVNIC');

  const BackupDrRestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfacesNicType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `stack_type` — derived from the provider schema description.
enum BackupDrRestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfacesStackType
    implements TerraformEnum {
  stackTypeUnspecified('STACK_TYPE_UNSPECIFIED'),
  ipv4Only('IPV4_ONLY'),
  ipv4Ipv6('IPV4_IPV6');

  const BackupDrRestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfacesStackType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `compute_instance_restore_properties.network_interfaces.access_configs` block of
/// `google_backup_dr_restore_workload` (derived from provider schema).
@immutable
final class BackupDrRestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfacesAccessConfigs {
  const BackupDrRestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfacesAccessConfigs({
    this.externalIp,
    this.externalIpv6,
    this.externalIpv6PrefixLength,
    this.name,
    this.networkTier,
    this.publicPtrDomainName,
    this.setPublicPtr,
    this.type,
  });

  final TfArg<String>? externalIp;

  final TfArg<String>? externalIpv6;

  final TfArg<num>? externalIpv6PrefixLength;

  final TfArg<String>? name;

  final TfArg<
    BackupDrRestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfacesAccessConfigsNetworkTier
  >?
  networkTier;

  final TfArg<String>? publicPtrDomainName;

  final TfArg<bool>? setPublicPtr;

  final TfArg<
    BackupDrRestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfacesAccessConfigsType
  >?
  type;

  Map<String, Object?> encode() => {
    'external_ip': ?externalIp?.toTfJson(),
    'external_ipv6': ?externalIpv6?.toTfJson(),
    'external_ipv6_prefix_length': ?externalIpv6PrefixLength?.toTfJson(),
    'name': ?name?.toTfJson(),
    'network_tier': ?networkTier?.toTfJson(),
    'public_ptr_domain_name': ?publicPtrDomainName?.toTfJson(),
    'set_public_ptr': ?setPublicPtr?.toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// `network_tier` — derived from the provider schema description.
enum BackupDrRestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfacesAccessConfigsNetworkTier
    implements TerraformEnum {
  networkTierUnspecified('NETWORK_TIER_UNSPECIFIED'),
  premium('PREMIUM'),
  standard('STANDARD');

  const BackupDrRestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfacesAccessConfigsNetworkTier(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `type` — derived from the provider schema description.
enum BackupDrRestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfacesAccessConfigsType
    implements TerraformEnum {
  accessTypeUnspecified('ACCESS_TYPE_UNSPECIFIED'),
  oneToOneNat('ONE_TO_ONE_NAT'),
  directIpv6('DIRECT_IPV6');

  const BackupDrRestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfacesAccessConfigsType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `compute_instance_restore_properties.network_interfaces.alias_ip_ranges` block of
/// `google_backup_dr_restore_workload` (derived from provider schema).
@immutable
final class BackupDrRestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfacesAliasIpRanges {
  const BackupDrRestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfacesAliasIpRanges({
    this.ipCidrRange,
    this.subnetworkRangeName,
  });

  final TfArg<String>? ipCidrRange;

  final TfArg<String>? subnetworkRangeName;

  Map<String, Object?> encode() => {
    'ip_cidr_range': ?ipCidrRange?.toTfJson(),
    'subnetwork_range_name': ?subnetworkRangeName?.toTfJson(),
  };
}

/// Typed helper for the `compute_instance_restore_properties.network_interfaces.ipv6_access_configs` block of
/// `google_backup_dr_restore_workload` (derived from provider schema).
@immutable
final class BackupDrRestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfacesIpv6AccessConfigs {
  const BackupDrRestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfacesIpv6AccessConfigs({
    this.externalIp,
    this.externalIpv6,
    this.externalIpv6PrefixLength,
    this.name,
    this.networkTier,
    this.publicPtrDomainName,
    this.setPublicPtr,
    this.type,
  });

  final TfArg<String>? externalIp;

  final TfArg<String>? externalIpv6;

  final TfArg<num>? externalIpv6PrefixLength;

  final TfArg<String>? name;

  final TfArg<
    BackupDrRestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfacesIpv6AccessConfigsNetworkTier
  >?
  networkTier;

  final TfArg<String>? publicPtrDomainName;

  final TfArg<bool>? setPublicPtr;

  final TfArg<
    BackupDrRestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfacesIpv6AccessConfigsType
  >?
  type;

  Map<String, Object?> encode() => {
    'external_ip': ?externalIp?.toTfJson(),
    'external_ipv6': ?externalIpv6?.toTfJson(),
    'external_ipv6_prefix_length': ?externalIpv6PrefixLength?.toTfJson(),
    'name': ?name?.toTfJson(),
    'network_tier': ?networkTier?.toTfJson(),
    'public_ptr_domain_name': ?publicPtrDomainName?.toTfJson(),
    'set_public_ptr': ?setPublicPtr?.toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// `network_tier` — derived from the provider schema description.
enum BackupDrRestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfacesIpv6AccessConfigsNetworkTier
    implements TerraformEnum {
  networkTierUnspecified('NETWORK_TIER_UNSPECIFIED'),
  premium('PREMIUM'),
  standard('STANDARD');

  const BackupDrRestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfacesIpv6AccessConfigsNetworkTier(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `type` — derived from the provider schema description.
enum BackupDrRestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfacesIpv6AccessConfigsType
    implements TerraformEnum {
  accessTypeUnspecified('ACCESS_TYPE_UNSPECIFIED'),
  oneToOneNat('ONE_TO_ONE_NAT'),
  directIpv6('DIRECT_IPV6');

  const BackupDrRestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfacesIpv6AccessConfigsType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `compute_instance_restore_properties.network_performance_config` block of
/// `google_backup_dr_restore_workload` (derived from provider schema).
@immutable
final class BackupDrRestoreWorkloadComputeInstanceRestorePropertiesNetworkPerformanceConfig {
  const BackupDrRestoreWorkloadComputeInstanceRestorePropertiesNetworkPerformanceConfig({
    this.totalEgressBandwidthTier,
  });

  final TfArg<
    BackupDrRestoreWorkloadComputeInstanceRestorePropertiesNetworkPerformanceConfigTotalEgressBandwidthTier
  >?
  totalEgressBandwidthTier;

  Map<String, Object?> encode() => {
    'total_egress_bandwidth_tier': ?totalEgressBandwidthTier?.toTfJson(),
  };
}

/// `total_egress_bandwidth_tier` — derived from the provider schema description.
enum BackupDrRestoreWorkloadComputeInstanceRestorePropertiesNetworkPerformanceConfigTotalEgressBandwidthTier
    implements TerraformEnum {
  tierUnspecified('TIER_UNSPECIFIED'),
  defaultCase('DEFAULT'),
  tier1('TIER_1');

  const BackupDrRestoreWorkloadComputeInstanceRestorePropertiesNetworkPerformanceConfigTotalEgressBandwidthTier(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `compute_instance_restore_properties.params` block of
/// `google_backup_dr_restore_workload` (derived from provider schema).
@immutable
final class BackupDrRestoreWorkloadComputeInstanceRestorePropertiesParams {
  const BackupDrRestoreWorkloadComputeInstanceRestorePropertiesParams({
    this.resourceManagerTags,
  });

  final List<
    BackupDrRestoreWorkloadComputeInstanceRestorePropertiesParamsResourceManagerTags
  >?
  resourceManagerTags;

  Map<String, Object?> encode() => {
    if (resourceManagerTags != null)
      'resource_manager_tags': [
        for (final e in resourceManagerTags!) e.encode(),
      ],
  };
}

/// Typed helper for the `compute_instance_restore_properties.params.resource_manager_tags` block of
/// `google_backup_dr_restore_workload` (derived from provider schema).
@immutable
final class BackupDrRestoreWorkloadComputeInstanceRestorePropertiesParamsResourceManagerTags {
  const BackupDrRestoreWorkloadComputeInstanceRestorePropertiesParamsResourceManagerTags({
    required this.key,
    this.value,
  });

  final TfArg<String> key;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `compute_instance_restore_properties.scheduling` block of
/// `google_backup_dr_restore_workload` (derived from provider schema).
@immutable
final class BackupDrRestoreWorkloadComputeInstanceRestorePropertiesScheduling {
  const BackupDrRestoreWorkloadComputeInstanceRestorePropertiesScheduling({
    this.automaticRestart,
    this.instanceTerminationAction,
    this.minNodeCpus,
    this.onHostMaintenance,
    this.preemptible,
    this.provisioningModel,
    this.terminationTime,
    this.localSsdRecoveryTimeout,
    this.maxRunDuration,
    this.nodeAffinities,
  });

  final TfArg<bool>? automaticRestart;

  final TfArg<
    BackupDrRestoreWorkloadComputeInstanceRestorePropertiesSchedulingInstanceTerminationAction
  >?
  instanceTerminationAction;

  final TfArg<num>? minNodeCpus;

  final TfArg<
    BackupDrRestoreWorkloadComputeInstanceRestorePropertiesSchedulingOnHostMaintenance
  >?
  onHostMaintenance;

  final TfArg<bool>? preemptible;

  final TfArg<
    BackupDrRestoreWorkloadComputeInstanceRestorePropertiesSchedulingProvisioningModel
  >?
  provisioningModel;

  final TfArg<String>? terminationTime;

  final BackupDrRestoreWorkloadComputeInstanceRestorePropertiesSchedulingLocalSsdRecoveryTimeout?
  localSsdRecoveryTimeout;

  final BackupDrRestoreWorkloadComputeInstanceRestorePropertiesSchedulingMaxRunDuration?
  maxRunDuration;

  final List<
    BackupDrRestoreWorkloadComputeInstanceRestorePropertiesSchedulingNodeAffinities
  >?
  nodeAffinities;

  Map<String, Object?> encode() => {
    'automatic_restart': ?automaticRestart?.toTfJson(),
    'instance_termination_action': ?instanceTerminationAction?.toTfJson(),
    'min_node_cpus': ?minNodeCpus?.toTfJson(),
    'on_host_maintenance': ?onHostMaintenance?.toTfJson(),
    'preemptible': ?preemptible?.toTfJson(),
    'provisioning_model': ?provisioningModel?.toTfJson(),
    'termination_time': ?terminationTime?.toTfJson(),
    'local_ssd_recovery_timeout': ?localSsdRecoveryTimeout?.encode(),
    'max_run_duration': ?maxRunDuration?.encode(),
    if (nodeAffinities != null)
      'node_affinities': [for (final e in nodeAffinities!) e.encode()],
  };
}

/// `instance_termination_action` — derived from the provider schema description.
enum BackupDrRestoreWorkloadComputeInstanceRestorePropertiesSchedulingInstanceTerminationAction
    implements TerraformEnum {
  instanceTerminationActionUnspecified(
    'INSTANCE_TERMINATION_ACTION_UNSPECIFIED',
  ),
  delete('DELETE'),
  stop('STOP');

  const BackupDrRestoreWorkloadComputeInstanceRestorePropertiesSchedulingInstanceTerminationAction(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `on_host_maintenance` — derived from the provider schema description.
enum BackupDrRestoreWorkloadComputeInstanceRestorePropertiesSchedulingOnHostMaintenance
    implements TerraformEnum {
  onHostMaintenanceUnspecified('ON_HOST_MAINTENANCE_UNSPECIFIED'),
  terminate('TERMINATE'),
  migrate('MIGRATE');

  const BackupDrRestoreWorkloadComputeInstanceRestorePropertiesSchedulingOnHostMaintenance(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `provisioning_model` — derived from the provider schema description.
enum BackupDrRestoreWorkloadComputeInstanceRestorePropertiesSchedulingProvisioningModel
    implements TerraformEnum {
  provisioningModelUnspecified('PROVISIONING_MODEL_UNSPECIFIED'),
  standard('STANDARD'),
  spot('SPOT');

  const BackupDrRestoreWorkloadComputeInstanceRestorePropertiesSchedulingProvisioningModel(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `compute_instance_restore_properties.scheduling.local_ssd_recovery_timeout` block of
/// `google_backup_dr_restore_workload` (derived from provider schema).
@immutable
final class BackupDrRestoreWorkloadComputeInstanceRestorePropertiesSchedulingLocalSsdRecoveryTimeout {
  const BackupDrRestoreWorkloadComputeInstanceRestorePropertiesSchedulingLocalSsdRecoveryTimeout({
    this.nanos,
    this.seconds,
  });

  final TfArg<num>? nanos;

  final TfArg<num>? seconds;

  Map<String, Object?> encode() => {
    'nanos': ?nanos?.toTfJson(),
    'seconds': ?seconds?.toTfJson(),
  };
}

/// Typed helper for the `compute_instance_restore_properties.scheduling.max_run_duration` block of
/// `google_backup_dr_restore_workload` (derived from provider schema).
@immutable
final class BackupDrRestoreWorkloadComputeInstanceRestorePropertiesSchedulingMaxRunDuration {
  const BackupDrRestoreWorkloadComputeInstanceRestorePropertiesSchedulingMaxRunDuration({
    this.nanos,
    this.seconds,
  });

  final TfArg<num>? nanos;

  final TfArg<num>? seconds;

  Map<String, Object?> encode() => {
    'nanos': ?nanos?.toTfJson(),
    'seconds': ?seconds?.toTfJson(),
  };
}

/// Typed helper for the `compute_instance_restore_properties.scheduling.node_affinities` block of
/// `google_backup_dr_restore_workload` (derived from provider schema).
@immutable
final class BackupDrRestoreWorkloadComputeInstanceRestorePropertiesSchedulingNodeAffinities {
  const BackupDrRestoreWorkloadComputeInstanceRestorePropertiesSchedulingNodeAffinities({
    this.key,
    this.operator,
    this.values,
  });

  final TfArg<String>? key;

  final TfArg<
    BackupDrRestoreWorkloadComputeInstanceRestorePropertiesSchedulingNodeAffinitiesOperator
  >?
  operator;

  final TfArg<List<String>>? values;

  Map<String, Object?> encode() => {
    'key': ?key?.toTfJson(),
    'operator': ?operator?.toTfJson(),
    'values': ?values?.toTfJson(),
  };
}

/// `operator` — derived from the provider schema description.
enum BackupDrRestoreWorkloadComputeInstanceRestorePropertiesSchedulingNodeAffinitiesOperator
    implements TerraformEnum {
  operatorUnspecified('OPERATOR_UNSPECIFIED'),
  inCase('IN'),
  notIn('NOT_IN');

  const BackupDrRestoreWorkloadComputeInstanceRestorePropertiesSchedulingNodeAffinitiesOperator(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `compute_instance_restore_properties.service_accounts` block of
/// `google_backup_dr_restore_workload` (derived from provider schema).
@immutable
final class BackupDrRestoreWorkloadComputeInstanceRestorePropertiesServiceAccounts {
  const BackupDrRestoreWorkloadComputeInstanceRestorePropertiesServiceAccounts({
    this.email,
    this.scopes,
  });

  final RefTo<GoogleServiceAccount>? email;

  final TfArg<List<String>>? scopes;

  Map<String, Object?> encode() => {
    'email': ?email?.encodeAs('email').toTfJson(),
    'scopes': ?scopes?.toTfJson(),
  };
}

/// Typed helper for the `compute_instance_restore_properties.shielded_instance_config` block of
/// `google_backup_dr_restore_workload` (derived from provider schema).
@immutable
final class BackupDrRestoreWorkloadComputeInstanceRestorePropertiesShieldedInstanceConfig {
  const BackupDrRestoreWorkloadComputeInstanceRestorePropertiesShieldedInstanceConfig({
    this.enableIntegrityMonitoring,
    this.enableSecureBoot,
    this.enableVtpm,
  });

  final TfArg<bool>? enableIntegrityMonitoring;

  final TfArg<bool>? enableSecureBoot;

  final TfArg<bool>? enableVtpm;

  Map<String, Object?> encode() => {
    'enable_integrity_monitoring': ?enableIntegrityMonitoring?.toTfJson(),
    'enable_secure_boot': ?enableSecureBoot?.toTfJson(),
    'enable_vtpm': ?enableVtpm?.toTfJson(),
  };
}

/// Typed helper for the `compute_instance_restore_properties.tags` block of
/// `google_backup_dr_restore_workload` (derived from provider schema).
@immutable
final class BackupDrRestoreWorkloadComputeInstanceRestorePropertiesTags {
  const BackupDrRestoreWorkloadComputeInstanceRestorePropertiesTags({
    this.items,
  });

  final TfArg<List<String>>? items;

  Map<String, Object?> encode() => {'items': ?items?.toTfJson()};
}

/// Typed helper for the `compute_instance_target_environment` block of
/// `google_backup_dr_restore_workload` (derived from provider schema).
@immutable
final class BackupDrRestoreWorkloadComputeInstanceTargetEnvironment {
  const BackupDrRestoreWorkloadComputeInstanceTargetEnvironment({
    required this.project,
    this.useProjectServiceAccount,
    required this.zone,
  });

  final TfArg<String> project;

  final TfArg<bool>? useProjectServiceAccount;

  final TfArg<String> zone;

  Map<String, Object?> encode() => {
    'project': project.toTfJson(),
    'use_project_service_account': ?useProjectServiceAccount?.toTfJson(),
    'zone': zone.toTfJson(),
  };
}

/// Typed helper for the `disk_restore_properties` block of
/// `google_backup_dr_restore_workload` (derived from provider schema).
@immutable
final class BackupDrRestoreWorkloadDiskRestoreProperties {
  const BackupDrRestoreWorkloadDiskRestoreProperties({
    this.accessMode,
    this.architecture,
    this.description,
    this.enableConfidentialCompute,
    this.licenses,
    required this.name,
    this.physicalBlockSizeBytes,
    this.provisionedIops,
    this.provisionedThroughput,
    this.resourcePolicy,
    required this.sizeGb,
    this.storagePool,
    required this.type,
    this.diskEncryptionKey,
    this.guestOsFeature,
    this.labels,
    this.resourceManagerTags,
  });

  final TfArg<BackupDrRestoreWorkloadDiskRestorePropertiesAccessMode>?
  accessMode;

  final TfArg<BackupDrRestoreWorkloadDiskRestorePropertiesArchitecture>?
  architecture;

  final TfArg<String>? description;

  final TfArg<bool>? enableConfidentialCompute;

  final TfArg<List<String>>? licenses;

  final TfArg<String> name;

  final TfArg<num>? physicalBlockSizeBytes;

  final TfArg<num>? provisionedIops;

  final TfArg<num>? provisionedThroughput;

  final TfArg<List<String>>? resourcePolicy;

  final TfArg<num> sizeGb;

  final TfArg<String>? storagePool;

  final TfArg<String> type;

  final BackupDrRestoreWorkloadDiskRestorePropertiesDiskEncryptionKey?
  diskEncryptionKey;

  final List<BackupDrRestoreWorkloadDiskRestorePropertiesGuestOsFeature>?
  guestOsFeature;

  final List<BackupDrRestoreWorkloadDiskRestorePropertiesLabels>? labels;

  final List<BackupDrRestoreWorkloadDiskRestorePropertiesResourceManagerTags>?
  resourceManagerTags;

  Map<String, Object?> encode() => {
    'access_mode': ?accessMode?.toTfJson(),
    'architecture': ?architecture?.toTfJson(),
    'description': ?description?.toTfJson(),
    'enable_confidential_compute': ?enableConfidentialCompute?.toTfJson(),
    'licenses': ?licenses?.toTfJson(),
    'name': name.toTfJson(),
    'physical_block_size_bytes': ?physicalBlockSizeBytes?.toTfJson(),
    'provisioned_iops': ?provisionedIops?.toTfJson(),
    'provisioned_throughput': ?provisionedThroughput?.toTfJson(),
    'resource_policy': ?resourcePolicy?.toTfJson(),
    'size_gb': sizeGb.toTfJson(),
    'storage_pool': ?storagePool?.toTfJson(),
    'type': type.toTfJson(),
    'disk_encryption_key': ?diskEncryptionKey?.encode(),
    if (guestOsFeature != null)
      'guest_os_feature': [for (final e in guestOsFeature!) e.encode()],
    if (labels != null) 'labels': [for (final e in labels!) e.encode()],
    if (resourceManagerTags != null)
      'resource_manager_tags': [
        for (final e in resourceManagerTags!) e.encode(),
      ],
  };
}

/// `access_mode` — derived from the provider schema description.
enum BackupDrRestoreWorkloadDiskRestorePropertiesAccessMode
    implements TerraformEnum {
  readWriteSingle('READ_WRITE_SINGLE'),
  readWriteMany('READ_WRITE_MANY'),
  readOnlyMany('READ_ONLY_MANY');

  const BackupDrRestoreWorkloadDiskRestorePropertiesAccessMode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `architecture` — derived from the provider schema description.
enum BackupDrRestoreWorkloadDiskRestorePropertiesArchitecture
    implements TerraformEnum {
  architectureUnspecified('ARCHITECTURE_UNSPECIFIED'),
  x8664('X86_64'),
  arm64('ARM64');

  const BackupDrRestoreWorkloadDiskRestorePropertiesArchitecture(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `disk_restore_properties.disk_encryption_key` block of
/// `google_backup_dr_restore_workload` (derived from provider schema).
@immutable
final class BackupDrRestoreWorkloadDiskRestorePropertiesDiskEncryptionKey {
  const BackupDrRestoreWorkloadDiskRestorePropertiesDiskEncryptionKey({
    this.kmsKeyName,
    this.kmsKeyServiceAccount,
    this.rawKey,
    this.rsaEncryptedKey,
  });

  final RefTo<GoogleKmsCryptoKey>? kmsKeyName;

  final TfArg<String>? kmsKeyServiceAccount;

  final TfArg<String>? rawKey;

  final TfArg<String>? rsaEncryptedKey;

  Map<String, Object?> encode() => {
    'kms_key_name': ?kmsKeyName?.encodeAs('id').toTfJson(),
    'kms_key_service_account': ?kmsKeyServiceAccount?.toTfJson(),
    'raw_key': ?rawKey?.toTfJson(),
    'rsa_encrypted_key': ?rsaEncryptedKey?.toTfJson(),
  };
}

/// Typed helper for the `disk_restore_properties.guest_os_feature` block of
/// `google_backup_dr_restore_workload` (derived from provider schema).
@immutable
final class BackupDrRestoreWorkloadDiskRestorePropertiesGuestOsFeature {
  const BackupDrRestoreWorkloadDiskRestorePropertiesGuestOsFeature({this.type});

  final TfArg<BackupDrRestoreWorkloadDiskRestorePropertiesGuestOsFeatureType>?
  type;

  Map<String, Object?> encode() => {'type': ?type?.toTfJson()};
}

/// `type` — derived from the provider schema description.
enum BackupDrRestoreWorkloadDiskRestorePropertiesGuestOsFeatureType
    implements TerraformEnum {
  featureTypeUnspecified('FEATURE_TYPE_UNSPECIFIED'),
  virtioScsiMultiqueue('VIRTIO_SCSI_MULTIQUEUE'),
  windows('WINDOWS'),
  multiIpSubnet('MULTI_IP_SUBNET'),
  uefiCompatible('UEFI_COMPATIBLE'),
  secureBoot('SECURE_BOOT'),
  gvnic('GVNIC'),
  sevCapable('SEV_CAPABLE'),
  bareMetalLinuxCompatible('BARE_METAL_LINUX_COMPATIBLE'),
  suspendResumeCompatible('SUSPEND_RESUME_COMPATIBLE'),
  sevLiveMigratable('SEV_LIVE_MIGRATABLE'),
  sevSnpCapable('SEV_SNP_CAPABLE'),
  tdxCapable('TDX_CAPABLE'),
  idpf('IDPF'),
  sevLiveMigratableV2('SEV_LIVE_MIGRATABLE_V2');

  const BackupDrRestoreWorkloadDiskRestorePropertiesGuestOsFeatureType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `disk_restore_properties.labels` block of
/// `google_backup_dr_restore_workload` (derived from provider schema).
@immutable
final class BackupDrRestoreWorkloadDiskRestorePropertiesLabels {
  const BackupDrRestoreWorkloadDiskRestorePropertiesLabels({
    required this.key,
    this.value,
  });

  final TfArg<String> key;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `disk_restore_properties.resource_manager_tags` block of
/// `google_backup_dr_restore_workload` (derived from provider schema).
@immutable
final class BackupDrRestoreWorkloadDiskRestorePropertiesResourceManagerTags {
  const BackupDrRestoreWorkloadDiskRestorePropertiesResourceManagerTags({
    required this.key,
    this.value,
  });

  final TfArg<String> key;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `disk_target_environment` block of
/// `google_backup_dr_restore_workload` (derived from provider schema).
@immutable
final class BackupDrRestoreWorkloadDiskTargetEnvironment {
  const BackupDrRestoreWorkloadDiskTargetEnvironment({
    required this.project,
    this.useProjectServiceAccount,
    required this.zone,
  });

  final TfArg<String> project;

  final TfArg<bool>? useProjectServiceAccount;

  final TfArg<String> zone;

  Map<String, Object?> encode() => {
    'project': project.toTfJson(),
    'use_project_service_account': ?useProjectServiceAccount?.toTfJson(),
    'zone': zone.toTfJson(),
  };
}

/// Typed helper for the `region_disk_target_environment` block of
/// `google_backup_dr_restore_workload` (derived from provider schema).
@immutable
final class BackupDrRestoreWorkloadRegionDiskTargetEnvironment {
  const BackupDrRestoreWorkloadRegionDiskTargetEnvironment({
    required this.project,
    required this.region,
    required this.replicaZones,
    this.useProjectServiceAccount,
  });

  final TfArg<String> project;

  final TfArg<String> region;

  final TfArg<List<String>> replicaZones;

  final TfArg<bool>? useProjectServiceAccount;

  Map<String, Object?> encode() => {
    'project': project.toTfJson(),
    'region': region.toTfJson(),
    'replica_zones': replicaZones.toTfJson(),
    'use_project_service_account': ?useProjectServiceAccount?.toTfJson(),
  };
}

/// Factory wrapper for `google_backup_dr_restore_workload`.
///
/// An imperative resource that triggers a GCBDR restoration event. Creating
/// this resource will initiate a restore operation from a specified backup. The
/// resource represents the restore operation and its result.
///
/// Backup and DR Service **restore workload** — restores a backup from a
/// vault into Compute Engine or Persistent Disk targets.
///
/// **Cost:** restore creates billable Compute/Disk resources and may
/// incur BackupDR restore processing. Deferred with the never_apply
/// Backup DR Wave (no apply-smoke quickstart).
///
/// Provide the appropriate restore/target nested blocks for the workload
/// type. Enable `backupdr.googleapis.com` via [GoogleProjectService]
/// before apply.
final class GoogleBackupDrRestoreWorkload extends Resource {
  static const String tfType = 'google_backup_dr_restore_workload';

  GoogleBackupDrRestoreWorkload({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> backupVaultId,
    required TfArg<String> dataSourceId,
    required TfArg<String> backupId,
    TfArg<String>? name,
    BackupDrRestoreWorkloadComputeInstanceRestoreProperties?
    computeInstanceRestoreProperties,
    BackupDrRestoreWorkloadComputeInstanceTargetEnvironment?
    computeInstanceTargetEnvironment,
    BackupDrRestoreWorkloadDiskRestoreProperties? diskRestoreProperties,
    BackupDrRestoreWorkloadDiskTargetEnvironment? diskTargetEnvironment,
    BackupDrRestoreWorkloadRegionDiskTargetEnvironment?
    regionDiskTargetEnvironment,
    TfArg<String>? clearOverridesFieldMask,
    TfArg<bool>? deleteRestoredInstance,
    TfArg<String>? requestId,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'backup_vault_id': backupVaultId,
           'data_source_id': dataSourceId,
           'backup_id': backupId,
           'name': ?name,
           if (computeInstanceRestoreProperties != null)
             'compute_instance_restore_properties': TfArg.literal(
               computeInstanceRestoreProperties.encode(),
             ),
           if (computeInstanceTargetEnvironment != null)
             'compute_instance_target_environment': TfArg.literal(
               computeInstanceTargetEnvironment.encode(),
             ),
           if (diskRestoreProperties != null)
             'disk_restore_properties': TfArg.literal(
               diskRestoreProperties.encode(),
             ),
           if (diskTargetEnvironment != null)
             'disk_target_environment': TfArg.literal(
               diskTargetEnvironment.encode(),
             ),
           if (regionDiskTargetEnvironment != null)
             'region_disk_target_environment': TfArg.literal(
               regionDiskTargetEnvironment.encode(),
             ),
           'clear_overrides_field_mask': ?clearOverridesFieldMask,
           'delete_restored_instance': ?deleteRestoredInstance,
           'request_id': ?requestId,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBackupDrRestoreWorkloadSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBackupDrRestoreWorkload>`.
  RefTo<GoogleBackupDrRestoreWorkload> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `target_resource` attribute.
  TfRef<List<Map<String, Object?>>> get targetResource =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'target_resource');

  /// Reference to `backup_id` attribute.
  TfRef<String> get backupIdRef => TfRef.attribute<String>(this, 'backup_id');

  /// Reference to `backup_vault_id` attribute.
  TfRef<String> get backupVaultIdRef =>
      TfRef.attribute<String>(this, 'backup_vault_id');

  /// Reference to `clear_overrides_field_mask` attribute.
  TfRef<String> get clearOverridesFieldMaskRef =>
      TfRef.attribute<String>(this, 'clear_overrides_field_mask');

  /// Reference to `data_source_id` attribute.
  TfRef<String> get dataSourceIdRef =>
      TfRef.attribute<String>(this, 'data_source_id');

  /// Reference to `delete_restored_instance` attribute.
  TfRef<bool> get deleteRestoredInstanceRef =>
      TfRef.attribute<bool>(this, 'delete_restored_instance');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `request_id` attribute.
  TfRef<String> get requestIdRef => TfRef.attribute<String>(this, 'request_id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
