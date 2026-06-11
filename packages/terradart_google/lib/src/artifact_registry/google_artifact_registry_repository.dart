// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_artifact_registry_repository`.
const Set<String> _googleArtifactRegistryRepositorySensitive = <String>{};

// ===========================================================================
// Top-level enums
// ===========================================================================

/// `mode` for `google_artifact_registry_repository`. Picks the repository
/// shape: standard (push/pull), virtual (federated view over other
/// repositories), or remote (pull-through cache of an upstream registry).
/// The schema defaults to `STANDARD_REPOSITORY`.
enum ArtifactRegistryMode implements TerraformEnum {
  standardRepository('STANDARD_REPOSITORY'),
  virtualRepository('VIRTUAL_REPOSITORY'),
  remoteRepository('REMOTE_REPOSITORY');

  const ArtifactRegistryMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// `cleanup_policies.action` -- what the cleanup policy does to matching
/// versions when its condition fires.
enum ArtifactRegistryCleanupAction implements TerraformEnum {
  delete('DELETE'),
  keep('KEEP');

  const ArtifactRegistryCleanupAction(this.terraformValue);
  @override
  final String terraformValue;
}

/// `cleanup_policies.condition.tag_state` -- limits a cleanup condition to
/// tagged / untagged / any versions. Schema default `ANY`.
enum ArtifactRegistryCleanupTagState implements TerraformEnum {
  any('ANY'),
  tagged('TAGGED'),
  untagged('UNTAGGED');

  const ArtifactRegistryCleanupTagState(this.terraformValue);
  @override
  final String terraformValue;
}

/// `maven_config.version_policy` -- which Maven version classes the
/// repository accepts. Schema default `VERSION_POLICY_UNSPECIFIED`.
enum ArtifactRegistryMavenVersionPolicy implements TerraformEnum {
  versionPolicyUnspecified('VERSION_POLICY_UNSPECIFIED'),
  release('RELEASE'),
  snapshot('SNAPSHOT');

  const ArtifactRegistryMavenVersionPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// `vulnerability_scanning_config.enablement_config` -- whether
/// vulnerability scanning is enabled for artifacts pushed to this repo.
/// `INHERITED` defers to the project-level Artifact Analysis API state.
enum ArtifactRegistryVulnerabilityEnablementConfig implements TerraformEnum {
  inherited('INHERITED'),
  disabled('DISABLED');

  const ArtifactRegistryVulnerabilityEnablementConfig(this.terraformValue);
  @override
  final String terraformValue;
}

/// `remote_repository_config.apt_repository.public_repository.repository_base`.
enum ArtifactRegistryAptRepositoryBase implements TerraformEnum {
  debian('DEBIAN'),
  ubuntu('UBUNTU'),
  debianSnapshot('DEBIAN_SNAPSHOT');

  const ArtifactRegistryAptRepositoryBase(this.terraformValue);
  @override
  final String terraformValue;
}

/// `remote_repository_config.yum_repository.public_repository.repository_base`.
enum ArtifactRegistryYumRepositoryBase implements TerraformEnum {
  centos('CENTOS'),
  centosDebug('CENTOS_DEBUG'),
  centosVault('CENTOS_VAULT'),
  centosStream('CENTOS_STREAM'),
  rocky('ROCKY'),
  epel('EPEL');

  const ArtifactRegistryYumRepositoryBase(this.terraformValue);
  @override
  final String terraformValue;
}

// ===========================================================================
// docker_config (max_items=1)
// ===========================================================================

/// `docker_config` block. Applies only when the parent repository's
/// `format` is `DOCKER`; ignored for other formats.
@immutable
class ArtifactRegistryRepositoryArtifactRegistryDockerConfig {
  const ArtifactRegistryRepositoryArtifactRegistryDockerConfig({
    this.immutableTags,
  });

  /// When `true`, prevents existing tags from being modified, moved, or
  /// deleted -- new tags can still be created. Useful for build-pipeline
  /// integrity (a tag, once published, can never be silently overwritten).
  final TfArg<bool>? immutableTags;

  Map<String, Object?> toArgMap() => {
    if (immutableTags != null) 'immutable_tags': immutableTags!.toTfJson(),
  };
}

// ===========================================================================
// maven_config (max_items=1)
// ===========================================================================

/// `maven_config` block. Applies only when the parent repository's
/// `format` is `MAVEN`; ignored for other formats.
@immutable
class ArtifactRegistryRepositoryArtifactRegistryMavenConfig {
  const ArtifactRegistryRepositoryArtifactRegistryMavenConfig({
    this.allowSnapshotOverwrites,
    this.versionPolicy,
  });

