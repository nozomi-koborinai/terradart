// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_gkeonprem_vmware_cluster`.
const Set<String> _googleGkeonpremVmwareClusterSensitive = <String>{};

/// Gkeonprem Vmware Cluster enum for `state`.
enum GkeonpremVmwareClusterState implements TerraformEnum {
  stateUnspecified('STATE_UNSPECIFIED'),
  provisioning('PROVISIONING'),
  running('RUNNING'),
  reconciling('RECONCILING'),
  stopping('STOPPING'),
  error('ERROR'),
  degraded('DEGRADED');

  const GkeonpremVmwareClusterState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `anti_affinity_groups` block of
/// `google_gkeonprem_vmware_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareClusterAntiAffinityGroups {
  const GkeonpremVmwareClusterAntiAffinityGroups({
    required this.aagConfigDisabled,
  });

  final TfArg<bool> aagConfigDisabled;

  Map<String, Object?> encode() => {
    'aag_config_disabled': aagConfigDisabled.toTfJson(),
  };
}

/// Typed helper for the `authorization` block of
/// `google_gkeonprem_vmware_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareClusterAuthorization {
  const GkeonpremVmwareClusterAuthorization({this.adminUsers});

  final List<GkeonpremVmwareClusterAuthorizationAdminUsers>? adminUsers;

  Map<String, Object?> encode() => {
    if (adminUsers != null)
      'admin_users': [for (final e in adminUsers!) e.encode()],
  };
}

/// Typed helper for the `authorization.admin_users` block of
/// `google_gkeonprem_vmware_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareClusterAuthorizationAdminUsers {
  const GkeonpremVmwareClusterAuthorizationAdminUsers({required this.username});

  final TfArg<String> username;

  Map<String, Object?> encode() => {'username': username.toTfJson()};
}

/// Typed helper for the `auto_repair_config` block of
/// `google_gkeonprem_vmware_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareClusterAutoRepairConfig {
  const GkeonpremVmwareClusterAutoRepairConfig({required this.enabled});

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `control_plane_node` block of
/// `google_gkeonprem_vmware_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareClusterControlPlaneNode {
  const GkeonpremVmwareClusterControlPlaneNode({
    this.cpus,
    this.memory,
    this.replicas,
    this.autoResizeConfig,
  });

  final TfArg<num>? cpus;

  final TfArg<num>? memory;

  final TfArg<num>? replicas;

  final GkeonpremVmwareClusterControlPlaneNodeAutoResizeConfig?
  autoResizeConfig;

  Map<String, Object?> encode() => {
    if (cpus != null) 'cpus': cpus!.toTfJson(),
    if (memory != null) 'memory': memory!.toTfJson(),
    if (replicas != null) 'replicas': replicas!.toTfJson(),
    if (autoResizeConfig != null)
      'auto_resize_config': autoResizeConfig!.encode(),
  };
}

/// Typed helper for the `control_plane_node.auto_resize_config` block of
/// `google_gkeonprem_vmware_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareClusterControlPlaneNodeAutoResizeConfig {
  const GkeonpremVmwareClusterControlPlaneNodeAutoResizeConfig({
    required this.enabled,
  });

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `dataplane_v2` block of
/// `google_gkeonprem_vmware_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareClusterDataplaneV2 {
  const GkeonpremVmwareClusterDataplaneV2({
    this.advancedNetworking,
    this.dataplaneV2Enabled,
    this.windowsDataplaneV2Enabled,
  });

  final TfArg<bool>? advancedNetworking;

  final TfArg<bool>? dataplaneV2Enabled;

  final TfArg<bool>? windowsDataplaneV2Enabled;

  Map<String, Object?> encode() => {
    if (advancedNetworking != null)
      'advanced_networking': advancedNetworking!.toTfJson(),
    if (dataplaneV2Enabled != null)
      'dataplane_v2_enabled': dataplaneV2Enabled!.toTfJson(),
    if (windowsDataplaneV2Enabled != null)
      'windows_dataplane_v2_enabled': windowsDataplaneV2Enabled!.toTfJson(),
  };
}

