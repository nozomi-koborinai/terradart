// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_gkeonprem_vmware_admin_cluster`.
const Set<String> _googleGkeonpremVmwareAdminClusterSensitive = <String>{};

/// Typed helper for the `addon_node` block of
/// `google_gkeonprem_vmware_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareAdminClusterAddonNode {
  const GkeonpremVmwareAdminClusterAddonNode({this.autoResizeConfig});

  final GkeonpremVmwareAdminClusterAddonNodeAutoResizeConfig? autoResizeConfig;

  Map<String, Object?> encode() => {
    if (autoResizeConfig != null)
      'auto_resize_config': autoResizeConfig!.encode(),
  };
}

/// Typed helper for the `addon_node.auto_resize_config` block of
/// `google_gkeonprem_vmware_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareAdminClusterAddonNodeAutoResizeConfig {
  const GkeonpremVmwareAdminClusterAddonNodeAutoResizeConfig({
    required this.enabled,
  });

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `anti_affinity_groups` block of
/// `google_gkeonprem_vmware_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareAdminClusterAntiAffinityGroups {
  const GkeonpremVmwareAdminClusterAntiAffinityGroups({
    required this.aagConfigDisabled,
  });

  final TfArg<bool> aagConfigDisabled;

  Map<String, Object?> encode() => {
    'aag_config_disabled': aagConfigDisabled.toTfJson(),
  };
}

/// Typed helper for the `authorization` block of
/// `google_gkeonprem_vmware_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareAdminClusterAuthorization {
  const GkeonpremVmwareAdminClusterAuthorization({this.viewerUsers});

  final List<GkeonpremVmwareAdminClusterAuthorizationViewerUsers>? viewerUsers;

  Map<String, Object?> encode() => {
    if (viewerUsers != null)
      'viewer_users': [for (final e in viewerUsers!) e.encode()],
  };
}

/// Typed helper for the `authorization.viewer_users` block of
/// `google_gkeonprem_vmware_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareAdminClusterAuthorizationViewerUsers {
  const GkeonpremVmwareAdminClusterAuthorizationViewerUsers({
    required this.username,
  });

  final TfArg<String> username;

  Map<String, Object?> encode() => {'username': username.toTfJson()};
}

/// Typed helper for the `auto_repair_config` block of
/// `google_gkeonprem_vmware_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareAdminClusterAutoRepairConfig {
  const GkeonpremVmwareAdminClusterAutoRepairConfig({required this.enabled});

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `control_plane_node` block of
/// `google_gkeonprem_vmware_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareAdminClusterControlPlaneNode {
  const GkeonpremVmwareAdminClusterControlPlaneNode({
    this.cpus,
    this.memory,
    this.replicas,
  });

  final TfArg<num>? cpus;

  final TfArg<num>? memory;

  final TfArg<num>? replicas;

  Map<String, Object?> encode() => {
    if (cpus != null) 'cpus': cpus!.toTfJson(),
    if (memory != null) 'memory': memory!.toTfJson(),
    if (replicas != null) 'replicas': replicas!.toTfJson(),
  };
}

/// Typed helper for the `load_balancer` block of
/// `google_gkeonprem_vmware_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareAdminClusterLoadBalancer {
  const GkeonpremVmwareAdminClusterLoadBalancer({
    this.f5Config,
    this.manualLbConfig,
    this.metalLbConfig,
    required this.vipConfig,
  });

  final GkeonpremVmwareAdminClusterLoadBalancerF5Config? f5Config;

  final GkeonpremVmwareAdminClusterLoadBalancerManualLbConfig? manualLbConfig;

  final GkeonpremVmwareAdminClusterLoadBalancerMetalLbConfig? metalLbConfig;

  final GkeonpremVmwareAdminClusterLoadBalancerVipConfig vipConfig;

  Map<String, Object?> encode() => {
    if (f5Config != null) 'f5_config': f5Config!.encode(),
    if (manualLbConfig != null) 'manual_lb_config': manualLbConfig!.encode(),
    if (metalLbConfig != null) 'metal_lb_config': metalLbConfig!.encode(),
    'vip_config': vipConfig.encode(),
  };
}

