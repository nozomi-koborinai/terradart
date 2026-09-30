// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;
import '../compute/google_compute_subnetwork.dart' show GoogleComputeSubnetwork;
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

  final TfArg<String>? locationPolicy;

  final TfArg<num>? maxNodeCount;

  final TfArg<num>? minNodeCount;

  final TfArg<num>? totalMaxNodeCount;

  final TfArg<num>? totalMinNodeCount;

  Map<String, Object?> encode() => {
    'location_policy': ?locationPolicy?.toTfJson(),
    'max_node_count': ?maxNodeCount?.toTfJson(),
    'min_node_count': ?minNodeCount?.toTfJson(),
    'total_max_node_count': ?totalMaxNodeCount?.toTfJson(),
    'total_min_node_count': ?totalMinNodeCount?.toTfJson(),
  };
}

/// Typed helper for the `maintenance_policy` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolMaintenancePolicy {
  const ContainerNodePoolMaintenancePolicy({this.exclusionUntilEndOfSupport});

  final List<ContainerNodePoolMaintenancePolicyExclusionUntilEndOfSupport>?
  exclusionUntilEndOfSupport;

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
final class ContainerNodePoolMaintenancePolicyExclusionUntilEndOfSupport {
  const ContainerNodePoolMaintenancePolicyExclusionUntilEndOfSupport({
    this.enabled,
  });

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {'enabled': ?enabled?.toTfJson()};
}

/// Typed helper for the `management` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolManagement {
  const ContainerNodePoolManagement({this.autoRepair, this.autoUpgrade});

  final TfArg<bool>? autoRepair;

  final TfArg<bool>? autoUpgrade;

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

  final List<ContainerNodePoolNetworkConfigAdditionalNodeNetworkConfigs>?
  additionalNodeNetworkConfigs;

  final List<ContainerNodePoolNetworkConfigAdditionalPodNetworkConfigs>?
  additionalPodNetworkConfigs;

  final ContainerNodePoolNetworkConfigNetworkPerformanceConfig?
  networkPerformanceConfig;

  final ContainerNodePoolNetworkConfigPodCidrOverprovisionConfig?
  podCidrOverprovisionConfig;

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
final class ContainerNodePoolNetworkConfigAdditionalNodeNetworkConfigs {
  const ContainerNodePoolNetworkConfigAdditionalNodeNetworkConfigs({
    this.network,
    this.subnetwork,
  });

  final RefTo<GoogleComputeNetwork>? network;

  final RefTo<GoogleComputeSubnetwork>? subnetwork;

  Map<String, Object?> encode() => {
    'network': ?network?.encodeAs('name').toTfJson(),
    'subnetwork': ?subnetwork?.encodeAs('name').toTfJson(),
  };
}

/// Typed helper for the `network_config.additional_pod_network_configs` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolNetworkConfigAdditionalPodNetworkConfigs {
  const ContainerNodePoolNetworkConfigAdditionalPodNetworkConfigs({
    this.maxPodsPerNode,
    this.secondaryPodRange,
    this.subnetwork,
  });

  final TfArg<num>? maxPodsPerNode;

  final TfArg<String>? secondaryPodRange;

  final RefTo<GoogleComputeSubnetwork>? subnetwork;

  Map<String, Object?> encode() => {
    'max_pods_per_node': ?maxPodsPerNode?.toTfJson(),
    'secondary_pod_range': ?secondaryPodRange?.toTfJson(),
    'subnetwork': ?subnetwork?.encodeAs('name').toTfJson(),
  };
}

/// Typed helper for the `network_config.network_performance_config` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolNetworkConfigNetworkPerformanceConfig {
  const ContainerNodePoolNetworkConfigNetworkPerformanceConfig({
    required this.totalEgressBandwidthTier,
  });

  final TfArg<String> totalEgressBandwidthTier;

  Map<String, Object?> encode() => {
    'total_egress_bandwidth_tier': totalEgressBandwidthTier.toTfJson(),
  };
}

