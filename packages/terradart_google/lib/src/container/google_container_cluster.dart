// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    TfArg<String>? network,
    TfArg<String>? networkingMode,
    TfArg<List<String>>? nodeLocations,
    TfArg<String>? nodeVersion,
    TfArg<String>? privateIpv6GoogleAccess,
    TfArg<String>? project,
    TfArg<bool>? removeDefaultNodePool,
    TfArg<Map<String, String>>? resourceLabels,
    TfArg<String>? subnetwork,
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
  }) : super(
         terraformType: tfType,
         argMap: {
           if (allowNetAdmin != null) 'allow_net_admin': allowNetAdmin,
           if (autopilotPrivilegedAdmission != null)
             'autopilot_privileged_admission': autopilotPrivilegedAdmission,
           if (clusterIpv4Cidr != null) 'cluster_ipv4_cidr': clusterIpv4Cidr,
           if (datapathProvider != null) 'datapath_provider': datapathProvider,
           if (defaultMaxPodsPerNode != null)
             'default_max_pods_per_node': defaultMaxPodsPerNode,
           if (deletionProtection != null)
             'deletion_protection': deletionProtection,
           if (description != null) 'description': description,
           if (disableL4LbFirewallReconciliation != null)
             'disable_l4_lb_firewall_reconciliation':
                 disableL4LbFirewallReconciliation,
           if (enableAutopilot != null) 'enable_autopilot': enableAutopilot,
           if (enableCiliumClusterwideNetworkPolicy != null)
             'enable_cilium_clusterwide_network_policy':
                 enableCiliumClusterwideNetworkPolicy,
           if (enableFqdnNetworkPolicy != null)
             'enable_fqdn_network_policy': enableFqdnNetworkPolicy,
           if (enableIntranodeVisibility != null)
             'enable_intranode_visibility': enableIntranodeVisibility,
           if (enableKubernetesAlpha != null)
             'enable_kubernetes_alpha': enableKubernetesAlpha,
           if (enableL4IlbSubsetting != null)
             'enable_l4_ilb_subsetting': enableL4IlbSubsetting,
           if (enableLegacyAbac != null) 'enable_legacy_abac': enableLegacyAbac,
           if (enableMultiNetworking != null)
             'enable_multi_networking': enableMultiNetworking,
           if (enableShieldedNodes != null)
             'enable_shielded_nodes': enableShieldedNodes,
           if (enableTpu != null) 'enable_tpu': enableTpu,
           if (inTransitEncryptionConfig != null)
             'in_transit_encryption_config': inTransitEncryptionConfig,
           if (initialNodeCount != null) 'initial_node_count': initialNodeCount,
           if (location != null) 'location': location,
           if (loggingService != null) 'logging_service': loggingService,
           if (minMasterVersion != null) 'min_master_version': minMasterVersion,
           if (monitoringService != null)
             'monitoring_service': monitoringService,
           'name': name,
           if (network != null) 'network': network,
           if (networkingMode != null) 'networking_mode': networkingMode,
           if (nodeLocations != null) 'node_locations': nodeLocations,
           if (nodeVersion != null) 'node_version': nodeVersion,
           if (privateIpv6GoogleAccess != null)
             'private_ipv6_google_access': privateIpv6GoogleAccess,
           if (project != null) 'project': project,
           if (removeDefaultNodePool != null)
             'remove_default_node_pool': removeDefaultNodePool,
           if (resourceLabels != null) 'resource_labels': resourceLabels,
           if (subnetwork != null) 'subnetwork': subnetwork,
           if (addonsConfig != null) 'addons_config': addonsConfig,
           if (anonymousAuthenticationConfig != null)
             'anonymous_authentication_config': anonymousAuthenticationConfig,
           if (authenticatorGroupsConfig != null)
             'authenticator_groups_config': authenticatorGroupsConfig,
           if (autopilotClusterPolicyConfig != null)
             'autopilot_cluster_policy_config': autopilotClusterPolicyConfig,
           if (binaryAuthorization != null)
             'binary_authorization': binaryAuthorization,
           if (clusterAutoscaling != null)
             'cluster_autoscaling': clusterAutoscaling,
           if (confidentialNodes != null)
             'confidential_nodes': confidentialNodes,
           if (controlPlaneEndpointsConfig != null)
             'control_plane_endpoints_config': controlPlaneEndpointsConfig,
           if (costManagementConfig != null)
             'cost_management_config': costManagementConfig,
           if (databaseEncryption != null)
             'database_encryption': databaseEncryption,
           if (defaultSnatStatus != null)
             'default_snat_status': defaultSnatStatus,
           if (dnsConfig != null) 'dns_config': dnsConfig,
           if (enableK8sBetaApis != null)
             'enable_k8s_beta_apis': enableK8sBetaApis,
           if (enterpriseConfig != null) 'enterprise_config': enterpriseConfig,
           if (fleet != null) 'fleet': fleet,
           if (gatewayApiConfig != null) 'gateway_api_config': gatewayApiConfig,
           if (gkeAutoUpgradeConfig != null)
             'gke_auto_upgrade_config': gkeAutoUpgradeConfig,
           if (identityServiceConfig != null)
             'identity_service_config': identityServiceConfig,
           if (ipAllocationPolicy != null)
             'ip_allocation_policy': ipAllocationPolicy,
           if (loggingConfig != null) 'logging_config': loggingConfig,
           if (maintenancePolicy != null)
             'maintenance_policy': maintenancePolicy,
           if (masterAuth != null) 'master_auth': masterAuth,
           if (masterAuthorizedNetworksConfig != null)
             'master_authorized_networks_config':
                 masterAuthorizedNetworksConfig,
           if (meshCertificates != null) 'mesh_certificates': meshCertificates,
           if (monitoringConfig != null) 'monitoring_config': monitoringConfig,
           if (networkPerformanceConfig != null)
             'network_performance_config': networkPerformanceConfig,
           if (networkPolicy != null) 'network_policy': networkPolicy,
           if (nodeConfig != null) 'node_config': nodeConfig,
           if (nodePool != null) 'node_pool': nodePool,
           if (nodePoolAutoConfig != null)
             'node_pool_auto_config': nodePoolAutoConfig,
           if (nodePoolDefaults != null) 'node_pool_defaults': nodePoolDefaults,
           if (notificationConfig != null)
             'notification_config': notificationConfig,
           if (podAutoscaling != null) 'pod_autoscaling': podAutoscaling,
           if (privateClusterConfig != null)
             'private_cluster_config': privateClusterConfig,
           if (rbacBindingConfig != null)
             'rbac_binding_config': rbacBindingConfig,
           if (releaseChannel != null) 'release_channel': releaseChannel,
           if (resourceUsageExportConfig != null)
             'resource_usage_export_config': resourceUsageExportConfig,
           if (secretManagerConfig != null)
             'secret_manager_config': secretManagerConfig,
           if (securityPostureConfig != null)
             'security_posture_config': securityPostureConfig,
           if (serviceExternalIpsConfig != null)
             'service_external_ips_config': serviceExternalIpsConfig,
           if (userManagedKeysConfig != null)
             'user_managed_keys_config': userManagedKeysConfig,
           if (verticalPodAutoscaling != null)
             'vertical_pod_autoscaling': verticalPodAutoscaling,
           if (workloadIdentityConfig != null)
             'workload_identity_config': workloadIdentityConfig,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleContainerClusterSensitive;

  @override
  bool get supportsDeletionProtection => true;

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
