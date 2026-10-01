// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;
import '../compute/google_compute_subnetwork.dart' show GoogleComputeSubnetwork;
import '../iam/google_service_account.dart' show GoogleServiceAccount;
import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_compute_instance_from_template`.
const Set<String> _googleComputeInstanceFromTemplateSensitive = <String>{
  'attached_disk.disk_encryption_key_raw',
  'attached_disk.disk_encryption_key_rsa',
  'boot_disk.disk_encryption_key_raw',
  'boot_disk.disk_encryption_key_rsa',
  'boot_disk.initialize_params.source_image_encryption_key.raw_key',
  'boot_disk.initialize_params.source_image_encryption_key.rsa_encrypted_key',
  'boot_disk.initialize_params.source_snapshot_encryption_key.raw_key',
  'boot_disk.initialize_params.source_snapshot_encryption_key.rsa_encrypted_key',
};

/// Typed helper for the `advanced_machine_features` block of
/// `google_compute_instance_from_template` (derived from provider schema).
@immutable
final class ComputeInstanceFromTemplateAdvancedMachineFeatures {
  const ComputeInstanceFromTemplateAdvancedMachineFeatures({
    this.enableNestedVirtualization,
    this.enableUefiNetworking,
    this.performanceMonitoringUnit,
    this.threadsPerCore,
    this.turboMode,
    this.visibleCoreCount,
  });

  final TfArg<bool>? enableNestedVirtualization;

  final TfArg<bool>? enableUefiNetworking;

  final TfArg<String>? performanceMonitoringUnit;

  final TfArg<num>? threadsPerCore;

  final TfArg<String>? turboMode;

  final TfArg<num>? visibleCoreCount;

  Map<String, Object?> encode() => {
    'enable_nested_virtualization': ?enableNestedVirtualization?.toTfJson(),
    'enable_uefi_networking': ?enableUefiNetworking?.toTfJson(),
    'performance_monitoring_unit': ?performanceMonitoringUnit?.toTfJson(),
    'threads_per_core': ?threadsPerCore?.toTfJson(),
    'turbo_mode': ?turboMode?.toTfJson(),
    'visible_core_count': ?visibleCoreCount?.toTfJson(),
  };
}

/// Typed helper for the `attached_disk` block of
/// `google_compute_instance_from_template` (derived from provider schema).
@immutable
final class ComputeInstanceFromTemplateAttachedDisk {
  const ComputeInstanceFromTemplateAttachedDisk({
    this.deviceName,
    this.diskEncryptionKeyRaw,
    this.diskEncryptionKeyRsa,
    this.diskEncryptionServiceAccount,
    this.forceAttach,
    this.kmsKeySelfLink,
    this.mode,
    required this.source,
  });

  final TfArg<String>? deviceName;

  final TfArg<String>? diskEncryptionKeyRaw;

  final TfArg<String>? diskEncryptionKeyRsa;

  final TfArg<String>? diskEncryptionServiceAccount;

  final TfArg<bool>? forceAttach;

  final RefTo<GoogleKmsCryptoKey>? kmsKeySelfLink;

  final TfArg<String>? mode;

  final TfArg<String> source;

  Map<String, Object?> encode() => {
    'device_name': ?deviceName?.toTfJson(),
    'disk_encryption_key_raw': ?diskEncryptionKeyRaw?.toTfJson(),
    'disk_encryption_key_rsa': ?diskEncryptionKeyRsa?.toTfJson(),
    'disk_encryption_service_account': ?diskEncryptionServiceAccount
        ?.toTfJson(),
    'force_attach': ?forceAttach?.toTfJson(),
    'kms_key_self_link': ?kmsKeySelfLink?.encodeAs('id').toTfJson(),
    'mode': ?mode?.toTfJson(),
    'source': source.toTfJson(),
  };
}

/// Typed helper for the `boot_disk` block of
/// `google_compute_instance_from_template` (derived from provider schema).
@immutable
final class ComputeInstanceFromTemplateBootDisk {
  const ComputeInstanceFromTemplateBootDisk({
    this.autoDelete,
    this.deviceName,
    this.diskEncryptionKeyRaw,
    this.diskEncryptionKeyRsa,
    this.diskEncryptionServiceAccount,
    this.forceAttach,
    this.guestOsFeatures,
    this.interface,
    this.kmsKeySelfLink,
    this.mode,
    this.source,
    this.initializeParams,
  });

  final TfArg<bool>? autoDelete;

  final TfArg<String>? deviceName;

  final TfArg<String>? diskEncryptionKeyRaw;

  final TfArg<String>? diskEncryptionKeyRsa;

  final TfArg<String>? diskEncryptionServiceAccount;

  final TfArg<bool>? forceAttach;

  final TfArg<List<String>>? guestOsFeatures;

  final TfArg<String>? interface;

  final RefTo<GoogleKmsCryptoKey>? kmsKeySelfLink;

  final TfArg<String>? mode;

  final TfArg<String>? source;

  final ComputeInstanceFromTemplateInitializeParams? initializeParams;

  Map<String, Object?> encode() => {
    'auto_delete': ?autoDelete?.toTfJson(),
    'device_name': ?deviceName?.toTfJson(),
    'disk_encryption_key_raw': ?diskEncryptionKeyRaw?.toTfJson(),
    'disk_encryption_key_rsa': ?diskEncryptionKeyRsa?.toTfJson(),
    'disk_encryption_service_account': ?diskEncryptionServiceAccount
        ?.toTfJson(),
    'force_attach': ?forceAttach?.toTfJson(),
    'guest_os_features': ?guestOsFeatures?.toTfJson(),
    'interface': ?interface?.toTfJson(),
    'kms_key_self_link': ?kmsKeySelfLink?.encodeAs('id').toTfJson(),
    'mode': ?mode?.toTfJson(),
    'source': ?source?.toTfJson(),
    'initialize_params': ?initializeParams?.encode(),
  };
}

/// Typed helper for the `boot_disk.initialize_params` block of
/// `google_compute_instance_from_template` (derived from provider schema).
@immutable
final class ComputeInstanceFromTemplateInitializeParams {
  const ComputeInstanceFromTemplateInitializeParams({
    this.architecture,
    this.enableConfidentialCompute,
    this.image,
    this.labels,
    this.provisionedIops,
    this.provisionedThroughput,
    this.replicaZones,
    this.resourceManagerTags,
    this.resourcePolicies,
    this.size,
    this.snapshot,
    this.storagePool,
    this.type,
    this.sourceImageEncryptionKey,
    this.sourceSnapshotEncryptionKey,
  });

  final TfArg<String>? architecture;

  final TfArg<bool>? enableConfidentialCompute;

  final TfArg<String>? image;

  final TfArg<Map<String, String>>? labels;

  final TfArg<num>? provisionedIops;

  final TfArg<num>? provisionedThroughput;

  final TfArg<List<String>>? replicaZones;

  final TfArg<Map<String, String>>? resourceManagerTags;

  final TfArg<List<String>>? resourcePolicies;

  final TfArg<num>? size;

  final TfArg<String>? snapshot;

  final TfArg<String>? storagePool;

  final TfArg<String>? type;

  final ComputeInstanceFromTemplateSourceImageEncryptionKey?
  sourceImageEncryptionKey;

  final ComputeInstanceFromTemplateSourceSnapshotEncryptionKey?
  sourceSnapshotEncryptionKey;

  Map<String, Object?> encode() => {
    'architecture': ?architecture?.toTfJson(),
    'enable_confidential_compute': ?enableConfidentialCompute?.toTfJson(),
    'image': ?image?.toTfJson(),
    'labels': ?labels?.toTfJson(),
    'provisioned_iops': ?provisionedIops?.toTfJson(),
    'provisioned_throughput': ?provisionedThroughput?.toTfJson(),
    'replica_zones': ?replicaZones?.toTfJson(),
    'resource_manager_tags': ?resourceManagerTags?.toTfJson(),
    'resource_policies': ?resourcePolicies?.toTfJson(),
    'size': ?size?.toTfJson(),
    'snapshot': ?snapshot?.toTfJson(),
    'storage_pool': ?storagePool?.toTfJson(),
    'type': ?type?.toTfJson(),
    'source_image_encryption_key': ?sourceImageEncryptionKey?.encode(),
    'source_snapshot_encryption_key': ?sourceSnapshotEncryptionKey?.encode(),
  };
}

/// Typed helper for the `boot_disk.initialize_params.source_image_encryption_key` block of
/// `google_compute_instance_from_template` (derived from provider schema).
@immutable
final class ComputeInstanceFromTemplateSourceImageEncryptionKey {
  const ComputeInstanceFromTemplateSourceImageEncryptionKey({
    this.kmsKeySelfLink,
    this.kmsKeyServiceAccount,
    this.rawKey,
    this.rsaEncryptedKey,
  });

  final RefTo<GoogleKmsCryptoKey>? kmsKeySelfLink;

  final TfArg<String>? kmsKeyServiceAccount;

  final TfArg<String>? rawKey;

  final TfArg<String>? rsaEncryptedKey;

  Map<String, Object?> encode() => {
    'kms_key_self_link': ?kmsKeySelfLink?.encodeAs('id').toTfJson(),
    'kms_key_service_account': ?kmsKeyServiceAccount?.toTfJson(),
    'raw_key': ?rawKey?.toTfJson(),
    'rsa_encrypted_key': ?rsaEncryptedKey?.toTfJson(),
  };
}

/// Typed helper for the `boot_disk.initialize_params.source_snapshot_encryption_key` block of
/// `google_compute_instance_from_template` (derived from provider schema).
@immutable
final class ComputeInstanceFromTemplateSourceSnapshotEncryptionKey {
  const ComputeInstanceFromTemplateSourceSnapshotEncryptionKey({
    this.kmsKeySelfLink,
    this.kmsKeyServiceAccount,
    this.rawKey,
    this.rsaEncryptedKey,
  });

  final RefTo<GoogleKmsCryptoKey>? kmsKeySelfLink;

  final TfArg<String>? kmsKeyServiceAccount;

  final TfArg<String>? rawKey;

  final TfArg<String>? rsaEncryptedKey;

  Map<String, Object?> encode() => {
    'kms_key_self_link': ?kmsKeySelfLink?.encodeAs('id').toTfJson(),
    'kms_key_service_account': ?kmsKeyServiceAccount?.toTfJson(),
    'raw_key': ?rawKey?.toTfJson(),
    'rsa_encrypted_key': ?rsaEncryptedKey?.toTfJson(),
  };
}

/// Typed helper for the `confidential_instance_config` block of
/// `google_compute_instance_from_template` (derived from provider schema).
@immutable
final class ComputeInstanceFromTemplateConfidentialInstanceConfig {
  const ComputeInstanceFromTemplateConfidentialInstanceConfig({
    this.confidentialInstanceType,
    this.enableConfidentialCompute,
  });

  final TfArg<String>? confidentialInstanceType;

  final TfArg<bool>? enableConfidentialCompute;

  Map<String, Object?> encode() => {
    'confidential_instance_type': ?confidentialInstanceType?.toTfJson(),
    'enable_confidential_compute': ?enableConfidentialCompute?.toTfJson(),
  };
}

/// Typed helper for the `guest_accelerator` block of
/// `google_compute_instance_from_template` (derived from provider schema).
@immutable
final class ComputeInstanceFromTemplateGuestAccelerator {
  const ComputeInstanceFromTemplateGuestAccelerator({
    required this.count,
    required this.type,
  });

  final TfArg<num> count;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    'count': count.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `instance_encryption_key` block of
/// `google_compute_instance_from_template` (derived from provider schema).
@immutable
final class ComputeInstanceFromTemplateInstanceEncryptionKey {
  const ComputeInstanceFromTemplateInstanceEncryptionKey({
    this.kmsKeySelfLink,
    this.kmsKeyServiceAccount,
  });

  final RefTo<GoogleKmsCryptoKey>? kmsKeySelfLink;

  final TfArg<String>? kmsKeyServiceAccount;

  Map<String, Object?> encode() => {
    'kms_key_self_link': ?kmsKeySelfLink?.encodeAs('id').toTfJson(),
    'kms_key_service_account': ?kmsKeyServiceAccount?.toTfJson(),
  };
}

/// Typed helper for the `network_interface` block of
/// `google_compute_instance_from_template` (derived from provider schema).
@immutable
final class ComputeInstanceFromTemplateNetworkInterface {
  const ComputeInstanceFromTemplateNetworkInterface({
    this.igmpQuery,
    this.internalIpv6PrefixLength,
    this.ipv6Address,
    this.network,
    this.networkAttachment,
    this.networkIp,
    this.nicType,
    this.queueCount,
    this.stackType,
    this.subnetwork,
    this.subnetworkProject,
    this.vlan,
    this.accessConfig,
    this.aliasIpRange,
    this.ipv6AccessConfig,
  });

  final TfArg<String>? igmpQuery;

  final TfArg<num>? internalIpv6PrefixLength;

  final TfArg<String>? ipv6Address;

  final RefTo<GoogleComputeNetwork>? network;

  final TfArg<String>? networkAttachment;

  final TfArg<String>? networkIp;

  final TfArg<ComputeInstanceFromTemplateNicType>? nicType;

  final TfArg<num>? queueCount;

  final TfArg<String>? stackType;

  final RefTo<GoogleComputeSubnetwork>? subnetwork;

  final TfArg<String>? subnetworkProject;

  final TfArg<num>? vlan;

  final List<ComputeInstanceFromTemplateAccessConfig>? accessConfig;

  final List<ComputeInstanceFromTemplateAliasIpRange>? aliasIpRange;

  final List<ComputeInstanceFromTemplateIpv6AccessConfig>? ipv6AccessConfig;

  Map<String, Object?> encode() => {
    'igmp_query': ?igmpQuery?.toTfJson(),
    'internal_ipv6_prefix_length': ?internalIpv6PrefixLength?.toTfJson(),
    'ipv6_address': ?ipv6Address?.toTfJson(),
    'network': ?network?.encodeAs('id').toTfJson(),
    'network_attachment': ?networkAttachment?.toTfJson(),
    'network_ip': ?networkIp?.toTfJson(),
    'nic_type': ?nicType?.toTfJson(),
    'queue_count': ?queueCount?.toTfJson(),
    'stack_type': ?stackType?.toTfJson(),
    'subnetwork': ?subnetwork?.encodeAs('id').toTfJson(),
    'subnetwork_project': ?subnetworkProject?.toTfJson(),
    'vlan': ?vlan?.toTfJson(),
    if (accessConfig != null)
      'access_config': [for (final e in accessConfig!) e.encode()],
    if (aliasIpRange != null)
      'alias_ip_range': [for (final e in aliasIpRange!) e.encode()],
    if (ipv6AccessConfig != null)
      'ipv6_access_config': [for (final e in ipv6AccessConfig!) e.encode()],
  };
}

/// `nic_type` — derived from the provider schema description.
enum ComputeInstanceFromTemplateNicType implements TerraformEnum {
  gvnic('GVNIC'),
  virtioNet('VIRTIO_NET'),
  idpf('IDPF'),
  mrdma('MRDMA'),
  irdma('IRDMA');

  const ComputeInstanceFromTemplateNicType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `network_interface.access_config` block of
/// `google_compute_instance_from_template` (derived from provider schema).
@immutable
final class ComputeInstanceFromTemplateAccessConfig {
  const ComputeInstanceFromTemplateAccessConfig({
    this.natIp,
    this.networkTier,
    this.publicPtrDomainName,
  });

  final TfArg<String>? natIp;

  final TfArg<String>? networkTier;

  final TfArg<String>? publicPtrDomainName;

  Map<String, Object?> encode() => {
    'nat_ip': ?natIp?.toTfJson(),
    'network_tier': ?networkTier?.toTfJson(),
    'public_ptr_domain_name': ?publicPtrDomainName?.toTfJson(),
  };
}

/// Typed helper for the `network_interface.alias_ip_range` block of
/// `google_compute_instance_from_template` (derived from provider schema).
@immutable
final class ComputeInstanceFromTemplateAliasIpRange {
  const ComputeInstanceFromTemplateAliasIpRange({
    required this.ipCidrRange,
    this.subnetworkRangeName,
  });

  final TfArg<String> ipCidrRange;

  final TfArg<String>? subnetworkRangeName;

  Map<String, Object?> encode() => {
    'ip_cidr_range': ipCidrRange.toTfJson(),
    'subnetwork_range_name': ?subnetworkRangeName?.toTfJson(),
  };
}

/// Typed helper for the `network_interface.ipv6_access_config` block of
/// `google_compute_instance_from_template` (derived from provider schema).
@immutable
final class ComputeInstanceFromTemplateIpv6AccessConfig {
  const ComputeInstanceFromTemplateIpv6AccessConfig({
    this.externalIpv6,
    this.externalIpv6PrefixLength,
    this.name,
    required this.networkTier,
    this.publicPtrDomainName,
  });

  final TfArg<String>? externalIpv6;

  final TfArg<String>? externalIpv6PrefixLength;

  final TfArg<String>? name;

  final TfArg<String> networkTier;

  final TfArg<String>? publicPtrDomainName;

  Map<String, Object?> encode() => {
    'external_ipv6': ?externalIpv6?.toTfJson(),
    'external_ipv6_prefix_length': ?externalIpv6PrefixLength?.toTfJson(),
    'name': ?name?.toTfJson(),
    'network_tier': networkTier.toTfJson(),
    'public_ptr_domain_name': ?publicPtrDomainName?.toTfJson(),
  };
}

/// Typed helper for the `network_performance_config` block of
/// `google_compute_instance_from_template` (derived from provider schema).
@immutable
final class ComputeInstanceFromTemplateNetworkPerformanceConfig {
  const ComputeInstanceFromTemplateNetworkPerformanceConfig({
    required this.totalEgressBandwidthTier,
  });

  final TfArg<ComputeInstanceFromTemplateTotalEgressBandwidthTier>
  totalEgressBandwidthTier;

  Map<String, Object?> encode() => {
    'total_egress_bandwidth_tier': totalEgressBandwidthTier.toTfJson(),
  };
}

/// `total_egress_bandwidth_tier` — derived from the provider schema description.
enum ComputeInstanceFromTemplateTotalEgressBandwidthTier
    implements TerraformEnum {
  tier1('TIER_1'),
  defaultCase('DEFAULT');

  const ComputeInstanceFromTemplateTotalEgressBandwidthTier(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `params` block of
/// `google_compute_instance_from_template` (derived from provider schema).
@immutable
final class ComputeInstanceFromTemplateParams {
  const ComputeInstanceFromTemplateParams({this.resourceManagerTags});

  final TfArg<Map<String, String>>? resourceManagerTags;

  Map<String, Object?> encode() => {
    'resource_manager_tags': ?resourceManagerTags?.toTfJson(),
  };
}

/// Typed helper for the `reservation_affinity` block of
/// `google_compute_instance_from_template` (derived from provider schema).
@immutable
final class ComputeInstanceFromTemplateReservationAffinity {
  const ComputeInstanceFromTemplateReservationAffinity({
    required this.type,
    this.specificReservation,
  });

  final TfArg<String> type;

  final ComputeInstanceFromTemplateSpecificReservation? specificReservation;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'specific_reservation': ?specificReservation?.encode(),
  };
}

/// Typed helper for the `reservation_affinity.specific_reservation` block of
/// `google_compute_instance_from_template` (derived from provider schema).
@immutable
final class ComputeInstanceFromTemplateSpecificReservation {
  const ComputeInstanceFromTemplateSpecificReservation({
    required this.key,
    required this.values,
  });

  final TfArg<String> key;

  final TfArg<List<String>> values;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `scheduling` block of
/// `google_compute_instance_from_template` (derived from provider schema).
@immutable
final class ComputeInstanceFromTemplateScheduling {
  const ComputeInstanceFromTemplateScheduling({
    this.automaticRestart,
    this.availabilityDomain,
    this.hostErrorTimeoutSeconds,
    this.instanceTerminationAction,
    this.minNodeCpus,
    this.onHostMaintenance,
    this.preemptible,
    this.provisioningModel,
    this.terminationTime,
    this.localSsdRecoveryTimeout,
    this.maxRunDuration,
    this.nodeAffinities,
    this.onInstanceStopAction,
  });

  final TfArg<bool>? automaticRestart;

  final TfArg<num>? availabilityDomain;

  final TfArg<num>? hostErrorTimeoutSeconds;

  final TfArg<String>? instanceTerminationAction;

  final TfArg<num>? minNodeCpus;

  final TfArg<String>? onHostMaintenance;

  final TfArg<bool>? preemptible;

  final TfArg<String>? provisioningModel;

  final TfArg<String>? terminationTime;

  final ComputeInstanceFromTemplateLocalSsdRecoveryTimeout?
  localSsdRecoveryTimeout;

  final ComputeInstanceFromTemplateMaxRunDuration? maxRunDuration;

  final List<ComputeInstanceFromTemplateNodeAffinities>? nodeAffinities;

  final ComputeInstanceFromTemplateOnInstanceStopAction? onInstanceStopAction;

  Map<String, Object?> encode() => {
    'automatic_restart': ?automaticRestart?.toTfJson(),
    'availability_domain': ?availabilityDomain?.toTfJson(),
    'host_error_timeout_seconds': ?hostErrorTimeoutSeconds?.toTfJson(),
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
    'on_instance_stop_action': ?onInstanceStopAction?.encode(),
  };
}

/// Typed helper for the `scheduling.local_ssd_recovery_timeout` block of
/// `google_compute_instance_from_template` (derived from provider schema).
@immutable
final class ComputeInstanceFromTemplateLocalSsdRecoveryTimeout {
  const ComputeInstanceFromTemplateLocalSsdRecoveryTimeout({
    this.nanos,
    required this.seconds,
  });

  final TfArg<num>? nanos;

  final TfArg<num> seconds;

  Map<String, Object?> encode() => {
    'nanos': ?nanos?.toTfJson(),
    'seconds': seconds.toTfJson(),
  };
}

/// Typed helper for the `scheduling.max_run_duration` block of
/// `google_compute_instance_from_template` (derived from provider schema).
@immutable
final class ComputeInstanceFromTemplateMaxRunDuration {
  const ComputeInstanceFromTemplateMaxRunDuration({
    this.nanos,
    required this.seconds,
  });

  final TfArg<num>? nanos;

  final TfArg<num> seconds;

  Map<String, Object?> encode() => {
    'nanos': ?nanos?.toTfJson(),
    'seconds': seconds.toTfJson(),
  };
}

/// Typed helper for the `scheduling.node_affinities` block of
/// `google_compute_instance_from_template` (derived from provider schema).
@immutable
final class ComputeInstanceFromTemplateNodeAffinities {
  const ComputeInstanceFromTemplateNodeAffinities({
    required this.key,
    required this.operator,
    required this.values,
  });

  final TfArg<String> key;

  final TfArg<String> operator;

  final TfArg<List<String>> values;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'operator': operator.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `scheduling.on_instance_stop_action` block of
/// `google_compute_instance_from_template` (derived from provider schema).
@immutable
final class ComputeInstanceFromTemplateOnInstanceStopAction {
  const ComputeInstanceFromTemplateOnInstanceStopAction({this.discardLocalSsd});

  final TfArg<bool>? discardLocalSsd;

  Map<String, Object?> encode() => {
    'discard_local_ssd': ?discardLocalSsd?.toTfJson(),
  };
}

/// Typed helper for the `scratch_disk` block of
/// `google_compute_instance_from_template` (derived from provider schema).
@immutable
final class ComputeInstanceFromTemplateScratchDisk {
  const ComputeInstanceFromTemplateScratchDisk({
    this.deviceName,
    required this.interface,
    this.size,
  });

  final TfArg<String>? deviceName;

  final TfArg<String> interface;

  final TfArg<num>? size;

  Map<String, Object?> encode() => {
    'device_name': ?deviceName?.toTfJson(),
    'interface': interface.toTfJson(),
    'size': ?size?.toTfJson(),
  };
}

/// Typed helper for the `service_account` block of
/// `google_compute_instance_from_template` (derived from provider schema).
@immutable
final class ComputeInstanceFromTemplateServiceAccount {
  const ComputeInstanceFromTemplateServiceAccount({
    this.email,
    required this.scopes,
  });

  final RefTo<GoogleServiceAccount>? email;

  final TfArg<List<String>> scopes;

  Map<String, Object?> encode() => {
    'email': ?email?.encodeAs('email').toTfJson(),
    'scopes': scopes.toTfJson(),
  };
}

/// Typed helper for the `shielded_instance_config` block of
/// `google_compute_instance_from_template` (derived from provider schema).
@immutable
final class ComputeInstanceFromTemplateShieldedInstanceConfig {
  const ComputeInstanceFromTemplateShieldedInstanceConfig({
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

/// Typed helper for the `workload_identity_config` block of
/// `google_compute_instance_from_template` (derived from provider schema).
@immutable
final class ComputeInstanceFromTemplateWorkloadIdentityConfig {
  const ComputeInstanceFromTemplateWorkloadIdentityConfig({
    this.identity,
    this.identityCertificateEnabled,
  });

  final TfArg<String>? identity;

  final TfArg<bool>? identityCertificateEnabled;

  Map<String, Object?> encode() => {
    'identity': ?identity?.toTfJson(),
    'identity_certificate_enabled': ?identityCertificateEnabled?.toTfJson(),
  };
}

/// Factory wrapper for `google_compute_instance_from_template`.
///
/// Creates a Compute Engine VM from an existing
/// `google_compute_instance_template` (or regional template). Fields
/// omitted here inherit from the template; any supplied field overrides
/// the template value for this instance only.
///
/// Required:
/// - [name]: instance name (ForcesNew).
/// - [sourceInstanceTemplate]: self-link of the template.
///
/// Nested override blocks mirror `google_compute_instance` (boot disk,
/// network interface, scheduling, …). Prefer the template for shared
/// shape and override only instance-specific fields here.
final class GoogleComputeInstanceFromTemplate extends Resource {
  static const String tfType = 'google_compute_instance_from_template';

  GoogleComputeInstanceFromTemplate(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> sourceInstanceTemplate,
    TfArg<String>? machineType,
    TfArg<String>? zone,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    TfArg<Map<String, String>>? metadata,
    TfArg<String>? metadataStartupScript,
    TfArg<List<String>>? tags,
    TfArg<bool>? canIpForward,
    TfArg<bool>? allowStoppingForUpdate,
    TfArg<bool>? deletionProtection,
    TfArg<String>? deletionPolicy,
    TfArg<String>? desiredStatus,
    TfArg<bool>? enableDisplay,
    TfArg<String>? hostname,
    TfArg<String>? keyRevocationActionType,
    TfArg<String>? minCpuPlatform,
    TfArg<List<String>>? resourcePolicies,
    TfArg<String>? project,
    ComputeInstanceFromTemplateAdvancedMachineFeatures? advancedMachineFeatures,
    List<ComputeInstanceFromTemplateAttachedDisk>? attachedDisk,
    ComputeInstanceFromTemplateBootDisk? bootDisk,
    ComputeInstanceFromTemplateConfidentialInstanceConfig?
    confidentialInstanceConfig,
    List<ComputeInstanceFromTemplateGuestAccelerator>? guestAccelerator,
    ComputeInstanceFromTemplateInstanceEncryptionKey? instanceEncryptionKey,
    List<ComputeInstanceFromTemplateNetworkInterface>? networkInterface,
    ComputeInstanceFromTemplateNetworkPerformanceConfig?
    networkPerformanceConfig,
    ComputeInstanceFromTemplateParams? params,
    ComputeInstanceFromTemplateReservationAffinity? reservationAffinity,
    ComputeInstanceFromTemplateScheduling? scheduling,
    List<ComputeInstanceFromTemplateScratchDisk>? scratchDisk,
    ComputeInstanceFromTemplateServiceAccount? serviceAccount,
    ComputeInstanceFromTemplateShieldedInstanceConfig? shieldedInstanceConfig,
    ComputeInstanceFromTemplateWorkloadIdentityConfig? workloadIdentityConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'source_instance_template': sourceInstanceTemplate,
           'machine_type': ?machineType,
           'zone': ?zone,
           'description': ?description,
           'labels': ?labels,
           'metadata': ?metadata,
           'metadata_startup_script': ?metadataStartupScript,
           'tags': ?tags,
           'can_ip_forward': ?canIpForward,
           'allow_stopping_for_update': ?allowStoppingForUpdate,
           'deletion_protection': ?deletionProtection,
           'deletion_policy': ?deletionPolicy,
           'desired_status': ?desiredStatus,
           'enable_display': ?enableDisplay,
           'hostname': ?hostname,
           'key_revocation_action_type': ?keyRevocationActionType,
           'min_cpu_platform': ?minCpuPlatform,
           'resource_policies': ?resourcePolicies,
           'project': ?project,
           if (advancedMachineFeatures != null)
             'advanced_machine_features': TfArg.literal(
               advancedMachineFeatures.encode(),
             ),
           if (attachedDisk != null)
             'attached_disk': TfArg.literal([
               for (final e in attachedDisk) e.encode(),
             ]),
           if (bootDisk != null) 'boot_disk': TfArg.literal(bootDisk.encode()),
           if (confidentialInstanceConfig != null)
             'confidential_instance_config': TfArg.literal(
               confidentialInstanceConfig.encode(),
             ),
           if (guestAccelerator != null)
             'guest_accelerator': TfArg.literal([
               for (final e in guestAccelerator) e.encode(),
             ]),
           if (instanceEncryptionKey != null)
             'instance_encryption_key': TfArg.literal(
               instanceEncryptionKey.encode(),
             ),
           if (networkInterface != null)
             'network_interface': TfArg.literal([
               for (final e in networkInterface) e.encode(),
             ]),
           if (networkPerformanceConfig != null)
             'network_performance_config': TfArg.literal(
               networkPerformanceConfig.encode(),
             ),
           if (params != null) 'params': TfArg.literal(params.encode()),
           if (reservationAffinity != null)
             'reservation_affinity': TfArg.literal(
               reservationAffinity.encode(),
             ),
           if (scheduling != null)
             'scheduling': TfArg.literal(scheduling.encode()),
           if (scratchDisk != null)
             'scratch_disk': TfArg.literal([
               for (final e in scratchDisk) e.encode(),
             ]),
           if (serviceAccount != null)
             'service_account': TfArg.literal(serviceAccount.encode()),
           if (shieldedInstanceConfig != null)
             'shielded_instance_config': TfArg.literal(
               shieldedInstanceConfig.encode(),
             ),
           if (workloadIdentityConfig != null)
             'workload_identity_config': TfArg.literal(
               workloadIdentityConfig.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeInstanceFromTemplateSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeInstanceFromTemplate>`.
  RefTo<GoogleComputeInstanceFromTemplate> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cpu_platform` attribute.
  TfRef<String> get cpuPlatform =>
      TfRef.attribute<String>(this, 'cpu_platform');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `current_status` attribute.
  TfRef<String> get currentStatus =>
      TfRef.attribute<String>(this, 'current_status');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `label_fingerprint` attribute.
  TfRef<String> get labelFingerprint =>
      TfRef.attribute<String>(this, 'label_fingerprint');

  /// Reference to `metadata_fingerprint` attribute.
  TfRef<String> get metadataFingerprint =>
      TfRef.attribute<String>(this, 'metadata_fingerprint');

  /// Reference to `tags_fingerprint` attribute.
  TfRef<String> get tagsFingerprint =>
      TfRef.attribute<String>(this, 'tags_fingerprint');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `allow_stopping_for_update` attribute.
  TfRef<bool> get allowStoppingForUpdate =>
      TfRef.attribute<bool>(this, 'allow_stopping_for_update');

  /// Reference to `can_ip_forward` attribute.
  TfRef<bool> get canIpForward => TfRef.attribute<bool>(this, 'can_ip_forward');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deletion_protection` attribute.
  TfRef<bool> get deletionProtection =>
      TfRef.attribute<bool>(this, 'deletion_protection');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `desired_status` attribute.
  TfRef<String> get desiredStatus =>
      TfRef.attribute<String>(this, 'desired_status');

  /// Reference to `enable_display` attribute.
  TfRef<bool> get enableDisplay =>
      TfRef.attribute<bool>(this, 'enable_display');

  /// Reference to `hostname` attribute.
  TfRef<String> get hostname => TfRef.attribute<String>(this, 'hostname');

  /// Reference to `key_revocation_action_type` attribute.
  TfRef<String> get keyRevocationActionType =>
      TfRef.attribute<String>(this, 'key_revocation_action_type');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `machine_type` attribute.
  TfRef<String> get machineType =>
      TfRef.attribute<String>(this, 'machine_type');

  /// Reference to `metadata` attribute.
  TfRef<Map<String, String>> get metadata =>
      TfRef.attribute<Map<String, String>>(this, 'metadata');

  /// Reference to `metadata_startup_script` attribute.
  TfRef<String> get metadataStartupScript =>
      TfRef.attribute<String>(this, 'metadata_startup_script');

  /// Reference to `min_cpu_platform` attribute.
  TfRef<String> get minCpuPlatform =>
      TfRef.attribute<String>(this, 'min_cpu_platform');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `resource_policies` attribute.
  TfRef<List<String>> get resourcePolicies =>
      TfRef.attribute<List<String>>(this, 'resource_policies');

  /// Reference to `source_instance_template` attribute.
  TfRef<String> get sourceInstanceTemplate =>
      TfRef.attribute<String>(this, 'source_instance_template');

  /// Reference to `tags` attribute.
  TfRef<List<String>> get tags => TfRef.attribute<List<String>>(this, 'tags');

  /// Reference to `zone` attribute.
  TfRef<String> get zone => TfRef.attribute<String>(this, 'zone');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `instance_id` attribute.
  TfRef<String> get instanceId => TfRef.attribute<String>(this, 'instance_id');
}