/// Typed helper for the `load_balancer` block of
/// `google_gkeonprem_vmware_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareClusterLoadBalancer {
  const GkeonpremVmwareClusterLoadBalancer({
    this.f5Config,
    this.manualLbConfig,
    this.metalLbConfig,
    this.vipConfig,
  });

  final GkeonpremVmwareClusterLoadBalancerF5Config? f5Config;

  final GkeonpremVmwareClusterLoadBalancerManualLbConfig? manualLbConfig;

  final GkeonpremVmwareClusterLoadBalancerMetalLbConfig? metalLbConfig;

  final GkeonpremVmwareClusterLoadBalancerVipConfig? vipConfig;

  Map<String, Object?> encode() => {
    if (f5Config != null) 'f5_config': f5Config!.encode(),
    if (manualLbConfig != null) 'manual_lb_config': manualLbConfig!.encode(),
    if (metalLbConfig != null) 'metal_lb_config': metalLbConfig!.encode(),
    if (vipConfig != null) 'vip_config': vipConfig!.encode(),
  };
}

/// Typed helper for the `load_balancer.f5_config` block of
/// `google_gkeonprem_vmware_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareClusterLoadBalancerF5Config {
  const GkeonpremVmwareClusterLoadBalancerF5Config({
    this.address,
    this.partition,
    this.snatPool,
  });

  final TfArg<String>? address;

  final TfArg<String>? partition;

  final TfArg<String>? snatPool;

  Map<String, Object?> encode() => {
    if (address != null) 'address': address!.toTfJson(),
    if (partition != null) 'partition': partition!.toTfJson(),
    if (snatPool != null) 'snat_pool': snatPool!.toTfJson(),
  };
}

/// Typed helper for the `load_balancer.manual_lb_config` block of
/// `google_gkeonprem_vmware_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareClusterLoadBalancerManualLbConfig {
  const GkeonpremVmwareClusterLoadBalancerManualLbConfig({
    this.controlPlaneNodePort,
    this.ingressHttpNodePort,
    this.ingressHttpsNodePort,
    this.konnectivityServerNodePort,
  });

  final TfArg<num>? controlPlaneNodePort;

  final TfArg<num>? ingressHttpNodePort;

  final TfArg<num>? ingressHttpsNodePort;

  final TfArg<num>? konnectivityServerNodePort;

  Map<String, Object?> encode() => {
    if (controlPlaneNodePort != null)
      'control_plane_node_port': controlPlaneNodePort!.toTfJson(),
    if (ingressHttpNodePort != null)
      'ingress_http_node_port': ingressHttpNodePort!.toTfJson(),
    if (ingressHttpsNodePort != null)
      'ingress_https_node_port': ingressHttpsNodePort!.toTfJson(),
    if (konnectivityServerNodePort != null)
      'konnectivity_server_node_port': konnectivityServerNodePort!.toTfJson(),
  };
}

/// Typed helper for the `load_balancer.metal_lb_config` block of
/// `google_gkeonprem_vmware_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareClusterLoadBalancerMetalLbConfig {
  const GkeonpremVmwareClusterLoadBalancerMetalLbConfig({
    required this.addressPools,
  });

  final List<GkeonpremVmwareClusterLoadBalancerMetalLbConfigAddressPools>
  addressPools;

  Map<String, Object?> encode() => {
    'address_pools': [for (final e in addressPools) e.encode()],
  };
}

