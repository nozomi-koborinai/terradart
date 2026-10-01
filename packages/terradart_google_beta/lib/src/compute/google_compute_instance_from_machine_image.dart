// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import 'package:terradart_google/terradart_google.dart'
    show
        GoogleComputeNetwork,
        GoogleComputeSubnetwork,
        GoogleKmsCryptoKey,
        GoogleServiceAccount;

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
    'enable_nested_virtualization': ?enableNestedVirtualization?.toTfJson(),
    'enable_uefi_networking': ?enableUefiNetworking?.toTfJson(),
    'performance_monitoring_unit': ?performanceMonitoringUnit?.toTfJson(),
    'threads_per_core': ?threadsPerCore?.toTfJson(),
    'turbo_mode': ?turboMode?.toTfJson(),
    'visible_core_count': ?visibleCoreCount?.toTfJson(),
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
    'confidential_instance_type': ?confidentialInstanceType?.toTfJson(),
    'enable_confidential_compute': ?enableConfidentialCompute?.toTfJson(),
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

  final RefTo<GoogleKmsCryptoKey>? kmsKeySelfLink;

  final TfArg<String>? kmsKeyServiceAccount;

  Map<String, Object?> encode() => {
    'kms_key_self_link': ?kmsKeySelfLink?.encodeAs('id').toTfJson(),
    'kms_key_service_account': ?kmsKeyServiceAccount?.toTfJson(),
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

  final RefTo<GoogleComputeNetwork>? network;

  final TfArg<String>? networkAttachment;

  final TfArg<String>? networkIp;

  final TfArg<ComputeInstanceFromMachineImageNicType>? nicType;

  final TfArg<num>? queueCount;

  final TfArg<String>? securityPolicy;

  final TfArg<String>? stackType;

  final RefTo<GoogleComputeSubnetwork>? subnetwork;

  final TfArg<String>? subnetworkProject;

  final TfArg<num>? vlan;

  final List<ComputeInstanceFromMachineImageAccessConfig>? accessConfig;

  final List<ComputeInstanceFromMachineImageAliasIpRange>? aliasIpRange;

  final List<ComputeInstanceFromMachineImageAliasIpv6Range>? aliasIpv6Range;

  final List<ComputeInstanceFromMachineImageIpv6AccessConfig>? ipv6AccessConfig;

  Map<String, Object?> encode() => {
    'igmp_query': ?igmpQuery?.toTfJson(),
    'internal_ipv6_prefix_length': ?internalIpv6PrefixLength?.toTfJson(),
    'ipv6_address': ?ipv6Address?.toTfJson(),
    'network': ?network?.encodeAs('id').toTfJson(),
    'network_attachment': ?networkAttachment?.toTfJson(),
    'network_ip': ?networkIp?.toTfJson(),
    'nic_type': ?nicType?.toTfJson(),
    'queue_count': ?queueCount?.toTfJson(),
    'security_policy': ?securityPolicy?.toTfJson(),
    'stack_type': ?stackType?.toTfJson(),
    'subnetwork': ?subnetwork?.encodeAs('id').toTfJson(),
    'subnetwork_project': ?subnetworkProject?.toTfJson(),
    'vlan': ?vlan?.toTfJson(),
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
enum ComputeInstanceFromMachineImageNicType implements TerraformEnum {
  gvnic('GVNIC'),
  virtioNet('VIRTIO_NET'),
  idpf('IDPF'),
  mrdma('MRDMA'),
  irdma('IRDMA');

  const ComputeInstanceFromMachineImageNicType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `network_interface.access_config` block of
/// `google_compute_instance_from_machine_image` (derived from provider schema).
@immutable
final class ComputeInstanceFromMachineImageAccessConfig {
  const ComputeInstanceFromMachineImageAccessConfig({
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
/// `google_compute_instance_from_machine_image` (derived from provider schema).
@immutable
final class ComputeInstanceFromMachineImageAliasIpRange {
  const ComputeInstanceFromMachineImageAliasIpRange({
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

/// Typed helper for the `network_interface.alias_ipv6_range` block of
/// `google_compute_instance_from_machine_image` (derived from provider schema).
@immutable
final class ComputeInstanceFromMachineImageAliasIpv6Range {
  const ComputeInstanceFromMachineImageAliasIpv6Range({
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
/// `google_compute_instance_from_machine_image` (derived from provider schema).
@immutable
final class ComputeInstanceFromMachineImageIpv6AccessConfig {
  const ComputeInstanceFromMachineImageIpv6AccessConfig({
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
/// `google_compute_instance_from_machine_image` (derived from provider schema).
@immutable
final class ComputeInstanceFromMachineImageNetworkPerformanceConfig {
  const ComputeInstanceFromMachineImageNetworkPerformanceConfig({
    required this.totalEgressBandwidthTier,
  });

  final TfArg<ComputeInstanceFromMachineImageTotalEgressBandwidthTier>
  totalEgressBandwidthTier;

  Map<String, Object?> encode() => {
    'total_egress_bandwidth_tier': totalEgressBandwidthTier.toTfJson(),
  };
}

/// `total_egress_bandwidth_tier` — derived from the provider schema description.
enum ComputeInstanceFromMachineImageTotalEgressBandwidthTier
    implements TerraformEnum {
  tier1('TIER_1'),
  defaultCase('DEFAULT');

  const ComputeInstanceFromMachineImageTotalEgressBandwidthTier(
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
    'resource_manager_tags': ?resourceManagerTags?.toTfJson(),
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

  final ComputeInstanceFromMachineImageSpecificReservation? specificReservation;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'specific_reservation': ?specificReservation?.encode(),
  };
}

/// Typed helper for the `reservation_affinity.specific_reservation` block of
/// `google_compute_instance_from_machine_image` (derived from provider schema).
@immutable
final class ComputeInstanceFromMachineImageSpecificReservation {
  const ComputeInstanceFromMachineImageSpecificReservation({
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

  final ComputeInstanceFromMachineImageGracefulShutdown? gracefulShutdown;

  final ComputeInstanceFromMachineImageLocalSsdRecoveryTimeout?
  localSsdRecoveryTimeout;

  final ComputeInstanceFromMachineImageMaxRunDuration? maxRunDuration;

  final List<ComputeInstanceFromMachineImageNodeAffinities>? nodeAffinities;

  final ComputeInstanceFromMachineImageOnInstanceStopAction?
  onInstanceStopAction;

  final ComputeInstanceFromMachineImagePreemptionNoticeDuration?
  preemptionNoticeDuration;

  Map<String, Object?> encode() => {
    'automatic_restart': ?automaticRestart?.toTfJson(),
    'availability_domain': ?availabilityDomain?.toTfJson(),
    'host_error_timeout_seconds': ?hostErrorTimeoutSeconds?.toTfJson(),
    'instance_termination_action': ?instanceTerminationAction?.toTfJson(),
    'maintenance_interval': ?maintenanceInterval?.toTfJson(),
    'min_node_cpus': ?minNodeCpus?.toTfJson(),
    'on_host_maintenance': ?onHostMaintenance?.toTfJson(),
    'preemptible': ?preemptible?.toTfJson(),
    'provisioning_model': ?provisioningModel?.toTfJson(),
    'skip_guest_os_shutdown': ?skipGuestOsShutdown?.toTfJson(),
    'termination_time': ?terminationTime?.toTfJson(),
    'graceful_shutdown': ?gracefulShutdown?.encode(),
    'local_ssd_recovery_timeout': ?localSsdRecoveryTimeout?.encode(),
    'max_run_duration': ?maxRunDuration?.encode(),
    if (nodeAffinities != null)
      'node_affinities': [for (final e in nodeAffinities!) e.encode()],
    'on_instance_stop_action': ?onInstanceStopAction?.encode(),
    'preemption_notice_duration': ?preemptionNoticeDuration?.encode(),
  };
}

/// Typed helper for the `scheduling.graceful_shutdown` block of
/// `google_compute_instance_from_machine_image` (derived from provider schema).
@immutable
final class ComputeInstanceFromMachineImageGracefulShutdown {
  const ComputeInstanceFromMachineImageGracefulShutdown({
    required this.enabled,
    this.maxDuration,
  });

  final TfArg<bool> enabled;

  final ComputeInstanceFromMachineImageMaxDuration? maxDuration;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'max_duration': ?maxDuration?.encode(),
  };
}

/// Typed helper for the `scheduling.graceful_shutdown.max_duration` block of
/// `google_compute_instance_from_machine_image` (derived from provider schema).
@immutable
final class ComputeInstanceFromMachineImageMaxDuration {
  const ComputeInstanceFromMachineImageMaxDuration({
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

/// Typed helper for the `scheduling.local_ssd_recovery_timeout` block of
/// `google_compute_instance_from_machine_image` (derived from provider schema).
@immutable
final class ComputeInstanceFromMachineImageLocalSsdRecoveryTimeout {
  const ComputeInstanceFromMachineImageLocalSsdRecoveryTimeout({
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
/// `google_compute_instance_from_machine_image` (derived from provider schema).
@immutable
final class ComputeInstanceFromMachineImageMaxRunDuration {
  const ComputeInstanceFromMachineImageMaxRunDuration({
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
/// `google_compute_instance_from_machine_image` (derived from provider schema).
@immutable
final class ComputeInstanceFromMachineImageNodeAffinities {
  const ComputeInstanceFromMachineImageNodeAffinities({
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
/// `google_compute_instance_from_machine_image` (derived from provider schema).
@immutable
final class ComputeInstanceFromMachineImageOnInstanceStopAction {
  const ComputeInstanceFromMachineImageOnInstanceStopAction({
    this.discardLocalSsd,
  });

  final TfArg<bool>? discardLocalSsd;

  Map<String, Object?> encode() => {
    'discard_local_ssd': ?discardLocalSsd?.toTfJson(),
  };
}

/// Typed helper for the `scheduling.preemption_notice_duration` block of
/// `google_compute_instance_from_machine_image` (derived from provider schema).
@immutable
final class ComputeInstanceFromMachineImagePreemptionNoticeDuration {
  const ComputeInstanceFromMachineImagePreemptionNoticeDuration({
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

/// Typed helper for the `service_account` block of
/// `google_compute_instance_from_machine_image` (derived from provider schema).
@immutable
final class ComputeInstanceFromMachineImageServiceAccount {
  const ComputeInstanceFromMachineImageServiceAccount({
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
    'enable_integrity_monitoring': ?enableIntegrityMonitoring?.toTfJson(),
    'enable_secure_boot': ?enableSecureBoot?.toTfJson(),
    'enable_vtpm': ?enableVtpm?.toTfJson(),
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
    'identity': ?identity?.toTfJson(),
    'identity_certificate_enabled': ?identityCertificateEnabled?.toTfJson(),
  };
}

/// Factory wrapper for `google_compute_instance_from_machine_image`.
final class GoogleComputeInstanceFromMachineImage extends Resource {
  static const String tfType = 'google_compute_instance_from_machine_image';

  GoogleComputeInstanceFromMachineImage(
    super.localName, {
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
           'allow_stopping_for_update': ?allowStoppingForUpdate,
           'can_ip_forward': ?canIpForward,
           'deletion_policy': ?deletionPolicy,
           'deletion_protection': ?deletionProtection,
           'description': ?description,
           'desired_status': ?desiredStatus,
           'enable_display': ?enableDisplay,
           'erase_windows_vss_signature': ?eraseWindowsVssSignature,
           'hostname': ?hostname,
           'key_revocation_action_type': ?keyRevocationActionType,
           'labels': ?labels,
           'machine_type': ?machineType,
           'metadata': ?metadata,
           'metadata_startup_script': ?metadataStartupScript,
           'min_cpu_platform': ?minCpuPlatform,
           'name': name,
           'partner_metadata': ?partnerMetadata,
           'project': ?project,
           'resource_policies': ?resourcePolicies,
           'source_machine_image': sourceMachineImage,
           'tags': ?tags,
           'zone': ?zone,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `erase_windows_vss_signature` attribute.
  TfRef<bool> get eraseWindowsVssSignature =>
      TfRef.attribute<bool>(this, 'erase_windows_vss_signature');

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

  /// Reference to `partner_metadata` attribute.
  TfRef<Map<String, String>> get partnerMetadata =>
      TfRef.attribute<Map<String, String>>(this, 'partner_metadata');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `resource_policies` attribute.
  TfRef<List<String>> get resourcePolicies =>
      TfRef.attribute<List<String>>(this, 'resource_policies');

  /// Reference to `source_machine_image` attribute.
  TfRef<String> get sourceMachineImage =>
      TfRef.attribute<String>(this, 'source_machine_image');

  /// Reference to `tags` attribute.
  TfRef<List<String>> get tags => TfRef.attribute<List<String>>(this, 'tags');

  /// Reference to `zone` attribute.
  TfRef<String> get zone => TfRef.attribute<String>(this, 'zone');
}
