// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
/// Cloud Workstations — clusters, configs, workstations, and
/// resource-level `*_iam_member` grants. Clusters bill a control-plane
/// fee hourly while they exist.
library;

export 'src/workstations/google_workstations_workstation.dart'
    show GoogleWorkstationsWorkstation, WorkstationsWorkstationState;
export 'src/workstations/google_workstations_workstation_cluster.dart'
    show
        GoogleWorkstationsWorkstationCluster,
        WorkstationsWorkstationClusterDomainConfig,
        WorkstationsWorkstationClusterPrivateClusterConfig;
export 'src/workstations/google_workstations_workstation_config.dart'
    show
        GoogleWorkstationsWorkstationConfig,
        WorkstationsWorkstationConfigAllowedPorts,
        WorkstationsWorkstationConfigContainer,
        WorkstationsWorkstationConfigEncryptionKey,
        WorkstationsWorkstationConfigEphemeralDirectories,
        WorkstationsWorkstationConfigEphemeralDirectoriesGcePd,
        WorkstationsWorkstationConfigHost,
        WorkstationsWorkstationConfigHostGceInstance,
        WorkstationsWorkstationConfigHostGceInstanceAccelerators,
        WorkstationsWorkstationConfigHostGceInstanceBoostConfigs,
        WorkstationsWorkstationConfigHostGceInstanceBoostConfigsAccelerators,
        WorkstationsWorkstationConfigHostGceInstanceConfidentialInstanceConfig,
        WorkstationsWorkstationConfigHostGceInstanceShieldedInstanceConfig,
        WorkstationsWorkstationConfigPersistentDirectories,
        WorkstationsWorkstationConfigPersistentDirectoriesGceHd,
        WorkstationsWorkstationConfigPersistentDirectoriesGceHdReclaimPolicy,
        WorkstationsWorkstationConfigPersistentDirectoriesGcePd,
        WorkstationsWorkstationConfigPersistentDirectoriesGcePdReclaimPolicy,
        WorkstationsWorkstationConfigReadinessChecks;
export 'src/workstations/google_workstations_workstation_config_iam_member.dart'
    show GoogleWorkstationsWorkstationConfigIamMember;
export 'src/workstations/google_workstations_workstation_iam_member.dart'
    show GoogleWorkstationsWorkstationIamMember;