  /// When `true`, allows publishing duplicate SNAPSHOT versions (i.e.
  /// uploading `1.0-SNAPSHOT` more than once and overwriting the prior
  /// upload). Ignored unless [versionPolicy] permits snapshots.
  final TfArg<bool>? allowSnapshotOverwrites;

  /// Version classes the repository accepts. Default
  /// `VERSION_POLICY_UNSPECIFIED` (i.e. all versions).
  final ArtifactRegistryMavenVersionPolicy? versionPolicy;

  Map<String, Object?> toArgMap() => {
    if (allowSnapshotOverwrites != null)
      'allow_snapshot_overwrites': allowSnapshotOverwrites!.toTfJson(),
    if (versionPolicy != null) 'version_policy': versionPolicy!.terraformValue,
  };
}

// ===========================================================================
// virtual_repository_config (max_items=1)
// ===========================================================================

/// `virtual_repository_config` block. Required when
/// `mode == VIRTUAL_REPOSITORY`; mutually exclusive with
/// [ArtifactRegistryRepositoryArtifactRegistryRemoteRepositoryConfig].
///
/// A virtual repository forwards pulls to one or more upstream
/// repositories in priority order -- pulls hit the highest-priority
/// upstream first, falling back on miss.
@immutable
class ArtifactRegistryRepositoryArtifactRegistryVirtualRepositoryConfig {
  const ArtifactRegistryRepositoryArtifactRegistryVirtualRepositoryConfig({
    this.upstreamPolicies,
  });

  /// Upstream repositories this virtual repo proxies. Entries with a
  /// greater [ArtifactRegistryRepositoryArtifactRegistryVirtualUpstreamPolicy.priority] are tried
  /// first.
  final List<ArtifactRegistryRepositoryArtifactRegistryVirtualUpstreamPolicy>?
  upstreamPolicies;

  Map<String, Object?> toArgMap() => {
    if (upstreamPolicies != null)
      'upstream_policies': upstreamPolicies!.map((p) => p.toArgMap()).toList(),
  };
}

/// One `virtual_repository_config.upstream_policies` entry.
@immutable
class ArtifactRegistryRepositoryArtifactRegistryVirtualUpstreamPolicy {
  const ArtifactRegistryRepositoryArtifactRegistryVirtualUpstreamPolicy({
    this.id,
    this.repository,
    this.priority,
  });

  /// User-supplied policy id (free-form short string). Useful for
  /// referencing a specific upstream in diagnostics.
  final TfArg<String>? id;

  /// Self-link to the upstream `google_artifact_registry_repository`,
  /// e.g. `projects/<p>/locations/<l>/repositories/<repo>`. Pass
  /// `TfArg.ref(upstreamRepo.id)` to keep it symbolic.
  final TfArg<String>? repository;

  /// Pull order: greater values are tried first.
  final TfArg<int>? priority;

  Map<String, Object?> toArgMap() => {
    if (id != null) 'id': id!.toTfJson(),
    if (repository != null) 'repository': repository!.toTfJson(),
    if (priority != null) 'priority': priority!.toTfJson(),
  };
}

// ===========================================================================
// remote_repository_config (max_items=1)
// ===========================================================================

/// `remote_repository_config` block. Required when
/// `mode == REMOTE_REPOSITORY`; mutually exclusive with
/// [ArtifactRegistryRepositoryArtifactRegistryVirtualRepositoryConfig].
///
/// A remote repository acts as a pull-through cache: clients pull from
/// it, and on cache miss it fetches from a configured upstream registry
/// (Docker Hub, Maven Central, PyPI, npm, APT/YUM mirrors, or any
/// "common" URI). The typed surface here covers the most common path
/// -- a `common_repository` upstream + optional username/password
/// credentials. APT/YUM public-repository bases are typed on
/// [aptRepository] / [yumRepository]; other format-specific upstreams
/// and deprecated `custom_repository` paths remain on [advancedExtra].
@immutable
class ArtifactRegistryRepositoryArtifactRegistryRemoteRepositoryConfig {
  const ArtifactRegistryRepositoryArtifactRegistryRemoteRepositoryConfig({
    this.description,
    this.commonRepository,
    this.aptRepository,
    this.yumRepository,
    this.upstreamCredentials,
    this.disableUpstreamValidation,
    this.advancedExtra,
  });