/// Typed helper for the `load_balancer.metal_lb_config.address_pools` block of
/// `google_gkeonprem_vmware_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareClusterLoadBalancerMetalLbConfigAddressPools {
  const GkeonpremVmwareClusterLoadBalancerMetalLbConfigAddressPools({
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

/// Typed helper for the `load_balancer.vip_config` block of
/// `google_gkeonprem_vmware_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareClusterLoadBalancerVipConfig {
  const GkeonpremVmwareClusterLoadBalancerVipConfig({
    this.controlPlaneVip,
    this.ingressVip,
  });

  final TfArg<String>? controlPlaneVip;

  final TfArg<String>? ingressVip;

  Map<String, Object?> encode() => {
    if (controlPlaneVip != null)
      'control_plane_vip': controlPlaneVip!.toTfJson(),
    if (ingressVip != null) 'ingress_vip': ingressVip!.toTfJson(),
  };
}

/// Typed helper for the `network_config` block of
/// `google_gkeonprem_vmware_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareClusterNetworkConfig {
  const GkeonpremVmwareClusterNetworkConfig({
    required this.podAddressCidrBlocks,
    required this.serviceAddressCidrBlocks,
    this.vcenterNetwork,
    this.controlPlaneV2Config,
    this.dhcpIpConfig,
    this.hostConfig,
    this.staticIpConfig,
  });

  final TfArg<List<Object?>> podAddressCidrBlocks;

  final TfArg<List<Object?>> serviceAddressCidrBlocks;

  final TfArg<String>? vcenterNetwork;

  final GkeonpremVmwareClusterNetworkConfigControlPlaneV2Config?
  controlPlaneV2Config;

  final GkeonpremVmwareClusterNetworkConfigDhcpIpConfig? dhcpIpConfig;

  final GkeonpremVmwareClusterNetworkConfigHostConfig? hostConfig;

  final GkeonpremVmwareClusterNetworkConfigStaticIpConfig? staticIpConfig;

  Map<String, Object?> encode() => {
    'pod_address_cidr_blocks': podAddressCidrBlocks.toTfJson(),
    'service_address_cidr_blocks': serviceAddressCidrBlocks.toTfJson(),
    if (vcenterNetwork != null) 'vcenter_network': vcenterNetwork!.toTfJson(),
    if (controlPlaneV2Config != null)
      'control_plane_v2_config': controlPlaneV2Config!.encode(),
    if (dhcpIpConfig != null) 'dhcp_ip_config': dhcpIpConfig!.encode(),
    if (hostConfig != null) 'host_config': hostConfig!.encode(),
    if (staticIpConfig != null) 'static_ip_config': staticIpConfig!.encode(),
  };
}

/// Typed helper for the `network_config.control_plane_v2_config` block of
/// `google_gkeonprem_vmware_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareClusterNetworkConfigControlPlaneV2Config {
  const GkeonpremVmwareClusterNetworkConfigControlPlaneV2Config({
    this.controlPlaneIpBlock,
  });

  final GkeonpremVmwareClusterNetworkConfigControlPlaneV2ConfigControlPlaneIpBlock?
  controlPlaneIpBlock;

  Map<String, Object?> encode() => {
    if (controlPlaneIpBlock != null)
      'control_plane_ip_block': controlPlaneIpBlock!.encode(),
  };
}

/// Typed helper for the `network_config.control_plane_v2_config.control_plane_ip_block` block of
/// `google_gkeonprem_vmware_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareClusterNetworkConfigControlPlaneV2ConfigControlPlaneIpBlock {
  const GkeonpremVmwareClusterNetworkConfigControlPlaneV2ConfigControlPlaneIpBlock({
    this.gateway,
    this.netmask,
    this.ips,
  });

  final TfArg<String>? gateway;

  final TfArg<String>? netmask;

  final List<
    GkeonpremVmwareClusterNetworkConfigControlPlaneV2ConfigControlPlaneIpBlockIps
  >?
  ips;

  Map<String, Object?> encode() => {
    if (gateway != null) 'gateway': gateway!.toTfJson(),
    if (netmask != null) 'netmask': netmask!.toTfJson(),
    if (ips != null) 'ips': [for (final e in ips!) e.encode()],
  };
}

/// Typed helper for the `network_config.control_plane_v2_config.control_plane_ip_block.ips` block of
/// `google_gkeonprem_vmware_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareClusterNetworkConfigControlPlaneV2ConfigControlPlaneIpBlockIps {
  const GkeonpremVmwareClusterNetworkConfigControlPlaneV2ConfigControlPlaneIpBlockIps({
    this.hostname,
    this.ip,
  });

  final TfArg<String>? hostname;

  final TfArg<String>? ip;

  Map<String, Object?> encode() => {
    if (hostname != null) 'hostname': hostname!.toTfJson(),
    if (ip != null) 'ip': ip!.toTfJson(),
  };
}

