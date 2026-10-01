// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;
import '../compute/google_compute_network_attachment.dart'
    show GoogleComputeNetworkAttachment;
import '../compute/google_compute_subnetwork.dart' show GoogleComputeSubnetwork;
import '../iam/google_service_account.dart' show GoogleServiceAccount;
import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_compute_instance`.
const Set<String> _googleComputeInstanceSensitive = <String>{
  'attached_disk.disk_encryption_key_raw',
  'attached_disk.disk_encryption_key_rsa',
  'boot_disk.disk_encryption_key_raw',
  'boot_disk.disk_encryption_key_rsa',
  'boot_disk.initialize_params.source_image_encryption_key.raw_key',
  'boot_disk.initialize_params.source_image_encryption_key.rsa_encrypted_key',
  'boot_disk.initialize_params.source_snapshot_encryption_key.raw_key',
  'boot_disk.initialize_params.source_snapshot_encryption_key.rsa_encrypted_key',
  'metadata_startup_script',
};

// ===========================================================================
// Enums
// ===========================================================================

/// `network_interface.nic_type` -- vNIC family used for the interface.
extension type const NicType._(TfArg<String> _) implements TfArg<String> {
  NicType.variable(String name) : this._(TfArg.variable(name));
  NicType.expression(String template) : this._(TfArg.expression(template));
  const NicType.arg(TfArg<String> arg) : this._(arg);

  static const gvnic = NicType._(TfArgLiteral('GVNIC'));
  static const virtioNet = NicType._(TfArgLiteral('VIRTIO_NET'));
  static const mrdma = NicType._(TfArgLiteral('MRDMA'));
  static const irdma = NicType._(TfArgLiteral('IRDMA'));

  static const List<NicType> values = [gvnic, virtioNet, mrdma, irdma];
}

/// `network_interface.access_config.network_tier` -- service tier for the
/// external IP. `STANDARD` is regional; `PREMIUM` is global.
extension type const AccessConfigNetworkTier._(TfArg<String> _)
    implements TfArg<String> {
  AccessConfigNetworkTier.variable(String name) : this._(TfArg.variable(name));
  AccessConfigNetworkTier.expression(String template)
    : this._(TfArg.expression(template));
  const AccessConfigNetworkTier.arg(TfArg<String> arg) : this._(arg);

  static const premium = AccessConfigNetworkTier._(TfArgLiteral('PREMIUM'));
  static const standard = AccessConfigNetworkTier._(TfArgLiteral('STANDARD'));
  static const fixedStandard = AccessConfigNetworkTier._(
    TfArgLiteral('FIXED_STANDARD'),
  );

  static const List<AccessConfigNetworkTier> values = [
    premium,
    standard,
    fixedStandard,
  ];
}

/// `scratch_disk.interface` -- attach bus for the local SSD. Defaults to
/// `NVME`; `SCSI` is retained for legacy machine families.
extension type const ScratchDiskInterface._(TfArg<String> _)
    implements TfArg<String> {
  ScratchDiskInterface.variable(String name) : this._(TfArg.variable(name));
  ScratchDiskInterface.expression(String template)
    : this._(TfArg.expression(template));
  const ScratchDiskInterface.arg(TfArg<String> arg) : this._(arg);

  static const scsi = ScratchDiskInterface._(TfArgLiteral('SCSI'));
  static const nvme = ScratchDiskInterface._(TfArgLiteral('NVME'));

  static const List<ScratchDiskInterface> values = [scsi, nvme];
}

/// `scheduling.on_host_maintenance` -- behaviour during host maintenance.
/// `MIGRATE` (live migration) is the default for standard VMs; preemptible /
/// SPOT / confidential VMs must use `TERMINATE`.
extension type const OnHostMaintenance._(TfArg<String> _)
    implements TfArg<String> {
  OnHostMaintenance.variable(String name) : this._(TfArg.variable(name));
  OnHostMaintenance.expression(String template)
    : this._(TfArg.expression(template));
  const OnHostMaintenance.arg(TfArg<String> arg) : this._(arg);

  static const migrate = OnHostMaintenance._(TfArgLiteral('MIGRATE'));
  static const terminate = OnHostMaintenance._(TfArgLiteral('TERMINATE'));

  static const List<OnHostMaintenance> values = [migrate, terminate];
}

/// `scheduling.provisioning_model` -- VM provisioning model. `STANDARD` runs
/// at on-demand prices with no termination guarantees from GCP; `SPOT`
/// runs at preemptible prices and may be reclaimed at any time.
extension type const ProvisioningModel._(TfArg<String> _)
    implements TfArg<String> {
  ProvisioningModel.variable(String name) : this._(TfArg.variable(name));
  ProvisioningModel.expression(String template)
    : this._(TfArg.expression(template));
  const ProvisioningModel.arg(TfArg<String> arg) : this._(arg);

  static const standard = ProvisioningModel._(TfArgLiteral('STANDARD'));
  static const spot = ProvisioningModel._(TfArgLiteral('SPOT'));

  static const List<ProvisioningModel> values = [standard, spot];
}

/// `scheduling.instance_termination_action` -- action when a SPOT VM is
/// preempted or `max_run_duration` elapses.
extension type const InstanceTerminationAction._(TfArg<String> _)
    implements TfArg<String> {
  InstanceTerminationAction.variable(String name)
    : this._(TfArg.variable(name));
  InstanceTerminationAction.expression(String template)
    : this._(TfArg.expression(template));
  const InstanceTerminationAction.arg(TfArg<String> arg) : this._(arg);

  static const stop = InstanceTerminationAction._(TfArgLiteral('STOP'));
  static const delete = InstanceTerminationAction._(TfArgLiteral('DELETE'));

  static const List<InstanceTerminationAction> values = [stop, delete];
}

/// `confidential_instance_config.confidential_instance_type` -- confidential
/// computing technology. `SEV` and `SEV_SNP` require AMD CPUs (the latter
/// also requires `min_cpu_platform = "AMD Milan"`). `TDX` requires Intel.
extension type const ConfidentialInstanceType._(TfArg<String> _)
    implements TfArg<String> {
  ConfidentialInstanceType.variable(String name) : this._(TfArg.variable(name));
  ConfidentialInstanceType.expression(String template)
    : this._(TfArg.expression(template));
  const ConfidentialInstanceType.arg(TfArg<String> arg) : this._(arg);

  static const sev = ConfidentialInstanceType._(TfArgLiteral('SEV'));
  static const sevSnp = ConfidentialInstanceType._(TfArgLiteral('SEV_SNP'));
  static const tdx = ConfidentialInstanceType._(TfArgLiteral('TDX'));

  static const List<ConfidentialInstanceType> values = [sev, sevSnp, tdx];
}

/// `advanced_machine_features.performance_monitoring_unit` -- PMU level
/// exposed to the guest. `ARCHITECTURAL` is the minimum stable subset;
/// `ENHANCED` exposes the broadest set of counters.
extension type const PerformanceMonitoringUnit._(TfArg<String> _)
    implements TfArg<String> {
  PerformanceMonitoringUnit.variable(String name)
    : this._(TfArg.variable(name));
  PerformanceMonitoringUnit.expression(String template)
    : this._(TfArg.expression(template));
  const PerformanceMonitoringUnit.arg(TfArg<String> arg) : this._(arg);

  static const architectural = PerformanceMonitoringUnit._(
    TfArgLiteral('ARCHITECTURAL'),
  );
  static const standard = PerformanceMonitoringUnit._(TfArgLiteral('STANDARD'));
  static const enhanced = PerformanceMonitoringUnit._(TfArgLiteral('ENHANCED'));

  static const List<PerformanceMonitoringUnit> values = [
    architectural,
    standard,
    enhanced,
  ];
}

/// `reservation_affinity.type` -- reservation consumption mode. Pair
/// `specificReservation` with a [ReservationAffinityType.specificReservation]
/// value to target a named reservation; `noReservation` opts out.
extension type const ReservationAffinityType._(TfArg<String> _)
    implements TfArg<String> {
  ReservationAffinityType.variable(String name) : this._(TfArg.variable(name));
  ReservationAffinityType.expression(String template)
    : this._(TfArg.expression(template));
  const ReservationAffinityType.arg(TfArg<String> arg) : this._(arg);

  static const anyReservation = ReservationAffinityType._(
    TfArgLiteral('ANY_RESERVATION'),
  );
  static const specificReservation = ReservationAffinityType._(
    TfArgLiteral('SPECIFIC_RESERVATION'),
  );
  static const noReservation = ReservationAffinityType._(
    TfArgLiteral('NO_RESERVATION'),
  );

  static const List<ReservationAffinityType> values = [
    anyReservation,
    specificReservation,
    noReservation,
  ];
}

// ===========================================================================
// Nested-block helpers. Each exposes `toArgMap()` returning the raw
// `Map<String, Object?>` shape Terraform expects. Single-instance
// (`max_items=1`) blocks are wrapped in `[map]` by the factory; list-typed
// sub-blocks are emitted as `List<Map>`.
// ===========================================================================

/// `network_performance_config.total_egress_bandwidth_tier` — VM egress
/// bandwidth profile.
extension type const ComputeInstanceNetworkPerformanceConfigTotalEgressBandwidthTier._(
  TfArg<String> _
) implements TfArg<String> {
  ComputeInstanceNetworkPerformanceConfigTotalEgressBandwidthTier.variable(
    String name,
  ) : this._(TfArg.variable(name));
  ComputeInstanceNetworkPerformanceConfigTotalEgressBandwidthTier.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ComputeInstanceNetworkPerformanceConfigTotalEgressBandwidthTier.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const tier1 =
      ComputeInstanceNetworkPerformanceConfigTotalEgressBandwidthTier._(
        TfArgLiteral('TIER_1'),
      );
  static const platformDefault =
      ComputeInstanceNetworkPerformanceConfigTotalEgressBandwidthTier._(
        TfArgLiteral('DEFAULT'),
      );

  static const List<
    ComputeInstanceNetworkPerformanceConfigTotalEgressBandwidthTier
  >
  values = [tier1, platformDefault];
}

/// Typed helper for the `advanced_machine_features` block of
/// `google_compute_instance` (derived from provider schema).
@immutable
final class ComputeInstanceAdvancedMachineFeatures {
  const ComputeInstanceAdvancedMachineFeatures({
    this.enableNestedVirtualization,
    this.enableUefiNetworking,
    this.performanceMonitoringUnit,
    this.threadsPerCore,
    this.turboMode,
    this.visibleCoreCount,
  });

  final TfArg<bool>? enableNestedVirtualization;

  final TfArg<bool>? enableUefiNetworking;

  final PerformanceMonitoringUnit? performanceMonitoringUnit;

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
/// `google_compute_instance` (derived from provider schema).
@immutable
final class ComputeInstanceAttachedDisk {
  const ComputeInstanceAttachedDisk({
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

  final Sensitive<String>? diskEncryptionKeyRaw;

  final Sensitive<String>? diskEncryptionKeyRsa;

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
/// `google_compute_instance` (derived from provider schema).
@immutable
final class ComputeInstanceBootDisk {
  const ComputeInstanceBootDisk({
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

  final Sensitive<String>? diskEncryptionKeyRaw;

  final Sensitive<String>? diskEncryptionKeyRsa;

  final TfArg<String>? diskEncryptionServiceAccount;

  final TfArg<bool>? forceAttach;

  final TfArg<List<String>>? guestOsFeatures;

  final TfArg<String>? interface;

  final RefTo<GoogleKmsCryptoKey>? kmsKeySelfLink;

  final TfArg<String>? mode;

  final TfArg<String>? source;

  final ComputeInstanceInitializeParams? initializeParams;

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
/// `google_compute_instance` (derived from provider schema).
@immutable
final class ComputeInstanceInitializeParams {
  const ComputeInstanceInitializeParams({
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

  final ComputeInstanceSourceImageEncryptionKey? sourceImageEncryptionKey;

  final ComputeInstanceSourceSnapshotEncryptionKey? sourceSnapshotEncryptionKey;

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
/// `google_compute_instance` (derived from provider schema).
@immutable
final class ComputeInstanceSourceImageEncryptionKey {
  const ComputeInstanceSourceImageEncryptionKey({
    this.kmsKeySelfLink,
    this.kmsKeyServiceAccount,
    this.rawKey,
    this.rsaEncryptedKey,
  });

  final RefTo<GoogleKmsCryptoKey>? kmsKeySelfLink;

  final TfArg<String>? kmsKeyServiceAccount;

  final Sensitive<String>? rawKey;

  final Sensitive<String>? rsaEncryptedKey;

  Map<String, Object?> encode() => {
    'kms_key_self_link': ?kmsKeySelfLink?.encodeAs('id').toTfJson(),
    'kms_key_service_account': ?kmsKeyServiceAccount?.toTfJson(),
    'raw_key': ?rawKey?.toTfJson(),
    'rsa_encrypted_key': ?rsaEncryptedKey?.toTfJson(),
  };
}

/// Typed helper for the `boot_disk.initialize_params.source_snapshot_encryption_key` block of
/// `google_compute_instance` (derived from provider schema).
@immutable
final class ComputeInstanceSourceSnapshotEncryptionKey {
  const ComputeInstanceSourceSnapshotEncryptionKey({
    this.kmsKeySelfLink,
    this.kmsKeyServiceAccount,
    this.rawKey,
    this.rsaEncryptedKey,
  });

  final RefTo<GoogleKmsCryptoKey>? kmsKeySelfLink;

  final TfArg<String>? kmsKeyServiceAccount;

  final Sensitive<String>? rawKey;

  final Sensitive<String>? rsaEncryptedKey;

  Map<String, Object?> encode() => {
    'kms_key_self_link': ?kmsKeySelfLink?.encodeAs('id').toTfJson(),
    'kms_key_service_account': ?kmsKeyServiceAccount?.toTfJson(),
    'raw_key': ?rawKey?.toTfJson(),
    'rsa_encrypted_key': ?rsaEncryptedKey?.toTfJson(),
  };
}

/// Typed helper for the `confidential_instance_config` block of
/// `google_compute_instance` (derived from provider schema).
@immutable
final class ComputeInstanceConfidentialInstanceConfig {
  const ComputeInstanceConfidentialInstanceConfig({
    this.confidentialInstanceType,
    this.enableConfidentialCompute,
  });

  final ConfidentialInstanceType? confidentialInstanceType;

  final TfArg<bool>? enableConfidentialCompute;

  Map<String, Object?> encode() => {
    'confidential_instance_type': ?confidentialInstanceType?.toTfJson(),
    'enable_confidential_compute': ?enableConfidentialCompute?.toTfJson(),
  };
}

/// Typed helper for the `guest_accelerator` block of
/// `google_compute_instance` (derived from provider schema).
@immutable
final class ComputeInstanceGuestAccelerator {
  const ComputeInstanceGuestAccelerator({
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
/// `google_compute_instance` (derived from provider schema).
@immutable
final class ComputeInstanceEncryptionKey {
  const ComputeInstanceEncryptionKey({
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
/// `google_compute_instance` (derived from provider schema).
@immutable
final class ComputeInstanceNetworkInterface {
  const ComputeInstanceNetworkInterface({
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

  final RefTo<GoogleComputeNetworkAttachment>? networkAttachment;

  final TfArg<String>? networkIp;

  final NicType? nicType;

  final TfArg<num>? queueCount;

  final TfArg<String>? stackType;

  final RefTo<GoogleComputeSubnetwork>? subnetwork;

  final TfArg<String>? subnetworkProject;

  final TfArg<num>? vlan;

  final List<ComputeInstanceAccessConfig>? accessConfig;

  final List<ComputeInstanceAliasIpRange>? aliasIpRange;

  final List<ComputeInstanceIpv6AccessConfig>? ipv6AccessConfig;

  Map<String, Object?> encode() => {
    'igmp_query': ?igmpQuery?.toTfJson(),
    'internal_ipv6_prefix_length': ?internalIpv6PrefixLength?.toTfJson(),
    'ipv6_address': ?ipv6Address?.toTfJson(),
    'network': ?network?.encodeAs('id').toTfJson(),
    'network_attachment': ?networkAttachment?.encodeAs('self_link').toTfJson(),
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

/// Typed helper for the `network_interface.access_config` block of
/// `google_compute_instance` (derived from provider schema).
@immutable
final class ComputeInstanceAccessConfig {
  const ComputeInstanceAccessConfig({
    this.natIp,
    this.networkTier,
    this.publicPtrDomainName,
  });

  final TfArg<String>? natIp;

  final AccessConfigNetworkTier? networkTier;

  final TfArg<String>? publicPtrDomainName;

  Map<String, Object?> encode() => {
    'nat_ip': ?natIp?.toTfJson(),
    'network_tier': ?networkTier?.toTfJson(),
    'public_ptr_domain_name': ?publicPtrDomainName?.toTfJson(),
  };
}

/// Typed helper for the `network_interface.alias_ip_range` block of
/// `google_compute_instance` (derived from provider schema).
@immutable
final class ComputeInstanceAliasIpRange {
  const ComputeInstanceAliasIpRange({
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
/// `google_compute_instance` (derived from provider schema).
@immutable
final class ComputeInstanceIpv6AccessConfig {
  const ComputeInstanceIpv6AccessConfig({
    this.externalIpv6,
    this.externalIpv6PrefixLength,
    this.name,
    required this.networkTier,
    this.publicPtrDomainName,
  });

  final TfArg<String>? externalIpv6;

  final TfArg<String>? externalIpv6PrefixLength;

  final TfArg<String>? name;

  final AccessConfigNetworkTier networkTier;

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
/// `google_compute_instance` (derived from provider schema).
@immutable
final class ComputeInstanceNetworkPerformanceConfig {
  const ComputeInstanceNetworkPerformanceConfig({
    required this.totalEgressBandwidthTier,
  });

  final ComputeInstanceNetworkPerformanceConfigTotalEgressBandwidthTier
  totalEgressBandwidthTier;

  Map<String, Object?> encode() => {
    'total_egress_bandwidth_tier': totalEgressBandwidthTier.toTfJson(),
  };
}

/// Typed helper for the `params` block of
/// `google_compute_instance` (derived from provider schema).
@immutable
final class ComputeInstanceParams {
  const ComputeInstanceParams({this.resourceManagerTags});

  final TfArg<Map<String, String>>? resourceManagerTags;

  Map<String, Object?> encode() => {
    'resource_manager_tags': ?resourceManagerTags?.toTfJson(),
  };
}

/// Typed helper for the `reservation_affinity` block of
/// `google_compute_instance` (derived from provider schema).
@immutable
final class ComputeInstanceReservationAffinity {
  const ComputeInstanceReservationAffinity({
    required this.type,
    this.specificReservation,
  });

  final ReservationAffinityType type;

  final ComputeInstanceSpecificReservation? specificReservation;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'specific_reservation': ?specificReservation?.encode(),
  };
}

/// Typed helper for the `reservation_affinity.specific_reservation` block of
/// `google_compute_instance` (derived from provider schema).
@immutable
final class ComputeInstanceSpecificReservation {
  const ComputeInstanceSpecificReservation({
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
/// `google_compute_instance` (derived from provider schema).
@immutable
final class ComputeInstanceScheduling {
  const ComputeInstanceScheduling({
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

  final InstanceTerminationAction? instanceTerminationAction;

  final TfArg<num>? minNodeCpus;

  final OnHostMaintenance? onHostMaintenance;

  final TfArg<bool>? preemptible;

  final ProvisioningModel? provisioningModel;

  final TfArg<String>? terminationTime;

  final ComputeInstanceLocalSsdRecoveryTimeout? localSsdRecoveryTimeout;

  final ComputeInstanceMaxRunDuration? maxRunDuration;

  final List<ComputeInstanceNodeAffinities>? nodeAffinities;

  final ComputeInstanceOnInstanceStopAction? onInstanceStopAction;

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
/// `google_compute_instance` (derived from provider schema).
@immutable
final class ComputeInstanceLocalSsdRecoveryTimeout {
  const ComputeInstanceLocalSsdRecoveryTimeout({
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
/// `google_compute_instance` (derived from provider schema).
@immutable
final class ComputeInstanceMaxRunDuration {
  const ComputeInstanceMaxRunDuration({this.nanos, required this.seconds});

  final TfArg<num>? nanos;

  final TfArg<num> seconds;

  Map<String, Object?> encode() => {
    'nanos': ?nanos?.toTfJson(),
    'seconds': seconds.toTfJson(),
  };
}

/// Typed helper for the `scheduling.node_affinities` block of
/// `google_compute_instance` (derived from provider schema).
@immutable
final class ComputeInstanceNodeAffinities {
  const ComputeInstanceNodeAffinities({
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
/// `google_compute_instance` (derived from provider schema).
@immutable
final class ComputeInstanceOnInstanceStopAction {
  const ComputeInstanceOnInstanceStopAction({this.discardLocalSsd});

  final TfArg<bool>? discardLocalSsd;

  Map<String, Object?> encode() => {
    'discard_local_ssd': ?discardLocalSsd?.toTfJson(),
  };
}

/// Typed helper for the `scratch_disk` block of
/// `google_compute_instance` (derived from provider schema).
@immutable
final class ComputeInstanceScratchDisk {
  const ComputeInstanceScratchDisk({
    this.deviceName,
    required this.interface,
    this.size,
  });

  final TfArg<String>? deviceName;

  final ScratchDiskInterface interface;

  final TfArg<num>? size;

  Map<String, Object?> encode() => {
    'device_name': ?deviceName?.toTfJson(),
    'interface': interface.toTfJson(),
    'size': ?size?.toTfJson(),
  };
}

/// Typed helper for the `service_account` block of
/// `google_compute_instance` (derived from provider schema).
@immutable
final class ComputeInstanceServiceAccount {
  const ComputeInstanceServiceAccount({this.email, required this.scopes});

  final RefTo<GoogleServiceAccount>? email;

  final TfArg<List<String>> scopes;

  Map<String, Object?> encode() => {
    'email': ?email?.encodeAs('email').toTfJson(),
    'scopes': scopes.toTfJson(),
  };
}

/// Typed helper for the `shielded_instance_config` block of
/// `google_compute_instance` (derived from provider schema).
@immutable
final class ComputeInstanceShieldedInstanceConfig {
  const ComputeInstanceShieldedInstanceConfig({
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
/// `google_compute_instance` (derived from provider schema).
@immutable
final class ComputeInstanceWorkloadIdentityConfig {
  const ComputeInstanceWorkloadIdentityConfig({
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

/// Factory wrapper for `google_compute_instance`.
///
/// An instance is a virtual machine (VM) hosted on Google's infrastructure.
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_compute_instance.`).
/// - `name`: GCE instance name. Forces replacement when changed.
/// - `machineType`: short machine type name (e.g. `'e2-medium'`) or full
///   self-link of a custom machine type.
/// - `bootDisk`: a [ComputeInstanceBootDisk] describing the boot volume; the wrapper
///   converts this to the single-element `boot_disk` block GCP expects.
/// - `networkInterface`: at least one [ComputeInstanceNetworkInterface] entry. GCP requires
///   every VM to attach to a VPC.
///
/// Example (minimal):
/// ```dart
/// final vm = GoogleComputeInstance(
///   'web',
///   name: .literal('web-01'),
///   machineType: .literal('e2-medium'),
///   zone: .literal('us-central1-a'),
///   bootDisk: ComputeInstanceBootDisk(
///     initializeParams: .new(
///       image: .literal('debian-cloud/debian-12'),
///     ),
///   ),
///   networkInterface: [
///     ComputeInstanceNetworkInterface(
///       network: vpc.ref,
///       accessConfig: [.new()],
///     ),
///   ],
/// );
/// ```
final class GoogleComputeInstance extends Resource {
  static const String tfType = 'google_compute_instance';

