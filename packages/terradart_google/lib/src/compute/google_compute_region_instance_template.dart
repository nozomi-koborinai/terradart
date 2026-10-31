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

/// Compute Region Instance Template Key Revocation Action enum for `key_revocation_action_type`.
extension type const ComputeRegionInstanceTemplateKeyRevocationActionType._(
  TfArg<String> _
) implements TfArg<String> {
  ComputeRegionInstanceTemplateKeyRevocationActionType.variable(String name)
    : this._(TfArg.variable(name));
  ComputeRegionInstanceTemplateKeyRevocationActionType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ComputeRegionInstanceTemplateKeyRevocationActionType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const none = ComputeRegionInstanceTemplateKeyRevocationActionType._(
    TfArgLiteral('NONE'),
  );
  static const stop = ComputeRegionInstanceTemplateKeyRevocationActionType._(
    TfArgLiteral('STOP'),
  );

  static const List<ComputeRegionInstanceTemplateKeyRevocationActionType>
  values = [none, stop];
}

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

  final ComputeRegionInstanceTemplatePerformanceMonitoringUnit?
  performanceMonitoringUnit;

  final TfArg<num>? threadsPerCore;

  final TfArg<String>? turboMode;

  final TfArg<num>? visibleCoreCount;

  @internal
  Map<String, Object?> encode() => {
    'enable_nested_virtualization': ?enableNestedVirtualization?.toTfJson(),
    'enable_uefi_networking': ?enableUefiNetworking?.toTfJson(),
    'performance_monitoring_unit': ?performanceMonitoringUnit?.toTfJson(),
    'threads_per_core': ?threadsPerCore?.toTfJson(),
    'turbo_mode': ?turboMode?.toTfJson(),
    'visible_core_count': ?visibleCoreCount?.toTfJson(),
  };
}

/// `performance_monitoring_unit` — derived from the provider schema description.
extension type const ComputeRegionInstanceTemplatePerformanceMonitoringUnit._(
  TfArg<String> _
) implements TfArg<String> {
  ComputeRegionInstanceTemplatePerformanceMonitoringUnit.variable(String name)
    : this._(TfArg.variable(name));
  ComputeRegionInstanceTemplatePerformanceMonitoringUnit.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ComputeRegionInstanceTemplatePerformanceMonitoringUnit.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const standard =
      ComputeRegionInstanceTemplatePerformanceMonitoringUnit._(
        TfArgLiteral('STANDARD'),
      );
  static const enhanced =
      ComputeRegionInstanceTemplatePerformanceMonitoringUnit._(
        TfArgLiteral('ENHANCED'),
      );
  static const architectural =
      ComputeRegionInstanceTemplatePerformanceMonitoringUnit._(
        TfArgLiteral('ARCHITECTURAL'),
      );

  static const List<ComputeRegionInstanceTemplatePerformanceMonitoringUnit>
  values = [standard, enhanced, architectural];
}

/// Typed helper for the `confidential_instance_config` block of
/// `google_compute_region_instance_template` (derived from provider schema).
@immutable
final class ComputeRegionInstanceTemplateConfidentialInstanceConfig {
  const ComputeRegionInstanceTemplateConfidentialInstanceConfig({
    this.confidentialInstanceType,
    this.enableConfidentialCompute,
  });

  final ComputeRegionInstanceTemplateConfidentialInstanceType?
  confidentialInstanceType;

  final TfArg<bool>? enableConfidentialCompute;

  @internal
  Map<String, Object?> encode() => {
    'confidential_instance_type': ?confidentialInstanceType?.toTfJson(),
    'enable_confidential_compute': ?enableConfidentialCompute?.toTfJson(),
  };
}

