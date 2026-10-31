// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
/// Azure Resource Manager backup resources.
library;

export 'package:terradart_core/terradart_core.dart';
export 'src/backup/azurerm_backup_container_storage_account.dart'
    show AzurermBackupContainerStorageAccount;
export 'src/backup/azurerm_backup_policy_file_share.dart'
    show
        AzurermBackupPolicyFileShare,
        BackupPolicyFileShareBackup,
        BackupPolicyFileShareBackupTier,
        BackupPolicyFileShareFrequency,
        BackupPolicyFileShareHourly,
        BackupPolicyFileShareRetentionDaily,
        BackupPolicyFileShareRetentionMonthly,
        BackupPolicyFileShareRetentionWeekly,
        BackupPolicyFileShareRetentionYearly,
        BackupPolicyFileShareSchedule,
        BackupPolicyFileShareScheduleHourly,
        BackupPolicyFileShareScheduleTime,
        BackupPolicyFileShareWeeks;
export 'src/backup/azurerm_backup_policy_vm.dart'
    show
        AzurermBackupPolicyVm,
        BackupPolicyVmArchivedRestorePoint,
        BackupPolicyVmBackup,
        BackupPolicyVmConsistencyType,
        BackupPolicyVmDurationType,
        BackupPolicyVmFrequency,
        BackupPolicyVmInstantRestoreResourceGroup,
        BackupPolicyVmMode,
        BackupPolicyVmPolicyType,
        BackupPolicyVmRetentionDaily,
        BackupPolicyVmRetentionMonthly,
        BackupPolicyVmRetentionWeekly,
        BackupPolicyVmRetentionYearly,
        BackupPolicyVmTieringPolicy,
        BackupPolicyVmWeeks;
export 'src/backup/azurerm_backup_policy_vm_workload.dart'
    show
        AzurermBackupPolicyVmWorkload,
        BackupPolicyVmWorkloadBackup,
        BackupPolicyVmWorkloadFormatType,
        BackupPolicyVmWorkloadFrequency,
        BackupPolicyVmWorkloadPolicyType,
        BackupPolicyVmWorkloadProtectionPolicy,
        BackupPolicyVmWorkloadRetentionDaily,
        BackupPolicyVmWorkloadRetentionMonthly,
        BackupPolicyVmWorkloadRetentionWeekly,
        BackupPolicyVmWorkloadRetentionYearly,
        BackupPolicyVmWorkloadSettings,
        BackupPolicyVmWorkloadSimpleRetention,
        BackupPolicyVmWorkloadType,
        BackupPolicyVmWorkloadWeeks;
export 'src/backup/azurerm_backup_protected_file_share.dart'
    show AzurermBackupProtectedFileShare;
export 'src/backup/azurerm_backup_protected_vm.dart'
    show
        AzurermBackupProtectedVm,
        BackupProtectedVmDiskLuns,
        BackupProtectedVmExcludeDiskLuns,
        BackupProtectedVmIncludeDiskLuns,
        BackupProtectedVmProtectionState;
export 'src/data/azurerm_backup_policy_file_share.dart'
    show DataAzurermBackupPolicyFileShare;
export 'src/data/azurerm_backup_policy_vm.dart' show DataAzurermBackupPolicyVm;
