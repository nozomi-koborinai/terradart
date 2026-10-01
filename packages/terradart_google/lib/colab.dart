// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
/// Colab Enterprise — runtimes, runtime templates, template IAM,
/// paused notebook execution schedules, and one-shot notebook
/// executions (Vertex AI notebook runtimes; runtime/execution compute
/// is never_apply).
library;

export 'src/colab/google_colab_notebook_execution.dart'
    show
        ColabNotebookExecutionCompute,
        ColabNotebookExecutionComputeCustomEnvironmentSpec,
        ColabNotebookExecutionComputeNotebookRuntimeTemplateResourceName,
        ColabNotebookExecutionCustomEnvironmentSpec,
        ColabNotebookExecutionDataformRepositorySource,
        ColabNotebookExecutionDataformRepositorySourceChoice,
        ColabNotebookExecutionDirectNotebookSource,
        ColabNotebookExecutionDirectNotebookSourceChoice,
        ColabNotebookExecutionGcsNotebookSource,
        ColabNotebookExecutionGcsNotebookSourceChoice,
        ColabNotebookExecutionIdentity,
        ColabNotebookExecutionIdentityExecutionUser,
        ColabNotebookExecutionIdentityServiceAccount,
        ColabNotebookExecutionMachineSpec,
        ColabNotebookExecutionNetworkSpec,
        ColabNotebookExecutionPersistentDiskSpec,
        ColabNotebookExecutionSelector,
        ColabNotebookExecutionSelectorFamily,
        ColabNotebookExecutionSelectorName,
        ColabNotebookExecutionShieldedInstanceConfig,
        ColabNotebookExecutionSource,
        ColabNotebookExecutionVmImage,
        ColabNotebookExecutionWorkbenchRuntime,
        GoogleColabNotebookExecution;
export 'src/colab/google_colab_runtime.dart'
    show
        ColabRuntimeDesiredState,
        ColabRuntimeNotebookRuntimeTemplateRef,
        GoogleColabRuntime;
export 'src/colab/google_colab_runtime_template.dart'
    show
        ColabRuntimeTemplateColabImage,
        ColabRuntimeTemplateDataPersistentDiskSpec,
        ColabRuntimeTemplateEncryptionSpec,
        ColabRuntimeTemplateEnv,
        ColabRuntimeTemplateEucConfig,
        ColabRuntimeTemplateIdleShutdownConfig,
        ColabRuntimeTemplateMachineSpec,
        ColabRuntimeTemplateNetworkSpec,
        ColabRuntimeTemplatePostStartupScriptBehavior,
        ColabRuntimeTemplatePostStartupScriptConfig,
        ColabRuntimeTemplateShieldedVmConfig,
        ColabRuntimeTemplateSoftwareConfig,
        GoogleColabRuntimeTemplate;
export 'src/colab/google_colab_runtime_template_iam_binding.dart'
    show
        ColabRuntimeTemplateIamBindingCondition,
        GoogleColabRuntimeTemplateIamBinding;
export 'src/colab/google_colab_runtime_template_iam_member.dart'
    show
        ColabRuntimeTemplateIamMemberCondition,
        GoogleColabRuntimeTemplateIamMember;
export 'src/colab/google_colab_runtime_template_iam_policy.dart'
    show GoogleColabRuntimeTemplateIamPolicy;
export 'src/colab/google_colab_schedule.dart'
    show
        ColabScheduleCompute,
        ColabScheduleComputeCustomEnvironmentSpec,
        ColabScheduleComputeNotebookRuntimeTemplateResourceName,
        ColabScheduleCreateNotebookExecutionJobRequest,
        ColabScheduleCreateNotebookExecutionJobRequestChoice,
        ColabScheduleCreatePipelineJobRequest,
        ColabScheduleCreatePipelineJobRequestChoice,
        ColabScheduleCustomEnvironmentSpec,
        ColabScheduleDataformRepositorySource,
        ColabScheduleDataformRepositorySourceChoice,
        ColabScheduleDesiredState,
        ColabScheduleDnsPeeringConfigs,
        ColabScheduleEncryptionSpec,
        ColabScheduleGcsNotebookSource,
        ColabScheduleGcsNotebookSourceChoice,
        ColabScheduleIdentity,
        ColabScheduleIdentityExecutionUser,
        ColabScheduleIdentityServiceAccount,
        ColabScheduleMachineSpec,
        ColabScheduleNetworkSpec,
        ColabScheduleNotebookExecutionJob,
        ColabSchedulePersistentDiskSpec,
        ColabSchedulePipelineJob,
        ColabSchedulePscInterfaceConfig,
        ColabScheduleRequest,
        ColabScheduleReservationAffinity,
        ColabScheduleRuntimeConfig,
        ColabScheduleSource,
        ColabScheduleWorkbenchRuntime,
        GoogleColabSchedule;
