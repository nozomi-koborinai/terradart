// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;
import '../compute/google_compute_subnetwork.dart' show GoogleComputeSubnetwork;

/// Sensitive field paths for `google_container_cluster`.
const Set<String> _googleContainerClusterSensitive = <String>{
  'master_auth.client_key',
};

/// Factory wrapper for `google_container_cluster`.
///
/// Container Cluster
///
/// Example (GKE Standard on an existing VPC / subnetwork):
/// ```dart
/// final cluster = GoogleContainerCluster(
///   localName: 'main',
///   name: TfArg.literal('main-gke'),
///   location: TfArg.literal('asia-northeast1'),
///   initialNodeCount: TfArg.literal(1),
///   removeDefaultNodePool: TfArg.literal(true),
///   network: TfArg.ref(vpc.nameRef),
///   subnetwork: TfArg.ref(subnet.nameRef),
/// );
/// ```
///
/// Pair with [GoogleContainerNodePool] when `removeDefaultNodePool` is
/// true — the default pool is deleted after cluster creation.
final class GoogleContainerCluster extends Resource {
  static const String tfType = 'google_container_cluster';

  GoogleContainerCluster({
    required super.localName,
    TfArg<bool>? allowNetAdmin,
    TfArg<List<String>>? autopilotPrivilegedAdmission,
    TfArg<String>? clusterIpv4Cidr,
    TfArg<String>? datapathProvider,
    TfArg<num>? defaultMaxPodsPerNode,
    TfArg<bool>? deletionProtection,
    TfArg<String>? description,
    TfArg<bool>? disableL4LbFirewallReconciliation,
    TfArg<bool>? enableAutopilot,
    TfArg<bool>? enableCiliumClusterwideNetworkPolicy,
    TfArg<bool>? enableFqdnNetworkPolicy,
    TfArg<bool>? enableIntranodeVisibility,
    TfArg<bool>? enableKubernetesAlpha,
    TfArg<bool>? enableL4IlbSubsetting,
    TfArg<bool>? enableLegacyAbac,
    TfArg<bool>? enableMultiNetworking,
    TfArg<bool>? enableShieldedNodes,
    TfArg<bool>? enableTpu,
    TfArg<String>? inTransitEncryptionConfig,
    TfArg<num>? initialNodeCount,
    TfArg<String>? location,
    TfArg<String>? loggingService,
    TfArg<String>? minMasterVersion,
    TfArg<String>? monitoringService,
    required TfArg<String> name,
    RefTo<GoogleComputeNetwork>? network,
    TfArg<String>? networkingMode,
    TfArg<List<String>>? nodeLocations,
    TfArg<String>? nodeVersion,
    TfArg<String>? privateIpv6GoogleAccess,
    TfArg<String>? project,
    TfArg<bool>? removeDefaultNodePool,
    TfArg<Map<String, String>>? resourceLabels,
    RefTo<GoogleComputeSubnetwork>? subnetwork,
    TfArg<Map<String, dynamic>>? addonsConfig,
    TfArg<Map<String, dynamic>>? anonymousAuthenticationConfig,
    TfArg<Map<String, dynamic>>? authenticatorGroupsConfig,
    TfArg<Map<String, dynamic>>? autopilotClusterPolicyConfig,
    TfArg<Map<String, dynamic>>? binaryAuthorization,
    TfArg<Map<String, dynamic>>? clusterAutoscaling,
    TfArg<Map<String, dynamic>>? confidentialNodes,
    TfArg<Map<String, dynamic>>? controlPlaneEndpointsConfig,
    TfArg<Map<String, dynamic>>? costManagementConfig,
    TfArg<Map<String, dynamic>>? databaseEncryption,
    TfArg<Map<String, dynamic>>? defaultSnatStatus,
    TfArg<Map<String, dynamic>>? dnsConfig,
    TfArg<Map<String, dynamic>>? enableK8sBetaApis,
    TfArg<Map<String, dynamic>>? enterpriseConfig,
    TfArg<Map<String, dynamic>>? fleet,
    TfArg<Map<String, dynamic>>? gatewayApiConfig,
    TfArg<Map<String, dynamic>>? gkeAutoUpgradeConfig,
    TfArg<Map<String, dynamic>>? identityServiceConfig,
    TfArg<Map<String, dynamic>>? ipAllocationPolicy,
    TfArg<Map<String, dynamic>>? loggingConfig,
    TfArg<Map<String, dynamic>>? maintenancePolicy,
    TfArg<Map<String, dynamic>>? masterAuth,
    TfArg<Map<String, dynamic>>? masterAuthorizedNetworksConfig,
    TfArg<Map<String, dynamic>>? meshCertificates,
    TfArg<Map<String, dynamic>>? monitoringConfig,
    TfArg<Map<String, dynamic>>? networkPerformanceConfig,
    TfArg<Map<String, dynamic>>? networkPolicy,
    TfArg<Map<String, dynamic>>? nodeConfig,
    TfArg<List<Map<String, dynamic>>>? nodePool,
    TfArg<Map<String, dynamic>>? nodePoolAutoConfig,
    TfArg<Map<String, dynamic>>? nodePoolDefaults,
    TfArg<Map<String, dynamic>>? notificationConfig,
    TfArg<Map<String, dynamic>>? podAutoscaling,
    TfArg<Map<String, dynamic>>? privateClusterConfig,
    TfArg<Map<String, dynamic>>? rbacBindingConfig,
    TfArg<Map<String, dynamic>>? releaseChannel,
    TfArg<Map<String, dynamic>>? resourceUsageExportConfig,
    TfArg<Map<String, dynamic>>? secretManagerConfig,
    TfArg<Map<String, dynamic>>? securityPostureConfig,
    TfArg<Map<String, dynamic>>? serviceExternalIpsConfig,
    TfArg<Map<String, dynamic>>? userManagedKeysConfig,
    TfArg<Map<String, dynamic>>? verticalPodAutoscaling,
    TfArg<Map<String, dynamic>>? workloadIdentityConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'allow_net_admin': ?allowNetAdmin,
           'autopilot_privileged_admission': ?autopilotPrivilegedAdmission,
           'cluster_ipv4_cidr': ?clusterIpv4Cidr,
           'datapath_provider': ?datapathProvider,
           'default_max_pods_per_node': ?defaultMaxPodsPerNode,
           'deletion_protection': ?deletionProtection,
           'description': ?description,
           'disable_l4_lb_firewall_reconciliation':
               ?disableL4LbFirewallReconciliation,
           'enable_autopilot': ?enableAutopilot,
           'enable_cilium_clusterwide_network_policy':
               ?enableCiliumClusterwideNetworkPolicy,
           'enable_fqdn_network_policy': ?enableFqdnNetworkPolicy,
           'enable_intranode_visibility': ?enableIntranodeVisibility,
           'enable_kubernetes_alpha': ?enableKubernetesAlpha,
           'enable_l4_ilb_subsetting': ?enableL4IlbSubsetting,
           'enable_legacy_abac': ?enableLegacyAbac,
           'enable_multi_networking': ?enableMultiNetworking,
           'enable_shielded_nodes': ?enableShieldedNodes,
           'enable_tpu': ?enableTpu,
           'in_transit_encryption_config': ?inTransitEncryptionConfig,
           'initial_node_count': ?initialNodeCount,
           'location': ?location,
           'logging_service': ?loggingService,
           'min_master_version': ?minMasterVersion,
           'monitoring_service': ?monitoringService,
           'name': name,
           'network': ?network?.encodeAs('id'),
           'networking_mode': ?networkingMode,
           'node_locations': ?nodeLocations,
           'node_version': ?nodeVersion,
           'private_ipv6_google_access': ?privateIpv6GoogleAccess,
           'project': ?project,
           'remove_default_node_pool': ?removeDefaultNodePool,
           'resource_labels': ?resourceLabels,
           'subnetwork': ?subnetwork?.encodeAs('id'),
           'addons_config': ?addonsConfig,
           'anonymous_authentication_config': ?anonymousAuthenticationConfig,
           'authenticator_groups_config': ?authenticatorGroupsConfig,
           'autopilot_cluster_policy_config': ?autopilotClusterPolicyConfig,
           'binary_authorization': ?binaryAuthorization,
           'cluster_autoscaling': ?clusterAutoscaling,
           'confidential_nodes': ?confidentialNodes,
           'control_plane_endpoints_config': ?controlPlaneEndpointsConfig,
           'cost_management_config': ?costManagementConfig,
           'database_encryption': ?databaseEncryption,
           'default_snat_status': ?defaultSnatStatus,
           'dns_config': ?dnsConfig,
           'enable_k8s_beta_apis': ?enableK8sBetaApis,
           'enterprise_config': ?enterpriseConfig,
           'fleet': ?fleet,
           'gateway_api_config': ?gatewayApiConfig,
           'gke_auto_upgrade_config': ?gkeAutoUpgradeConfig,
           'identity_service_config': ?identityServiceConfig,
           'ip_allocation_policy': ?ipAllocationPolicy,
           'logging_config': ?loggingConfig,
           'maintenance_policy': ?maintenancePolicy,
           'master_auth': ?masterAuth,
           'master_authorized_networks_config': ?masterAuthorizedNetworksConfig,
           'mesh_certificates': ?meshCertificates,
           'monitoring_config': ?monitoringConfig,
           'network_performance_config': ?networkPerformanceConfig,
           'network_policy': ?networkPolicy,
           'node_config': ?nodeConfig,
           'node_pool': ?nodePool,
           'node_pool_auto_config': ?nodePoolAutoConfig,
           'node_pool_defaults': ?nodePoolDefaults,
           'notification_config': ?notificationConfig,
           'pod_autoscaling': ?podAutoscaling,
           'private_cluster_config': ?privateClusterConfig,
           'rbac_binding_config': ?rbacBindingConfig,
           'release_channel': ?releaseChannel,
           'resource_usage_export_config': ?resourceUsageExportConfig,
           'secret_manager_config': ?secretManagerConfig,
           'security_posture_config': ?securityPostureConfig,
           'service_external_ips_config': ?serviceExternalIpsConfig,
           'user_managed_keys_config': ?userManagedKeysConfig,
           'vertical_pod_autoscaling': ?verticalPodAutoscaling,
           'workload_identity_config': ?workloadIdentityConfig,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleContainerClusterSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleContainerCluster>`.
  RefTo<GoogleContainerCluster> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `emulated_version` attribute.
  TfRef<String> get emulatedVersion =>
      TfRef.attribute<String>(this, 'emulated_version');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `label_fingerprint` attribute.
  TfRef<String> get labelFingerprint =>
      TfRef.attribute<String>(this, 'label_fingerprint');

  /// Reference to `master_version` attribute.
  TfRef<String> get masterVersion =>
      TfRef.attribute<String>(this, 'master_version');

  /// Reference to `operation` attribute.
  TfRef<String> get operation => TfRef.attribute<String>(this, 'operation');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `services_ipv4_cidr` attribute.
  TfRef<String> get servicesIpv4Cidr =>
      TfRef.attribute<String>(this, 'services_ipv4_cidr');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `tpu_ipv4_cidr_block` attribute.
  TfRef<String> get tpuIpv4CidrBlock =>
      TfRef.attribute<String>(this, 'tpu_ipv4_cidr_block');
}
