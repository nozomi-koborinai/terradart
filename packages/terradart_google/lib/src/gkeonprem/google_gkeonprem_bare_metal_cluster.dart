// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_gkeonprem_bare_metal_cluster`.
const Set<String> _googleGkeonpremBareMetalClusterSensitive = <String>{};

/// Gkeonprem Bare Metal Cluster enum for `state`.
enum GkeonpremBareMetalClusterState implements TerraformEnum {
  stateUnspecified('STATE_UNSPECIFIED'),
  provisioning('PROVISIONING'),
  running('RUNNING'),
  reconciling('RECONCILING'),
  stopping('STOPPING'),
  error('ERROR'),
  degraded('DEGRADED');

  const GkeonpremBareMetalClusterState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `binary_authorization` block of
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalClusterBinaryAuthorization {
  const GkeonpremBareMetalClusterBinaryAuthorization({this.evaluationMode});

  final TfArg<GkeonpremBareMetalClusterEvaluationMode>? evaluationMode;

  Map<String, Object?> encode() => {
    'evaluation_mode': ?evaluationMode?.toTfJson(),
  };
}

/// `evaluation_mode` — derived from the provider schema description.
enum GkeonpremBareMetalClusterEvaluationMode implements TerraformEnum {
  disabled('DISABLED'),
  projectSingletonPolicyEnforce('PROJECT_SINGLETON_POLICY_ENFORCE');

