// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_kubernetes_cluster`.
const Set<String> _azurermKubernetesClusterSensitive = <String>{
  'http_proxy_config.trusted_ca',
  'kube_admin_config',
  'kube_admin_config_raw',
  'kube_config',
  'kube_config_raw',
  'service_principal.client_secret',
  'windows_profile.admin_password',
};

/// Typed helper for the `aci_connector_linux` block of
/// `azurerm_kubernetes_cluster` (derived from provider schema).
@immutable
final class KubernetesClusterAciConnectorLinux {
  const KubernetesClusterAciConnectorLinux({required this.subnetName});

  final TfArg<String> subnetName;

  @internal
  Map<String, Object?> encode() => {'subnet_name': subnetName.toTfJson()};
}

/// Typed helper for the `api_server_access_profile` block of
/// `azurerm_kubernetes_cluster` (derived from provider schema).
@immutable
final class KubernetesClusterApiServerAccessProfile {
  const KubernetesClusterApiServerAccessProfile({
    this.authorizedIpRanges,
    this.subnetId,
    this.virtualNetworkIntegrationEnabled,
  });

  final TfArg<List<String>>? authorizedIpRanges;

  final TfArg<String>? subnetId;

  final TfArg<bool>? virtualNetworkIntegrationEnabled;

  @internal
  Map<String, Object?> encode() => {
    'authorized_ip_ranges': ?authorizedIpRanges?.toTfJson(),
    'subnet_id': ?subnetId?.toTfJson(),
    'virtual_network_integration_enabled': ?virtualNetworkIntegrationEnabled
        ?.toTfJson(),
  };
}

/// Typed helper for the `auto_scaler_profile` block of
/// `azurerm_kubernetes_cluster` (derived from provider schema).
@immutable
final class KubernetesClusterAutoScalerProfile {
  const KubernetesClusterAutoScalerProfile({
    this.balanceSimilarNodeGroups,
    this.daemonsetEvictionForEmptyNodesEnabled,
    this.daemonsetEvictionForOccupiedNodesEnabled,
    this.emptyBulkDeleteMax,
    this.expander,
    this.ignoreDaemonsetsUtilizationEnabled,
    this.maxGracefulTerminationSec,
    this.maxNodeProvisioningTime,
    this.maxUnreadyNodes,
    this.maxUnreadyPercentage,
    this.newPodScaleUpDelay,
    this.scaleDownDelayAfterAdd,
    this.scaleDownDelayAfterDelete,
    this.scaleDownDelayAfterFailure,
    this.scaleDownUnneeded,
    this.scaleDownUnready,
    this.scaleDownUtilizationThreshold,
    this.scanInterval,
    this.skipNodesWithLocalStorage,
    this.skipNodesWithSystemPods,
  });

  final TfArg<bool>? balanceSimilarNodeGroups;

  final TfArg<bool>? daemonsetEvictionForEmptyNodesEnabled;

  final TfArg<bool>? daemonsetEvictionForOccupiedNodesEnabled;

  final TfArg<String>? emptyBulkDeleteMax;

  final TfArg<String>? expander;

  final TfArg<bool>? ignoreDaemonsetsUtilizationEnabled;

  final TfArg<String>? maxGracefulTerminationSec;

  final TfArg<String>? maxNodeProvisioningTime;

  final TfArg<num>? maxUnreadyNodes;

  final TfArg<num>? maxUnreadyPercentage;

  final TfArg<String>? newPodScaleUpDelay;

  final TfArg<String>? scaleDownDelayAfterAdd;

  final TfArg<String>? scaleDownDelayAfterDelete;

  final TfArg<String>? scaleDownDelayAfterFailure;

  final TfArg<String>? scaleDownUnneeded;

  final TfArg<String>? scaleDownUnready;

  final TfArg<String>? scaleDownUtilizationThreshold;

  final TfArg<String>? scanInterval;

  final TfArg<bool>? skipNodesWithLocalStorage;

  final TfArg<bool>? skipNodesWithSystemPods;

  @internal
  Map<String, Object?> encode() => {
    'balance_similar_node_groups': ?balanceSimilarNodeGroups?.toTfJson(),
    'daemonset_eviction_for_empty_nodes_enabled':
        ?daemonsetEvictionForEmptyNodesEnabled?.toTfJson(),
    'daemonset_eviction_for_occupied_nodes_enabled':
        ?daemonsetEvictionForOccupiedNodesEnabled?.toTfJson(),
    'empty_bulk_delete_max': ?emptyBulkDeleteMax?.toTfJson(),
    'expander': ?expander?.toTfJson(),
    'ignore_daemonsets_utilization_enabled': ?ignoreDaemonsetsUtilizationEnabled
        ?.toTfJson(),
    'max_graceful_termination_sec': ?maxGracefulTerminationSec?.toTfJson(),
    'max_node_provisioning_time': ?maxNodeProvisioningTime?.toTfJson(),
    'max_unready_nodes': ?maxUnreadyNodes?.toTfJson(),
    'max_unready_percentage': ?maxUnreadyPercentage?.toTfJson(),
    'new_pod_scale_up_delay': ?newPodScaleUpDelay?.toTfJson(),
    'scale_down_delay_after_add': ?scaleDownDelayAfterAdd?.toTfJson(),
    'scale_down_delay_after_delete': ?scaleDownDelayAfterDelete?.toTfJson(),
    'scale_down_delay_after_failure': ?scaleDownDelayAfterFailure?.toTfJson(),
    'scale_down_unneeded': ?scaleDownUnneeded?.toTfJson(),
    'scale_down_unready': ?scaleDownUnready?.toTfJson(),
    'scale_down_utilization_threshold': ?scaleDownUtilizationThreshold
        ?.toTfJson(),
    'scan_interval': ?scanInterval?.toTfJson(),
    'skip_nodes_with_local_storage': ?skipNodesWithLocalStorage?.toTfJson(),
    'skip_nodes_with_system_pods': ?skipNodesWithSystemPods?.toTfJson(),
  };
}

/// Typed helper for the `azure_active_directory_role_based_access_control` block of
/// `azurerm_kubernetes_cluster` (derived from provider schema).
@immutable
final class KubernetesClusterAzureActiveDirectoryRoleBasedAccessControl {
  const KubernetesClusterAzureActiveDirectoryRoleBasedAccessControl({
    this.adminGroupObjectIds,
    this.azureRbacEnabled,
    this.tenantId,
  });

  final TfArg<List<String>>? adminGroupObjectIds;

  final TfArg<bool>? azureRbacEnabled;

  final TfArg<String>? tenantId;

  @internal
  Map<String, Object?> encode() => {
    'admin_group_object_ids': ?adminGroupObjectIds?.toTfJson(),
    'azure_rbac_enabled': ?azureRbacEnabled?.toTfJson(),
    'tenant_id': ?tenantId?.toTfJson(),
  };
}

/// Typed helper for the `bootstrap_profile` block of
/// `azurerm_kubernetes_cluster` (derived from provider schema).
@immutable
final class KubernetesClusterBootstrapProfile {
  const KubernetesClusterBootstrapProfile({
    this.artifactSource,
    this.containerRegistryId,
  });

  final TfArg<String>? artifactSource;

  final TfArg<String>? containerRegistryId;

  @internal
  Map<String, Object?> encode() => {
    'artifact_source': ?artifactSource?.toTfJson(),
    'container_registry_id': ?containerRegistryId?.toTfJson(),
  };
}

/// Typed helper for the `confidential_computing` block of
/// `azurerm_kubernetes_cluster` (derived from provider schema).
@immutable
final class KubernetesClusterConfidentialComputing {
  const KubernetesClusterConfidentialComputing({
    required this.sgxQuoteHelperEnabled,
  });

  final TfArg<bool> sgxQuoteHelperEnabled;

  @internal
  Map<String, Object?> encode() => {
    'sgx_quote_helper_enabled': sgxQuoteHelperEnabled.toTfJson(),
  };
}