  /// Free-form description of the upstream this remote repo proxies.
  final TfArg<String>? description;

  /// Generic upstream-by-URI form. Accepts an Artifact Registry repo
  /// path (`projects/.../locations/.../repositories/...`), a fully
  /// qualified registry URI (`https://registry-1.docker.io`), or an
  /// Artifact Registry HTTPS URI
  /// (`https://<region>-docker.pkg.dev/<project>/<repo>`).
  final ArtifactRegistryRepositoryArtifactRegistryRemoteCommonRepository?
  commonRepository;

  /// APT-format remote upstream (`format == APT`, `mode == REMOTE_REPOSITORY`).
  final ArtifactRegistryRepositoryArtifactRegistryRemoteAptRepository?
  aptRepository;

  /// YUM-format remote upstream (`format == YUM`, `mode == REMOTE_REPOSITORY`).
  final ArtifactRegistryRepositoryArtifactRegistryRemoteYumRepository?
  yumRepository;

  /// Credentials used when pulling from a private upstream. Set this
  /// when the upstream requires authentication (e.g. a private Docker
  /// Hub org, a self-hosted Nexus).
  final ArtifactRegistryRepositoryArtifactRegistryRemoteUpstreamCredentials?
  upstreamCredentials;

  /// When `true`, skips upstream-reachability validation at create /
  /// update time. This field is INPUT_ONLY -- the API does not return
  /// it on read, so changes show as drift unless excluded from the read
  /// path.
  final TfArg<bool>? disableUpstreamValidation;

  /// Escape hatch for the format-specific upstream blocks not modeled
  /// as typed fields:
  /// - `docker_repository` (`public_repository: 'DOCKER_HUB'` /
  ///   deprecated `custom_repository.uri`)
  /// - `maven_repository` (`public_repository: 'MAVEN_CENTRAL'` /
  ///   deprecated `custom_repository.uri`)
  /// - `npm_repository` (`public_repository: 'NPMJS'` / deprecated
  ///   `custom_repository.uri`)
  /// - `python_repository` (`public_repository: 'PYPI'` / deprecated
  ///   `custom_repository.uri`)
  ///
  /// Keys are Terraform block names; values are the block payload
  /// (single block -> `[{...}]`, list of blocks -> list of maps).
  /// The map is spread into the emitted Terraform args as-is and is
  /// mutually exclusive with [commonRepository] at the API level
  /// (`exactly_one_of` -- enforced by Terraform at plan time).
  final Map<String, Object?>? advancedExtra;

  Map<String, Object?> toArgMap() => {
    if (description != null) 'description': description!.toTfJson(),
    if (commonRepository != null)
      'common_repository': [commonRepository!.toArgMap()],
    if (aptRepository != null) 'apt_repository': [aptRepository!.toArgMap()],
    if (yumRepository != null) 'yum_repository': [yumRepository!.toArgMap()],
    if (upstreamCredentials != null)
      'upstream_credentials': [upstreamCredentials!.toArgMap()],
    if (disableUpstreamValidation != null)
      'disable_upstream_validation': disableUpstreamValidation!.toTfJson(),
    if (advancedExtra != null) ...advancedExtra!,
  };
}

/// `remote_repository_config.apt_repository` block.
@immutable
class ArtifactRegistryRepositoryArtifactRegistryRemoteAptRepository {
  const ArtifactRegistryRepositoryArtifactRegistryRemoteAptRepository({
    this.publicRepository,
  });

  final ArtifactRegistryRepositoryArtifactRegistryRemoteAptPublicRepository?
  publicRepository;

  Map<String, Object?> toArgMap() => {
    if (publicRepository != null)
      'public_repository': [publicRepository!.toArgMap()],
  };
}

/// `remote_repository_config.apt_repository.public_repository`.
@immutable
class ArtifactRegistryRepositoryArtifactRegistryRemoteAptPublicRepository {
  const ArtifactRegistryRepositoryArtifactRegistryRemoteAptPublicRepository({
    this.repositoryBase,
    this.repositoryPath,
  });

  final ArtifactRegistryAptRepositoryBase? repositoryBase;
  final TfArg<String>? repositoryPath;

