// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
/// GKE Backup — backup/restore plans, channels, and plan-scoped IAM.
///
/// For clusters and node pools, see `container.dart`. Pair
/// [GoogleGkeBackupBackupPlan] with [GoogleContainerCluster].
library;

export 'src/gke_backup/google_gke_backup_backup_channel.dart'
    show GoogleGkeBackupBackupChannel;
export 'src/gke_backup/google_gke_backup_backup_plan.dart'
    show
        GkeBackupBackupPlanBackupSchedule,
        GkeBackupBackupPlanDayOfWeek,
        GkeBackupBackupPlanExclusionWindow,
        GkeBackupBackupPlanExclusionWindowDaysOfWeek,
        GkeBackupBackupPlanRpoConfig,
        GoogleGkeBackupBackupPlan;
export 'src/gke_backup/google_gke_backup_backup_plan_iam_member.dart'
    show GoogleGkeBackupBackupPlanIamMember;
export 'src/gke_backup/google_gke_backup_restore_channel.dart'
    show GoogleGkeBackupRestoreChannel;
export 'src/gke_backup/google_gke_backup_restore_plan.dart'
    show
        GkeBackupRestorePlanClusterResourceConflictPolicy,
        GkeBackupRestorePlanNamespacedResourceRestoreMode,
        GkeBackupRestorePlanRestoreConfig,
        GkeBackupRestorePlanTransformationFieldAction,
        GkeBackupRestorePlanTransformationFieldActionOp,
        GkeBackupRestorePlanTransformationRule,
        GkeBackupRestorePlanVolumeDataRestorePolicy,
        GkeBackupRestorePlanVolumeDataRestorePolicyBinding,
        GoogleGkeBackupRestorePlan;
export 'src/gke_backup/google_gke_backup_restore_plan_iam_member.dart'
    show GoogleGkeBackupRestorePlanIamMember;
