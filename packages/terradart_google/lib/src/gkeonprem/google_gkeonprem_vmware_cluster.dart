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

  final List<GkeonpremVmwareClusterAdminUsers>? adminUsers;

  Map<String, Object?> encode() => {
    if (adminUsers != null)
      'admin_users': [for (final e in adminUsers!) e.encode()],
  };
}

/// Typed helper for the `authorization.admin_users` block of
/// `google_gkeonprem_vmware_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareClusterAdminUsers {
  const GkeonpremVmwareClusterAdminUsers({required this.username});

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

  final GkeonpremVmwareClusterAutoResizeConfig? autoResizeConfig;

  Map<String, Object?> encode() => {
    'cpus': ?cpus?.toTfJson(),
    'memory': ?memory?.toTfJson(),
    'replicas': ?replicas?.toTfJson(),
    'auto_resize_config': ?autoResizeConfig?.encode(),
  };
}

/// Typed helper for the `control_plane_node.auto_resize_config` block of
/// `google_gkeonprem_vmware_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareClusterAutoResizeConfig {
  const GkeonpremVmwareClusterAutoResizeConfig({required this.enabled});

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
    'advanced_networking': ?advancedNetworking?.toTfJson(),
    'dataplane_v2_enabled': ?dataplaneV2Enabled?.toTfJson(),
    'windows_dataplane_v2_enabled': ?windowsDataplaneV2Enabled?.toTfJson(),
  };
}

/// Typed helper for the `load_balancer` block of
/// `google_gkeonprem_vmware_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareClusterLoadBalancer {
  const GkeonpremVmwareClusterLoadBalancer({
    required this.lbConfig,
    this.vipConfig,
  });

  final GkeonpremVmwareClusterLbConfig lbConfig;

  final GkeonpremVmwareClusterVipConfig? vipConfig;

  Map<String, Object?> encode() => {
    ...lbConfig.encode(),
    'vip_config': ?vipConfig?.encode(),
  };
}

/// Exactly one of `f5_config`, `manual_lb_config`, `metal_lb_config` on the `load_balancer` block of `google_gkeonprem_vmware_cluster`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.f5Config(...)`.
sealed class GkeonpremVmwareClusterLbConfig {
  const GkeonpremVmwareClusterLbConfig();

  /// Sets `f5_config`.
  const factory GkeonpremVmwareClusterLbConfig.f5Config(
    GkeonpremVmwareClusterF5Config f5Config,
  ) = GkeonpremVmwareClusterLbConfigF5Config;

  /// Sets `manual_lb_config`.
  const factory GkeonpremVmwareClusterLbConfig.manualLbConfig(
    GkeonpremVmwareClusterManualLbConfig manualLbConfig,
  ) = GkeonpremVmwareClusterManualLbConfigChoice;

