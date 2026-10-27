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
        KubernetesClusterAutoScalerProfile,
        KubernetesClusterAzureActiveDirectoryRoleBasedAccessControl,
        KubernetesClusterBootstrapProfile,
        KubernetesClusterCertificateAuthority,
        KubernetesClusterConfidentialComputing,
        KubernetesClusterDefaultNodePool,
        KubernetesClusterGmsa,
        KubernetesClusterHttpProxyConfig,
        KubernetesClusterIdentity,
        KubernetesClusterIngressApplicationGateway,
        KubernetesClusterKeyManagementService,
        KubernetesClusterKeyVaultSecretsProvider,
        KubernetesClusterKubeletConfig,
        KubernetesClusterKubeletIdentity,
        KubernetesClusterLinuxOsConfig,
        KubernetesClusterLinuxProfile,
        KubernetesClusterLoadBalancerProfile,
        KubernetesClusterMaintenanceWindow,
        KubernetesClusterMaintenanceWindowAutoUpgrade,
        KubernetesClusterMaintenanceWindowNodeOs,
        KubernetesClusterMicrosoftDefender,
        KubernetesClusterMonitorMetrics,
        KubernetesClusterNatGatewayProfile,
        KubernetesClusterNetworkProfile,
        KubernetesClusterNodeNetworkProfile,
        KubernetesClusterNodeProvisioningProfile,
        KubernetesClusterNotAllowed,
        KubernetesClusterOmsAgent,
        KubernetesClusterServiceMeshProfile,
        KubernetesClusterServicePrincipal,
        KubernetesClusterSshKey,
        KubernetesClusterStorageProfile,
        KubernetesClusterSysctlConfig,
        KubernetesClusterUpgradeOverride,
        KubernetesClusterUpgradeSettings,
        KubernetesClusterWebAppRouting,
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
        KubernetesClusterExtensionReleaseNamespace,
        KubernetesClusterExtensionReleaseTrainOrVersion,
        KubernetesClusterExtensionReleaseTrainOrVersionChoice,
        KubernetesClusterExtensionReleaseTrainOrVersionReleaseTrain,
        KubernetesClusterExtensionTargetNamespace;
export 'src/kubernetes/azurerm_kubernetes_cluster_node_pool.dart'
    show
        AzurermKubernetesClusterNodePool,
        KubernetesClusterNodePoolAllowedHostPorts,
        KubernetesClusterNodePoolKubeletConfig,
        KubernetesClusterNodePoolLinuxOsConfig,
        KubernetesClusterNodePoolNodeNetworkProfile,
        KubernetesClusterNodePoolSysctlConfig,
        KubernetesClusterNodePoolUpgradeSettings,
        KubernetesClusterNodePoolWindowsProfile;
export 'src/kubernetes/azurerm_kubernetes_cluster_trusted_access_role_binding.dart'
    show AzurermKubernetesClusterTrustedAccessRoleBinding;
export 'src/kubernetes/azurerm_kubernetes_fleet_manager.dart'
    show AzurermKubernetesFleetManager, KubernetesFleetManagerHubProfile;
export 'src/kubernetes/azurerm_kubernetes_fleet_member.dart'
    show AzurermKubernetesFleetMember;
export 'src/kubernetes/azurerm_kubernetes_fleet_update_run.dart'
    show
        AzurermKubernetesFleetUpdateRun,
        KubernetesFleetUpdateRunFleetUpdateStrategyIdOrStage,
        KubernetesFleetUpdateRunFleetUpdateStrategyIdOrStageChoice,
        KubernetesFleetUpdateRunFleetUpdateStrategyIdOrStageFleetUpdateStrategyId,
        KubernetesFleetUpdateRunGroup,
        KubernetesFleetUpdateRunManagedClusterUpdate,
        KubernetesFleetUpdateRunNodeImageSelection,
        KubernetesFleetUpdateRunStage,
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
        KubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrManagedIdentityOrSasTokenOrServicePrincipal,
        KubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrManagedIdentityOrSasTokenOrServicePrincipalAccountKey,
        KubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrManagedIdentityOrSasTokenOrServicePrincipalChoice,
        KubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrManagedIdentityOrSasTokenOrServicePrincipalLocalAuthReference,
        KubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrManagedIdentityOrSasTokenOrServicePrincipalManagedIdentity,
        KubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrManagedIdentityOrSasTokenOrServicePrincipalSasToken,
        KubernetesFluxConfigurationBlobStorageOrBucketOrGitRepository,
        KubernetesFluxConfigurationBlobStorageOrBucketOrGitRepositoryBlobStorage,
        KubernetesFluxConfigurationBlobStorageOrBucketOrGitRepositoryBucket,
        KubernetesFluxConfigurationBlobStorageOrBucketOrGitRepositoryChoice,
        KubernetesFluxConfigurationBucket,
        KubernetesFluxConfigurationBucketAccessKeyOrLocalAuthReference,
        KubernetesFluxConfigurationBucketAccessKeyOrLocalAuthReferenceAccessKey,
        KubernetesFluxConfigurationBucketAccessKeyOrLocalAuthReferenceChoice,
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
        KubernetesFluxConfigurationSubstituteFrom;
