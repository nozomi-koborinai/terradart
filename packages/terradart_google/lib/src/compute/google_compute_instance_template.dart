// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;
import '../compute/google_compute_subnetwork.dart' show GoogleComputeSubnetwork;
import '../iam/google_service_account.dart' show GoogleServiceAccount;
import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_compute_instance_template`.
const Set<String> _googleComputeInstanceTemplateSensitive = <String>{
  'disk.source_image_encryption_key.raw_key',
  'disk.source_image_encryption_key.rsa_encrypted_key',
  'disk.source_snapshot_encryption_key.raw_key',
  'disk.source_snapshot_encryption_key.rsa_encrypted_key',
  'metadata_startup_script',
};

// ===========================================================================
// Enums (all prefixed `InstanceTemplate` to avoid collision with
// `google_compute_instance` in the same `compute/` package.)
// ===========================================================================

/// `disk.mode` -- read / write mode for an attached or boot disk. Boot
/// disks must be `READ_WRITE`.
extension type const InstanceTemplateDiskMode._(TfArg<String> _)
    implements TfArg<String> {
  InstanceTemplateDiskMode.variable(String name) : this._(TfArg.variable(name));
  InstanceTemplateDiskMode.expression(String template)
    : this._(TfArg.expression(template));
  const InstanceTemplateDiskMode.arg(TfArg<String> arg) : this._(arg);

  static const readWrite = InstanceTemplateDiskMode._(
    TfArgLiteral('READ_WRITE'),
  );
  static const readOnly = InstanceTemplateDiskMode._(TfArgLiteral('READ_ONLY'));

  static const List<InstanceTemplateDiskMode> values = [readWrite, readOnly];
}

/// `network_interface.nic_type` -- vNIC family used for the interface.
extension type const InstanceTemplateNicType._(TfArg<String> _)
    implements TfArg<String> {
  InstanceTemplateNicType.variable(String name) : this._(TfArg.variable(name));
  InstanceTemplateNicType.expression(String template)
    : this._(TfArg.expression(template));
  const InstanceTemplateNicType.arg(TfArg<String> arg) : this._(arg);

  static const gvnic = InstanceTemplateNicType._(TfArgLiteral('GVNIC'));
  static const virtioNet = InstanceTemplateNicType._(
    TfArgLiteral('VIRTIO_NET'),
  );
  static const mrdma = InstanceTemplateNicType._(TfArgLiteral('MRDMA'));
  static const irdma = InstanceTemplateNicType._(TfArgLiteral('IRDMA'));

  static const List<InstanceTemplateNicType> values = [
    gvnic,
    virtioNet,
    mrdma,
    irdma,
  ];
}

/// `network_interface.access_config.network_tier` -- service tier for the
/// external IP. `STANDARD` is regional; `PREMIUM` is global.
extension type const InstanceTemplateAccessConfigNetworkTier._(TfArg<String> _)
    implements TfArg<String> {
  InstanceTemplateAccessConfigNetworkTier.variable(String name)
    : this._(TfArg.variable(name));
  InstanceTemplateAccessConfigNetworkTier.expression(String template)
    : this._(TfArg.expression(template));
  const InstanceTemplateAccessConfigNetworkTier.arg(TfArg<String> arg)
    : this._(arg);

  static const premium = InstanceTemplateAccessConfigNetworkTier._(
    TfArgLiteral('PREMIUM'),
  );
  static const standard = InstanceTemplateAccessConfigNetworkTier._(
    TfArgLiteral('STANDARD'),
  );
  static const fixedStandard = InstanceTemplateAccessConfigNetworkTier._(
    TfArgLiteral('FIXED_STANDARD'),
  );

  static const List<InstanceTemplateAccessConfigNetworkTier> values = [
    premium,
    standard,
    fixedStandard,
  ];
}

/// `scheduling.on_host_maintenance` -- behaviour during host maintenance.
/// `MIGRATE` (live migration) is the default for standard VMs; preemptible /
/// SPOT / confidential VMs must use `TERMINATE`.
extension type const InstanceTemplateOnHostMaintenance._(TfArg<String> _)
    implements TfArg<String> {
  InstanceTemplateOnHostMaintenance.variable(String name)
    : this._(TfArg.variable(name));
  InstanceTemplateOnHostMaintenance.expression(String template)
    : this._(TfArg.expression(template));
  const InstanceTemplateOnHostMaintenance.arg(TfArg<String> arg) : this._(arg);

  static const migrate = InstanceTemplateOnHostMaintenance._(
    TfArgLiteral('MIGRATE'),
  );
  static const terminate = InstanceTemplateOnHostMaintenance._(
    TfArgLiteral('TERMINATE'),
  );

  static const List<InstanceTemplateOnHostMaintenance> values = [
    migrate,
    terminate,
  ];
}

/// `scheduling.provisioning_model` -- VM provisioning model. `STANDARD` runs
/// at on-demand prices with no termination guarantees from GCP; `SPOT` runs
/// at preemptible prices and may be reclaimed at any time.
extension type const InstanceTemplateProvisioningModel._(TfArg<String> _)
    implements TfArg<String> {
  InstanceTemplateProvisioningModel.variable(String name)
    : this._(TfArg.variable(name));
  InstanceTemplateProvisioningModel.expression(String template)
    : this._(TfArg.expression(template));
  const InstanceTemplateProvisioningModel.arg(TfArg<String> arg) : this._(arg);

  static const standard = InstanceTemplateProvisioningModel._(
    TfArgLiteral('STANDARD'),
  );
  static const spot = InstanceTemplateProvisioningModel._(TfArgLiteral('SPOT'));

  static const List<InstanceTemplateProvisioningModel> values = [
    standard,
    spot,
  ];
}

/// `scheduling.instance_termination_action` -- action when a SPOT VM is
/// preempted or `max_run_duration` elapses.
extension type const InstanceTemplateInstanceTerminationAction._(
  TfArg<String> _
) implements TfArg<String> {
  InstanceTemplateInstanceTerminationAction.variable(String name)
    : this._(TfArg.variable(name));
  InstanceTemplateInstanceTerminationAction.expression(String template)
    : this._(TfArg.expression(template));
  const InstanceTemplateInstanceTerminationAction.arg(TfArg<String> arg)
    : this._(arg);

  static const stop = InstanceTemplateInstanceTerminationAction._(
    TfArgLiteral('STOP'),
  );
  static const delete = InstanceTemplateInstanceTerminationAction._(
    TfArgLiteral('DELETE'),
  );

  static const List<InstanceTemplateInstanceTerminationAction> values = [
    stop,
    delete,
  ];
}

/// `confidential_instance_config.confidential_instance_type` -- confidential
/// computing technology. `SEV` and `SEV_SNP` require AMD CPUs (the latter
/// also requires `min_cpu_platform = "AMD Milan"`). `TDX` requires Intel.
extension type const InstanceTemplateConfidentialInstanceType._(TfArg<String> _)
    implements TfArg<String> {
  InstanceTemplateConfidentialInstanceType.variable(String name)
    : this._(TfArg.variable(name));
  InstanceTemplateConfidentialInstanceType.expression(String template)
    : this._(TfArg.expression(template));
  const InstanceTemplateConfidentialInstanceType.arg(TfArg<String> arg)
    : this._(arg);

  static const sev = InstanceTemplateConfidentialInstanceType._(
    TfArgLiteral('SEV'),
  );
  static const sevSnp = InstanceTemplateConfidentialInstanceType._(
    TfArgLiteral('SEV_SNP'),
  );
  static const tdx = InstanceTemplateConfidentialInstanceType._(
    TfArgLiteral('TDX'),
  );

  static const List<InstanceTemplateConfidentialInstanceType> values = [
    sev,
    sevSnp,
    tdx,
  ];
}

/// `advanced_machine_features.performance_monitoring_unit` -- PMU level
/// exposed to the guest. `ARCHITECTURAL` is the minimum stable subset;
/// `ENHANCED` exposes the broadest set of counters.
extension type const InstanceTemplatePerformanceMonitoringUnit._(
  TfArg<String> _
) implements TfArg<String> {
  InstanceTemplatePerformanceMonitoringUnit.variable(String name)
    : this._(TfArg.variable(name));
  InstanceTemplatePerformanceMonitoringUnit.expression(String template)
    : this._(TfArg.expression(template));
  const InstanceTemplatePerformanceMonitoringUnit.arg(TfArg<String> arg)
    : this._(arg);

  static const architectural = InstanceTemplatePerformanceMonitoringUnit._(
    TfArgLiteral('ARCHITECTURAL'),
  );
  static const standard = InstanceTemplatePerformanceMonitoringUnit._(
    TfArgLiteral('STANDARD'),
  );
  static const enhanced = InstanceTemplatePerformanceMonitoringUnit._(
    TfArgLiteral('ENHANCED'),
  );

  static const List<InstanceTemplatePerformanceMonitoringUnit> values = [
    architectural,
    standard,
    enhanced,
  ];
}

/// `reservation_affinity.type` -- reservation consumption mode. Pair
/// `specificReservation` with [InstanceTemplateReservationAffinityType.specificReservation]
/// to target a named reservation; `noReservation` opts out.
extension type const InstanceTemplateReservationAffinityType._(TfArg<String> _)
    implements TfArg<String> {
  InstanceTemplateReservationAffinityType.variable(String name)
    : this._(TfArg.variable(name));
  InstanceTemplateReservationAffinityType.expression(String template)
    : this._(TfArg.expression(template));
  const InstanceTemplateReservationAffinityType.arg(TfArg<String> arg)
    : this._(arg);

  static const anyReservation = InstanceTemplateReservationAffinityType._(
    TfArgLiteral('ANY_RESERVATION'),
  );
  static const specificReservation = InstanceTemplateReservationAffinityType._(
    TfArgLiteral('SPECIFIC_RESERVATION'),
  );
  static const noReservation = InstanceTemplateReservationAffinityType._(
    TfArgLiteral('NO_RESERVATION'),
  );

  static const List<InstanceTemplateReservationAffinityType> values = [
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
//
// All type names are prefixed `InstanceTemplate` to coexist with
// `google_compute_instance`'s helpers in the same `compute/` output dir.
// ===========================================================================

/// Typed helper for the `advanced_machine_features` block of
/// `google_compute_instance_template` (derived from provider schema).
@immutable
final class ComputeInstanceTemplateAdvancedMachineFeatures {
  const ComputeInstanceTemplateAdvancedMachineFeatures({
    this.enableNestedVirtualization,
    this.enableUefiNetworking,
    this.performanceMonitoringUnit,
    this.threadsPerCore,
    this.turboMode,
    this.visibleCoreCount,
  });

  final TfArg<bool>? enableNestedVirtualization;

  final TfArg<bool>? enableUefiNetworking;

  final InstanceTemplatePerformanceMonitoringUnit? performanceMonitoringUnit;

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
/// `google_compute_instance_template` (derived from provider schema).
@immutable
final class ComputeInstanceTemplateConfidentialInstanceConfig {
  const ComputeInstanceTemplateConfidentialInstanceConfig({
    this.confidentialInstanceType,
    this.enableConfidentialCompute,
  });

  final InstanceTemplateConfidentialInstanceType? confidentialInstanceType;

  final TfArg<bool>? enableConfidentialCompute;

  Map<String, Object?> encode() => {
    'confidential_instance_type': ?confidentialInstanceType?.toTfJson(),
    'enable_confidential_compute': ?enableConfidentialCompute?.toTfJson(),
  };
}

/// Typed helper for the `disk` block of
/// `google_compute_instance_template` (derived from provider schema).
@immutable
final class ComputeInstanceTemplateDisk {
  const ComputeInstanceTemplateDisk({
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

  final InstanceTemplateDiskMode? mode;

  final TfArg<num>? provisionedIops;

  final TfArg<num>? provisionedThroughput;

  final TfArg<Map<String, String>>? resourceManagerTags;

  final TfArg<List<String>>? resourcePolicies;

  final TfArg<String>? source;

  final TfArg<String>? sourceImage;

  final TfArg<String>? sourceSnapshot;

  final TfArg<String>? storagePool;

  final TfArg<String>? type;

  final ComputeInstanceTemplateDiskEncryptionKey? diskEncryptionKey;

  final ComputeInstanceTemplateSourceImageEncryptionKey?
  sourceImageEncryptionKey;

  final ComputeInstanceTemplateSourceSnapshotEncryptionKey?
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
/// `google_compute_instance_template` (derived from provider schema).
@immutable
final class ComputeInstanceTemplateDiskEncryptionKey {
  const ComputeInstanceTemplateDiskEncryptionKey({
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
/// `google_compute_instance_template` (derived from provider schema).
@immutable
final class ComputeInstanceTemplateSourceImageEncryptionKey {
  const ComputeInstanceTemplateSourceImageEncryptionKey({
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

/// Typed helper for the `disk.source_snapshot_encryption_key` block of
/// `google_compute_instance_template` (derived from provider schema).
@immutable
final class ComputeInstanceTemplateSourceSnapshotEncryptionKey {
  const ComputeInstanceTemplateSourceSnapshotEncryptionKey({
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

/// Typed helper for the `guest_accelerator` block of
/// `google_compute_instance_template` (derived from provider schema).
@immutable
final class ComputeInstanceTemplateGuestAccelerator {
  const ComputeInstanceTemplateGuestAccelerator({
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
/// `google_compute_instance_template` (derived from provider schema).
@immutable
final class ComputeInstanceTemplateNetworkInterface {
  const ComputeInstanceTemplateNetworkInterface({
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

  final InstanceTemplateNicType? nicType;

  final TfArg<num>? queueCount;

  final TfArg<String>? stackType;

  final RefTo<GoogleComputeSubnetwork>? subnetwork;

  final TfArg<String>? subnetworkProject;

  final TfArg<num>? vlan;

  final List<ComputeInstanceTemplateAccessConfig>? accessConfig;

  final List<ComputeInstanceTemplateAliasIpRange>? aliasIpRange;

  final List<ComputeInstanceTemplateIpv6AccessConfig>? ipv6AccessConfig;

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

/// Typed helper for the `network_interface.access_config` block of
/// `google_compute_instance_template` (derived from provider schema).
@immutable
final class ComputeInstanceTemplateAccessConfig {
  const ComputeInstanceTemplateAccessConfig({this.natIp, this.networkTier});

  final TfArg<String>? natIp;

  final InstanceTemplateAccessConfigNetworkTier? networkTier;

  Map<String, Object?> encode() => {
    'nat_ip': ?natIp?.toTfJson(),
    'network_tier': ?networkTier?.toTfJson(),
  };
}

/// Typed helper for the `network_interface.alias_ip_range` block of
/// `google_compute_instance_template` (derived from provider schema).
@immutable
final class ComputeInstanceTemplateAliasIpRange {
  const ComputeInstanceTemplateAliasIpRange({
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
/// `google_compute_instance_template` (derived from provider schema).
@immutable
final class ComputeInstanceTemplateIpv6AccessConfig {
  const ComputeInstanceTemplateIpv6AccessConfig({required this.networkTier});

  final InstanceTemplateAccessConfigNetworkTier networkTier;

  Map<String, Object?> encode() => {'network_tier': networkTier.toTfJson()};
}

/// Typed helper for the `network_performance_config` block of
/// `google_compute_instance_template` (derived from provider schema).
@immutable
final class ComputeInstanceTemplateNetworkPerformanceConfig {
  const ComputeInstanceTemplateNetworkPerformanceConfig({
    required this.totalEgressBandwidthTier,
  });

  final ComputeInstanceTemplateTotalEgressBandwidthTier
  totalEgressBandwidthTier;

  Map<String, Object?> encode() => {
    'total_egress_bandwidth_tier': totalEgressBandwidthTier.toTfJson(),
  };
}

/// `total_egress_bandwidth_tier` — derived from the provider schema description.
extension type const ComputeInstanceTemplateTotalEgressBandwidthTier._(
  TfArg<String> _
) implements TfArg<String> {
  ComputeInstanceTemplateTotalEgressBandwidthTier.variable(String name)
    : this._(TfArg.variable(name));
  ComputeInstanceTemplateTotalEgressBandwidthTier.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeInstanceTemplateTotalEgressBandwidthTier.arg(TfArg<String> arg)
    : this._(arg);

  static const tier1 = ComputeInstanceTemplateTotalEgressBandwidthTier._(
    TfArgLiteral('TIER_1'),
  );
  static const defaultCase = ComputeInstanceTemplateTotalEgressBandwidthTier._(
    TfArgLiteral('DEFAULT'),
  );

  static const List<ComputeInstanceTemplateTotalEgressBandwidthTier> values = [
    tier1,
    defaultCase,
  ];
}

/// Typed helper for the `reservation_affinity` block of
/// `google_compute_instance_template` (derived from provider schema).
@immutable
final class ComputeInstanceTemplateReservationAffinity {
  const ComputeInstanceTemplateReservationAffinity({
    required this.type,
    this.specificReservation,
  });

  final InstanceTemplateReservationAffinityType type;

  final ComputeInstanceTemplateSpecificReservation? specificReservation;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'specific_reservation': ?specificReservation?.encode(),
  };
}

/// Typed helper for the `reservation_affinity.specific_reservation` block of
/// `google_compute_instance_template` (derived from provider schema).
@immutable
final class ComputeInstanceTemplateSpecificReservation {
  const ComputeInstanceTemplateSpecificReservation({
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
/// `google_compute_instance_template` (derived from provider schema).
@immutable
final class ComputeInstanceTemplateScheduling {
  const ComputeInstanceTemplateScheduling({
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

  final InstanceTemplateInstanceTerminationAction? instanceTerminationAction;

  final TfArg<num>? minNodeCpus;

  final InstanceTemplateOnHostMaintenance? onHostMaintenance;

  final TfArg<bool>? preemptible;

  final InstanceTemplateProvisioningModel? provisioningModel;

  final TfArg<String>? terminationTime;

  final List<ComputeInstanceTemplateLocalSsdRecoveryTimeout>?
  localSsdRecoveryTimeout;

  final ComputeInstanceTemplateMaxRunDuration? maxRunDuration;

  final List<ComputeInstanceTemplateNodeAffinities>? nodeAffinities;

  final ComputeInstanceTemplateOnInstanceStopAction? onInstanceStopAction;

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
/// `google_compute_instance_template` (derived from provider schema).
@immutable
final class ComputeInstanceTemplateLocalSsdRecoveryTimeout {
  const ComputeInstanceTemplateLocalSsdRecoveryTimeout({
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
/// `google_compute_instance_template` (derived from provider schema).
@immutable
final class ComputeInstanceTemplateMaxRunDuration {
  const ComputeInstanceTemplateMaxRunDuration({
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
/// `google_compute_instance_template` (derived from provider schema).
@immutable
final class ComputeInstanceTemplateNodeAffinities {
  const ComputeInstanceTemplateNodeAffinities({
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
/// `google_compute_instance_template` (derived from provider schema).
@immutable
final class ComputeInstanceTemplateOnInstanceStopAction {
  const ComputeInstanceTemplateOnInstanceStopAction({this.discardLocalSsd});

  final TfArg<bool>? discardLocalSsd;

  Map<String, Object?> encode() => {
    'discard_local_ssd': ?discardLocalSsd?.toTfJson(),
  };
}

/// Typed helper for the `service_account` block of
/// `google_compute_instance_template` (derived from provider schema).
@immutable
final class ComputeInstanceTemplateServiceAccount {
  const ComputeInstanceTemplateServiceAccount({
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
/// `google_compute_instance_template` (derived from provider schema).
@immutable
final class ComputeInstanceTemplateShieldedInstanceConfig {
  const ComputeInstanceTemplateShieldedInstanceConfig({
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
/// `google_compute_instance_template` (derived from provider schema).
@immutable
final class ComputeInstanceTemplateWorkloadIdentityConfig {
  const ComputeInstanceTemplateWorkloadIdentityConfig({
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

/// Factory wrapper for `google_compute_instance_template`.
///
/// Resource that enables a convenient way to save a virtual machine (VM)
/// instance's configuration that includes all of its properties and allows you
/// to create a new instance from it.
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_compute_instance_template.`).
/// - `machineType`: short machine type name (e.g. `'e2-medium'`) or full
///   self-link of a custom machine type (e.g. `'custom-6-20480'` for 6 vCPU /
///   20 GB of RAM).
/// - `disk`: at least one [ComputeInstanceTemplateDisk]; GCP enforces `min_items=1`
///   on the underlying `disk` block. The first entry should usually be the
///   boot disk (`boot: true`).
/// - `networkInterface`: at least one [ComputeInstanceTemplateNetworkInterface]
///   entry. GCP requires every template to attach to a VPC.
///
/// Identity (`name` / `namePrefix`):
/// - When both are omitted Terraform auto-generates a unique name.
/// - `name` and `namePrefix` are mutually exclusive (GCP / Terraform reject
///   setting both); this wrapper does not enforce that — pass one or the
///   other.
///
/// Example (minimal):
/// ```dart
/// final tmpl = GoogleComputeInstanceTemplate(
///   'web',
///   namePrefix: .literal('web-'),
///   machineType: .literal('e2-medium'),
///   disk: [
///     ComputeInstanceTemplateDisk(
///       boot: .literal(true),
///       sourceImage: .literal('debian-cloud/debian-12'),
///       autoDelete: .literal(true),
///     ),
///   ],
///   networkInterface: [
///     ComputeInstanceTemplateNetworkInterface(
///       network: vpc.ref,
///       accessConfig: [.new()],
///     ),
///   ],
/// );
/// ```
///
/// Instance templates are global resources (no `zone`) consumed by managed
/// instance groups and regional MIGs.
///
/// `selfLinkUnique` disambiguates templates that share a `name_prefix`;
/// prefer it over `selfLink` when referencing from a MIG that recreates
/// templates frequently.
final class GoogleComputeInstanceTemplate extends Resource {
  static const String tfType = 'google_compute_instance_template';