/// Typed helper for the `network_config.dhcp_ip_config` block of
/// `google_gkeonprem_vmware_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareClusterNetworkConfigDhcpIpConfig {
  const GkeonpremVmwareClusterNetworkConfigDhcpIpConfig({
    required this.enabled,
  });

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `network_config.host_config` block of
/// `google_gkeonprem_vmware_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareClusterNetworkConfigHostConfig {
  const GkeonpremVmwareClusterNetworkConfigHostConfig({
    this.dnsSearchDomains,
    this.dnsServers,
    this.ntpServers,
  });

  final TfArg<List<Object?>>? dnsSearchDomains;

  final TfArg<List<Object?>>? dnsServers;

  final TfArg<List<Object?>>? ntpServers;

  Map<String, Object?> encode() => {
    if (dnsSearchDomains != null)
      'dns_search_domains': dnsSearchDomains!.toTfJson(),
    if (dnsServers != null) 'dns_servers': dnsServers!.toTfJson(),
    if (ntpServers != null) 'ntp_servers': ntpServers!.toTfJson(),
  };
}

/// Typed helper for the `network_config.static_ip_config` block of
/// `google_gkeonprem_vmware_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareClusterNetworkConfigStaticIpConfig {
  const GkeonpremVmwareClusterNetworkConfigStaticIpConfig({
    required this.ipBlocks,
  });

  final List<GkeonpremVmwareClusterNetworkConfigStaticIpConfigIpBlocks>
  ipBlocks;

  Map<String, Object?> encode() => {
    'ip_blocks': [for (final e in ipBlocks) e.encode()],
  };
}

/// Typed helper for the `network_config.static_ip_config.ip_blocks` block of
/// `google_gkeonprem_vmware_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareClusterNetworkConfigStaticIpConfigIpBlocks {
  const GkeonpremVmwareClusterNetworkConfigStaticIpConfigIpBlocks({
    required this.gateway,
    required this.netmask,
    required this.ips,
  });

  final TfArg<String> gateway;

  final TfArg<String> netmask;

  final List<GkeonpremVmwareClusterNetworkConfigStaticIpConfigIpBlocksIps> ips;

  Map<String, Object?> encode() => {
    'gateway': gateway.toTfJson(),
    'netmask': netmask.toTfJson(),
    'ips': [for (final e in ips) e.encode()],
  };
}

/// Typed helper for the `network_config.static_ip_config.ip_blocks.ips` block of
/// `google_gkeonprem_vmware_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareClusterNetworkConfigStaticIpConfigIpBlocksIps {
  const GkeonpremVmwareClusterNetworkConfigStaticIpConfigIpBlocksIps({
    this.hostname,
    required this.ip,
  });

  final TfArg<String>? hostname;

  final TfArg<String> ip;

  Map<String, Object?> encode() => {
    if (hostname != null) 'hostname': hostname!.toTfJson(),
    'ip': ip.toTfJson(),
  };
}

/// Typed helper for the `storage` block of
/// `google_gkeonprem_vmware_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareClusterStorage {
  const GkeonpremVmwareClusterStorage({required this.vsphereCsiDisabled});

  final TfArg<bool> vsphereCsiDisabled;

  Map<String, Object?> encode() => {
    'vsphere_csi_disabled': vsphereCsiDisabled.toTfJson(),
  };
}

/// Typed helper for the `upgrade_policy` block of
/// `google_gkeonprem_vmware_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareClusterUpgradePolicy {
  const GkeonpremVmwareClusterUpgradePolicy({this.controlPlaneOnly});

  final TfArg<bool>? controlPlaneOnly;

  Map<String, Object?> encode() => {
    if (controlPlaneOnly != null)
      'control_plane_only': controlPlaneOnly!.toTfJson(),
  };
}

/// Typed helper for the `vcenter` block of
/// `google_gkeonprem_vmware_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareClusterVcenter {
  const GkeonpremVmwareClusterVcenter({
    this.caCertData,
    this.cluster,
    this.datacenter,
    this.datastore,
    this.folder,
    this.resourcePool,
    this.storagePolicyName,
  });

  final TfArg<String>? caCertData;

  final TfArg<String>? cluster;

  final TfArg<String>? datacenter;

  final TfArg<String>? datastore;

  final TfArg<String>? folder;

  final TfArg<String>? resourcePool;

  final TfArg<String>? storagePolicyName;

  Map<String, Object?> encode() => {
    if (caCertData != null) 'ca_cert_data': caCertData!.toTfJson(),
    if (cluster != null) 'cluster': cluster!.toTfJson(),
    if (datacenter != null) 'datacenter': datacenter!.toTfJson(),
    if (datastore != null) 'datastore': datastore!.toTfJson(),
    if (folder != null) 'folder': folder!.toTfJson(),
    if (resourcePool != null) 'resource_pool': resourcePool!.toTfJson(),
    if (storagePolicyName != null)
      'storage_policy_name': storagePolicyName!.toTfJson(),
  };
}

