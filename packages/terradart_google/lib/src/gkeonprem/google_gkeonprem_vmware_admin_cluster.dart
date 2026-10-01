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

  final GkeonpremVmwareAdminClusterAutoResizeConfig? autoResizeConfig;

  Map<String, Object?> encode() => {
    'auto_resize_config': ?autoResizeConfig?.encode(),
  };
}

/// Typed helper for the `addon_node.auto_resize_config` block of
/// `google_gkeonprem_vmware_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareAdminClusterAutoResizeConfig {
  const GkeonpremVmwareAdminClusterAutoResizeConfig({required this.enabled});

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

  final List<GkeonpremVmwareAdminClusterViewerUsers>? viewerUsers;

  Map<String, Object?> encode() => {
    if (viewerUsers != null)
      'viewer_users': [for (final e in viewerUsers!) e.encode()],
  };
}

/// Typed helper for the `authorization.viewer_users` block of
/// `google_gkeonprem_vmware_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareAdminClusterViewerUsers {
  const GkeonpremVmwareAdminClusterViewerUsers({required this.username});

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
    'cpus': ?cpus?.toTfJson(),
    'memory': ?memory?.toTfJson(),
    'replicas': ?replicas?.toTfJson(),
  };
}

/// Typed helper for the `load_balancer` block of
/// `google_gkeonprem_vmware_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareAdminClusterLoadBalancer {
  const GkeonpremVmwareAdminClusterLoadBalancer({
    required this.lbConfig,
    required this.vipConfig,
  });

  final GkeonpremVmwareAdminClusterLbConfig lbConfig;

  final GkeonpremVmwareAdminClusterVipConfig vipConfig;

  Map<String, Object?> encode() => {
    ...lbConfig.encode(),
    'vip_config': vipConfig.encode(),
  };
}

/// Exactly one of `f5_config`, `manual_lb_config`, `metal_lb_config` on the `load_balancer` block of `google_gkeonprem_vmware_admin_cluster`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.f5Config(...)`.
sealed class GkeonpremVmwareAdminClusterLbConfig {
  const GkeonpremVmwareAdminClusterLbConfig();

  /// Sets `f5_config`.
  const factory GkeonpremVmwareAdminClusterLbConfig.f5Config(
    GkeonpremVmwareAdminClusterF5Config f5Config,
  ) = GkeonpremVmwareAdminClusterLbConfigF5Config;

  /// Sets `manual_lb_config`.
  const factory GkeonpremVmwareAdminClusterLbConfig.manualLbConfig(
    GkeonpremVmwareAdminClusterManualLbConfig manualLbConfig,
  ) = GkeonpremVmwareAdminClusterManualLbConfigChoice;

  /// Sets `metal_lb_config`.
  const factory GkeonpremVmwareAdminClusterLbConfig.metalLbConfig(
    GkeonpremVmwareAdminClusterMetalLbConfig metalLbConfig,
  ) = GkeonpremVmwareAdminClusterMetalLbConfigChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [GkeonpremVmwareAdminClusterLbConfig.f5Config] choice: sets `f5_config`.
final class GkeonpremVmwareAdminClusterLbConfigF5Config
    extends GkeonpremVmwareAdminClusterLbConfig {
  const GkeonpremVmwareAdminClusterLbConfigF5Config(this.f5Config);

  final GkeonpremVmwareAdminClusterF5Config f5Config;

  @override
  String get blockKey => 'f5_config';

  @override
  Map<String, Object?> encode() => {'f5_config': f5Config.encode()};
}

/// The [GkeonpremVmwareAdminClusterLbConfig.manualLbConfig] choice: sets `manual_lb_config`.
final class GkeonpremVmwareAdminClusterManualLbConfigChoice
    extends GkeonpremVmwareAdminClusterLbConfig {
  const GkeonpremVmwareAdminClusterManualLbConfigChoice(this.manualLbConfig);

  final GkeonpremVmwareAdminClusterManualLbConfig manualLbConfig;

  @override
  String get blockKey => 'manual_lb_config';

  @override
  Map<String, Object?> encode() => {
    'manual_lb_config': manualLbConfig.encode(),
  };
}

/// The [GkeonpremVmwareAdminClusterLbConfig.metalLbConfig] choice: sets `metal_lb_config`.
final class GkeonpremVmwareAdminClusterMetalLbConfigChoice
    extends GkeonpremVmwareAdminClusterLbConfig {
  const GkeonpremVmwareAdminClusterMetalLbConfigChoice(this.metalLbConfig);

  final GkeonpremVmwareAdminClusterMetalLbConfig metalLbConfig;

  @override
  String get blockKey => 'metal_lb_config';

  @override
  Map<String, Object?> encode() => {'metal_lb_config': metalLbConfig.encode()};
}

/// Typed helper for the `load_balancer.f5_config` block of
/// `google_gkeonprem_vmware_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareAdminClusterF5Config {
  const GkeonpremVmwareAdminClusterF5Config({
    this.address,
    this.partition,
    this.snatPool,
  });