  Map<String, Object?> toArgMap() => {
    if (repositoryBase != null)
      'repository_base': repositoryBase!.terraformValue,
    if (repositoryPath != null) 'repository_path': repositoryPath!.toTfJson(),
  };
}

/// `remote_repository_config.yum_repository` block.
@immutable
class ArtifactRegistryRepositoryArtifactRegistryRemoteYumRepository {
  const ArtifactRegistryRepositoryArtifactRegistryRemoteYumRepository({
    this.publicRepository,
  });

  final ArtifactRegistryRepositoryArtifactRegistryRemoteYumPublicRepository?
  publicRepository;

  Map<String, Object?> toArgMap() => {
    if (publicRepository != null)
      'public_repository': [publicRepository!.toArgMap()],
  };
}

/// `remote_repository_config.yum_repository.public_repository`.
@immutable
class ArtifactRegistryRepositoryArtifactRegistryRemoteYumPublicRepository {
  const ArtifactRegistryRepositoryArtifactRegistryRemoteYumPublicRepository({
    this.repositoryBase,
    this.repositoryPath,
  });

  final ArtifactRegistryYumRepositoryBase? repositoryBase;
  final TfArg<String>? repositoryPath;

  Map<String, Object?> toArgMap() => {
    if (repositoryBase != null)
      'repository_base': repositoryBase!.terraformValue,
    if (repositoryPath != null) 'repository_path': repositoryPath!.toTfJson(),
  };
}

/// `remote_repository_config.common_repository` -- generic upstream by
/// URI. Mutually exclusive with the format-specific
/// `*_repository` blocks (see
/// [ArtifactRegistryRepositoryArtifactRegistryRemoteRepositoryConfig.advancedExtra]).
@immutable
class ArtifactRegistryRepositoryArtifactRegistryRemoteCommonRepository {
  const ArtifactRegistryRepositoryArtifactRegistryRemoteCommonRepository({
    required this.uri,
  });

  /// Upstream URI. Accepts an Artifact Registry repo path
  /// (`projects/<p>/locations/<l>/repositories/<repo>`), a registry URI
  /// (`https://registry-1.docker.io`), or an Artifact Registry HTTPS URI
  /// (`https://<region>-docker.pkg.dev/<project>/<repo>`).
  final TfArg<String> uri;

  Map<String, Object?> toArgMap() => {'uri': uri.toTfJson()};
}

/// `remote_repository_config.upstream_credentials` -- single helper for
/// the only credential variant currently modeled by the schema
/// (`username_password_credentials`).
@immutable
class ArtifactRegistryRepositoryArtifactRegistryRemoteUpstreamCredentials {
  const ArtifactRegistryRepositoryArtifactRegistryRemoteUpstreamCredentials({
    this.usernamePasswordCredentials,
  });

  /// Username + Secret-Manager password version pair.
  final ArtifactRegistryRepositoryArtifactRegistryRemoteUsernamePasswordCredentials?
  usernamePasswordCredentials;

  Map<String, Object?> toArgMap() => {
    if (usernamePasswordCredentials != null)
      'username_password_credentials': [
        usernamePasswordCredentials!.toArgMap(),
      ],
  };
}

/// `remote_repository_config.upstream_credentials
/// .username_password_credentials` block.
///
/// The actual password never appears here -- it lives in Secret Manager
/// and Artifact Registry resolves [passwordSecretVersion] at fetch
/// time.
@immutable
class ArtifactRegistryRepositoryArtifactRegistryRemoteUsernamePasswordCredentials {
  const ArtifactRegistryRepositoryArtifactRegistryRemoteUsernamePasswordCredentials({
    this.username,
    this.passwordSecretVersion,
  });

  /// Username used to authenticate against the upstream.
  final TfArg<String>? username;

  /// Secret Manager secret-version path
  /// (`projects/<p>/secrets/<s>/versions/<v>`) holding the upstream
  /// password. Pass `TfArg.ref(secretVersion.name)` to keep the wiring
  /// symbolic.
  final TfArg<String>? passwordSecretVersion;