/// Factory wrapper for `google_gkeonprem_vmware_cluster`.
///
/// A Google VMware User Cluster.
///
/// GKE on-prem / GDC **VMware user cluster** — Kubernetes cluster on vSphere,
/// enrolled under an admin cluster membership.
///
/// **Cost / apply:** gcp-cost: GKE Enterprise / GDC `9186-F79E-3871` vSphere
/// SKU `82D9-AB10-CA55` **$0.03288/h**. billing-behavior: GDC platform fees
/// while the cluster is registered; requires a real vSphere environment
/// absent on `terradart-validate`. **Never** wire into apply-smoke.
///
/// Enable `gkeonprem.googleapis.com` before apply. [adminClusterMembership]
/// and [controlPlaneNode] are required by the provider.
final class GoogleGkeonpremVmwareCluster extends Resource {
  static const String tfType = 'google_gkeonprem_vmware_cluster';

  GoogleGkeonpremVmwareCluster({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    required TfArg<String> onPremVersion,
    required TfArg<String> adminClusterMembership,
    TfArg<String>? description,
    GkeonpremVmwareClusterNetworkConfig? networkConfig,
    required GkeonpremVmwareClusterControlPlaneNode controlPlaneNode,
    GkeonpremVmwareClusterLoadBalancer? loadBalancer,
    GkeonpremVmwareClusterStorage? storage,
    GkeonpremVmwareClusterVcenter? vcenter,
    GkeonpremVmwareClusterAntiAffinityGroups? antiAffinityGroups,
    GkeonpremVmwareClusterAuthorization? authorization,
    GkeonpremVmwareClusterAutoRepairConfig? autoRepairConfig,
    GkeonpremVmwareClusterDataplaneV2? dataplaneV2,
    GkeonpremVmwareClusterUpgradePolicy? upgradePolicy,
    TfArg<bool>? enableControlPlaneV2,
    TfArg<bool>? enableAdvancedCluster,
    TfArg<bool>? disableBundledIngress,
    TfArg<bool>? vmTrackingEnabled,
    TfArg<List<String>>? skipValidations,
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
           'on_prem_version': onPremVersion,
           'admin_cluster_membership': adminClusterMembership,
           if (description != null) 'description': description,
           if (networkConfig != null)
             'network_config': TfArg.literal(networkConfig.encode()),
           'control_plane_node': TfArg.literal(controlPlaneNode.encode()),
           if (loadBalancer != null)
             'load_balancer': TfArg.literal(loadBalancer.encode()),
           if (storage != null) 'storage': TfArg.literal(storage.encode()),
           if (vcenter != null) 'vcenter': TfArg.literal(vcenter.encode()),
           if (antiAffinityGroups != null)
             'anti_affinity_groups': TfArg.literal(antiAffinityGroups.encode()),
           if (authorization != null)
             'authorization': TfArg.literal(authorization.encode()),
           if (autoRepairConfig != null)
             'auto_repair_config': TfArg.literal(autoRepairConfig.encode()),
           if (dataplaneV2 != null)
             'dataplane_v2': TfArg.literal(dataplaneV2.encode()),
           if (upgradePolicy != null)
             'upgrade_policy': TfArg.literal(upgradePolicy.encode()),
           if (enableControlPlaneV2 != null)
             'enable_control_plane_v2': enableControlPlaneV2,
           if (enableAdvancedCluster != null)
             'enable_advanced_cluster': enableAdvancedCluster,
           if (disableBundledIngress != null)
             'disable_bundled_ingress': disableBundledIngress,
           if (vmTrackingEnabled != null)
             'vm_tracking_enabled': vmTrackingEnabled,
           if (skipValidations != null) 'skip_validations': skipValidations,
           if (annotations != null) 'annotations': annotations,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleGkeonpremVmwareClusterSensitive;

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