/// Typed helper for the `network_config.pod_cidr_overprovision_config` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolNetworkConfigPodCidrOverprovisionConfig {
  const ContainerNodePoolNetworkConfigPodCidrOverprovisionConfig({
    required this.disabled,
  });

  final TfArg<bool> disabled;

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

  final TfArg<String>? gpudirectStrategy;

  final TfArg<String>? imageType;

  final TfArg<Map<String, String>>? labels;

  final TfArg<num>? localSsdCount;

  final TfArg<String>? localSsdEncryptionMode;

  final TfArg<String>? loggingVariant;

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

  final ContainerNodePoolNodeConfigAdvancedMachineFeatures?
  advancedMachineFeatures;

  final ContainerNodePoolNodeConfigBootDisk? bootDisk;

  final ContainerNodePoolNodeConfigConfidentialNodes? confidentialNodes;

  final ContainerNodePoolNodeConfigContainerdConfig? containerdConfig;

  final ContainerNodePoolNodeConfigEphemeralStorageLocalSsdConfig?
  ephemeralStorageLocalSsdConfig;

  final ContainerNodePoolNodeConfigFastSocket? fastSocket;

  final ContainerNodePoolNodeConfigGcfsConfig? gcfsConfig;

  final List<ContainerNodePoolNodeConfigGuestAccelerator>? guestAccelerator;

  final ContainerNodePoolNodeConfigGvnic? gvnic;

  final ContainerNodePoolNodeConfigKubeletConfig? kubeletConfig;

  final ContainerNodePoolNodeConfigLinuxNodeConfig? linuxNodeConfig;

  final ContainerNodePoolNodeConfigLocalNvmeSsdBlockConfig?
  localNvmeSsdBlockConfig;

  final List<ContainerNodePoolNodeConfigNodeImageConfig>? nodeImageConfig;

  final ContainerNodePoolNodeConfigReservationAffinity? reservationAffinity;

  final ContainerNodePoolNodeConfigSandboxConfig? sandboxConfig;

  final List<ContainerNodePoolNodeConfigSecondaryBootDisks>? secondaryBootDisks;

  final ContainerNodePoolNodeConfigShieldedInstanceConfig?
  shieldedInstanceConfig;

  final ContainerNodePoolNodeConfigSoleTenantConfig? soleTenantConfig;

  final List<ContainerNodePoolNodeConfigTaint>? taint;

  final ContainerNodePoolNodeConfigTaintConfig? taintConfig;

  final ContainerNodePoolNodeConfigWindowsNodeConfig? windowsNodeConfig;

  final ContainerNodePoolNodeConfigWorkloadMetadataConfig?
  workloadMetadataConfig;

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

/// Typed helper for the `node_config.advanced_machine_features` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolNodeConfigAdvancedMachineFeatures {
  const ContainerNodePoolNodeConfigAdvancedMachineFeatures({
    this.enableNestedVirtualization,
    this.performanceMonitoringUnit,
    required this.threadsPerCore,
  });

  final TfArg<bool>? enableNestedVirtualization;

  final TfArg<String>? performanceMonitoringUnit;

  final TfArg<num> threadsPerCore;

  Map<String, Object?> encode() => {
    'enable_nested_virtualization': ?enableNestedVirtualization?.toTfJson(),
    'performance_monitoring_unit': ?performanceMonitoringUnit?.toTfJson(),
    'threads_per_core': threadsPerCore.toTfJson(),
  };
}

/// Typed helper for the `node_config.boot_disk` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolNodeConfigBootDisk {
  const ContainerNodePoolNodeConfigBootDisk({
    this.diskType,
    this.provisionedIops,
    this.provisionedThroughput,
    this.sizeGb,
  });

  final TfArg<String>? diskType;

  final TfArg<num>? provisionedIops;

  final TfArg<num>? provisionedThroughput;

  final TfArg<num>? sizeGb;

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
final class ContainerNodePoolNodeConfigConfidentialNodes {
  const ContainerNodePoolNodeConfigConfidentialNodes({
    this.confidentialInstanceType,
    required this.enabled,
  });

  final TfArg<String>? confidentialInstanceType;

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {
    'confidential_instance_type': ?confidentialInstanceType?.toTfJson(),
    'enabled': enabled.toTfJson(),
  };
}

/// Typed helper for the `node_config.containerd_config` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolNodeConfigContainerdConfig {
  const ContainerNodePoolNodeConfigContainerdConfig({
    this.privateRegistryAccessConfig,
    this.registryHosts,
    this.writableCgroups,
  });

  final ContainerNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfig?
  privateRegistryAccessConfig;

  final List<ContainerNodePoolNodeConfigContainerdConfigRegistryHosts>?
  registryHosts;

  final ContainerNodePoolNodeConfigContainerdConfigWritableCgroups?
  writableCgroups;

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
final class ContainerNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfig {
  const ContainerNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfig({
    required this.enabled,
    this.certificateAuthorityDomainConfig,
  });

  final TfArg<bool> enabled;