/// Typed helper for the `default_node_pool` block of
/// `azurerm_kubernetes_cluster` (derived from provider schema).
@immutable
final class KubernetesClusterDefaultNodePool {
  const KubernetesClusterDefaultNodePool({
    this.autoScalingEnabled,
    this.capacityReservationGroupId,
    this.fipsEnabled,
    this.gpuDriver,
    this.gpuInstance,
    this.hostEncryptionEnabled,
    this.hostGroupId,
    this.kubeletDiskType,
    this.maxCount,
    this.maxPods,
    this.minCount,
    required this.name,
    this.nodeCount,
    this.nodeLabels,
    this.nodePublicIpEnabled,
    this.nodePublicIpPrefixId,
    this.onlyCriticalAddonsEnabled,
    this.orchestratorVersion,
    this.osDiskSizeGb,
    this.osDiskType,
    this.osSku,
    this.podSubnetId,
    this.proximityPlacementGroupId,
    this.scaleDownMode,
    this.snapshotId,
    this.tags,
    this.temporaryNameForRotation,
    this.type,
    this.ultraSsdEnabled,
    this.vmSize,
    this.vnetSubnetId,
    this.workloadRuntime,
    this.zones,
    this.kubeletConfig,
    this.linuxOsConfig,
    this.nodeNetworkProfile,
    this.upgradeSettings,
  });

  final TfArg<bool>? autoScalingEnabled;

  final TfArg<String>? capacityReservationGroupId;

  final TfArg<bool>? fipsEnabled;

  final TfArg<String>? gpuDriver;

  final TfArg<String>? gpuInstance;

  final TfArg<bool>? hostEncryptionEnabled;

  final TfArg<String>? hostGroupId;

  final TfArg<String>? kubeletDiskType;

  final TfArg<num>? maxCount;

  final TfArg<num>? maxPods;

  final TfArg<num>? minCount;

  final TfArg<String> name;

  final TfArg<num>? nodeCount;

  final TfArg<Map<String, String>>? nodeLabels;

  final TfArg<bool>? nodePublicIpEnabled;

  final TfArg<String>? nodePublicIpPrefixId;

  final TfArg<bool>? onlyCriticalAddonsEnabled;

  final TfArg<String>? orchestratorVersion;

  final TfArg<num>? osDiskSizeGb;

  final TfArg<String>? osDiskType;

  final TfArg<String>? osSku;

  final TfArg<String>? podSubnetId;

  final TfArg<String>? proximityPlacementGroupId;

  final TfArg<String>? scaleDownMode;

  final TfArg<String>? snapshotId;

  final TfArg<Map<String, String>>? tags;

  final TfArg<String>? temporaryNameForRotation;

  final TfArg<String>? type;

  final TfArg<bool>? ultraSsdEnabled;

  final TfArg<String>? vmSize;

  final TfArg<String>? vnetSubnetId;

  final TfArg<String>? workloadRuntime;

  final TfArg<List<String>>? zones;

  final KubernetesClusterKubeletConfig? kubeletConfig;

  final KubernetesClusterLinuxOsConfig? linuxOsConfig;

  final KubernetesClusterNodeNetworkProfile? nodeNetworkProfile;

  final KubernetesClusterUpgradeSettings? upgradeSettings;

  @internal
  Map<String, Object?> encode() => {
    'auto_scaling_enabled': ?autoScalingEnabled?.toTfJson(),
    'capacity_reservation_group_id': ?capacityReservationGroupId?.toTfJson(),
    'fips_enabled': ?fipsEnabled?.toTfJson(),
    'gpu_driver': ?gpuDriver?.toTfJson(),
    'gpu_instance': ?gpuInstance?.toTfJson(),
    'host_encryption_enabled': ?hostEncryptionEnabled?.toTfJson(),
    'host_group_id': ?hostGroupId?.toTfJson(),
    'kubelet_disk_type': ?kubeletDiskType?.toTfJson(),
    'max_count': ?maxCount?.toTfJson(),
    'max_pods': ?maxPods?.toTfJson(),
    'min_count': ?minCount?.toTfJson(),
    'name': name.toTfJson(),
    'node_count': ?nodeCount?.toTfJson(),
    'node_labels': ?nodeLabels?.toTfJson(),
    'node_public_ip_enabled': ?nodePublicIpEnabled?.toTfJson(),
    'node_public_ip_prefix_id': ?nodePublicIpPrefixId?.toTfJson(),
    'only_critical_addons_enabled': ?onlyCriticalAddonsEnabled?.toTfJson(),
    'orchestrator_version': ?orchestratorVersion?.toTfJson(),
    'os_disk_size_gb': ?osDiskSizeGb?.toTfJson(),
    'os_disk_type': ?osDiskType?.toTfJson(),
    'os_sku': ?osSku?.toTfJson(),
    'pod_subnet_id': ?podSubnetId?.toTfJson(),
    'proximity_placement_group_id': ?proximityPlacementGroupId?.toTfJson(),
    'scale_down_mode': ?scaleDownMode?.toTfJson(),
    'snapshot_id': ?snapshotId?.toTfJson(),
    'tags': ?tags?.toTfJson(),
    'temporary_name_for_rotation': ?temporaryNameForRotation?.toTfJson(),
    'type': ?type?.toTfJson(),
    'ultra_ssd_enabled': ?ultraSsdEnabled?.toTfJson(),
    'vm_size': ?vmSize?.toTfJson(),
    'vnet_subnet_id': ?vnetSubnetId?.toTfJson(),
    'workload_runtime': ?workloadRuntime?.toTfJson(),
    'zones': ?zones?.toTfJson(),
    'kubelet_config': ?kubeletConfig?.encode(),
    'linux_os_config': ?linuxOsConfig?.encode(),
    'node_network_profile': ?nodeNetworkProfile?.encode(),
    'upgrade_settings': ?upgradeSettings?.encode(),
  };
}

/// Typed helper for the `default_node_pool.kubelet_config` block of
/// `azurerm_kubernetes_cluster` (derived from provider schema).
@immutable
final class KubernetesClusterKubeletConfig {
  const KubernetesClusterKubeletConfig({
    this.allowedUnsafeSysctls,
    this.containerLogMaxFiles,
    this.containerLogMaxSizeMb,
    this.cpuCfsQuotaEnabled,
    this.cpuCfsQuotaPeriod,
    this.cpuManagerPolicy,
    this.imageGcHighThreshold,
    this.imageGcLowThreshold,
    this.podMaxPid,
    this.topologyManagerPolicy,
  });

  final TfArg<List<String>>? allowedUnsafeSysctls;

  final TfArg<num>? containerLogMaxFiles;

  final TfArg<num>? containerLogMaxSizeMb;

  final TfArg<bool>? cpuCfsQuotaEnabled;

  final TfArg<String>? cpuCfsQuotaPeriod;

  final TfArg<String>? cpuManagerPolicy;

  final TfArg<num>? imageGcHighThreshold;

  final TfArg<num>? imageGcLowThreshold;

  final TfArg<num>? podMaxPid;

  final TfArg<String>? topologyManagerPolicy;

  @internal
  Map<String, Object?> encode() => {
    'allowed_unsafe_sysctls': ?allowedUnsafeSysctls?.toTfJson(),
    'container_log_max_files': ?containerLogMaxFiles?.toTfJson(),
    'container_log_max_size_mb': ?containerLogMaxSizeMb?.toTfJson(),
    'cpu_cfs_quota_enabled': ?cpuCfsQuotaEnabled?.toTfJson(),
    'cpu_cfs_quota_period': ?cpuCfsQuotaPeriod?.toTfJson(),
    'cpu_manager_policy': ?cpuManagerPolicy?.toTfJson(),
    'image_gc_high_threshold': ?imageGcHighThreshold?.toTfJson(),
    'image_gc_low_threshold': ?imageGcLowThreshold?.toTfJson(),
    'pod_max_pid': ?podMaxPid?.toTfJson(),
    'topology_manager_policy': ?topologyManagerPolicy?.toTfJson(),
  };
}

/// Typed helper for the `default_node_pool.linux_os_config` block of
/// `azurerm_kubernetes_cluster` (derived from provider schema).
@immutable
final class KubernetesClusterLinuxOsConfig {
  const KubernetesClusterLinuxOsConfig({
    this.swapFileSizeMb,
    this.transparentHugePage,
    this.transparentHugePageDefrag,
    this.sysctlConfig,
  });

  final TfArg<num>? swapFileSizeMb;

  final TfArg<String>? transparentHugePage;

  final TfArg<String>? transparentHugePageDefrag;

  final KubernetesClusterSysctlConfig? sysctlConfig;

