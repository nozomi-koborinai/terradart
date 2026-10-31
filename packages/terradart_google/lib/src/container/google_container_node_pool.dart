// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;
import '../compute/google_compute_subnetwork.dart' show GoogleComputeSubnetwork;
import '../container/google_container_cluster.dart' show GoogleContainerCluster;
import '../iam/google_service_account.dart' show GoogleServiceAccount;

/// Sensitive field paths for `google_container_node_pool`.
const Set<String> _googleContainerNodePoolSensitive = <String>{};

/// Typed helper for the `autoscaling` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolAutoscaling {
  const ContainerNodePoolAutoscaling({
    this.locationPolicy,
    this.maxNodeCount,
    this.minNodeCount,
    this.totalMaxNodeCount,
    this.totalMinNodeCount,
  });

  final ContainerNodePoolLocationPolicy? locationPolicy;

  final TfArg<num>? maxNodeCount;

  final TfArg<num>? minNodeCount;

  final TfArg<num>? totalMaxNodeCount;

  final TfArg<num>? totalMinNodeCount;

  @internal
  Map<String, Object?> encode() => {
    'location_policy': ?locationPolicy?.toTfJson(),
    'max_node_count': ?maxNodeCount?.toTfJson(),
    'min_node_count': ?minNodeCount?.toTfJson(),
    'total_max_node_count': ?totalMaxNodeCount?.toTfJson(),
    'total_min_node_count': ?totalMinNodeCount?.toTfJson(),
  };
}

/// `location_policy` — derived from the provider schema description.
extension type const ContainerNodePoolLocationPolicy._(TfArg<String> _)
    implements TfArg<String> {
  ContainerNodePoolLocationPolicy.variable(String name)
    : this._(TfArg.variable(name));
  ContainerNodePoolLocationPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const ContainerNodePoolLocationPolicy.arg(TfArg<String> arg) : this._(arg);

  static const balanced = ContainerNodePoolLocationPolicy._(
    TfArgLiteral('BALANCED'),
  );
  static const any = ContainerNodePoolLocationPolicy._(TfArgLiteral('ANY'));

  static const List<ContainerNodePoolLocationPolicy> values = [balanced, any];
}

/// Typed helper for the `best_effort_provisioning` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolBestEffortProvisioning {
  const ContainerNodePoolBestEffortProvisioning({
    required this.enabled,
    this.minProvisionNodes,
  });

  final TfArg<bool> enabled;

  final TfArg<num>? minProvisionNodes;

  @internal
  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'min_provision_nodes': ?minProvisionNodes?.toTfJson(),
  };
}

/// Typed helper for the `maintenance_policy` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolMaintenancePolicy {
  const ContainerNodePoolMaintenancePolicy({this.exclusionUntilEndOfSupport});

  final List<ContainerNodePoolExclusionUntilEndOfSupport>?
  exclusionUntilEndOfSupport;

  @internal
  Map<String, Object?> encode() => {
    if (exclusionUntilEndOfSupport != null)
      'exclusion_until_end_of_support': [
        for (final e in exclusionUntilEndOfSupport!) e.encode(),
      ],
  };
}

/// Typed helper for the `maintenance_policy.exclusion_until_end_of_support` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolExclusionUntilEndOfSupport {
  const ContainerNodePoolExclusionUntilEndOfSupport({this.enabled});

  final TfArg<bool>? enabled;

  @internal
  Map<String, Object?> encode() => {'enabled': ?enabled?.toTfJson()};
}

/// Typed helper for the `management` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolManagement {
  const ContainerNodePoolManagement({this.autoRepair, this.autoUpgrade});

  final TfArg<bool>? autoRepair;

  final TfArg<bool>? autoUpgrade;

  @internal
  Map<String, Object?> encode() => {
    'auto_repair': ?autoRepair?.toTfJson(),
    'auto_upgrade': ?autoUpgrade?.toTfJson(),
  };
}

/// Typed helper for the `network_config` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolNetworkConfig {
  const ContainerNodePoolNetworkConfig({
    this.acceleratorNetworkProfile,
    this.createPodRange,
    this.enablePrivateNodes,
    this.podIpv4CidrBlock,
    this.podRange,
    this.subnetwork,
    this.additionalNodeNetworkConfigs,
    this.additionalPodNetworkConfigs,
    this.networkPerformanceConfig,
    this.podCidrOverprovisionConfig,
  });

  final TfArg<String>? acceleratorNetworkProfile;

  final TfArg<bool>? createPodRange;

  final TfArg<bool>? enablePrivateNodes;

  final TfArg<String>? podIpv4CidrBlock;

  final TfArg<String>? podRange;

  final RefTo<GoogleComputeSubnetwork>? subnetwork;

  final List<ContainerNodePoolAdditionalNodeNetworkConfigs>?
  additionalNodeNetworkConfigs;

  final List<ContainerNodePoolAdditionalPodNetworkConfigs>?
  additionalPodNetworkConfigs;

  final ContainerNodePoolNetworkPerformanceConfig? networkPerformanceConfig;

  final ContainerNodePoolPodCidrOverprovisionConfig? podCidrOverprovisionConfig;

  @internal
  Map<String, Object?> encode() => {
    'accelerator_network_profile': ?acceleratorNetworkProfile?.toTfJson(),
    'create_pod_range': ?createPodRange?.toTfJson(),
    'enable_private_nodes': ?enablePrivateNodes?.toTfJson(),
    'pod_ipv4_cidr_block': ?podIpv4CidrBlock?.toTfJson(),
    'pod_range': ?podRange?.toTfJson(),
    'subnetwork': ?subnetwork?.encodeAs('id').toTfJson(),
    if (additionalNodeNetworkConfigs != null)
      'additional_node_network_configs': [
        for (final e in additionalNodeNetworkConfigs!) e.encode(),
      ],
    if (additionalPodNetworkConfigs != null)
      'additional_pod_network_configs': [
        for (final e in additionalPodNetworkConfigs!) e.encode(),
      ],
    'network_performance_config': ?networkPerformanceConfig?.encode(),
    'pod_cidr_overprovision_config': ?podCidrOverprovisionConfig?.encode(),
  };
}

/// Typed helper for the `network_config.additional_node_network_configs` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolAdditionalNodeNetworkConfigs {
  const ContainerNodePoolAdditionalNodeNetworkConfigs({
    this.network,
    this.subnetwork,
  });

  final RefTo<GoogleComputeNetwork>? network;

  final RefTo<GoogleComputeSubnetwork>? subnetwork;

  @internal
  Map<String, Object?> encode() => {
    'network': ?network?.encodeAs('name').toTfJson(),
    'subnetwork': ?subnetwork?.encodeAs('name').toTfJson(),
  };
}

/// Typed helper for the `network_config.additional_pod_network_configs` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolAdditionalPodNetworkConfigs {
  const ContainerNodePoolAdditionalPodNetworkConfigs({
    this.maxPodsPerNode,
    this.secondaryPodRange,
    this.subnetwork,
  });

  final TfArg<num>? maxPodsPerNode;

  final TfArg<String>? secondaryPodRange;

  final RefTo<GoogleComputeSubnetwork>? subnetwork;

  @internal
  Map<String, Object?> encode() => {
    'max_pods_per_node': ?maxPodsPerNode?.toTfJson(),
    'secondary_pod_range': ?secondaryPodRange?.toTfJson(),
    'subnetwork': ?subnetwork?.encodeAs('name').toTfJson(),
  };
}

/// Typed helper for the `network_config.network_performance_config` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolNetworkPerformanceConfig {
  const ContainerNodePoolNetworkPerformanceConfig({
    required this.totalEgressBandwidthTier,
  });

  final ContainerNodePoolTotalEgressBandwidthTier totalEgressBandwidthTier;

  @internal
  Map<String, Object?> encode() => {
    'total_egress_bandwidth_tier': totalEgressBandwidthTier.toTfJson(),
  };
}

/// `total_egress_bandwidth_tier` — derived from the provider schema description.
extension type const ContainerNodePoolTotalEgressBandwidthTier._(
  TfArg<String> _
) implements TfArg<String> {
  ContainerNodePoolTotalEgressBandwidthTier.variable(String name)
    : this._(TfArg.variable(name));
  ContainerNodePoolTotalEgressBandwidthTier.expression(String template)
    : this._(TfArg.expression(template));
  const ContainerNodePoolTotalEgressBandwidthTier.arg(TfArg<String> arg)
    : this._(arg);

  static const tier1 = ContainerNodePoolTotalEgressBandwidthTier._(
    TfArgLiteral('TIER_1'),
  );
  static const tierUnspecified = ContainerNodePoolTotalEgressBandwidthTier._(
    TfArgLiteral('TIER_UNSPECIFIED'),
  );

  static const List<ContainerNodePoolTotalEgressBandwidthTier> values = [
    tier1,
    tierUnspecified,
  ];
}

/// Typed helper for the `network_config.pod_cidr_overprovision_config` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolPodCidrOverprovisionConfig {
  const ContainerNodePoolPodCidrOverprovisionConfig({required this.disabled});

  final TfArg<bool> disabled;

  @internal
  Map<String, Object?> encode() => {'disabled': disabled.toTfJson()};
}

