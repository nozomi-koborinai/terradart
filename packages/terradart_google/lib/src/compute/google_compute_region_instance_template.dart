// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;
import '../compute/google_compute_subnetwork.dart' show GoogleComputeSubnetwork;
import '../iam/google_service_account.dart' show GoogleServiceAccount;
import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_compute_region_instance_template`.
const Set<String> _googleComputeRegionInstanceTemplateSensitive = <String>{
  'disk.source_image_encryption_key.raw_key',
  'disk.source_image_encryption_key.rsa_encrypted_key',
  'disk.source_snapshot_encryption_key.raw_key',
  'disk.source_snapshot_encryption_key.rsa_encrypted_key',
};

/// Typed helper for the `advanced_machine_features` block of
/// `google_compute_region_instance_template` (derived from provider schema).
@immutable
final class ComputeRegionInstanceTemplateAdvancedMachineFeatures {
  const ComputeRegionInstanceTemplateAdvancedMachineFeatures({
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

/// Typed helper for the `confidential_instance_config` block of
/// `google_compute_region_instance_template` (derived from provider schema).
@immutable
final class ComputeRegionInstanceTemplateConfidentialInstanceConfig {
  const ComputeRegionInstanceTemplateConfidentialInstanceConfig({
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

/// Typed helper for the `disk` block of
/// `google_compute_region_instance_template` (derived from provider schema).
@immutable
final class ComputeRegionInstanceTemplateDisk {
  const ComputeRegionInstanceTemplateDisk({
    this.architecture,
    this.autoDelete,
    this.boot,
    this.deviceName,
    this.diskName,
    this.diskSizeGb,
    this.diskType,
    this.guestOsFeatures,
    this.interface,
    this.labels,
    this.mode,
    this.provisionedIops,
    this.provisionedThroughput,
    this.resourceManagerTags,
    this.resourcePolicies,
    this.source,
    this.sourceImage,
    this.sourceSnapshot,
    this.storagePool,
    this.type,
    this.diskEncryptionKey,
    this.sourceImageEncryptionKey,
    this.sourceSnapshotEncryptionKey,
  });

  final TfArg<String>? architecture;

  final TfArg<bool>? autoDelete;

  final TfArg<bool>? boot;

  final TfArg<String>? deviceName;

  final TfArg<String>? diskName;

  final TfArg<num>? diskSizeGb;

  final TfArg<String>? diskType;

  final TfArg<List<String>>? guestOsFeatures;

  final TfArg<String>? interface;

  final TfArg<Map<String, String>>? labels;

  final TfArg<String>? mode;

  final TfArg<num>? provisionedIops;

  final TfArg<num>? provisionedThroughput;

  final TfArg<Map<String, String>>? resourceManagerTags;

  final TfArg<List<String>>? resourcePolicies;

  final TfArg<String>? source;

  final TfArg<String>? sourceImage;

  final TfArg<String>? sourceSnapshot;

  final TfArg<String>? storagePool;

  final TfArg<String>? type;

  final ComputeRegionInstanceTemplateDiskDiskEncryptionKey? diskEncryptionKey;

  final ComputeRegionInstanceTemplateDiskSourceImageEncryptionKey?
  sourceImageEncryptionKey;

  final ComputeRegionInstanceTemplateDiskSourceSnapshotEncryptionKey?
  sourceSnapshotEncryptionKey;

  Map<String, Object?> encode() => {
    'architecture': ?architecture?.toTfJson(),
    'auto_delete': ?autoDelete?.toTfJson(),
    'boot': ?boot?.toTfJson(),
    'device_name': ?deviceName?.toTfJson(),
    'disk_name': ?diskName?.toTfJson(),
    'disk_size_gb': ?diskSizeGb?.toTfJson(),
    'disk_type': ?diskType?.toTfJson(),
    'guest_os_features': ?guestOsFeatures?.toTfJson(),
    'interface': ?interface?.toTfJson(),
    'labels': ?labels?.toTfJson(),
    'mode': ?mode?.toTfJson(),
    'provisioned_iops': ?provisionedIops?.toTfJson(),
    'provisioned_throughput': ?provisionedThroughput?.toTfJson(),
    'resource_manager_tags': ?resourceManagerTags?.toTfJson(),
    'resource_policies': ?resourcePolicies?.toTfJson(),
    'source': ?source?.toTfJson(),
    'source_image': ?sourceImage?.toTfJson(),
    'source_snapshot': ?sourceSnapshot?.toTfJson(),
    'storage_pool': ?storagePool?.toTfJson(),
    'type': ?type?.toTfJson(),
    'disk_encryption_key': ?diskEncryptionKey?.encode(),
    'source_image_encryption_key': ?sourceImageEncryptionKey?.encode(),
    'source_snapshot_encryption_key': ?sourceSnapshotEncryptionKey?.encode(),
  };
}

/// Typed helper for the `disk.disk_encryption_key` block of
/// `google_compute_region_instance_template` (derived from provider schema).
@immutable
final class ComputeRegionInstanceTemplateDiskDiskEncryptionKey {
  const ComputeRegionInstanceTemplateDiskDiskEncryptionKey({
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

/// Typed helper for the `disk.source_image_encryption_key` block of
/// `google_compute_region_instance_template` (derived from provider schema).
@immutable
final class ComputeRegionInstanceTemplateDiskSourceImageEncryptionKey {
  const ComputeRegionInstanceTemplateDiskSourceImageEncryptionKey({
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

/// Typed helper for the `disk.source_snapshot_encryption_key` block of
/// `google_compute_region_instance_template` (derived from provider schema).
@immutable
final class ComputeRegionInstanceTemplateDiskSourceSnapshotEncryptionKey {
  const ComputeRegionInstanceTemplateDiskSourceSnapshotEncryptionKey({
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

/// Typed helper for the `guest_accelerator` block of
/// `google_compute_region_instance_template` (derived from provider schema).
@immutable
final class ComputeRegionInstanceTemplateGuestAccelerator {
  const ComputeRegionInstanceTemplateGuestAccelerator({
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

/// Typed helper for the `network_interface` block of
/// `google_compute_region_instance_template` (derived from provider schema).
@immutable
final class ComputeRegionInstanceTemplateNetworkInterface {
  const ComputeRegionInstanceTemplateNetworkInterface({
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

  final TfArg<ComputeRegionInstanceTemplateNetworkInterfaceNicType>? nicType;

  final TfArg<num>? queueCount;

  final TfArg<String>? stackType;

  final RefTo<GoogleComputeSubnetwork>? subnetwork;

  final TfArg<String>? subnetworkProject;

  final TfArg<num>? vlan;

  final List<ComputeRegionInstanceTemplateNetworkInterfaceAccessConfig>?
  accessConfig;

  final List<ComputeRegionInstanceTemplateNetworkInterfaceAliasIpRange>?
  aliasIpRange;

  final List<ComputeRegionInstanceTemplateNetworkInterfaceIpv6AccessConfig>?
  ipv6AccessConfig;

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
enum ComputeRegionInstanceTemplateNetworkInterfaceNicType
    implements TerraformEnum {
  gvnic('GVNIC'),
  virtioNet('VIRTIO_NET'),
  mrdma('MRDMA'),
  irdma('IRDMA');

  const ComputeRegionInstanceTemplateNetworkInterfaceNicType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `network_interface.access_config` block of
/// `google_compute_region_instance_template` (derived from provider schema).
@immutable
final class ComputeRegionInstanceTemplateNetworkInterfaceAccessConfig {
  const ComputeRegionInstanceTemplateNetworkInterfaceAccessConfig({
    this.natIp,
    this.networkTier,
  });

  final TfArg<String>? natIp;

  final TfArg<String>? networkTier;

  Map<String, Object?> encode() => {
    'nat_ip': ?natIp?.toTfJson(),
    'network_tier': ?networkTier?.toTfJson(),
  };
}

/// Typed helper for the `network_interface.alias_ip_range` block of
/// `google_compute_region_instance_template` (derived from provider schema).
@immutable
final class ComputeRegionInstanceTemplateNetworkInterfaceAliasIpRange {
  const ComputeRegionInstanceTemplateNetworkInterfaceAliasIpRange({
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
/// `google_compute_region_instance_template` (derived from provider schema).
@immutable
final class ComputeRegionInstanceTemplateNetworkInterfaceIpv6AccessConfig {
  const ComputeRegionInstanceTemplateNetworkInterfaceIpv6AccessConfig({
    required this.networkTier,
  });

  final TfArg<String> networkTier;

  Map<String, Object?> encode() => {'network_tier': networkTier.toTfJson()};
}

/// Typed helper for the `network_performance_config` block of
/// `google_compute_region_instance_template` (derived from provider schema).
@immutable
final class ComputeRegionInstanceTemplateNetworkPerformanceConfig {
  const ComputeRegionInstanceTemplateNetworkPerformanceConfig({
    required this.totalEgressBandwidthTier,
  });

  final TfArg<
    ComputeRegionInstanceTemplateNetworkPerformanceConfigTotalEgressBandwidthTier
  >
  totalEgressBandwidthTier;

  Map<String, Object?> encode() => {
    'total_egress_bandwidth_tier': totalEgressBandwidthTier.toTfJson(),
  };
}

/// `total_egress_bandwidth_tier` — derived from the provider schema description.
enum ComputeRegionInstanceTemplateNetworkPerformanceConfigTotalEgressBandwidthTier
    implements TerraformEnum {
  tier1('TIER_1'),
  defaultCase('DEFAULT');

  const ComputeRegionInstanceTemplateNetworkPerformanceConfigTotalEgressBandwidthTier(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `reservation_affinity` block of
/// `google_compute_region_instance_template` (derived from provider schema).
@immutable
final class ComputeRegionInstanceTemplateReservationAffinity {
  const ComputeRegionInstanceTemplateReservationAffinity({
    required this.type,
    this.specificReservation,
  });

  final TfArg<String> type;

  final ComputeRegionInstanceTemplateReservationAffinitySpecificReservation?
  specificReservation;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'specific_reservation': ?specificReservation?.encode(),
  };
}

/// Typed helper for the `reservation_affinity.specific_reservation` block of
/// `google_compute_region_instance_template` (derived from provider schema).
@immutable
final class ComputeRegionInstanceTemplateReservationAffinitySpecificReservation {
  const ComputeRegionInstanceTemplateReservationAffinitySpecificReservation({
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
/// `google_compute_region_instance_template` (derived from provider schema).
@immutable
final class ComputeRegionInstanceTemplateScheduling {
  const ComputeRegionInstanceTemplateScheduling({
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

  final List<ComputeRegionInstanceTemplateSchedulingLocalSsdRecoveryTimeout>?
  localSsdRecoveryTimeout;

  final ComputeRegionInstanceTemplateSchedulingMaxRunDuration? maxRunDuration;

  final List<ComputeRegionInstanceTemplateSchedulingNodeAffinities>?
  nodeAffinities;

  final ComputeRegionInstanceTemplateSchedulingOnInstanceStopAction?
  onInstanceStopAction;

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
    if (localSsdRecoveryTimeout != null)
      'local_ssd_recovery_timeout': [
        for (final e in localSsdRecoveryTimeout!) e.encode(),
      ],
    'max_run_duration': ?maxRunDuration?.encode(),
    if (nodeAffinities != null)
      'node_affinities': [for (final e in nodeAffinities!) e.encode()],
    'on_instance_stop_action': ?onInstanceStopAction?.encode(),
  };
}

/// Typed helper for the `scheduling.local_ssd_recovery_timeout` block of
/// `google_compute_region_instance_template` (derived from provider schema).
@immutable
final class ComputeRegionInstanceTemplateSchedulingLocalSsdRecoveryTimeout {
  const ComputeRegionInstanceTemplateSchedulingLocalSsdRecoveryTimeout({
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
/// `google_compute_region_instance_template` (derived from provider schema).
@immutable
final class ComputeRegionInstanceTemplateSchedulingMaxRunDuration {
  const ComputeRegionInstanceTemplateSchedulingMaxRunDuration({
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
/// `google_compute_region_instance_template` (derived from provider schema).
@immutable
final class ComputeRegionInstanceTemplateSchedulingNodeAffinities {
  const ComputeRegionInstanceTemplateSchedulingNodeAffinities({
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
/// `google_compute_region_instance_template` (derived from provider schema).
@immutable
final class ComputeRegionInstanceTemplateSchedulingOnInstanceStopAction {
  const ComputeRegionInstanceTemplateSchedulingOnInstanceStopAction({
    this.discardLocalSsd,
  });

  final TfArg<bool>? discardLocalSsd;

  Map<String, Object?> encode() => {
    'discard_local_ssd': ?discardLocalSsd?.toTfJson(),
  };
}

/// Typed helper for the `service_account` block of
/// `google_compute_region_instance_template` (derived from provider schema).
@immutable
final class ComputeRegionInstanceTemplateServiceAccount {
  const ComputeRegionInstanceTemplateServiceAccount({
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
/// `google_compute_region_instance_template` (derived from provider schema).
@immutable
final class ComputeRegionInstanceTemplateShieldedInstanceConfig {
  const ComputeRegionInstanceTemplateShieldedInstanceConfig({
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
/// `google_compute_region_instance_template` (derived from provider schema).
@immutable
final class ComputeRegionInstanceTemplateWorkloadIdentityConfig {
  const ComputeRegionInstanceTemplateWorkloadIdentityConfig({
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

/// Factory wrapper for `google_compute_region_instance_template`.
///
/// Regional instance template (region-scoped sibling of
/// `google_compute_instance_template`). Required: [machineType] and at
/// least one `disk` block. Prefer [namePrefix] over [name] so Terraform
/// can rotate unique names; do not set both.
final class GoogleComputeRegionInstanceTemplate extends Resource {
  static const String tfType = 'google_compute_region_instance_template';

  GoogleComputeRegionInstanceTemplate({
    required super.localName,
    TfArg<String>? name,
    TfArg<String>? namePrefix,
    required TfArg<String> machineType,
    TfArg<String>? region,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    TfArg<Map<String, String>>? metadata,
    TfArg<String>? metadataStartupScript,
    TfArg<List<String>>? tags,
    TfArg<bool>? canIpForward,
    TfArg<String>? minCpuPlatform,
    TfArg<Map<String, String>>? resourceManagerTags,
    TfArg<List<String>>? resourcePolicies,
    TfArg<String>? keyRevocationActionType,
    TfArg<String>? instanceDescription,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    ComputeRegionInstanceTemplateAdvancedMachineFeatures?
    advancedMachineFeatures,
    ComputeRegionInstanceTemplateConfidentialInstanceConfig?
    confidentialInstanceConfig,
    required List<ComputeRegionInstanceTemplateDisk> disk,
    List<ComputeRegionInstanceTemplateGuestAccelerator>? guestAccelerator,
    List<ComputeRegionInstanceTemplateNetworkInterface>? networkInterface,
    ComputeRegionInstanceTemplateNetworkPerformanceConfig?
    networkPerformanceConfig,
    ComputeRegionInstanceTemplateReservationAffinity? reservationAffinity,
    ComputeRegionInstanceTemplateScheduling? scheduling,
    ComputeRegionInstanceTemplateServiceAccount? serviceAccount,
    ComputeRegionInstanceTemplateShieldedInstanceConfig? shieldedInstanceConfig,
    ComputeRegionInstanceTemplateWorkloadIdentityConfig? workloadIdentityConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': ?name,
           'name_prefix': ?namePrefix,
           'machine_type': machineType,
           'region': ?region,
           'description': ?description,
           'labels': ?labels,
           'metadata': ?metadata,
           'metadata_startup_script': ?metadataStartupScript,
           'tags': ?tags,
           'can_ip_forward': ?canIpForward,
           'min_cpu_platform': ?minCpuPlatform,
           'resource_manager_tags': ?resourceManagerTags,
           'resource_policies': ?resourcePolicies,
           'key_revocation_action_type': ?keyRevocationActionType,
           'instance_description': ?instanceDescription,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
           if (advancedMachineFeatures != null)
             'advanced_machine_features': TfArg.literal(
               advancedMachineFeatures.encode(),
             ),
           if (confidentialInstanceConfig != null)
             'confidential_instance_config': TfArg.literal(
               confidentialInstanceConfig.encode(),
             ),
           'disk': TfArg.literal([for (final e in disk) e.encode()]),
           if (guestAccelerator != null)
             'guest_accelerator': TfArg.literal([
               for (final e in guestAccelerator) e.encode(),
             ]),
           if (networkInterface != null)
             'network_interface': TfArg.literal([
               for (final e in networkInterface) e.encode(),
             ]),
           if (networkPerformanceConfig != null)
             'network_performance_config': TfArg.literal(
               networkPerformanceConfig.encode(),
             ),
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
           if (workloadIdentityConfig != null)
             'workload_identity_config': TfArg.literal(
               workloadIdentityConfig.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeRegionInstanceTemplateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeRegionInstanceTemplate>`.
  RefTo<GoogleComputeRegionInstanceTemplate> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `metadata_fingerprint` attribute.
  TfRef<String> get metadataFingerprint =>
      TfRef.attribute<String>(this, 'metadata_fingerprint');

  /// Reference to `numeric_id` attribute.
  TfRef<String> get numericId => TfRef.attribute<String>(this, 'numeric_id');

  /// Reference to `tags_fingerprint` attribute.
  TfRef<String> get tagsFingerprint =>
      TfRef.attribute<String>(this, 'tags_fingerprint');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `can_ip_forward` attribute.
  TfRef<bool> get canIpForwardRef =>
      TfRef.attribute<bool>(this, 'can_ip_forward');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `instance_description` attribute.
  TfRef<String> get instanceDescriptionRef =>
      TfRef.attribute<String>(this, 'instance_description');

  /// Reference to `key_revocation_action_type` attribute.
  TfRef<String> get keyRevocationActionTypeRef =>
      TfRef.attribute<String>(this, 'key_revocation_action_type');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `machine_type` attribute.
  TfRef<String> get machineTypeRef =>
      TfRef.attribute<String>(this, 'machine_type');

  /// Reference to `metadata` attribute.
  TfRef<Map<String, String>> get metadataRef =>
      TfRef.attribute<Map<String, String>>(this, 'metadata');

  /// Reference to `metadata_startup_script` attribute.
  TfRef<String> get metadataStartupScriptRef =>
      TfRef.attribute<String>(this, 'metadata_startup_script');

  /// Reference to `min_cpu_platform` attribute.
  TfRef<String> get minCpuPlatformRef =>
      TfRef.attribute<String>(this, 'min_cpu_platform');

  /// Reference to `name_prefix` attribute.
  TfRef<String> get namePrefixRef =>
      TfRef.attribute<String>(this, 'name_prefix');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_manager_tags` attribute.
  TfRef<Map<String, String>> get resourceManagerTagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'resource_manager_tags');

  /// Reference to `resource_policies` attribute.
  TfRef<List<String>> get resourcePoliciesRef =>
      TfRef.attribute<List<String>>(this, 'resource_policies');

  /// Reference to `tags` attribute.
  TfRef<List<String>> get tagsRef =>
      TfRef.attribute<List<String>>(this, 'tags');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');
}
