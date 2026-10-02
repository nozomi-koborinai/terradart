// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
/// Artifact Registry: container / package repository, per-repository IAM,
/// and repository download rules.
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

export 'package:terradart_core/terradart_core.dart';
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
        ArtifactRegistryRepositoryAptRepository,
        ArtifactRegistryRepositoryAptRepositoryPublicRepository,
        ArtifactRegistryRepositoryCleanupPolicies,
        ArtifactRegistryRepositoryCommonRepository,
        ArtifactRegistryRepositoryCondition,
        ArtifactRegistryRepositoryConfig,
        ArtifactRegistryRepositoryCustomRepository,
        ArtifactRegistryRepositoryDockerConfig,
        ArtifactRegistryRepositoryDockerRepository,
        ArtifactRegistryRepositoryDockerRepositoryCustomRepository,
        ArtifactRegistryRepositoryDockerRepositoryPublicRepository,
        ArtifactRegistryRepositoryMavenConfig,
        ArtifactRegistryRepositoryMavenRepository,
        ArtifactRegistryRepositoryMavenRepositoryCustomRepository,
        ArtifactRegistryRepositoryMavenRepositoryPublicRepository,
        ArtifactRegistryRepositoryMostRecentVersions,
        ArtifactRegistryRepositoryNoCache,
        ArtifactRegistryRepositoryNpmRepository,
        ArtifactRegistryRepositoryNpmRepositoryCustomRepository,
        ArtifactRegistryRepositoryNpmRepositoryPublicRepository,
        ArtifactRegistryRepositoryPythonRepository,
        ArtifactRegistryRepositoryPythonRepositoryCustomRepository,
        ArtifactRegistryRepositoryPythonRepositoryPublicRepository,
        ArtifactRegistryRepositoryRemoteRepositoryConfig,
        ArtifactRegistryRepositoryRemoteRepositoryConfigChoice,
        ArtifactRegistryRepositoryRemoteRepositoryConfigFormat,
        ArtifactRegistryRepositoryRemoteRepositoryConfigFormatAptRepository,
        ArtifactRegistryRepositoryRemoteRepositoryConfigFormatCommonRepository,
        ArtifactRegistryRepositoryRemoteRepositoryConfigFormatDockerRepository,
        ArtifactRegistryRepositoryRemoteRepositoryConfigFormatMavenRepository,
        ArtifactRegistryRepositoryRemoteRepositoryConfigFormatNpmRepository,
        ArtifactRegistryRepositoryRemoteRepositoryConfigFormatPythonRepository,
        ArtifactRegistryRepositoryRemoteRepositoryConfigFormatYumRepository,
        ArtifactRegistryRepositoryUpstreamCredentials,
        ArtifactRegistryRepositoryUpstreamPolicies,
        ArtifactRegistryRepositoryUsernamePasswordCredentials,
        ArtifactRegistryRepositoryVirtualRepositoryConfig,
        ArtifactRegistryRepositoryVirtualRepositoryConfigChoice,
        ArtifactRegistryRepositoryVulnerabilityScanningConfig,
        ArtifactRegistryRepositoryYumRepository,
        ArtifactRegistryRepositoryYumRepositoryPublicRepository,
        ArtifactRegistryVulnerabilityEnablementConfig,
        ArtifactRegistryYumRepositoryBase,
        GoogleArtifactRegistryRepository;
export 'src/artifact_registry/google_artifact_registry_repository_iam_binding.dart'
    show
        ArtifactRegistryRepositoryIamBindingCondition,
        GoogleArtifactRegistryRepositoryIamBinding;
export 'src/artifact_registry/google_artifact_registry_repository_iam_member.dart'
    show
        ArtifactRegistryRepositoryIamMemberCondition,
        GoogleArtifactRegistryRepositoryIamMember;
export 'src/artifact_registry/google_artifact_registry_repository_iam_policy.dart'
    show GoogleArtifactRegistryRepositoryIamPolicy;
export 'src/artifact_registry/google_artifact_registry_rule.dart'
    show
        ArtifactRegistryRuleAction,
        ArtifactRegistryRuleCondition,
        ArtifactRegistryRuleOperation,
        GoogleArtifactRegistryRule;
export 'src/data/google_artifact_registry_docker_image.dart'
    show DataGoogleArtifactRegistryDockerImage;
export 'src/data/google_artifact_registry_docker_images.dart'
    show DataGoogleArtifactRegistryDockerImages;
export 'src/data/google_artifact_registry_file.dart'
    show DataGoogleArtifactRegistryFile;
export 'src/data/google_artifact_registry_locations.dart'
    show DataGoogleArtifactRegistryLocations;
export 'src/data/google_artifact_registry_maven_artifact.dart'
    show DataGoogleArtifactRegistryMavenArtifact;
export 'src/data/google_artifact_registry_maven_artifacts.dart'
    show DataGoogleArtifactRegistryMavenArtifacts;
export 'src/data/google_artifact_registry_npm_package.dart'
    show DataGoogleArtifactRegistryNpmPackage;
export 'src/data/google_artifact_registry_npm_packages.dart'
    show DataGoogleArtifactRegistryNpmPackages;
export 'src/data/google_artifact_registry_package.dart'
    show DataGoogleArtifactRegistryPackage;
export 'src/data/google_artifact_registry_packages.dart'
    show DataGoogleArtifactRegistryPackages;
export 'src/data/google_artifact_registry_python_package.dart'
    show DataGoogleArtifactRegistryPythonPackage;
export 'src/data/google_artifact_registry_python_packages.dart'
    show DataGoogleArtifactRegistryPythonPackages;
export 'src/data/google_artifact_registry_repositories.dart'
    show DataGoogleArtifactRegistryRepositories;
export 'src/data/google_artifact_registry_repository.dart'
    show DataGoogleArtifactRegistryRepository;
export 'src/data/google_artifact_registry_repository_iam_policy.dart'
    show DataGoogleArtifactRegistryRepositoryIamPolicy;
export 'src/data/google_artifact_registry_tag.dart'
    show DataGoogleArtifactRegistryTag;
export 'src/data/google_artifact_registry_tags.dart'
    show DataGoogleArtifactRegistryTags;
export 'src/data/google_artifact_registry_version.dart'
    show DataGoogleArtifactRegistryVersion;
export 'src/data/google_artifact_registry_versions.dart'
    show DataGoogleArtifactRegistryVersions;