/// Typed helper for the `node_config` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolNodeConfig {
  const ContainerNodePoolNodeConfig({
    this.bootDiskKmsKey,
    this.diskSizeGb,
    this.diskType,
    this.enableConfidentialStorage,
    this.flexStart,
    this.gpudirectStrategy,
    this.imageType,
    this.labels,
    this.localSsdCount,
    this.localSsdEncryptionMode,
    this.loggingVariant,
    this.machineType,
    this.maxRunDuration,
    this.metadata,
    this.minCpuPlatform,
    this.nodeGroup,
    this.oauthScopes,
    this.preemptible,
    this.resourceLabels,
    this.resourceManagerTags,
    this.serviceAccount,
    this.spot,
    this.storagePools,
    this.tags,
    this.advancedMachineFeatures,
    this.bootDisk,
    this.confidentialNodes,
    this.containerdConfig,
    this.ephemeralStorageLocalSsdConfig,
    this.fastSocket,
    this.gcfsConfig,
    this.guestAccelerator,
    this.gvnic,
    this.kubeletConfig,
    this.linuxNodeConfig,
    this.localNvmeSsdBlockConfig,
    this.nodeImageConfig,
    this.reservationAffinity,
    this.sandboxConfig,
    this.secondaryBootDisks,
    this.shieldedInstanceConfig,
    this.soleTenantConfig,
    this.taint,
    this.taintConfig,
    this.windowsNodeConfig,
    this.workloadMetadataConfig,
  });

  final TfArg<String>? bootDiskKmsKey;

  final TfArg<num>? diskSizeGb;

  final TfArg<String>? diskType;

  final TfArg<bool>? enableConfidentialStorage;

  final TfArg<bool>? flexStart;

  final ContainerNodePoolGpudirectStrategy? gpudirectStrategy;

  final TfArg<String>? imageType;

  final TfArg<Map<String, String>>? labels;

  final TfArg<num>? localSsdCount;

  final ContainerNodePoolLocalSsdEncryptionMode? localSsdEncryptionMode;

  final ContainerNodePoolLoggingVariant? loggingVariant;

  final TfArg<String>? machineType;

  final TfArg<String>? maxRunDuration;

  final TfArg<Map<String, String>>? metadata;

  final TfArg<String>? minCpuPlatform;

  final TfArg<String>? nodeGroup;

  final TfArg<List<String>>? oauthScopes;

  final TfArg<bool>? preemptible;

  final TfArg<Map<String, String>>? resourceLabels;

  final TfArg<Map<String, String>>? resourceManagerTags;

  final RefTo<GoogleServiceAccount>? serviceAccount;

  final TfArg<bool>? spot;

  final TfArg<List<String>>? storagePools;

  final TfArg<List<String>>? tags;

  final ContainerNodePoolAdvancedMachineFeatures? advancedMachineFeatures;

  final ContainerNodePoolBootDisk? bootDisk;

  final ContainerNodePoolConfidentialNodes? confidentialNodes;

  final ContainerNodePoolContainerdConfig? containerdConfig;

  final ContainerNodePoolEphemeralStorageLocalSsdConfig?
  ephemeralStorageLocalSsdConfig;

  final ContainerNodePoolFastSocket? fastSocket;

  final ContainerNodePoolGcfsConfig? gcfsConfig;

  final List<ContainerNodePoolGuestAccelerator>? guestAccelerator;

  final ContainerNodePoolGvnic? gvnic;

  final ContainerNodePoolKubeletConfig? kubeletConfig;

  final ContainerNodePoolLinuxNodeConfig? linuxNodeConfig;

  final ContainerNodePoolLocalNvmeSsdBlockConfig? localNvmeSsdBlockConfig;

  final List<ContainerNodePoolNodeImageConfig>? nodeImageConfig;

  final ContainerNodePoolReservationAffinity? reservationAffinity;

  final ContainerNodePoolSandboxConfig? sandboxConfig;

  final List<ContainerNodePoolSecondaryBootDisks>? secondaryBootDisks;

  final ContainerNodePoolShieldedInstanceConfig? shieldedInstanceConfig;

  final ContainerNodePoolSoleTenantConfig? soleTenantConfig;

  final List<ContainerNodePoolTaint>? taint;

  final ContainerNodePoolTaintConfig? taintConfig;

  final ContainerNodePoolWindowsNodeConfig? windowsNodeConfig;

  final ContainerNodePoolWorkloadMetadataConfig? workloadMetadataConfig;

  @internal
  Map<String, Object?> encode() => {
    'boot_disk_kms_key': ?bootDiskKmsKey?.toTfJson(),
    'disk_size_gb': ?diskSizeGb?.toTfJson(),
    'disk_type': ?diskType?.toTfJson(),
    'enable_confidential_storage': ?enableConfidentialStorage?.toTfJson(),
    'flex_start': ?flexStart?.toTfJson(),
    'gpudirect_strategy': ?gpudirectStrategy?.toTfJson(),
    'image_type': ?imageType?.toTfJson(),
    'labels': ?labels?.toTfJson(),
    'local_ssd_count': ?localSsdCount?.toTfJson(),
    'local_ssd_encryption_mode': ?localSsdEncryptionMode?.toTfJson(),
    'logging_variant': ?loggingVariant?.toTfJson(),
    'machine_type': ?machineType?.toTfJson(),
    'max_run_duration': ?maxRunDuration?.toTfJson(),
    'metadata': ?metadata?.toTfJson(),
    'min_cpu_platform': ?minCpuPlatform?.toTfJson(),
    'node_group': ?nodeGroup?.toTfJson(),
    'oauth_scopes': ?oauthScopes?.toTfJson(),
    'preemptible': ?preemptible?.toTfJson(),
    'resource_labels': ?resourceLabels?.toTfJson(),
    'resource_manager_tags': ?resourceManagerTags?.toTfJson(),
    'service_account': ?serviceAccount?.encodeAs('email').toTfJson(),
    'spot': ?spot?.toTfJson(),
    'storage_pools': ?storagePools?.toTfJson(),
    'tags': ?tags?.toTfJson(),
    'advanced_machine_features': ?advancedMachineFeatures?.encode(),
    'boot_disk': ?bootDisk?.encode(),
    'confidential_nodes': ?confidentialNodes?.encode(),
    'containerd_config': ?containerdConfig?.encode(),
    'ephemeral_storage_local_ssd_config': ?ephemeralStorageLocalSsdConfig
        ?.encode(),
    'fast_socket': ?fastSocket?.encode(),
    'gcfs_config': ?gcfsConfig?.encode(),
    if (guestAccelerator != null)
      'guest_accelerator': [for (final e in guestAccelerator!) e.encode()],
    'gvnic': ?gvnic?.encode(),
    'kubelet_config': ?kubeletConfig?.encode(),
    'linux_node_config': ?linuxNodeConfig?.encode(),
    'local_nvme_ssd_block_config': ?localNvmeSsdBlockConfig?.encode(),
    if (nodeImageConfig != null)
      'node_image_config': [for (final e in nodeImageConfig!) e.encode()],
    'reservation_affinity': ?reservationAffinity?.encode(),
    'sandbox_config': ?sandboxConfig?.encode(),
    if (secondaryBootDisks != null)
      'secondary_boot_disks': [for (final e in secondaryBootDisks!) e.encode()],
    'shielded_instance_config': ?shieldedInstanceConfig?.encode(),
    'sole_tenant_config': ?soleTenantConfig?.encode(),
    if (taint != null) 'taint': [for (final e in taint!) e.encode()],
    'taint_config': ?taintConfig?.encode(),
    'windows_node_config': ?windowsNodeConfig?.encode(),
    'workload_metadata_config': ?workloadMetadataConfig?.encode(),
  };
}

/// `gpudirect_strategy` — derived from the provider schema description.
extension type const ContainerNodePoolGpudirectStrategy._(TfArg<String> _)
    implements TfArg<String> {
  ContainerNodePoolGpudirectStrategy.variable(String name)
    : this._(TfArg.variable(name));
  ContainerNodePoolGpudirectStrategy.expression(String template)
    : this._(TfArg.expression(template));
  const ContainerNodePoolGpudirectStrategy.arg(TfArg<String> arg) : this._(arg);

  static const rdma = ContainerNodePoolGpudirectStrategy._(
    TfArgLiteral('RDMA'),
  );

  static const List<ContainerNodePoolGpudirectStrategy> values = [rdma];
}

/// `local_ssd_encryption_mode` — derived from the provider schema description.
extension type const ContainerNodePoolLocalSsdEncryptionMode._(TfArg<String> _)
    implements TfArg<String> {
  ContainerNodePoolLocalSsdEncryptionMode.variable(String name)
    : this._(TfArg.variable(name));
  ContainerNodePoolLocalSsdEncryptionMode.expression(String template)
    : this._(TfArg.expression(template));
  const ContainerNodePoolLocalSsdEncryptionMode.arg(TfArg<String> arg)
    : this._(arg);

  static const standardEncryption = ContainerNodePoolLocalSsdEncryptionMode._(
    TfArgLiteral('STANDARD_ENCRYPTION'),
  );
  static const ephemeralKeyEncryption =
      ContainerNodePoolLocalSsdEncryptionMode._(
        TfArgLiteral('EPHEMERAL_KEY_ENCRYPTION'),
      );

  static const List<ContainerNodePoolLocalSsdEncryptionMode> values = [
    standardEncryption,
    ephemeralKeyEncryption,
  ];
}

/// `logging_variant` — derived from the provider schema description.
extension type const ContainerNodePoolLoggingVariant._(TfArg<String> _)
    implements TfArg<String> {
  ContainerNodePoolLoggingVariant.variable(String name)
    : this._(TfArg.variable(name));
  ContainerNodePoolLoggingVariant.expression(String template)
    : this._(TfArg.expression(template));
  const ContainerNodePoolLoggingVariant.arg(TfArg<String> arg) : this._(arg);

  static const defaultCase = ContainerNodePoolLoggingVariant._(
    TfArgLiteral('DEFAULT'),
  );
  static const maxThroughput = ContainerNodePoolLoggingVariant._(
    TfArgLiteral('MAX_THROUGHPUT'),
  );

  static const List<ContainerNodePoolLoggingVariant> values = [
    defaultCase,
    maxThroughput,
  ];
}

/// Typed helper for the `node_config.advanced_machine_features` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolAdvancedMachineFeatures {
  const ContainerNodePoolAdvancedMachineFeatures({
    this.enableNestedVirtualization,
    this.performanceMonitoringUnit,
    required this.threadsPerCore,
  });

  final TfArg<bool>? enableNestedVirtualization;

  final ContainerNodePoolPerformanceMonitoringUnit? performanceMonitoringUnit;

  final TfArg<num> threadsPerCore;

  @internal
  Map<String, Object?> encode() => {
    'enable_nested_virtualization': ?enableNestedVirtualization?.toTfJson(),
    'performance_monitoring_unit': ?performanceMonitoringUnit?.toTfJson(),
    'threads_per_core': threadsPerCore.toTfJson(),
  };
}

