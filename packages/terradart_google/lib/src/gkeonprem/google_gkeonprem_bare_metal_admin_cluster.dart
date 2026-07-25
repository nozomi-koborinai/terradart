// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_gkeonprem_bare_metal_admin_cluster`.
const Set<String> _googleGkeonpremBareMetalAdminClusterSensitive = <String>{};

/// Gkeonprem Bare Metal Admin Cluster enum for `state`.
enum GkeonpremBareMetalAdminClusterState implements TerraformEnum {
  stateUnspecified('STATE_UNSPECIFIED'),
  provisioning('PROVISIONING'),
  running('RUNNING'),
  reconciling('RECONCILING'),
  stopping('STOPPING'),
  error('ERROR'),
  degraded('DEGRADED');

  const GkeonpremBareMetalAdminClusterState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `cluster_operations` block of
/// `google_gkeonprem_bare_metal_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalAdminClusterClusterOperations {
  const GkeonpremBareMetalAdminClusterClusterOperations({
    this.enableApplicationLogs,
  });

  final TfArg<bool>? enableApplicationLogs;

  Map<String, Object?> encode() => {
    if (enableApplicationLogs != null)
      'enable_application_logs': enableApplicationLogs!.toTfJson(),
  };
}

/// Typed helper for the `control_plane` block of
/// `google_gkeonprem_bare_metal_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalAdminClusterControlPlane {
  const GkeonpremBareMetalAdminClusterControlPlane({
    this.apiServerArgs,
    required this.controlPlaneNodePoolConfig,
  });

  final List<GkeonpremBareMetalAdminClusterControlPlaneApiServerArgs>?
  apiServerArgs;

  final GkeonpremBareMetalAdminClusterControlPlaneControlPlaneNodePoolConfig
  controlPlaneNodePoolConfig;

  Map<String, Object?> encode() => {
    if (apiServerArgs != null)
      'api_server_args': [for (final e in apiServerArgs!) e.encode()],
    'control_plane_node_pool_config': controlPlaneNodePoolConfig.encode(),
  };
}

/// Typed helper for the `control_plane.api_server_args` block of
/// `google_gkeonprem_bare_metal_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalAdminClusterControlPlaneApiServerArgs {
  const GkeonpremBareMetalAdminClusterControlPlaneApiServerArgs({
    required this.argument,
    required this.value,
  });

  final TfArg<String> argument;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'argument': argument.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `control_plane.control_plane_node_pool_config` block of
/// `google_gkeonprem_bare_metal_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalAdminClusterControlPlaneControlPlaneNodePoolConfig {
  const GkeonpremBareMetalAdminClusterControlPlaneControlPlaneNodePoolConfig({
    required this.nodePoolConfig,
  });

  final GkeonpremBareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfig
  nodePoolConfig;

  Map<String, Object?> encode() => {
    'node_pool_config': nodePoolConfig.encode(),
  };
}

/// Typed helper for the `control_plane.control_plane_node_pool_config.node_pool_config` block of
/// `google_gkeonprem_bare_metal_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfig {
  const GkeonpremBareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfig({
    this.labels,
    this.operatingSystem,
    this.nodeConfigs,
    this.taints,
  });

  final TfArg<Map<String, String>>? labels;

  final TfArg<String>? operatingSystem;

  final List<
    GkeonpremBareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigNodeConfigs
  >?
  nodeConfigs;

  final List<
    GkeonpremBareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigTaints
  >?
  taints;

  Map<String, Object?> encode() => {
    if (labels != null) 'labels': labels!.toTfJson(),
    if (operatingSystem != null)
      'operating_system': operatingSystem!.toTfJson(),
    if (nodeConfigs != null)
      'node_configs': [for (final e in nodeConfigs!) e.encode()],
    if (taints != null) 'taints': [for (final e in taints!) e.encode()],
  };
}

/// Typed helper for the `control_plane.control_plane_node_pool_config.node_pool_config.node_configs` block of
/// `google_gkeonprem_bare_metal_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigNodeConfigs {
  const GkeonpremBareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigNodeConfigs({
    this.labels,
    this.nodeIp,
  });

  final TfArg<Map<String, String>>? labels;

  final TfArg<String>? nodeIp;

  Map<String, Object?> encode() => {
    if (labels != null) 'labels': labels!.toTfJson(),
    if (nodeIp != null) 'node_ip': nodeIp!.toTfJson(),
  };
}