  GoogleComputeInstanceTemplate(
    super.localName, {
    TfArg<String>? name,
    TfArg<String>? namePrefix,
    required TfArg<String> machineType,
    TfArg<String>? description,
    TfArg<String>? instanceDescription,
    TfArg<Map<String, String>>? labels,
    TfArg<List<String>>? tags,
    TfArg<Map<String, String>>? metadata,
    TfArg<String>? metadataStartupScript,
    TfArg<bool>? canIpForward,
    TfArg<String>? minCpuPlatform,
    TfArg<String>? region,
    TfArg<Map<String, String>>? resourceManagerTags,
    TfArg<List<String>>? resourcePolicies,
    TfArg<String>? keyRevocationActionType,
    required List<ComputeInstanceTemplateDisk> disk,
    List<ComputeInstanceTemplateNetworkInterface>? networkInterface,
    ComputeInstanceTemplateServiceAccount? serviceAccount,
    ComputeInstanceTemplateScheduling? scheduling,
    ComputeInstanceTemplateShieldedInstanceConfig? shieldedInstanceConfig,
    ComputeInstanceTemplateConfidentialInstanceConfig?
    confidentialInstanceConfig,
    List<ComputeInstanceTemplateGuestAccelerator>? guestAccelerator,
    ComputeInstanceTemplateAdvancedMachineFeatures? advancedMachineFeatures,
    ComputeInstanceTemplateReservationAffinity? reservationAffinity,
    ComputeInstanceTemplateNetworkPerformanceConfig? networkPerformanceConfig,
    TfArg<String>? project,
    ComputeInstanceTemplateWorkloadIdentityConfig? workloadIdentityConfig,
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
           'description': ?description,
           'instance_description': ?instanceDescription,
           'labels': ?labels,
           'tags': ?tags,
           'metadata': ?metadata,
           'metadata_startup_script': ?metadataStartupScript,
           'can_ip_forward': ?canIpForward,
           'min_cpu_platform': ?minCpuPlatform,
           'region': ?region,
           'resource_manager_tags': ?resourceManagerTags,
           'resource_policies': ?resourcePolicies,
           'key_revocation_action_type': ?keyRevocationActionType,
           'disk': TfArg.literal([for (final e in disk) e.encode()]),
           if (networkInterface != null)
             'network_interface': TfArg.literal([
               for (final e in networkInterface) e.encode(),
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
           if (networkPerformanceConfig != null)
             'network_performance_config': TfArg.literal(
               networkPerformanceConfig.encode(),
             ),
           'project': ?project,
           if (workloadIdentityConfig != null)
             'workload_identity_config': TfArg.literal(
               workloadIdentityConfig.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeInstanceTemplateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeInstanceTemplate>`.
  RefTo<GoogleComputeInstanceTemplate> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `self_link_unique` attribute.
  TfRef<String> get selfLinkUnique =>
      TfRef.attribute<String>(this, 'self_link_unique');

  /// Reference to `tags_fingerprint` attribute.
  TfRef<String> get tagsFingerprint =>
      TfRef.attribute<String>(this, 'tags_fingerprint');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `can_ip_forward` attribute.
  TfRef<bool> get canIpForward => TfRef.attribute<bool>(this, 'can_ip_forward');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `instance_description` attribute.
  TfRef<String> get instanceDescription =>
      TfRef.attribute<String>(this, 'instance_description');

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

  /// Reference to `name_prefix` attribute.
  TfRef<String> get namePrefix => TfRef.attribute<String>(this, 'name_prefix');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_manager_tags` attribute.
  TfRef<Map<String, String>> get resourceManagerTags =>
      TfRef.attribute<Map<String, String>>(this, 'resource_manager_tags');

  /// Reference to `resource_policies` attribute.
  TfRef<List<String>> get resourcePolicies =>
      TfRef.attribute<List<String>>(this, 'resource_policies');

  /// Reference to `tags` attribute.
  TfRef<List<String>> get tags => TfRef.attribute<List<String>>(this, 'tags');

  /// Reference to `id` attribute (full path
  /// `projects/{project}/global/instanceTemplates/{name}`).
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