/// `performance_monitoring_unit` — derived from the provider schema description.
extension type const ContainerNodePoolPerformanceMonitoringUnit._(
  TfArg<String> _
) implements TfArg<String> {
  ContainerNodePoolPerformanceMonitoringUnit.variable(String name)
    : this._(TfArg.variable(name));
  ContainerNodePoolPerformanceMonitoringUnit.expression(String template)
    : this._(TfArg.expression(template));
  const ContainerNodePoolPerformanceMonitoringUnit.arg(TfArg<String> arg)
    : this._(arg);

  static const architectural = ContainerNodePoolPerformanceMonitoringUnit._(
    TfArgLiteral('ARCHITECTURAL'),
  );
  static const standard = ContainerNodePoolPerformanceMonitoringUnit._(
    TfArgLiteral('STANDARD'),
  );
  static const enhanced = ContainerNodePoolPerformanceMonitoringUnit._(
    TfArgLiteral('ENHANCED'),
  );

  static const List<ContainerNodePoolPerformanceMonitoringUnit> values = [
    architectural,
    standard,
    enhanced,
  ];
}

/// Typed helper for the `node_config.boot_disk` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolBootDisk {
  const ContainerNodePoolBootDisk({
    this.diskType,
    this.provisionedIops,
    this.provisionedThroughput,
    this.sizeGb,
  });

  final TfArg<String>? diskType;

  final TfArg<num>? provisionedIops;

  final TfArg<num>? provisionedThroughput;

  final TfArg<num>? sizeGb;

  @internal
  Map<String, Object?> encode() => {
    'disk_type': ?diskType?.toTfJson(),
    'provisioned_iops': ?provisionedIops?.toTfJson(),
    'provisioned_throughput': ?provisionedThroughput?.toTfJson(),
    'size_gb': ?sizeGb?.toTfJson(),
  };
}

/// Typed helper for the `node_config.confidential_nodes` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolConfidentialNodes {
  const ContainerNodePoolConfidentialNodes({
    this.confidentialInstanceType,
    required this.enabled,
  });

  final ContainerNodePoolConfidentialInstanceType? confidentialInstanceType;

  final TfArg<bool> enabled;

  @internal
  Map<String, Object?> encode() => {
    'confidential_instance_type': ?confidentialInstanceType?.toTfJson(),
    'enabled': enabled.toTfJson(),
  };
}

/// `confidential_instance_type` — derived from the provider schema description.
extension type const ContainerNodePoolConfidentialInstanceType._(
  TfArg<String> _
) implements TfArg<String> {
  ContainerNodePoolConfidentialInstanceType.variable(String name)
    : this._(TfArg.variable(name));
  ContainerNodePoolConfidentialInstanceType.expression(String template)
    : this._(TfArg.expression(template));
  const ContainerNodePoolConfidentialInstanceType.arg(TfArg<String> arg)
    : this._(arg);

  static const sev = ContainerNodePoolConfidentialInstanceType._(
    TfArgLiteral('SEV'),
  );
  static const sevSnp = ContainerNodePoolConfidentialInstanceType._(
    TfArgLiteral('SEV_SNP'),
  );
  static const tdx = ContainerNodePoolConfidentialInstanceType._(
    TfArgLiteral('TDX'),
  );

  static const List<ContainerNodePoolConfidentialInstanceType> values = [
    sev,
    sevSnp,
    tdx,
  ];
}

/// Typed helper for the `node_config.containerd_config` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolContainerdConfig {
  const ContainerNodePoolContainerdConfig({
    this.privateRegistryAccessConfig,
    this.registryHosts,
    this.writableCgroups,
  });

  final ContainerNodePoolPrivateRegistryAccessConfig?
  privateRegistryAccessConfig;

  final List<ContainerNodePoolRegistryHosts>? registryHosts;

  final ContainerNodePoolWritableCgroups? writableCgroups;

  @internal
  Map<String, Object?> encode() => {
    'private_registry_access_config': ?privateRegistryAccessConfig?.encode(),
    if (registryHosts != null)
      'registry_hosts': [for (final e in registryHosts!) e.encode()],
    'writable_cgroups': ?writableCgroups?.encode(),
  };
}

/// Typed helper for the `node_config.containerd_config.private_registry_access_config` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolPrivateRegistryAccessConfig {
  const ContainerNodePoolPrivateRegistryAccessConfig({
    required this.enabled,
    this.certificateAuthorityDomainConfig,
  });

  final TfArg<bool> enabled;

  final List<ContainerNodePoolCertificateAuthorityDomainConfig>?
  certificateAuthorityDomainConfig;

  @internal
  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    if (certificateAuthorityDomainConfig != null)
      'certificate_authority_domain_config': [
        for (final e in certificateAuthorityDomainConfig!) e.encode(),
      ],
  };
}

/// Typed helper for the `node_config.containerd_config.private_registry_access_config.certificate_authority_domain_config` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolCertificateAuthorityDomainConfig {
  const ContainerNodePoolCertificateAuthorityDomainConfig({
    required this.fqdns,
    required this.gcpSecretManagerCertificateConfig,
  });

  final TfArg<List<String>> fqdns;

  final ContainerNodePoolGcpSecretManagerCertificateConfig
  gcpSecretManagerCertificateConfig;

  @internal
  Map<String, Object?> encode() => {
    'fqdns': fqdns.toTfJson(),
    'gcp_secret_manager_certificate_config': gcpSecretManagerCertificateConfig
        .encode(),
  };
}

/// Typed helper for the `node_config.containerd_config.private_registry_access_config.certificate_authority_domain_config.gcp_secret_manager_certificate_config` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolGcpSecretManagerCertificateConfig {
  const ContainerNodePoolGcpSecretManagerCertificateConfig({
    required this.secretUri,
  });

  final TfArg<String> secretUri;

  @internal
  Map<String, Object?> encode() => {'secret_uri': secretUri.toTfJson()};
}

/// Typed helper for the `node_config.containerd_config.registry_hosts` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolRegistryHosts {
  const ContainerNodePoolRegistryHosts({required this.server, this.hosts});

  final TfArg<String> server;

  final List<ContainerNodePoolHosts>? hosts;

  @internal
  Map<String, Object?> encode() => {
    'server': server.toTfJson(),
    if (hosts != null) 'hosts': [for (final e in hosts!) e.encode()],
  };
}

/// Typed helper for the `node_config.containerd_config.registry_hosts.hosts` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolHosts {
  const ContainerNodePoolHosts({
    this.capabilities,
    this.dialTimeout,
    required this.host,
    this.overridePath,
    this.ca,
    this.client,
    this.header,
  });

  final EnumList<ContainerNodePoolCapabilities>? capabilities;

  final TfArg<String>? dialTimeout;

  final TfArg<String> host;

  final TfArg<bool>? overridePath;

  final List<ContainerNodePoolCa>? ca;

  final List<ContainerNodePoolClient>? client;

  final List<ContainerNodePoolHeader>? header;

  @internal
  Map<String, Object?> encode() => {
    'capabilities': ?capabilities?.toTfJson(),
    'dial_timeout': ?dialTimeout?.toTfJson(),
    'host': host.toTfJson(),
    'override_path': ?overridePath?.toTfJson(),
    if (ca != null) 'ca': [for (final e in ca!) e.encode()],
    if (client != null) 'client': [for (final e in client!) e.encode()],
    if (header != null) 'header': [for (final e in header!) e.encode()],
  };
}

/// `capabilities` — derived from the provider schema description.
extension type const ContainerNodePoolCapabilities._(TfArg<String> _)
    implements TfArg<String> {
  ContainerNodePoolCapabilities.variable(String name)
    : this._(TfArg.variable(name));
  ContainerNodePoolCapabilities.expression(String template)
    : this._(TfArg.expression(template));
  const ContainerNodePoolCapabilities.arg(TfArg<String> arg) : this._(arg);

  static const hostCapabilityPull = ContainerNodePoolCapabilities._(
    TfArgLiteral('HOST_CAPABILITY_PULL'),
  );
  static const hostCapabilityResolve = ContainerNodePoolCapabilities._(
    TfArgLiteral('HOST_CAPABILITY_RESOLVE'),
  );
  static const hostCapabilityPush = ContainerNodePoolCapabilities._(
    TfArgLiteral('HOST_CAPABILITY_PUSH'),
  );

  static const List<ContainerNodePoolCapabilities> values = [
    hostCapabilityPull,
    hostCapabilityResolve,
    hostCapabilityPush,
  ];
}

/// Typed helper for the `node_config.containerd_config.registry_hosts.hosts.ca` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolCa {
  const ContainerNodePoolCa({this.gcpSecretManagerSecretUri});

  final TfArg<String>? gcpSecretManagerSecretUri;

  @internal
  Map<String, Object?> encode() => {
    'gcp_secret_manager_secret_uri': ?gcpSecretManagerSecretUri?.toTfJson(),
  };
}

/// Typed helper for the `node_config.containerd_config.registry_hosts.hosts.client` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolClient {
  const ContainerNodePoolClient({required this.cert, this.key});

  final ContainerNodePoolCert cert;

  final ContainerNodePoolKey? key;

  @internal
  Map<String, Object?> encode() => {
    'cert': cert.encode(),
    'key': ?key?.encode(),
  };
}

/// Typed helper for the `node_config.containerd_config.registry_hosts.hosts.client.cert` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolCert {
  const ContainerNodePoolCert({this.gcpSecretManagerSecretUri});

  final TfArg<String>? gcpSecretManagerSecretUri;

  @internal
  Map<String, Object?> encode() => {
    'gcp_secret_manager_secret_uri': ?gcpSecretManagerSecretUri?.toTfJson(),
  };
}

/// Typed helper for the `node_config.containerd_config.registry_hosts.hosts.client.key` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolKey {
  const ContainerNodePoolKey({this.gcpSecretManagerSecretUri});

  final TfArg<String>? gcpSecretManagerSecretUri;

  @internal
  Map<String, Object?> encode() => {
    'gcp_secret_manager_secret_uri': ?gcpSecretManagerSecretUri?.toTfJson(),
  };
}