  @internal
  Map<String, Object?> encode() => {
    'swap_file_size_mb': ?swapFileSizeMb?.toTfJson(),
    'transparent_huge_page': ?transparentHugePage?.toTfJson(),
    'transparent_huge_page_defrag': ?transparentHugePageDefrag?.toTfJson(),
    'sysctl_config': ?sysctlConfig?.encode(),
  };
}

/// Typed helper for the `default_node_pool.linux_os_config.sysctl_config` block of
/// `azurerm_kubernetes_cluster` (derived from provider schema).
@immutable
final class KubernetesClusterSysctlConfig {
  const KubernetesClusterSysctlConfig({
    this.fsAioMaxNr,
    this.fsFileMax,
    this.fsInotifyMaxUserWatches,
    this.fsNrOpen,
    this.kernelThreadsMax,
    this.netCoreNetdevMaxBacklog,
    this.netCoreOptmemMax,
    this.netCoreRmemDefault,
    this.netCoreRmemMax,
    this.netCoreSomaxconn,
    this.netCoreWmemDefault,
    this.netCoreWmemMax,
    this.netIpv4IpLocalPortRangeMax,
    this.netIpv4IpLocalPortRangeMin,
    this.netIpv4NeighDefaultGcThresh1,
    this.netIpv4NeighDefaultGcThresh2,
    this.netIpv4NeighDefaultGcThresh3,
    this.netIpv4TcpFinTimeout,
    this.netIpv4TcpKeepaliveIntvl,
    this.netIpv4TcpKeepaliveProbes,
    this.netIpv4TcpKeepaliveTime,
    this.netIpv4TcpMaxSynBacklog,
    this.netIpv4TcpMaxTwBuckets,
    this.netIpv4TcpTwReuse,
    this.netNetfilterNfConntrackBuckets,
    this.netNetfilterNfConntrackMax,
    this.vmMaxMapCount,
    this.vmSwappiness,
    this.vmVfsCachePressure,
  });

  final TfArg<num>? fsAioMaxNr;

  final TfArg<num>? fsFileMax;

  final TfArg<num>? fsInotifyMaxUserWatches;

  final TfArg<num>? fsNrOpen;

  final TfArg<num>? kernelThreadsMax;

  final TfArg<num>? netCoreNetdevMaxBacklog;

  final TfArg<num>? netCoreOptmemMax;

  final TfArg<num>? netCoreRmemDefault;

  final TfArg<num>? netCoreRmemMax;

  final TfArg<num>? netCoreSomaxconn;

  final TfArg<num>? netCoreWmemDefault;

  final TfArg<num>? netCoreWmemMax;

  final TfArg<num>? netIpv4IpLocalPortRangeMax;

  final TfArg<num>? netIpv4IpLocalPortRangeMin;

  final TfArg<num>? netIpv4NeighDefaultGcThresh1;

  final TfArg<num>? netIpv4NeighDefaultGcThresh2;

  final TfArg<num>? netIpv4NeighDefaultGcThresh3;

  final TfArg<num>? netIpv4TcpFinTimeout;

  final TfArg<num>? netIpv4TcpKeepaliveIntvl;

  final TfArg<num>? netIpv4TcpKeepaliveProbes;

  final TfArg<num>? netIpv4TcpKeepaliveTime;

  final TfArg<num>? netIpv4TcpMaxSynBacklog;

  final TfArg<num>? netIpv4TcpMaxTwBuckets;

  final TfArg<bool>? netIpv4TcpTwReuse;

  final TfArg<num>? netNetfilterNfConntrackBuckets;

  final TfArg<num>? netNetfilterNfConntrackMax;

  final TfArg<num>? vmMaxMapCount;

  final TfArg<num>? vmSwappiness;

  final TfArg<num>? vmVfsCachePressure;

  @internal
  Map<String, Object?> encode() => {
    'fs_aio_max_nr': ?fsAioMaxNr?.toTfJson(),
    'fs_file_max': ?fsFileMax?.toTfJson(),
    'fs_inotify_max_user_watches': ?fsInotifyMaxUserWatches?.toTfJson(),
    'fs_nr_open': ?fsNrOpen?.toTfJson(),
    'kernel_threads_max': ?kernelThreadsMax?.toTfJson(),
    'net_core_netdev_max_backlog': ?netCoreNetdevMaxBacklog?.toTfJson(),
    'net_core_optmem_max': ?netCoreOptmemMax?.toTfJson(),
    'net_core_rmem_default': ?netCoreRmemDefault?.toTfJson(),
    'net_core_rmem_max': ?netCoreRmemMax?.toTfJson(),
    'net_core_somaxconn': ?netCoreSomaxconn?.toTfJson(),
    'net_core_wmem_default': ?netCoreWmemDefault?.toTfJson(),
    'net_core_wmem_max': ?netCoreWmemMax?.toTfJson(),
    'net_ipv4_ip_local_port_range_max': ?netIpv4IpLocalPortRangeMax?.toTfJson(),
    'net_ipv4_ip_local_port_range_min': ?netIpv4IpLocalPortRangeMin?.toTfJson(),
    'net_ipv4_neigh_default_gc_thresh1': ?netIpv4NeighDefaultGcThresh1
        ?.toTfJson(),
    'net_ipv4_neigh_default_gc_thresh2': ?netIpv4NeighDefaultGcThresh2
        ?.toTfJson(),
    'net_ipv4_neigh_default_gc_thresh3': ?netIpv4NeighDefaultGcThresh3
        ?.toTfJson(),
    'net_ipv4_tcp_fin_timeout': ?netIpv4TcpFinTimeout?.toTfJson(),
    'net_ipv4_tcp_keepalive_intvl': ?netIpv4TcpKeepaliveIntvl?.toTfJson(),
    'net_ipv4_tcp_keepalive_probes': ?netIpv4TcpKeepaliveProbes?.toTfJson(),
    'net_ipv4_tcp_keepalive_time': ?netIpv4TcpKeepaliveTime?.toTfJson(),
    'net_ipv4_tcp_max_syn_backlog': ?netIpv4TcpMaxSynBacklog?.toTfJson(),
    'net_ipv4_tcp_max_tw_buckets': ?netIpv4TcpMaxTwBuckets?.toTfJson(),
    'net_ipv4_tcp_tw_reuse': ?netIpv4TcpTwReuse?.toTfJson(),
    'net_netfilter_nf_conntrack_buckets': ?netNetfilterNfConntrackBuckets
        ?.toTfJson(),
    'net_netfilter_nf_conntrack_max': ?netNetfilterNfConntrackMax?.toTfJson(),
    'vm_max_map_count': ?vmMaxMapCount?.toTfJson(),
    'vm_swappiness': ?vmSwappiness?.toTfJson(),
    'vm_vfs_cache_pressure': ?vmVfsCachePressure?.toTfJson(),
  };
}

/// Typed helper for the `default_node_pool.node_network_profile` block of
/// `azurerm_kubernetes_cluster` (derived from provider schema).
@immutable
final class KubernetesClusterNodeNetworkProfile {
  const KubernetesClusterNodeNetworkProfile({
    this.applicationSecurityGroupIds,
    this.nodePublicIpTags,
    this.allowedHostPorts,
  });

  final TfArg<List<String>>? applicationSecurityGroupIds;

  final TfArg<Map<String, String>>? nodePublicIpTags;

  final List<KubernetesClusterAllowedHostPorts>? allowedHostPorts;

  @internal
  Map<String, Object?> encode() => {
    'application_security_group_ids': ?applicationSecurityGroupIds?.toTfJson(),
    'node_public_ip_tags': ?nodePublicIpTags?.toTfJson(),
    if (allowedHostPorts != null)
      'allowed_host_ports': [for (final e in allowedHostPorts!) e.encode()],
  };
}

/// Typed helper for the `default_node_pool.node_network_profile.allowed_host_ports` block of
/// `azurerm_kubernetes_cluster` (derived from provider schema).
@immutable
final class KubernetesClusterAllowedHostPorts {
  const KubernetesClusterAllowedHostPorts({
    this.portEnd,
    this.portStart,
    this.protocol,
  });

  final TfArg<num>? portEnd;

  final TfArg<num>? portStart;

  final TfArg<String>? protocol;