/// Typed helper for the `load_balancer.f5_config` block of
/// `google_gkeonprem_vmware_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareAdminClusterLoadBalancerF5Config {
  const GkeonpremVmwareAdminClusterLoadBalancerF5Config({
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
/// `google_gkeonprem_vmware_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareAdminClusterLoadBalancerManualLbConfig {
  const GkeonpremVmwareAdminClusterLoadBalancerManualLbConfig({
    this.addonsNodePort,
    this.controlPlaneNodePort,
    this.ingressHttpNodePort,
    this.ingressHttpsNodePort,
    this.konnectivityServerNodePort,
  });

  final TfArg<num>? addonsNodePort;

  final TfArg<num>? controlPlaneNodePort;

  final TfArg<num>? ingressHttpNodePort;

  final TfArg<num>? ingressHttpsNodePort;

  final TfArg<num>? konnectivityServerNodePort;

  Map<String, Object?> encode() => {
    if (addonsNodePort != null) 'addons_node_port': addonsNodePort!.toTfJson(),
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
/// `google_gkeonprem_vmware_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareAdminClusterLoadBalancerMetalLbConfig {
  const GkeonpremVmwareAdminClusterLoadBalancerMetalLbConfig({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
  };
}

/// Typed helper for the `load_balancer.vip_config` block of
/// `google_gkeonprem_vmware_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareAdminClusterLoadBalancerVipConfig {
  const GkeonpremVmwareAdminClusterLoadBalancerVipConfig({
    this.addonsVip,
    required this.controlPlaneVip,
  });

  final TfArg<String>? addonsVip;

  final TfArg<String> controlPlaneVip;

  Map<String, Object?> encode() => {
    if (addonsVip != null) 'addons_vip': addonsVip!.toTfJson(),
    'control_plane_vip': controlPlaneVip.toTfJson(),
  };
}

/// Typed helper for the `network_config` block of
/// `google_gkeonprem_vmware_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareAdminClusterNetworkConfig {
  const GkeonpremVmwareAdminClusterNetworkConfig({
    required this.podAddressCidrBlocks,
    required this.serviceAddressCidrBlocks,
    this.vcenterNetwork,
    this.dhcpIpConfig,
    this.haControlPlaneConfig,
    this.hostConfig,
    this.staticIpConfig,
  });

  final TfArg<List<Object?>> podAddressCidrBlocks;

  final TfArg<List<Object?>> serviceAddressCidrBlocks;

  final TfArg<String>? vcenterNetwork;

  final GkeonpremVmwareAdminClusterNetworkConfigDhcpIpConfig? dhcpIpConfig;

  final GkeonpremVmwareAdminClusterNetworkConfigHaControlPlaneConfig?
  haControlPlaneConfig;

  final GkeonpremVmwareAdminClusterNetworkConfigHostConfig? hostConfig;

  final GkeonpremVmwareAdminClusterNetworkConfigStaticIpConfig? staticIpConfig;

  Map<String, Object?> encode() => {
    'pod_address_cidr_blocks': podAddressCidrBlocks.toTfJson(),
    'service_address_cidr_blocks': serviceAddressCidrBlocks.toTfJson(),
    if (vcenterNetwork != null) 'vcenter_network': vcenterNetwork!.toTfJson(),
    if (dhcpIpConfig != null) 'dhcp_ip_config': dhcpIpConfig!.encode(),
    if (haControlPlaneConfig != null)
      'ha_control_plane_config': haControlPlaneConfig!.encode(),
    if (hostConfig != null) 'host_config': hostConfig!.encode(),
    if (staticIpConfig != null) 'static_ip_config': staticIpConfig!.encode(),
  };
}

/// Typed helper for the `network_config.dhcp_ip_config` block of
/// `google_gkeonprem_vmware_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareAdminClusterNetworkConfigDhcpIpConfig {
  const GkeonpremVmwareAdminClusterNetworkConfigDhcpIpConfig({
    required this.enabled,
  });

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `network_config.ha_control_plane_config` block of
/// `google_gkeonprem_vmware_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareAdminClusterNetworkConfigHaControlPlaneConfig {
  const GkeonpremVmwareAdminClusterNetworkConfigHaControlPlaneConfig({
    this.controlPlaneIpBlock,
  });

  final GkeonpremVmwareAdminClusterNetworkConfigHaControlPlaneConfigControlPlaneIpBlock?
  controlPlaneIpBlock;

  Map<String, Object?> encode() => {
    if (controlPlaneIpBlock != null)
      'control_plane_ip_block': controlPlaneIpBlock!.encode(),
  };
}

/// Typed helper for the `network_config.ha_control_plane_config.control_plane_ip_block` block of
/// `google_gkeonprem_vmware_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareAdminClusterNetworkConfigHaControlPlaneConfigControlPlaneIpBlock {
  const GkeonpremVmwareAdminClusterNetworkConfigHaControlPlaneConfigControlPlaneIpBlock({
    required this.gateway,
    required this.netmask,
    required this.ips,
  });

  final TfArg<String> gateway;

  final TfArg<String> netmask;

  final List<
    GkeonpremVmwareAdminClusterNetworkConfigHaControlPlaneConfigControlPlaneIpBlockIps
  >
  ips;

  Map<String, Object?> encode() => {
    'gateway': gateway.toTfJson(),
    'netmask': netmask.toTfJson(),
    'ips': [for (final e in ips) e.encode()],
  };
}

