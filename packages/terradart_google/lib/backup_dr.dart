// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
/// Backup and DR Service — vaults, plans, associations, management
/// server, service config, and restore workloads.
library;

export 'package:terradart_core/terradart_core.dart';
export 'src/backup_dr/google_backup_dr_backup_plan.dart'
    show
        BackupDrBackupPlanBackupRules,
        BackupDrBackupPlanBackupWindow,
        BackupDrBackupPlanComputeInstanceBackupPlanProperties,
        BackupDrBackupPlanDayOfWeek,
        BackupDrBackupPlanDaysOfWeek,
        BackupDrBackupPlanDiskBackupPlanProperties,
        BackupDrBackupPlanMonths,
        BackupDrBackupPlanRecurrenceType,
        BackupDrBackupPlanStandardSchedule,
        BackupDrBackupPlanWeekDayOfMonth,
        BackupDrBackupPlanWeekOfMonth,
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
        BackupDrRestoreWorkloadAccessConfigs,
        BackupDrRestoreWorkloadAccessConfigsType,
        BackupDrRestoreWorkloadAccessMode,
        BackupDrRestoreWorkloadAdvancedMachineFeatures,
        BackupDrRestoreWorkloadAliasIpRanges,
        BackupDrRestoreWorkloadAllocationAffinity,
        BackupDrRestoreWorkloadArchitecture,
        BackupDrRestoreWorkloadComputeInstanceRestoreProperties,
        BackupDrRestoreWorkloadComputeInstanceTargetEnvironment,
        BackupDrRestoreWorkloadConfidentialInstanceConfig,
        BackupDrRestoreWorkloadConsumeAllocationType,
        BackupDrRestoreWorkloadDiskEncryptionKey,
        BackupDrRestoreWorkloadDiskInterface,
        BackupDrRestoreWorkloadDiskRestoreProperties,
        BackupDrRestoreWorkloadDiskTargetEnvironment,
        BackupDrRestoreWorkloadDisks,
        BackupDrRestoreWorkloadDisksType,
        BackupDrRestoreWorkloadDisplayDevice,
        BackupDrRestoreWorkloadGuestAccelerators,
        BackupDrRestoreWorkloadGuestOsFeature,
        BackupDrRestoreWorkloadGuestOsFeatureType,
        BackupDrRestoreWorkloadInitializeParams,
        BackupDrRestoreWorkloadInstanceEncryptionKey,
        BackupDrRestoreWorkloadInstanceTerminationAction,
        BackupDrRestoreWorkloadIpv6AccessConfigs,
        BackupDrRestoreWorkloadIpv6AccessType,
        BackupDrRestoreWorkloadItems,
        BackupDrRestoreWorkloadKeyRevocationActionType,
        BackupDrRestoreWorkloadLabels,
        BackupDrRestoreWorkloadLocalSsdRecoveryTimeout,
        BackupDrRestoreWorkloadMaxRunDuration,
        BackupDrRestoreWorkloadMetadata,
        BackupDrRestoreWorkloadMode,
        BackupDrRestoreWorkloadNetworkInterfaces,
        BackupDrRestoreWorkloadNetworkPerformanceConfig,
        BackupDrRestoreWorkloadNetworkTier,
        BackupDrRestoreWorkloadNicType,
        BackupDrRestoreWorkloadNodeAffinities,
        BackupDrRestoreWorkloadOnHostMaintenance,
        BackupDrRestoreWorkloadOperator,
        BackupDrRestoreWorkloadParams,
        BackupDrRestoreWorkloadPrivateIpv6GoogleAccess,
        BackupDrRestoreWorkloadProvisioningModel,
        BackupDrRestoreWorkloadRegionDiskTargetEnvironment,
        BackupDrRestoreWorkloadResourceManagerTags,
        BackupDrRestoreWorkloadSavedState,
        BackupDrRestoreWorkloadScheduling,
        BackupDrRestoreWorkloadServiceAccounts,
        BackupDrRestoreWorkloadShieldedInstanceConfig,
        BackupDrRestoreWorkloadStackType,
        BackupDrRestoreWorkloadTags,
        BackupDrRestoreWorkloadTotalEgressBandwidthTier,
        GoogleBackupDrRestoreWorkload;
export 'src/backup_dr/google_backup_dr_service_config.dart'
    show GoogleBackupDrServiceConfig;
export 'src/data/google_backup_dr_backup.dart' show DataGoogleBackupDrBackup;
export 'src/data/google_backup_dr_backup_plan.dart'
    show DataGoogleBackupDrBackupPlan;
export 'src/data/google_backup_dr_backup_plan_association.dart'
    show DataGoogleBackupDrBackupPlanAssociation;
export 'src/data/google_backup_dr_backup_plan_associations.dart'
    show DataGoogleBackupDrBackupPlanAssociations;
export 'src/data/google_backup_dr_backup_vault.dart'
    show DataGoogleBackupDrBackupVault;
export 'src/data/google_backup_dr_data_source.dart'
    show DataGoogleBackupDrDataSource;
export 'src/data/google_backup_dr_data_source_reference.dart'
    show DataGoogleBackupDrDataSourceReference;
export 'src/data/google_backup_dr_data_source_references.dart'
    show DataGoogleBackupDrDataSourceReferences;
export 'src/data/google_backup_dr_data_sources.dart'
    show DataGoogleBackupDrDataSources;
export 'src/data/google_backup_dr_management_server.dart'
    show DataGoogleBackupDrManagementServer;