  final List<
    ContainerNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig
  >?
  certificateAuthorityDomainConfig;

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
final class ContainerNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig {
  const ContainerNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig({
    required this.fqdns,
    required this.gcpSecretManagerCertificateConfig,
  });

  final TfArg<List<String>> fqdns;

  final ContainerNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfigGcpSecretManagerCertificateConfig
  gcpSecretManagerCertificateConfig;

  Map<String, Object?> encode() => {
    'fqdns': fqdns.toTfJson(),
    'gcp_secret_manager_certificate_config': gcpSecretManagerCertificateConfig
        .encode(),
  };
}

/// Typed helper for the `node_config.containerd_config.private_registry_access_config.certificate_authority_domain_config.gcp_secret_manager_certificate_config` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfigGcpSecretManagerCertificateConfig {
  const ContainerNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfigGcpSecretManagerCertificateConfig({
    required this.secretUri,
  });

  final TfArg<String> secretUri;

  Map<String, Object?> encode() => {'secret_uri': secretUri.toTfJson()};
}

/// Typed helper for the `node_config.containerd_config.registry_hosts` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolNodeConfigContainerdConfigRegistryHosts {
  const ContainerNodePoolNodeConfigContainerdConfigRegistryHosts({
    required this.server,
    this.hosts,
  });

  final TfArg<String> server;

  final List<ContainerNodePoolNodeConfigContainerdConfigRegistryHostsHosts>?
  hosts;

  Map<String, Object?> encode() => {
    'server': server.toTfJson(),
    if (hosts != null) 'hosts': [for (final e in hosts!) e.encode()],
  };
}

/// Typed helper for the `node_config.containerd_config.registry_hosts.hosts` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolNodeConfigContainerdConfigRegistryHostsHosts {
  const ContainerNodePoolNodeConfigContainerdConfigRegistryHostsHosts({
    this.capabilities,
    this.dialTimeout,
    required this.host,
    this.overridePath,
    this.ca,
    this.client,
    this.header,
  });

  final TfArg<List<String>>? capabilities;

  final TfArg<String>? dialTimeout;

  final TfArg<String> host;

  final TfArg<bool>? overridePath;

  final List<ContainerNodePoolNodeConfigContainerdConfigRegistryHostsHostsCa>?
  ca;

  final List<
    ContainerNodePoolNodeConfigContainerdConfigRegistryHostsHostsClient
  >?
  client;

  final List<
    ContainerNodePoolNodeConfigContainerdConfigRegistryHostsHostsHeader
  >?
  header;

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

/// Typed helper for the `node_config.containerd_config.registry_hosts.hosts.ca` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolNodeConfigContainerdConfigRegistryHostsHostsCa {
  const ContainerNodePoolNodeConfigContainerdConfigRegistryHostsHostsCa({
    this.gcpSecretManagerSecretUri,
  });

  final TfArg<String>? gcpSecretManagerSecretUri;

  Map<String, Object?> encode() => {
    'gcp_secret_manager_secret_uri': ?gcpSecretManagerSecretUri?.toTfJson(),
  };
}

/// Typed helper for the `node_config.containerd_config.registry_hosts.hosts.client` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolNodeConfigContainerdConfigRegistryHostsHostsClient {
  const ContainerNodePoolNodeConfigContainerdConfigRegistryHostsHostsClient({
    required this.cert,
    this.key,
  });

  final ContainerNodePoolNodeConfigContainerdConfigRegistryHostsHostsClientCert
  cert;

  final ContainerNodePoolNodeConfigContainerdConfigRegistryHostsHostsClientKey?
  key;

  Map<String, Object?> encode() => {
    'cert': cert.encode(),
    'key': ?key?.encode(),
  };
}

/// Typed helper for the `node_config.containerd_config.registry_hosts.hosts.client.cert` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolNodeConfigContainerdConfigRegistryHostsHostsClientCert {
  const ContainerNodePoolNodeConfigContainerdConfigRegistryHostsHostsClientCert({
    this.gcpSecretManagerSecretUri,
  });

  final TfArg<String>? gcpSecretManagerSecretUri;

  Map<String, Object?> encode() => {
    'gcp_secret_manager_secret_uri': ?gcpSecretManagerSecretUri?.toTfJson(),
  };
}