  const GkeonpremBareMetalClusterEvaluationMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `cluster_operations` block of
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalClusterOperations {
  const GkeonpremBareMetalClusterOperations({this.enableApplicationLogs});

  final TfArg<bool>? enableApplicationLogs;

  Map<String, Object?> encode() => {
    'enable_application_logs': ?enableApplicationLogs?.toTfJson(),
  };
}

/// Typed helper for the `control_plane` block of
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalClusterControlPlane {
  const GkeonpremBareMetalClusterControlPlane({
    this.apiServerArgs,
    required this.controlPlaneNodePoolConfig,
  });

  final List<GkeonpremBareMetalClusterApiServerArgs>? apiServerArgs;

  final GkeonpremBareMetalClusterControlPlaneNodePoolConfig
  controlPlaneNodePoolConfig;

  Map<String, Object?> encode() => {
    if (apiServerArgs != null)
      'api_server_args': [for (final e in apiServerArgs!) e.encode()],
    'control_plane_node_pool_config': controlPlaneNodePoolConfig.encode(),
  };
}

/// Typed helper for the `control_plane.api_server_args` block of
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalClusterApiServerArgs {
  const GkeonpremBareMetalClusterApiServerArgs({
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
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalClusterControlPlaneNodePoolConfig {
  const GkeonpremBareMetalClusterControlPlaneNodePoolConfig({
    required this.nodePoolConfig,
  });

  final GkeonpremBareMetalClusterNodePoolConfig nodePoolConfig;

  Map<String, Object?> encode() => {
    'node_pool_config': nodePoolConfig.encode(),
  };
}

/// Typed helper for the `control_plane.control_plane_node_pool_config.node_pool_config` block of
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class GkeonpremBareMetalClusterNodePoolConfig {
  const GkeonpremBareMetalClusterNodePoolConfig({
    this.labels,
    this.operatingSystem,
    this.nodeConfigs,
    this.taints,
  });

  final TfArg<Map<String, String>>? labels;

  final TfArg<String>? operatingSystem;

  final List<GkeonpremBareMetalClusterNodeConfigs>? nodeConfigs;

  final List<GkeonpremBareMetalClusterTaints>? taints;

  Map<String, Object?> encode() => {
    'labels': ?labels?.toTfJson(),
    'operating_system': ?operatingSystem?.toTfJson(),
    if (nodeConfigs != null)
      'node_configs': [for (final e in nodeConfigs!) e.encode()],
    if (taints != null) 'taints': [for (final e in taints!) e.encode()],
  };
}

/// Typed helper for the `control_plane.control_plane_node_pool_config.node_pool_config.node_configs` block of
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class GkeonpremBareMetalClusterNodeConfigs {
  const GkeonpremBareMetalClusterNodeConfigs({this.labels, this.nodeIp});

  final TfArg<Map<String, String>>? labels;

  final TfArg<String>? nodeIp;

  Map<String, Object?> encode() => {
    'labels': ?labels?.toTfJson(),
    'node_ip': ?nodeIp?.toTfJson(),
  };
}

/// Typed helper for the `control_plane.control_plane_node_pool_config.node_pool_config.taints` block of
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class GkeonpremBareMetalClusterTaints {
  const GkeonpremBareMetalClusterTaints({this.effect, this.key, this.value});

  final TfArg<GkeonpremBareMetalClusterEffect>? effect;

  final TfArg<String>? key;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'effect': ?effect?.toTfJson(),
    'key': ?key?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// `effect` — derived from the provider schema description.
enum GkeonpremBareMetalClusterEffect implements TerraformEnum {
  effectUnspecified('EFFECT_UNSPECIFIED'),
  preferNoSchedule('PREFER_NO_SCHEDULE'),
  noExecute('NO_EXECUTE');

  const GkeonpremBareMetalClusterEffect(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `load_balancer` block of
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalClusterLoadBalancer {
  const GkeonpremBareMetalClusterLoadBalancer({
    required this.lbConfig,
    required this.portConfig,
    required this.vipConfig,
  });

  final GkeonpremBareMetalClusterLbConfig lbConfig;

  final GkeonpremBareMetalClusterPortConfig portConfig;

  final GkeonpremBareMetalClusterVipConfig vipConfig;

  Map<String, Object?> encode() => {
    ...lbConfig.encode(),
    'port_config': portConfig.encode(),
    'vip_config': vipConfig.encode(),
  };
}

/// Exactly one of `metal_lb_config`, `manual_lb_config`, `bgp_lb_config` on the `load_balancer` block of `google_gkeonprem_bare_metal_cluster`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.metalLbConfig(...)`.
sealed class GkeonpremBareMetalClusterLbConfig {
  const GkeonpremBareMetalClusterLbConfig();

  /// Sets `metal_lb_config`.
  const factory GkeonpremBareMetalClusterLbConfig.metalLbConfig(
    GkeonpremBareMetalClusterMetalLbConfig metalLbConfig,
  ) = GkeonpremBareMetalClusterMetalLbConfigChoice;

  /// Sets `manual_lb_config`.
  const factory GkeonpremBareMetalClusterLbConfig.manualLbConfig(
    GkeonpremBareMetalClusterManualLbConfig manualLbConfig,
  ) = GkeonpremBareMetalClusterManualLbConfigChoice;

  /// Sets `bgp_lb_config`.
  const factory GkeonpremBareMetalClusterLbConfig.bgpLbConfig(
    GkeonpremBareMetalClusterBgpLbConfig bgpLbConfig,
  ) = GkeonpremBareMetalClusterBgpLbConfigChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [GkeonpremBareMetalClusterLbConfig.metalLbConfig] choice: sets `metal_lb_config`.
final class GkeonpremBareMetalClusterMetalLbConfigChoice
    extends GkeonpremBareMetalClusterLbConfig {
  const GkeonpremBareMetalClusterMetalLbConfigChoice(this.metalLbConfig);

  final GkeonpremBareMetalClusterMetalLbConfig metalLbConfig;

  @override
  String get blockKey => 'metal_lb_config';

  @override
  Map<String, Object?> encode() => {'metal_lb_config': metalLbConfig.encode()};
}

/// The [GkeonpremBareMetalClusterLbConfig.manualLbConfig] choice: sets `manual_lb_config`.
final class GkeonpremBareMetalClusterManualLbConfigChoice
    extends GkeonpremBareMetalClusterLbConfig {
  const GkeonpremBareMetalClusterManualLbConfigChoice(this.manualLbConfig);

  final GkeonpremBareMetalClusterManualLbConfig manualLbConfig;

  @override
  String get blockKey => 'manual_lb_config';

  @override
  Map<String, Object?> encode() => {
    'manual_lb_config': manualLbConfig.encode(),
  };
}

/// The [GkeonpremBareMetalClusterLbConfig.bgpLbConfig] choice: sets `bgp_lb_config`.
final class GkeonpremBareMetalClusterBgpLbConfigChoice
    extends GkeonpremBareMetalClusterLbConfig {
  const GkeonpremBareMetalClusterBgpLbConfigChoice(this.bgpLbConfig);

  final GkeonpremBareMetalClusterBgpLbConfig bgpLbConfig;

  @override
  String get blockKey => 'bgp_lb_config';

  @override
  Map<String, Object?> encode() => {'bgp_lb_config': bgpLbConfig.encode()};
}

/// Typed helper for the `load_balancer.bgp_lb_config` block of
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalClusterBgpLbConfig {
  const GkeonpremBareMetalClusterBgpLbConfig({
    required this.asn,
    required this.addressPools,
    required this.bgpPeerConfigs,
    this.loadBalancerNodePoolConfig,
  });

  final TfArg<num> asn;

  final List<GkeonpremBareMetalClusterAddressPools> addressPools;

  final List<GkeonpremBareMetalClusterBgpPeerConfigs> bgpPeerConfigs;

  final GkeonpremBareMetalClusterBgpLbConfigLoadBalancerNodePoolConfig?
  loadBalancerNodePoolConfig;

  Map<String, Object?> encode() => {
    'asn': asn.toTfJson(),
    'address_pools': [for (final e in addressPools) e.encode()],
    'bgp_peer_configs': [for (final e in bgpPeerConfigs) e.encode()],
    'load_balancer_node_pool_config': ?loadBalancerNodePoolConfig?.encode(),
  };
}

/// Typed helper for the `load_balancer.bgp_lb_config.address_pools` block of
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class GkeonpremBareMetalClusterAddressPools {
  const GkeonpremBareMetalClusterAddressPools({
    required this.addresses,
    this.avoidBuggyIps,
    this.manualAssign,
    required this.pool,
  });

  final TfArg<List<String>> addresses;

  final TfArg<bool>? avoidBuggyIps;

  final TfArg<bool>? manualAssign;

  final TfArg<String> pool;

  Map<String, Object?> encode() => {
    'addresses': addresses.toTfJson(),
    'avoid_buggy_ips': ?avoidBuggyIps?.toTfJson(),
    'manual_assign': ?manualAssign?.toTfJson(),
    'pool': pool.toTfJson(),
  };
}

/// Typed helper for the `load_balancer.bgp_lb_config.bgp_peer_configs` block of
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalClusterBgpPeerConfigs {
  const GkeonpremBareMetalClusterBgpPeerConfigs({
    required this.asn,
    this.controlPlaneNodes,
    required this.ipAddress,
  });

  final TfArg<num> asn;

  final TfArg<List<String>>? controlPlaneNodes;

  final TfArg<String> ipAddress;

  Map<String, Object?> encode() => {
    'asn': asn.toTfJson(),
    'control_plane_nodes': ?controlPlaneNodes?.toTfJson(),
    'ip_address': ipAddress.toTfJson(),
  };
}

/// Typed helper for the `load_balancer.bgp_lb_config.load_balancer_node_pool_config` block of
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalClusterBgpLbConfigLoadBalancerNodePoolConfig {
  const GkeonpremBareMetalClusterBgpLbConfigLoadBalancerNodePoolConfig({
    this.nodePoolConfig,
  });

  final GkeonpremBareMetalClusterLoadBalancerNodePoolConfigNodePoolConfig?
  nodePoolConfig;

  Map<String, Object?> encode() => {
    'node_pool_config': ?nodePoolConfig?.encode(),
  };
}

/// Typed helper for the `load_balancer.bgp_lb_config.load_balancer_node_pool_config.node_pool_config` block of
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalClusterLoadBalancerNodePoolConfigNodePoolConfig {
  const GkeonpremBareMetalClusterLoadBalancerNodePoolConfigNodePoolConfig({
    this.labels,
    this.operatingSystem,
    this.kubeletConfig,
    this.nodeConfigs,
    this.taints,
  });

  final TfArg<Map<String, String>>? labels;

  final TfArg<String>? operatingSystem;

  final GkeonpremBareMetalClusterKubeletConfig? kubeletConfig;

  final List<GkeonpremBareMetalClusterNodeConfigs>? nodeConfigs;

  final List<GkeonpremBareMetalClusterTaints>? taints;

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
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalClusterKubeletConfig {
  const GkeonpremBareMetalClusterKubeletConfig({
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

/// Typed helper for the `load_balancer.manual_lb_config` block of
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalClusterManualLbConfig {
  const GkeonpremBareMetalClusterManualLbConfig({required this.enabled});

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `load_balancer.metal_lb_config` block of
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalClusterMetalLbConfig {
  const GkeonpremBareMetalClusterMetalLbConfig({
    required this.addressPools,
    this.loadBalancerNodePoolConfig,
  });

  final List<GkeonpremBareMetalClusterAddressPools> addressPools;

  final GkeonpremBareMetalClusterMetalLbConfigLoadBalancerNodePoolConfig?
  loadBalancerNodePoolConfig;

  Map<String, Object?> encode() => {
    'address_pools': [for (final e in addressPools) e.encode()],
    'load_balancer_node_pool_config': ?loadBalancerNodePoolConfig?.encode(),
  };
}

/// Typed helper for the `load_balancer.metal_lb_config.load_balancer_node_pool_config` block of
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalClusterMetalLbConfigLoadBalancerNodePoolConfig {
  const GkeonpremBareMetalClusterMetalLbConfigLoadBalancerNodePoolConfig({
    this.nodePoolConfig,
  });

  final GkeonpremBareMetalClusterNodePoolConfig? nodePoolConfig;

  Map<String, Object?> encode() => {
    'node_pool_config': ?nodePoolConfig?.encode(),
  };
}

/// Typed helper for the `load_balancer.port_config` block of
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalClusterPortConfig {
  const GkeonpremBareMetalClusterPortConfig({
    required this.controlPlaneLoadBalancerPort,
  });

  final TfArg<num> controlPlaneLoadBalancerPort;

  Map<String, Object?> encode() => {
    'control_plane_load_balancer_port': controlPlaneLoadBalancerPort.toTfJson(),
  };
}

/// Typed helper for the `load_balancer.vip_config` block of
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalClusterVipConfig {
  const GkeonpremBareMetalClusterVipConfig({
    required this.controlPlaneVip,
    required this.ingressVip,
  });

  final TfArg<String> controlPlaneVip;

  final TfArg<String> ingressVip;

  Map<String, Object?> encode() => {
    'control_plane_vip': controlPlaneVip.toTfJson(),
    'ingress_vip': ingressVip.toTfJson(),
  };
}

/// Typed helper for the `maintenance_config` block of
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalClusterMaintenanceConfig {
  const GkeonpremBareMetalClusterMaintenanceConfig({
    required this.maintenanceAddressCidrBlocks,
  });

  final TfArg<List<String>> maintenanceAddressCidrBlocks;

  Map<String, Object?> encode() => {
    'maintenance_address_cidr_blocks': maintenanceAddressCidrBlocks.toTfJson(),
  };
}

/// Typed helper for the `network_config` block of
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalClusterNetworkConfig {
  const GkeonpremBareMetalClusterNetworkConfig({
    this.advancedNetworking,
    this.islandModeCidr,
    this.multipleNetworkInterfacesConfig,
    this.srIovConfig,
  });

  final TfArg<bool>? advancedNetworking;

  final GkeonpremBareMetalClusterIslandModeCidr? islandModeCidr;

  final GkeonpremBareMetalClusterMultipleNetworkInterfacesConfig?
  multipleNetworkInterfacesConfig;

  final GkeonpremBareMetalClusterSrIovConfig? srIovConfig;

  Map<String, Object?> encode() => {
    'advanced_networking': ?advancedNetworking?.toTfJson(),
    'island_mode_cidr': ?islandModeCidr?.encode(),
    'multiple_network_interfaces_config': ?multipleNetworkInterfacesConfig
        ?.encode(),
    'sr_iov_config': ?srIovConfig?.encode(),
  };
}

/// Typed helper for the `network_config.island_mode_cidr` block of
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalClusterIslandModeCidr {
  const GkeonpremBareMetalClusterIslandModeCidr({
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
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalClusterMultipleNetworkInterfacesConfig {
  const GkeonpremBareMetalClusterMultipleNetworkInterfacesConfig({
    this.enabled,
  });

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {'enabled': ?enabled?.toTfJson()};
}

/// Typed helper for the `network_config.sr_iov_config` block of
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalClusterSrIovConfig {
  const GkeonpremBareMetalClusterSrIovConfig({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {'enabled': ?enabled?.toTfJson()};
}

/// Typed helper for the `node_access_config` block of
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalClusterNodeAccessConfig {
  const GkeonpremBareMetalClusterNodeAccessConfig({this.loginUser});

  final TfArg<String>? loginUser;

  Map<String, Object?> encode() => {'login_user': ?loginUser?.toTfJson()};
}

/// Typed helper for the `node_config` block of
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalClusterNodeConfig {
  const GkeonpremBareMetalClusterNodeConfig({
    this.containerRuntime,
    this.maxPodsPerNode,
  });

  final TfArg<GkeonpremBareMetalClusterContainerRuntime>? containerRuntime;

  final TfArg<num>? maxPodsPerNode;

  Map<String, Object?> encode() => {
    'container_runtime': ?containerRuntime?.toTfJson(),
    'max_pods_per_node': ?maxPodsPerNode?.toTfJson(),
  };
}

/// `container_runtime` — derived from the provider schema description.
enum GkeonpremBareMetalClusterContainerRuntime implements TerraformEnum {
  containerRuntimeUnspecified('CONTAINER_RUNTIME_UNSPECIFIED'),
  docker('DOCKER'),
  containerd('CONTAINERD');

  const GkeonpremBareMetalClusterContainerRuntime(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `os_environment_config` block of
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalClusterOsEnvironmentConfig {
  const GkeonpremBareMetalClusterOsEnvironmentConfig({
    required this.packageRepoExcluded,
  });

  final TfArg<bool> packageRepoExcluded;

  Map<String, Object?> encode() => {
    'package_repo_excluded': packageRepoExcluded.toTfJson(),
  };
}

/// Typed helper for the `proxy` block of
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalClusterProxy {
  const GkeonpremBareMetalClusterProxy({this.noProxy, required this.uri});

  final TfArg<List<String>>? noProxy;

  final TfArg<String> uri;

  Map<String, Object?> encode() => {
    'no_proxy': ?noProxy?.toTfJson(),
    'uri': uri.toTfJson(),
  };
}

/// Typed helper for the `security_config` block of
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalClusterSecurityConfig {
  const GkeonpremBareMetalClusterSecurityConfig({this.authorization});

  final GkeonpremBareMetalClusterAuthorization? authorization;

  Map<String, Object?> encode() => {'authorization': ?authorization?.encode()};
}

/// Typed helper for the `security_config.authorization` block of
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalClusterAuthorization {
  const GkeonpremBareMetalClusterAuthorization({required this.adminUsers});

  final List<GkeonpremBareMetalClusterAdminUsers> adminUsers;

  Map<String, Object?> encode() => {
    'admin_users': [for (final e in adminUsers) e.encode()],
  };
}

/// Typed helper for the `security_config.authorization.admin_users` block of
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalClusterAdminUsers {
  const GkeonpremBareMetalClusterAdminUsers({required this.username});

  final TfArg<String> username;

  Map<String, Object?> encode() => {'username': username.toTfJson()};
}

/// Typed helper for the `storage` block of
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalClusterStorage {
  const GkeonpremBareMetalClusterStorage({
    required this.lvpNodeMountsConfig,
    required this.lvpShareConfig,
  });

  final GkeonpremBareMetalClusterLvpNodeMountsConfig lvpNodeMountsConfig;

  final GkeonpremBareMetalClusterLvpShareConfig lvpShareConfig;

  Map<String, Object?> encode() => {
    'lvp_node_mounts_config': lvpNodeMountsConfig.encode(),
    'lvp_share_config': lvpShareConfig.encode(),
  };
}

/// Typed helper for the `storage.lvp_node_mounts_config` block of
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalClusterLvpNodeMountsConfig {
  const GkeonpremBareMetalClusterLvpNodeMountsConfig({
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
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalClusterLvpShareConfig {
  const GkeonpremBareMetalClusterLvpShareConfig({
    this.sharedPathPvCount,
    required this.lvpConfig,
  });

  final TfArg<num>? sharedPathPvCount;

  final GkeonpremBareMetalClusterLvpConfig lvpConfig;

  Map<String, Object?> encode() => {
    'shared_path_pv_count': ?sharedPathPvCount?.toTfJson(),
    'lvp_config': lvpConfig.encode(),
  };
}

/// Typed helper for the `storage.lvp_share_config.lvp_config` block of
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalClusterLvpConfig {
  const GkeonpremBareMetalClusterLvpConfig({
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

/// Typed helper for the `upgrade_policy` block of
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalClusterUpgradePolicy {
  const GkeonpremBareMetalClusterUpgradePolicy({this.policy});

  final TfArg<GkeonpremBareMetalClusterPolicy>? policy;

  Map<String, Object?> encode() => {'policy': ?policy?.toTfJson()};
}

/// `policy` — derived from the provider schema description.
enum GkeonpremBareMetalClusterPolicy implements TerraformEnum {
  serial('SERIAL'),
  concurrent('CONCURRENT');

  const GkeonpremBareMetalClusterPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_gkeonprem_bare_metal_cluster`.
///
/// A Google Bare Metal User Cluster.
///
/// GKE on-prem / GDC **bare metal user cluster** — Kubernetes cluster on
/// customer bare-metal hardware, enrolled under an admin cluster membership.
///
/// **Cost / apply:** gcp-cost: GKE Enterprise / GDC `9186-F79E-3871` Bare
/// Metal SKU `297F-4642-B7A1` **$0.03288/h**. billing-behavior: GDC platform
/// fees while the cluster is registered; requires physical bare-metal
/// hardware absent on `terradart-validate`. **Never** wire into apply-smoke.
///
/// Enable `gkeonprem.googleapis.com` before apply. [adminClusterMembership],
/// [controlPlane], [loadBalancer], [networkConfig], and [storage] are
/// required by the provider.
final class GoogleGkeonpremBareMetalCluster extends Resource {
  static const String tfType = 'google_gkeonprem_bare_metal_cluster';

  GoogleGkeonpremBareMetalCluster(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> location,
    required TfArg<String> bareMetalVersion,
    required TfArg<String> adminClusterMembership,
    TfArg<String>? description,
    required GkeonpremBareMetalClusterNetworkConfig networkConfig,
    required GkeonpremBareMetalClusterControlPlane controlPlane,
    required GkeonpremBareMetalClusterLoadBalancer loadBalancer,
    required GkeonpremBareMetalClusterStorage storage,
    GkeonpremBareMetalClusterNodeConfig? nodeConfig,
    GkeonpremBareMetalClusterNodeAccessConfig? nodeAccessConfig,
    GkeonpremBareMetalClusterSecurityConfig? securityConfig,
    GkeonpremBareMetalClusterMaintenanceConfig? maintenanceConfig,
    GkeonpremBareMetalClusterOperations? clusterOperations,
    GkeonpremBareMetalClusterOsEnvironmentConfig? osEnvironmentConfig,
    GkeonpremBareMetalClusterProxy? proxy,
    GkeonpremBareMetalClusterBinaryAuthorization? binaryAuthorization,
    GkeonpremBareMetalClusterUpgradePolicy? upgradePolicy,
    TfArg<Map<String, String>>? annotations,
    TfArg<String>? deletionPolicy,
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
           'bare_metal_version': bareMetalVersion,
           'admin_cluster_membership': adminClusterMembership,
           'description': ?description,
           'network_config': TfArg.literal(networkConfig.encode()),
           'control_plane': TfArg.literal(controlPlane.encode()),
           'load_balancer': TfArg.literal(loadBalancer.encode()),
           'storage': TfArg.literal(storage.encode()),
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
           if (osEnvironmentConfig != null)
             'os_environment_config': TfArg.literal(
               osEnvironmentConfig.encode(),
             ),
           if (proxy != null) 'proxy': TfArg.literal(proxy.encode()),
           if (binaryAuthorization != null)
             'binary_authorization': TfArg.literal(
               binaryAuthorization.encode(),
             ),
           if (upgradePolicy != null)
             'upgrade_policy': TfArg.literal(upgradePolicy.encode()),
           'annotations': ?annotations,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleGkeonpremBareMetalClusterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleGkeonpremBareMetalCluster>`.
  RefTo<GoogleGkeonpremBareMetalCluster> get ref => RefTo.of(this);

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

  /// Reference to `admin_cluster_membership` attribute.
  TfRef<String> get adminClusterMembership =>
      TfRef.attribute<String>(this, 'admin_cluster_membership');

  /// Reference to `annotations` attribute.
  TfRef<Map<String, String>> get annotations =>
      TfRef.attribute<Map<String, String>>(this, 'annotations');

  /// Reference to `bare_metal_version` attribute.
  TfRef<String> get bareMetalVersion =>
      TfRef.attribute<String>(this, 'bare_metal_version');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