/// Typed helper for the `node_config.containerd_config.registry_hosts.hosts.header` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolHeader {
  const ContainerNodePoolHeader({required this.key, required this.value});

  final TfArg<String> key;

  final TfArg<List<String>> value;

  @internal
  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `node_config.containerd_config.writable_cgroups` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolWritableCgroups {
  const ContainerNodePoolWritableCgroups({required this.enabled});

  final TfArg<bool> enabled;

  @internal
  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `node_config.ephemeral_storage_local_ssd_config` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolEphemeralStorageLocalSsdConfig {
  const ContainerNodePoolEphemeralStorageLocalSsdConfig({
    this.dataCacheCount,
    required this.localSsdCount,
  });

  final TfArg<num>? dataCacheCount;

  final TfArg<num> localSsdCount;

  @internal
  Map<String, Object?> encode() => {
    'data_cache_count': ?dataCacheCount?.toTfJson(),
    'local_ssd_count': localSsdCount.toTfJson(),
  };
}

/// Typed helper for the `node_config.fast_socket` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolFastSocket {
  const ContainerNodePoolFastSocket({required this.enabled});

  final TfArg<bool> enabled;

  @internal
  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `node_config.gcfs_config` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolGcfsConfig {
  const ContainerNodePoolGcfsConfig({required this.enabled});

  final TfArg<bool> enabled;

  @internal
  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `node_config.guest_accelerator` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolGuestAccelerator {
  const ContainerNodePoolGuestAccelerator({
    required this.count,
    this.gpuPartitionSize,
    required this.type,
    this.gpuDriverInstallationConfig,
    this.gpuSharingConfig,
  });

  final TfArg<num> count;

  final TfArg<String>? gpuPartitionSize;

  final TfArg<String> type;

  final ContainerNodePoolGpuDriverInstallationConfig?
  gpuDriverInstallationConfig;

  final ContainerNodePoolGpuSharingConfig? gpuSharingConfig;

  @internal
  Map<String, Object?> encode() => {
    'count': count.toTfJson(),
    'gpu_partition_size': ?gpuPartitionSize?.toTfJson(),
    'type': type.toTfJson(),
    'gpu_driver_installation_config': ?gpuDriverInstallationConfig?.encode(),
    'gpu_sharing_config': ?gpuSharingConfig?.encode(),
  };
}

/// Typed helper for the `node_config.guest_accelerator.gpu_driver_installation_config` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolGpuDriverInstallationConfig {
  const ContainerNodePoolGpuDriverInstallationConfig({
    required this.gpuDriverVersion,
  });

  final ContainerNodePoolGpuDriverVersion gpuDriverVersion;

  @internal
  Map<String, Object?> encode() => {
    'gpu_driver_version': gpuDriverVersion.toTfJson(),
  };
}

/// `gpu_driver_version` — derived from the provider schema description.
extension type const ContainerNodePoolGpuDriverVersion._(TfArg<String> _)
    implements TfArg<String> {
  ContainerNodePoolGpuDriverVersion.variable(String name)
    : this._(TfArg.variable(name));
  ContainerNodePoolGpuDriverVersion.expression(String template)
    : this._(TfArg.expression(template));
  const ContainerNodePoolGpuDriverVersion.arg(TfArg<String> arg) : this._(arg);

  static const installationDisabled = ContainerNodePoolGpuDriverVersion._(
    TfArgLiteral('INSTALLATION_DISABLED'),
  );
  static const defaultCase = ContainerNodePoolGpuDriverVersion._(
    TfArgLiteral('DEFAULT'),
  );
  static const latest = ContainerNodePoolGpuDriverVersion._(
    TfArgLiteral('LATEST'),
  );
  static const specific = ContainerNodePoolGpuDriverVersion._(
    TfArgLiteral('SPECIFIC'),
  );

  static const List<ContainerNodePoolGpuDriverVersion> values = [
    installationDisabled,
    defaultCase,
    latest,
    specific,
  ];
}

/// Typed helper for the `node_config.guest_accelerator.gpu_sharing_config` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolGpuSharingConfig {
  const ContainerNodePoolGpuSharingConfig({
    required this.gpuSharingStrategy,
    required this.maxSharedClientsPerGpu,
  });

  final ContainerNodePoolGpuSharingStrategy gpuSharingStrategy;

  final TfArg<num> maxSharedClientsPerGpu;

  @internal
  Map<String, Object?> encode() => {
    'gpu_sharing_strategy': gpuSharingStrategy.toTfJson(),
    'max_shared_clients_per_gpu': maxSharedClientsPerGpu.toTfJson(),
  };
}

/// `gpu_sharing_strategy` — derived from the provider schema description.
extension type const ContainerNodePoolGpuSharingStrategy._(TfArg<String> _)
    implements TfArg<String> {
  ContainerNodePoolGpuSharingStrategy.variable(String name)
    : this._(TfArg.variable(name));
  ContainerNodePoolGpuSharingStrategy.expression(String template)
    : this._(TfArg.expression(template));
  const ContainerNodePoolGpuSharingStrategy.arg(TfArg<String> arg)
    : this._(arg);

  static const timeSharing = ContainerNodePoolGpuSharingStrategy._(
    TfArgLiteral('TIME_SHARING'),
  );
  static const mps = ContainerNodePoolGpuSharingStrategy._(TfArgLiteral('MPS'));

  static const List<ContainerNodePoolGpuSharingStrategy> values = [
    timeSharing,
    mps,
  ];
}

/// Typed helper for the `node_config.gvnic` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolGvnic {
  const ContainerNodePoolGvnic({required this.enabled});

  final TfArg<bool> enabled;

  @internal
  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `node_config.kubelet_config` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolKubeletConfig {
  const ContainerNodePoolKubeletConfig({
    this.allowedUnsafeSysctls,
    this.containerLogMaxFiles,
    this.containerLogMaxSize,
    this.cpuCfsQuota,
    this.cpuCfsQuotaPeriod,
    this.cpuManagerPolicy,
    this.evictionMaxPodGracePeriodSeconds,
    this.imageGcHighThresholdPercent,
    this.imageGcLowThresholdPercent,
    this.imageMaximumGcAge,
    this.imageMinimumGcAge,
    this.insecureKubeletReadonlyPortEnabled,
    this.maxParallelImagePulls,
    this.podPidsLimit,
    this.shutdownGracePeriodCriticalPodsSeconds,
    this.shutdownGracePeriodSeconds,
    this.singleProcessOomKill,
    this.crashLoopBackOff,
    this.evictionMinimumReclaim,
    this.evictionSoft,
    this.evictionSoftGracePeriod,
    this.memoryManager,
    this.topologyManager,
  });

  final TfArg<List<String>>? allowedUnsafeSysctls;

  final TfArg<num>? containerLogMaxFiles;

  final TfArg<String>? containerLogMaxSize;

  final TfArg<bool>? cpuCfsQuota;

  final TfArg<String>? cpuCfsQuotaPeriod;

  final TfArg<String>? cpuManagerPolicy;

  final TfArg<num>? evictionMaxPodGracePeriodSeconds;

  final TfArg<num>? imageGcHighThresholdPercent;

  final TfArg<num>? imageGcLowThresholdPercent;

  final TfArg<String>? imageMaximumGcAge;

  final TfArg<String>? imageMinimumGcAge;

  final ContainerNodePoolInsecureKubeletReadonlyPortEnabled?
  insecureKubeletReadonlyPortEnabled;

  final TfArg<num>? maxParallelImagePulls;

  final TfArg<num>? podPidsLimit;

  final TfArg<num>? shutdownGracePeriodCriticalPodsSeconds;

  final TfArg<num>? shutdownGracePeriodSeconds;

  final TfArg<bool>? singleProcessOomKill;

  final ContainerNodePoolCrashLoopBackOff? crashLoopBackOff;

  final ContainerNodePoolEvictionMinimumReclaim? evictionMinimumReclaim;

  final ContainerNodePoolEvictionSoft? evictionSoft;

  final ContainerNodePoolEvictionSoftGracePeriod? evictionSoftGracePeriod;

  final ContainerNodePoolMemoryManager? memoryManager;

  final ContainerNodePoolTopologyManager? topologyManager;

  @internal
  Map<String, Object?> encode() => {
    'allowed_unsafe_sysctls': ?allowedUnsafeSysctls?.toTfJson(),
    'container_log_max_files': ?containerLogMaxFiles?.toTfJson(),
    'container_log_max_size': ?containerLogMaxSize?.toTfJson(),
    'cpu_cfs_quota': ?cpuCfsQuota?.toTfJson(),
    'cpu_cfs_quota_period': ?cpuCfsQuotaPeriod?.toTfJson(),
    'cpu_manager_policy': ?cpuManagerPolicy?.toTfJson(),
    'eviction_max_pod_grace_period_seconds': ?evictionMaxPodGracePeriodSeconds
        ?.toTfJson(),
    'image_gc_high_threshold_percent': ?imageGcHighThresholdPercent?.toTfJson(),
    'image_gc_low_threshold_percent': ?imageGcLowThresholdPercent?.toTfJson(),
    'image_maximum_gc_age': ?imageMaximumGcAge?.toTfJson(),
    'image_minimum_gc_age': ?imageMinimumGcAge?.toTfJson(),
    'insecure_kubelet_readonly_port_enabled':
        ?insecureKubeletReadonlyPortEnabled?.toTfJson(),
    'max_parallel_image_pulls': ?maxParallelImagePulls?.toTfJson(),
    'pod_pids_limit': ?podPidsLimit?.toTfJson(),
    'shutdown_grace_period_critical_pods_seconds':
        ?shutdownGracePeriodCriticalPodsSeconds?.toTfJson(),
    'shutdown_grace_period_seconds': ?shutdownGracePeriodSeconds?.toTfJson(),
    'single_process_oom_kill': ?singleProcessOomKill?.toTfJson(),
    'crash_loop_back_off': ?crashLoopBackOff?.encode(),
    'eviction_minimum_reclaim': ?evictionMinimumReclaim?.encode(),
    'eviction_soft': ?evictionSoft?.encode(),
    'eviction_soft_grace_period': ?evictionSoftGracePeriod?.encode(),
    'memory_manager': ?memoryManager?.encode(),
    'topology_manager': ?topologyManager?.encode(),
  };
}