/// Typed helper for the `control_plane.control_plane_node_pool_config.node_pool_config.taints` block of
/// `google_gkeonprem_bare_metal_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigTaints {
  const GkeonpremBareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigTaints({
    this.effect,
    this.key,
    this.value,
  });

  final TfArg<
    GkeonpremBareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigTaintsEffect
  >?
  effect;

  final TfArg<String>? key;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    if (effect != null) 'effect': effect!.toTfJson(),
    if (key != null) 'key': key!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// `effect` — derived from the provider schema description.
enum GkeonpremBareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigTaintsEffect
    implements TerraformEnum {
  effectUnspecified('EFFECT_UNSPECIFIED'),
  preferNoSchedule('PREFER_NO_SCHEDULE'),
  noExecute('NO_EXECUTE');

  const GkeonpremBareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigTaintsEffect(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `load_balancer` block of
/// `google_gkeonprem_bare_metal_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalAdminClusterLoadBalancer {
  const GkeonpremBareMetalAdminClusterLoadBalancer({
    this.bgpLbConfig,
    this.manualLbConfig,
    required this.portConfig,
    required this.vipConfig,
  });

  final GkeonpremBareMetalAdminClusterLoadBalancerBgpLbConfig? bgpLbConfig;

  final GkeonpremBareMetalAdminClusterLoadBalancerManualLbConfig?
  manualLbConfig;

  final GkeonpremBareMetalAdminClusterLoadBalancerPortConfig portConfig;

  final GkeonpremBareMetalAdminClusterLoadBalancerVipConfig vipConfig;

  Map<String, Object?> encode() => {
    if (bgpLbConfig != null) 'bgp_lb_config': bgpLbConfig!.encode(),
    if (manualLbConfig != null) 'manual_lb_config': manualLbConfig!.encode(),
    'port_config': portConfig.encode(),
    'vip_config': vipConfig.encode(),
  };
}

/// Typed helper for the `load_balancer.bgp_lb_config` block of
/// `google_gkeonprem_bare_metal_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalAdminClusterLoadBalancerBgpLbConfig {
  const GkeonpremBareMetalAdminClusterLoadBalancerBgpLbConfig({
    this.asn,
    this.addressPools,
    this.bgpPeerConfigs,
    this.loadBalancerNodePoolConfig,
  });

  final TfArg<num>? asn;

  final List<GkeonpremBareMetalAdminClusterLoadBalancerBgpLbConfigAddressPools>?
  addressPools;

  final List<
    GkeonpremBareMetalAdminClusterLoadBalancerBgpLbConfigBgpPeerConfigs
  >?
  bgpPeerConfigs;

  final GkeonpremBareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfig?
  loadBalancerNodePoolConfig;

  Map<String, Object?> encode() => {
    if (asn != null) 'asn': asn!.toTfJson(),
    if (addressPools != null)
      'address_pools': [for (final e in addressPools!) e.encode()],
    if (bgpPeerConfigs != null)
      'bgp_peer_configs': [for (final e in bgpPeerConfigs!) e.encode()],
    if (loadBalancerNodePoolConfig != null)
      'load_balancer_node_pool_config': loadBalancerNodePoolConfig!.encode(),
  };
}

/// Typed helper for the `load_balancer.bgp_lb_config.address_pools` block of
/// `google_gkeonprem_bare_metal_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalAdminClusterLoadBalancerBgpLbConfigAddressPools {
  const GkeonpremBareMetalAdminClusterLoadBalancerBgpLbConfigAddressPools({
    this.addresses,
    this.avoidBuggyIps,
    this.manualAssign,
    this.pool,
  });

  final TfArg<List<Object?>>? addresses;

  final TfArg<bool>? avoidBuggyIps;

  final TfArg<bool>? manualAssign;

  final TfArg<String>? pool;

  Map<String, Object?> encode() => {
    if (addresses != null) 'addresses': addresses!.toTfJson(),
    if (avoidBuggyIps != null) 'avoid_buggy_ips': avoidBuggyIps!.toTfJson(),
    if (manualAssign != null) 'manual_assign': manualAssign!.toTfJson(),
    if (pool != null) 'pool': pool!.toTfJson(),
  };
}

