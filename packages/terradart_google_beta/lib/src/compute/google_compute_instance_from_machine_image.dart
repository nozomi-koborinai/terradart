// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_instance_from_machine_image`.
const Set<String> _googleComputeInstanceFromMachineImageSensitive = <String>{
  'source_machine_image_encryption_key.raw_key',
  'source_machine_image_encryption_key.rsa_encrypted_key',
};

/// Typed helper for the `advanced_machine_features` block of
/// `google_compute_instance_from_machine_image` (derived from provider schema).
@immutable
final class ComputeInstanceFromMachineImageAdvancedMachineFeatures {
  const ComputeInstanceFromMachineImageAdvancedMachineFeatures({
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
    if (enableNestedVirtualization != null)
      'enable_nested_virtualization': enableNestedVirtualization!.toTfJson(),
    if (enableUefiNetworking != null)
      'enable_uefi_networking': enableUefiNetworking!.toTfJson(),
    if (performanceMonitoringUnit != null)
      'performance_monitoring_unit': performanceMonitoringUnit!.toTfJson(),
    if (threadsPerCore != null) 'threads_per_core': threadsPerCore!.toTfJson(),
    if (turboMode != null) 'turbo_mode': turboMode!.toTfJson(),
    if (visibleCoreCount != null)
      'visible_core_count': visibleCoreCount!.toTfJson(),
  };
}

/// Typed helper for the `confidential_instance_config` block of
/// `google_compute_instance_from_machine_image` (derived from provider schema).
@immutable
final class ComputeInstanceFromMachineImageConfidentialInstanceConfig {
  const ComputeInstanceFromMachineImageConfidentialInstanceConfig({
    this.confidentialInstanceType,
    this.enableConfidentialCompute,
  });

  final TfArg<String>? confidentialInstanceType;

  final TfArg<bool>? enableConfidentialCompute;