  @internal
  Map<String, Object?> encode() => {
    'port_end': ?portEnd?.toTfJson(),
    'port_start': ?portStart?.toTfJson(),
    'protocol': ?protocol?.toTfJson(),
  };
}

/// Typed helper for the `default_node_pool.upgrade_settings` block of
/// `azurerm_kubernetes_cluster` (derived from provider schema).
@immutable
final class KubernetesClusterUpgradeSettings {
  const KubernetesClusterUpgradeSettings({
    this.drainTimeoutInMinutes,
    required this.maxSurge,
    this.nodeSoakDurationInMinutes,
    this.undrainableNodeBehavior,
  });

  final TfArg<num>? drainTimeoutInMinutes;

  final TfArg<String> maxSurge;

  final TfArg<num>? nodeSoakDurationInMinutes;

  final TfArg<String>? undrainableNodeBehavior;

  @internal
  Map<String, Object?> encode() => {
    'drain_timeout_in_minutes': ?drainTimeoutInMinutes?.toTfJson(),
    'max_surge': maxSurge.toTfJson(),
    'node_soak_duration_in_minutes': ?nodeSoakDurationInMinutes?.toTfJson(),
    'undrainable_node_behavior': ?undrainableNodeBehavior?.toTfJson(),
  };
}

/// Typed helper for the `http_proxy_config` block of
/// `azurerm_kubernetes_cluster` (derived from provider schema).
@immutable
final class KubernetesClusterHttpProxyConfig {
  const KubernetesClusterHttpProxyConfig({
    this.httpProxy,
    this.httpsProxy,
    this.noProxy,
    this.trustedCa,
  });

  final TfArg<String>? httpProxy;

  final TfArg<String>? httpsProxy;

  final TfArg<List<String>>? noProxy;

  final Sensitive<String>? trustedCa;

  @internal
  Map<String, Object?> encode() => {
    'http_proxy': ?httpProxy?.toTfJson(),
    'https_proxy': ?httpsProxy?.toTfJson(),
    'no_proxy': ?noProxy?.toTfJson(),
    'trusted_ca': ?trustedCa?.toTfJson(),
  };
}

/// Typed helper for the `identity` block of
/// `azurerm_kubernetes_cluster` (derived from provider schema).
@immutable
final class KubernetesClusterIdentity {
  const KubernetesClusterIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `ingress_application_gateway` block of
/// `azurerm_kubernetes_cluster` (derived from provider schema).
@immutable
final class KubernetesClusterIngressApplicationGateway {
  const KubernetesClusterIngressApplicationGateway({
    this.gatewayId,
    this.gatewayName,
    this.subnetCidr,
    this.subnetId,
  });

  final TfArg<String>? gatewayId;

  final TfArg<String>? gatewayName;

  final TfArg<String>? subnetCidr;

  final TfArg<String>? subnetId;

  @internal
  Map<String, Object?> encode() => {
    'gateway_id': ?gatewayId?.toTfJson(),
    'gateway_name': ?gatewayName?.toTfJson(),
    'subnet_cidr': ?subnetCidr?.toTfJson(),
    'subnet_id': ?subnetId?.toTfJson(),
  };
}

/// Typed helper for the `key_management_service` block of
/// `azurerm_kubernetes_cluster` (derived from provider schema).
@immutable
final class KubernetesClusterKeyManagementService {
  const KubernetesClusterKeyManagementService({
    required this.keyVaultKeyId,
    this.keyVaultNetworkAccess,
  });

  final TfArg<String> keyVaultKeyId;

  final TfArg<String>? keyVaultNetworkAccess;

  @internal
  Map<String, Object?> encode() => {
    'key_vault_key_id': keyVaultKeyId.toTfJson(),
    'key_vault_network_access': ?keyVaultNetworkAccess?.toTfJson(),
  };
}

/// Typed helper for the `key_vault_secrets_provider` block of
/// `azurerm_kubernetes_cluster` (derived from provider schema).
@immutable
final class KubernetesClusterKeyVaultSecretsProvider {
  const KubernetesClusterKeyVaultSecretsProvider({
    this.secretRotationEnabled,
    this.secretRotationInterval,
  });

  final TfArg<bool>? secretRotationEnabled;

  final TfArg<String>? secretRotationInterval;

  @internal
  Map<String, Object?> encode() => {
    'secret_rotation_enabled': ?secretRotationEnabled?.toTfJson(),
    'secret_rotation_interval': ?secretRotationInterval?.toTfJson(),
  };
}

/// Typed helper for the `kubelet_identity` block of
/// `azurerm_kubernetes_cluster` (derived from provider schema).
@immutable
final class KubernetesClusterKubeletIdentity {
  const KubernetesClusterKubeletIdentity({
    this.clientId,
    this.objectId,
    this.userAssignedIdentityId,
  });

  final TfArg<String>? clientId;

  final TfArg<String>? objectId;

  final TfArg<String>? userAssignedIdentityId;

  @internal
  Map<String, Object?> encode() => {
    'client_id': ?clientId?.toTfJson(),
    'object_id': ?objectId?.toTfJson(),
    'user_assigned_identity_id': ?userAssignedIdentityId?.toTfJson(),
  };
}

/// Typed helper for the `linux_profile` block of
/// `azurerm_kubernetes_cluster` (derived from provider schema).
@immutable
final class KubernetesClusterLinuxProfile {
  const KubernetesClusterLinuxProfile({
    required this.adminUsername,
    required this.sshKey,
  });

  final TfArg<String> adminUsername;

  final KubernetesClusterSshKey sshKey;

  @internal
  Map<String, Object?> encode() => {
    'admin_username': adminUsername.toTfJson(),
    'ssh_key': sshKey.encode(),
  };
}

/// Typed helper for the `linux_profile.ssh_key` block of
/// `azurerm_kubernetes_cluster` (derived from provider schema).
@immutable
final class KubernetesClusterSshKey {
  const KubernetesClusterSshKey({required this.keyData});

  final TfArg<String> keyData;

  @internal
  Map<String, Object?> encode() => {'key_data': keyData.toTfJson()};
}

/// Typed helper for the `maintenance_window` block of
/// `azurerm_kubernetes_cluster` (derived from provider schema).
@immutable
final class KubernetesClusterMaintenanceWindow {
  const KubernetesClusterMaintenanceWindow({this.allowed, this.notAllowed});

  final List<KubernetesClusterAllowed>? allowed;

  final List<KubernetesClusterNotAllowed>? notAllowed;

  @internal
  Map<String, Object?> encode() => {
    if (allowed != null) 'allowed': [for (final e in allowed!) e.encode()],
    if (notAllowed != null)
      'not_allowed': [for (final e in notAllowed!) e.encode()],
  };
}

/// Typed helper for the `maintenance_window.allowed` block of
/// `azurerm_kubernetes_cluster` (derived from provider schema).
@immutable
final class KubernetesClusterAllowed {
  const KubernetesClusterAllowed({required this.day, required this.hours});

  final TfArg<String> day;

  final TfArg<List<num>> hours;

  @internal
  Map<String, Object?> encode() => {
    'day': day.toTfJson(),
    'hours': hours.toTfJson(),
  };
}

/// Typed helper for the `maintenance_window.not_allowed` block of
/// `azurerm_kubernetes_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class KubernetesClusterNotAllowed {
  const KubernetesClusterNotAllowed({required this.end, required this.start});

  final TfArg<String> end;

  final TfArg<String> start;

  @internal
  Map<String, Object?> encode() => {
    'end': end.toTfJson(),
    'start': start.toTfJson(),
  };
}

/// Typed helper for the `maintenance_window_auto_upgrade` block of
/// `azurerm_kubernetes_cluster` (derived from provider schema).
@immutable
final class KubernetesClusterMaintenanceWindowAutoUpgrade {
  const KubernetesClusterMaintenanceWindowAutoUpgrade({
    this.dayOfMonth,
    this.dayOfWeek,
    required this.duration,
    required this.frequency,
    required this.interval,
    this.startDate,
    this.startTime,
    this.utcOffset,
    this.weekIndex,
    this.notAllowed,
  });

  final TfArg<num>? dayOfMonth;

  final TfArg<String>? dayOfWeek;

  final TfArg<num> duration;

  final TfArg<String> frequency;

  final TfArg<num> interval;

  final TfArg<String>? startDate;

  final TfArg<String>? startTime;

  final TfArg<String>? utcOffset;