/// Typed helper for the `node_config.containerd_config.registry_hosts.hosts.client.key` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolNodeConfigContainerdConfigRegistryHostsHostsClientKey {
  const ContainerNodePoolNodeConfigContainerdConfigRegistryHostsHostsClientKey({
    this.gcpSecretManagerSecretUri,
  });

  final TfArg<String>? gcpSecretManagerSecretUri;

  Map<String, Object?> encode() => {
    'gcp_secret_manager_secret_uri': ?gcpSecretManagerSecretUri?.toTfJson(),
  };
}

/// Typed helper for the `node_config.containerd_config.registry_hosts.hosts.header` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolNodeConfigContainerdConfigRegistryHostsHostsHeader {
  const ContainerNodePoolNodeConfigContainerdConfigRegistryHostsHostsHeader({
    required this.key,
    required this.value,
  });

  final TfArg<String> key;

  final TfArg<List<String>> value;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `node_config.containerd_config.writable_cgroups` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolNodeConfigContainerdConfigWritableCgroups {
  const ContainerNodePoolNodeConfigContainerdConfigWritableCgroups({
    required this.enabled,
  });

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `node_config.ephemeral_storage_local_ssd_config` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolNodeConfigEphemeralStorageLocalSsdConfig {
  const ContainerNodePoolNodeConfigEphemeralStorageLocalSsdConfig({
    this.dataCacheCount,
    required this.localSsdCount,
  });

  final TfArg<num>? dataCacheCount;

  final TfArg<num> localSsdCount;

  Map<String, Object?> encode() => {
    'data_cache_count': ?dataCacheCount?.toTfJson(),
    'local_ssd_count': localSsdCount.toTfJson(),
  };
}

/// Typed helper for the `node_config.fast_socket` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolNodeConfigFastSocket {
  const ContainerNodePoolNodeConfigFastSocket({required this.enabled});

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `node_config.gcfs_config` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolNodeConfigGcfsConfig {
  const ContainerNodePoolNodeConfigGcfsConfig({required this.enabled});

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `node_config.guest_accelerator` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolNodeConfigGuestAccelerator {
  const ContainerNodePoolNodeConfigGuestAccelerator({
    required this.count,
    this.gpuPartitionSize,
    required this.type,
    this.gpuDriverInstallationConfig,
    this.gpuSharingConfig,
  });

  final TfArg<num> count;

  final TfArg<String>? gpuPartitionSize;

  final TfArg<String> type;

  final ContainerNodePoolNodeConfigGuestAcceleratorGpuDriverInstallationConfig?
  gpuDriverInstallationConfig;

  final ContainerNodePoolNodeConfigGuestAcceleratorGpuSharingConfig?
  gpuSharingConfig;

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
final class ContainerNodePoolNodeConfigGuestAcceleratorGpuDriverInstallationConfig {
  const ContainerNodePoolNodeConfigGuestAcceleratorGpuDriverInstallationConfig({
    required this.gpuDriverVersion,
  });

  final TfArg<String> gpuDriverVersion;

  Map<String, Object?> encode() => {
    'gpu_driver_version': gpuDriverVersion.toTfJson(),
  };
}

/// Typed helper for the `node_config.guest_accelerator.gpu_sharing_config` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolNodeConfigGuestAcceleratorGpuSharingConfig {
  const ContainerNodePoolNodeConfigGuestAcceleratorGpuSharingConfig({
    required this.gpuSharingStrategy,
    required this.maxSharedClientsPerGpu,
  });

  final TfArg<String> gpuSharingStrategy;

  final TfArg<num> maxSharedClientsPerGpu;

  Map<String, Object?> encode() => {
    'gpu_sharing_strategy': gpuSharingStrategy.toTfJson(),
    'max_shared_clients_per_gpu': maxSharedClientsPerGpu.toTfJson(),
  };
}

/// Typed helper for the `node_config.gvnic` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolNodeConfigGvnic {
  const ContainerNodePoolNodeConfigGvnic({required this.enabled});

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `node_config.kubelet_config` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolNodeConfigKubeletConfig {
  const ContainerNodePoolNodeConfigKubeletConfig({
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

  final TfArg<String>? insecureKubeletReadonlyPortEnabled;

  final TfArg<num>? maxParallelImagePulls;

  final TfArg<num>? podPidsLimit;

  final TfArg<num>? shutdownGracePeriodCriticalPodsSeconds;

  final TfArg<num>? shutdownGracePeriodSeconds;

  final TfArg<bool>? singleProcessOomKill;

  final ContainerNodePoolNodeConfigKubeletConfigCrashLoopBackOff?
  crashLoopBackOff;

  final ContainerNodePoolNodeConfigKubeletConfigEvictionMinimumReclaim?
  evictionMinimumReclaim;

  final ContainerNodePoolNodeConfigKubeletConfigEvictionSoft? evictionSoft;

  final ContainerNodePoolNodeConfigKubeletConfigEvictionSoftGracePeriod?
  evictionSoftGracePeriod;

  final ContainerNodePoolNodeConfigKubeletConfigMemoryManager? memoryManager;

  final ContainerNodePoolNodeConfigKubeletConfigTopologyManager?
  topologyManager;

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

/// Typed helper for the `node_config.kubelet_config.crash_loop_back_off` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolNodeConfigKubeletConfigCrashLoopBackOff {
  const ContainerNodePoolNodeConfigKubeletConfigCrashLoopBackOff({
    this.maxContainerRestartPeriod,
  });

  final TfArg<String>? maxContainerRestartPeriod;

  Map<String, Object?> encode() => {
    'max_container_restart_period': ?maxContainerRestartPeriod?.toTfJson(),
  };
}

/// Typed helper for the `node_config.kubelet_config.eviction_minimum_reclaim` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolNodeConfigKubeletConfigEvictionMinimumReclaim {
  const ContainerNodePoolNodeConfigKubeletConfigEvictionMinimumReclaim({
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
final class ContainerNodePoolNodeConfigKubeletConfigEvictionSoft {
  const ContainerNodePoolNodeConfigKubeletConfigEvictionSoft({
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
final class ContainerNodePoolNodeConfigKubeletConfigEvictionSoftGracePeriod {
  const ContainerNodePoolNodeConfigKubeletConfigEvictionSoftGracePeriod({
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
final class ContainerNodePoolNodeConfigKubeletConfigMemoryManager {
  const ContainerNodePoolNodeConfigKubeletConfigMemoryManager({this.policy});

  final TfArg<String>? policy;

  Map<String, Object?> encode() => {'policy': ?policy?.toTfJson()};
}

/// Typed helper for the `node_config.kubelet_config.topology_manager` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolNodeConfigKubeletConfigTopologyManager {
  const ContainerNodePoolNodeConfigKubeletConfigTopologyManager({
    this.policy,
    this.scope,
  });

  final TfArg<String>? policy;

  final TfArg<String>? scope;

  Map<String, Object?> encode() => {
    'policy': ?policy?.toTfJson(),
    'scope': ?scope?.toTfJson(),
  };
}

/// Typed helper for the `node_config.linux_node_config` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolNodeConfigLinuxNodeConfig {
  const ContainerNodePoolNodeConfigLinuxNodeConfig({
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

  final TfArg<String>? cgroupMode;

  final TfArg<Map<String, String>>? sysctls;

  final TfArg<String>? transparentHugepageDefrag;

  final TfArg<String>? transparentHugepageEnabled;

  final ContainerNodePoolNodeConfigLinuxNodeConfigAccurateTimeConfig?
  accurateTimeConfig;

  final ContainerNodePoolNodeConfigLinuxNodeConfigCustomNodeInit?
  customNodeInit;

  final ContainerNodePoolNodeConfigLinuxNodeConfigHugepagesConfig?
  hugepagesConfig;

  final ContainerNodePoolNodeConfigLinuxNodeConfigNodeKernelModuleLoading?
  nodeKernelModuleLoading;

  final ContainerNodePoolNodeConfigLinuxNodeConfigSwapConfig? swapConfig;

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

/// Typed helper for the `node_config.linux_node_config.accurate_time_config` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolNodeConfigLinuxNodeConfigAccurateTimeConfig {
  const ContainerNodePoolNodeConfigLinuxNodeConfigAccurateTimeConfig({
    this.enablePtpKvmTimeSync,
  });

  final TfArg<bool>? enablePtpKvmTimeSync;

  Map<String, Object?> encode() => {
    'enable_ptp_kvm_time_sync': ?enablePtpKvmTimeSync?.toTfJson(),
  };
}

/// Typed helper for the `node_config.linux_node_config.custom_node_init` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolNodeConfigLinuxNodeConfigCustomNodeInit {
  const ContainerNodePoolNodeConfigLinuxNodeConfigCustomNodeInit({
    this.initScript,
  });

  final ContainerNodePoolNodeConfigLinuxNodeConfigCustomNodeInitInitScript?
  initScript;

  Map<String, Object?> encode() => {'init_script': ?initScript?.encode()};
}

/// Typed helper for the `node_config.linux_node_config.custom_node_init.init_script` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolNodeConfigLinuxNodeConfigCustomNodeInitInitScript {
  const ContainerNodePoolNodeConfigLinuxNodeConfigCustomNodeInitInitScript({
    this.gcpSecretManagerSecretUri,
    this.gcsGeneration,
    this.gcsUri,
  });

  final TfArg<String>? gcpSecretManagerSecretUri;

  final TfArg<num>? gcsGeneration;

  final TfArg<String>? gcsUri;

  Map<String, Object?> encode() => {
    'gcp_secret_manager_secret_uri': ?gcpSecretManagerSecretUri?.toTfJson(),
    'gcs_generation': ?gcsGeneration?.toTfJson(),
    'gcs_uri': ?gcsUri?.toTfJson(),
  };
}

/// Typed helper for the `node_config.linux_node_config.hugepages_config` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolNodeConfigLinuxNodeConfigHugepagesConfig {
  const ContainerNodePoolNodeConfigLinuxNodeConfigHugepagesConfig({
    this.hugepageSize1g,
    this.hugepageSize2m,
  });

  final TfArg<num>? hugepageSize1g;

  final TfArg<num>? hugepageSize2m;

  Map<String, Object?> encode() => {
    'hugepage_size_1g': ?hugepageSize1g?.toTfJson(),
    'hugepage_size_2m': ?hugepageSize2m?.toTfJson(),
  };
}

/// Typed helper for the `node_config.linux_node_config.node_kernel_module_loading` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolNodeConfigLinuxNodeConfigNodeKernelModuleLoading {
  const ContainerNodePoolNodeConfigLinuxNodeConfigNodeKernelModuleLoading({
    this.policy,
  });

  final TfArg<String>? policy;

  Map<String, Object?> encode() => {'policy': ?policy?.toTfJson()};
}

/// Typed helper for the `node_config.linux_node_config.swap_config` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolNodeConfigLinuxNodeConfigSwapConfig {
  const ContainerNodePoolNodeConfigLinuxNodeConfigSwapConfig({
    this.enabled,
    this.bootDiskProfile,
    this.dedicatedLocalSsdProfile,
    this.encryptionConfig,
    this.ephemeralLocalSsdProfile,
  });

  final TfArg<bool>? enabled;

  final ContainerNodePoolNodeConfigLinuxNodeConfigSwapConfigBootDiskProfile?
  bootDiskProfile;

  final ContainerNodePoolNodeConfigLinuxNodeConfigSwapConfigDedicatedLocalSsdProfile?
  dedicatedLocalSsdProfile;

  final ContainerNodePoolNodeConfigLinuxNodeConfigSwapConfigEncryptionConfig?
  encryptionConfig;

  final ContainerNodePoolNodeConfigLinuxNodeConfigSwapConfigEphemeralLocalSsdProfile?
  ephemeralLocalSsdProfile;

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
final class ContainerNodePoolNodeConfigLinuxNodeConfigSwapConfigBootDiskProfile {
  const ContainerNodePoolNodeConfigLinuxNodeConfigSwapConfigBootDiskProfile({
    this.swapSizeGib,
    this.swapSizePercent,
  });

  final TfArg<num>? swapSizeGib;

  final TfArg<num>? swapSizePercent;

  Map<String, Object?> encode() => {
    'swap_size_gib': ?swapSizeGib?.toTfJson(),
    'swap_size_percent': ?swapSizePercent?.toTfJson(),
  };
}

/// Typed helper for the `node_config.linux_node_config.swap_config.dedicated_local_ssd_profile` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolNodeConfigLinuxNodeConfigSwapConfigDedicatedLocalSsdProfile {
  const ContainerNodePoolNodeConfigLinuxNodeConfigSwapConfigDedicatedLocalSsdProfile({
    this.diskCount,
  });

  final TfArg<num>? diskCount;

  Map<String, Object?> encode() => {'disk_count': ?diskCount?.toTfJson()};
}

/// Typed helper for the `node_config.linux_node_config.swap_config.encryption_config` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolNodeConfigLinuxNodeConfigSwapConfigEncryptionConfig {
  const ContainerNodePoolNodeConfigLinuxNodeConfigSwapConfigEncryptionConfig({
    this.disabled,
  });

  final TfArg<bool>? disabled;

  Map<String, Object?> encode() => {'disabled': ?disabled?.toTfJson()};
}

/// Typed helper for the `node_config.linux_node_config.swap_config.ephemeral_local_ssd_profile` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolNodeConfigLinuxNodeConfigSwapConfigEphemeralLocalSsdProfile {
  const ContainerNodePoolNodeConfigLinuxNodeConfigSwapConfigEphemeralLocalSsdProfile({
    this.swapSizeGib,
    this.swapSizePercent,
  });

  final TfArg<num>? swapSizeGib;

  final TfArg<num>? swapSizePercent;

  Map<String, Object?> encode() => {
    'swap_size_gib': ?swapSizeGib?.toTfJson(),
    'swap_size_percent': ?swapSizePercent?.toTfJson(),
  };
}

/// Typed helper for the `node_config.local_nvme_ssd_block_config` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolNodeConfigLocalNvmeSsdBlockConfig {
  const ContainerNodePoolNodeConfigLocalNvmeSsdBlockConfig({
    required this.localSsdCount,
  });

  final TfArg<num> localSsdCount;

  Map<String, Object?> encode() => {
    'local_ssd_count': localSsdCount.toTfJson(),
  };
}

/// Typed helper for the `node_config.node_image_config` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolNodeConfigNodeImageConfig {
  const ContainerNodePoolNodeConfigNodeImageConfig({
    this.image,
    this.imageProject,
  });

  final TfArg<String>? image;

  final TfArg<String>? imageProject;

  Map<String, Object?> encode() => {
    'image': ?image?.toTfJson(),
    'image_project': ?imageProject?.toTfJson(),
  };
}

/// Typed helper for the `node_config.reservation_affinity` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolNodeConfigReservationAffinity {
  const ContainerNodePoolNodeConfigReservationAffinity({
    required this.consumeReservationType,
    this.key,
    this.values,
  });

  final TfArg<String> consumeReservationType;

  final TfArg<String>? key;

  final TfArg<List<String>>? values;

  Map<String, Object?> encode() => {
    'consume_reservation_type': consumeReservationType.toTfJson(),
    'key': ?key?.toTfJson(),
    'values': ?values?.toTfJson(),
  };
}

/// Typed helper for the `node_config.sandbox_config` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolNodeConfigSandboxConfig {
  const ContainerNodePoolNodeConfigSandboxConfig({required this.type});

  final TfArg<String> type;

  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// Typed helper for the `node_config.secondary_boot_disks` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolNodeConfigSecondaryBootDisks {
  const ContainerNodePoolNodeConfigSecondaryBootDisks({
    required this.diskImage,
    this.mode,
  });

  final TfArg<String> diskImage;

  final TfArg<String>? mode;

  Map<String, Object?> encode() => {
    'disk_image': diskImage.toTfJson(),
    'mode': ?mode?.toTfJson(),
  };
}

/// Typed helper for the `node_config.shielded_instance_config` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolNodeConfigShieldedInstanceConfig {
  const ContainerNodePoolNodeConfigShieldedInstanceConfig({
    this.enableIntegrityMonitoring,
    this.enableSecureBoot,
  });

  final TfArg<bool>? enableIntegrityMonitoring;

  final TfArg<bool>? enableSecureBoot;

  Map<String, Object?> encode() => {
    'enable_integrity_monitoring': ?enableIntegrityMonitoring?.toTfJson(),
    'enable_secure_boot': ?enableSecureBoot?.toTfJson(),
  };
}