/// `insecure_kubelet_readonly_port_enabled` — derived from the provider schema description.
extension type const ContainerNodePoolInsecureKubeletReadonlyPortEnabled._(
  TfArg<String> _
) implements TfArg<String> {
  ContainerNodePoolInsecureKubeletReadonlyPortEnabled.variable(String name)
    : this._(TfArg.variable(name));
  ContainerNodePoolInsecureKubeletReadonlyPortEnabled.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ContainerNodePoolInsecureKubeletReadonlyPortEnabled.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const trueCase = ContainerNodePoolInsecureKubeletReadonlyPortEnabled._(
    TfArgLiteral('TRUE'),
  );
  static const falseCase =
      ContainerNodePoolInsecureKubeletReadonlyPortEnabled._(
        TfArgLiteral('FALSE'),
      );

  static const List<ContainerNodePoolInsecureKubeletReadonlyPortEnabled>
  values = [trueCase, falseCase];
}

/// Typed helper for the `node_config.kubelet_config.crash_loop_back_off` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolCrashLoopBackOff {
  const ContainerNodePoolCrashLoopBackOff({this.maxContainerRestartPeriod});

  final TfArg<String>? maxContainerRestartPeriod;

  @internal
  Map<String, Object?> encode() => {
    'max_container_restart_period': ?maxContainerRestartPeriod?.toTfJson(),
  };
}

/// Typed helper for the `node_config.kubelet_config.eviction_minimum_reclaim` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolEvictionMinimumReclaim {
  const ContainerNodePoolEvictionMinimumReclaim({
    this.imagefsAvailable,
    this.imagefsInodesFree,
    this.memoryAvailable,
    this.nodefsAvailable,
    this.nodefsInodesFree,
    this.pidAvailable,
  });

  final TfArg<String>? imagefsAvailable;

  final TfArg<String>? imagefsInodesFree;

  final TfArg<String>? memoryAvailable;

  final TfArg<String>? nodefsAvailable;

  final TfArg<String>? nodefsInodesFree;

  final TfArg<String>? pidAvailable;

  @internal
  Map<String, Object?> encode() => {
    'imagefs_available': ?imagefsAvailable?.toTfJson(),
    'imagefs_inodes_free': ?imagefsInodesFree?.toTfJson(),
    'memory_available': ?memoryAvailable?.toTfJson(),
    'nodefs_available': ?nodefsAvailable?.toTfJson(),
    'nodefs_inodes_free': ?nodefsInodesFree?.toTfJson(),
    'pid_available': ?pidAvailable?.toTfJson(),
  };
}

/// Typed helper for the `node_config.kubelet_config.eviction_soft` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolEvictionSoft {
  const ContainerNodePoolEvictionSoft({
    this.imagefsAvailable,
    this.imagefsInodesFree,
    this.memoryAvailable,
    this.nodefsAvailable,
    this.nodefsInodesFree,
    this.pidAvailable,
  });

  final TfArg<String>? imagefsAvailable;

  final TfArg<String>? imagefsInodesFree;

  final TfArg<String>? memoryAvailable;

  final TfArg<String>? nodefsAvailable;

  final TfArg<String>? nodefsInodesFree;

  final TfArg<String>? pidAvailable;

  @internal
  Map<String, Object?> encode() => {
    'imagefs_available': ?imagefsAvailable?.toTfJson(),
    'imagefs_inodes_free': ?imagefsInodesFree?.toTfJson(),
    'memory_available': ?memoryAvailable?.toTfJson(),
    'nodefs_available': ?nodefsAvailable?.toTfJson(),
    'nodefs_inodes_free': ?nodefsInodesFree?.toTfJson(),
    'pid_available': ?pidAvailable?.toTfJson(),
  };
}

/// Typed helper for the `node_config.kubelet_config.eviction_soft_grace_period` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolEvictionSoftGracePeriod {
  const ContainerNodePoolEvictionSoftGracePeriod({
    this.imagefsAvailable,
    this.imagefsInodesFree,
    this.memoryAvailable,
    this.nodefsAvailable,
    this.nodefsInodesFree,
    this.pidAvailable,
  });

  final TfArg<String>? imagefsAvailable;

  final TfArg<String>? imagefsInodesFree;

  final TfArg<String>? memoryAvailable;

  final TfArg<String>? nodefsAvailable;

  final TfArg<String>? nodefsInodesFree;

  final TfArg<String>? pidAvailable;

  @internal
  Map<String, Object?> encode() => {
    'imagefs_available': ?imagefsAvailable?.toTfJson(),
    'imagefs_inodes_free': ?imagefsInodesFree?.toTfJson(),
    'memory_available': ?memoryAvailable?.toTfJson(),
    'nodefs_available': ?nodefsAvailable?.toTfJson(),
    'nodefs_inodes_free': ?nodefsInodesFree?.toTfJson(),
    'pid_available': ?pidAvailable?.toTfJson(),
  };
}

/// Typed helper for the `node_config.kubelet_config.memory_manager` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolMemoryManager {
  const ContainerNodePoolMemoryManager({this.policy});

  final TfArg<String>? policy;

  @internal
  Map<String, Object?> encode() => {'policy': ?policy?.toTfJson()};
}

/// Typed helper for the `node_config.kubelet_config.topology_manager` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolTopologyManager {
  const ContainerNodePoolTopologyManager({this.policy, this.scope});

  final TfArg<String>? policy;

  final ContainerNodePoolScope? scope;

  @internal
  Map<String, Object?> encode() => {
    'policy': ?policy?.toTfJson(),
    'scope': ?scope?.toTfJson(),
  };
}

/// `scope` — derived from the provider schema description.
extension type const ContainerNodePoolScope._(TfArg<String> _)
    implements TfArg<String> {
  ContainerNodePoolScope.variable(String name) : this._(TfArg.variable(name));
  ContainerNodePoolScope.expression(String template)
    : this._(TfArg.expression(template));
  const ContainerNodePoolScope.arg(TfArg<String> arg) : this._(arg);

  static const container = ContainerNodePoolScope._(TfArgLiteral('container'));
  static const pod = ContainerNodePoolScope._(TfArgLiteral('pod'));

  static const List<ContainerNodePoolScope> values = [container, pod];
}

/// Typed helper for the `node_config.linux_node_config` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolLinuxNodeConfig {
  const ContainerNodePoolLinuxNodeConfig({
    this.cgroupMode,
    this.sysctls,
    this.transparentHugepageDefrag,
    this.transparentHugepageEnabled,
    this.accurateTimeConfig,
    this.customNodeInit,
    this.hugepagesConfig,
    this.nodeKernelModuleLoading,
    this.swapConfig,
  });

  final ContainerNodePoolCgroupMode? cgroupMode;

  final TfArg<Map<String, String>>? sysctls;

  final ContainerNodePoolTransparentHugepageDefrag? transparentHugepageDefrag;

  final ContainerNodePoolTransparentHugepageEnabled? transparentHugepageEnabled;

  final ContainerNodePoolAccurateTimeConfig? accurateTimeConfig;

  final ContainerNodePoolCustomNodeInit? customNodeInit;

  final ContainerNodePoolHugepagesConfig? hugepagesConfig;

  final ContainerNodePoolNodeKernelModuleLoading? nodeKernelModuleLoading;

  final ContainerNodePoolSwapConfig? swapConfig;

  @internal
  Map<String, Object?> encode() => {
    'cgroup_mode': ?cgroupMode?.toTfJson(),
    'sysctls': ?sysctls?.toTfJson(),
    'transparent_hugepage_defrag': ?transparentHugepageDefrag?.toTfJson(),
    'transparent_hugepage_enabled': ?transparentHugepageEnabled?.toTfJson(),
    'accurate_time_config': ?accurateTimeConfig?.encode(),
    'custom_node_init': ?customNodeInit?.encode(),
    'hugepages_config': ?hugepagesConfig?.encode(),
    'node_kernel_module_loading': ?nodeKernelModuleLoading?.encode(),
    'swap_config': ?swapConfig?.encode(),
  };
}

/// `cgroup_mode` — derived from the provider schema description.
extension type const ContainerNodePoolCgroupMode._(TfArg<String> _)
    implements TfArg<String> {
  ContainerNodePoolCgroupMode.variable(String name)
    : this._(TfArg.variable(name));
  ContainerNodePoolCgroupMode.expression(String template)
    : this._(TfArg.expression(template));
  const ContainerNodePoolCgroupMode.arg(TfArg<String> arg) : this._(arg);

  static const cgroupModeV1 = ContainerNodePoolCgroupMode._(
    TfArgLiteral('CGROUP_MODE_V1'),
  );
  static const cgroupModeV2 = ContainerNodePoolCgroupMode._(
    TfArgLiteral('CGROUP_MODE_V2'),
  );

  static const List<ContainerNodePoolCgroupMode> values = [
    cgroupModeV1,
    cgroupModeV2,
  ];
}

/// `transparent_hugepage_defrag` — derived from the provider schema description.
extension type const ContainerNodePoolTransparentHugepageDefrag._(
  TfArg<String> _
) implements TfArg<String> {
  ContainerNodePoolTransparentHugepageDefrag.variable(String name)
    : this._(TfArg.variable(name));
  ContainerNodePoolTransparentHugepageDefrag.expression(String template)
    : this._(TfArg.expression(template));
  const ContainerNodePoolTransparentHugepageDefrag.arg(TfArg<String> arg)
    : this._(arg);

  static const transparentHugepageDefragAlways =
      ContainerNodePoolTransparentHugepageDefrag._(
        TfArgLiteral('TRANSPARENT_HUGEPAGE_DEFRAG_ALWAYS'),
      );
  static const transparentHugepageDefragDefer =
      ContainerNodePoolTransparentHugepageDefrag._(
        TfArgLiteral('TRANSPARENT_HUGEPAGE_DEFRAG_DEFER'),
      );
  static const transparentHugepageDefragDeferWithMadvise =
      ContainerNodePoolTransparentHugepageDefrag._(
        TfArgLiteral('TRANSPARENT_HUGEPAGE_DEFRAG_DEFER_WITH_MADVISE'),
      );
  static const transparentHugepageDefragMadvise =
      ContainerNodePoolTransparentHugepageDefrag._(
        TfArgLiteral('TRANSPARENT_HUGEPAGE_DEFRAG_MADVISE'),
      );
  static const transparentHugepageDefragNever =
      ContainerNodePoolTransparentHugepageDefrag._(
        TfArgLiteral('TRANSPARENT_HUGEPAGE_DEFRAG_NEVER'),
      );

  static const List<ContainerNodePoolTransparentHugepageDefrag> values = [
    transparentHugepageDefragAlways,
    transparentHugepageDefragDefer,
    transparentHugepageDefragDeferWithMadvise,
    transparentHugepageDefragMadvise,
    transparentHugepageDefragNever,
  ];
}

