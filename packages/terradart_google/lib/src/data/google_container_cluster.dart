// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_container_cluster`.
const Set<String> _googleContainerClusterSensitive = <String>{};

/// Factory wrapper for `google_container_cluster`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleContainerCluster extends Data {
  static const String tfType = 'google_container_cluster';

  DataGoogleContainerCluster({
    required super.localName,
    TfArg<String>? location,
    required TfArg<String> name,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (location != null) 'location': location,
           'name': name,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleContainerClusterSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `addons_config` attribute.
  TfRef<List<Map<String, Object?>>> get addonsConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'addons_config');

  /// Reference to `allow_net_admin` attribute.
  TfRef<bool> get allowNetAdmin =>
      TfRef.attribute<bool>(this, 'allow_net_admin');

  /// Reference to `anonymous_authentication_config` attribute.
  TfRef<List<Map<String, Object?>>> get anonymousAuthenticationConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'anonymous_authentication_config',
      );

  /// Reference to `authenticator_groups_config` attribute.
  TfRef<List<Map<String, Object?>>> get authenticatorGroupsConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'authenticator_groups_config',
      );

  /// Reference to `autopilot_cluster_policy_config` attribute.
  TfRef<List<Map<String, Object?>>> get autopilotClusterPolicyConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'autopilot_cluster_policy_config',
      );

  /// Reference to `autopilot_privileged_admission` attribute.
  TfRef<List<String>> get autopilotPrivilegedAdmission =>
      TfRef.attribute<List<String>>(this, 'autopilot_privileged_admission');

  /// Reference to `binary_authorization` attribute.
  TfRef<List<Map<String, Object?>>> get binaryAuthorization =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'binary_authorization');

  /// Reference to `cluster_autoscaling` attribute.
  TfRef<List<Map<String, Object?>>> get clusterAutoscaling =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'cluster_autoscaling');

  /// Reference to `cluster_ipv4_cidr` attribute.
  TfRef<String> get clusterIpv4Cidr =>
      TfRef.attribute<String>(this, 'cluster_ipv4_cidr');

  /// Reference to `confidential_nodes` attribute.
  TfRef<List<Map<String, Object?>>> get confidentialNodes =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'confidential_nodes');

  /// Reference to `control_plane_endpoints_config` attribute.
  TfRef<List<Map<String, Object?>>> get controlPlaneEndpointsConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'control_plane_endpoints_config',
      );

  /// Reference to `cost_management_config` attribute.
  TfRef<List<Map<String, Object?>>> get costManagementConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'cost_management_config',
      );

  /// Reference to `database_encryption` attribute.
  TfRef<List<Map<String, Object?>>> get databaseEncryption =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'database_encryption');

  /// Reference to `datapath_provider` attribute.
  TfRef<String> get datapathProvider =>
      TfRef.attribute<String>(this, 'datapath_provider');

  /// Reference to `dataplane_optimization_mode` attribute.
  TfRef<String> get dataplaneOptimizationMode =>
      TfRef.attribute<String>(this, 'dataplane_optimization_mode');

  /// Reference to `default_max_pods_per_node` attribute.
  TfRef<num> get defaultMaxPodsPerNode =>
      TfRef.attribute<num>(this, 'default_max_pods_per_node');

  /// Reference to `default_snat_status` attribute.
  TfRef<List<Map<String, Object?>>> get defaultSnatStatus =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'default_snat_status');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deletion_protection` attribute.
  TfRef<bool> get deletionProtection =>
      TfRef.attribute<bool>(this, 'deletion_protection');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `desired_emulated_version` attribute.
  TfRef<String> get desiredEmulatedVersion =>
      TfRef.attribute<String>(this, 'desired_emulated_version');

  /// Reference to `disable_l4_lb_firewall_reconciliation` attribute.
  TfRef<bool> get disableL4LbFirewallReconciliation =>
      TfRef.attribute<bool>(this, 'disable_l4_lb_firewall_reconciliation');

  /// Reference to `dns_config` attribute.
  TfRef<List<Map<String, Object?>>> get dnsConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'dns_config');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `emulated_version` attribute.
  TfRef<String> get emulatedVersion =>
      TfRef.attribute<String>(this, 'emulated_version');

  /// Reference to `enable_autopilot` attribute.
  TfRef<bool> get enableAutopilot =>
      TfRef.attribute<bool>(this, 'enable_autopilot');

  /// Reference to `enable_cilium_clusterwide_network_policy` attribute.
  TfRef<bool> get enableCiliumClusterwideNetworkPolicy =>
      TfRef.attribute<bool>(this, 'enable_cilium_clusterwide_network_policy');

  /// Reference to `enable_fqdn_network_policy` attribute.
  TfRef<bool> get enableFqdnNetworkPolicy =>
      TfRef.attribute<bool>(this, 'enable_fqdn_network_policy');

  /// Reference to `enable_intranode_visibility` attribute.
  TfRef<bool> get enableIntranodeVisibility =>
      TfRef.attribute<bool>(this, 'enable_intranode_visibility');

  /// Reference to `enable_k8s_beta_apis` attribute.
  TfRef<List<Map<String, Object?>>> get enableK8sBetaApis =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'enable_k8s_beta_apis');

  /// Reference to `enable_kubernetes_alpha` attribute.
  TfRef<bool> get enableKubernetesAlpha =>
      TfRef.attribute<bool>(this, 'enable_kubernetes_alpha');

  /// Reference to `enable_l4_ilb_subsetting` attribute.
  TfRef<bool> get enableL4IlbSubsetting =>
      TfRef.attribute<bool>(this, 'enable_l4_ilb_subsetting');

  /// Reference to `enable_legacy_abac` attribute.
  TfRef<bool> get enableLegacyAbac =>
      TfRef.attribute<bool>(this, 'enable_legacy_abac');

  /// Reference to `enable_multi_networking` attribute.
  TfRef<bool> get enableMultiNetworking =>
      TfRef.attribute<bool>(this, 'enable_multi_networking');

  /// Reference to `enable_shielded_nodes` attribute.
  TfRef<bool> get enableShieldedNodes =>
      TfRef.attribute<bool>(this, 'enable_shielded_nodes');

  /// Reference to `enable_tpu` attribute.
  TfRef<bool> get enableTpu => TfRef.attribute<bool>(this, 'enable_tpu');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `enterprise_config` attribute.
  TfRef<List<Map<String, Object?>>> get enterpriseConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'enterprise_config');

  /// Reference to `fleet` attribute.
  TfRef<List<Map<String, Object?>>> get fleet =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'fleet');

  /// Reference to `gateway_api_config` attribute.
  TfRef<List<Map<String, Object?>>> get gatewayApiConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'gateway_api_config');

  /// Reference to `gke_auto_upgrade_config` attribute.
  TfRef<List<Map<String, Object?>>> get gkeAutoUpgradeConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'gke_auto_upgrade_config',
      );

  /// Reference to `identity_service_config` attribute.
  TfRef<List<Map<String, Object?>>> get identityServiceConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'identity_service_config',
      );

  /// Reference to `ignore_node_count_changes` attribute.
  TfRef<bool> get ignoreNodeCountChanges =>
      TfRef.attribute<bool>(this, 'ignore_node_count_changes');

  /// Reference to `in_transit_encryption_config` attribute.
  TfRef<String> get inTransitEncryptionConfig =>
      TfRef.attribute<String>(this, 'in_transit_encryption_config');

  /// Reference to `initial_node_count` attribute.
  TfRef<num> get initialNodeCount =>
      TfRef.attribute<num>(this, 'initial_node_count');

  /// Reference to `ip_allocation_policy` attribute.
  TfRef<List<Map<String, Object?>>> get ipAllocationPolicy =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'ip_allocation_policy');

  /// Reference to `label_fingerprint` attribute.
  TfRef<String> get labelFingerprint =>
      TfRef.attribute<String>(this, 'label_fingerprint');

  /// Reference to `logging_config` attribute.
  TfRef<List<Map<String, Object?>>> get loggingConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'logging_config');

  /// Reference to `logging_service` attribute.
  TfRef<String> get loggingService =>
      TfRef.attribute<String>(this, 'logging_service');

  /// Reference to `maintenance_policy` attribute.
  TfRef<List<Map<String, Object?>>> get maintenancePolicy =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'maintenance_policy');

  /// Reference to `master_auth` attribute.
  TfRef<List<Map<String, Object?>>> get masterAuth =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'master_auth');

  /// Reference to `master_authorized_networks_config` attribute.
  TfRef<List<Map<String, Object?>>> get masterAuthorizedNetworksConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'master_authorized_networks_config',
      );

  /// Reference to `master_version` attribute.
  TfRef<String> get masterVersion =>
      TfRef.attribute<String>(this, 'master_version');

  /// Reference to `mesh_certificates` attribute.
  TfRef<List<Map<String, Object?>>> get meshCertificates =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'mesh_certificates');

  /// Reference to `min_master_version` attribute.
  TfRef<String> get minMasterVersion =>
      TfRef.attribute<String>(this, 'min_master_version');

  /// Reference to `monitoring_config` attribute.
  TfRef<List<Map<String, Object?>>> get monitoringConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'monitoring_config');

  /// Reference to `monitoring_service` attribute.
  TfRef<String> get monitoringService =>
      TfRef.attribute<String>(this, 'monitoring_service');

  /// Reference to `network` attribute.
  TfRef<String> get network => TfRef.attribute<String>(this, 'network');

  /// Reference to `network_performance_config` attribute.
  TfRef<List<Map<String, Object?>>> get networkPerformanceConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'network_performance_config',
      );

  /// Reference to `network_policy` attribute.
  TfRef<List<Map<String, Object?>>> get networkPolicy =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'network_policy');

  /// Reference to `networking_mode` attribute.
  TfRef<String> get networkingMode =>
      TfRef.attribute<String>(this, 'networking_mode');

  /// Reference to `node_config` attribute.
  TfRef<List<Map<String, Object?>>> get nodeConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'node_config');

  /// Reference to `node_creation_config` attribute.
  TfRef<List<Map<String, Object?>>> get nodeCreationConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'node_creation_config');

  /// Reference to `node_locations` attribute.
  TfRef<List<String>> get nodeLocations =>
      TfRef.attribute<List<String>>(this, 'node_locations');

  /// Reference to `node_pool` attribute.
  TfRef<List<Map<String, Object?>>> get nodePool =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'node_pool');

  /// Reference to `node_pool_auto_config` attribute.
  TfRef<List<Map<String, Object?>>> get nodePoolAutoConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'node_pool_auto_config',
      );

  /// Reference to `node_pool_defaults` attribute.
  TfRef<List<Map<String, Object?>>> get nodePoolDefaults =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'node_pool_defaults');

  /// Reference to `node_version` attribute.
  TfRef<String> get nodeVersion =>
      TfRef.attribute<String>(this, 'node_version');

  /// Reference to `notification_config` attribute.
  TfRef<List<Map<String, Object?>>> get notificationConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'notification_config');

  /// Reference to `operation` attribute.
  TfRef<String> get operation => TfRef.attribute<String>(this, 'operation');

  /// Reference to `pod_autoscaling` attribute.
  TfRef<List<Map<String, Object?>>> get podAutoscaling =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'pod_autoscaling');

  /// Reference to `private_cluster_config` attribute.
  TfRef<List<Map<String, Object?>>> get privateClusterConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'private_cluster_config',
      );

  /// Reference to `private_ipv6_google_access` attribute.
  TfRef<String> get privateIpv6GoogleAccess =>
      TfRef.attribute<String>(this, 'private_ipv6_google_access');

  /// Reference to `rbac_binding_config` attribute.
  TfRef<List<Map<String, Object?>>> get rbacBindingConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'rbac_binding_config');

  /// Reference to `release_channel` attribute.
  TfRef<List<Map<String, Object?>>> get releaseChannel =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'release_channel');

  /// Reference to `remove_default_node_pool` attribute.
  TfRef<bool> get removeDefaultNodePool =>
      TfRef.attribute<bool>(this, 'remove_default_node_pool');

  /// Reference to `resource_labels` attribute.
  TfRef<Map<String, String>> get resourceLabels =>
      TfRef.attribute<Map<String, String>>(this, 'resource_labels');

  /// Reference to `resource_usage_export_config` attribute.
  TfRef<List<Map<String, Object?>>> get resourceUsageExportConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'resource_usage_export_config',
      );

  /// Reference to `rollback_safe_upgrade` attribute.
  TfRef<List<Map<String, Object?>>> get rollbackSafeUpgrade =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'rollback_safe_upgrade',
      );

  /// Reference to `secret_manager_config` attribute.
  TfRef<List<Map<String, Object?>>> get secretManagerConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'secret_manager_config',
      );

  /// Reference to `secret_sync_config` attribute.
  TfRef<List<Map<String, Object?>>> get secretSyncConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'secret_sync_config');

  /// Reference to `security_posture_config` attribute.
  TfRef<List<Map<String, Object?>>> get securityPostureConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'security_posture_config',
      );

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `service_external_ips_config` attribute.
  TfRef<List<Map<String, Object?>>> get serviceExternalIpsConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'service_external_ips_config',
      );

  /// Reference to `services_ipv4_cidr` attribute.
  TfRef<String> get servicesIpv4Cidr =>
      TfRef.attribute<String>(this, 'services_ipv4_cidr');

  /// Reference to `skip_node_pool_refresh` attribute.
  TfRef<bool> get skipNodePoolRefresh =>
      TfRef.attribute<bool>(this, 'skip_node_pool_refresh');

  /// Reference to `subnetwork` attribute.
  TfRef<String> get subnetwork => TfRef.attribute<String>(this, 'subnetwork');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `tpu_ipv4_cidr_block` attribute.
  TfRef<String> get tpuIpv4CidrBlock =>
      TfRef.attribute<String>(this, 'tpu_ipv4_cidr_block');

  /// Reference to `user_managed_keys_config` attribute.
  TfRef<List<Map<String, Object?>>> get userManagedKeysConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'user_managed_keys_config',
      );

  /// Reference to `vertical_pod_autoscaling` attribute.
  TfRef<List<Map<String, Object?>>> get verticalPodAutoscaling =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'vertical_pod_autoscaling',
      );

  /// Reference to `workload_identity_config` attribute.
  TfRef<List<Map<String, Object?>>> get workloadIdentityConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'workload_identity_config',
      );
}
