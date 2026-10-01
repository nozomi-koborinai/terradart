// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_gkeonprem_bare_metal_admin_cluster`.
const Set<String> _googleGkeonpremBareMetalAdminClusterSensitive = <String>{};

/// Gkeonprem Bare Metal Admin Cluster enum for `state`.
extension type const GkeonpremBareMetalAdminClusterState._(TfArg<String> _)
    implements TfArg<String> {
  GkeonpremBareMetalAdminClusterState.variable(String name)
    : this._(TfArg.variable(name));
  GkeonpremBareMetalAdminClusterState.expression(String template)
    : this._(TfArg.expression(template));
  const GkeonpremBareMetalAdminClusterState.arg(TfArg<String> arg)
    : this._(arg);

  static const stateUnspecified = GkeonpremBareMetalAdminClusterState._(
    TfArgLiteral('STATE_UNSPECIFIED'),
  );
  static const provisioning = GkeonpremBareMetalAdminClusterState._(
    TfArgLiteral('PROVISIONING'),
  );
  static const running = GkeonpremBareMetalAdminClusterState._(
    TfArgLiteral('RUNNING'),
  );
  static const reconciling = GkeonpremBareMetalAdminClusterState._(
    TfArgLiteral('RECONCILING'),
  );
  static const stopping = GkeonpremBareMetalAdminClusterState._(
    TfArgLiteral('STOPPING'),
  );
  static const error = GkeonpremBareMetalAdminClusterState._(
    TfArgLiteral('ERROR'),
  );
  static const degraded = GkeonpremBareMetalAdminClusterState._(
    TfArgLiteral('DEGRADED'),
  );

  static const List<GkeonpremBareMetalAdminClusterState> values = [
    stateUnspecified,
    provisioning,
    running,
    reconciling,
    stopping,
    error,
    degraded,
  ];
}

