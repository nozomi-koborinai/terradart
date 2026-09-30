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
        ColabNotebookExecutionCustomEnvironmentSpecMachineSpec,
        ColabNotebookExecutionCustomEnvironmentSpecNetworkSpec,
        ColabNotebookExecutionCustomEnvironmentSpecPersistentDiskSpec,
        ColabNotebookExecutionCustomEnvironmentSpecShieldedInstanceConfig,
        ColabNotebookExecutionDataformRepositorySource,
        ColabNotebookExecutionDirectNotebookSource,
        ColabNotebookExecutionGcsNotebookSource,
        ColabNotebookExecutionIdentity,
        ColabNotebookExecutionIdentityExecutionUser,
        ColabNotebookExecutionIdentityServiceAccount,
        ColabNotebookExecutionSource,
        ColabNotebookExecutionSourceDataformRepositorySource,
        ColabNotebookExecutionSourceDirectNotebookSource,
        ColabNotebookExecutionSourceGcsNotebookSource,
        ColabNotebookExecutionWorkbenchRuntime,
        ColabNotebookExecutionWorkbenchRuntimeVmImage,
        ColabNotebookExecutionWorkbenchRuntimeVmImageSelector,
        ColabNotebookExecutionWorkbenchRuntimeVmImageSelectorFamily,
        ColabNotebookExecutionWorkbenchRuntimeVmImageSelectorName,
        GoogleColabNotebookExecution;
export 'src/colab/google_colab_runtime.dart'
    show
        ColabRuntimeDesiredState,
        ColabRuntimeNotebookRuntimeTemplateRef,
        GoogleColabRuntime;
export 'src/colab/google_colab_runtime_template.dart'
    show
        ColabRuntimeTemplateDataPersistentDiskSpec,
        ColabRuntimeTemplateEncryptionSpec,
        ColabRuntimeTemplateEucConfig,
        ColabRuntimeTemplateIdleShutdownConfig,
        ColabRuntimeTemplateMachineSpec,
        ColabRuntimeTemplateNetworkSpec,
        ColabRuntimeTemplateShieldedVmConfig,
        ColabRuntimeTemplateSoftwareConfig,
        ColabRuntimeTemplateSoftwareConfigColabImage,
        ColabRuntimeTemplateSoftwareConfigEnv,
        ColabRuntimeTemplateSoftwareConfigPostStartupScriptConfig,
        ColabRuntimeTemplateSoftwareConfigPostStartupScriptConfigPostStartupScriptBehavior,
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
        ColabScheduleCreateNotebookExecutionJobRequest,
        ColabScheduleCreateNotebookExecutionJobRequestNotebookExecutionJob,
        ColabScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCompute,
        ColabScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobComputeCustomEnvironmentSpec,
        ColabScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobComputeNotebookRuntimeTemplateResourceName,
        ColabScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpec,
        ColabScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecMachineSpec,
        ColabScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecMachineSpecReservationAffinity,
        ColabScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecNetworkSpec,
        ColabScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecPersistentDiskSpec,
        ColabScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobDataformRepositorySource,
        ColabScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobEncryptionSpec,
        ColabScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobGcsNotebookSource,
        ColabScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobIdentity,
        ColabScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobIdentityExecutionUser,
        ColabScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobIdentityServiceAccount,
        ColabScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobSource,
        ColabScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobSourceDataformRepositorySource,
        ColabScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobSourceGcsNotebookSource,
        ColabScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobWorkbenchRuntime,
        ColabScheduleCreatePipelineJobRequest,
        ColabScheduleCreatePipelineJobRequestPipelineJob,
        ColabScheduleCreatePipelineJobRequestPipelineJobEncryptionSpec,
        ColabScheduleCreatePipelineJobRequestPipelineJobPscInterfaceConfig,
        ColabScheduleCreatePipelineJobRequestPipelineJobPscInterfaceConfigDnsPeeringConfigs,
        ColabScheduleCreatePipelineJobRequestPipelineJobRuntimeConfig,
        ColabScheduleDesiredState,
        ColabScheduleRequest,
        ColabScheduleRequestCreateNotebookExecutionJobRequest,
        ColabScheduleRequestCreatePipelineJobRequest,
        GoogleColabSchedule;
