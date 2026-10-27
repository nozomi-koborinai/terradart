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
        BackupPolicyFileShareBackupHourlyOrTime,
        BackupPolicyFileShareBackupHourlyOrTimeChoice,
        BackupPolicyFileShareBackupHourlyOrTimeHourly,
        BackupPolicyFileShareBackupTier,
        BackupPolicyFileShareHourly,
        BackupPolicyFileShareRetentionDaily,
        BackupPolicyFileShareRetentionMonthly,
        BackupPolicyFileShareRetentionWeekly,
        BackupPolicyFileShareRetentionYearly;
export 'src/backup/azurerm_backup_policy_vm.dart'
    show
        AzurermBackupPolicyVm,
        BackupPolicyVmArchivedRestorePoint,
        BackupPolicyVmBackup,
        BackupPolicyVmInstantRestoreResourceGroup,
        BackupPolicyVmRetentionDaily,
        BackupPolicyVmRetentionMonthly,
        BackupPolicyVmRetentionWeekly,
        BackupPolicyVmRetentionYearly,
        BackupPolicyVmTieringPolicy;
export 'src/backup/azurerm_backup_policy_vm_workload.dart'
    show
        AzurermBackupPolicyVmWorkload,
        BackupPolicyVmWorkloadBackup,
        BackupPolicyVmWorkloadProtectionPolicy,
        BackupPolicyVmWorkloadRetentionDaily,
        BackupPolicyVmWorkloadRetentionMonthly,
        BackupPolicyVmWorkloadRetentionWeekly,
        BackupPolicyVmWorkloadRetentionYearly,
        BackupPolicyVmWorkloadSettings,
        BackupPolicyVmWorkloadSimpleRetention;
export 'src/backup/azurerm_backup_protected_file_share.dart'
    show AzurermBackupProtectedFileShare;
export 'src/backup/azurerm_backup_protected_vm.dart'
    show
        AzurermBackupProtectedVm,
        BackupProtectedVmDiskLuns,
        BackupProtectedVmExcludeDiskLuns,
        BackupProtectedVmIncludeDiskLuns;
export 'src/data/azurerm_backup_policy_file_share.dart'
    show DataAzurermBackupPolicyFileShare;
export 'src/data/azurerm_backup_policy_vm.dart' show DataAzurermBackupPolicyVm;