  final TfArg<String>? address;

  final TfArg<String>? partition;

  final TfArg<String>? snatPool;

  Map<String, Object?> encode() => {
    'address': ?address?.toTfJson(),
    'partition': ?partition?.toTfJson(),
    'snat_pool': ?snatPool?.toTfJson(),
  };
}

/// Typed helper for the `load_balancer.manual_lb_config` block of
/// `google_gkeonprem_vmware_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareAdminClusterManualLbConfig {
  const GkeonpremVmwareAdminClusterManualLbConfig({
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
    'addons_node_port': ?addonsNodePort?.toTfJson(),
    'control_plane_node_port': ?controlPlaneNodePort?.toTfJson(),
    'ingress_http_node_port': ?ingressHttpNodePort?.toTfJson(),
    'ingress_https_node_port': ?ingressHttpsNodePort?.toTfJson(),
    'konnectivity_server_node_port': ?konnectivityServerNodePort?.toTfJson(),
  };
}

/// Typed helper for the `load_balancer.metal_lb_config` block of
/// `google_gkeonprem_vmware_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareAdminClusterMetalLbConfig {
  const GkeonpremVmwareAdminClusterMetalLbConfig({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {'enabled': ?enabled?.toTfJson()};
}

/// Typed helper for the `load_balancer.vip_config` block of
/// `google_gkeonprem_vmware_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareAdminClusterVipConfig {
  const GkeonpremVmwareAdminClusterVipConfig({
    this.addonsVip,
    required this.controlPlaneVip,
  });

  final TfArg<String>? addonsVip;

  final TfArg<String> controlPlaneVip;

  Map<String, Object?> encode() => {
    'addons_vip': ?addonsVip?.toTfJson(),
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
    required this.ipConfig,
    this.haControlPlaneConfig,
    this.hostConfig,
  });

  final TfArg<List<String>> podAddressCidrBlocks;

  final TfArg<List<String>> serviceAddressCidrBlocks;

  final TfArg<String>? vcenterNetwork;

  final GkeonpremVmwareAdminClusterIpConfig ipConfig;

  final GkeonpremVmwareAdminClusterHaControlPlaneConfig? haControlPlaneConfig;

  final GkeonpremVmwareAdminClusterHostConfig? hostConfig;

  Map<String, Object?> encode() => {
    'pod_address_cidr_blocks': podAddressCidrBlocks.toTfJson(),
    'service_address_cidr_blocks': serviceAddressCidrBlocks.toTfJson(),
    'vcenter_network': ?vcenterNetwork?.toTfJson(),
    ...ipConfig.encode(),
    'ha_control_plane_config': ?haControlPlaneConfig?.encode(),
    'host_config': ?hostConfig?.encode(),
  };
}

/// Exactly one of `static_ip_config`, `dhcp_ip_config` on the `network_config` block of `google_gkeonprem_vmware_admin_cluster`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.staticIpConfig(...)`.
sealed class GkeonpremVmwareAdminClusterIpConfig {
  const GkeonpremVmwareAdminClusterIpConfig();