/// Typed helper for the `node_config.sole_tenant_config` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolNodeConfigSoleTenantConfig {
  const ContainerNodePoolNodeConfigSoleTenantConfig({
    this.minNodeCpus,
    required this.nodeAffinity,
  });

  final TfArg<num>? minNodeCpus;

  final List<ContainerNodePoolNodeConfigSoleTenantConfigNodeAffinity>
  nodeAffinity;

  Map<String, Object?> encode() => {
    'min_node_cpus': ?minNodeCpus?.toTfJson(),
    'node_affinity': [for (final e in nodeAffinity) e.encode()],
  };
}

/// Typed helper for the `node_config.sole_tenant_config.node_affinity` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolNodeConfigSoleTenantConfigNodeAffinity {
  const ContainerNodePoolNodeConfigSoleTenantConfigNodeAffinity({
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

/// Typed helper for the `node_config.taint` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolNodeConfigTaint {
  const ContainerNodePoolNodeConfigTaint({
    required this.effect,
    required this.key,
    required this.value,
  });

  final TfArg<String> effect;

  final TfArg<String> key;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'effect': effect.toTfJson(),
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `node_config.taint_config` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolNodeConfigTaintConfig {
  const ContainerNodePoolNodeConfigTaintConfig({
    required this.architectureTaintBehavior,
  });

  final TfArg<String> architectureTaintBehavior;

  Map<String, Object?> encode() => {
    'architecture_taint_behavior': architectureTaintBehavior.toTfJson(),
  };
}

/// Typed helper for the `node_config.windows_node_config` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolNodeConfigWindowsNodeConfig {
  const ContainerNodePoolNodeConfigWindowsNodeConfig({this.osversion});

  final TfArg<String>? osversion;

  Map<String, Object?> encode() => {'osversion': ?osversion?.toTfJson()};
}

/// Typed helper for the `node_config.workload_metadata_config` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolNodeConfigWorkloadMetadataConfig {
  const ContainerNodePoolNodeConfigWorkloadMetadataConfig({required this.mode});

  final TfArg<String> mode;

  Map<String, Object?> encode() => {'mode': mode.toTfJson()};
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

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    'policy_name': ?policyName?.toTfJson(),
    'tpu_topology': ?tpuTopology?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `queued_provisioning` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolQueuedProvisioning {
  const ContainerNodePoolQueuedProvisioning({required this.enabled});

  final TfArg<bool> enabled;

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

  final TfArg<String>? strategy;

  final ContainerNodePoolUpgradeSettingsBlueGreenSettings? blueGreenSettings;

  Map<String, Object?> encode() => {
    'max_surge': ?maxSurge?.toTfJson(),
    'max_unavailable': ?maxUnavailable?.toTfJson(),
    'strategy': ?strategy?.toTfJson(),
    'blue_green_settings': ?blueGreenSettings?.encode(),
  };
}

/// Typed helper for the `upgrade_settings.blue_green_settings` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolUpgradeSettingsBlueGreenSettings {
  const ContainerNodePoolUpgradeSettingsBlueGreenSettings({
    this.nodePoolSoakDuration,
    required this.standardRolloutPolicy,
  });

  final TfArg<String>? nodePoolSoakDuration;

  final ContainerNodePoolUpgradeSettingsBlueGreenSettingsStandardRolloutPolicy
  standardRolloutPolicy;

  Map<String, Object?> encode() => {
    'node_pool_soak_duration': ?nodePoolSoakDuration?.toTfJson(),
    'standard_rollout_policy': standardRolloutPolicy.encode(),
  };
}