  final TfArg<String>? weekIndex;

  final List<KubernetesClusterNotAllowed>? notAllowed;

  @internal
  Map<String, Object?> encode() => {
    'day_of_month': ?dayOfMonth?.toTfJson(),
    'day_of_week': ?dayOfWeek?.toTfJson(),
    'duration': duration.toTfJson(),
    'frequency': frequency.toTfJson(),
    'interval': interval.toTfJson(),
    'start_date': ?startDate?.toTfJson(),
    'start_time': ?startTime?.toTfJson(),
    'utc_offset': ?utcOffset?.toTfJson(),
    'week_index': ?weekIndex?.toTfJson(),
    if (notAllowed != null)
      'not_allowed': [for (final e in notAllowed!) e.encode()],
  };
}

/// Typed helper for the `maintenance_window_node_os` block of
/// `azurerm_kubernetes_cluster` (derived from provider schema).
@immutable
final class KubernetesClusterMaintenanceWindowNodeOs {
  const KubernetesClusterMaintenanceWindowNodeOs({
    this.dayOfMonth,
    this.dayOfWeek,
    required this.duration,
    required this.frequency,
    required this.interval,
    this.startDate,
    this.startTime,
    this.utcOffset,
    this.weekIndex,
    this.notAllowed,
  });

  final TfArg<num>? dayOfMonth;

  final TfArg<String>? dayOfWeek;

  final TfArg<num> duration;

  final TfArg<String> frequency;

  final TfArg<num> interval;

  final TfArg<String>? startDate;

  final TfArg<String>? startTime;

  final TfArg<String>? utcOffset;

  final TfArg<String>? weekIndex;

  final List<KubernetesClusterNotAllowed>? notAllowed;

  @internal
  Map<String, Object?> encode() => {
    'day_of_month': ?dayOfMonth?.toTfJson(),
    'day_of_week': ?dayOfWeek?.toTfJson(),
    'duration': duration.toTfJson(),
    'frequency': frequency.toTfJson(),
    'interval': interval.toTfJson(),
    'start_date': ?startDate?.toTfJson(),
    'start_time': ?startTime?.toTfJson(),
    'utc_offset': ?utcOffset?.toTfJson(),
    'week_index': ?weekIndex?.toTfJson(),
    if (notAllowed != null)
      'not_allowed': [for (final e in notAllowed!) e.encode()],
  };
}

/// Typed helper for the `microsoft_defender` block of
/// `azurerm_kubernetes_cluster` (derived from provider schema).
@immutable
final class KubernetesClusterMicrosoftDefender {
  const KubernetesClusterMicrosoftDefender({
    required this.logAnalyticsWorkspaceId,
  });

  final TfArg<String> logAnalyticsWorkspaceId;

  @internal
  Map<String, Object?> encode() => {
    'log_analytics_workspace_id': logAnalyticsWorkspaceId.toTfJson(),
  };
}

/// Typed helper for the `monitor_metrics` block of
/// `azurerm_kubernetes_cluster` (derived from provider schema).
@immutable
final class KubernetesClusterMonitorMetrics {
  const KubernetesClusterMonitorMetrics({
    this.annotationsAllowed,
    this.labelsAllowed,
  });

  final TfArg<String>? annotationsAllowed;

  final TfArg<String>? labelsAllowed;

  @internal
  Map<String, Object?> encode() => {
    'annotations_allowed': ?annotationsAllowed?.toTfJson(),
    'labels_allowed': ?labelsAllowed?.toTfJson(),
  };
}

/// Typed helper for the `network_profile` block of
/// `azurerm_kubernetes_cluster` (derived from provider schema).
@immutable
final class KubernetesClusterNetworkProfile {
  const KubernetesClusterNetworkProfile({
    this.dnsServiceIp,
    this.ipVersions,
    this.loadBalancerSku,
    this.networkDataPlane,
    this.networkMode,
    required this.networkPlugin,
    this.networkPluginMode,
    this.networkPolicy,
    this.outboundType,
    this.podCidr,
    this.podCidrs,
    this.serviceCidr,
    this.serviceCidrs,
    this.advancedNetworking,
    this.loadBalancerProfile,
    this.natGatewayProfile,
  });

  final TfArg<String>? dnsServiceIp;

  final TfArg<List<String>>? ipVersions;

  final TfArg<String>? loadBalancerSku;

  final TfArg<String>? networkDataPlane;

  final TfArg<String>? networkMode;

  final TfArg<String> networkPlugin;

  final TfArg<String>? networkPluginMode;

  final TfArg<String>? networkPolicy;

  final TfArg<String>? outboundType;

  final TfArg<String>? podCidr;

  final TfArg<List<String>>? podCidrs;

  final TfArg<String>? serviceCidr;

  final TfArg<List<String>>? serviceCidrs;

  final KubernetesClusterAdvancedNetworking? advancedNetworking;

  final KubernetesClusterLoadBalancerProfile? loadBalancerProfile;

  final KubernetesClusterNatGatewayProfile? natGatewayProfile;

  @internal
  Map<String, Object?> encode() => {
    'dns_service_ip': ?dnsServiceIp?.toTfJson(),
    'ip_versions': ?ipVersions?.toTfJson(),
    'load_balancer_sku': ?loadBalancerSku?.toTfJson(),
    'network_data_plane': ?networkDataPlane?.toTfJson(),
    'network_mode': ?networkMode?.toTfJson(),
    'network_plugin': networkPlugin.toTfJson(),
    'network_plugin_mode': ?networkPluginMode?.toTfJson(),
    'network_policy': ?networkPolicy?.toTfJson(),
    'outbound_type': ?outboundType?.toTfJson(),
    'pod_cidr': ?podCidr?.toTfJson(),
    'pod_cidrs': ?podCidrs?.toTfJson(),
    'service_cidr': ?serviceCidr?.toTfJson(),
    'service_cidrs': ?serviceCidrs?.toTfJson(),
    'advanced_networking': ?advancedNetworking?.encode(),
    'load_balancer_profile': ?loadBalancerProfile?.encode(),
    'nat_gateway_profile': ?natGatewayProfile?.encode(),
  };
}

/// Typed helper for the `network_profile.advanced_networking` block of
/// `azurerm_kubernetes_cluster` (derived from provider schema).
@immutable
final class KubernetesClusterAdvancedNetworking {
  const KubernetesClusterAdvancedNetworking({
    this.observabilityEnabled,
    this.securityEnabled,
  });

  final TfArg<bool>? observabilityEnabled;

  final TfArg<bool>? securityEnabled;

  @internal
  Map<String, Object?> encode() => {
    'observability_enabled': ?observabilityEnabled?.toTfJson(),
    'security_enabled': ?securityEnabled?.toTfJson(),
  };
}

/// Typed helper for the `network_profile.load_balancer_profile` block of
/// `azurerm_kubernetes_cluster` (derived from provider schema).
@immutable
final class KubernetesClusterLoadBalancerProfile {
  const KubernetesClusterLoadBalancerProfile({
    this.backendPoolType,
    this.idleTimeoutInMinutes,
    this.managedOutboundIpCount,
    this.managedOutboundIpv6Count,
    this.outboundIpAddressIds,
    this.outboundIpPrefixIds,
    this.outboundPortsAllocated,
  });

  final TfArg<String>? backendPoolType;

  final TfArg<num>? idleTimeoutInMinutes;

  final TfArg<num>? managedOutboundIpCount;

  final TfArg<num>? managedOutboundIpv6Count;

  final TfArg<List<String>>? outboundIpAddressIds;

  final TfArg<List<String>>? outboundIpPrefixIds;

  final TfArg<num>? outboundPortsAllocated;

  @internal
  Map<String, Object?> encode() => {
    'backend_pool_type': ?backendPoolType?.toTfJson(),
    'idle_timeout_in_minutes': ?idleTimeoutInMinutes?.toTfJson(),
    'managed_outbound_ip_count': ?managedOutboundIpCount?.toTfJson(),
    'managed_outbound_ipv6_count': ?managedOutboundIpv6Count?.toTfJson(),
    'outbound_ip_address_ids': ?outboundIpAddressIds?.toTfJson(),
    'outbound_ip_prefix_ids': ?outboundIpPrefixIds?.toTfJson(),
    'outbound_ports_allocated': ?outboundPortsAllocated?.toTfJson(),
  };
}