/// Typed helper for the `load_balancer.bgp_lb_config.bgp_peer_configs` block of
/// `google_gkeonprem_bare_metal_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalAdminClusterLoadBalancerBgpLbConfigBgpPeerConfigs {
  const GkeonpremBareMetalAdminClusterLoadBalancerBgpLbConfigBgpPeerConfigs({
    this.asn,
    this.controlPlaneNodes,
    this.ipAddress,
  });

  final TfArg<num>? asn;

  final TfArg<List<Object?>>? controlPlaneNodes;

  final TfArg<String>? ipAddress;

  Map<String, Object?> encode() => {
    if (asn != null) 'asn': asn!.toTfJson(),
    if (controlPlaneNodes != null)
      'control_plane_nodes': controlPlaneNodes!.toTfJson(),
    if (ipAddress != null) 'ip_address': ipAddress!.toTfJson(),
  };
}

/// Typed helper for the `load_balancer.bgp_lb_config.load_balancer_node_pool_config` block of
/// `google_gkeonprem_bare_metal_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfig {
  const GkeonpremBareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfig({
    this.nodePoolConfig,
  });

  final GkeonpremBareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfig?
  nodePoolConfig;

  Map<String, Object?> encode() => {
    if (nodePoolConfig != null) 'node_pool_config': nodePoolConfig!.encode(),
  };
}

/// Typed helper for the `load_balancer.bgp_lb_config.load_balancer_node_pool_config.node_pool_config` block of
/// `google_gkeonprem_bare_metal_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfig {
  const GkeonpremBareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfig({
    this.labels,
    this.operatingSystem,
    this.kubeletConfig,
    this.nodeConfigs,
    this.taints,
  });

  final TfArg<Map<String, String>>? labels;

  final TfArg<String>? operatingSystem;

  final GkeonpremBareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigKubeletConfig?
  kubeletConfig;

  final List<
    GkeonpremBareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigNodeConfigs
  >?
  nodeConfigs;

  final List<
    GkeonpremBareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigTaints
  >?
  taints;

  Map<String, Object?> encode() => {
    if (labels != null) 'labels': labels!.toTfJson(),
    if (operatingSystem != null)
      'operating_system': operatingSystem!.toTfJson(),
    if (kubeletConfig != null) 'kubelet_config': kubeletConfig!.encode(),
    if (nodeConfigs != null)
      'node_configs': [for (final e in nodeConfigs!) e.encode()],
    if (taints != null) 'taints': [for (final e in taints!) e.encode()],
  };
}

/// Typed helper for the `load_balancer.bgp_lb_config.load_balancer_node_pool_config.node_pool_config.kubelet_config` block of
/// `google_gkeonprem_bare_metal_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigKubeletConfig {
  const GkeonpremBareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigKubeletConfig({
    this.registryBurst,
    this.registryPullQps,
    this.serializeImagePullsDisabled,
  });

  final TfArg<num>? registryBurst;

  final TfArg<num>? registryPullQps;

  final TfArg<bool>? serializeImagePullsDisabled;

  Map<String, Object?> encode() => {
    if (registryBurst != null) 'registry_burst': registryBurst!.toTfJson(),
    if (registryPullQps != null)
      'registry_pull_qps': registryPullQps!.toTfJson(),
    if (serializeImagePullsDisabled != null)
      'serialize_image_pulls_disabled': serializeImagePullsDisabled!.toTfJson(),
  };
}

/// Typed helper for the `load_balancer.bgp_lb_config.load_balancer_node_pool_config.node_pool_config.node_configs` block of
/// `google_gkeonprem_bare_metal_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigNodeConfigs {
  const GkeonpremBareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigNodeConfigs({
    this.labels,
    this.nodeIp,
  });

  final TfArg<Map<String, String>>? labels;

  final TfArg<String>? nodeIp;

  Map<String, Object?> encode() => {
    if (labels != null) 'labels': labels!.toTfJson(),
    if (nodeIp != null) 'node_ip': nodeIp!.toTfJson(),
  };
}

/// Typed helper for the `load_balancer.bgp_lb_config.load_balancer_node_pool_config.node_pool_config.taints` block of
/// `google_gkeonprem_bare_metal_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigTaints {
  const GkeonpremBareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigTaints({
    this.effect,
    this.key,
    this.value,
  });

  final TfArg<String>? effect;

  final TfArg<String>? key;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    if (effect != null) 'effect': effect!.toTfJson(),
    if (key != null) 'key': key!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Typed helper for the `load_balancer.manual_lb_config` block of
