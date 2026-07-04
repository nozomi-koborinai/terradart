// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
/// Artifact Registry: container / package repository, per-repository IAM.
///
/// Format is set at creation time and immutable. Pair `format: DOCKER`
/// with [ArtifactRegistryRepositoryArtifactRegistryDockerConfig], `format: MAVEN` with
/// [ArtifactRegistryRepositoryArtifactRegistryMavenConfig]. Mode is `STANDARD_REPOSITORY` (default),
/// `VIRTUAL_REPOSITORY` (aggregating proxy), or `REMOTE_REPOSITORY`
/// (caching proxy).
///
/// Note: `google_artifact_registry_vpcsc_config` is beta-only; not curated
/// in v0.8.0-dev. A follow-up PR extends the schema fixture against
/// `terraform-provider-google-beta` and adds that resource.
library;

export 'src/artifact_registry/google_artifact_registry_project_config.dart'
    show
        ArtifactRegistryPlatformLogsLoggingState,
        ArtifactRegistryPlatformLogsSeverityLevel,
        ArtifactRegistryProjectConfigPlatformLogsConfig,
        GoogleArtifactRegistryProjectConfig;
export 'src/artifact_registry/google_artifact_registry_repository.dart'
    show
        ArtifactRegistryAptRepositoryBase,
        ArtifactRegistryCleanupAction,
        ArtifactRegistryCleanupTagState,
        ArtifactRegistryDockerPublicRepository,
        ArtifactRegistryMavenPublicRepository,
        ArtifactRegistryMavenVersionPolicy,
        ArtifactRegistryMode,
        ArtifactRegistryNpmPublicRepository,
        ArtifactRegistryRepositoryArtifactRegistryCleanupCondition,
        ArtifactRegistryRepositoryArtifactRegistryCleanupMostRecentVersions,
        ArtifactRegistryRepositoryArtifactRegistryCleanupPolicy,
        ArtifactRegistryRepositoryArtifactRegistryDockerConfig,
        ArtifactRegistryRepositoryArtifactRegistryMavenConfig,
        ArtifactRegistryRepositoryArtifactRegistryRemoteAptPublicRepository,
        ArtifactRegistryRepositoryArtifactRegistryRemoteAptRepository,
        ArtifactRegistryRepositoryArtifactRegistryRemoteCommonRepository,
        ArtifactRegistryRepositoryArtifactRegistryRemoteCustomRepository,
        ArtifactRegistryRepositoryArtifactRegistryRemoteDockerRepository,
        ArtifactRegistryRepositoryArtifactRegistryRemoteMavenRepository,
        ArtifactRegistryRepositoryArtifactRegistryRemoteNpmRepository,
        ArtifactRegistryRepositoryArtifactRegistryRemoteRepositoryConfig,
        ArtifactRegistryRepositoryArtifactRegistryRemoteUpstreamCredentials,
        ArtifactRegistryRepositoryArtifactRegistryRemoteUsernamePasswordCredentials,
        ArtifactRegistryRepositoryArtifactRegistryRemoteYumPublicRepository,
        ArtifactRegistryRepositoryArtifactRegistryRemoteYumRepository,
        ArtifactRegistryRepositoryArtifactRegistryVirtualRepositoryConfig,
        ArtifactRegistryRepositoryArtifactRegistryVirtualUpstreamPolicy,
        ArtifactRegistryRepositoryArtifactRegistryVulnerabilityScanningConfig,
        ArtifactRegistryVulnerabilityEnablementConfig,
        ArtifactRegistryYumRepositoryBase,
        GoogleArtifactRegistryRepository;
export 'src/artifact_registry/google_artifact_registry_repository_iam_member.dart'
    show GoogleArtifactRegistryRepositoryIamMember;