/// `confidential_instance_type` — derived from the provider schema description.
extension type const ComputeRegionInstanceTemplateConfidentialInstanceType._(
  TfArg<String> _
) implements TfArg<String> {
  ComputeRegionInstanceTemplateConfidentialInstanceType.variable(String name)
    : this._(TfArg.variable(name));
  ComputeRegionInstanceTemplateConfidentialInstanceType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ComputeRegionInstanceTemplateConfidentialInstanceType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const sev = ComputeRegionInstanceTemplateConfidentialInstanceType._(
    TfArgLiteral('SEV'),
  );
  static const sevSnp = ComputeRegionInstanceTemplateConfidentialInstanceType._(
    TfArgLiteral('SEV_SNP'),
  );
  static const tdx = ComputeRegionInstanceTemplateConfidentialInstanceType._(
    TfArgLiteral('TDX'),
  );

  static const List<ComputeRegionInstanceTemplateConfidentialInstanceType>
  values = [sev, sevSnp, tdx];
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

  final ComputeRegionInstanceTemplateArchitecture? architecture;

  final TfArg<bool>? autoDelete;

  final TfArg<bool>? boot;

  final TfArg<String>? deviceName;

  final TfArg<String>? diskName;

  final TfArg<num>? diskSizeGb;

  final TfArg<String>? diskType;

  final TfArg<List<String>>? guestOsFeatures;

  final ComputeRegionInstanceTemplateInterface? interface;

  final TfArg<Map<String, String>>? labels;

  final ComputeRegionInstanceTemplateMode? mode;

  final TfArg<num>? provisionedIops;

  final TfArg<num>? provisionedThroughput;

  final TfArg<Map<String, String>>? resourceManagerTags;

  final TfArg<List<String>>? resourcePolicies;

  final TfArg<String>? source;

  final TfArg<String>? sourceImage;

  final TfArg<String>? sourceSnapshot;

  final TfArg<String>? storagePool;

  final ComputeRegionInstanceTemplateType? type;

  final ComputeRegionInstanceTemplateDiskEncryptionKey? diskEncryptionKey;

  final ComputeRegionInstanceTemplateSourceImageEncryptionKey?
  sourceImageEncryptionKey;

  final ComputeRegionInstanceTemplateSourceSnapshotEncryptionKey?
  sourceSnapshotEncryptionKey;

  @internal
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

/// `architecture` — derived from the provider schema description.
extension type const ComputeRegionInstanceTemplateArchitecture._(
  TfArg<String> _
) implements TfArg<String> {
  ComputeRegionInstanceTemplateArchitecture.variable(String name)
    : this._(TfArg.variable(name));
  ComputeRegionInstanceTemplateArchitecture.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeRegionInstanceTemplateArchitecture.arg(TfArg<String> arg)
    : this._(arg);

  static const arm64 = ComputeRegionInstanceTemplateArchitecture._(
    TfArgLiteral('ARM64'),
  );
  static const x8664 = ComputeRegionInstanceTemplateArchitecture._(
    TfArgLiteral('X86_64'),
  );

  static const List<ComputeRegionInstanceTemplateArchitecture> values = [
    arm64,
    x8664,
  ];
}

/// `interface` — derived from the provider schema description.
extension type const ComputeRegionInstanceTemplateInterface._(TfArg<String> _)
    implements TfArg<String> {
  ComputeRegionInstanceTemplateInterface.variable(String name)
    : this._(TfArg.variable(name));
  ComputeRegionInstanceTemplateInterface.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeRegionInstanceTemplateInterface.arg(TfArg<String> arg)
    : this._(arg);

  static const nvme = ComputeRegionInstanceTemplateInterface._(
    TfArgLiteral('NVME'),
  );
  static const scsi = ComputeRegionInstanceTemplateInterface._(
    TfArgLiteral('SCSI'),
  );

  static const List<ComputeRegionInstanceTemplateInterface> values = [
    nvme,
    scsi,
  ];
}

/// `mode` — derived from the provider schema description.
extension type const ComputeRegionInstanceTemplateMode._(TfArg<String> _)
    implements TfArg<String> {
  ComputeRegionInstanceTemplateMode.variable(String name)
    : this._(TfArg.variable(name));
  ComputeRegionInstanceTemplateMode.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeRegionInstanceTemplateMode.arg(TfArg<String> arg) : this._(arg);

  static const readWrite = ComputeRegionInstanceTemplateMode._(
    TfArgLiteral('READ_WRITE'),
  );
  static const readOnly = ComputeRegionInstanceTemplateMode._(
    TfArgLiteral('READ_ONLY'),
  );

  static const List<ComputeRegionInstanceTemplateMode> values = [
    readWrite,
    readOnly,
  ];
}

/// `type` — derived from the provider schema description.
extension type const ComputeRegionInstanceTemplateType._(TfArg<String> _)
    implements TfArg<String> {
  ComputeRegionInstanceTemplateType.variable(String name)
    : this._(TfArg.variable(name));
  ComputeRegionInstanceTemplateType.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeRegionInstanceTemplateType.arg(TfArg<String> arg) : this._(arg);

  static const scratch = ComputeRegionInstanceTemplateType._(
    TfArgLiteral('SCRATCH'),
  );
  static const persistent = ComputeRegionInstanceTemplateType._(
    TfArgLiteral('PERSISTENT'),
  );

  static const List<ComputeRegionInstanceTemplateType> values = [
    scratch,
    persistent,
  ];
}

/// Typed helper for the `disk.disk_encryption_key` block of
/// `google_compute_region_instance_template` (derived from provider schema).
@immutable
final class ComputeRegionInstanceTemplateDiskEncryptionKey {
  const ComputeRegionInstanceTemplateDiskEncryptionKey({
    this.kmsKeySelfLink,
    this.kmsKeyServiceAccount,
  });

  final RefTo<GoogleKmsCryptoKey>? kmsKeySelfLink;

  final TfArg<String>? kmsKeyServiceAccount;

  @internal
  Map<String, Object?> encode() => {
    'kms_key_self_link': ?kmsKeySelfLink?.encodeAs('id').toTfJson(),
    'kms_key_service_account': ?kmsKeyServiceAccount?.toTfJson(),
  };
}

/// Typed helper for the `disk.source_image_encryption_key` block of
/// `google_compute_region_instance_template` (derived from provider schema).
@immutable
final class ComputeRegionInstanceTemplateSourceImageEncryptionKey {
  const ComputeRegionInstanceTemplateSourceImageEncryptionKey({
    this.kmsKeySelfLink,
    this.kmsKeyServiceAccount,
    this.rawKey,
    this.rsaEncryptedKey,
  });

  final RefTo<GoogleKmsCryptoKey>? kmsKeySelfLink;

  final TfArg<String>? kmsKeyServiceAccount;

  final Sensitive<String>? rawKey;

  final Sensitive<String>? rsaEncryptedKey;

  @internal
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
final class ComputeRegionInstanceTemplateSourceSnapshotEncryptionKey {
  const ComputeRegionInstanceTemplateSourceSnapshotEncryptionKey({
    this.kmsKeySelfLink,
    this.kmsKeyServiceAccount,
    this.rawKey,
    this.rsaEncryptedKey,
  });

  final RefTo<GoogleKmsCryptoKey>? kmsKeySelfLink;

  final TfArg<String>? kmsKeyServiceAccount;

  final Sensitive<String>? rawKey;

  final Sensitive<String>? rsaEncryptedKey;

  @internal
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

  @internal
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
    this.enableVpcScopedDns,
    this.igmpQuery,
    this.internalIpv6PrefixLength,
    this.ipv6Address,
    this.network,
    this.networkAttachment,
    this.networkIp,
    this.nicType,
    this.queueCount,
    this.serviceClassId,
    this.stackType,
    this.subnetwork,
    this.subnetworkProject,
    this.vlan,
    this.accessConfig,
    this.aliasIpRange,
    this.ipv6AccessConfig,
  });

  final TfArg<bool>? enableVpcScopedDns;

  final ComputeRegionInstanceTemplateIgmpQuery? igmpQuery;

  final TfArg<num>? internalIpv6PrefixLength;

  final TfArg<String>? ipv6Address;

  final RefTo<GoogleComputeNetwork>? network;

  final TfArg<String>? networkAttachment;

  final TfArg<String>? networkIp;

  final ComputeRegionInstanceTemplateNicType? nicType;

  final TfArg<num>? queueCount;

  final TfArg<String>? serviceClassId;

  final ComputeRegionInstanceTemplateStackType? stackType;

  final RefTo<GoogleComputeSubnetwork>? subnetwork;

  final TfArg<String>? subnetworkProject;

  final TfArg<num>? vlan;

  final List<ComputeRegionInstanceTemplateAccessConfig>? accessConfig;

  final List<ComputeRegionInstanceTemplateAliasIpRange>? aliasIpRange;

  final List<ComputeRegionInstanceTemplateIpv6AccessConfig>? ipv6AccessConfig;

  @internal
  Map<String, Object?> encode() => {
    'enable_vpc_scoped_dns': ?enableVpcScopedDns?.toTfJson(),
    'igmp_query': ?igmpQuery?.toTfJson(),
    'internal_ipv6_prefix_length': ?internalIpv6PrefixLength?.toTfJson(),
    'ipv6_address': ?ipv6Address?.toTfJson(),
    'network': ?network?.encodeAs('id').toTfJson(),
    'network_attachment': ?networkAttachment?.toTfJson(),
    'network_ip': ?networkIp?.toTfJson(),
    'nic_type': ?nicType?.toTfJson(),
    'queue_count': ?queueCount?.toTfJson(),
    'service_class_id': ?serviceClassId?.toTfJson(),
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

/// `igmp_query` — derived from the provider schema description.
extension type const ComputeRegionInstanceTemplateIgmpQuery._(TfArg<String> _)
    implements TfArg<String> {
  ComputeRegionInstanceTemplateIgmpQuery.variable(String name)
    : this._(TfArg.variable(name));
  ComputeRegionInstanceTemplateIgmpQuery.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeRegionInstanceTemplateIgmpQuery.arg(TfArg<String> arg)
    : this._(arg);

  static const igmpQueryDisabled = ComputeRegionInstanceTemplateIgmpQuery._(
    TfArgLiteral('IGMP_QUERY_DISABLED'),
  );
  static const igmpQueryV2 = ComputeRegionInstanceTemplateIgmpQuery._(
    TfArgLiteral('IGMP_QUERY_V2'),
  );

  static const List<ComputeRegionInstanceTemplateIgmpQuery> values = [
    igmpQueryDisabled,
    igmpQueryV2,
  ];
}

/// `nic_type` — derived from the provider schema description.
extension type const ComputeRegionInstanceTemplateNicType._(TfArg<String> _)
    implements TfArg<String> {
  ComputeRegionInstanceTemplateNicType.variable(String name)
    : this._(TfArg.variable(name));
  ComputeRegionInstanceTemplateNicType.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeRegionInstanceTemplateNicType.arg(TfArg<String> arg)
    : this._(arg);

  static const gvnic = ComputeRegionInstanceTemplateNicType._(
    TfArgLiteral('GVNIC'),
  );
  static const virtioNet = ComputeRegionInstanceTemplateNicType._(
    TfArgLiteral('VIRTIO_NET'),
  );
  static const mrdma = ComputeRegionInstanceTemplateNicType._(
    TfArgLiteral('MRDMA'),
  );
  static const irdma = ComputeRegionInstanceTemplateNicType._(
    TfArgLiteral('IRDMA'),
  );
  static const idpf = ComputeRegionInstanceTemplateNicType._(
    TfArgLiteral('IDPF'),
  );

  static const List<ComputeRegionInstanceTemplateNicType> values = [
    gvnic,
    virtioNet,
    mrdma,
    irdma,
    idpf,
  ];
}

/// `stack_type` — derived from the provider schema description.
extension type const ComputeRegionInstanceTemplateStackType._(TfArg<String> _)
    implements TfArg<String> {
  ComputeRegionInstanceTemplateStackType.variable(String name)
    : this._(TfArg.variable(name));
  ComputeRegionInstanceTemplateStackType.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeRegionInstanceTemplateStackType.arg(TfArg<String> arg)
    : this._(arg);

  static const ipv4Ipv6 = ComputeRegionInstanceTemplateStackType._(
    TfArgLiteral('IPV4_IPV6'),
  );
  static const ipv4Only = ComputeRegionInstanceTemplateStackType._(
    TfArgLiteral('IPV4_ONLY'),
  );
  static const ipv6Only = ComputeRegionInstanceTemplateStackType._(
    TfArgLiteral('IPV6_ONLY'),
  );

  static const List<ComputeRegionInstanceTemplateStackType> values = [
    ipv4Ipv6,
    ipv4Only,
    ipv6Only,
  ];
}

/// Typed helper for the `network_interface.access_config` block of
/// `google_compute_region_instance_template` (derived from provider schema).
@immutable
final class ComputeRegionInstanceTemplateAccessConfig {
  const ComputeRegionInstanceTemplateAccessConfig({
    this.natIp,
    this.networkTier,
  });

  final TfArg<String>? natIp;

  final ComputeRegionInstanceTemplateNetworkTier? networkTier;

  @internal
  Map<String, Object?> encode() => {
    'nat_ip': ?natIp?.toTfJson(),
    'network_tier': ?networkTier?.toTfJson(),
  };
}

/// `network_tier` — derived from the provider schema description.
extension type const ComputeRegionInstanceTemplateNetworkTier._(TfArg<String> _)
    implements TfArg<String> {
  ComputeRegionInstanceTemplateNetworkTier.variable(String name)
    : this._(TfArg.variable(name));
  ComputeRegionInstanceTemplateNetworkTier.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeRegionInstanceTemplateNetworkTier.arg(TfArg<String> arg)
    : this._(arg);

  static const fixedStandard = ComputeRegionInstanceTemplateNetworkTier._(
    TfArgLiteral('FIXED_STANDARD'),
  );
  static const premium = ComputeRegionInstanceTemplateNetworkTier._(
    TfArgLiteral('PREMIUM'),
  );
  static const standard = ComputeRegionInstanceTemplateNetworkTier._(
    TfArgLiteral('STANDARD'),
  );
  static const standardOverridesFixedStandard =
      ComputeRegionInstanceTemplateNetworkTier._(
        TfArgLiteral('STANDARD_OVERRIDES_FIXED_STANDARD'),
      );

  static const List<ComputeRegionInstanceTemplateNetworkTier> values = [
    fixedStandard,
    premium,
    standard,
    standardOverridesFixedStandard,
  ];
}

/// Typed helper for the `network_interface.alias_ip_range` block of
/// `google_compute_region_instance_template` (derived from provider schema).
@immutable
final class ComputeRegionInstanceTemplateAliasIpRange {
  const ComputeRegionInstanceTemplateAliasIpRange({
    required this.ipCidrRange,
    this.subnetworkRangeName,
  });

  final TfArg<String> ipCidrRange;

  final TfArg<String>? subnetworkRangeName;

  @internal
  Map<String, Object?> encode() => {
    'ip_cidr_range': ipCidrRange.toTfJson(),
    'subnetwork_range_name': ?subnetworkRangeName?.toTfJson(),
  };
}

/// Typed helper for the `network_interface.ipv6_access_config` block of
/// `google_compute_region_instance_template` (derived from provider schema).
@immutable
final class ComputeRegionInstanceTemplateIpv6AccessConfig {
  const ComputeRegionInstanceTemplateIpv6AccessConfig({
    required this.networkTier,
  });

  final ComputeRegionInstanceTemplateNetworkTier networkTier;

  @internal
  Map<String, Object?> encode() => {'network_tier': networkTier.toTfJson()};
}

/// Typed helper for the `network_performance_config` block of
/// `google_compute_region_instance_template` (derived from provider schema).
@immutable
final class ComputeRegionInstanceTemplateNetworkPerformanceConfig {
  const ComputeRegionInstanceTemplateNetworkPerformanceConfig({
    required this.totalEgressBandwidthTier,
  });

  final ComputeRegionInstanceTemplateTotalEgressBandwidthTier
  totalEgressBandwidthTier;

  @internal
  Map<String, Object?> encode() => {
    'total_egress_bandwidth_tier': totalEgressBandwidthTier.toTfJson(),
  };
}

/// `total_egress_bandwidth_tier` — derived from the provider schema description.
extension type const ComputeRegionInstanceTemplateTotalEgressBandwidthTier._(
  TfArg<String> _
) implements TfArg<String> {
  ComputeRegionInstanceTemplateTotalEgressBandwidthTier.variable(String name)
    : this._(TfArg.variable(name));
  ComputeRegionInstanceTemplateTotalEgressBandwidthTier.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ComputeRegionInstanceTemplateTotalEgressBandwidthTier.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const tier1 = ComputeRegionInstanceTemplateTotalEgressBandwidthTier._(
    TfArgLiteral('TIER_1'),
  );
  static const defaultCase =
      ComputeRegionInstanceTemplateTotalEgressBandwidthTier._(
        TfArgLiteral('DEFAULT'),
      );

  static const List<ComputeRegionInstanceTemplateTotalEgressBandwidthTier>
  values = [tier1, defaultCase];
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

  final ComputeRegionInstanceTemplateSpecificReservation? specificReservation;

  @internal
  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'specific_reservation': ?specificReservation?.encode(),
  };
}

/// Typed helper for the `reservation_affinity.specific_reservation` block of
/// `google_compute_region_instance_template` (derived from provider schema).
@immutable
final class ComputeRegionInstanceTemplateSpecificReservation {
  const ComputeRegionInstanceTemplateSpecificReservation({
    required this.key,
    required this.values,
  });

  final TfArg<String> key;

  final TfArg<List<String>> values;

  @internal
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
    this.preemptionNoticeDuration,
  });

  final TfArg<bool>? automaticRestart;

  final TfArg<num>? availabilityDomain;

  final TfArg<num>? hostErrorTimeoutSeconds;

  final ComputeRegionInstanceTemplateInstanceTerminationAction?
  instanceTerminationAction;

  final TfArg<num>? minNodeCpus;

  final ComputeRegionInstanceTemplateOnHostMaintenance? onHostMaintenance;

  final TfArg<bool>? preemptible;

  final ComputeRegionInstanceTemplateProvisioningModel? provisioningModel;

  final TfArg<String>? terminationTime;

  final List<ComputeRegionInstanceTemplateLocalSsdRecoveryTimeout>?
  localSsdRecoveryTimeout;

  final ComputeRegionInstanceTemplateMaxRunDuration? maxRunDuration;

  final List<ComputeRegionInstanceTemplateNodeAffinities>? nodeAffinities;

  final ComputeRegionInstanceTemplateOnInstanceStopAction? onInstanceStopAction;

  final ComputeRegionInstanceTemplatePreemptionNoticeDuration?
  preemptionNoticeDuration;

  @internal
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
    'preemption_notice_duration': ?preemptionNoticeDuration?.encode(),
  };
}