/// Typed helper for the `cluster_operations` block of
/// `google_gkeonprem_bare_metal_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalAdminClusterOperations {
  const GkeonpremBareMetalAdminClusterOperations({this.enableApplicationLogs});

  final TfArg<bool>? enableApplicationLogs;

  Map<String, Object?> encode() => {
    'enable_application_logs': ?enableApplicationLogs?.toTfJson(),
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

  final List<GkeonpremBareMetalAdminClusterApiServerArgs>? apiServerArgs;

  final GkeonpremBareMetalAdminClusterControlPlaneNodePoolConfig
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
final class GkeonpremBareMetalAdminClusterApiServerArgs {
  const GkeonpremBareMetalAdminClusterApiServerArgs({
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
final class GkeonpremBareMetalAdminClusterControlPlaneNodePoolConfig {
  const GkeonpremBareMetalAdminClusterControlPlaneNodePoolConfig({
    required this.nodePoolConfig,
  });

  final GkeonpremBareMetalAdminClusterNodePoolConfig nodePoolConfig;

  Map<String, Object?> encode() => {
    'node_pool_config': nodePoolConfig.encode(),
  };
}

/// Typed helper for the `control_plane.control_plane_node_pool_config.node_pool_config` block of
/// `google_gkeonprem_bare_metal_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalAdminClusterNodePoolConfig {
  const GkeonpremBareMetalAdminClusterNodePoolConfig({
    this.labels,
    this.operatingSystem,
    this.nodeConfigs,
    this.taints,
  });

  final TfArg<Map<String, String>>? labels;

  final TfArg<String>? operatingSystem;

  final List<GkeonpremBareMetalAdminClusterNodeConfigs>? nodeConfigs;

  final List<GkeonpremBareMetalAdminClusterTaints>? taints;

  Map<String, Object?> encode() => {
    'labels': ?labels?.toTfJson(),
    'operating_system': ?operatingSystem?.toTfJson(),
    if (nodeConfigs != null)
      'node_configs': [for (final e in nodeConfigs!) e.encode()],
    if (taints != null) 'taints': [for (final e in taints!) e.encode()],
  };
}

/// Typed helper for the `control_plane.control_plane_node_pool_config.node_pool_config.node_configs` block of
/// `google_gkeonprem_bare_metal_admin_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class GkeonpremBareMetalAdminClusterNodeConfigs {
  const GkeonpremBareMetalAdminClusterNodeConfigs({this.labels, this.nodeIp});

  final TfArg<Map<String, String>>? labels;

  final TfArg<String>? nodeIp;

  Map<String, Object?> encode() => {
    'labels': ?labels?.toTfJson(),
    'node_ip': ?nodeIp?.toTfJson(),
  };
}

/// Typed helper for the `control_plane.control_plane_node_pool_config.node_pool_config.taints` block of
/// `google_gkeonprem_bare_metal_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalAdminClusterTaints {
  const GkeonpremBareMetalAdminClusterTaints({
    this.effect,
    this.key,
    this.value,
  });

  final GkeonpremBareMetalAdminClusterEffect? effect;

  final TfArg<String>? key;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'effect': ?effect?.toTfJson(),
    'key': ?key?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// `effect` — derived from the provider schema description.
extension type const GkeonpremBareMetalAdminClusterEffect._(TfArg<String> _)
    implements TfArg<String> {
  GkeonpremBareMetalAdminClusterEffect.variable(String name)
    : this._(TfArg.variable(name));
  GkeonpremBareMetalAdminClusterEffect.expression(String template)
    : this._(TfArg.expression(template));
  const GkeonpremBareMetalAdminClusterEffect.arg(TfArg<String> arg)
    : this._(arg);

  static const effectUnspecified = GkeonpremBareMetalAdminClusterEffect._(
    TfArgLiteral('EFFECT_UNSPECIFIED'),
  );
  static const preferNoSchedule = GkeonpremBareMetalAdminClusterEffect._(
    TfArgLiteral('PREFER_NO_SCHEDULE'),
  );
  static const noExecute = GkeonpremBareMetalAdminClusterEffect._(
    TfArgLiteral('NO_EXECUTE'),
  );

  static const List<GkeonpremBareMetalAdminClusterEffect> values = [
    effectUnspecified,
    preferNoSchedule,
    noExecute,
  ];
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

  final GkeonpremBareMetalAdminClusterBgpLbConfig? bgpLbConfig;

  final GkeonpremBareMetalAdminClusterManualLbConfig? manualLbConfig;

  final GkeonpremBareMetalAdminClusterPortConfig portConfig;

  final GkeonpremBareMetalAdminClusterVipConfig vipConfig;

  Map<String, Object?> encode() => {
    'bgp_lb_config': ?bgpLbConfig?.encode(),
    'manual_lb_config': ?manualLbConfig?.encode(),
    'port_config': portConfig.encode(),
    'vip_config': vipConfig.encode(),
  };
}

/// Typed helper for the `load_balancer.bgp_lb_config` block of
/// `google_gkeonprem_bare_metal_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalAdminClusterBgpLbConfig {
  const GkeonpremBareMetalAdminClusterBgpLbConfig({
    this.asn,
    this.addressPools,
    this.bgpPeerConfigs,
    this.loadBalancerNodePoolConfig,
  });

  final TfArg<num>? asn;

  final List<GkeonpremBareMetalAdminClusterAddressPools>? addressPools;

  final List<GkeonpremBareMetalAdminClusterBgpPeerConfigs>? bgpPeerConfigs;

  final GkeonpremBareMetalAdminClusterLoadBalancerNodePoolConfig?
  loadBalancerNodePoolConfig;

  Map<String, Object?> encode() => {
    'asn': ?asn?.toTfJson(),
    if (addressPools != null)
      'address_pools': [for (final e in addressPools!) e.encode()],
    if (bgpPeerConfigs != null)
      'bgp_peer_configs': [for (final e in bgpPeerConfigs!) e.encode()],
    'load_balancer_node_pool_config': ?loadBalancerNodePoolConfig?.encode(),
  };
}

/// Typed helper for the `load_balancer.bgp_lb_config.address_pools` block of
/// `google_gkeonprem_bare_metal_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalAdminClusterAddressPools {
  const GkeonpremBareMetalAdminClusterAddressPools({
    this.addresses,
    this.avoidBuggyIps,
    this.manualAssign,
    this.pool,
  });

  final TfArg<List<String>>? addresses;

  final TfArg<bool>? avoidBuggyIps;

  final TfArg<bool>? manualAssign;

  final TfArg<String>? pool;

  Map<String, Object?> encode() => {
    'addresses': ?addresses?.toTfJson(),
    'avoid_buggy_ips': ?avoidBuggyIps?.toTfJson(),
    'manual_assign': ?manualAssign?.toTfJson(),
    'pool': ?pool?.toTfJson(),
  };
}

