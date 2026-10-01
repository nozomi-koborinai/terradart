// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
/// GKE on Azure (multi-cloud) — Azure client, clusters, and node pools.
/// GKE Enterprise Multicloud fees plus Azure VMs; needs a real Azure
/// tenant — not applyable on terradart-validate.
library;

export 'package:terradart_core/terradart_core.dart';
export 'src/container_azure/google_container_azure_client.dart'
    show GoogleContainerAzureClient;
export 'src/container_azure/google_container_azure_cluster.dart'
    show
        ContainerAzureClusterAdminGroups,
        ContainerAzureClusterAdminUsers,
        ContainerAzureClusterAuthorization,
        ContainerAzureClusterAzureServicesAuthentication,
        ContainerAzureClusterControlPlane,
        ContainerAzureClusterDatabaseEncryption,
        ContainerAzureClusterFleet,
        ContainerAzureClusterMainVolume,
        ContainerAzureClusterNetworking,
        ContainerAzureClusterProxyConfig,
        ContainerAzureClusterReplicaPlacements,
        ContainerAzureClusterRootVolume,
        ContainerAzureClusterSshConfig,
        GoogleContainerAzureCluster;
export 'src/container_azure/google_container_azure_node_pool.dart'
    show
        ContainerAzureNodePoolAutoscaling,
        ContainerAzureNodePoolConfig,
        ContainerAzureNodePoolManagement,
        ContainerAzureNodePoolMaxPodsConstraint,
        ContainerAzureNodePoolProxyConfig,
        ContainerAzureNodePoolRootVolume,
        ContainerAzureNodePoolSshConfig,
        GoogleContainerAzureNodePool;
export 'src/data/google_container_azure_versions.dart'
    show DataGoogleContainerAzureVersions;
