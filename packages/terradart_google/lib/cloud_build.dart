// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
/// Cloud Build CI/CD: trigger, private worker pool, v2 SCM connection +
/// repository.
///
/// The v2 SCM connection model ([GoogleCloudbuildv2Connection] +
/// [GoogleCloudbuildv2Repository]) is the modern way to wire GitHub /
/// GitLab / Bitbucket sources into a Cloud Build trigger. The v1
/// `github` / `bitbucket_server_trigger_config` inline forms inside
/// [GoogleCloudbuildTrigger] remain supported for existing setups.
library;

export 'src/cloud_build/google_cloudbuild_bitbucket_server_config.dart'
    show
        CloudbuildBitbucketServerConfigConnectedRepositories,
        CloudbuildBitbucketServerConfigSecrets,
        GoogleCloudbuildBitbucketServerConfig;
export 'src/cloud_build/google_cloudbuild_trigger.dart'
    show
        CloudBuildTriggerBuildLogging,
        CloudBuildTriggerCommentControl,
        CloudBuildTriggerIncludeBuildLogs,
        CloudBuildTriggerLogStreamingOption,
        CloudBuildTriggerRepoType,
        CloudBuildTriggerRequestedVerifyOption,
        CloudBuildTriggerSourceProvenanceHash,
        CloudBuildTriggerSubstitutionOption,
        CloudbuildTriggerApprovalConfig,
        CloudbuildTriggerBitbucketServerTriggerConfig,
        CloudbuildTriggerBuild,
        CloudbuildTriggerBuildOptions,
        CloudbuildTriggerBuildSpec,
        CloudbuildTriggerBuildStep,
        CloudbuildTriggerDeveloperConnectEventConfig,
        CloudbuildTriggerFilenameSpec,
        CloudbuildTriggerGitFileSource,
        CloudbuildTriggerGitFileSourceSpec,
        CloudbuildTriggerGithub,
        CloudbuildTriggerInlineBuildSpec,
        CloudbuildTriggerPubsubConfig,
        CloudbuildTriggerPullRequestFilter,
        CloudbuildTriggerPushFilter,
        CloudbuildTriggerRepositoryEventConfig,
        CloudbuildTriggerSourceToBuild,
        CloudbuildTriggerTriggerTemplate,
        CloudbuildTriggerWebhookConfig,
        GoogleCloudbuildTrigger;
export 'src/cloud_build/google_cloudbuild_worker_pool.dart'
    show
        CloudbuildWorkerPoolNetworkConfig,
        CloudbuildWorkerPoolPrivateServiceConnect,
        CloudbuildWorkerPoolWorkerConfig,
        GoogleCloudbuildWorkerPool;
export 'src/cloud_build/google_cloudbuildv2_connection.dart'
    show
        Cloudbuildv2ConnectionBitbucketCloudConfig,
        Cloudbuildv2ConnectionBitbucketDataCenterConfig,
        Cloudbuildv2ConnectionGithubAuthorizerCredential,
        Cloudbuildv2ConnectionGithubConfig,
        Cloudbuildv2ConnectionGithubEnterpriseConfig,
        Cloudbuildv2ConnectionGitlabConfig,
        Cloudbuildv2ConnectionServiceDirectoryConfig,
        Cloudbuildv2ConnectionUserCredential,
        GoogleCloudbuildv2Connection;
export 'src/cloud_build/google_cloudbuildv2_connection_iam_binding.dart'
    show GoogleCloudbuildv2ConnectionIamBinding;
export 'src/cloud_build/google_cloudbuildv2_connection_iam_member.dart'
    show GoogleCloudbuildv2ConnectionIamMember;
export 'src/cloud_build/google_cloudbuildv2_connection_iam_policy.dart'
    show GoogleCloudbuildv2ConnectionIamPolicy;
export 'src/cloud_build/google_cloudbuildv2_repository.dart'
    show GoogleCloudbuildv2Repository;