  GoogleComputeInstance(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> machineType,
    TfArg<String>? zone,
    TfArg<String>? description,
    TfArg<String>? hostname,
    TfArg<Map<String, String>>? labels,
    TfArg<List<String>>? tags,
    TfArg<Map<String, String>>? metadata,
    TfArg<String>? metadataStartupScript,
    TfArg<bool>? canIpForward,
    TfArg<bool>? deletionProtection,
    TfArg<bool>? allowStoppingForUpdate,
    TfArg<String>? desiredStatus,
    TfArg<String>? minCpuPlatform,
    TfArg<bool>? enableDisplay,
    TfArg<List<String>>? resourcePolicies,
    TfArg<String>? keyRevocationActionType,
    required ComputeInstanceBootDisk bootDisk,
    required List<ComputeInstanceNetworkInterface> networkInterface,
    List<ComputeInstanceAttachedDisk>? attachedDisk,
    List<ComputeInstanceScratchDisk>? scratchDisk,
    ComputeInstanceServiceAccount? serviceAccount,
    ComputeInstanceScheduling? scheduling,
    ComputeInstanceShieldedInstanceConfig? shieldedInstanceConfig,
    ComputeInstanceConfidentialInstanceConfig? confidentialInstanceConfig,
    List<ComputeInstanceGuestAccelerator>? guestAccelerator,
    ComputeInstanceAdvancedMachineFeatures? advancedMachineFeatures,
    ComputeInstanceReservationAffinity? reservationAffinity,
    ComputeInstanceParams? params,
    ComputeInstanceNetworkPerformanceConfig? networkPerformanceConfig,
    TfArg<String>? project,
    ComputeInstanceEncryptionKey? instanceEncryptionKey,
    ComputeInstanceWorkloadIdentityConfig? workloadIdentityConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'machine_type': machineType,
           'zone': ?zone,
           'description': ?description,
           'hostname': ?hostname,
           'labels': ?labels,
           'tags': ?tags,
           'metadata': ?metadata,
           'metadata_startup_script': ?metadataStartupScript,
           'can_ip_forward': ?canIpForward,
           'deletion_protection': ?deletionProtection,
           'allow_stopping_for_update': ?allowStoppingForUpdate,
           'desired_status': ?desiredStatus,
           'min_cpu_platform': ?minCpuPlatform,
           'enable_display': ?enableDisplay,
           'resource_policies': ?resourcePolicies,
           'key_revocation_action_type': ?keyRevocationActionType,
           'boot_disk': TfArg.literal(bootDisk.encode()),
           'network_interface': TfArg.literal([
             for (final e in networkInterface) e.encode(),
           ]),
           if (attachedDisk != null)
             'attached_disk': TfArg.literal([
               for (final e in attachedDisk) e.encode(),
             ]),
           if (scratchDisk != null)
             'scratch_disk': TfArg.literal([
               for (final e in scratchDisk) e.encode(),
             ]),
           if (serviceAccount != null)
             'service_account': TfArg.literal(serviceAccount.encode()),
           if (scheduling != null)
             'scheduling': TfArg.literal(scheduling.encode()),
           if (shieldedInstanceConfig != null)
             'shielded_instance_config': TfArg.literal(
               shieldedInstanceConfig.encode(),
             ),
           if (confidentialInstanceConfig != null)
             'confidential_instance_config': TfArg.literal(
               confidentialInstanceConfig.encode(),
             ),
           if (guestAccelerator != null)
             'guest_accelerator': TfArg.literal([
               for (final e in guestAccelerator) e.encode(),
             ]),
           if (advancedMachineFeatures != null)
             'advanced_machine_features': TfArg.literal(
               advancedMachineFeatures.encode(),
             ),
           if (reservationAffinity != null)
             'reservation_affinity': TfArg.literal(
               reservationAffinity.encode(),
             ),
           if (params != null) 'params': TfArg.literal(params.encode()),
           if (networkPerformanceConfig != null)
             'network_performance_config': TfArg.literal(
               networkPerformanceConfig.encode(),
             ),
           'project': ?project,
           if (instanceEncryptionKey != null)
             'instance_encryption_key': TfArg.literal(
               instanceEncryptionKey.encode(),
             ),
           if (workloadIdentityConfig != null)
             'workload_identity_config': TfArg.literal(
               workloadIdentityConfig.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeInstanceSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeInstance>`.
  RefTo<GoogleComputeInstance> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `tags` attribute.
  TfRef<List<String>> get tags => TfRef.attribute<List<String>>(this, 'tags');

  /// Reference to `zone` attribute.
  TfRef<String> get zone => TfRef.attribute<String>(this, 'zone');

  /// Reference to `id` attribute (full path
  /// `projects/{project}/zones/{zone}/instances/{name}`).
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
