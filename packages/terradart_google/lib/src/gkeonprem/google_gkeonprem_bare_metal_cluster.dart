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

  final TfArg<GkeonpremBareMetalClusterBinaryAuthorizationEvaluationMode>?
  evaluationMode;

  Map<String, Object?> encode() => {
    if (evaluationMode != null) 'evaluation_mode': evaluationMode!.toTfJson(),
  };
}

/// `evaluation_mode` — derived from the provider schema description.
enum GkeonpremBareMetalClusterBinaryAuthorizationEvaluationMode
    implements TerraformEnum {
  disabled('DISABLED'),
  projectSingletonPolicyEnforce('PROJECT_SINGLETON_POLICY_ENFORCE');

  const GkeonpremBareMetalClusterBinaryAuthorizationEvaluationMode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `cluster_operations` block of
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalClusterClusterOperations {
  const GkeonpremBareMetalClusterClusterOperations({
    this.enableApplicationLogs,
  });

  final TfArg<bool>? enableApplicationLogs;

  Map<String, Object?> encode() => {
    if (enableApplicationLogs != null)
      'enable_application_logs': enableApplicationLogs!.toTfJson(),
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

  final List<GkeonpremBareMetalClusterControlPlaneApiServerArgs>? apiServerArgs;

  final GkeonpremBareMetalClusterControlPlaneControlPlaneNodePoolConfig
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
final class GkeonpremBareMetalClusterControlPlaneApiServerArgs {
  const GkeonpremBareMetalClusterControlPlaneApiServerArgs({
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
final class GkeonpremBareMetalClusterControlPlaneControlPlaneNodePoolConfig {
  const GkeonpremBareMetalClusterControlPlaneControlPlaneNodePoolConfig({
    required this.nodePoolConfig,
  });

  final GkeonpremBareMetalClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfig
  nodePoolConfig;

  Map<String, Object?> encode() => {
    'node_pool_config': nodePoolConfig.encode(),
  };
}

/// Typed helper for the `control_plane.control_plane_node_pool_config.node_pool_config` block of
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfig {
  const GkeonpremBareMetalClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfig({
    this.labels,
    this.operatingSystem,
    this.nodeConfigs,
    this.taints,
  });

  final TfArg<Map<String, String>>? labels;

  final TfArg<String>? operatingSystem;

  final List<
    GkeonpremBareMetalClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigNodeConfigs
  >?
  nodeConfigs;

  final List<
    GkeonpremBareMetalClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigTaints
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
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigNodeConfigs {
  const GkeonpremBareMetalClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigNodeConfigs({
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
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigTaints {
  const GkeonpremBareMetalClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigTaints({
    this.effect,
    this.key,
    this.value,
  });

  final TfArg<
    GkeonpremBareMetalClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigTaintsEffect
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
enum GkeonpremBareMetalClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigTaintsEffect
    implements TerraformEnum {
  effectUnspecified('EFFECT_UNSPECIFIED'),
  preferNoSchedule('PREFER_NO_SCHEDULE'),
  noExecute('NO_EXECUTE');

  const GkeonpremBareMetalClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigTaintsEffect(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `load_balancer` block of
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalClusterLoadBalancer {
  const GkeonpremBareMetalClusterLoadBalancer({
    this.bgpLbConfig,
    this.manualLbConfig,
    this.metalLbConfig,
    required this.portConfig,
    required this.vipConfig,
  });

  final GkeonpremBareMetalClusterLoadBalancerBgpLbConfig? bgpLbConfig;

  final GkeonpremBareMetalClusterLoadBalancerManualLbConfig? manualLbConfig;

  final GkeonpremBareMetalClusterLoadBalancerMetalLbConfig? metalLbConfig;

  final GkeonpremBareMetalClusterLoadBalancerPortConfig portConfig;

  final GkeonpremBareMetalClusterLoadBalancerVipConfig vipConfig;

  Map<String, Object?> encode() => {
    if (bgpLbConfig != null) 'bgp_lb_config': bgpLbConfig!.encode(),
    if (manualLbConfig != null) 'manual_lb_config': manualLbConfig!.encode(),
    if (metalLbConfig != null) 'metal_lb_config': metalLbConfig!.encode(),
    'port_config': portConfig.encode(),
    'vip_config': vipConfig.encode(),
  };
}

/// Typed helper for the `load_balancer.bgp_lb_config` block of
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalClusterLoadBalancerBgpLbConfig {
  const GkeonpremBareMetalClusterLoadBalancerBgpLbConfig({
    required this.asn,
    required this.addressPools,
    required this.bgpPeerConfigs,
    this.loadBalancerNodePoolConfig,
  });

  final TfArg<num> asn;

  final List<GkeonpremBareMetalClusterLoadBalancerBgpLbConfigAddressPools>
  addressPools;

  final List<GkeonpremBareMetalClusterLoadBalancerBgpLbConfigBgpPeerConfigs>
  bgpPeerConfigs;

  final GkeonpremBareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfig?
  loadBalancerNodePoolConfig;

  Map<String, Object?> encode() => {
    'asn': asn.toTfJson(),
    'address_pools': [for (final e in addressPools) e.encode()],
    'bgp_peer_configs': [for (final e in bgpPeerConfigs) e.encode()],
    if (loadBalancerNodePoolConfig != null)
      'load_balancer_node_pool_config': loadBalancerNodePoolConfig!.encode(),
  };
}

/// Typed helper for the `load_balancer.bgp_lb_config.address_pools` block of
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalClusterLoadBalancerBgpLbConfigAddressPools {
  const GkeonpremBareMetalClusterLoadBalancerBgpLbConfigAddressPools({
    required this.addresses,
    this.avoidBuggyIps,
    this.manualAssign,
    required this.pool,
  });

  final TfArg<List<Object?>> addresses;

  final TfArg<bool>? avoidBuggyIps;

  final TfArg<bool>? manualAssign;

  final TfArg<String> pool;

  Map<String, Object?> encode() => {
    'addresses': addresses.toTfJson(),
    if (avoidBuggyIps != null) 'avoid_buggy_ips': avoidBuggyIps!.toTfJson(),
    if (manualAssign != null) 'manual_assign': manualAssign!.toTfJson(),
    'pool': pool.toTfJson(),
  };
}

/// Typed helper for the `load_balancer.bgp_lb_config.bgp_peer_configs` block of
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalClusterLoadBalancerBgpLbConfigBgpPeerConfigs {
  const GkeonpremBareMetalClusterLoadBalancerBgpLbConfigBgpPeerConfigs({
    required this.asn,
    this.controlPlaneNodes,
    required this.ipAddress,
  });

  final TfArg<num> asn;

  final TfArg<List<Object?>>? controlPlaneNodes;

  final TfArg<String> ipAddress;

  Map<String, Object?> encode() => {
    'asn': asn.toTfJson(),
    if (controlPlaneNodes != null)
      'control_plane_nodes': controlPlaneNodes!.toTfJson(),
    'ip_address': ipAddress.toTfJson(),
  };
}

/// Typed helper for the `load_balancer.bgp_lb_config.load_balancer_node_pool_config` block of
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfig {
  const GkeonpremBareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfig({
    this.nodePoolConfig,
  });

  final GkeonpremBareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfig?
  nodePoolConfig;

  Map<String, Object?> encode() => {
    if (nodePoolConfig != null) 'node_pool_config': nodePoolConfig!.encode(),
  };
}

/// Typed helper for the `load_balancer.bgp_lb_config.load_balancer_node_pool_config.node_pool_config` block of
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfig {
  const GkeonpremBareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfig({
    this.labels,
    this.operatingSystem,
    this.kubeletConfig,
    this.nodeConfigs,
    this.taints,
  });

  final TfArg<Map<String, String>>? labels;

  final TfArg<String>? operatingSystem;

  final GkeonpremBareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigKubeletConfig?
  kubeletConfig;

  final List<
    GkeonpremBareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigNodeConfigs
  >?
  nodeConfigs;

  final List<
    GkeonpremBareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigTaints
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
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigKubeletConfig {
  const GkeonpremBareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigKubeletConfig({
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
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigNodeConfigs {
  const GkeonpremBareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigNodeConfigs({
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
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigTaints {
  const GkeonpremBareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigTaints({
    this.effect,
    this.key,
    this.value,
  });

  final TfArg<
    GkeonpremBareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigTaintsEffect
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
enum GkeonpremBareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigTaintsEffect
    implements TerraformEnum {
  effectUnspecified('EFFECT_UNSPECIFIED'),
  preferNoSchedule('PREFER_NO_SCHEDULE'),
  noExecute('NO_EXECUTE');

  const GkeonpremBareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigTaintsEffect(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `load_balancer.manual_lb_config` block of
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalClusterLoadBalancerManualLbConfig {
  const GkeonpremBareMetalClusterLoadBalancerManualLbConfig({
    required this.enabled,
  });

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `load_balancer.metal_lb_config` block of
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalClusterLoadBalancerMetalLbConfig {
  const GkeonpremBareMetalClusterLoadBalancerMetalLbConfig({
    required this.addressPools,
    this.loadBalancerNodePoolConfig,
  });

  final List<GkeonpremBareMetalClusterLoadBalancerMetalLbConfigAddressPools>
  addressPools;

  final GkeonpremBareMetalClusterLoadBalancerMetalLbConfigLoadBalancerNodePoolConfig?
  loadBalancerNodePoolConfig;

  Map<String, Object?> encode() => {
    'address_pools': [for (final e in addressPools) e.encode()],
    if (loadBalancerNodePoolConfig != null)
      'load_balancer_node_pool_config': loadBalancerNodePoolConfig!.encode(),
  };
}

/// Typed helper for the `load_balancer.metal_lb_config.address_pools` block of
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalClusterLoadBalancerMetalLbConfigAddressPools {
  const GkeonpremBareMetalClusterLoadBalancerMetalLbConfigAddressPools({
    required this.addresses,
    this.avoidBuggyIps,
    this.manualAssign,
    required this.pool,
  });

  final TfArg<List<Object?>> addresses;

  final TfArg<bool>? avoidBuggyIps;

  final TfArg<bool>? manualAssign;

  final TfArg<String> pool;

  Map<String, Object?> encode() => {
    'addresses': addresses.toTfJson(),
    if (avoidBuggyIps != null) 'avoid_buggy_ips': avoidBuggyIps!.toTfJson(),
    if (manualAssign != null) 'manual_assign': manualAssign!.toTfJson(),
    'pool': pool.toTfJson(),
  };
}

/// Typed helper for the `load_balancer.metal_lb_config.load_balancer_node_pool_config` block of
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalClusterLoadBalancerMetalLbConfigLoadBalancerNodePoolConfig {
  const GkeonpremBareMetalClusterLoadBalancerMetalLbConfigLoadBalancerNodePoolConfig({
    this.nodePoolConfig,
  });

  final GkeonpremBareMetalClusterLoadBalancerMetalLbConfigLoadBalancerNodePoolConfigNodePoolConfig?
  nodePoolConfig;

  Map<String, Object?> encode() => {
    if (nodePoolConfig != null) 'node_pool_config': nodePoolConfig!.encode(),
  };
}

/// Typed helper for the `load_balancer.metal_lb_config.load_balancer_node_pool_config.node_pool_config` block of
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalClusterLoadBalancerMetalLbConfigLoadBalancerNodePoolConfigNodePoolConfig {
  const GkeonpremBareMetalClusterLoadBalancerMetalLbConfigLoadBalancerNodePoolConfigNodePoolConfig({
    this.labels,
    this.operatingSystem,
    this.nodeConfigs,
    this.taints,
  });

  final TfArg<Map<String, String>>? labels;

  final TfArg<String>? operatingSystem;

  final List<
    GkeonpremBareMetalClusterLoadBalancerMetalLbConfigLoadBalancerNodePoolConfigNodePoolConfigNodeConfigs
  >?
  nodeConfigs;

  final List<
    GkeonpremBareMetalClusterLoadBalancerMetalLbConfigLoadBalancerNodePoolConfigNodePoolConfigTaints
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

/// Typed helper for the `load_balancer.metal_lb_config.load_balancer_node_pool_config.node_pool_config.node_configs` block of
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalClusterLoadBalancerMetalLbConfigLoadBalancerNodePoolConfigNodePoolConfigNodeConfigs {
  const GkeonpremBareMetalClusterLoadBalancerMetalLbConfigLoadBalancerNodePoolConfigNodePoolConfigNodeConfigs({
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

/// Typed helper for the `load_balancer.metal_lb_config.load_balancer_node_pool_config.node_pool_config.taints` block of
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalClusterLoadBalancerMetalLbConfigLoadBalancerNodePoolConfigNodePoolConfigTaints {
  const GkeonpremBareMetalClusterLoadBalancerMetalLbConfigLoadBalancerNodePoolConfigNodePoolConfigTaints({
    this.effect,
    this.key,
    this.value,
  });

  final TfArg<
    GkeonpremBareMetalClusterLoadBalancerMetalLbConfigLoadBalancerNodePoolConfigNodePoolConfigTaintsEffect
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
enum GkeonpremBareMetalClusterLoadBalancerMetalLbConfigLoadBalancerNodePoolConfigNodePoolConfigTaintsEffect
    implements TerraformEnum {
  effectUnspecified('EFFECT_UNSPECIFIED'),
  preferNoSchedule('PREFER_NO_SCHEDULE'),
  noExecute('NO_EXECUTE');

  const GkeonpremBareMetalClusterLoadBalancerMetalLbConfigLoadBalancerNodePoolConfigNodePoolConfigTaintsEffect(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `load_balancer.port_config` block of
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalClusterLoadBalancerPortConfig {
  const GkeonpremBareMetalClusterLoadBalancerPortConfig({
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
final class GkeonpremBareMetalClusterLoadBalancerVipConfig {
  const GkeonpremBareMetalClusterLoadBalancerVipConfig({
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

  final TfArg<List<Object?>> maintenanceAddressCidrBlocks;

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

  final GkeonpremBareMetalClusterNetworkConfigIslandModeCidr? islandModeCidr;

  final GkeonpremBareMetalClusterNetworkConfigMultipleNetworkInterfacesConfig?
  multipleNetworkInterfacesConfig;

  final GkeonpremBareMetalClusterNetworkConfigSrIovConfig? srIovConfig;

  Map<String, Object?> encode() => {
    if (advancedNetworking != null)
      'advanced_networking': advancedNetworking!.toTfJson(),
    if (islandModeCidr != null) 'island_mode_cidr': islandModeCidr!.encode(),
    if (multipleNetworkInterfacesConfig != null)
      'multiple_network_interfaces_config': multipleNetworkInterfacesConfig!
          .encode(),
    if (srIovConfig != null) 'sr_iov_config': srIovConfig!.encode(),
  };
}

/// Typed helper for the `network_config.island_mode_cidr` block of
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalClusterNetworkConfigIslandModeCidr {
  const GkeonpremBareMetalClusterNetworkConfigIslandModeCidr({
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
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalClusterNetworkConfigMultipleNetworkInterfacesConfig {
  const GkeonpremBareMetalClusterNetworkConfigMultipleNetworkInterfacesConfig({
    this.enabled,
  });

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
  };
}

/// Typed helper for the `network_config.sr_iov_config` block of
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalClusterNetworkConfigSrIovConfig {
  const GkeonpremBareMetalClusterNetworkConfigSrIovConfig({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
  };
}

/// Typed helper for the `node_access_config` block of
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalClusterNodeAccessConfig {
  const GkeonpremBareMetalClusterNodeAccessConfig({this.loginUser});

  final TfArg<String>? loginUser;

  Map<String, Object?> encode() => {
    if (loginUser != null) 'login_user': loginUser!.toTfJson(),
  };
}

/// Typed helper for the `node_config` block of
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalClusterNodeConfig {
  const GkeonpremBareMetalClusterNodeConfig({
    this.containerRuntime,
    this.maxPodsPerNode,
  });

  final TfArg<GkeonpremBareMetalClusterNodeConfigContainerRuntime>?
  containerRuntime;

  final TfArg<num>? maxPodsPerNode;

  Map<String, Object?> encode() => {
    if (containerRuntime != null)
      'container_runtime': containerRuntime!.toTfJson(),
    if (maxPodsPerNode != null) 'max_pods_per_node': maxPodsPerNode!.toTfJson(),
  };
}

/// `container_runtime` — derived from the provider schema description.
enum GkeonpremBareMetalClusterNodeConfigContainerRuntime
    implements TerraformEnum {
  containerRuntimeUnspecified('CONTAINER_RUNTIME_UNSPECIFIED'),
  docker('DOCKER'),
  containerd('CONTAINERD');

  const GkeonpremBareMetalClusterNodeConfigContainerRuntime(
    this.terraformValue,
  );
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

  final TfArg<List<Object?>>? noProxy;

  final TfArg<String> uri;

  Map<String, Object?> encode() => {
    if (noProxy != null) 'no_proxy': noProxy!.toTfJson(),
    'uri': uri.toTfJson(),
  };
}

/// Typed helper for the `security_config` block of
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalClusterSecurityConfig {
  const GkeonpremBareMetalClusterSecurityConfig({this.authorization});

  final GkeonpremBareMetalClusterSecurityConfigAuthorization? authorization;

  Map<String, Object?> encode() => {
    if (authorization != null) 'authorization': authorization!.encode(),
  };
}

/// Typed helper for the `security_config.authorization` block of
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalClusterSecurityConfigAuthorization {
  const GkeonpremBareMetalClusterSecurityConfigAuthorization({
    required this.adminUsers,
  });

  final List<GkeonpremBareMetalClusterSecurityConfigAuthorizationAdminUsers>
  adminUsers;

  Map<String, Object?> encode() => {
    'admin_users': [for (final e in adminUsers) e.encode()],
  };
}

/// Typed helper for the `security_config.authorization.admin_users` block of
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalClusterSecurityConfigAuthorizationAdminUsers {
  const GkeonpremBareMetalClusterSecurityConfigAuthorizationAdminUsers({
    required this.username,
  });

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

  final GkeonpremBareMetalClusterStorageLvpNodeMountsConfig lvpNodeMountsConfig;

  final GkeonpremBareMetalClusterStorageLvpShareConfig lvpShareConfig;

  Map<String, Object?> encode() => {
    'lvp_node_mounts_config': lvpNodeMountsConfig.encode(),
    'lvp_share_config': lvpShareConfig.encode(),
  };
}

/// Typed helper for the `storage.lvp_node_mounts_config` block of
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalClusterStorageLvpNodeMountsConfig {
  const GkeonpremBareMetalClusterStorageLvpNodeMountsConfig({
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
final class GkeonpremBareMetalClusterStorageLvpShareConfig {
  const GkeonpremBareMetalClusterStorageLvpShareConfig({
    this.sharedPathPvCount,
    required this.lvpConfig,
  });

  final TfArg<num>? sharedPathPvCount;

  final GkeonpremBareMetalClusterStorageLvpShareConfigLvpConfig lvpConfig;

  Map<String, Object?> encode() => {
    if (sharedPathPvCount != null)
      'shared_path_pv_count': sharedPathPvCount!.toTfJson(),
    'lvp_config': lvpConfig.encode(),
  };
}

/// Typed helper for the `storage.lvp_share_config.lvp_config` block of
/// `google_gkeonprem_bare_metal_cluster` (derived from provider schema).
@immutable
final class GkeonpremBareMetalClusterStorageLvpShareConfigLvpConfig {
  const GkeonpremBareMetalClusterStorageLvpShareConfigLvpConfig({
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

  final TfArg<GkeonpremBareMetalClusterUpgradePolicyPolicy>? policy;

  Map<String, Object?> encode() => {
    if (policy != null) 'policy': policy!.toTfJson(),
  };
}

/// `policy` — derived from the provider schema description.
enum GkeonpremBareMetalClusterUpgradePolicyPolicy implements TerraformEnum {
  serial('SERIAL'),
  concurrent('CONCURRENT');

  const GkeonpremBareMetalClusterUpgradePolicyPolicy(this.terraformValue);
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

  GoogleGkeonpremBareMetalCluster({
    required super.localName,
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
    GkeonpremBareMetalClusterClusterOperations? clusterOperations,
    GkeonpremBareMetalClusterOsEnvironmentConfig? osEnvironmentConfig,
    GkeonpremBareMetalClusterProxy? proxy,
    GkeonpremBareMetalClusterBinaryAuthorization? binaryAuthorization,
    GkeonpremBareMetalClusterUpgradePolicy? upgradePolicy,
    TfArg<Map<String, String>>? annotations,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'bare_metal_version': bareMetalVersion,
           'admin_cluster_membership': adminClusterMembership,
           if (description != null) 'description': description,
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
           if (annotations != null) 'annotations': annotations,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleGkeonpremBareMetalClusterSensitive;

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