/// `google_gkeonprem_bare_metal_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalAdminClusterLoadBalancerManualLbConfig {
  const GkeonpremBareMetalAdminClusterLoadBalancerManualLbConfig({
    required this.enabled,
  });

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `load_balancer.port_config` block of
/// `google_gkeonprem_bare_metal_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalAdminClusterLoadBalancerPortConfig {
  const GkeonpremBareMetalAdminClusterLoadBalancerPortConfig({
    required this.controlPlaneLoadBalancerPort,
  });

  final TfArg<num> controlPlaneLoadBalancerPort;

  Map<String, Object?> encode() => {
    'control_plane_load_balancer_port': controlPlaneLoadBalancerPort.toTfJson(),
  };
}

/// Typed helper for the `load_balancer.vip_config` block of
/// `google_gkeonprem_bare_metal_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalAdminClusterLoadBalancerVipConfig {
  const GkeonpremBareMetalAdminClusterLoadBalancerVipConfig({
    required this.controlPlaneVip,
  });

  final TfArg<String> controlPlaneVip;

  Map<String, Object?> encode() => {
    'control_plane_vip': controlPlaneVip.toTfJson(),
  };
}

/// Typed helper for the `maintenance_config` block of
/// `google_gkeonprem_bare_metal_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalAdminClusterMaintenanceConfig {
  const GkeonpremBareMetalAdminClusterMaintenanceConfig({
    required this.maintenanceAddressCidrBlocks,
  });

  final TfArg<List<Object?>> maintenanceAddressCidrBlocks;

  Map<String, Object?> encode() => {
    'maintenance_address_cidr_blocks': maintenanceAddressCidrBlocks.toTfJson(),
  };
}

/// Typed helper for the `network_config` block of
/// `google_gkeonprem_bare_metal_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalAdminClusterNetworkConfig {
  const GkeonpremBareMetalAdminClusterNetworkConfig({
    this.advancedNetworking,
    this.islandModeCidr,
    this.multipleNetworkInterfacesConfig,
  });

  final TfArg<bool>? advancedNetworking;

  final GkeonpremBareMetalAdminClusterNetworkConfigIslandModeCidr?
  islandModeCidr;

  final GkeonpremBareMetalAdminClusterNetworkConfigMultipleNetworkInterfacesConfig?
  multipleNetworkInterfacesConfig;

  Map<String, Object?> encode() => {
    if (advancedNetworking != null)
      'advanced_networking': advancedNetworking!.toTfJson(),
    if (islandModeCidr != null) 'island_mode_cidr': islandModeCidr!.encode(),
    if (multipleNetworkInterfacesConfig != null)
      'multiple_network_interfaces_config': multipleNetworkInterfacesConfig!
          .encode(),
  };
}

/// Typed helper for the `network_config.island_mode_cidr` block of
/// `google_gkeonprem_bare_metal_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalAdminClusterNetworkConfigIslandModeCidr {
  const GkeonpremBareMetalAdminClusterNetworkConfigIslandModeCidr({
    required this.podAddressCidrBlocks,
    required this.serviceAddressCidrBlocks,
  });

  final TfArg<List<Object?>> podAddressCidrBlocks;

  final TfArg<List<Object?>> serviceAddressCidrBlocks;

  Map<String, Object?> encode() => {
    'pod_address_cidr_blocks': podAddressCidrBlocks.toTfJson(),
    'service_address_cidr_blocks': serviceAddressCidrBlocks.toTfJson(),
  };
}

/// Typed helper for the `network_config.multiple_network_interfaces_config` block of
/// `google_gkeonprem_bare_metal_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalAdminClusterNetworkConfigMultipleNetworkInterfacesConfig {
  const GkeonpremBareMetalAdminClusterNetworkConfigMultipleNetworkInterfacesConfig({
    this.enabled,
  });

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
  };
}

/// Typed helper for the `node_access_config` block of
/// `google_gkeonprem_bare_metal_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalAdminClusterNodeAccessConfig {
  const GkeonpremBareMetalAdminClusterNodeAccessConfig({this.loginUser});

  final TfArg<String>? loginUser;

  Map<String, Object?> encode() => {
    if (loginUser != null) 'login_user': loginUser!.toTfJson(),
  };
}