/// Typed helper for the `load_balancer.bgp_lb_config.bgp_peer_configs` block of
/// `google_gkeonprem_bare_metal_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalAdminClusterBgpPeerConfigs {
  const GkeonpremBareMetalAdminClusterBgpPeerConfigs({
    this.asn,
    this.controlPlaneNodes,
    this.ipAddress,
  });

  final TfArg<num>? asn;

  final TfArg<List<String>>? controlPlaneNodes;

  final TfArg<String>? ipAddress;

  Map<String, Object?> encode() => {
    'asn': ?asn?.toTfJson(),
    'control_plane_nodes': ?controlPlaneNodes?.toTfJson(),
    'ip_address': ?ipAddress?.toTfJson(),
  };
}

/// Typed helper for the `load_balancer.bgp_lb_config.load_balancer_node_pool_config` block of
/// `google_gkeonprem_bare_metal_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalAdminClusterLoadBalancerNodePoolConfig {
  const GkeonpremBareMetalAdminClusterLoadBalancerNodePoolConfig({
    this.nodePoolConfig,
  });

  final GkeonpremBareMetalAdminClusterLoadBalancerNodePoolConfigNodePoolConfig?
  nodePoolConfig;

  Map<String, Object?> encode() => {
    'node_pool_config': ?nodePoolConfig?.encode(),
  };
}

/// Typed helper for the `load_balancer.bgp_lb_config.load_balancer_node_pool_config.node_pool_config` block of
/// `google_gkeonprem_bare_metal_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalAdminClusterLoadBalancerNodePoolConfigNodePoolConfig {
  const GkeonpremBareMetalAdminClusterLoadBalancerNodePoolConfigNodePoolConfig({
    this.labels,
    this.operatingSystem,
    this.kubeletConfig,
    this.nodeConfigs,
    this.taints,
  });

  final TfArg<Map<String, String>>? labels;

  final TfArg<String>? operatingSystem;

  final GkeonpremBareMetalAdminClusterKubeletConfig? kubeletConfig;

  final List<GkeonpremBareMetalAdminClusterNodeConfigs>? nodeConfigs;

  final List<GkeonpremBareMetalAdminClusterNodePoolConfigTaints>? taints;

  Map<String, Object?> encode() => {
    'labels': ?labels?.toTfJson(),
    'operating_system': ?operatingSystem?.toTfJson(),
    'kubelet_config': ?kubeletConfig?.encode(),
    if (nodeConfigs != null)
      'node_configs': [for (final e in nodeConfigs!) e.encode()],
    if (taints != null) 'taints': [for (final e in taints!) e.encode()],
  };
}

/// Typed helper for the `load_balancer.bgp_lb_config.load_balancer_node_pool_config.node_pool_config.kubelet_config` block of
/// `google_gkeonprem_bare_metal_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalAdminClusterKubeletConfig {
  const GkeonpremBareMetalAdminClusterKubeletConfig({
    this.registryBurst,
    this.registryPullQps,
    this.serializeImagePullsDisabled,
  });

  final TfArg<num>? registryBurst;

  final TfArg<num>? registryPullQps;

  final TfArg<bool>? serializeImagePullsDisabled;

  Map<String, Object?> encode() => {
    'registry_burst': ?registryBurst?.toTfJson(),
    'registry_pull_qps': ?registryPullQps?.toTfJson(),
    'serialize_image_pulls_disabled': ?serializeImagePullsDisabled?.toTfJson(),
  };
}