/// `transparent_hugepage_enabled` — derived from the provider schema description.
extension type const ContainerNodePoolTransparentHugepageEnabled._(
  TfArg<String> _
) implements TfArg<String> {
  ContainerNodePoolTransparentHugepageEnabled.variable(String name)
    : this._(TfArg.variable(name));
  ContainerNodePoolTransparentHugepageEnabled.expression(String template)
    : this._(TfArg.expression(template));
  const ContainerNodePoolTransparentHugepageEnabled.arg(TfArg<String> arg)
    : this._(arg);

  static const transparentHugepageEnabledAlways =
      ContainerNodePoolTransparentHugepageEnabled._(
        TfArgLiteral('TRANSPARENT_HUGEPAGE_ENABLED_ALWAYS'),
      );
  static const transparentHugepageEnabledMadvise =
      ContainerNodePoolTransparentHugepageEnabled._(
        TfArgLiteral('TRANSPARENT_HUGEPAGE_ENABLED_MADVISE'),
      );
  static const transparentHugepageEnabledNever =
      ContainerNodePoolTransparentHugepageEnabled._(
        TfArgLiteral('TRANSPARENT_HUGEPAGE_ENABLED_NEVER'),
      );

  static const List<ContainerNodePoolTransparentHugepageEnabled> values = [
    transparentHugepageEnabledAlways,
    transparentHugepageEnabledMadvise,
    transparentHugepageEnabledNever,
  ];
}

/// Typed helper for the `node_config.linux_node_config.accurate_time_config` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolAccurateTimeConfig {
  const ContainerNodePoolAccurateTimeConfig({this.enablePtpKvmTimeSync});

  final TfArg<bool>? enablePtpKvmTimeSync;

  @internal
  Map<String, Object?> encode() => {
    'enable_ptp_kvm_time_sync': ?enablePtpKvmTimeSync?.toTfJson(),
  };
}

/// Typed helper for the `node_config.linux_node_config.custom_node_init` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolCustomNodeInit {
  const ContainerNodePoolCustomNodeInit({this.initScript});

  final ContainerNodePoolInitScript? initScript;

  @internal
  Map<String, Object?> encode() => {'init_script': ?initScript?.encode()};
}

/// Typed helper for the `node_config.linux_node_config.custom_node_init.init_script` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolInitScript {
  const ContainerNodePoolInitScript({
    this.gcpSecretManagerSecretUri,
    this.gcsGeneration,
    this.gcsUri,
  });

  final TfArg<String>? gcpSecretManagerSecretUri;

  final TfArg<num>? gcsGeneration;

  final TfArg<String>? gcsUri;

  @internal
  Map<String, Object?> encode() => {
    'gcp_secret_manager_secret_uri': ?gcpSecretManagerSecretUri?.toTfJson(),
    'gcs_generation': ?gcsGeneration?.toTfJson(),
    'gcs_uri': ?gcsUri?.toTfJson(),
  };
}

/// Typed helper for the `node_config.linux_node_config.hugepages_config` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolHugepagesConfig {
  const ContainerNodePoolHugepagesConfig({
    this.hugepageSize1g,
    this.hugepageSize2m,
  });

  final TfArg<num>? hugepageSize1g;

  final TfArg<num>? hugepageSize2m;

  @internal
  Map<String, Object?> encode() => {
    'hugepage_size_1g': ?hugepageSize1g?.toTfJson(),
    'hugepage_size_2m': ?hugepageSize2m?.toTfJson(),
  };
}

/// Typed helper for the `node_config.linux_node_config.node_kernel_module_loading` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolNodeKernelModuleLoading {
  const ContainerNodePoolNodeKernelModuleLoading({this.policy});

  final ContainerNodePoolPolicy? policy;

  @internal
  Map<String, Object?> encode() => {'policy': ?policy?.toTfJson()};
}

/// `policy` — derived from the provider schema description.
extension type const ContainerNodePoolPolicy._(TfArg<String> _)
    implements TfArg<String> {
  ContainerNodePoolPolicy.variable(String name) : this._(TfArg.variable(name));
  ContainerNodePoolPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const ContainerNodePoolPolicy.arg(TfArg<String> arg) : this._(arg);

  static const enforceSignedModules = ContainerNodePoolPolicy._(
    TfArgLiteral('ENFORCE_SIGNED_MODULES'),
  );
  static const doNotEnforceSignedModules = ContainerNodePoolPolicy._(
    TfArgLiteral('DO_NOT_ENFORCE_SIGNED_MODULES'),
  );

  static const List<ContainerNodePoolPolicy> values = [
    enforceSignedModules,
    doNotEnforceSignedModules,
  ];
}

/// Typed helper for the `node_config.linux_node_config.swap_config` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolSwapConfig {
  const ContainerNodePoolSwapConfig({
    this.enabled,
    this.bootDiskProfile,
    this.dedicatedLocalSsdProfile,
    this.encryptionConfig,
    this.ephemeralLocalSsdProfile,
  });

  final TfArg<bool>? enabled;

  final ContainerNodePoolBootDiskProfile? bootDiskProfile;

  final ContainerNodePoolDedicatedLocalSsdProfile? dedicatedLocalSsdProfile;

  final ContainerNodePoolEncryptionConfig? encryptionConfig;

  final ContainerNodePoolEphemeralLocalSsdProfile? ephemeralLocalSsdProfile;

  @internal
  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'boot_disk_profile': ?bootDiskProfile?.encode(),
    'dedicated_local_ssd_profile': ?dedicatedLocalSsdProfile?.encode(),
    'encryption_config': ?encryptionConfig?.encode(),
    'ephemeral_local_ssd_profile': ?ephemeralLocalSsdProfile?.encode(),
  };
}

/// Typed helper for the `node_config.linux_node_config.swap_config.boot_disk_profile` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolBootDiskProfile {
  const ContainerNodePoolBootDiskProfile({
    this.swapSizeGib,
    this.swapSizePercent,
  });

  final TfArg<num>? swapSizeGib;

  final TfArg<num>? swapSizePercent;

  @internal
  Map<String, Object?> encode() => {
    'swap_size_gib': ?swapSizeGib?.toTfJson(),
    'swap_size_percent': ?swapSizePercent?.toTfJson(),
  };
}

/// Typed helper for the `node_config.linux_node_config.swap_config.dedicated_local_ssd_profile` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolDedicatedLocalSsdProfile {
  const ContainerNodePoolDedicatedLocalSsdProfile({this.diskCount});

  final TfArg<num>? diskCount;

  @internal
  Map<String, Object?> encode() => {'disk_count': ?diskCount?.toTfJson()};
}

/// Typed helper for the `node_config.linux_node_config.swap_config.encryption_config` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolEncryptionConfig {
  const ContainerNodePoolEncryptionConfig({this.disabled});

  final TfArg<bool>? disabled;

  @internal
  Map<String, Object?> encode() => {'disabled': ?disabled?.toTfJson()};
}

/// Typed helper for the `node_config.linux_node_config.swap_config.ephemeral_local_ssd_profile` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolEphemeralLocalSsdProfile {
  const ContainerNodePoolEphemeralLocalSsdProfile({
    this.swapSizeGib,
    this.swapSizePercent,
  });

  final TfArg<num>? swapSizeGib;

  final TfArg<num>? swapSizePercent;

  @internal
  Map<String, Object?> encode() => {
    'swap_size_gib': ?swapSizeGib?.toTfJson(),
    'swap_size_percent': ?swapSizePercent?.toTfJson(),
  };
}

/// Typed helper for the `node_config.local_nvme_ssd_block_config` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolLocalNvmeSsdBlockConfig {
  const ContainerNodePoolLocalNvmeSsdBlockConfig({required this.localSsdCount});

  final TfArg<num> localSsdCount;

  @internal
  Map<String, Object?> encode() => {
    'local_ssd_count': localSsdCount.toTfJson(),
  };
}

/// Typed helper for the `node_config.node_image_config` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolNodeImageConfig {
  const ContainerNodePoolNodeImageConfig({this.image, this.imageProject});

  final TfArg<String>? image;

  final TfArg<String>? imageProject;

  @internal
  Map<String, Object?> encode() => {
    'image': ?image?.toTfJson(),
    'image_project': ?imageProject?.toTfJson(),
  };
}

/// Typed helper for the `node_config.reservation_affinity` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolReservationAffinity {
  const ContainerNodePoolReservationAffinity({
    required this.consumeReservationType,
    this.key,
    this.values,
  });

  final ContainerNodePoolConsumeReservationType consumeReservationType;

  final TfArg<String>? key;

  final TfArg<List<String>>? values;

  @internal
  Map<String, Object?> encode() => {
    'consume_reservation_type': consumeReservationType.toTfJson(),
    'key': ?key?.toTfJson(),
    'values': ?values?.toTfJson(),
  };
}