/// Typed helper for the `network_profile.nat_gateway_profile` block of
/// `azurerm_kubernetes_cluster` (derived from provider schema).
@immutable
final class KubernetesClusterNatGatewayProfile {
  const KubernetesClusterNatGatewayProfile({
    this.idleTimeoutInMinutes,
    this.managedOutboundIpCount,
  });

  final TfArg<num>? idleTimeoutInMinutes;

  final TfArg<num>? managedOutboundIpCount;

  @internal
  Map<String, Object?> encode() => {
    'idle_timeout_in_minutes': ?idleTimeoutInMinutes?.toTfJson(),
    'managed_outbound_ip_count': ?managedOutboundIpCount?.toTfJson(),
  };
}

/// Typed helper for the `node_provisioning_profile` block of
/// `azurerm_kubernetes_cluster` (derived from provider schema).
@immutable
final class KubernetesClusterNodeProvisioningProfile {
  const KubernetesClusterNodeProvisioningProfile({
    this.defaultNodePools,
    this.mode,
  });

  final TfArg<String>? defaultNodePools;

  final TfArg<String>? mode;

  @internal
  Map<String, Object?> encode() => {
    'default_node_pools': ?defaultNodePools?.toTfJson(),
    'mode': ?mode?.toTfJson(),
  };
}

/// Typed helper for the `oms_agent` block of
/// `azurerm_kubernetes_cluster` (derived from provider schema).
@immutable
final class KubernetesClusterOmsAgent {
  const KubernetesClusterOmsAgent({
    required this.logAnalyticsWorkspaceId,
    this.msiAuthForMonitoringEnabled,
    this.retinaFlowLogsEnabled,
  });

  final TfArg<String> logAnalyticsWorkspaceId;

  final TfArg<bool>? msiAuthForMonitoringEnabled;

  final TfArg<bool>? retinaFlowLogsEnabled;

  @internal
  Map<String, Object?> encode() => {
    'log_analytics_workspace_id': logAnalyticsWorkspaceId.toTfJson(),
    'msi_auth_for_monitoring_enabled': ?msiAuthForMonitoringEnabled?.toTfJson(),
    'retina_flow_logs_enabled': ?retinaFlowLogsEnabled?.toTfJson(),
  };
}

/// Typed helper for the `service_mesh_profile` block of
/// `azurerm_kubernetes_cluster` (derived from provider schema).
@immutable
final class KubernetesClusterServiceMeshProfile {
  const KubernetesClusterServiceMeshProfile({
    this.externalIngressGatewayEnabled,
    this.internalIngressGatewayEnabled,
    required this.mode,
    required this.revisions,
    this.certificateAuthority,
  });

  final TfArg<bool>? externalIngressGatewayEnabled;

  final TfArg<bool>? internalIngressGatewayEnabled;

  final TfArg<String> mode;

  final TfArg<List<String>> revisions;

  final KubernetesClusterCertificateAuthority? certificateAuthority;

  @internal
  Map<String, Object?> encode() => {
    'external_ingress_gateway_enabled': ?externalIngressGatewayEnabled
        ?.toTfJson(),
    'internal_ingress_gateway_enabled': ?internalIngressGatewayEnabled
        ?.toTfJson(),
    'mode': mode.toTfJson(),
    'revisions': revisions.toTfJson(),
    'certificate_authority': ?certificateAuthority?.encode(),
  };
}

/// Typed helper for the `service_mesh_profile.certificate_authority` block of
/// `azurerm_kubernetes_cluster` (derived from provider schema).
@immutable
final class KubernetesClusterCertificateAuthority {
  const KubernetesClusterCertificateAuthority({
    required this.certChainObjectName,
    required this.certObjectName,
    required this.keyObjectName,
    required this.keyVaultId,
    required this.rootCertObjectName,
  });

  final TfArg<String> certChainObjectName;

  final TfArg<String> certObjectName;

  final TfArg<String> keyObjectName;

  final TfArg<String> keyVaultId;

  final TfArg<String> rootCertObjectName;

  @internal
  Map<String, Object?> encode() => {
    'cert_chain_object_name': certChainObjectName.toTfJson(),
    'cert_object_name': certObjectName.toTfJson(),
    'key_object_name': keyObjectName.toTfJson(),
    'key_vault_id': keyVaultId.toTfJson(),
    'root_cert_object_name': rootCertObjectName.toTfJson(),
  };
}

/// Typed helper for the `service_principal` block of
/// `azurerm_kubernetes_cluster` (derived from provider schema).
@immutable
final class KubernetesClusterServicePrincipal {
  const KubernetesClusterServicePrincipal({
    required this.clientId,
    required this.clientSecret,
  });

  final TfArg<String> clientId;

  final Sensitive<String> clientSecret;

  @internal
  Map<String, Object?> encode() => {
    'client_id': clientId.toTfJson(),
    'client_secret': clientSecret.toTfJson(),
  };
}

/// Typed helper for the `storage_profile` block of
/// `azurerm_kubernetes_cluster` (derived from provider schema).
@immutable
final class KubernetesClusterStorageProfile {
  const KubernetesClusterStorageProfile({
    this.blobDriverEnabled,
    this.diskDriverEnabled,
    this.fileDriverEnabled,
    this.snapshotControllerEnabled,
  });

  final TfArg<bool>? blobDriverEnabled;

  final TfArg<bool>? diskDriverEnabled;

  final TfArg<bool>? fileDriverEnabled;

  final TfArg<bool>? snapshotControllerEnabled;

  @internal
  Map<String, Object?> encode() => {
    'blob_driver_enabled': ?blobDriverEnabled?.toTfJson(),
    'disk_driver_enabled': ?diskDriverEnabled?.toTfJson(),
    'file_driver_enabled': ?fileDriverEnabled?.toTfJson(),
    'snapshot_controller_enabled': ?snapshotControllerEnabled?.toTfJson(),
  };
}

/// Typed helper for the `upgrade_override` block of
/// `azurerm_kubernetes_cluster` (derived from provider schema).
@immutable
final class KubernetesClusterUpgradeOverride {
  const KubernetesClusterUpgradeOverride({
    this.effectiveUntil,
    required this.forceUpgradeEnabled,
  });

  final TfArg<String>? effectiveUntil;

  final TfArg<bool> forceUpgradeEnabled;

  @internal
  Map<String, Object?> encode() => {
    'effective_until': ?effectiveUntil?.toTfJson(),
    'force_upgrade_enabled': forceUpgradeEnabled.toTfJson(),
  };
}

/// Typed helper for the `web_app_routing` block of
/// `azurerm_kubernetes_cluster` (derived from provider schema).
@immutable
final class KubernetesClusterWebAppRouting {
  const KubernetesClusterWebAppRouting({
    this.defaultNginxController,
    required this.dnsZoneIds,
  });

  final TfArg<String>? defaultNginxController;

  final TfArg<List<String>> dnsZoneIds;

  @internal
  Map<String, Object?> encode() => {
    'default_nginx_controller': ?defaultNginxController?.toTfJson(),
    'dns_zone_ids': dnsZoneIds.toTfJson(),
  };
}

/// Typed helper for the `windows_profile` block of
/// `azurerm_kubernetes_cluster` (derived from provider schema).
@immutable
final class KubernetesClusterWindowsProfile {
  const KubernetesClusterWindowsProfile({
    required this.adminPassword,
    required this.adminUsername,
    this.license,
    this.gmsa,
  });

  final Sensitive<String> adminPassword;

  final TfArg<String> adminUsername;

  final TfArg<String>? license;

  final KubernetesClusterGmsa? gmsa;

  @internal
  Map<String, Object?> encode() => {
    'admin_password': adminPassword.toTfJson(),
    'admin_username': adminUsername.toTfJson(),
    'license': ?license?.toTfJson(),
    'gmsa': ?gmsa?.encode(),
  };
}

/// Typed helper for the `windows_profile.gmsa` block of
/// `azurerm_kubernetes_cluster` (derived from provider schema).
@immutable
final class KubernetesClusterGmsa {
  const KubernetesClusterGmsa({
    required this.dnsServer,
    required this.rootDomain,
  });

  final TfArg<String> dnsServer;

  final TfArg<String> rootDomain;