/// Typed helper for the `node_config` block of
/// `google_gkeonprem_bare_metal_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalAdminClusterNodeConfig {
  const GkeonpremBareMetalAdminClusterNodeConfig({this.maxPodsPerNode});

  final TfArg<num>? maxPodsPerNode;

  Map<String, Object?> encode() => {
    if (maxPodsPerNode != null) 'max_pods_per_node': maxPodsPerNode!.toTfJson(),
  };
}

/// Typed helper for the `proxy` block of
/// `google_gkeonprem_bare_metal_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalAdminClusterProxy {
  const GkeonpremBareMetalAdminClusterProxy({this.noProxy, required this.uri});

  final TfArg<List<Object?>>? noProxy;

  final TfArg<String> uri;

  Map<String, Object?> encode() => {
    if (noProxy != null) 'no_proxy': noProxy!.toTfJson(),
    'uri': uri.toTfJson(),
  };
}

/// Typed helper for the `security_config` block of
/// `google_gkeonprem_bare_metal_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalAdminClusterSecurityConfig {
  const GkeonpremBareMetalAdminClusterSecurityConfig({this.authorization});

  final GkeonpremBareMetalAdminClusterSecurityConfigAuthorization?
  authorization;

  Map<String, Object?> encode() => {
    if (authorization != null) 'authorization': authorization!.encode(),
  };
}

/// Typed helper for the `security_config.authorization` block of
/// `google_gkeonprem_bare_metal_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalAdminClusterSecurityConfigAuthorization {
  const GkeonpremBareMetalAdminClusterSecurityConfigAuthorization({
    required this.adminUsers,
  });

  final List<
    GkeonpremBareMetalAdminClusterSecurityConfigAuthorizationAdminUsers
  >
  adminUsers;

  Map<String, Object?> encode() => {
    'admin_users': [for (final e in adminUsers) e.encode()],
  };
}

/// Typed helper for the `security_config.authorization.admin_users` block of
/// `google_gkeonprem_bare_metal_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalAdminClusterSecurityConfigAuthorizationAdminUsers {
  const GkeonpremBareMetalAdminClusterSecurityConfigAuthorizationAdminUsers({
    required this.username,
  });

  final TfArg<String> username;

  Map<String, Object?> encode() => {'username': username.toTfJson()};
}

/// Typed helper for the `storage` block of
/// `google_gkeonprem_bare_metal_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalAdminClusterStorage {
  const GkeonpremBareMetalAdminClusterStorage({
    required this.lvpNodeMountsConfig,
    required this.lvpShareConfig,
  });

  final GkeonpremBareMetalAdminClusterStorageLvpNodeMountsConfig
  lvpNodeMountsConfig;

  final GkeonpremBareMetalAdminClusterStorageLvpShareConfig lvpShareConfig;

  Map<String, Object?> encode() => {
    'lvp_node_mounts_config': lvpNodeMountsConfig.encode(),
    'lvp_share_config': lvpShareConfig.encode(),
  };
}

/// Typed helper for the `storage.lvp_node_mounts_config` block of
/// `google_gkeonprem_bare_metal_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalAdminClusterStorageLvpNodeMountsConfig {
  const GkeonpremBareMetalAdminClusterStorageLvpNodeMountsConfig({
    required this.path,
    required this.storageClass,
  });

  final TfArg<String> path;

  final TfArg<String> storageClass;

  Map<String, Object?> encode() => {
    'path': path.toTfJson(),
    'storage_class': storageClass.toTfJson(),
  };
}

/// Typed helper for the `storage.lvp_share_config` block of
/// `google_gkeonprem_bare_metal_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalAdminClusterStorageLvpShareConfig {
  const GkeonpremBareMetalAdminClusterStorageLvpShareConfig({
    this.sharedPathPvCount,
    required this.lvpConfig,
  });

  final TfArg<num>? sharedPathPvCount;

  final GkeonpremBareMetalAdminClusterStorageLvpShareConfigLvpConfig lvpConfig;

  Map<String, Object?> encode() => {
    if (sharedPathPvCount != null)
      'shared_path_pv_count': sharedPathPvCount!.toTfJson(),
    'lvp_config': lvpConfig.encode(),
  };
}