/// `instance_termination_action` — derived from the provider schema description.
extension type const ComputeRegionInstanceTemplateInstanceTerminationAction._(
  TfArg<String> _
) implements TfArg<String> {
  ComputeRegionInstanceTemplateInstanceTerminationAction.variable(String name)
    : this._(TfArg.variable(name));
  ComputeRegionInstanceTemplateInstanceTerminationAction.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ComputeRegionInstanceTemplateInstanceTerminationAction.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const delete =
      ComputeRegionInstanceTemplateInstanceTerminationAction._(
        TfArgLiteral('DELETE'),
      );
  static const stop = ComputeRegionInstanceTemplateInstanceTerminationAction._(
    TfArgLiteral('STOP'),
  );

  static const List<ComputeRegionInstanceTemplateInstanceTerminationAction>
  values = [delete, stop];
}

/// `on_host_maintenance` — derived from the provider schema description.
extension type const ComputeRegionInstanceTemplateOnHostMaintenance._(
  TfArg<String> _
) implements TfArg<String> {
  ComputeRegionInstanceTemplateOnHostMaintenance.variable(String name)
    : this._(TfArg.variable(name));
  ComputeRegionInstanceTemplateOnHostMaintenance.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeRegionInstanceTemplateOnHostMaintenance.arg(TfArg<String> arg)
    : this._(arg);

  static const migrate = ComputeRegionInstanceTemplateOnHostMaintenance._(
    TfArgLiteral('MIGRATE'),
  );
  static const terminate = ComputeRegionInstanceTemplateOnHostMaintenance._(
    TfArgLiteral('TERMINATE'),
  );

  static const List<ComputeRegionInstanceTemplateOnHostMaintenance> values = [
    migrate,
    terminate,
  ];
}