  @internal
  Map<String, Object?> encode() => {
    'dns_server': dnsServer.toTfJson(),
    'root_domain': rootDomain.toTfJson(),
  };
}

/// Typed helper for the `workload_autoscaler_profile` block of
/// `azurerm_kubernetes_cluster` (derived from provider schema).
@immutable
final class KubernetesClusterWorkloadAutoscalerProfile {
  const KubernetesClusterWorkloadAutoscalerProfile({
    this.kedaEnabled,
    this.verticalPodAutoscalerEnabled,
  });

  final TfArg<bool>? kedaEnabled;

  final TfArg<bool>? verticalPodAutoscalerEnabled;

  @internal
  Map<String, Object?> encode() => {
    'keda_enabled': ?kedaEnabled?.toTfJson(),
    'vertical_pod_autoscaler_enabled': ?verticalPodAutoscalerEnabled
        ?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_kubernetes_cluster`.
final class AzurermKubernetesCluster extends Resource {
  static const String tfType = 'azurerm_kubernetes_cluster';

  AzurermKubernetesCluster(
    super.localName, {
    TfArg<bool>? aiToolchainOperatorEnabled,
    TfArg<String>? automaticUpgradeChannel,
    TfArg<bool>? azurePolicyEnabled,
    TfArg<bool>? costAnalysisEnabled,
    TfArg<List<String>>? customCaTrustCertificatesBase64,
    TfArg<String>? diskEncryptionSetId,
    TfArg<String>? dnsPrefix,
    TfArg<String>? dnsPrefixPrivateCluster,
    TfArg<String>? edgeZone,
    TfArg<bool>? httpApplicationRoutingEnabled,
    TfArg<bool>? imageCleanerEnabled,
    TfArg<num>? imageCleanerIntervalHours,
    TfArg<String>? kubernetesVersion,
    TfArg<bool>? localAccountDisabled,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<String>? nodeOsUpgradeChannel,
    TfArg<String>? nodeResourceGroup,
    TfArg<bool>? oidcIssuerEnabled,
    TfArg<bool>? openServiceMeshEnabled,
    TfArg<bool>? privateClusterEnabled,
    TfArg<bool>? privateClusterPublicFqdnEnabled,
    TfArg<String>? privateDnsZoneId,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<bool>? roleBasedAccessControlEnabled,
    TfArg<bool>? runCommandEnabled,
    TfArg<String>? skuTier,
    TfArg<String>? supportPlan,
    TfArg<Map<String, String>>? tags,
    TfArg<bool>? workloadIdentityEnabled,
    KubernetesClusterAciConnectorLinux? aciConnectorLinux,
    KubernetesClusterApiServerAccessProfile? apiServerAccessProfile,
    KubernetesClusterAutoScalerProfile? autoScalerProfile,
    KubernetesClusterAzureActiveDirectoryRoleBasedAccessControl?
    azureActiveDirectoryRoleBasedAccessControl,
    KubernetesClusterBootstrapProfile? bootstrapProfile,
    KubernetesClusterConfidentialComputing? confidentialComputing,
    required KubernetesClusterDefaultNodePool defaultNodePool,
    KubernetesClusterHttpProxyConfig? httpProxyConfig,
    KubernetesClusterIdentity? identity,
    KubernetesClusterIngressApplicationGateway? ingressApplicationGateway,
    KubernetesClusterKeyManagementService? keyManagementService,
    KubernetesClusterKeyVaultSecretsProvider? keyVaultSecretsProvider,
    KubernetesClusterKubeletIdentity? kubeletIdentity,
    KubernetesClusterLinuxProfile? linuxProfile,
    KubernetesClusterMaintenanceWindow? maintenanceWindow,
    KubernetesClusterMaintenanceWindowAutoUpgrade? maintenanceWindowAutoUpgrade,
    KubernetesClusterMaintenanceWindowNodeOs? maintenanceWindowNodeOs,
    KubernetesClusterMicrosoftDefender? microsoftDefender,
    KubernetesClusterMonitorMetrics? monitorMetrics,
    KubernetesClusterNetworkProfile? networkProfile,
    required KubernetesClusterNodeProvisioningProfile nodeProvisioningProfile,
    KubernetesClusterOmsAgent? omsAgent,
    KubernetesClusterServiceMeshProfile? serviceMeshProfile,
    KubernetesClusterServicePrincipal? servicePrincipal,
    KubernetesClusterStorageProfile? storageProfile,
    KubernetesClusterUpgradeOverride? upgradeOverride,
    KubernetesClusterWebAppRouting? webAppRouting,
    KubernetesClusterWindowsProfile? windowsProfile,
    KubernetesClusterWorkloadAutoscalerProfile? workloadAutoscalerProfile,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'ai_toolchain_operator_enabled': ?aiToolchainOperatorEnabled,
           'automatic_upgrade_channel': ?automaticUpgradeChannel,
           'azure_policy_enabled': ?azurePolicyEnabled,
           'cost_analysis_enabled': ?costAnalysisEnabled,
           'custom_ca_trust_certificates_base64':
               ?customCaTrustCertificatesBase64,
           'disk_encryption_set_id': ?diskEncryptionSetId,
           'dns_prefix': ?dnsPrefix,
           'dns_prefix_private_cluster': ?dnsPrefixPrivateCluster,
           'edge_zone': ?edgeZone,
           'http_application_routing_enabled': ?httpApplicationRoutingEnabled,
           'image_cleaner_enabled': ?imageCleanerEnabled,
           'image_cleaner_interval_hours': ?imageCleanerIntervalHours,
           'kubernetes_version': ?kubernetesVersion,
           'local_account_disabled': ?localAccountDisabled,
           'location': location,
           'name': name,
           'node_os_upgrade_channel': ?nodeOsUpgradeChannel,
           'node_resource_group': ?nodeResourceGroup,
           'oidc_issuer_enabled': ?oidcIssuerEnabled,
           'open_service_mesh_enabled': ?openServiceMeshEnabled,
           'private_cluster_enabled': ?privateClusterEnabled,
           'private_cluster_public_fqdn_enabled':
               ?privateClusterPublicFqdnEnabled,
           'private_dns_zone_id': ?privateDnsZoneId,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'role_based_access_control_enabled': ?roleBasedAccessControlEnabled,
           'run_command_enabled': ?runCommandEnabled,
           'sku_tier': ?skuTier,
           'support_plan': ?supportPlan,
           'tags': ?tags,
           'workload_identity_enabled': ?workloadIdentityEnabled,
           if (aciConnectorLinux != null)
             'aci_connector_linux': TfArg.literal(aciConnectorLinux.encode()),
           if (apiServerAccessProfile != null)
             'api_server_access_profile': TfArg.literal(
               apiServerAccessProfile.encode(),
             ),
           if (autoScalerProfile != null)
             'auto_scaler_profile': TfArg.literal(autoScalerProfile.encode()),
           if (azureActiveDirectoryRoleBasedAccessControl != null)
             'azure_active_directory_role_based_access_control': TfArg.literal(
               azureActiveDirectoryRoleBasedAccessControl.encode(),
             ),
           if (bootstrapProfile != null)
             'bootstrap_profile': TfArg.literal(bootstrapProfile.encode()),
           if (confidentialComputing != null)
             'confidential_computing': TfArg.literal(
               confidentialComputing.encode(),
             ),
           'default_node_pool': TfArg.literal(defaultNodePool.encode()),
           if (httpProxyConfig != null)
             'http_proxy_config': TfArg.literal(httpProxyConfig.encode()),
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
           if (ingressApplicationGateway != null)
             'ingress_application_gateway': TfArg.literal(
               ingressApplicationGateway.encode(),
             ),
           if (keyManagementService != null)
             'key_management_service': TfArg.literal(
               keyManagementService.encode(),
             ),
           if (keyVaultSecretsProvider != null)
             'key_vault_secrets_provider': TfArg.literal(
               keyVaultSecretsProvider.encode(),
             ),
           if (kubeletIdentity != null)
             'kubelet_identity': TfArg.literal(kubeletIdentity.encode()),
           if (linuxProfile != null)
             'linux_profile': TfArg.literal(linuxProfile.encode()),
           if (maintenanceWindow != null)
             'maintenance_window': TfArg.literal(maintenanceWindow.encode()),
           if (maintenanceWindowAutoUpgrade != null)
             'maintenance_window_auto_upgrade': TfArg.literal(
               maintenanceWindowAutoUpgrade.encode(),
             ),
           if (maintenanceWindowNodeOs != null)
             'maintenance_window_node_os': TfArg.literal(
               maintenanceWindowNodeOs.encode(),
             ),
           if (microsoftDefender != null)
             'microsoft_defender': TfArg.literal(microsoftDefender.encode()),
           if (monitorMetrics != null)
             'monitor_metrics': TfArg.literal(monitorMetrics.encode()),
           if (networkProfile != null)
             'network_profile': TfArg.literal(networkProfile.encode()),
           'node_provisioning_profile': TfArg.literal(
             nodeProvisioningProfile.encode(),
           ),
           if (omsAgent != null) 'oms_agent': TfArg.literal(omsAgent.encode()),
           if (serviceMeshProfile != null)
             'service_mesh_profile': TfArg.literal(serviceMeshProfile.encode()),
           if (servicePrincipal != null)
             'service_principal': TfArg.literal(servicePrincipal.encode()),
           if (storageProfile != null)
             'storage_profile': TfArg.literal(storageProfile.encode()),
           if (upgradeOverride != null)
             'upgrade_override': TfArg.literal(upgradeOverride.encode()),
           if (webAppRouting != null)
             'web_app_routing': TfArg.literal(webAppRouting.encode()),
           if (windowsProfile != null)
             'windows_profile': TfArg.literal(windowsProfile.encode()),
           if (workloadAutoscalerProfile != null)
             'workload_autoscaler_profile': TfArg.literal(
               workloadAutoscalerProfile.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermKubernetesClusterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermKubernetesCluster>`.
  RefTo<AzurermKubernetesCluster> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `current_kubernetes_version` attribute.
  TfRef<String> get currentKubernetesVersion =>
      TfRef.attribute<String>(this, 'current_kubernetes_version');

  /// Reference to `fqdn` attribute.
  TfRef<String> get fqdn => TfRef.attribute<String>(this, 'fqdn');

  /// Reference to `http_application_routing_zone_name` attribute.
  TfRef<String> get httpApplicationRoutingZoneName =>
      TfRef.attribute<String>(this, 'http_application_routing_zone_name');

  /// Reference to `kube_admin_config` attribute.
  TfRef<List<Map<String, Object?>>> get kubeAdminConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'kube_admin_config');