  /// Sets `metal_lb_config`.
  const factory GkeonpremVmwareClusterLbConfig.metalLbConfig(
    GkeonpremVmwareClusterMetalLbConfig metalLbConfig,
  ) = GkeonpremVmwareClusterMetalLbConfigChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [GkeonpremVmwareClusterLbConfig.f5Config] choice: sets `f5_config`.
final class GkeonpremVmwareClusterLbConfigF5Config
    extends GkeonpremVmwareClusterLbConfig {
  const GkeonpremVmwareClusterLbConfigF5Config(this.f5Config);

  final GkeonpremVmwareClusterF5Config f5Config;

  @override
  String get blockKey => 'f5_config';

  @override
  Map<String, Object?> encode() => {'f5_config': f5Config.encode()};
}

/// The [GkeonpremVmwareClusterLbConfig.manualLbConfig] choice: sets `manual_lb_config`.
final class GkeonpremVmwareClusterManualLbConfigChoice
    extends GkeonpremVmwareClusterLbConfig {
  const GkeonpremVmwareClusterManualLbConfigChoice(this.manualLbConfig);

  final GkeonpremVmwareClusterManualLbConfig manualLbConfig;

  @override
  String get blockKey => 'manual_lb_config';

  @override
  Map<String, Object?> encode() => {
    'manual_lb_config': manualLbConfig.encode(),
  };
}

/// The [GkeonpremVmwareClusterLbConfig.metalLbConfig] choice: sets `metal_lb_config`.
final class GkeonpremVmwareClusterMetalLbConfigChoice
    extends GkeonpremVmwareClusterLbConfig {
  const GkeonpremVmwareClusterMetalLbConfigChoice(this.metalLbConfig);

  final GkeonpremVmwareClusterMetalLbConfig metalLbConfig;

  @override
  String get blockKey => 'metal_lb_config';

  @override
  Map<String, Object?> encode() => {'metal_lb_config': metalLbConfig.encode()};
}

/// Typed helper for the `load_balancer.f5_config` block of
/// `google_gkeonprem_vmware_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareClusterF5Config {
  const GkeonpremVmwareClusterF5Config({
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
/// `google_gkeonprem_vmware_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareClusterManualLbConfig {
  const GkeonpremVmwareClusterManualLbConfig({
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
    'control_plane_node_port': ?controlPlaneNodePort?.toTfJson(),
    'ingress_http_node_port': ?ingressHttpNodePort?.toTfJson(),
    'ingress_https_node_port': ?ingressHttpsNodePort?.toTfJson(),
    'konnectivity_server_node_port': ?konnectivityServerNodePort?.toTfJson(),
  };
}

/// Typed helper for the `load_balancer.metal_lb_config` block of
/// `google_gkeonprem_vmware_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareClusterMetalLbConfig {
  const GkeonpremVmwareClusterMetalLbConfig({required this.addressPools});

  final List<GkeonpremVmwareClusterAddressPools> addressPools;

  Map<String, Object?> encode() => {
    'address_pools': [for (final e in addressPools) e.encode()],
  };
}

/// Typed helper for the `load_balancer.metal_lb_config.address_pools` block of
/// `google_gkeonprem_vmware_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareClusterAddressPools {
  const GkeonpremVmwareClusterAddressPools({
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

/// Typed helper for the `load_balancer.vip_config` block of
/// `google_gkeonprem_vmware_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareClusterVipConfig {
  const GkeonpremVmwareClusterVipConfig({
    this.controlPlaneVip,
    this.ingressVip,
  });

  final TfArg<String>? controlPlaneVip;

  final TfArg<String>? ingressVip;

  Map<String, Object?> encode() => {
    'control_plane_vip': ?controlPlaneVip?.toTfJson(),
    'ingress_vip': ?ingressVip?.toTfJson(),
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
    required this.ipConfig,
    this.hostConfig,
  });

  final TfArg<List<String>> podAddressCidrBlocks;

  final TfArg<List<String>> serviceAddressCidrBlocks;

  final TfArg<String>? vcenterNetwork;

  final GkeonpremVmwareClusterControlPlaneV2Config? controlPlaneV2Config;

  final GkeonpremVmwareClusterIpConfig ipConfig;

  final GkeonpremVmwareClusterHostConfig? hostConfig;

  Map<String, Object?> encode() => {
    'pod_address_cidr_blocks': podAddressCidrBlocks.toTfJson(),
    'service_address_cidr_blocks': serviceAddressCidrBlocks.toTfJson(),
    'vcenter_network': ?vcenterNetwork?.toTfJson(),
    'control_plane_v2_config': ?controlPlaneV2Config?.encode(),
    ...ipConfig.encode(),
    'host_config': ?hostConfig?.encode(),
  };
}

/// Exactly one of `static_ip_config`, `dhcp_ip_config` on the `network_config` block of `google_gkeonprem_vmware_cluster`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.staticIpConfig(...)`.
sealed class GkeonpremVmwareClusterIpConfig {
  const GkeonpremVmwareClusterIpConfig();

  /// Sets `static_ip_config`.
  const factory GkeonpremVmwareClusterIpConfig.staticIpConfig(
    GkeonpremVmwareClusterStaticIpConfig staticIpConfig,
  ) = GkeonpremVmwareClusterStaticIpConfigChoice;

  /// Sets `dhcp_ip_config`.
  const factory GkeonpremVmwareClusterIpConfig.dhcpIpConfig(
    GkeonpremVmwareClusterDhcpIpConfig dhcpIpConfig,
  ) = GkeonpremVmwareClusterDhcpIpConfigChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [GkeonpremVmwareClusterIpConfig.staticIpConfig] choice: sets `static_ip_config`.
final class GkeonpremVmwareClusterStaticIpConfigChoice
    extends GkeonpremVmwareClusterIpConfig {
  const GkeonpremVmwareClusterStaticIpConfigChoice(this.staticIpConfig);

  final GkeonpremVmwareClusterStaticIpConfig staticIpConfig;

  @override
  String get blockKey => 'static_ip_config';

  @override
  Map<String, Object?> encode() => {
    'static_ip_config': staticIpConfig.encode(),
  };
}

/// The [GkeonpremVmwareClusterIpConfig.dhcpIpConfig] choice: sets `dhcp_ip_config`.
final class GkeonpremVmwareClusterDhcpIpConfigChoice
    extends GkeonpremVmwareClusterIpConfig {
  const GkeonpremVmwareClusterDhcpIpConfigChoice(this.dhcpIpConfig);

  final GkeonpremVmwareClusterDhcpIpConfig dhcpIpConfig;

  @override
  String get blockKey => 'dhcp_ip_config';

  @override
  Map<String, Object?> encode() => {'dhcp_ip_config': dhcpIpConfig.encode()};
}

/// Typed helper for the `network_config.control_plane_v2_config` block of
/// `google_gkeonprem_vmware_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareClusterControlPlaneV2Config {
  const GkeonpremVmwareClusterControlPlaneV2Config({this.controlPlaneIpBlock});

  final GkeonpremVmwareClusterControlPlaneIpBlock? controlPlaneIpBlock;

  Map<String, Object?> encode() => {
    'control_plane_ip_block': ?controlPlaneIpBlock?.encode(),
  };
}

/// Typed helper for the `network_config.control_plane_v2_config.control_plane_ip_block` block of
/// `google_gkeonprem_vmware_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareClusterControlPlaneIpBlock {
  const GkeonpremVmwareClusterControlPlaneIpBlock({
    this.gateway,
    this.netmask,
    this.ips,
  });

  final TfArg<String>? gateway;

  final TfArg<String>? netmask;

  final List<GkeonpremVmwareClusterControlPlaneIpBlockIps>? ips;

  Map<String, Object?> encode() => {
    'gateway': ?gateway?.toTfJson(),
    'netmask': ?netmask?.toTfJson(),
    if (ips != null) 'ips': [for (final e in ips!) e.encode()],
  };
}

/// Typed helper for the `network_config.control_plane_v2_config.control_plane_ip_block.ips` block of
/// `google_gkeonprem_vmware_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareClusterControlPlaneIpBlockIps {
  const GkeonpremVmwareClusterControlPlaneIpBlockIps({this.hostname, this.ip});

