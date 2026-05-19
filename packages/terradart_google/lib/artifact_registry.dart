// packages/terradart_google/lib/artifact_registry.dart
/// Artifact Registry: container / package repository, per-repository IAM.
///
/// Format is set at creation time and immutable. Pair `format: DOCKER`
/// with [ArtifactRegistryDockerConfig], `format: MAVEN` with
/// [ArtifactRegistryMavenConfig]. Mode is `STANDARD_REPOSITORY` (default),
/// `VIRTUAL_REPOSITORY` (aggregating proxy), or `REMOTE_REPOSITORY`
/// (caching proxy).
///
/// Note: `google_artifact_registry_vpcsc_config` is beta-only; not curated
/// in v0.8.0-dev. A follow-up PR extends the schema fixture against
/// `terraform-provider-google-beta` and adds that resource.
library;

export 'src/artifact_registry/google_artifact_registry_repository.dart'
    show
        ArtifactRegistryCleanupAction,
        ArtifactRegistryCleanupCondition,
        ArtifactRegistryCleanupMostRecentVersions,
        ArtifactRegistryCleanupPolicy,
        ArtifactRegistryCleanupTagState,
        ArtifactRegistryDockerConfig,
        ArtifactRegistryMavenConfig,
        ArtifactRegistryMavenVersionPolicy,
        ArtifactRegistryMode,
        ArtifactRegistryRemoteCommonRepository,
        ArtifactRegistryRemoteRepositoryConfig,
        ArtifactRegistryRemoteUpstreamCredentials,
        ArtifactRegistryRemoteUsernamePasswordCredentials,
        ArtifactRegistryVirtualRepositoryConfig,
        ArtifactRegistryVirtualUpstreamPolicy,
        ArtifactRegistryVulnerabilityEnablementConfig,
        ArtifactRegistryVulnerabilityScanningConfig,
        GoogleArtifactRegistryRepository;
export 'src/artifact_registry/google_artifact_registry_repository_iam_member.dart'
    show GoogleArtifactRegistryRepositoryIamMember;
