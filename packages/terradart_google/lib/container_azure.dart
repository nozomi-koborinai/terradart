// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
/// GKE on Azure (multi-cloud) — Azure client, clusters, and node pools.
/// GKE Enterprise Multicloud fees plus Azure VMs; needs a real Azure
/// tenant — not applyable on terradart-validate.
library;

export 'src/container_azure/google_container_azure_client.dart'
    show GoogleContainerAzureClient;
export 'src/container_azure/google_container_azure_cluster.dart'
    show
        ContainerAzureClusterAuthorization,
        ContainerAzureClusterAuthorizationAdminGroups,
        ContainerAzureClusterAuthorizationAdminUsers,
        ContainerAzureClusterAzureServicesAuthentication,
        ContainerAzureClusterControlPlane,
        ContainerAzureClusterControlPlaneDatabaseEncryption,
        ContainerAzureClusterControlPlaneMainVolume,
        ContainerAzureClusterControlPlaneProxyConfig,
        ContainerAzureClusterControlPlaneReplicaPlacements,
        ContainerAzureClusterControlPlaneRootVolume,
        ContainerAzureClusterControlPlaneSshConfig,
        ContainerAzureClusterFleet,
        ContainerAzureClusterNetworking,
        GoogleContainerAzureCluster;
export 'src/container_azure/google_container_azure_node_pool.dart'
    show
        ContainerAzureNodePoolAutoscaling,
        ContainerAzureNodePoolConfig,
        ContainerAzureNodePoolConfigProxyConfig,
        ContainerAzureNodePoolConfigRootVolume,
        ContainerAzureNodePoolConfigSshConfig,
        ContainerAzureNodePoolManagement,
        ContainerAzureNodePoolMaxPodsConstraint,
        GoogleContainerAzureNodePool;