/// Typed helper for the `load_balancer.bgp_lb_config.load_balancer_node_pool_config.node_pool_config.taints` block of
/// `google_gkeonprem_bare_metal_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalAdminClusterNodePoolConfigTaints {
  const GkeonpremBareMetalAdminClusterNodePoolConfigTaints({
    this.effect,
    this.key,
    this.value,
  });

  final TfArg<String>? effect;

  final TfArg<String>? key;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'effect': ?effect?.toTfJson(),
    'key': ?key?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `load_balancer.manual_lb_config` block of
/// `google_gkeonprem_bare_metal_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalAdminClusterManualLbConfig {
  const GkeonpremBareMetalAdminClusterManualLbConfig({required this.enabled});

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `load_balancer.port_config` block of
/// `google_gkeonprem_bare_metal_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalAdminClusterPortConfig {
  const GkeonpremBareMetalAdminClusterPortConfig({
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
final class GkeonpremBareMetalAdminClusterVipConfig {
  const GkeonpremBareMetalAdminClusterVipConfig({
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

  final TfArg<List<String>> maintenanceAddressCidrBlocks;

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

  final GkeonpremBareMetalAdminClusterIslandModeCidr? islandModeCidr;

  final GkeonpremBareMetalAdminClusterMultipleNetworkInterfacesConfig?
  multipleNetworkInterfacesConfig;

  Map<String, Object?> encode() => {
    'advanced_networking': ?advancedNetworking?.toTfJson(),
    'island_mode_cidr': ?islandModeCidr?.encode(),
    'multiple_network_interfaces_config': ?multipleNetworkInterfacesConfig
        ?.encode(),
  };
}

/// Typed helper for the `network_config.island_mode_cidr` block of
/// `google_gkeonprem_bare_metal_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalAdminClusterIslandModeCidr {
  const GkeonpremBareMetalAdminClusterIslandModeCidr({
    required this.podAddressCidrBlocks,
    required this.serviceAddressCidrBlocks,
  });

  final TfArg<List<String>> podAddressCidrBlocks;

  final TfArg<List<String>> serviceAddressCidrBlocks;

  Map<String, Object?> encode() => {
    'pod_address_cidr_blocks': podAddressCidrBlocks.toTfJson(),
    'service_address_cidr_blocks': serviceAddressCidrBlocks.toTfJson(),
  };
}

/// Typed helper for the `network_config.multiple_network_interfaces_config` block of
/// `google_gkeonprem_bare_metal_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalAdminClusterMultipleNetworkInterfacesConfig {
  const GkeonpremBareMetalAdminClusterMultipleNetworkInterfacesConfig({
    this.enabled,
  });

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {'enabled': ?enabled?.toTfJson()};
}

/// Typed helper for the `node_access_config` block of
/// `google_gkeonprem_bare_metal_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalAdminClusterNodeAccessConfig {
  const GkeonpremBareMetalAdminClusterNodeAccessConfig({this.loginUser});

  final TfArg<String>? loginUser;

  Map<String, Object?> encode() => {'login_user': ?loginUser?.toTfJson()};
}

/// Typed helper for the `node_config` block of
/// `google_gkeonprem_bare_metal_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalAdminClusterNodeConfig {
  const GkeonpremBareMetalAdminClusterNodeConfig({this.maxPodsPerNode});

  final TfArg<num>? maxPodsPerNode;

  Map<String, Object?> encode() => {
    'max_pods_per_node': ?maxPodsPerNode?.toTfJson(),
  };
}

