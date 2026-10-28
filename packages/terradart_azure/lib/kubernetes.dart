// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
/// Azure Resource Manager kubernetes resources.
library;

export 'package:terradart_core/terradart_core.dart';
export 'src/data/azurerm_kubernetes_automatic_cluster.dart'
    show DataAzurermKubernetesAutomaticCluster;
export 'src/data/azurerm_kubernetes_cluster.dart'
    show DataAzurermKubernetesCluster;
export 'src/data/azurerm_kubernetes_cluster_node_pool.dart'
    show DataAzurermKubernetesClusterNodePool;
export 'src/data/azurerm_kubernetes_fleet_manager.dart'
    show DataAzurermKubernetesFleetManager;
export 'src/data/azurerm_kubernetes_node_pool_snapshot.dart'
    show DataAzurermKubernetesNodePoolSnapshot;
export 'src/data/azurerm_kubernetes_service_versions.dart'
    show DataAzurermKubernetesServiceVersions;
export 'src/kubernetes/azurerm_kubernetes_automatic_cluster.dart'
    show
        AzurermKubernetesAutomaticCluster,
        KubernetesAutomaticClusterApiServerAccess,
        KubernetesAutomaticClusterCertificateAuthority,
        KubernetesAutomaticClusterHostedSystem,
        KubernetesAutomaticClusterIdentity,
        KubernetesAutomaticClusterPrivateCluster,
        KubernetesAutomaticClusterProxyRedirectMechanism,
        KubernetesAutomaticClusterServiceMesh,
        KubernetesAutomaticClusterWebAppRoutingIngress;
export 'src/kubernetes/azurerm_kubernetes_cluster.dart'
    show
        AzurermKubernetesCluster,
        KubernetesClusterAciConnectorLinux,
        KubernetesClusterAdvancedNetworking,
        KubernetesClusterAllowed,
        KubernetesClusterAllowedHostPorts,
        KubernetesClusterApiServerAccessProfile,
        KubernetesClusterArtifactSource,
        KubernetesClusterAutoScalerProfile,
        KubernetesClusterAzureActiveDirectoryRoleBasedAccessControl,
        KubernetesClusterBackendPoolType,
        KubernetesClusterBootstrapProfile,
        KubernetesClusterCertificateAuthority,
        KubernetesClusterConfidentialComputing,
        KubernetesClusterDay,
        KubernetesClusterDayOfWeek,
        KubernetesClusterDefaultNginxController,
        KubernetesClusterDefaultNodePool,
        KubernetesClusterDefaultNodePools,
        KubernetesClusterDnsPrefix,
        KubernetesClusterDnsPrefixChoice,
        KubernetesClusterDnsPrefixPrivateCluster,
        KubernetesClusterExpander,
        KubernetesClusterGmsa,
        KubernetesClusterHttpProxyConfig,
        KubernetesClusterIdentity,
        KubernetesClusterIngressApplicationGateway,
        KubernetesClusterIpVersions,
        KubernetesClusterKeyManagementService,
        KubernetesClusterKeyVaultNetworkAccess,
        KubernetesClusterKeyVaultSecretsProvider,
        KubernetesClusterKubeletConfig,
        KubernetesClusterKubeletIdentity,
        KubernetesClusterLinuxOsConfig,
        KubernetesClusterLinuxProfile,
        KubernetesClusterLoadBalancerProfile,
        KubernetesClusterLoadBalancerSku,
        KubernetesClusterMaintenanceWindow,
        KubernetesClusterMaintenanceWindowAutoUpgrade,
        KubernetesClusterMaintenanceWindowAutoUpgradeFrequency,
        KubernetesClusterMaintenanceWindowNodeOs,
        KubernetesClusterMaintenanceWindowNodeOsFrequency,
        KubernetesClusterMicrosoftDefender,
        KubernetesClusterMode,
        KubernetesClusterMonitorMetrics,
        KubernetesClusterNatGatewayProfile,
        KubernetesClusterNetworkDataPlane,
        KubernetesClusterNetworkMode,
        KubernetesClusterNetworkPlugin,
        KubernetesClusterNetworkProfile,
        KubernetesClusterNodeNetworkProfile,
        KubernetesClusterNodeOsUpgradeChannel,
        KubernetesClusterNodeProvisioningProfile,
        KubernetesClusterNotAllowed,
        KubernetesClusterOmsAgent,
        KubernetesClusterOutboundType,
        KubernetesClusterPrincipal,
        KubernetesClusterPrincipalIdentity,
        KubernetesClusterServiceMeshProfile,
        KubernetesClusterServicePrincipal,
        KubernetesClusterServicePrincipalChoice,
        KubernetesClusterSkuTier,
        KubernetesClusterSshKey,
        KubernetesClusterStorageProfile,
        KubernetesClusterSupportPlan,
        KubernetesClusterSysctlConfig,
        KubernetesClusterUpgradeOverride,
        KubernetesClusterUpgradeSettings,
        KubernetesClusterWebAppRouting,
        KubernetesClusterWeekIndex,
        KubernetesClusterWindowsProfile,
        KubernetesClusterWorkloadAutoscalerProfile;