/// `provisioning_model` — derived from the provider schema description.
extension type const ComputeRegionInstanceTemplateProvisioningModel._(
  TfArg<String> _
) implements TfArg<String> {
  ComputeRegionInstanceTemplateProvisioningModel.variable(String name)
    : this._(TfArg.variable(name));
  ComputeRegionInstanceTemplateProvisioningModel.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeRegionInstanceTemplateProvisioningModel.arg(TfArg<String> arg)
    : this._(arg);

  static const standard = ComputeRegionInstanceTemplateProvisioningModel._(
    TfArgLiteral('STANDARD'),
  );
  static const spot = ComputeRegionInstanceTemplateProvisioningModel._(
    TfArgLiteral('SPOT'),
  );
  static const flexStart = ComputeRegionInstanceTemplateProvisioningModel._(
    TfArgLiteral('FLEX_START'),
  );
  static const reservationBound =
      ComputeRegionInstanceTemplateProvisioningModel._(
        TfArgLiteral('RESERVATION_BOUND'),
      );

  static const List<ComputeRegionInstanceTemplateProvisioningModel> values = [
    standard,
    spot,
    flexStart,
    reservationBound,
  ];
}

/// Typed helper for the `scheduling.local_ssd_recovery_timeout` block of
/// `google_compute_region_instance_template` (derived from provider schema).
@immutable
final class ComputeRegionInstanceTemplateLocalSsdRecoveryTimeout {
  const ComputeRegionInstanceTemplateLocalSsdRecoveryTimeout({
    this.nanos,
    required this.seconds,
  });