/// Typed helper for the `proxy` block of
/// `google_gkeonprem_bare_metal_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalAdminClusterProxy {
  const GkeonpremBareMetalAdminClusterProxy({this.noProxy, required this.uri});

  final TfArg<List<String>>? noProxy;

  final TfArg<String> uri;

  Map<String, Object?> encode() => {
    'no_proxy': ?noProxy?.toTfJson(),
    'uri': uri.toTfJson(),
  };
}

/// Typed helper for the `security_config` block of
/// `google_gkeonprem_bare_metal_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalAdminClusterSecurityConfig {
  const GkeonpremBareMetalAdminClusterSecurityConfig({this.authorization});

  final GkeonpremBareMetalAdminClusterAuthorization? authorization;

  Map<String, Object?> encode() => {'authorization': ?authorization?.encode()};
}

/// Typed helper for the `security_config.authorization` block of
/// `google_gkeonprem_bare_metal_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalAdminClusterAuthorization {
  const GkeonpremBareMetalAdminClusterAuthorization({required this.adminUsers});

  final List<GkeonpremBareMetalAdminClusterAdminUsers> adminUsers;

  Map<String, Object?> encode() => {
    'admin_users': [for (final e in adminUsers) e.encode()],
  };
}

/// Typed helper for the `security_config.authorization.admin_users` block of
/// `google_gkeonprem_bare_metal_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalAdminClusterAdminUsers {
  const GkeonpremBareMetalAdminClusterAdminUsers({required this.username});

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

  final GkeonpremBareMetalAdminClusterLvpNodeMountsConfig lvpNodeMountsConfig;

  final GkeonpremBareMetalAdminClusterLvpShareConfig lvpShareConfig;

  Map<String, Object?> encode() => {
    'lvp_node_mounts_config': lvpNodeMountsConfig.encode(),
    'lvp_share_config': lvpShareConfig.encode(),
  };
}

/// Typed helper for the `storage.lvp_node_mounts_config` block of
/// `google_gkeonprem_bare_metal_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalAdminClusterLvpNodeMountsConfig {
  const GkeonpremBareMetalAdminClusterLvpNodeMountsConfig({
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
final class GkeonpremBareMetalAdminClusterLvpShareConfig {
  const GkeonpremBareMetalAdminClusterLvpShareConfig({
    this.sharedPathPvCount,
    required this.lvpConfig,
  });

  final TfArg<num>? sharedPathPvCount;

  final GkeonpremBareMetalAdminClusterLvpConfig lvpConfig;

  Map<String, Object?> encode() => {
    'shared_path_pv_count': ?sharedPathPvCount?.toTfJson(),
    'lvp_config': lvpConfig.encode(),
  };
}

/// Typed helper for the `storage.lvp_share_config.lvp_config` block of
/// `google_gkeonprem_bare_metal_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalAdminClusterLvpConfig {
  const GkeonpremBareMetalAdminClusterLvpConfig({
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

  GoogleGkeonpremBareMetalAdminCluster(
    super.localName, {
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
    GkeonpremBareMetalAdminClusterOperations? clusterOperations,
    GkeonpremBareMetalAdminClusterProxy? proxy,
    TfArg<Map<String, String>>? annotations,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'bare_metal_version': ?bareMetalVersion,
           'description': ?description,
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
           'annotations': ?annotations,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleGkeonpremBareMetalAdminClusterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleGkeonpremBareMetalAdminCluster>`.
  RefTo<GoogleGkeonpremBareMetalAdminCluster> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `local_name` attribute.
  TfRef<String> get localNameAttr =>
      TfRef.attribute<String>(this, 'local_name');

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

  /// Reference to `annotations` attribute.
  TfRef<Map<String, String>> get annotations =>
      TfRef.attribute<Map<String, String>>(this, 'annotations');

  /// Reference to `bare_metal_version` attribute.
  TfRef<String> get bareMetalVersion =>
      TfRef.attribute<String>(this, 'bare_metal_version');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
