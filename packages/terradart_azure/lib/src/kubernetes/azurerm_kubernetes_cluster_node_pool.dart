// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_kubernetes_cluster_node_pool`.
const Set<String> _azurermKubernetesClusterNodePoolSensitive = <String>{};

/// Typed helper for the `kubelet_config` block of
/// `azurerm_kubernetes_cluster_node_pool` (derived from provider schema).
@immutable
final class KubernetesClusterNodePoolKubeletConfig {
  const KubernetesClusterNodePoolKubeletConfig({
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

/// Typed helper for the `linux_os_config` block of
/// `azurerm_kubernetes_cluster_node_pool` (derived from provider schema).
@immutable
final class KubernetesClusterNodePoolLinuxOsConfig {
  const KubernetesClusterNodePoolLinuxOsConfig({
    this.swapFileSizeMb,
    this.transparentHugePage,
    this.transparentHugePageDefrag,
    this.sysctlConfig,
  });

  final TfArg<num>? swapFileSizeMb;

  final TfArg<String>? transparentHugePage;

  final TfArg<String>? transparentHugePageDefrag;

  final KubernetesClusterNodePoolSysctlConfig? sysctlConfig;

  @internal
  Map<String, Object?> encode() => {
    'swap_file_size_mb': ?swapFileSizeMb?.toTfJson(),
    'transparent_huge_page': ?transparentHugePage?.toTfJson(),
    'transparent_huge_page_defrag': ?transparentHugePageDefrag?.toTfJson(),
    'sysctl_config': ?sysctlConfig?.encode(),
  };
}

/// Typed helper for the `linux_os_config.sysctl_config` block of
/// `azurerm_kubernetes_cluster_node_pool` (derived from provider schema).
@immutable
final class KubernetesClusterNodePoolSysctlConfig {
  const KubernetesClusterNodePoolSysctlConfig({
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

/// Typed helper for the `node_network_profile` block of
/// `azurerm_kubernetes_cluster_node_pool` (derived from provider schema).
@immutable
final class KubernetesClusterNodePoolNodeNetworkProfile {
  const KubernetesClusterNodePoolNodeNetworkProfile({
    this.applicationSecurityGroupIds,
    this.nodePublicIpTags,
    this.allowedHostPorts,
  });

  final TfArg<List<String>>? applicationSecurityGroupIds;

  final TfArg<Map<String, String>>? nodePublicIpTags;

  final List<KubernetesClusterNodePoolAllowedHostPorts>? allowedHostPorts;

  @internal
  Map<String, Object?> encode() => {
    'application_security_group_ids': ?applicationSecurityGroupIds?.toTfJson(),
    'node_public_ip_tags': ?nodePublicIpTags?.toTfJson(),
    if (allowedHostPorts != null)
      'allowed_host_ports': [for (final e in allowedHostPorts!) e.encode()],
  };
}

/// Typed helper for the `node_network_profile.allowed_host_ports` block of
/// `azurerm_kubernetes_cluster_node_pool` (derived from provider schema).
@immutable
final class KubernetesClusterNodePoolAllowedHostPorts {
  const KubernetesClusterNodePoolAllowedHostPorts({
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

/// Typed helper for the `upgrade_settings` block of
/// `azurerm_kubernetes_cluster_node_pool` (derived from provider schema).
@immutable
final class KubernetesClusterNodePoolUpgradeSettings {
  const KubernetesClusterNodePoolUpgradeSettings({
    this.drainTimeoutInMinutes,
    this.maxSurge,
    this.maxUnavailable,
    this.nodeSoakDurationInMinutes,
    this.undrainableNodeBehavior,
  });

  final TfArg<num>? drainTimeoutInMinutes;

  final TfArg<String>? maxSurge;

  final TfArg<String>? maxUnavailable;

  final TfArg<num>? nodeSoakDurationInMinutes;

  final TfArg<String>? undrainableNodeBehavior;

  @internal
  Map<String, Object?> encode() => {
    'drain_timeout_in_minutes': ?drainTimeoutInMinutes?.toTfJson(),
    'max_surge': ?maxSurge?.toTfJson(),
    'max_unavailable': ?maxUnavailable?.toTfJson(),
    'node_soak_duration_in_minutes': ?nodeSoakDurationInMinutes?.toTfJson(),
    'undrainable_node_behavior': ?undrainableNodeBehavior?.toTfJson(),
  };
}

/// Typed helper for the `windows_profile` block of
/// `azurerm_kubernetes_cluster_node_pool` (derived from provider schema).
@immutable
final class KubernetesClusterNodePoolWindowsProfile {
  const KubernetesClusterNodePoolWindowsProfile({this.outboundNatEnabled});

  final TfArg<bool>? outboundNatEnabled;

  @internal
  Map<String, Object?> encode() => {
    'outbound_nat_enabled': ?outboundNatEnabled?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_kubernetes_cluster_node_pool`.
final class AzurermKubernetesClusterNodePool extends Resource {
  static const String tfType = 'azurerm_kubernetes_cluster_node_pool';

  AzurermKubernetesClusterNodePool(
    super.localName, {
    TfArg<bool>? autoScalingEnabled,
    TfArg<String>? capacityReservationGroupId,
    TfArg<String>? evictionPolicy,
    TfArg<bool>? fipsEnabled,
    TfArg<String>? gpuDriver,
    TfArg<String>? gpuInstance,
    TfArg<bool>? hostEncryptionEnabled,
    TfArg<String>? hostGroupId,
    TfArg<String>? kubeletDiskType,
    required TfArg<String> kubernetesClusterId,
    TfArg<num>? maxCount,
    TfArg<num>? maxPods,
    TfArg<num>? minCount,
    TfArg<String>? mode,
    required TfArg<String> name,
    TfArg<num>? nodeCount,
    TfArg<Map<String, String>>? nodeLabels,
    TfArg<bool>? nodePublicIpEnabled,
    TfArg<String>? nodePublicIpPrefixId,
    TfArg<List<String>>? nodeTaints,
    TfArg<String>? orchestratorVersion,
    TfArg<num>? osDiskSizeGb,
    TfArg<String>? osDiskType,
    TfArg<String>? osSku,
    TfArg<String>? osType,
    TfArg<String>? podSubnetId,
    TfArg<String>? priority,
    TfArg<String>? proximityPlacementGroupId,
    TfArg<String>? scaleDownMode,
    TfArg<String>? snapshotId,
    TfArg<num>? spotMaxPrice,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? temporaryNameForRotation,
    TfArg<bool>? ultraSsdEnabled,
    TfArg<String>? vmSize,
    TfArg<String>? vnetSubnetId,
    TfArg<String>? workloadRuntime,
    TfArg<List<String>>? zones,
    KubernetesClusterNodePoolKubeletConfig? kubeletConfig,
    KubernetesClusterNodePoolLinuxOsConfig? linuxOsConfig,
    KubernetesClusterNodePoolNodeNetworkProfile? nodeNetworkProfile,
    KubernetesClusterNodePoolUpgradeSettings? upgradeSettings,
    KubernetesClusterNodePoolWindowsProfile? windowsProfile,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'auto_scaling_enabled': ?autoScalingEnabled,
           'capacity_reservation_group_id': ?capacityReservationGroupId,
           'eviction_policy': ?evictionPolicy,
           'fips_enabled': ?fipsEnabled,
           'gpu_driver': ?gpuDriver,
           'gpu_instance': ?gpuInstance,
           'host_encryption_enabled': ?hostEncryptionEnabled,
           'host_group_id': ?hostGroupId,
           'kubelet_disk_type': ?kubeletDiskType,
           'kubernetes_cluster_id': kubernetesClusterId,
           'max_count': ?maxCount,
           'max_pods': ?maxPods,
           'min_count': ?minCount,
           'mode': ?mode,
           'name': name,
           'node_count': ?nodeCount,
           'node_labels': ?nodeLabels,
           'node_public_ip_enabled': ?nodePublicIpEnabled,
           'node_public_ip_prefix_id': ?nodePublicIpPrefixId,
           'node_taints': ?nodeTaints,
           'orchestrator_version': ?orchestratorVersion,
           'os_disk_size_gb': ?osDiskSizeGb,
           'os_disk_type': ?osDiskType,
           'os_sku': ?osSku,
           'os_type': ?osType,
           'pod_subnet_id': ?podSubnetId,
           'priority': ?priority,
           'proximity_placement_group_id': ?proximityPlacementGroupId,
           'scale_down_mode': ?scaleDownMode,
           'snapshot_id': ?snapshotId,
           'spot_max_price': ?spotMaxPrice,
           'tags': ?tags,
           'temporary_name_for_rotation': ?temporaryNameForRotation,
           'ultra_ssd_enabled': ?ultraSsdEnabled,
           'vm_size': ?vmSize,
           'vnet_subnet_id': ?vnetSubnetId,
           'workload_runtime': ?workloadRuntime,
           'zones': ?zones,
           if (kubeletConfig != null)
             'kubelet_config': TfArg.literal(kubeletConfig.encode()),
           if (linuxOsConfig != null)
             'linux_os_config': TfArg.literal(linuxOsConfig.encode()),
           if (nodeNetworkProfile != null)
             'node_network_profile': TfArg.literal(nodeNetworkProfile.encode()),
           if (upgradeSettings != null)
             'upgrade_settings': TfArg.literal(upgradeSettings.encode()),
           if (windowsProfile != null)
             'windows_profile': TfArg.literal(windowsProfile.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermKubernetesClusterNodePoolSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermKubernetesClusterNodePool>`.
  RefTo<AzurermKubernetesClusterNodePool> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `node_image_version` attribute.
  TfRef<String> get nodeImageVersion =>
      TfRef.attribute<String>(this, 'node_image_version');

  /// Reference to `auto_scaling_enabled` attribute.
  TfRef<bool> get autoScalingEnabled =>
      TfRef.attribute<bool>(this, 'auto_scaling_enabled');

  /// Reference to `capacity_reservation_group_id` attribute.
  TfRef<String> get capacityReservationGroupId =>
      TfRef.attribute<String>(this, 'capacity_reservation_group_id');

  /// Reference to `eviction_policy` attribute.
  TfRef<String> get evictionPolicy =>
      TfRef.attribute<String>(this, 'eviction_policy');

  /// Reference to `fips_enabled` attribute.
  TfRef<bool> get fipsEnabled => TfRef.attribute<bool>(this, 'fips_enabled');

  /// Reference to `gpu_driver` attribute.
  TfRef<String> get gpuDriver => TfRef.attribute<String>(this, 'gpu_driver');

  /// Reference to `gpu_instance` attribute.
  TfRef<String> get gpuInstance =>
      TfRef.attribute<String>(this, 'gpu_instance');

  /// Reference to `host_encryption_enabled` attribute.
  TfRef<bool> get hostEncryptionEnabled =>
      TfRef.attribute<bool>(this, 'host_encryption_enabled');

  /// Reference to `host_group_id` attribute.
  TfRef<String> get hostGroupId =>
      TfRef.attribute<String>(this, 'host_group_id');

  /// Reference to `kubelet_disk_type` attribute.
  TfRef<String> get kubeletDiskType =>
      TfRef.attribute<String>(this, 'kubelet_disk_type');

  /// Reference to `kubernetes_cluster_id` attribute.
  TfRef<String> get kubernetesClusterId =>
      TfRef.attribute<String>(this, 'kubernetes_cluster_id');

  /// Reference to `max_count` attribute.
  TfRef<num> get maxCount => TfRef.attribute<num>(this, 'max_count');

  /// Reference to `max_pods` attribute.
  TfRef<num> get maxPods => TfRef.attribute<num>(this, 'max_pods');

  /// Reference to `min_count` attribute.
  TfRef<num> get minCount => TfRef.attribute<num>(this, 'min_count');

  /// Reference to `mode` attribute.
  TfRef<String> get mode => TfRef.attribute<String>(this, 'mode');

  /// Reference to `node_count` attribute.
  TfRef<num> get nodeCount => TfRef.attribute<num>(this, 'node_count');

  /// Reference to `node_labels` attribute.
  TfRef<Map<String, String>> get nodeLabels =>
      TfRef.attribute<Map<String, String>>(this, 'node_labels');

  /// Reference to `node_public_ip_enabled` attribute.
  TfRef<bool> get nodePublicIpEnabled =>
      TfRef.attribute<bool>(this, 'node_public_ip_enabled');

  /// Reference to `node_public_ip_prefix_id` attribute.
  TfRef<String> get nodePublicIpPrefixId =>
      TfRef.attribute<String>(this, 'node_public_ip_prefix_id');

  /// Reference to `node_taints` attribute.
  TfRef<List<String>> get nodeTaints =>
      TfRef.attribute<List<String>>(this, 'node_taints');

  /// Reference to `orchestrator_version` attribute.
  TfRef<String> get orchestratorVersion =>
      TfRef.attribute<String>(this, 'orchestrator_version');

  /// Reference to `os_disk_size_gb` attribute.
  TfRef<num> get osDiskSizeGb => TfRef.attribute<num>(this, 'os_disk_size_gb');

  /// Reference to `os_disk_type` attribute.
  TfRef<String> get osDiskType => TfRef.attribute<String>(this, 'os_disk_type');

  /// Reference to `os_sku` attribute.
  TfRef<String> get osSku => TfRef.attribute<String>(this, 'os_sku');

  /// Reference to `os_type` attribute.
  TfRef<String> get osType => TfRef.attribute<String>(this, 'os_type');

  /// Reference to `pod_subnet_id` attribute.
  TfRef<String> get podSubnetId =>
      TfRef.attribute<String>(this, 'pod_subnet_id');

  /// Reference to `priority` attribute.
  TfRef<String> get priority => TfRef.attribute<String>(this, 'priority');

  /// Reference to `proximity_placement_group_id` attribute.
  TfRef<String> get proximityPlacementGroupId =>
      TfRef.attribute<String>(this, 'proximity_placement_group_id');

  /// Reference to `scale_down_mode` attribute.
  TfRef<String> get scaleDownMode =>
      TfRef.attribute<String>(this, 'scale_down_mode');

  /// Reference to `snapshot_id` attribute.
  TfRef<String> get snapshotId => TfRef.attribute<String>(this, 'snapshot_id');

  /// Reference to `spot_max_price` attribute.
  TfRef<num> get spotMaxPrice => TfRef.attribute<num>(this, 'spot_max_price');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `temporary_name_for_rotation` attribute.
  TfRef<String> get temporaryNameForRotation =>
      TfRef.attribute<String>(this, 'temporary_name_for_rotation');

  /// Reference to `ultra_ssd_enabled` attribute.
  TfRef<bool> get ultraSsdEnabled =>
      TfRef.attribute<bool>(this, 'ultra_ssd_enabled');

  /// Reference to `vm_size` attribute.
  TfRef<String> get vmSize => TfRef.attribute<String>(this, 'vm_size');

  /// Reference to `vnet_subnet_id` attribute.
  TfRef<String> get vnetSubnetId =>
      TfRef.attribute<String>(this, 'vnet_subnet_id');

  /// Reference to `workload_runtime` attribute.
  TfRef<String> get workloadRuntime =>
      TfRef.attribute<String>(this, 'workload_runtime');

  /// Reference to `zones` attribute.
  TfRef<List<String>> get zones => TfRef.attribute<List<String>>(this, 'zones');
}