  /// Sets `static_ip_config`.
  const factory GkeonpremVmwareAdminClusterIpConfig.staticIpConfig(
    GkeonpremVmwareAdminClusterStaticIpConfig staticIpConfig,
  ) = GkeonpremVmwareAdminClusterStaticIpConfigChoice;

  /// Sets `dhcp_ip_config`.
  const factory GkeonpremVmwareAdminClusterIpConfig.dhcpIpConfig(
    GkeonpremVmwareAdminClusterDhcpIpConfig dhcpIpConfig,
  ) = GkeonpremVmwareAdminClusterDhcpIpConfigChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [GkeonpremVmwareAdminClusterIpConfig.staticIpConfig] choice: sets `static_ip_config`.
final class GkeonpremVmwareAdminClusterStaticIpConfigChoice
    extends GkeonpremVmwareAdminClusterIpConfig {
  const GkeonpremVmwareAdminClusterStaticIpConfigChoice(this.staticIpConfig);

  final GkeonpremVmwareAdminClusterStaticIpConfig staticIpConfig;

  @override
  String get blockKey => 'static_ip_config';

  @override
  Map<String, Object?> encode() => {
    'static_ip_config': staticIpConfig.encode(),
  };
}

/// The [GkeonpremVmwareAdminClusterIpConfig.dhcpIpConfig] choice: sets `dhcp_ip_config`.
final class GkeonpremVmwareAdminClusterDhcpIpConfigChoice
    extends GkeonpremVmwareAdminClusterIpConfig {
  const GkeonpremVmwareAdminClusterDhcpIpConfigChoice(this.dhcpIpConfig);

  final GkeonpremVmwareAdminClusterDhcpIpConfig dhcpIpConfig;

  @override
  String get blockKey => 'dhcp_ip_config';

  @override
  Map<String, Object?> encode() => {'dhcp_ip_config': dhcpIpConfig.encode()};
}

/// Typed helper for the `network_config.dhcp_ip_config` block of
/// `google_gkeonprem_vmware_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareAdminClusterDhcpIpConfig {
  const GkeonpremVmwareAdminClusterDhcpIpConfig({required this.enabled});

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `network_config.ha_control_plane_config` block of
/// `google_gkeonprem_vmware_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareAdminClusterHaControlPlaneConfig {
  const GkeonpremVmwareAdminClusterHaControlPlaneConfig({
    this.controlPlaneIpBlock,
  });

  final GkeonpremVmwareAdminClusterControlPlaneIpBlock? controlPlaneIpBlock;

  Map<String, Object?> encode() => {
    'control_plane_ip_block': ?controlPlaneIpBlock?.encode(),
  };
}

/// Typed helper for the `network_config.ha_control_plane_config.control_plane_ip_block` block of
/// `google_gkeonprem_vmware_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareAdminClusterControlPlaneIpBlock {
  const GkeonpremVmwareAdminClusterControlPlaneIpBlock({
    required this.gateway,
    required this.netmask,
    required this.ips,
  });

  final TfArg<String> gateway;

  final TfArg<String> netmask;

  final List<GkeonpremVmwareAdminClusterIps> ips;

  Map<String, Object?> encode() => {
    'gateway': gateway.toTfJson(),
    'netmask': netmask.toTfJson(),
    'ips': [for (final e in ips) e.encode()],
  };
}

/// Typed helper for the `network_config.ha_control_plane_config.control_plane_ip_block.ips` block of
/// `google_gkeonprem_vmware_admin_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class GkeonpremVmwareAdminClusterIps {
  const GkeonpremVmwareAdminClusterIps({this.hostname, required this.ip});

  final TfArg<String>? hostname;

  final TfArg<String> ip;

  Map<String, Object?> encode() => {
    'hostname': ?hostname?.toTfJson(),
    'ip': ip.toTfJson(),
  };
}

