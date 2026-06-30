// packages/terradart_google/lib/os_config.dart
/// OS Config: VM Manager OS policy assignments and patch deployments.
library;

export 'src/os_config/google_os_config_os_policy_assignment.dart'
    show GoogleOsConfigOsPolicyAssignment;
export 'src/os_config/google_os_config_patch_deployment.dart'
    show
        GoogleOsConfigPatchDeployment,
        OsConfigPatchDeploymentDayOfWeek,
        OsConfigPatchDeploymentOneTimeSchedule,
        OsConfigPatchDeploymentRecurringSchedule,
        OsConfigPatchDeploymentRecurringScheduleMonthly,
        OsConfigPatchDeploymentRecurringScheduleMonthlyWeekDayOfMonth,
        OsConfigPatchDeploymentRecurringScheduleTimeOfDay,
        OsConfigPatchDeploymentRecurringScheduleTimeZone,
        OsConfigPatchDeploymentRecurringScheduleWeekly,
        OsConfigPatchDeploymentSchedule;