  /// Reference to `kube_admin_config_raw` attribute.
  TfRef<String> get kubeAdminConfigRaw =>
      TfRef.attribute<String>(this, 'kube_admin_config_raw');

  /// Reference to `kube_config` attribute.
  TfRef<List<Map<String, Object?>>> get kubeConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'kube_config');

  /// Reference to `kube_config_raw` attribute.
  TfRef<String> get kubeConfigRaw =>
      TfRef.attribute<String>(this, 'kube_config_raw');

  /// Reference to `node_resource_group_id` attribute.
  TfRef<String> get nodeResourceGroupId =>
      TfRef.attribute<String>(this, 'node_resource_group_id');

  /// Reference to `oidc_issuer_url` attribute.
  TfRef<String> get oidcIssuerUrl =>
      TfRef.attribute<String>(this, 'oidc_issuer_url');

  /// Reference to `portal_fqdn` attribute.
  TfRef<String> get portalFqdn => TfRef.attribute<String>(this, 'portal_fqdn');

  /// Reference to `private_fqdn` attribute.
  TfRef<String> get privateFqdn =>
      TfRef.attribute<String>(this, 'private_fqdn');

  /// Reference to `ai_toolchain_operator_enabled` attribute.
  TfRef<bool> get aiToolchainOperatorEnabled =>
      TfRef.attribute<bool>(this, 'ai_toolchain_operator_enabled');

  /// Reference to `automatic_upgrade_channel` attribute.
  TfRef<String> get automaticUpgradeChannel =>
      TfRef.attribute<String>(this, 'automatic_upgrade_channel');

  /// Reference to `azure_policy_enabled` attribute.
  TfRef<bool> get azurePolicyEnabled =>
      TfRef.attribute<bool>(this, 'azure_policy_enabled');

  /// Reference to `cost_analysis_enabled` attribute.
  TfRef<bool> get costAnalysisEnabled =>
      TfRef.attribute<bool>(this, 'cost_analysis_enabled');

  /// Reference to `custom_ca_trust_certificates_base64` attribute.
  TfRef<List<String>> get customCaTrustCertificatesBase64 =>
      TfRef.attribute<List<String>>(
        this,
        'custom_ca_trust_certificates_base64',
      );

  /// Reference to `disk_encryption_set_id` attribute.
  TfRef<String> get diskEncryptionSetId =>
      TfRef.attribute<String>(this, 'disk_encryption_set_id');

  /// Reference to `dns_prefix` attribute.
  TfRef<String> get dnsPrefix => TfRef.attribute<String>(this, 'dns_prefix');

  /// Reference to `dns_prefix_private_cluster` attribute.
  TfRef<String> get dnsPrefixPrivateCluster =>
      TfRef.attribute<String>(this, 'dns_prefix_private_cluster');

  /// Reference to `edge_zone` attribute.
  TfRef<String> get edgeZone => TfRef.attribute<String>(this, 'edge_zone');

  /// Reference to `http_application_routing_enabled` attribute.
  TfRef<bool> get httpApplicationRoutingEnabled =>
      TfRef.attribute<bool>(this, 'http_application_routing_enabled');

  /// Reference to `image_cleaner_enabled` attribute.
  TfRef<bool> get imageCleanerEnabled =>
      TfRef.attribute<bool>(this, 'image_cleaner_enabled');

  /// Reference to `image_cleaner_interval_hours` attribute.
  TfRef<num> get imageCleanerIntervalHours =>
      TfRef.attribute<num>(this, 'image_cleaner_interval_hours');

  /// Reference to `kubernetes_version` attribute.
  TfRef<String> get kubernetesVersion =>
      TfRef.attribute<String>(this, 'kubernetes_version');

  /// Reference to `local_account_disabled` attribute.
  TfRef<bool> get localAccountDisabled =>
      TfRef.attribute<bool>(this, 'local_account_disabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `node_os_upgrade_channel` attribute.
  TfRef<String> get nodeOsUpgradeChannel =>
      TfRef.attribute<String>(this, 'node_os_upgrade_channel');

  /// Reference to `node_resource_group` attribute.
  TfRef<String> get nodeResourceGroup =>
      TfRef.attribute<String>(this, 'node_resource_group');

  /// Reference to `oidc_issuer_enabled` attribute.
  TfRef<bool> get oidcIssuerEnabled =>
      TfRef.attribute<bool>(this, 'oidc_issuer_enabled');

  /// Reference to `open_service_mesh_enabled` attribute.
  TfRef<bool> get openServiceMeshEnabled =>
      TfRef.attribute<bool>(this, 'open_service_mesh_enabled');

  /// Reference to `private_cluster_enabled` attribute.
  TfRef<bool> get privateClusterEnabled =>
      TfRef.attribute<bool>(this, 'private_cluster_enabled');

  /// Reference to `private_cluster_public_fqdn_enabled` attribute.
  TfRef<bool> get privateClusterPublicFqdnEnabled =>
      TfRef.attribute<bool>(this, 'private_cluster_public_fqdn_enabled');

  /// Reference to `private_dns_zone_id` attribute.
  TfRef<String> get privateDnsZoneId =>
      TfRef.attribute<String>(this, 'private_dns_zone_id');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `role_based_access_control_enabled` attribute.
  TfRef<bool> get roleBasedAccessControlEnabled =>
      TfRef.attribute<bool>(this, 'role_based_access_control_enabled');

  /// Reference to `run_command_enabled` attribute.
  TfRef<bool> get runCommandEnabled =>
      TfRef.attribute<bool>(this, 'run_command_enabled');

  /// Reference to `sku_tier` attribute.
  TfRef<String> get skuTier => TfRef.attribute<String>(this, 'sku_tier');

  /// Reference to `support_plan` attribute.
  TfRef<String> get supportPlan =>
      TfRef.attribute<String>(this, 'support_plan');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `workload_identity_enabled` attribute.
  TfRef<bool> get workloadIdentityEnabled =>
      TfRef.attribute<bool>(this, 'workload_identity_enabled');
}