  final TfArg<String>? hostname;

  final TfArg<String>? ip;

  Map<String, Object?> encode() => {
    'hostname': ?hostname?.toTfJson(),
    'ip': ?ip?.toTfJson(),
  };
}

/// Typed helper for the `network_config.dhcp_ip_config` block of
/// `google_gkeonprem_vmware_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareClusterDhcpIpConfig {
  const GkeonpremVmwareClusterDhcpIpConfig({required this.enabled});

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `network_config.host_config` block of
/// `google_gkeonprem_vmware_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareClusterHostConfig {
  const GkeonpremVmwareClusterHostConfig({
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
/// `google_gkeonprem_vmware_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareClusterStaticIpConfig {
  const GkeonpremVmwareClusterStaticIpConfig({required this.ipBlocks});

  final List<GkeonpremVmwareClusterIpBlocks> ipBlocks;

  Map<String, Object?> encode() => {
    'ip_blocks': [for (final e in ipBlocks) e.encode()],
  };
}

/// Typed helper for the `network_config.static_ip_config.ip_blocks` block of
/// `google_gkeonprem_vmware_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareClusterIpBlocks {
  const GkeonpremVmwareClusterIpBlocks({
    required this.gateway,
    required this.netmask,
    required this.ips,
  });

  final TfArg<String> gateway;

  final TfArg<String> netmask;

  final List<GkeonpremVmwareClusterIpBlocksIps> ips;

  Map<String, Object?> encode() => {
    'gateway': gateway.toTfJson(),
    'netmask': netmask.toTfJson(),
    'ips': [for (final e in ips) e.encode()],
  };
}