  Map<String, Object?> toArgMap() => {
    if (username != null) 'username': username!.toTfJson(),
    if (passwordSecretVersion != null)
      'password_secret_version': passwordSecretVersion!.toTfJson(),
  };
}

// ===========================================================================
// cleanup_policies (set, unbounded, keyed by id)
// ===========================================================================

/// One `cleanup_policies` entry. Each policy pairs an [action]
/// (`KEEP` / `DELETE`) with EXACTLY ONE of [condition] (tag/age/prefix
/// match) or [mostRecentVersions] (retain top-N) -- mirrors the
/// API-level `exactly_one_of` constraint between the two sub-blocks.
///
/// Combine with [GoogleArtifactRegistryRepository.cleanupPolicyDryRun]
/// = `true` to dry-run the rule against existing artifacts before
/// enabling deletion.
@immutable
class ArtifactRegistryRepositoryArtifactRegistryCleanupPolicy {
  const ArtifactRegistryRepositoryArtifactRegistryCleanupPolicy({
    required this.id,
    this.action,
    this.condition,
    this.mostRecentVersions,
  });

  /// Policy id (also the map key). Free-form, unique within the
  /// repository, under 128 chars.
  final TfArg<String> id;

  /// What this policy does to matching versions when its condition
  /// fires. Optional in the schema, but a policy with no action is a
  /// no-op.
  final ArtifactRegistryCleanupAction? action;

  /// Match versions by tag / age / prefix. Mutually exclusive with
  /// [mostRecentVersions].
  final ArtifactRegistryRepositoryArtifactRegistryCleanupCondition? condition;

  /// Retain the N most recent versions matching [package name
  /// prefixes][ArtifactRegistryRepositoryArtifactRegistryCleanupMostRecentVersions.packageNamePrefixes].
  /// May only be paired with `action == KEEP`. Mutually exclusive with
  /// [condition].
  final ArtifactRegistryRepositoryArtifactRegistryCleanupMostRecentVersions?
  mostRecentVersions;

  Map<String, Object?> toArgMap() => {
    'id': id.toTfJson(),
    if (action != null) 'action': action!.terraformValue,
    if (condition != null) 'condition': [condition!.toArgMap()],
    if (mostRecentVersions != null)
      'most_recent_versions': [mostRecentVersions!.toArgMap()],
  };
}

/// `cleanup_policies.condition` -- match versions by tag / age / prefix.
/// At least one of the predicate fields should be set for the condition
/// to be meaningful.
@immutable
class ArtifactRegistryRepositoryArtifactRegistryCleanupCondition {
  const ArtifactRegistryRepositoryArtifactRegistryCleanupCondition({
    this.tagState,
    this.tagPrefixes,
    this.versionNamePrefixes,
    this.packageNamePrefixes,
    this.olderThan,
    this.newerThan,
  });

  /// Restrict the match to tagged / untagged / any versions. Default
  /// `ANY`.
  final ArtifactRegistryCleanupTagState? tagState;

  /// Match versions whose tag starts with any of these prefixes.
  final List<String>? tagPrefixes;

  /// Match versions whose version name starts with any of these
  /// prefixes.
  final List<String>? versionNamePrefixes;

  /// Match versions whose package name starts with any of these
  /// prefixes.
  final List<String>? packageNamePrefixes;

  /// Match versions older than this duration. Use Go duration syntax
  /// (`'168h'` for 7 days). The provider converts this to a seconds
  /// suffix on the wire.
  final TfArg<String>? olderThan;

  /// Match versions newer than this duration (same syntax as
  /// [olderThan]).
  final TfArg<String>? newerThan;

  Map<String, Object?> toArgMap() => {
    if (tagState != null) 'tag_state': tagState!.terraformValue,
    if (tagPrefixes != null) 'tag_prefixes': tagPrefixes,
    if (versionNamePrefixes != null)
      'version_name_prefixes': versionNamePrefixes,
    if (packageNamePrefixes != null)
      'package_name_prefixes': packageNamePrefixes,
    if (olderThan != null) 'older_than': olderThan!.toTfJson(),
    if (newerThan != null) 'newer_than': newerThan!.toTfJson(),
  };
}

/// `cleanup_policies.most_recent_versions` -- retain the N most recent
/// versions per matched package. Only valid paired with
/// `action == KEEP`.
@immutable
class ArtifactRegistryRepositoryArtifactRegistryCleanupMostRecentVersions {
  const ArtifactRegistryRepositoryArtifactRegistryCleanupMostRecentVersions({
    this.packageNamePrefixes,
    this.keepCount,
  });

  /// Scope the rule to packages whose name starts with any of these
  /// prefixes. Empty / null means "all packages".
  final List<String>? packageNamePrefixes;