/// Typed helper for the `upgrade_settings.blue_green_settings.standard_rollout_policy` block of
/// `google_container_node_pool` (derived from provider schema).
@immutable
final class ContainerNodePoolUpgradeSettingsBlueGreenSettingsStandardRolloutPolicy {
  const ContainerNodePoolUpgradeSettingsBlueGreenSettingsStandardRolloutPolicy({
    this.batchNodeCount,
    this.batchPercentage,
    this.batchSoakDuration,
  });

  final TfArg<num>? batchNodeCount;

  final TfArg<num>? batchPercentage;

  final TfArg<String>? batchSoakDuration;

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
///   localName: 'primary',
///   name: TfArg.literal('primary-pool'),
///   location: TfArg.literal('asia-northeast1'),
///   cluster: TfArg.ref(cluster.nameRef),
///   nodeCount: TfArg.literal(3),
/// );
/// ```
final class GoogleContainerNodePool extends Resource {
  static const String tfType = 'google_container_node_pool';

  GoogleContainerNodePool({
    required super.localName,
    required TfArg<String> cluster,
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
           'cluster': cluster,
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
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
  TfRef<String> get clusterRef => TfRef.attribute<String>(this, 'cluster');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `ignore_node_count_changes` attribute.
  TfRef<bool> get ignoreNodeCountChangesRef =>
      TfRef.attribute<bool>(this, 'ignore_node_count_changes');

  /// Reference to `initial_node_count` attribute.
  TfRef<num> get initialNodeCountRef =>
      TfRef.attribute<num>(this, 'initial_node_count');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `max_pods_per_node` attribute.
  TfRef<num> get maxPodsPerNodeRef =>
      TfRef.attribute<num>(this, 'max_pods_per_node');

  /// Reference to `name_prefix` attribute.
  TfRef<String> get namePrefixRef =>
      TfRef.attribute<String>(this, 'name_prefix');

  /// Reference to `node_count` attribute.
  TfRef<num> get nodeCountRef => TfRef.attribute<num>(this, 'node_count');

  /// Reference to `node_locations` attribute.
  TfRef<List<String>> get nodeLocationsRef =>
      TfRef.attribute<List<String>>(this, 'node_locations');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `version` attribute.
  TfRef<String> get versionRef => TfRef.attribute<String>(this, 'version');
}
