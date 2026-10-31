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
        KubernetesAutomaticClusterDefaultNginxController,
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
        KubernetesClusterAutomaticUpgradeChannel,
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
        KubernetesClusterLicense,
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
        KubernetesClusterMonitorMetrics,
        KubernetesClusterNatGatewayProfile,
        KubernetesClusterNetworkDataPlane,
        KubernetesClusterNetworkMode,
        KubernetesClusterNetworkPlugin,
        KubernetesClusterNetworkPluginMode,
        KubernetesClusterNetworkPolicy,
        KubernetesClusterNetworkProfile,
        KubernetesClusterNodeNetworkProfile,
        KubernetesClusterNodeOsUpgradeChannel,
        KubernetesClusterNodeProvisioningProfile,
        KubernetesClusterNodeProvisioningProfileMode,
        KubernetesClusterNotAllowed,
        KubernetesClusterOmsAgent,
        KubernetesClusterOutboundType,
        KubernetesClusterPrincipal,
        KubernetesClusterPrincipalIdentity,
        KubernetesClusterServiceMeshProfile,
        KubernetesClusterServiceMeshProfileMode,
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
        KubernetesClusterNodePoolCpuManagerPolicy,
        KubernetesClusterNodePoolEvictionPolicy,
        KubernetesClusterNodePoolGpuDriver,
        KubernetesClusterNodePoolGpuInstance,
        KubernetesClusterNodePoolKubeletConfig,
        KubernetesClusterNodePoolKubeletDiskType,
        KubernetesClusterNodePoolLinuxOsConfig,
        KubernetesClusterNodePoolMode,
        KubernetesClusterNodePoolNodeNetworkProfile,
        KubernetesClusterNodePoolOsDiskType,
        KubernetesClusterNodePoolOsSku,
        KubernetesClusterNodePoolOsType,
        KubernetesClusterNodePoolPriority,
        KubernetesClusterNodePoolProtocol,
        KubernetesClusterNodePoolScaleDownMode,
        KubernetesClusterNodePoolSysctlConfig,
        KubernetesClusterNodePoolTopologyManagerPolicy,
        KubernetesClusterNodePoolTransparentHugePage,
        KubernetesClusterNodePoolTransparentHugePageDefrag,
        KubernetesClusterNodePoolUndrainableNodeBehavior,
        KubernetesClusterNodePoolUpgradeCapacity,
        KubernetesClusterNodePoolUpgradeCapacityMaxSurge,
        KubernetesClusterNodePoolUpgradeCapacityMaxUnavailable,
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
        KubernetesFleetUpdateRunNodeImageSelectionType,
        KubernetesFleetUpdateRunStage,
        KubernetesFleetUpdateRunStrategy,
        KubernetesFleetUpdateRunStrategyFleetUpdateStrategyId,
        KubernetesFleetUpdateRunStrategyStage,
        KubernetesFleetUpdateRunUpgrade,
        KubernetesFleetUpdateRunUpgradeType;
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
        KubernetesFluxConfigurationKind,
        KubernetesFluxConfigurationKustomizations,
        KubernetesFluxConfigurationManagedIdentity,
        KubernetesFluxConfigurationPostBuild,
        KubernetesFluxConfigurationProvider,
        KubernetesFluxConfigurationReferenceType,
        KubernetesFluxConfigurationScope,
        KubernetesFluxConfigurationServicePrincipal,
        KubernetesFluxConfigurationSource,
        KubernetesFluxConfigurationSourceBlobStorage,
        KubernetesFluxConfigurationSourceBucket,
        KubernetesFluxConfigurationSourceGitRepository,
        KubernetesFluxConfigurationSubstituteFrom;