/// Typed helper for the `network_config.static_ip_config.ip_blocks.ips` block of
/// `google_gkeonprem_vmware_cluster` (derived from provider schema).
@immutable
final class GkeonpremVmwareClusterIpBlocksIps {
  const GkeonpremVmwareClusterIpBlocksIps({this.hostname, required this.ip});

  final TfArg<String>? hostname;

  final TfArg<String> ip;

  Map<String, Object?> encode() => {
    'hostname': ?hostname?.toTfJson(),
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
    'control_plane_only': ?controlPlaneOnly?.toTfJson(),
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
    'ca_cert_data': ?caCertData?.toTfJson(),
    'cluster': ?cluster?.toTfJson(),
    'datacenter': ?datacenter?.toTfJson(),
    'datastore': ?datastore?.toTfJson(),
    'folder': ?folder?.toTfJson(),
    'resource_pool': ?resourcePool?.toTfJson(),
    'storage_policy_name': ?storagePolicyName?.toTfJson(),
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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'on_prem_version': onPremVersion,
           'admin_cluster_membership': adminClusterMembership,
           'description': ?description,
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
           'enable_control_plane_v2': ?enableControlPlaneV2,
           'enable_advanced_cluster': ?enableAdvancedCluster,
           'disable_bundled_ingress': ?disableBundledIngress,
           'vm_tracking_enabled': ?vmTrackingEnabled,
           'skip_validations': ?skipValidations,
           'annotations': ?annotations,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleGkeonpremVmwareClusterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleGkeonpremVmwareCluster>`.
  RefTo<GoogleGkeonpremVmwareCluster> get ref => RefTo.of(this);

  /// Reference to `local_name` attribute.
  TfRef<String> get localNameRef => TfRef.attribute<String>(this, 'local_name');

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
  TfRef<String> get adminClusterMembershipRef =>
      TfRef.attribute<String>(this, 'admin_cluster_membership');

  /// Reference to `annotations` attribute.
  TfRef<Map<String, String>> get annotationsRef =>
      TfRef.attribute<Map<String, String>>(this, 'annotations');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `disable_bundled_ingress` attribute.
  TfRef<bool> get disableBundledIngressRef =>
      TfRef.attribute<bool>(this, 'disable_bundled_ingress');

  /// Reference to `enable_advanced_cluster` attribute.
  TfRef<bool> get enableAdvancedClusterRef =>
      TfRef.attribute<bool>(this, 'enable_advanced_cluster');

  /// Reference to `enable_control_plane_v2` attribute.
  TfRef<bool> get enableControlPlaneV2Ref =>
      TfRef.attribute<bool>(this, 'enable_control_plane_v2');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `on_prem_version` attribute.
  TfRef<String> get onPremVersionRef =>
      TfRef.attribute<String>(this, 'on_prem_version');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `skip_validations` attribute.
  TfRef<List<String>> get skipValidationsRef =>
      TfRef.attribute<List<String>>(this, 'skip_validations');

  /// Reference to `vm_tracking_enabled` attribute.
  TfRef<bool> get vmTrackingEnabledRef =>
      TfRef.attribute<bool>(this, 'vm_tracking_enabled');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