/// Typed helper for the `network_config.ha_control_plane_config.control_plane_ip_block.ips` block of
/// `google_gkeonprem_vmware_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareAdminClusterNetworkConfigHaControlPlaneConfigControlPlaneIpBlockIps {
  const GkeonpremVmwareAdminClusterNetworkConfigHaControlPlaneConfigControlPlaneIpBlockIps({
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

/// Typed helper for the `network_config.host_config` block of
/// `google_gkeonprem_vmware_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareAdminClusterNetworkConfigHostConfig {
  const GkeonpremVmwareAdminClusterNetworkConfigHostConfig({
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
/// `google_gkeonprem_vmware_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareAdminClusterNetworkConfigStaticIpConfig {
  const GkeonpremVmwareAdminClusterNetworkConfigStaticIpConfig({this.ipBlocks});

  final List<GkeonpremVmwareAdminClusterNetworkConfigStaticIpConfigIpBlocks>?
  ipBlocks;

  Map<String, Object?> encode() => {
    if (ipBlocks != null) 'ip_blocks': [for (final e in ipBlocks!) e.encode()],
  };
}

/// Typed helper for the `network_config.static_ip_config.ip_blocks` block of
/// `google_gkeonprem_vmware_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareAdminClusterNetworkConfigStaticIpConfigIpBlocks {
  const GkeonpremVmwareAdminClusterNetworkConfigStaticIpConfigIpBlocks({
    required this.gateway,
    required this.netmask,
    required this.ips,
  });

  final TfArg<String> gateway;

  final TfArg<String> netmask;

  final List<GkeonpremVmwareAdminClusterNetworkConfigStaticIpConfigIpBlocksIps>
  ips;

  Map<String, Object?> encode() => {
    'gateway': gateway.toTfJson(),
    'netmask': netmask.toTfJson(),
    'ips': [for (final e in ips) e.encode()],
  };
}

/// Typed helper for the `network_config.static_ip_config.ip_blocks.ips` block of
/// `google_gkeonprem_vmware_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareAdminClusterNetworkConfigStaticIpConfigIpBlocksIps {
  const GkeonpremVmwareAdminClusterNetworkConfigStaticIpConfigIpBlocksIps({
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

/// Typed helper for the `platform_config` block of
/// `google_gkeonprem_vmware_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareAdminClusterPlatformConfig {
  const GkeonpremVmwareAdminClusterPlatformConfig({
    this.requiredPlatformVersion,
  });

  final TfArg<String>? requiredPlatformVersion;

  Map<String, Object?> encode() => {
    if (requiredPlatformVersion != null)
      'required_platform_version': requiredPlatformVersion!.toTfJson(),
  };
}

/// Typed helper for the `private_registry_config` block of
/// `google_gkeonprem_vmware_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareAdminClusterPrivateRegistryConfig {
  const GkeonpremVmwareAdminClusterPrivateRegistryConfig({
    this.address,
    this.caCert,
  });

  final TfArg<String>? address;

  final TfArg<String>? caCert;

  Map<String, Object?> encode() => {
    if (address != null) 'address': address!.toTfJson(),
    if (caCert != null) 'ca_cert': caCert!.toTfJson(),
  };
}

/// Typed helper for the `proxy` block of
/// `google_gkeonprem_vmware_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareAdminClusterProxy {
  const GkeonpremVmwareAdminClusterProxy({this.noProxy, required this.url});

  final TfArg<String>? noProxy;

  final TfArg<String> url;

  Map<String, Object?> encode() => {
    if (noProxy != null) 'no_proxy': noProxy!.toTfJson(),
    'url': url.toTfJson(),
  };
}

/// Typed helper for the `vcenter` block of
/// `google_gkeonprem_vmware_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareAdminClusterVcenter {
  const GkeonpremVmwareAdminClusterVcenter({
    this.address,
    this.caCertData,
    this.cluster,
    this.dataDisk,
    this.datacenter,
    this.datastore,
    this.folder,
    this.resourcePool,
    this.storagePolicyName,
  });

  final TfArg<String>? address;

  final TfArg<String>? caCertData;

  final TfArg<String>? cluster;

  final TfArg<String>? dataDisk;

  final TfArg<String>? datacenter;

  final TfArg<String>? datastore;

  final TfArg<String>? folder;

  final TfArg<String>? resourcePool;

  final TfArg<String>? storagePolicyName;

  Map<String, Object?> encode() => {
    if (address != null) 'address': address!.toTfJson(),
    if (caCertData != null) 'ca_cert_data': caCertData!.toTfJson(),
    if (cluster != null) 'cluster': cluster!.toTfJson(),
    if (dataDisk != null) 'data_disk': dataDisk!.toTfJson(),
    if (datacenter != null) 'datacenter': datacenter!.toTfJson(),
    if (datastore != null) 'datastore': datastore!.toTfJson(),
    if (folder != null) 'folder': folder!.toTfJson(),
    if (resourcePool != null) 'resource_pool': resourcePool!.toTfJson(),
    if (storagePolicyName != null)
      'storage_policy_name': storagePolicyName!.toTfJson(),
  };
}