/// Typed helper for the `network_config.host_config` block of
/// `google_gkeonprem_vmware_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareAdminClusterHostConfig {
  const GkeonpremVmwareAdminClusterHostConfig({
    this.dnsSearchDomains,
    this.dnsServers,
    this.ntpServers,
  });

  final TfArg<List<String>>? dnsSearchDomains;

  final TfArg<List<String>>? dnsServers;

  final TfArg<List<String>>? ntpServers;

  Map<String, Object?> encode() => {
    'dns_search_domains': ?dnsSearchDomains?.toTfJson(),
    'dns_servers': ?dnsServers?.toTfJson(),
    'ntp_servers': ?ntpServers?.toTfJson(),
  };
}

/// Typed helper for the `network_config.static_ip_config` block of
/// `google_gkeonprem_vmware_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareAdminClusterStaticIpConfig {
  const GkeonpremVmwareAdminClusterStaticIpConfig({this.ipBlocks});

  final List<GkeonpremVmwareAdminClusterIpBlocks>? ipBlocks;

  Map<String, Object?> encode() => {
    if (ipBlocks != null) 'ip_blocks': [for (final e in ipBlocks!) e.encode()],
  };
}

/// Typed helper for the `network_config.static_ip_config.ip_blocks` block of
/// `google_gkeonprem_vmware_admin_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareAdminClusterIpBlocks {
  const GkeonpremVmwareAdminClusterIpBlocks({
    required this.gateway,
    required this.netmask,
    required this.ips,
  });

  final TfArg<String> gateway;

  final TfArg<String> netmask;

  final List<GkeonpremVmwareAdminClusterIps> ips;

  Map<String, Object?> encode() => {
    'gateway': gateway.toTfJson(),
    'netmask': netmask.toTfJson(),
    'ips': [for (final e in ips) e.encode()],
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
    'required_platform_version': ?requiredPlatformVersion?.toTfJson(),
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
    'address': ?address?.toTfJson(),
    'ca_cert': ?caCert?.toTfJson(),
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
    'no_proxy': ?noProxy?.toTfJson(),
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
    'address': ?address?.toTfJson(),
    'ca_cert_data': ?caCertData?.toTfJson(),
    'cluster': ?cluster?.toTfJson(),
    'data_disk': ?dataDisk?.toTfJson(),
    'datacenter': ?datacenter?.toTfJson(),
    'datastore': ?datastore?.toTfJson(),
    'folder': ?folder?.toTfJson(),
    'resource_pool': ?resourcePool?.toTfJson(),
    'storage_policy_name': ?storagePolicyName?.toTfJson(),
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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'on_prem_version': ?onPremVersion,
           'description': ?description,
           'bootstrap_cluster_membership': ?bootstrapClusterMembership,
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
           'image_type': ?imageType,
           'enable_advanced_cluster': ?enableAdvancedCluster,
           'annotations': ?annotations,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleGkeonpremVmwareAdminClusterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleGkeonpremVmwareAdminCluster>`.
  RefTo<GoogleGkeonpremVmwareAdminCluster> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `local_name` attribute.
  TfRef<String> get localNameAttr =>
      TfRef.attribute<String>(this, 'local_name');

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

  /// Reference to `annotations` attribute.
  TfRef<Map<String, String>> get annotations =>
      TfRef.attribute<Map<String, String>>(this, 'annotations');

  /// Reference to `bootstrap_cluster_membership` attribute.
  TfRef<String> get bootstrapClusterMembership =>
      TfRef.attribute<String>(this, 'bootstrap_cluster_membership');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `enable_advanced_cluster` attribute.
  TfRef<bool> get enableAdvancedCluster =>
      TfRef.attribute<bool>(this, 'enable_advanced_cluster');

  /// Reference to `image_type` attribute.
  TfRef<String> get imageType => TfRef.attribute<String>(this, 'image_type');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `on_prem_version` attribute.
  TfRef<String> get onPremVersion =>
      TfRef.attribute<String>(this, 'on_prem_version');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
