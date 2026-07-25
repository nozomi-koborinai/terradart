// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
/// GKE on AWS (multi-cloud) — clusters and node pools on Amazon Web
/// Services. GKE Enterprise Multicloud fees plus AWS EC2; needs a real
/// AWS account — not applyable on terradart-validate.
library;

export 'src/container_aws/google_container_aws_cluster.dart'
    show
        ContainerAwsClusterAuthorization,
        ContainerAwsClusterAuthorizationAdminGroups,
        ContainerAwsClusterAuthorizationAdminUsers,
        ContainerAwsClusterBinaryAuthorization,
        ContainerAwsClusterBinaryAuthorizationEvaluationMode,
        ContainerAwsClusterControlPlane,
        ContainerAwsClusterControlPlaneAwsServicesAuthentication,
        ContainerAwsClusterControlPlaneConfigEncryption,
        ContainerAwsClusterControlPlaneDatabaseEncryption,
        ContainerAwsClusterControlPlaneMainVolume,
        ContainerAwsClusterControlPlaneMainVolumeVolumeType,
        ContainerAwsClusterControlPlaneProxyConfig,
        ContainerAwsClusterControlPlaneRootVolume,
        ContainerAwsClusterControlPlaneRootVolumeVolumeType,
        ContainerAwsClusterControlPlaneSshConfig,
        ContainerAwsClusterFleet,
        ContainerAwsClusterNetworking,
        GoogleContainerAwsCluster;
export 'src/container_aws/google_container_aws_node_pool.dart'
    show
        ContainerAwsNodePoolAutoscaling,
        ContainerAwsNodePoolConfig,
        ContainerAwsNodePoolConfigAutoscalingMetricsCollection,
        ContainerAwsNodePoolConfigConfigEncryption,
        ContainerAwsNodePoolConfigProxyConfig,
        ContainerAwsNodePoolConfigRootVolume,
        ContainerAwsNodePoolConfigRootVolumeVolumeType,
        ContainerAwsNodePoolConfigSshConfig,
        ContainerAwsNodePoolConfigTaints,
        ContainerAwsNodePoolConfigTaintsEffect,
        ContainerAwsNodePoolKubeletConfig,
        ContainerAwsNodePoolManagement,
        ContainerAwsNodePoolMaxPodsConstraint,
        ContainerAwsNodePoolUpdateSettings,
        ContainerAwsNodePoolUpdateSettingsSurgeSettings,
        GoogleContainerAwsNodePool;