/// Factory wrapper for `google_gkeonprem_vmware_admin_cluster`.
///
/// A Google VMware Admin Cluster.
///
/// GKE on-prem / GDC **VMware admin cluster** — bootstrap admin cluster for
/// VMware user clusters.
///
/// **Cost / apply:** gcp-cost: GKE Enterprise / GDC `9186-F79E-3871` vSphere
/// SKU `82D9-AB10-CA55` **$0.03288/h**. billing-behavior: GDC platform fees
/// while clusters are registered; requires a real vSphere environment absent
/// on `terradart-validate`. **Never** wire into apply-smoke.
///
/// Enable `gkeonprem.googleapis.com` before apply.
final class GoogleGkeonpremVmwareAdminCluster extends Resource {
  static const String tfType = 'google_gkeonprem_vmware_admin_cluster';

  GoogleGkeonpremVmwareAdminCluster({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    TfArg<String>? onPremVersion,
    TfArg<String>? description,
    TfArg<String>? bootstrapClusterMembership,
    required GkeonpremVmwareAdminClusterNetworkConfig networkConfig,
    GkeonpremVmwareAdminClusterControlPlaneNode? controlPlaneNode,
    GkeonpremVmwareAdminClusterLoadBalancer? loadBalancer,
    GkeonpremVmwareAdminClusterVcenter? vcenter,
    GkeonpremVmwareAdminClusterAddonNode? addonNode,
    GkeonpremVmwareAdminClusterAntiAffinityGroups? antiAffinityGroups,
    GkeonpremVmwareAdminClusterAuthorization? authorization,
    GkeonpremVmwareAdminClusterAutoRepairConfig? autoRepairConfig,
    GkeonpremVmwareAdminClusterPlatformConfig? platformConfig,
    GkeonpremVmwareAdminClusterPrivateRegistryConfig? privateRegistryConfig,
    GkeonpremVmwareAdminClusterProxy? proxy,
    TfArg<String>? imageType,
    TfArg<bool>? enableAdvancedCluster,
    TfArg<Map<String, String>>? annotations,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           if (onPremVersion != null) 'on_prem_version': onPremVersion,
           if (description != null) 'description': description,
           if (bootstrapClusterMembership != null)
             'bootstrap_cluster_membership': bootstrapClusterMembership,
           'network_config': TfArg.literal(networkConfig.encode()),
           if (controlPlaneNode != null)
             'control_plane_node': TfArg.literal(controlPlaneNode.encode()),
           if (loadBalancer != null)
             'load_balancer': TfArg.literal(loadBalancer.encode()),
           if (vcenter != null) 'vcenter': TfArg.literal(vcenter.encode()),
           if (addonNode != null)
             'addon_node': TfArg.literal(addonNode.encode()),
           if (antiAffinityGroups != null)
             'anti_affinity_groups': TfArg.literal(antiAffinityGroups.encode()),
           if (authorization != null)
             'authorization': TfArg.literal(authorization.encode()),
           if (autoRepairConfig != null)
             'auto_repair_config': TfArg.literal(autoRepairConfig.encode()),
           if (platformConfig != null)
             'platform_config': TfArg.literal(platformConfig.encode()),
           if (privateRegistryConfig != null)
             'private_registry_config': TfArg.literal(
               privateRegistryConfig.encode(),
             ),
           if (proxy != null) 'proxy': TfArg.literal(proxy.encode()),
           if (imageType != null) 'image_type': imageType,
           if (enableAdvancedCluster != null)
             'enable_advanced_cluster': enableAdvancedCluster,
           if (annotations != null) 'annotations': annotations,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleGkeonpremVmwareAdminClusterSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

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

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
