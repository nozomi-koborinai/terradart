// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
/// Backup and DR Service — vaults, plans, associations, management
/// server, service config, and restore workloads.
library;

export 'src/backup_dr/google_backup_dr_backup_plan.dart'
    show
        BackupDrBackupPlanBackupRules,
        BackupDrBackupPlanBackupRulesStandardSchedule,
        BackupDrBackupPlanBackupRulesStandardScheduleBackupWindow,
        BackupDrBackupPlanBackupRulesStandardScheduleDaysOfWeek,
        BackupDrBackupPlanBackupRulesStandardScheduleMonths,
        BackupDrBackupPlanBackupRulesStandardScheduleRecurrenceType,
        BackupDrBackupPlanBackupRulesStandardScheduleWeekDayOfMonth,
        BackupDrBackupPlanBackupRulesStandardScheduleWeekDayOfMonthDayOfWeek,
        BackupDrBackupPlanBackupRulesStandardScheduleWeekDayOfMonthWeekOfMonth,
        BackupDrBackupPlanComputeInstanceBackupPlanProperties,
        BackupDrBackupPlanDiskBackupPlanProperties,
        GoogleBackupDrBackupPlan;
export 'src/backup_dr/google_backup_dr_backup_plan_association.dart'
    show GoogleBackupDrBackupPlanAssociation;
export 'src/backup_dr/google_backup_dr_backup_vault.dart'
    show
        BackupDrBackupVaultAccessRestriction,
        BackupDrBackupVaultBackupRetentionInheritance,
        BackupDrBackupVaultEncryptionConfig,
        GoogleBackupDrBackupVault;
export 'src/backup_dr/google_backup_dr_management_server.dart'
    show
        BackupDrManagementServerNetworks,
        BackupDrManagementServerType,
        GoogleBackupDrManagementServer;
export 'src/backup_dr/google_backup_dr_restore_workload.dart'
    show
        BackupDrRestoreWorkloadComputeInstanceRestoreProperties,
        BackupDrRestoreWorkloadComputeInstanceRestorePropertiesAdvancedMachineFeatures,
        BackupDrRestoreWorkloadComputeInstanceRestorePropertiesAllocationAffinity,
        BackupDrRestoreWorkloadComputeInstanceRestorePropertiesAllocationAffinityConsumeAllocationType,
        BackupDrRestoreWorkloadComputeInstanceRestorePropertiesConfidentialInstanceConfig,
        BackupDrRestoreWorkloadComputeInstanceRestorePropertiesDisks,
        BackupDrRestoreWorkloadComputeInstanceRestorePropertiesDisksDiskEncryptionKey,
        BackupDrRestoreWorkloadComputeInstanceRestorePropertiesDisksDiskInterface,
        BackupDrRestoreWorkloadComputeInstanceRestorePropertiesDisksGuestOsFeature,
        BackupDrRestoreWorkloadComputeInstanceRestorePropertiesDisksGuestOsFeatureType,
        BackupDrRestoreWorkloadComputeInstanceRestorePropertiesDisksInitializeParams,
        BackupDrRestoreWorkloadComputeInstanceRestorePropertiesDisksMode,
        BackupDrRestoreWorkloadComputeInstanceRestorePropertiesDisksSavedState,
        BackupDrRestoreWorkloadComputeInstanceRestorePropertiesDisksType,
        BackupDrRestoreWorkloadComputeInstanceRestorePropertiesDisplayDevice,
        BackupDrRestoreWorkloadComputeInstanceRestorePropertiesGuestAccelerators,
        BackupDrRestoreWorkloadComputeInstanceRestorePropertiesInstanceEncryptionKey,
        BackupDrRestoreWorkloadComputeInstanceRestorePropertiesKeyRevocationActionType,
        BackupDrRestoreWorkloadComputeInstanceRestorePropertiesLabels,
        BackupDrRestoreWorkloadComputeInstanceRestorePropertiesMetadata,
        BackupDrRestoreWorkloadComputeInstanceRestorePropertiesMetadataItems,
        BackupDrRestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaces,
        BackupDrRestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfacesAccessConfigs,
        BackupDrRestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfacesAccessConfigsNetworkTier,
        BackupDrRestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfacesAccessConfigsType,
        BackupDrRestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfacesAliasIpRanges,
        BackupDrRestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfacesIpv6AccessConfigs,
        BackupDrRestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfacesIpv6AccessConfigsNetworkTier,
        BackupDrRestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfacesIpv6AccessConfigsType,
        BackupDrRestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfacesIpv6AccessType,
        BackupDrRestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfacesNicType,
        BackupDrRestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfacesStackType,
        BackupDrRestoreWorkloadComputeInstanceRestorePropertiesNetworkPerformanceConfig,
        BackupDrRestoreWorkloadComputeInstanceRestorePropertiesNetworkPerformanceConfigTotalEgressBandwidthTier,
        BackupDrRestoreWorkloadComputeInstanceRestorePropertiesParams,
        BackupDrRestoreWorkloadComputeInstanceRestorePropertiesParamsResourceManagerTags,
        BackupDrRestoreWorkloadComputeInstanceRestorePropertiesPrivateIpv6GoogleAccess,
        BackupDrRestoreWorkloadComputeInstanceRestorePropertiesScheduling,
        BackupDrRestoreWorkloadComputeInstanceRestorePropertiesSchedulingInstanceTerminationAction,
        BackupDrRestoreWorkloadComputeInstanceRestorePropertiesSchedulingLocalSsdRecoveryTimeout,
        BackupDrRestoreWorkloadComputeInstanceRestorePropertiesSchedulingMaxRunDuration,
        BackupDrRestoreWorkloadComputeInstanceRestorePropertiesSchedulingNodeAffinities,
        BackupDrRestoreWorkloadComputeInstanceRestorePropertiesSchedulingNodeAffinitiesOperator,
        BackupDrRestoreWorkloadComputeInstanceRestorePropertiesSchedulingOnHostMaintenance,
        BackupDrRestoreWorkloadComputeInstanceRestorePropertiesSchedulingProvisioningModel,
        BackupDrRestoreWorkloadComputeInstanceRestorePropertiesServiceAccounts,
        BackupDrRestoreWorkloadComputeInstanceRestorePropertiesShieldedInstanceConfig,
        BackupDrRestoreWorkloadComputeInstanceRestorePropertiesTags,
        BackupDrRestoreWorkloadComputeInstanceTargetEnvironment,
        BackupDrRestoreWorkloadDiskRestoreProperties,
        BackupDrRestoreWorkloadDiskRestorePropertiesAccessMode,
        BackupDrRestoreWorkloadDiskRestorePropertiesArchitecture,
        BackupDrRestoreWorkloadDiskRestorePropertiesDiskEncryptionKey,
        BackupDrRestoreWorkloadDiskRestorePropertiesGuestOsFeature,
        BackupDrRestoreWorkloadDiskRestorePropertiesGuestOsFeatureType,
        BackupDrRestoreWorkloadDiskRestorePropertiesLabels,
        BackupDrRestoreWorkloadDiskRestorePropertiesResourceManagerTags,
        BackupDrRestoreWorkloadDiskTargetEnvironment,
        BackupDrRestoreWorkloadRegionDiskTargetEnvironment,
        GoogleBackupDrRestoreWorkload;
export 'src/backup_dr/google_backup_dr_service_config.dart'
    show GoogleBackupDrServiceConfig;