  /// Minimum number of versions to retain per package.
  final TfArg<int>? keepCount;

  Map<String, Object?> toArgMap() => {
    if (packageNamePrefixes != null)
      'package_name_prefixes': packageNamePrefixes,
    if (keepCount != null) 'keep_count': keepCount!.toTfJson(),
  };
}

// ===========================================================================
// vulnerability_scanning_config (max_items=1)
// ===========================================================================

/// `vulnerability_scanning_config` block. Controls whether the
/// Container Analysis API auto-scans artifacts pushed to this repo.
/// Only [enablementConfig] is user-settable; [enablementState] and
/// [enablementStateReason] are returned by the API and surface as read
/// getters on the parent class.
@immutable
class ArtifactRegistryRepositoryArtifactRegistryVulnerabilityScanningConfig {
  const ArtifactRegistryRepositoryArtifactRegistryVulnerabilityScanningConfig({
    this.enablementConfig,
  });

  /// User-set scanning toggle. `INHERITED` defers to the project-level
  /// Container Analysis state; `DISABLED` opts this repo out
  /// explicitly.
  final ArtifactRegistryVulnerabilityEnablementConfig? enablementConfig;

  Map<String, Object?> toArgMap() => {
    if (enablementConfig != null)
      'enablement_config': enablementConfig!.terraformValue,
  };
}

/// Factory wrapper for `google_artifact_registry_repository`.
///
/// A repository for storing artifacts
final class GoogleArtifactRegistryRepository extends Resource {
  static const String tfType = 'google_artifact_registry_repository';

  GoogleArtifactRegistryRepository({
    required super.localName,
    required TfArg<String> repositoryId,
    required TfArg<String> format,
    TfArg<ArtifactRegistryMode>? mode,
    TfArg<String>? description,
    TfArg<String>? location,
    TfArg<String>? kmsKeyName,
    TfArg<Map<String, String>>? labels,
    ArtifactRegistryRepositoryArtifactRegistryDockerConfig? dockerConfig,
    ArtifactRegistryRepositoryArtifactRegistryMavenConfig? mavenConfig,
    ArtifactRegistryRepositoryArtifactRegistryVirtualRepositoryConfig?
    virtualRepositoryConfig,
    ArtifactRegistryRepositoryArtifactRegistryRemoteRepositoryConfig?
    remoteRepositoryConfig,
    List<ArtifactRegistryRepositoryArtifactRegistryCleanupPolicy>?
    cleanupPolicies,
    TfArg<bool>? cleanupPolicyDryRun,
    ArtifactRegistryRepositoryArtifactRegistryVulnerabilityScanningConfig?
    vulnerabilityScanningConfig,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'repository_id': repositoryId,
           'format': format,
           if (mode != null) 'mode': mode,
           if (description != null) 'description': description,
           if (location != null) 'location': location,
           if (kmsKeyName != null) 'kms_key_name': kmsKeyName,
           if (labels != null) 'labels': labels,
           if (dockerConfig != null)
             'docker_config': TfArg.literal([dockerConfig.toArgMap()]),
           if (mavenConfig != null)
             'maven_config': TfArg.literal([mavenConfig.toArgMap()]),
           if (virtualRepositoryConfig != null)
             'virtual_repository_config': TfArg.literal([
               virtualRepositoryConfig.toArgMap(),
             ]),
           if (remoteRepositoryConfig != null)
             'remote_repository_config': TfArg.literal([
               remoteRepositoryConfig.toArgMap(),
             ]),
           if (cleanupPolicies != null)
             'cleanup_policies': TfArg.literal(
               cleanupPolicies.map((p) => p.toArgMap()).toList(),
             ),
           if (cleanupPolicyDryRun != null)
             'cleanup_policy_dry_run': cleanupPolicyDryRun,
           if (vulnerabilityScanningConfig != null)
             'vulnerability_scanning_config': TfArg.literal([
               vulnerabilityScanningConfig.toArgMap(),
             ]),
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleArtifactRegistryRepositorySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `registry_uri` attribute.
  TfRef<String> get registryUri =>
      TfRef.attribute<String>(this, 'registry_uri');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `repository_id` attribute (short id; sibling
  /// `*_iam_member` resources consume this as their `repository`
  /// argument).
  TfRef<String> get repositoryIdRef =>
      TfRef.attribute<String>(this, 'repository_id');
}