export 'src/kubernetes/azurerm_kubernetes_cluster_deployment_safeguard.dart'
    show
        AzurermKubernetesClusterDeploymentSafeguard,
        KubernetesClusterDeploymentSafeguardLevel,
        KubernetesClusterDeploymentSafeguardPodSecurityStandardsLevel;
export 'src/kubernetes/azurerm_kubernetes_cluster_extension.dart'
    show
        AzurermKubernetesClusterExtension,
        KubernetesClusterExtensionNamespace,
        KubernetesClusterExtensionPlan,
        KubernetesClusterExtensionRelease,
        KubernetesClusterExtensionReleaseNamespace,
        KubernetesClusterExtensionReleaseTrain,
        KubernetesClusterExtensionReleaseVersion,
        KubernetesClusterExtensionTargetNamespace;
export 'src/kubernetes/azurerm_kubernetes_cluster_node_pool.dart'
    show
        AzurermKubernetesClusterNodePool,
        KubernetesClusterNodePoolAllowedHostPorts,
        KubernetesClusterNodePoolEvictionPolicy,
        KubernetesClusterNodePoolGpuDriver,
        KubernetesClusterNodePoolKubeletConfig,
        KubernetesClusterNodePoolKubeletDiskType,
        KubernetesClusterNodePoolLinuxOsConfig,
        KubernetesClusterNodePoolNodeNetworkProfile,
        KubernetesClusterNodePoolOsDiskType,
        KubernetesClusterNodePoolOsType,
        KubernetesClusterNodePoolPriority,
        KubernetesClusterNodePoolScaleDownMode,
        KubernetesClusterNodePoolSysctlConfig,
        KubernetesClusterNodePoolUpgradeSettings,
        KubernetesClusterNodePoolWindowsProfile,
        KubernetesClusterNodePoolWorkloadRuntime;
export 'src/kubernetes/azurerm_kubernetes_cluster_trusted_access_role_binding.dart'
    show AzurermKubernetesClusterTrustedAccessRoleBinding;
export 'src/kubernetes/azurerm_kubernetes_fleet_manager.dart'
    show AzurermKubernetesFleetManager, KubernetesFleetManagerHubProfile;
export 'src/kubernetes/azurerm_kubernetes_fleet_member.dart'
    show AzurermKubernetesFleetMember;
export 'src/kubernetes/azurerm_kubernetes_fleet_update_run.dart'
    show
        AzurermKubernetesFleetUpdateRun,
        KubernetesFleetUpdateRunGroup,
        KubernetesFleetUpdateRunManagedClusterUpdate,
        KubernetesFleetUpdateRunNodeImageSelection,
        KubernetesFleetUpdateRunStage,
        KubernetesFleetUpdateRunStrategy,
        KubernetesFleetUpdateRunStrategyFleetUpdateStrategyId,
        KubernetesFleetUpdateRunStrategyStage,
        KubernetesFleetUpdateRunUpgrade;
export 'src/kubernetes/azurerm_kubernetes_fleet_update_strategy.dart'
    show
        AzurermKubernetesFleetUpdateStrategy,
        KubernetesFleetUpdateStrategyGroup,
        KubernetesFleetUpdateStrategyStage;
export 'src/kubernetes/azurerm_kubernetes_flux_configuration.dart'
    show
        AzurermKubernetesFluxConfiguration,
        KubernetesFluxConfigurationBlobStorage,
        KubernetesFluxConfigurationBlobStorageCredentials,
        KubernetesFluxConfigurationBlobStorageCredentialsAccountKey,
        KubernetesFluxConfigurationBlobStorageCredentialsLocalAuthReference,
        KubernetesFluxConfigurationBlobStorageCredentialsManagedIdentity,
        KubernetesFluxConfigurationBlobStorageCredentialsSasToken,
        KubernetesFluxConfigurationBlobStorageCredentialsServicePrincipal,
        KubernetesFluxConfigurationBucket,
        KubernetesFluxConfigurationBucketCredentials,
        KubernetesFluxConfigurationBucketCredentialsAccessKey,
        KubernetesFluxConfigurationBucketCredentialsLocalAuthReference,
        KubernetesFluxConfigurationClient,
        KubernetesFluxConfigurationClientCertificateBase64,
        KubernetesFluxConfigurationClientSecret,
        KubernetesFluxConfigurationGitRepository,
        KubernetesFluxConfigurationKustomizations,
        KubernetesFluxConfigurationManagedIdentity,
        KubernetesFluxConfigurationPostBuild,
        KubernetesFluxConfigurationProvider,
        KubernetesFluxConfigurationScope,
        KubernetesFluxConfigurationServicePrincipal,
        KubernetesFluxConfigurationSource,
        KubernetesFluxConfigurationSourceBlobStorage,
        KubernetesFluxConfigurationSourceBucket,
        KubernetesFluxConfigurationSourceGitRepository,
        KubernetesFluxConfigurationSubstituteFrom;