/// Typed helper for the `storage.lvp_share_config.lvp_config` block of
/// `google_gkeonprem_bare_metal_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalAdminClusterStorageLvpShareConfigLvpConfig {
  const GkeonpremBareMetalAdminClusterStorageLvpShareConfigLvpConfig({
    required this.path,
    required this.storageClass,
  });

  final TfArg<String> path;

  final TfArg<String> storageClass;

  Map<String, Object?> encode() => {
    'path': path.toTfJson(),
    'storage_class': storageClass.toTfJson(),
  };
}

/// Factory wrapper for `google_gkeonprem_bare_metal_admin_cluster`.
///
/// A Google Bare Metal Admin Cluster.
///
/// GKE on-prem / GDC **bare metal admin cluster** — bootstrap admin cluster
/// for bare-metal user clusters.
///
/// **Cost / apply:** gcp-cost: GKE Enterprise / GDC `9186-F79E-3871` Bare
/// Metal SKU `297F-4642-B7A1` **$0.03288/h** (vSphere `82D9-AB10-CA55`
/// **$0.03288/h**). billing-behavior: GDC platform fees while clusters are
/// registered; requires physical bare-metal hardware absent on
/// `terradart-validate`. **Never** wire into apply-smoke.
///
/// Enable `gkeonprem.googleapis.com` before apply.
final class GoogleGkeonpremBareMetalAdminCluster extends Resource {
  static const String tfType = 'google_gkeonprem_bare_metal_admin_cluster';

  GoogleGkeonpremBareMetalAdminCluster({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    TfArg<String>? bareMetalVersion,
    TfArg<String>? description,
    GkeonpremBareMetalAdminClusterNetworkConfig? networkConfig,
    GkeonpremBareMetalAdminClusterControlPlane? controlPlane,
    GkeonpremBareMetalAdminClusterLoadBalancer? loadBalancer,
    GkeonpremBareMetalAdminClusterStorage? storage,
    GkeonpremBareMetalAdminClusterNodeConfig? nodeConfig,
    GkeonpremBareMetalAdminClusterNodeAccessConfig? nodeAccessConfig,
    GkeonpremBareMetalAdminClusterSecurityConfig? securityConfig,
    GkeonpremBareMetalAdminClusterMaintenanceConfig? maintenanceConfig,
    GkeonpremBareMetalAdminClusterClusterOperations? clusterOperations,
    GkeonpremBareMetalAdminClusterProxy? proxy,
    TfArg<Map<String, String>>? annotations,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           if (bareMetalVersion != null) 'bare_metal_version': bareMetalVersion,
           if (description != null) 'description': description,
           if (networkConfig != null)
             'network_config': TfArg.literal(networkConfig.encode()),
           if (controlPlane != null)
             'control_plane': TfArg.literal(controlPlane.encode()),
           if (loadBalancer != null)
             'load_balancer': TfArg.literal(loadBalancer.encode()),
           if (storage != null) 'storage': TfArg.literal(storage.encode()),
           if (nodeConfig != null)
             'node_config': TfArg.literal(nodeConfig.encode()),
           if (nodeAccessConfig != null)
             'node_access_config': TfArg.literal(nodeAccessConfig.encode()),
           if (securityConfig != null)
             'security_config': TfArg.literal(securityConfig.encode()),
           if (maintenanceConfig != null)
             'maintenance_config': TfArg.literal(maintenanceConfig.encode()),
           if (clusterOperations != null)
             'cluster_operations': TfArg.literal(clusterOperations.encode()),
           if (proxy != null) 'proxy': TfArg.literal(proxy.encode()),
           if (annotations != null) 'annotations': annotations,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleGkeonpremBareMetalAdminClusterSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `delete_time` attribute.
  TfRef<String> get deleteTime => TfRef.attribute<String>(this, 'delete_time');

  /// Reference to `effective_annotations` attribute.
  TfRef<Map<String, String>> get effectiveAnnotations =>
      TfRef.attribute<Map<String, String>>(this, 'effective_annotations');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `fleet` attribute.
  TfRef<List<Map<String, Object?>>> get fleet =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'fleet');

  /// Reference to `local_name` attribute.
  TfRef<String> get localName => TfRef.attribute<String>(this, 'local_name');

  /// Reference to `reconciling` attribute.
  TfRef<bool> get reconciling => TfRef.attribute<bool>(this, 'reconciling');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `status` attribute.
  TfRef<List<Map<String, Object?>>> get status =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'status');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `validation_check` attribute.
  TfRef<List<Map<String, Object?>>> get validationCheck =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'validation_check');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