/// `consume_reservation_type` — derived from the provider schema description.
extension type const ContainerNodePoolConsumeReservationType._(TfArg<String> _)
    implements TfArg<String> {
  ContainerNodePoolConsumeReservationType.variable(String name)
    : this._(TfArg.variable(name));
  ContainerNodePoolConsumeReservationType.expression(String template)
    : this._(TfArg.expression(template));
  const ContainerNodePoolConsumeReservationType.arg(TfArg<String> arg)
    : this._(arg);

  static const noReservation = ContainerNodePoolConsumeReservationType._(
    TfArgLiteral('NO_RESERVATION'),
  );
  static const anyReservation = ContainerNodePoolConsumeReservationType._(
    TfArgLiteral('ANY_RESERVATION'),
  );
  static const specificReservation = ContainerNodePoolConsumeReservationType._(
    TfArgLiteral('SPECIFIC_RESERVATION'),
  );
  static const anyReservationThenFail =
      ContainerNodePoolConsumeReservationType._(
        TfArgLiteral('ANY_RESERVATION_THEN_FAIL'),
      );

  static const List<ContainerNodePoolConsumeReservationType> values = [
    noReservation,
    anyReservation,
    specificReservation,
    anyReservationThenFail,
  ];
}

/// Typed helper for the `node_config.sandbox_config` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolSandboxConfig {
  const ContainerNodePoolSandboxConfig({required this.type});

  final ContainerNodePoolSandboxConfigType type;

  @internal
  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// `type` — derived from the provider schema description.
extension type const ContainerNodePoolSandboxConfigType._(TfArg<String> _)
    implements TfArg<String> {
  ContainerNodePoolSandboxConfigType.variable(String name)
    : this._(TfArg.variable(name));
  ContainerNodePoolSandboxConfigType.expression(String template)
    : this._(TfArg.expression(template));
  const ContainerNodePoolSandboxConfigType.arg(TfArg<String> arg) : this._(arg);

  static const gvisor = ContainerNodePoolSandboxConfigType._(
    TfArgLiteral('GVISOR'),
  );
  static const microvm = ContainerNodePoolSandboxConfigType._(
    TfArgLiteral('MICROVM'),
  );

  static const List<ContainerNodePoolSandboxConfigType> values = [
    gvisor,
    microvm,
  ];
}

/// Typed helper for the `node_config.secondary_boot_disks` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolSecondaryBootDisks {
  const ContainerNodePoolSecondaryBootDisks({
    required this.diskImage,
    this.mode,
  });

  final TfArg<String> diskImage;

  final ContainerNodePoolSecondaryBootDisksMode? mode;

  @internal
  Map<String, Object?> encode() => {
    'disk_image': diskImage.toTfJson(),
    'mode': ?mode?.toTfJson(),
  };
}

/// `mode` — derived from the provider schema description.
extension type const ContainerNodePoolSecondaryBootDisksMode._(TfArg<String> _)
    implements TfArg<String> {
  ContainerNodePoolSecondaryBootDisksMode.variable(String name)
    : this._(TfArg.variable(name));
  ContainerNodePoolSecondaryBootDisksMode.expression(String template)
    : this._(TfArg.expression(template));
  const ContainerNodePoolSecondaryBootDisksMode.arg(TfArg<String> arg)
    : this._(arg);

  static const containerImageCache = ContainerNodePoolSecondaryBootDisksMode._(
    TfArgLiteral('CONTAINER_IMAGE_CACHE'),
  );

  static const List<ContainerNodePoolSecondaryBootDisksMode> values = [
    containerImageCache,
  ];
}

/// Typed helper for the `node_config.shielded_instance_config` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolShieldedInstanceConfig {
  const ContainerNodePoolShieldedInstanceConfig({
    this.enableIntegrityMonitoring,
    this.enableSecureBoot,
  });

  final TfArg<bool>? enableIntegrityMonitoring;

  final TfArg<bool>? enableSecureBoot;

  @internal
  Map<String, Object?> encode() => {
    'enable_integrity_monitoring': ?enableIntegrityMonitoring?.toTfJson(),
    'enable_secure_boot': ?enableSecureBoot?.toTfJson(),
  };
}

/// Typed helper for the `node_config.sole_tenant_config` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolSoleTenantConfig {
  const ContainerNodePoolSoleTenantConfig({
    this.minNodeCpus,
    required this.nodeAffinity,
  });

  final TfArg<num>? minNodeCpus;

  final List<ContainerNodePoolNodeAffinity> nodeAffinity;

  @internal
  Map<String, Object?> encode() => {
    'min_node_cpus': ?minNodeCpus?.toTfJson(),
    'node_affinity': [for (final e in nodeAffinity) e.encode()],
  };
}

/// Typed helper for the `node_config.sole_tenant_config.node_affinity` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolNodeAffinity {
  const ContainerNodePoolNodeAffinity({
    required this.key,
    required this.operator,
    required this.values,
  });

  final TfArg<String> key;

  final ContainerNodePoolOperator operator;

  final TfArg<List<String>> values;

  @internal
  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'operator': operator.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// `operator` — derived from the provider schema description.
extension type const ContainerNodePoolOperator._(TfArg<String> _)
    implements TfArg<String> {
  ContainerNodePoolOperator.variable(String name)
    : this._(TfArg.variable(name));
  ContainerNodePoolOperator.expression(String template)
    : this._(TfArg.expression(template));
  const ContainerNodePoolOperator.arg(TfArg<String> arg) : this._(arg);

  static const inCase = ContainerNodePoolOperator._(TfArgLiteral('IN'));
  static const notIn = ContainerNodePoolOperator._(TfArgLiteral('NOT_IN'));

  static const List<ContainerNodePoolOperator> values = [inCase, notIn];
}

/// Typed helper for the `node_config.taint` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolTaint {
  const ContainerNodePoolTaint({
    required this.effect,
    required this.key,
    required this.value,
  });

  final ContainerNodePoolEffect effect;

  final TfArg<String> key;

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {
    'effect': effect.toTfJson(),
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `effect` — derived from the provider schema description.
extension type const ContainerNodePoolEffect._(TfArg<String> _)
    implements TfArg<String> {
  ContainerNodePoolEffect.variable(String name) : this._(TfArg.variable(name));
  ContainerNodePoolEffect.expression(String template)
    : this._(TfArg.expression(template));
  const ContainerNodePoolEffect.arg(TfArg<String> arg) : this._(arg);

  static const noSchedule = ContainerNodePoolEffect._(
    TfArgLiteral('NO_SCHEDULE'),
  );
  static const preferNoSchedule = ContainerNodePoolEffect._(
    TfArgLiteral('PREFER_NO_SCHEDULE'),
  );
  static const noExecute = ContainerNodePoolEffect._(
    TfArgLiteral('NO_EXECUTE'),
  );

  static const List<ContainerNodePoolEffect> values = [
    noSchedule,
    preferNoSchedule,
    noExecute,
  ];
}

/// Typed helper for the `node_config.taint_config` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolTaintConfig {
  const ContainerNodePoolTaintConfig({required this.architectureTaintBehavior});

  final ContainerNodePoolArchitectureTaintBehavior architectureTaintBehavior;

  @internal
  Map<String, Object?> encode() => {
    'architecture_taint_behavior': architectureTaintBehavior.toTfJson(),
  };
}

/// `architecture_taint_behavior` — derived from the provider schema description.
extension type const ContainerNodePoolArchitectureTaintBehavior._(
  TfArg<String> _
) implements TfArg<String> {
  ContainerNodePoolArchitectureTaintBehavior.variable(String name)
    : this._(TfArg.variable(name));
  ContainerNodePoolArchitectureTaintBehavior.expression(String template)
    : this._(TfArg.expression(template));
  const ContainerNodePoolArchitectureTaintBehavior.arg(TfArg<String> arg)
    : this._(arg);

  static const none = ContainerNodePoolArchitectureTaintBehavior._(
    TfArgLiteral('NONE'),
  );
  static const arm = ContainerNodePoolArchitectureTaintBehavior._(
    TfArgLiteral('ARM'),
  );

  static const List<ContainerNodePoolArchitectureTaintBehavior> values = [
    none,
    arm,
  ];
}

/// Typed helper for the `node_config.windows_node_config` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolWindowsNodeConfig {
  const ContainerNodePoolWindowsNodeConfig({this.osversion});

  final ContainerNodePoolOsversion? osversion;

  @internal
  Map<String, Object?> encode() => {'osversion': ?osversion?.toTfJson()};
}

/// `osversion` — derived from the provider schema description.
extension type const ContainerNodePoolOsversion._(TfArg<String> _)
    implements TfArg<String> {
  ContainerNodePoolOsversion.variable(String name)
    : this._(TfArg.variable(name));
  ContainerNodePoolOsversion.expression(String template)
    : this._(TfArg.expression(template));
  const ContainerNodePoolOsversion.arg(TfArg<String> arg) : this._(arg);

  static const osVersionLtsc2019 = ContainerNodePoolOsversion._(
    TfArgLiteral('OS_VERSION_LTSC2019'),
  );
  static const osVersionLtsc2022 = ContainerNodePoolOsversion._(
    TfArgLiteral('OS_VERSION_LTSC2022'),
  );

  static const List<ContainerNodePoolOsversion> values = [
    osVersionLtsc2019,
    osVersionLtsc2022,
  ];
}

/// Typed helper for the `node_config.workload_metadata_config` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolWorkloadMetadataConfig {
  const ContainerNodePoolWorkloadMetadataConfig({required this.mode});

  final ContainerNodePoolWorkloadMetadataConfigMode mode;

  @internal
  Map<String, Object?> encode() => {'mode': mode.toTfJson()};
}

/// `mode` — derived from the provider schema description.
extension type const ContainerNodePoolWorkloadMetadataConfigMode._(
  TfArg<String> _
) implements TfArg<String> {
  ContainerNodePoolWorkloadMetadataConfigMode.variable(String name)
    : this._(TfArg.variable(name));
  ContainerNodePoolWorkloadMetadataConfigMode.expression(String template)
    : this._(TfArg.expression(template));
  const ContainerNodePoolWorkloadMetadataConfigMode.arg(TfArg<String> arg)
    : this._(arg);

  static const gceMetadata = ContainerNodePoolWorkloadMetadataConfigMode._(
    TfArgLiteral('GCE_METADATA'),
  );
  static const gkeMetadata = ContainerNodePoolWorkloadMetadataConfigMode._(
    TfArgLiteral('GKE_METADATA'),
  );

  static const List<ContainerNodePoolWorkloadMetadataConfigMode> values = [
    gceMetadata,
    gkeMetadata,
  ];
}