  final TfArg<num>? nanos;

  final TfArg<num> seconds;

  @internal
  Map<String, Object?> encode() => {
    'nanos': ?nanos?.toTfJson(),
    'seconds': seconds.toTfJson(),
  };
}

/// Typed helper for the `scheduling.max_run_duration` block of
/// `google_compute_region_instance_template` (derived from provider schema).
@immutable
final class ComputeRegionInstanceTemplateMaxRunDuration {
  const ComputeRegionInstanceTemplateMaxRunDuration({
    this.nanos,
    required this.seconds,
  });

  final TfArg<num>? nanos;

  final TfArg<num> seconds;

  @internal
  Map<String, Object?> encode() => {
    'nanos': ?nanos?.toTfJson(),
    'seconds': seconds.toTfJson(),
  };
}

/// Typed helper for the `scheduling.node_affinities` block of
/// `google_compute_region_instance_template` (derived from provider schema).
@immutable
final class ComputeRegionInstanceTemplateNodeAffinities {
  const ComputeRegionInstanceTemplateNodeAffinities({
    required this.key,
    required this.operator,
    required this.values,
  });

  final TfArg<String> key;

  final ComputeRegionInstanceTemplateOperator operator;

  final TfArg<List<String>> values;

  @internal
  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'operator': operator.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// `operator` — derived from the provider schema description.
extension type const ComputeRegionInstanceTemplateOperator._(TfArg<String> _)
    implements TfArg<String> {
  ComputeRegionInstanceTemplateOperator.variable(String name)
    : this._(TfArg.variable(name));
  ComputeRegionInstanceTemplateOperator.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeRegionInstanceTemplateOperator.arg(TfArg<String> arg)
    : this._(arg);

  static const inCase = ComputeRegionInstanceTemplateOperator._(
    TfArgLiteral('IN'),
  );
  static const notIn = ComputeRegionInstanceTemplateOperator._(
    TfArgLiteral('NOT_IN'),
  );

  static const List<ComputeRegionInstanceTemplateOperator> values = [
    inCase,
    notIn,
  ];
}

/// Typed helper for the `scheduling.on_instance_stop_action` block of
/// `google_compute_region_instance_template` (derived from provider schema).
@immutable
final class ComputeRegionInstanceTemplateOnInstanceStopAction {
  const ComputeRegionInstanceTemplateOnInstanceStopAction({
    this.discardLocalSsd,
  });

  final TfArg<bool>? discardLocalSsd;

  @internal
  Map<String, Object?> encode() => {
    'discard_local_ssd': ?discardLocalSsd?.toTfJson(),
  };
}

/// Typed helper for the `scheduling.preemption_notice_duration` block of
/// `google_compute_region_instance_template` (derived from provider schema).
@immutable
final class ComputeRegionInstanceTemplatePreemptionNoticeDuration {
  const ComputeRegionInstanceTemplatePreemptionNoticeDuration({
    this.nanos,
    required this.seconds,
  });

  final TfArg<num>? nanos;

  final TfArg<num> seconds;

  @internal
  Map<String, Object?> encode() => {
    'nanos': ?nanos?.toTfJson(),
    'seconds': seconds.toTfJson(),
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

  @internal
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

  @internal
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

  @internal
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

  GoogleComputeRegionInstanceTemplate(
    super.localName, {
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
    ComputeRegionInstanceTemplateKeyRevocationActionType?
    keyRevocationActionType,
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

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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
  TfRef<bool> get canIpForward => TfRef.attribute<bool>(this, 'can_ip_forward');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

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

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');
}