  Map<String, Object?> encode() => {
    if (confidentialInstanceType != null)
      'confidential_instance_type': confidentialInstanceType!.toTfJson(),
    if (enableConfidentialCompute != null)
      'enable_confidential_compute': enableConfidentialCompute!.toTfJson(),
  };
}

/// Typed helper for the `guest_accelerator` block of
/// `google_compute_instance_from_machine_image` (derived from provider schema).
@immutable
final class ComputeInstanceFromMachineImageGuestAccelerator {
  const ComputeInstanceFromMachineImageGuestAccelerator({
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
/// `google_compute_instance_from_machine_image` (derived from provider schema).
@immutable
final class ComputeInstanceFromMachineImageInstanceEncryptionKey {
  const ComputeInstanceFromMachineImageInstanceEncryptionKey({
    this.kmsKeySelfLink,
    this.kmsKeyServiceAccount,
  });

  final TfArg<String>? kmsKeySelfLink;

  final TfArg<String>? kmsKeyServiceAccount;

  Map<String, Object?> encode() => {
    if (kmsKeySelfLink != null) 'kms_key_self_link': kmsKeySelfLink!.toTfJson(),
    if (kmsKeyServiceAccount != null)
      'kms_key_service_account': kmsKeyServiceAccount!.toTfJson(),
  };
}

/// Typed helper for the `network_interface` block of
/// `google_compute_instance_from_machine_image` (derived from provider schema).
@immutable
final class ComputeInstanceFromMachineImageNetworkInterface {
  const ComputeInstanceFromMachineImageNetworkInterface({
    this.igmpQuery,
    this.internalIpv6PrefixLength,
    this.ipv6Address,
    this.network,
    this.networkAttachment,
    this.networkIp,
    this.nicType,
    this.queueCount,
    this.securityPolicy,
    this.stackType,
    this.subnetwork,
    this.subnetworkProject,
    this.vlan,
    this.accessConfig,
    this.aliasIpRange,
    this.aliasIpv6Range,
    this.ipv6AccessConfig,
  });

  final TfArg<String>? igmpQuery;

  final TfArg<num>? internalIpv6PrefixLength;

  final TfArg<String>? ipv6Address;

  final TfArg<String>? network;

  final TfArg<String>? networkAttachment;

  final TfArg<String>? networkIp;

  final TfArg<ComputeInstanceFromMachineImageNetworkInterfaceNicType>? nicType;

  final TfArg<num>? queueCount;

  final TfArg<String>? securityPolicy;

  final TfArg<String>? stackType;

  final TfArg<String>? subnetwork;

  final TfArg<String>? subnetworkProject;

  final TfArg<num>? vlan;

  final List<ComputeInstanceFromMachineImageNetworkInterfaceAccessConfig>?
  accessConfig;

  final List<ComputeInstanceFromMachineImageNetworkInterfaceAliasIpRange>?
  aliasIpRange;

  final List<ComputeInstanceFromMachineImageNetworkInterfaceAliasIpv6Range>?
  aliasIpv6Range;

  final List<ComputeInstanceFromMachineImageNetworkInterfaceIpv6AccessConfig>?
  ipv6AccessConfig;

  Map<String, Object?> encode() => {
    if (igmpQuery != null) 'igmp_query': igmpQuery!.toTfJson(),
    if (internalIpv6PrefixLength != null)
      'internal_ipv6_prefix_length': internalIpv6PrefixLength!.toTfJson(),
    if (ipv6Address != null) 'ipv6_address': ipv6Address!.toTfJson(),
    if (network != null) 'network': network!.toTfJson(),
    if (networkAttachment != null)
      'network_attachment': networkAttachment!.toTfJson(),
    if (networkIp != null) 'network_ip': networkIp!.toTfJson(),
    if (nicType != null) 'nic_type': nicType!.toTfJson(),
    if (queueCount != null) 'queue_count': queueCount!.toTfJson(),
    if (securityPolicy != null) 'security_policy': securityPolicy!.toTfJson(),
    if (stackType != null) 'stack_type': stackType!.toTfJson(),
    if (subnetwork != null) 'subnetwork': subnetwork!.toTfJson(),
    if (subnetworkProject != null)
      'subnetwork_project': subnetworkProject!.toTfJson(),
    if (vlan != null) 'vlan': vlan!.toTfJson(),
    if (accessConfig != null)
      'access_config': [for (final e in accessConfig!) e.encode()],
    if (aliasIpRange != null)
      'alias_ip_range': [for (final e in aliasIpRange!) e.encode()],
    if (aliasIpv6Range != null)
      'alias_ipv6_range': [for (final e in aliasIpv6Range!) e.encode()],
    if (ipv6AccessConfig != null)
      'ipv6_access_config': [for (final e in ipv6AccessConfig!) e.encode()],
  };
}

/// `nic_type` — derived from the provider schema description.
enum ComputeInstanceFromMachineImageNetworkInterfaceNicType
    implements TerraformEnum {
  gvnic('GVNIC'),
  virtioNet('VIRTIO_NET'),
  idpf('IDPF'),
  mrdma('MRDMA'),
  irdma('IRDMA');

  const ComputeInstanceFromMachineImageNetworkInterfaceNicType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `network_interface.access_config` block of
/// `google_compute_instance_from_machine_image` (derived from provider schema).
@immutable
final class ComputeInstanceFromMachineImageNetworkInterfaceAccessConfig {
  const ComputeInstanceFromMachineImageNetworkInterfaceAccessConfig({
    this.natIp,
    this.networkTier,
    this.publicPtrDomainName,
  });

  final TfArg<String>? natIp;

  final TfArg<String>? networkTier;

  final TfArg<String>? publicPtrDomainName;

  Map<String, Object?> encode() => {
    if (natIp != null) 'nat_ip': natIp!.toTfJson(),
    if (networkTier != null) 'network_tier': networkTier!.toTfJson(),
    if (publicPtrDomainName != null)
      'public_ptr_domain_name': publicPtrDomainName!.toTfJson(),
  };
}

/// Typed helper for the `network_interface.alias_ip_range` block of
/// `google_compute_instance_from_machine_image` (derived from provider schema).
@immutable
final class ComputeInstanceFromMachineImageNetworkInterfaceAliasIpRange {
  const ComputeInstanceFromMachineImageNetworkInterfaceAliasIpRange({
    required this.ipCidrRange,
    this.subnetworkRangeName,
  });

  final TfArg<String> ipCidrRange;

  final TfArg<String>? subnetworkRangeName;

  Map<String, Object?> encode() => {
    'ip_cidr_range': ipCidrRange.toTfJson(),
    if (subnetworkRangeName != null)
      'subnetwork_range_name': subnetworkRangeName!.toTfJson(),
  };
}

/// Typed helper for the `network_interface.alias_ipv6_range` block of
/// `google_compute_instance_from_machine_image` (derived from provider schema).
@immutable
final class ComputeInstanceFromMachineImageNetworkInterfaceAliasIpv6Range {
  const ComputeInstanceFromMachineImageNetworkInterfaceAliasIpv6Range({
    required this.ipCidrRange,
    this.subnetworkRangeName,
  });

  final TfArg<String> ipCidrRange;

  final TfArg<String>? subnetworkRangeName;

  Map<String, Object?> encode() => {
    'ip_cidr_range': ipCidrRange.toTfJson(),
    if (subnetworkRangeName != null)
      'subnetwork_range_name': subnetworkRangeName!.toTfJson(),
  };
}

/// Typed helper for the `network_interface.ipv6_access_config` block of
/// `google_compute_instance_from_machine_image` (derived from provider schema).
@immutable
final class ComputeInstanceFromMachineImageNetworkInterfaceIpv6AccessConfig {
  const ComputeInstanceFromMachineImageNetworkInterfaceIpv6AccessConfig({
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
    if (externalIpv6 != null) 'external_ipv6': externalIpv6!.toTfJson(),
    if (externalIpv6PrefixLength != null)
      'external_ipv6_prefix_length': externalIpv6PrefixLength!.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
    'network_tier': networkTier.toTfJson(),
    if (publicPtrDomainName != null)
      'public_ptr_domain_name': publicPtrDomainName!.toTfJson(),
  };
}

/// Typed helper for the `network_performance_config` block of
/// `google_compute_instance_from_machine_image` (derived from provider schema).
@immutable
final class ComputeInstanceFromMachineImageNetworkPerformanceConfig {
  const ComputeInstanceFromMachineImageNetworkPerformanceConfig({
    required this.totalEgressBandwidthTier,
  });

  final TfArg<
    ComputeInstanceFromMachineImageNetworkPerformanceConfigTotalEgressBandwidthTier
  >
  totalEgressBandwidthTier;

  Map<String, Object?> encode() => {
    'total_egress_bandwidth_tier': totalEgressBandwidthTier.toTfJson(),
  };
}

/// `total_egress_bandwidth_tier` — derived from the provider schema description.
enum ComputeInstanceFromMachineImageNetworkPerformanceConfigTotalEgressBandwidthTier
    implements TerraformEnum {
  tier1('TIER_1'),
  defaultCase('DEFAULT');

  const ComputeInstanceFromMachineImageNetworkPerformanceConfigTotalEgressBandwidthTier(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `params` block of
/// `google_compute_instance_from_machine_image` (derived from provider schema).
@immutable
final class ComputeInstanceFromMachineImageParams {
  const ComputeInstanceFromMachineImageParams({this.resourceManagerTags});

  final TfArg<Map<String, String>>? resourceManagerTags;

  Map<String, Object?> encode() => {
    if (resourceManagerTags != null)
      'resource_manager_tags': resourceManagerTags!.toTfJson(),
  };
}

/// Typed helper for the `reservation_affinity` block of
/// `google_compute_instance_from_machine_image` (derived from provider schema).
@immutable
final class ComputeInstanceFromMachineImageReservationAffinity {
  const ComputeInstanceFromMachineImageReservationAffinity({
    required this.type,
    this.specificReservation,
  });

  final TfArg<String> type;

  final ComputeInstanceFromMachineImageReservationAffinitySpecificReservation?
  specificReservation;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    if (specificReservation != null)
      'specific_reservation': specificReservation!.encode(),
  };
}

/// Typed helper for the `reservation_affinity.specific_reservation` block of
/// `google_compute_instance_from_machine_image` (derived from provider schema).
@immutable
final class ComputeInstanceFromMachineImageReservationAffinitySpecificReservation {
  const ComputeInstanceFromMachineImageReservationAffinitySpecificReservation({
    required this.key,
    required this.values,
  });

  final TfArg<String> key;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `scheduling` block of
/// `google_compute_instance_from_machine_image` (derived from provider schema).
@immutable
final class ComputeInstanceFromMachineImageScheduling {
  const ComputeInstanceFromMachineImageScheduling({
    this.automaticRestart,
    this.availabilityDomain,
    this.hostErrorTimeoutSeconds,
    this.instanceTerminationAction,
    this.maintenanceInterval,
    this.minNodeCpus,
    this.onHostMaintenance,
    this.preemptible,
    this.provisioningModel,
    this.skipGuestOsShutdown,
    this.terminationTime,
    this.gracefulShutdown,
    this.localSsdRecoveryTimeout,
    this.maxRunDuration,
    this.nodeAffinities,
    this.onInstanceStopAction,
    this.preemptionNoticeDuration,
  });

  final TfArg<bool>? automaticRestart;

  final TfArg<num>? availabilityDomain;

  final TfArg<num>? hostErrorTimeoutSeconds;

  final TfArg<String>? instanceTerminationAction;

  final TfArg<String>? maintenanceInterval;

  final TfArg<num>? minNodeCpus;

  final TfArg<String>? onHostMaintenance;

  final TfArg<bool>? preemptible;

  final TfArg<String>? provisioningModel;

  final TfArg<bool>? skipGuestOsShutdown;

  final TfArg<String>? terminationTime;

  final ComputeInstanceFromMachineImageSchedulingGracefulShutdown?
  gracefulShutdown;

  final ComputeInstanceFromMachineImageSchedulingLocalSsdRecoveryTimeout?
  localSsdRecoveryTimeout;

  final ComputeInstanceFromMachineImageSchedulingMaxRunDuration? maxRunDuration;

  final List<ComputeInstanceFromMachineImageSchedulingNodeAffinities>?
  nodeAffinities;

  final ComputeInstanceFromMachineImageSchedulingOnInstanceStopAction?
  onInstanceStopAction;

  final ComputeInstanceFromMachineImageSchedulingPreemptionNoticeDuration?
  preemptionNoticeDuration;

  Map<String, Object?> encode() => {
    if (automaticRestart != null)
      'automatic_restart': automaticRestart!.toTfJson(),
    if (availabilityDomain != null)
      'availability_domain': availabilityDomain!.toTfJson(),
    if (hostErrorTimeoutSeconds != null)
      'host_error_timeout_seconds': hostErrorTimeoutSeconds!.toTfJson(),
    if (instanceTerminationAction != null)
      'instance_termination_action': instanceTerminationAction!.toTfJson(),
    if (maintenanceInterval != null)
      'maintenance_interval': maintenanceInterval!.toTfJson(),
    if (minNodeCpus != null) 'min_node_cpus': minNodeCpus!.toTfJson(),
    if (onHostMaintenance != null)
      'on_host_maintenance': onHostMaintenance!.toTfJson(),
    if (preemptible != null) 'preemptible': preemptible!.toTfJson(),
    if (provisioningModel != null)
      'provisioning_model': provisioningModel!.toTfJson(),
    if (skipGuestOsShutdown != null)
      'skip_guest_os_shutdown': skipGuestOsShutdown!.toTfJson(),
    if (terminationTime != null)
      'termination_time': terminationTime!.toTfJson(),
    if (gracefulShutdown != null)
      'graceful_shutdown': gracefulShutdown!.encode(),
    if (localSsdRecoveryTimeout != null)
      'local_ssd_recovery_timeout': localSsdRecoveryTimeout!.encode(),
    if (maxRunDuration != null) 'max_run_duration': maxRunDuration!.encode(),
    if (nodeAffinities != null)
      'node_affinities': [for (final e in nodeAffinities!) e.encode()],
    if (onInstanceStopAction != null)
      'on_instance_stop_action': onInstanceStopAction!.encode(),
    if (preemptionNoticeDuration != null)
      'preemption_notice_duration': preemptionNoticeDuration!.encode(),
  };
}

/// Typed helper for the `scheduling.graceful_shutdown` block of
/// `google_compute_instance_from_machine_image` (derived from provider schema).
@immutable
final class ComputeInstanceFromMachineImageSchedulingGracefulShutdown {
  const ComputeInstanceFromMachineImageSchedulingGracefulShutdown({
    required this.enabled,
    this.maxDuration,
  });

  final TfArg<bool> enabled;

  final ComputeInstanceFromMachineImageSchedulingGracefulShutdownMaxDuration?
  maxDuration;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    if (maxDuration != null) 'max_duration': maxDuration!.encode(),
  };
}

/// Typed helper for the `scheduling.graceful_shutdown.max_duration` block of
/// `google_compute_instance_from_machine_image` (derived from provider schema).
@immutable
final class ComputeInstanceFromMachineImageSchedulingGracefulShutdownMaxDuration {
  const ComputeInstanceFromMachineImageSchedulingGracefulShutdownMaxDuration({
    this.nanos,
    required this.seconds,
  });

  final TfArg<num>? nanos;

  final TfArg<num> seconds;

  Map<String, Object?> encode() => {
    if (nanos != null) 'nanos': nanos!.toTfJson(),
    'seconds': seconds.toTfJson(),
  };
}

/// Typed helper for the `scheduling.local_ssd_recovery_timeout` block of
/// `google_compute_instance_from_machine_image` (derived from provider schema).
@immutable
final class ComputeInstanceFromMachineImageSchedulingLocalSsdRecoveryTimeout {
  const ComputeInstanceFromMachineImageSchedulingLocalSsdRecoveryTimeout({
    this.nanos,
    required this.seconds,
  });

  final TfArg<num>? nanos;

  final TfArg<num> seconds;

  Map<String, Object?> encode() => {
    if (nanos != null) 'nanos': nanos!.toTfJson(),
    'seconds': seconds.toTfJson(),
  };
}

/// Typed helper for the `scheduling.max_run_duration` block of
/// `google_compute_instance_from_machine_image` (derived from provider schema).
@immutable
final class ComputeInstanceFromMachineImageSchedulingMaxRunDuration {
  const ComputeInstanceFromMachineImageSchedulingMaxRunDuration({
    this.nanos,
    required this.seconds,
  });

  final TfArg<num>? nanos;

  final TfArg<num> seconds;

  Map<String, Object?> encode() => {
    if (nanos != null) 'nanos': nanos!.toTfJson(),
    'seconds': seconds.toTfJson(),
  };
}

/// Typed helper for the `scheduling.node_affinities` block of
/// `google_compute_instance_from_machine_image` (derived from provider schema).
@immutable
final class ComputeInstanceFromMachineImageSchedulingNodeAffinities {
  const ComputeInstanceFromMachineImageSchedulingNodeAffinities({
    required this.key,
    required this.operator,
    required this.values,
  });

  final TfArg<String> key;

  final TfArg<String> operator;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'operator': operator.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `scheduling.on_instance_stop_action` block of
/// `google_compute_instance_from_machine_image` (derived from provider schema).
@immutable
final class ComputeInstanceFromMachineImageSchedulingOnInstanceStopAction {
  const ComputeInstanceFromMachineImageSchedulingOnInstanceStopAction({
    this.discardLocalSsd,
  });

  final TfArg<bool>? discardLocalSsd;

  Map<String, Object?> encode() => {
    if (discardLocalSsd != null)
      'discard_local_ssd': discardLocalSsd!.toTfJson(),
  };
}

/// Typed helper for the `scheduling.preemption_notice_duration` block of
/// `google_compute_instance_from_machine_image` (derived from provider schema).
@immutable
final class ComputeInstanceFromMachineImageSchedulingPreemptionNoticeDuration {
  const ComputeInstanceFromMachineImageSchedulingPreemptionNoticeDuration({
    this.nanos,
    required this.seconds,
  });

  final TfArg<num>? nanos;

  final TfArg<num> seconds;

  Map<String, Object?> encode() => {
    if (nanos != null) 'nanos': nanos!.toTfJson(),
    'seconds': seconds.toTfJson(),
  };
}

/// Typed helper for the `service_account` block of
/// `google_compute_instance_from_machine_image` (derived from provider schema).
@immutable
final class ComputeInstanceFromMachineImageServiceAccount {
  const ComputeInstanceFromMachineImageServiceAccount({
    this.email,
    required this.scopes,
  });

  final TfArg<String>? email;

  final TfArg<List<Object?>> scopes;

  Map<String, Object?> encode() => {
    if (email != null) 'email': email!.toTfJson(),
    'scopes': scopes.toTfJson(),
  };
}

/// Typed helper for the `shielded_instance_config` block of
/// `google_compute_instance_from_machine_image` (derived from provider schema).
@immutable
final class ComputeInstanceFromMachineImageShieldedInstanceConfig {
  const ComputeInstanceFromMachineImageShieldedInstanceConfig({
    this.enableIntegrityMonitoring,
    this.enableSecureBoot,
    this.enableVtpm,
  });

  final TfArg<bool>? enableIntegrityMonitoring;

  final TfArg<bool>? enableSecureBoot;

  final TfArg<bool>? enableVtpm;

  Map<String, Object?> encode() => {
    if (enableIntegrityMonitoring != null)
      'enable_integrity_monitoring': enableIntegrityMonitoring!.toTfJson(),
    if (enableSecureBoot != null)
      'enable_secure_boot': enableSecureBoot!.toTfJson(),
    if (enableVtpm != null) 'enable_vtpm': enableVtpm!.toTfJson(),
  };
}

/// Typed helper for the `source_machine_image_encryption_key` block of
/// `google_compute_instance_from_machine_image` (derived from provider schema).
@immutable
final class ComputeInstanceFromMachineImageSourceMachineImageEncryptionKey {
  const ComputeInstanceFromMachineImageSourceMachineImageEncryptionKey({
    this.kmsKeyName,
    this.kmsKeyServiceAccount,
    this.rawKey,
    this.rsaEncryptedKey,
  });

  final TfArg<String>? kmsKeyName;

  final TfArg<String>? kmsKeyServiceAccount;

  final TfArg<String>? rawKey;

  final TfArg<String>? rsaEncryptedKey;

  Map<String, Object?> encode() => {
    if (kmsKeyName != null) 'kms_key_name': kmsKeyName!.toTfJson(),
    if (kmsKeyServiceAccount != null)
      'kms_key_service_account': kmsKeyServiceAccount!.toTfJson(),
    if (rawKey != null) 'raw_key': rawKey!.toTfJson(),
    if (rsaEncryptedKey != null)
      'rsa_encrypted_key': rsaEncryptedKey!.toTfJson(),
  };
}

/// Typed helper for the `workload_identity_config` block of
/// `google_compute_instance_from_machine_image` (derived from provider schema).
@immutable
final class ComputeInstanceFromMachineImageWorkloadIdentityConfig {
  const ComputeInstanceFromMachineImageWorkloadIdentityConfig({
    this.identity,
    this.identityCertificateEnabled,
  });

  final TfArg<String>? identity;

  final TfArg<bool>? identityCertificateEnabled;

  Map<String, Object?> encode() => {
    if (identity != null) 'identity': identity!.toTfJson(),
    if (identityCertificateEnabled != null)
      'identity_certificate_enabled': identityCertificateEnabled!.toTfJson(),
  };
}

/// Factory wrapper for `google_compute_instance_from_machine_image`.
final class GoogleComputeInstanceFromMachineImage extends Resource {
  static const String tfType = 'google_compute_instance_from_machine_image';

  GoogleComputeInstanceFromMachineImage({
    required super.localName,
    TfArg<bool>? allowStoppingForUpdate,
    TfArg<bool>? canIpForward,
    TfArg<String>? deletionPolicy,
    TfArg<bool>? deletionProtection,
    TfArg<String>? description,
    TfArg<String>? desiredStatus,
    TfArg<bool>? enableDisplay,
    TfArg<bool>? eraseWindowsVssSignature,
    TfArg<String>? hostname,
    TfArg<String>? keyRevocationActionType,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? machineType,
    TfArg<Map<String, String>>? metadata,
    TfArg<String>? metadataStartupScript,
    TfArg<String>? minCpuPlatform,
    required TfArg<String> name,
    TfArg<Map<String, String>>? partnerMetadata,
    TfArg<String>? project,
    TfArg<List<String>>? resourcePolicies,
    required TfArg<String> sourceMachineImage,
    TfArg<List<String>>? tags,
    TfArg<String>? zone,
    ComputeInstanceFromMachineImageAdvancedMachineFeatures?
    advancedMachineFeatures,
    ComputeInstanceFromMachineImageConfidentialInstanceConfig?
    confidentialInstanceConfig,
    List<ComputeInstanceFromMachineImageGuestAccelerator>? guestAccelerator,
    ComputeInstanceFromMachineImageInstanceEncryptionKey? instanceEncryptionKey,
    List<ComputeInstanceFromMachineImageNetworkInterface>? networkInterface,
    ComputeInstanceFromMachineImageNetworkPerformanceConfig?
    networkPerformanceConfig,
    ComputeInstanceFromMachineImageParams? params,
    ComputeInstanceFromMachineImageReservationAffinity? reservationAffinity,
    ComputeInstanceFromMachineImageScheduling? scheduling,
    ComputeInstanceFromMachineImageServiceAccount? serviceAccount,
    ComputeInstanceFromMachineImageShieldedInstanceConfig?
    shieldedInstanceConfig,
    ComputeInstanceFromMachineImageSourceMachineImageEncryptionKey?
    sourceMachineImageEncryptionKey,
    ComputeInstanceFromMachineImageWorkloadIdentityConfig?
    workloadIdentityConfig,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           if (allowStoppingForUpdate != null)
             'allow_stopping_for_update': allowStoppingForUpdate,
           if (canIpForward != null) 'can_ip_forward': canIpForward,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (deletionProtection != null)
             'deletion_protection': deletionProtection,
           if (description != null) 'description': description,
           if (desiredStatus != null) 'desired_status': desiredStatus,
           if (enableDisplay != null) 'enable_display': enableDisplay,
           if (eraseWindowsVssSignature != null)
             'erase_windows_vss_signature': eraseWindowsVssSignature,
           if (hostname != null) 'hostname': hostname,
           if (keyRevocationActionType != null)
             'key_revocation_action_type': keyRevocationActionType,
           if (labels != null) 'labels': labels,
           if (machineType != null) 'machine_type': machineType,
           if (metadata != null) 'metadata': metadata,
           if (metadataStartupScript != null)
             'metadata_startup_script': metadataStartupScript,
           if (minCpuPlatform != null) 'min_cpu_platform': minCpuPlatform,
           'name': name,
           if (partnerMetadata != null) 'partner_metadata': partnerMetadata,
           if (project != null) 'project': project,
           if (resourcePolicies != null) 'resource_policies': resourcePolicies,
           'source_machine_image': sourceMachineImage,
           if (tags != null) 'tags': tags,
           if (zone != null) 'zone': zone,
           if (advancedMachineFeatures != null)
             'advanced_machine_features': TfArg.literal(
               advancedMachineFeatures.encode(),
             ),
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
           if (serviceAccount != null)
             'service_account': TfArg.literal(serviceAccount.encode()),
           if (shieldedInstanceConfig != null)
             'shielded_instance_config': TfArg.literal(
               shieldedInstanceConfig.encode(),
             ),
           if (sourceMachineImageEncryptionKey != null)
             'source_machine_image_encryption_key': TfArg.literal(
               sourceMachineImageEncryptionKey.encode(),
             ),
           if (workloadIdentityConfig != null)
             'workload_identity_config': TfArg.literal(
               workloadIdentityConfig.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeInstanceFromMachineImageSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeInstanceFromMachineImage>`.
  RefTo<GoogleComputeInstanceFromMachineImage> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `attached_disk` attribute.
  TfRef<List<Map<String, Object?>>> get attachedDisk =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'attached_disk');

  /// Reference to `boot_disk` attribute.
  TfRef<List<Map<String, Object?>>> get bootDisk =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'boot_disk');

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

  /// Reference to `instance_id` attribute.
  TfRef<String> get instanceId => TfRef.attribute<String>(this, 'instance_id');

  /// Reference to `label_fingerprint` attribute.
  TfRef<String> get labelFingerprint =>
      TfRef.attribute<String>(this, 'label_fingerprint');

  /// Reference to `metadata_fingerprint` attribute.
  TfRef<String> get metadataFingerprint =>
      TfRef.attribute<String>(this, 'metadata_fingerprint');

  /// Reference to `scratch_disk` attribute.
  TfRef<List<Map<String, Object?>>> get scratchDisk =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'scratch_disk');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `tags_fingerprint` attribute.
  TfRef<String> get tagsFingerprint =>
      TfRef.attribute<String>(this, 'tags_fingerprint');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');
}