/// Typed helper for the `node_drain_config` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolNodeDrainConfig {
  const ContainerNodePoolNodeDrainConfig({
    this.graceTerminationDuration,
    this.pdbTimeoutDuration,
    this.respectPdbDuringNodePoolDeletion,
  });

  final TfArg<String>? graceTerminationDuration;

  final TfArg<String>? pdbTimeoutDuration;

  final TfArg<bool>? respectPdbDuringNodePoolDeletion;

  @internal
  Map<String, Object?> encode() => {
    'grace_termination_duration': ?graceTerminationDuration?.toTfJson(),
    'pdb_timeout_duration': ?pdbTimeoutDuration?.toTfJson(),
    'respect_pdb_during_node_pool_deletion': ?respectPdbDuringNodePoolDeletion
        ?.toTfJson(),
  };
}

/// Typed helper for the `placement_policy` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolPlacementPolicy {
  const ContainerNodePoolPlacementPolicy({
    this.policyName,
    this.tpuTopology,
    required this.type,
  });

  final TfArg<String>? policyName;

  final TfArg<String>? tpuTopology;

  final ContainerNodePoolType type;

  @internal
  Map<String, Object?> encode() => {
    'policy_name': ?policyName?.toTfJson(),
    'tpu_topology': ?tpuTopology?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const ContainerNodePoolType._(TfArg<String> _)
    implements TfArg<String> {
  ContainerNodePoolType.variable(String name) : this._(TfArg.variable(name));
  ContainerNodePoolType.expression(String template)
    : this._(TfArg.expression(template));
  const ContainerNodePoolType.arg(TfArg<String> arg) : this._(arg);

  static const compact = ContainerNodePoolType._(TfArgLiteral('COMPACT'));

  static const List<ContainerNodePoolType> values = [compact];
}

/// Typed helper for the `queued_provisioning` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolQueuedProvisioning {
  const ContainerNodePoolQueuedProvisioning({required this.enabled});

  final TfArg<bool> enabled;

  @internal
  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `upgrade_settings` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolUpgradeSettings {
  const ContainerNodePoolUpgradeSettings({
    this.maxSurge,
    this.maxUnavailable,
    this.strategy,
    this.blueGreenSettings,
  });

  final TfArg<num>? maxSurge;

  final TfArg<num>? maxUnavailable;

  final ContainerNodePoolStrategy? strategy;

  final ContainerNodePoolBlueGreenSettings? blueGreenSettings;

  @internal
  Map<String, Object?> encode() => {
    'max_surge': ?maxSurge?.toTfJson(),
    'max_unavailable': ?maxUnavailable?.toTfJson(),
    'strategy': ?strategy?.toTfJson(),
    'blue_green_settings': ?blueGreenSettings?.encode(),
  };
}

/// `strategy` — derived from the provider schema description.
extension type const ContainerNodePoolStrategy._(TfArg<String> _)
    implements TfArg<String> {
  ContainerNodePoolStrategy.variable(String name)
    : this._(TfArg.variable(name));
  ContainerNodePoolStrategy.expression(String template)
    : this._(TfArg.expression(template));
  const ContainerNodePoolStrategy.arg(TfArg<String> arg) : this._(arg);

  static const blueGreen = ContainerNodePoolStrategy._(
    TfArgLiteral('BLUE_GREEN'),
  );
  static const surge = ContainerNodePoolStrategy._(TfArgLiteral('SURGE'));
  static const shortLived = ContainerNodePoolStrategy._(
    TfArgLiteral('SHORT_LIVED'),
  );

  static const List<ContainerNodePoolStrategy> values = [
    blueGreen,
    surge,
    shortLived,
  ];
}

/// Typed helper for the `upgrade_settings.blue_green_settings` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolBlueGreenSettings {
  const ContainerNodePoolBlueGreenSettings({
    this.nodePoolSoakDuration,
    required this.standardRolloutPolicy,
  });

  final TfArg<String>? nodePoolSoakDuration;

  final ContainerNodePoolStandardRolloutPolicy standardRolloutPolicy;

  @internal
  Map<String, Object?> encode() => {
    'node_pool_soak_duration': ?nodePoolSoakDuration?.toTfJson(),
    'standard_rollout_policy': standardRolloutPolicy.encode(),
  };
}

/// Typed helper for the `upgrade_settings.blue_green_settings.standard_rollout_policy` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolStandardRolloutPolicy {
  const ContainerNodePoolStandardRolloutPolicy({
    this.batchNodeCount,
    this.batchPercentage,
    this.batchSoakDuration,
  });

  final TfArg<num>? batchNodeCount;

  final TfArg<num>? batchPercentage;

  final TfArg<String>? batchSoakDuration;

  @internal
  Map<String, Object?> encode() => {
    'batch_node_count': ?batchNodeCount?.toTfJson(),
    'batch_percentage': ?batchPercentage?.toTfJson(),
    'batch_soak_duration': ?batchSoakDuration?.toTfJson(),
  };
}

/// Factory wrapper for `google_container_node_pool`.
///
/// NodePool
///
/// Example (node pool on an existing cluster):
/// ```dart
/// final pool = GoogleContainerNodePool(
///   'primary',
///   name: TfArg.literal('primary-pool'),
///   location: TfArg.literal('asia-northeast1'),
///   cluster: cluster.ref,
///   nodeCount: TfArg.literal(3),
/// );
/// ```
final class GoogleContainerNodePool extends Resource {
  static const String tfType = 'google_container_node_pool';

  GoogleContainerNodePool(
    super.localName, {
    required RefTo<GoogleContainerCluster> cluster,
    TfArg<String>? deletionPolicy,
    TfArg<bool>? ignoreNodeCountChanges,
    TfArg<num>? initialNodeCount,
    TfArg<String>? location,
    TfArg<num>? maxPodsPerNode,
    TfArg<String>? name,
    TfArg<String>? namePrefix,
    TfArg<num>? nodeCount,
    TfArg<List<String>>? nodeLocations,
    TfArg<String>? project,
    TfArg<String>? version,
    ContainerNodePoolAutoscaling? autoscaling,
    ContainerNodePoolBestEffortProvisioning? bestEffortProvisioning,
    List<ContainerNodePoolMaintenancePolicy>? maintenancePolicy,
    ContainerNodePoolManagement? management,
    ContainerNodePoolNetworkConfig? networkConfig,
    ContainerNodePoolNodeConfig? nodeConfig,
    List<ContainerNodePoolNodeDrainConfig>? nodeDrainConfig,
    ContainerNodePoolPlacementPolicy? placementPolicy,
    ContainerNodePoolQueuedProvisioning? queuedProvisioning,
    ContainerNodePoolUpgradeSettings? upgradeSettings,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster': cluster.encodeAs('name'),
           'deletion_policy': ?deletionPolicy,
           'ignore_node_count_changes': ?ignoreNodeCountChanges,
           'initial_node_count': ?initialNodeCount,
           'location': ?location,
           'max_pods_per_node': ?maxPodsPerNode,
           'name': ?name,
           'name_prefix': ?namePrefix,
           'node_count': ?nodeCount,
           'node_locations': ?nodeLocations,
           'project': ?project,
           'version': ?version,
           if (autoscaling != null)
             'autoscaling': TfArg.literal(autoscaling.encode()),
           if (bestEffortProvisioning != null)
             'best_effort_provisioning': TfArg.literal(
               bestEffortProvisioning.encode(),
             ),
           if (maintenancePolicy != null)
             'maintenance_policy': TfArg.literal([
               for (final e in maintenancePolicy) e.encode(),
             ]),
           if (management != null)
             'management': TfArg.literal(management.encode()),
           if (networkConfig != null)
             'network_config': TfArg.literal(networkConfig.encode()),
           if (nodeConfig != null)
             'node_config': TfArg.literal(nodeConfig.encode()),
           if (nodeDrainConfig != null)
             'node_drain_config': TfArg.literal([
               for (final e in nodeDrainConfig) e.encode(),
             ]),
           if (placementPolicy != null)
             'placement_policy': TfArg.literal(placementPolicy.encode()),
           if (queuedProvisioning != null)
             'queued_provisioning': TfArg.literal(queuedProvisioning.encode()),
           if (upgradeSettings != null)
             'upgrade_settings': TfArg.literal(upgradeSettings.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleContainerNodePoolSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleContainerNodePool>`.
  RefTo<GoogleContainerNodePool> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `instance_group_urls` attribute.
  TfRef<List<String>> get instanceGroupUrls =>
      TfRef.attribute<List<String>>(this, 'instance_group_urls');

  /// Reference to `managed_instance_group_urls` attribute.
  TfRef<List<String>> get managedInstanceGroupUrls =>
      TfRef.attribute<List<String>>(this, 'managed_instance_group_urls');

  /// Reference to `operation` attribute.
  TfRef<String> get operation => TfRef.attribute<String>(this, 'operation');

  /// Reference to `cluster` attribute.
  TfRef<String> get cluster => TfRef.attribute<String>(this, 'cluster');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `ignore_node_count_changes` attribute.
  TfRef<bool> get ignoreNodeCountChanges =>
      TfRef.attribute<bool>(this, 'ignore_node_count_changes');

  /// Reference to `initial_node_count` attribute.
  TfRef<num> get initialNodeCount =>
      TfRef.attribute<num>(this, 'initial_node_count');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `max_pods_per_node` attribute.
  TfRef<num> get maxPodsPerNode =>
      TfRef.attribute<num>(this, 'max_pods_per_node');

  /// Reference to `name_prefix` attribute.
  TfRef<String> get namePrefix => TfRef.attribute<String>(this, 'name_prefix');

  /// Reference to `node_count` attribute.
  TfRef<num> get nodeCount => TfRef.attribute<num>(this, 'node_count');

  /// Reference to `node_locations` attribute.
  TfRef<List<String>> get nodeLocations =>
      TfRef.attribute<List<String>>(this, 'node_locations');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
