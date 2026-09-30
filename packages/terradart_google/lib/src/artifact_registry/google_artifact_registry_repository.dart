// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

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

/// `remote_repository_config.docker_repository.public_repository`.
enum ArtifactRegistryDockerPublicRepository implements TerraformEnum {
  dockerHub('DOCKER_HUB');

  const ArtifactRegistryDockerPublicRepository(this.terraformValue);
  @override
  final String terraformValue;
}

/// `remote_repository_config.maven_repository.public_repository`.
enum ArtifactRegistryMavenPublicRepository implements TerraformEnum {
  mavenCentral('MAVEN_CENTRAL');

  const ArtifactRegistryMavenPublicRepository(this.terraformValue);
  @override
  final String terraformValue;
}

/// `remote_repository_config.npm_repository.public_repository`.
enum ArtifactRegistryNpmPublicRepository implements TerraformEnum {
  npmJs('NPMJS');

  const ArtifactRegistryNpmPublicRepository(this.terraformValue);
  @override
  final String terraformValue;
}

// ===========================================================================
// docker_config (max_items=1)
// ===========================================================================

// ===========================================================================
// maven_config (max_items=1)
// ===========================================================================

// ===========================================================================
// virtual_repository_config (max_items=1)
// ===========================================================================

// ===========================================================================
// remote_repository_config (max_items=1)
// ===========================================================================

// ===========================================================================
// cleanup_policies (set, unbounded, keyed by id)
// ===========================================================================

// ===========================================================================
// vulnerability_scanning_config (max_items=1)
// ===========================================================================

/// At most one of `virtual_repository_config`, `remote_repository_config` on `google_artifact_registry_repository`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.virtualRepositoryConfig(...)`.
sealed class ArtifactRegistryRepositoryConfig {
  const ArtifactRegistryRepositoryConfig();

  /// Sets `virtual_repository_config`.
  const factory ArtifactRegistryRepositoryConfig.virtualRepositoryConfig(
    ArtifactRegistryRepositoryVirtualRepositoryConfig virtualRepositoryConfig,
  ) = ArtifactRegistryRepositoryConfigVirtualRepositoryConfig;

  /// Sets `remote_repository_config`.
  const factory ArtifactRegistryRepositoryConfig.remoteRepositoryConfig(
    ArtifactRegistryRepositoryRemoteRepositoryConfig remoteRepositoryConfig,
  ) = ArtifactRegistryRepositoryConfigRemoteRepositoryConfig;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ArtifactRegistryRepositoryConfig.virtualRepositoryConfig] choice: sets `virtual_repository_config`.
final class ArtifactRegistryRepositoryConfigVirtualRepositoryConfig
    extends ArtifactRegistryRepositoryConfig {
  const ArtifactRegistryRepositoryConfigVirtualRepositoryConfig(
    this.virtualRepositoryConfig,
  );

  final ArtifactRegistryRepositoryVirtualRepositoryConfig
  virtualRepositoryConfig;

  @override
  String get blockKey => 'virtual_repository_config';

  @override
  Map<String, Object?> encode() => {
    'virtual_repository_config': virtualRepositoryConfig.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'virtual_repository_config': TfArg.literal(
      virtualRepositoryConfig.encode(),
    ),
  };
}

/// The [ArtifactRegistryRepositoryConfig.remoteRepositoryConfig] choice: sets `remote_repository_config`.
final class ArtifactRegistryRepositoryConfigRemoteRepositoryConfig
    extends ArtifactRegistryRepositoryConfig {
  const ArtifactRegistryRepositoryConfigRemoteRepositoryConfig(
    this.remoteRepositoryConfig,
  );

  final ArtifactRegistryRepositoryRemoteRepositoryConfig remoteRepositoryConfig;

  @override
  String get blockKey => 'remote_repository_config';

  @override
  Map<String, Object?> encode() => {
    'remote_repository_config': remoteRepositoryConfig.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'remote_repository_config': TfArg.literal(remoteRepositoryConfig.encode()),
  };
}

/// Typed helper for the `cleanup_policies` block of
/// `google_artifact_registry_repository` (derived from provider schema).
@immutable
final class ArtifactRegistryRepositoryCleanupPolicies {
  const ArtifactRegistryRepositoryCleanupPolicies({
    this.action,
    required this.id,
    this.condition,
    this.mostRecentVersions,
  });

  final TfArg<ArtifactRegistryCleanupAction>? action;

  final TfArg<String> id;

  final ArtifactRegistryRepositoryCleanupPoliciesCondition? condition;

  final ArtifactRegistryRepositoryCleanupPoliciesMostRecentVersions?
  mostRecentVersions;

  Map<String, Object?> encode() => {
    'action': ?action?.toTfJson(),
    'id': id.toTfJson(),
    'condition': ?condition?.encode(),
    'most_recent_versions': ?mostRecentVersions?.encode(),
  };
}

/// Typed helper for the `cleanup_policies.condition` block of
/// `google_artifact_registry_repository` (derived from provider schema).
@immutable
final class ArtifactRegistryRepositoryCleanupPoliciesCondition {
  const ArtifactRegistryRepositoryCleanupPoliciesCondition({
    this.newerThan,
    this.olderThan,
    this.packageNamePrefixes,
    this.tagPrefixes,
    this.tagState,
    this.versionNamePrefixes,
  });

  final TfArg<String>? newerThan;

  final TfArg<String>? olderThan;

  final TfArg<List<String>>? packageNamePrefixes;

  final TfArg<List<String>>? tagPrefixes;

  final TfArg<ArtifactRegistryCleanupTagState>? tagState;

  final TfArg<List<String>>? versionNamePrefixes;

  Map<String, Object?> encode() => {
    'newer_than': ?newerThan?.toTfJson(),
    'older_than': ?olderThan?.toTfJson(),
    'package_name_prefixes': ?packageNamePrefixes?.toTfJson(),
    'tag_prefixes': ?tagPrefixes?.toTfJson(),
    'tag_state': ?tagState?.toTfJson(),
    'version_name_prefixes': ?versionNamePrefixes?.toTfJson(),
  };
}

/// Typed helper for the `cleanup_policies.most_recent_versions` block of
/// `google_artifact_registry_repository` (derived from provider schema).
@immutable
final class ArtifactRegistryRepositoryCleanupPoliciesMostRecentVersions {
  const ArtifactRegistryRepositoryCleanupPoliciesMostRecentVersions({
    this.keepCount,
    this.packageNamePrefixes,
  });

  final TfArg<num>? keepCount;

  final TfArg<List<String>>? packageNamePrefixes;

  Map<String, Object?> encode() => {
    'keep_count': ?keepCount?.toTfJson(),
    'package_name_prefixes': ?packageNamePrefixes?.toTfJson(),
  };
}

/// Typed helper for the `docker_config` block of
/// `google_artifact_registry_repository` (derived from provider schema).
@immutable
final class ArtifactRegistryRepositoryDockerConfig {
  const ArtifactRegistryRepositoryDockerConfig({this.immutableTags});

  final TfArg<bool>? immutableTags;

  Map<String, Object?> encode() => {
    'immutable_tags': ?immutableTags?.toTfJson(),
  };
}

/// Typed helper for the `maven_config` block of
/// `google_artifact_registry_repository` (derived from provider schema).
@immutable
final class ArtifactRegistryRepositoryMavenConfig {
  const ArtifactRegistryRepositoryMavenConfig({
    this.allowSnapshotOverwrites,
    this.versionPolicy,
  });

  final TfArg<bool>? allowSnapshotOverwrites;

  final TfArg<ArtifactRegistryMavenVersionPolicy>? versionPolicy;

  Map<String, Object?> encode() => {
    'allow_snapshot_overwrites': ?allowSnapshotOverwrites?.toTfJson(),
    'version_policy': ?versionPolicy?.toTfJson(),
  };
}

/// Typed helper for the `remote_repository_config` block of
/// `google_artifact_registry_repository` (derived from provider schema).
@immutable
final class ArtifactRegistryRepositoryRemoteRepositoryConfig {
  const ArtifactRegistryRepositoryRemoteRepositoryConfig({
    this.description,
    this.disableUpstreamValidation,
    required this.format,
    this.noCache,
    this.upstreamCredentials,
  });

  final TfArg<String>? description;

  final TfArg<bool>? disableUpstreamValidation;

  final ArtifactRegistryRepositoryRemoteRepositoryConfigFormat format;

  final ArtifactRegistryRepositoryRemoteRepositoryConfigNoCache? noCache;

  final ArtifactRegistryRepositoryRemoteRepositoryConfigUpstreamCredentials?
  upstreamCredentials;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'disable_upstream_validation': ?disableUpstreamValidation?.toTfJson(),
    ...format.encode(),
    'no_cache': ?noCache?.encode(),
    'upstream_credentials': ?upstreamCredentials?.encode(),
  };
}

/// Exactly one of `apt_repository`, `docker_repository`, `maven_repository`, `npm_repository`, `python_repository`, `yum_repository`, `common_repository` on the `remote_repository_config` block of `google_artifact_registry_repository`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.aptRepository(...)`.
sealed class ArtifactRegistryRepositoryRemoteRepositoryConfigFormat {
  const ArtifactRegistryRepositoryRemoteRepositoryConfigFormat();

  /// Sets `apt_repository`.
  const factory ArtifactRegistryRepositoryRemoteRepositoryConfigFormat.aptRepository(
    ArtifactRegistryRepositoryRemoteRepositoryConfigAptRepository aptRepository,
  ) = ArtifactRegistryRepositoryRemoteRepositoryConfigFormatAptRepository;

  /// Sets `docker_repository`.
  const factory ArtifactRegistryRepositoryRemoteRepositoryConfigFormat.dockerRepository(
    ArtifactRegistryRepositoryRemoteRepositoryConfigDockerRepository
    dockerRepository,
  ) = ArtifactRegistryRepositoryRemoteRepositoryConfigFormatDockerRepository;

  /// Sets `maven_repository`.
  const factory ArtifactRegistryRepositoryRemoteRepositoryConfigFormat.mavenRepository(
    ArtifactRegistryRepositoryRemoteRepositoryConfigMavenRepository
    mavenRepository,
  ) = ArtifactRegistryRepositoryRemoteRepositoryConfigFormatMavenRepository;

  /// Sets `npm_repository`.
  const factory ArtifactRegistryRepositoryRemoteRepositoryConfigFormat.npmRepository(
    ArtifactRegistryRepositoryRemoteRepositoryConfigNpmRepository npmRepository,
  ) = ArtifactRegistryRepositoryRemoteRepositoryConfigFormatNpmRepository;

  /// Sets `python_repository`.
  const factory ArtifactRegistryRepositoryRemoteRepositoryConfigFormat.pythonRepository(
    ArtifactRegistryRepositoryRemoteRepositoryConfigPythonRepository
    pythonRepository,
  ) = ArtifactRegistryRepositoryRemoteRepositoryConfigFormatPythonRepository;

  /// Sets `yum_repository`.
  const factory ArtifactRegistryRepositoryRemoteRepositoryConfigFormat.yumRepository(
    ArtifactRegistryRepositoryRemoteRepositoryConfigYumRepository yumRepository,
  ) = ArtifactRegistryRepositoryRemoteRepositoryConfigFormatYumRepository;

  /// Sets `common_repository`.
  const factory ArtifactRegistryRepositoryRemoteRepositoryConfigFormat.commonRepository(
    ArtifactRegistryRepositoryRemoteRepositoryConfigCommonRepository
    commonRepository,
  ) = ArtifactRegistryRepositoryRemoteRepositoryConfigFormatCommonRepository;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [ArtifactRegistryRepositoryRemoteRepositoryConfigFormat.aptRepository] choice: sets `apt_repository`.
final class ArtifactRegistryRepositoryRemoteRepositoryConfigFormatAptRepository
    extends ArtifactRegistryRepositoryRemoteRepositoryConfigFormat {
  const ArtifactRegistryRepositoryRemoteRepositoryConfigFormatAptRepository(
    this.aptRepository,
  );

  final ArtifactRegistryRepositoryRemoteRepositoryConfigAptRepository
  aptRepository;

  @override
  String get blockKey => 'apt_repository';

  @override
  Map<String, Object?> encode() => {'apt_repository': aptRepository.encode()};
}

/// The [ArtifactRegistryRepositoryRemoteRepositoryConfigFormat.dockerRepository] choice: sets `docker_repository`.
final class ArtifactRegistryRepositoryRemoteRepositoryConfigFormatDockerRepository
    extends ArtifactRegistryRepositoryRemoteRepositoryConfigFormat {
  const ArtifactRegistryRepositoryRemoteRepositoryConfigFormatDockerRepository(
    this.dockerRepository,
  );

  final ArtifactRegistryRepositoryRemoteRepositoryConfigDockerRepository
  dockerRepository;

  @override
  String get blockKey => 'docker_repository';

  @override
  Map<String, Object?> encode() => {
    'docker_repository': dockerRepository.encode(),
  };
}

/// The [ArtifactRegistryRepositoryRemoteRepositoryConfigFormat.mavenRepository] choice: sets `maven_repository`.
final class ArtifactRegistryRepositoryRemoteRepositoryConfigFormatMavenRepository
    extends ArtifactRegistryRepositoryRemoteRepositoryConfigFormat {
  const ArtifactRegistryRepositoryRemoteRepositoryConfigFormatMavenRepository(
    this.mavenRepository,
  );

  final ArtifactRegistryRepositoryRemoteRepositoryConfigMavenRepository
  mavenRepository;

  @override
  String get blockKey => 'maven_repository';

  @override
  Map<String, Object?> encode() => {
    'maven_repository': mavenRepository.encode(),
  };
}

/// The [ArtifactRegistryRepositoryRemoteRepositoryConfigFormat.npmRepository] choice: sets `npm_repository`.
final class ArtifactRegistryRepositoryRemoteRepositoryConfigFormatNpmRepository
    extends ArtifactRegistryRepositoryRemoteRepositoryConfigFormat {
  const ArtifactRegistryRepositoryRemoteRepositoryConfigFormatNpmRepository(
    this.npmRepository,
  );

  final ArtifactRegistryRepositoryRemoteRepositoryConfigNpmRepository
  npmRepository;

  @override
  String get blockKey => 'npm_repository';

  @override
  Map<String, Object?> encode() => {'npm_repository': npmRepository.encode()};
}

/// The [ArtifactRegistryRepositoryRemoteRepositoryConfigFormat.pythonRepository] choice: sets `python_repository`.
final class ArtifactRegistryRepositoryRemoteRepositoryConfigFormatPythonRepository
    extends ArtifactRegistryRepositoryRemoteRepositoryConfigFormat {
  const ArtifactRegistryRepositoryRemoteRepositoryConfigFormatPythonRepository(
    this.pythonRepository,
  );

  final ArtifactRegistryRepositoryRemoteRepositoryConfigPythonRepository
  pythonRepository;

  @override
  String get blockKey => 'python_repository';

  @override
  Map<String, Object?> encode() => {
    'python_repository': pythonRepository.encode(),
  };
}

/// The [ArtifactRegistryRepositoryRemoteRepositoryConfigFormat.yumRepository] choice: sets `yum_repository`.
final class ArtifactRegistryRepositoryRemoteRepositoryConfigFormatYumRepository
    extends ArtifactRegistryRepositoryRemoteRepositoryConfigFormat {
  const ArtifactRegistryRepositoryRemoteRepositoryConfigFormatYumRepository(
    this.yumRepository,
  );

  final ArtifactRegistryRepositoryRemoteRepositoryConfigYumRepository
  yumRepository;

  @override
  String get blockKey => 'yum_repository';

  @override
  Map<String, Object?> encode() => {'yum_repository': yumRepository.encode()};
}

/// The [ArtifactRegistryRepositoryRemoteRepositoryConfigFormat.commonRepository] choice: sets `common_repository`.
final class ArtifactRegistryRepositoryRemoteRepositoryConfigFormatCommonRepository
    extends ArtifactRegistryRepositoryRemoteRepositoryConfigFormat {
  const ArtifactRegistryRepositoryRemoteRepositoryConfigFormatCommonRepository(
    this.commonRepository,
  );

  final ArtifactRegistryRepositoryRemoteRepositoryConfigCommonRepository
  commonRepository;

  @override
  String get blockKey => 'common_repository';

  @override
  Map<String, Object?> encode() => {
    'common_repository': commonRepository.encode(),
  };
}

/// Typed helper for the `remote_repository_config.apt_repository` block of
/// `google_artifact_registry_repository` (derived from provider schema).
@immutable
final class ArtifactRegistryRepositoryRemoteRepositoryConfigAptRepository {
  const ArtifactRegistryRepositoryRemoteRepositoryConfigAptRepository({
    this.publicRepository,
  });

  final ArtifactRegistryRepositoryRemoteRepositoryConfigAptRepositoryPublicRepository?
  publicRepository;

  Map<String, Object?> encode() => {
    'public_repository': ?publicRepository?.encode(),
  };
}

/// Typed helper for the `remote_repository_config.apt_repository.public_repository` block of
/// `google_artifact_registry_repository` (derived from provider schema).
@immutable
final class ArtifactRegistryRepositoryRemoteRepositoryConfigAptRepositoryPublicRepository {
  const ArtifactRegistryRepositoryRemoteRepositoryConfigAptRepositoryPublicRepository({
    required this.repositoryBase,
    required this.repositoryPath,
  });

  final TfArg<ArtifactRegistryAptRepositoryBase> repositoryBase;

  final TfArg<String> repositoryPath;

  Map<String, Object?> encode() => {
    'repository_base': repositoryBase.toTfJson(),
    'repository_path': repositoryPath.toTfJson(),
  };
}

/// Typed helper for the `remote_repository_config.common_repository` block of
/// `google_artifact_registry_repository` (derived from provider schema).
@immutable
final class ArtifactRegistryRepositoryRemoteRepositoryConfigCommonRepository {
  const ArtifactRegistryRepositoryRemoteRepositoryConfigCommonRepository({
    required this.uri,
  });

  final TfArg<String> uri;

  Map<String, Object?> encode() => {'uri': uri.toTfJson()};
}

/// At most one of `public_repository`, `custom_repository` on the `remote_repository_config.docker_repository` block of `google_artifact_registry_repository`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.publicRepository(...)`.
sealed class ArtifactRegistryRepositoryRemoteRepositoryConfigDockerRepository {
  const ArtifactRegistryRepositoryRemoteRepositoryConfigDockerRepository();

  /// Sets `public_repository`.
  const factory ArtifactRegistryRepositoryRemoteRepositoryConfigDockerRepository.publicRepository(
    TfArg<ArtifactRegistryDockerPublicRepository> publicRepository,
  ) = ArtifactRegistryRepositoryRemoteRepositoryConfigDockerRepositoryPublicRepository;

  /// Sets `custom_repository`.
  const factory ArtifactRegistryRepositoryRemoteRepositoryConfigDockerRepository.customRepository(
    ArtifactRegistryRepositoryRemoteRepositoryConfigDockerRepositoryCustomRepository
    customRepository,
  ) = ArtifactRegistryRepositoryRemoteRepositoryConfigDockerRepositoryCustomRepositoryChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [ArtifactRegistryRepositoryRemoteRepositoryConfigDockerRepository.publicRepository] choice: sets `public_repository`.
final class ArtifactRegistryRepositoryRemoteRepositoryConfigDockerRepositoryPublicRepository
    extends ArtifactRegistryRepositoryRemoteRepositoryConfigDockerRepository {
  const ArtifactRegistryRepositoryRemoteRepositoryConfigDockerRepositoryPublicRepository(
    this.publicRepository,
  );

  final TfArg<ArtifactRegistryDockerPublicRepository> publicRepository;

  @override
  String get blockKey => 'public_repository';

  @override
  Map<String, Object?> encode() => {
    'public_repository': publicRepository.toTfJson(),
  };
}

/// The [ArtifactRegistryRepositoryRemoteRepositoryConfigDockerRepository.customRepository] choice: sets `custom_repository`.
final class ArtifactRegistryRepositoryRemoteRepositoryConfigDockerRepositoryCustomRepositoryChoice
    extends ArtifactRegistryRepositoryRemoteRepositoryConfigDockerRepository {
  const ArtifactRegistryRepositoryRemoteRepositoryConfigDockerRepositoryCustomRepositoryChoice(
    this.customRepository,
  );

  final ArtifactRegistryRepositoryRemoteRepositoryConfigDockerRepositoryCustomRepository
  customRepository;

  @override
  String get blockKey => 'custom_repository';

  @override
  Map<String, Object?> encode() => {
    'custom_repository': customRepository.encode(),
  };
}

/// Typed helper for the `remote_repository_config.docker_repository.custom_repository` block of
/// `google_artifact_registry_repository` (derived from provider schema).
@immutable
final class ArtifactRegistryRepositoryRemoteRepositoryConfigDockerRepositoryCustomRepository {
  const ArtifactRegistryRepositoryRemoteRepositoryConfigDockerRepositoryCustomRepository({
    this.uri,
  });

  final TfArg<String>? uri;

  Map<String, Object?> encode() => {'uri': ?uri?.toTfJson()};
}

/// At most one of `public_repository`, `custom_repository` on the `remote_repository_config.maven_repository` block of `google_artifact_registry_repository`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.publicRepository(...)`.
sealed class ArtifactRegistryRepositoryRemoteRepositoryConfigMavenRepository {
  const ArtifactRegistryRepositoryRemoteRepositoryConfigMavenRepository();

  /// Sets `public_repository`.
  const factory ArtifactRegistryRepositoryRemoteRepositoryConfigMavenRepository.publicRepository(
    TfArg<ArtifactRegistryMavenPublicRepository> publicRepository,
  ) = ArtifactRegistryRepositoryRemoteRepositoryConfigMavenRepositoryPublicRepository;

  /// Sets `custom_repository`.
  const factory ArtifactRegistryRepositoryRemoteRepositoryConfigMavenRepository.customRepository(
    ArtifactRegistryRepositoryRemoteRepositoryConfigMavenRepositoryCustomRepository
    customRepository,
  ) = ArtifactRegistryRepositoryRemoteRepositoryConfigMavenRepositoryCustomRepositoryChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [ArtifactRegistryRepositoryRemoteRepositoryConfigMavenRepository.publicRepository] choice: sets `public_repository`.
final class ArtifactRegistryRepositoryRemoteRepositoryConfigMavenRepositoryPublicRepository
    extends ArtifactRegistryRepositoryRemoteRepositoryConfigMavenRepository {
  const ArtifactRegistryRepositoryRemoteRepositoryConfigMavenRepositoryPublicRepository(
    this.publicRepository,
  );

  final TfArg<ArtifactRegistryMavenPublicRepository> publicRepository;

  @override
  String get blockKey => 'public_repository';

  @override
  Map<String, Object?> encode() => {
    'public_repository': publicRepository.toTfJson(),
  };
}

/// The [ArtifactRegistryRepositoryRemoteRepositoryConfigMavenRepository.customRepository] choice: sets `custom_repository`.
final class ArtifactRegistryRepositoryRemoteRepositoryConfigMavenRepositoryCustomRepositoryChoice
    extends ArtifactRegistryRepositoryRemoteRepositoryConfigMavenRepository {
  const ArtifactRegistryRepositoryRemoteRepositoryConfigMavenRepositoryCustomRepositoryChoice(
    this.customRepository,
  );

  final ArtifactRegistryRepositoryRemoteRepositoryConfigMavenRepositoryCustomRepository
  customRepository;

  @override
  String get blockKey => 'custom_repository';

  @override
  Map<String, Object?> encode() => {
    'custom_repository': customRepository.encode(),
  };
}

/// Typed helper for the `remote_repository_config.maven_repository.custom_repository` block of
/// `google_artifact_registry_repository` (derived from provider schema).
@immutable
final class ArtifactRegistryRepositoryRemoteRepositoryConfigMavenRepositoryCustomRepository {
  const ArtifactRegistryRepositoryRemoteRepositoryConfigMavenRepositoryCustomRepository({
    this.uri,
  });

  final TfArg<String>? uri;

  Map<String, Object?> encode() => {'uri': ?uri?.toTfJson()};
}

/// Typed helper for the `remote_repository_config.no_cache` block of
/// `google_artifact_registry_repository` (derived from provider schema).
@immutable
final class ArtifactRegistryRepositoryRemoteRepositoryConfigNoCache {
  const ArtifactRegistryRepositoryRemoteRepositoryConfigNoCache();

  Map<String, Object?> encode() => {};
}

/// At most one of `public_repository`, `custom_repository` on the `remote_repository_config.npm_repository` block of `google_artifact_registry_repository`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.publicRepository(...)`.
sealed class ArtifactRegistryRepositoryRemoteRepositoryConfigNpmRepository {
  const ArtifactRegistryRepositoryRemoteRepositoryConfigNpmRepository();

  /// Sets `public_repository`.
  const factory ArtifactRegistryRepositoryRemoteRepositoryConfigNpmRepository.publicRepository(
    TfArg<ArtifactRegistryNpmPublicRepository> publicRepository,
  ) = ArtifactRegistryRepositoryRemoteRepositoryConfigNpmRepositoryPublicRepository;

  /// Sets `custom_repository`.
  const factory ArtifactRegistryRepositoryRemoteRepositoryConfigNpmRepository.customRepository(
    ArtifactRegistryRepositoryRemoteRepositoryConfigNpmRepositoryCustomRepository
    customRepository,
  ) = ArtifactRegistryRepositoryRemoteRepositoryConfigNpmRepositoryCustomRepositoryChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [ArtifactRegistryRepositoryRemoteRepositoryConfigNpmRepository.publicRepository] choice: sets `public_repository`.
final class ArtifactRegistryRepositoryRemoteRepositoryConfigNpmRepositoryPublicRepository
    extends ArtifactRegistryRepositoryRemoteRepositoryConfigNpmRepository {
  const ArtifactRegistryRepositoryRemoteRepositoryConfigNpmRepositoryPublicRepository(
    this.publicRepository,
  );

  final TfArg<ArtifactRegistryNpmPublicRepository> publicRepository;

  @override
  String get blockKey => 'public_repository';

  @override
  Map<String, Object?> encode() => {
    'public_repository': publicRepository.toTfJson(),
  };
}

/// The [ArtifactRegistryRepositoryRemoteRepositoryConfigNpmRepository.customRepository] choice: sets `custom_repository`.
final class ArtifactRegistryRepositoryRemoteRepositoryConfigNpmRepositoryCustomRepositoryChoice
    extends ArtifactRegistryRepositoryRemoteRepositoryConfigNpmRepository {
  const ArtifactRegistryRepositoryRemoteRepositoryConfigNpmRepositoryCustomRepositoryChoice(
    this.customRepository,
  );

  final ArtifactRegistryRepositoryRemoteRepositoryConfigNpmRepositoryCustomRepository
  customRepository;

  @override
  String get blockKey => 'custom_repository';

  @override
  Map<String, Object?> encode() => {
    'custom_repository': customRepository.encode(),
  };
}

/// Typed helper for the `remote_repository_config.npm_repository.custom_repository` block of
/// `google_artifact_registry_repository` (derived from provider schema).
@immutable
final class ArtifactRegistryRepositoryRemoteRepositoryConfigNpmRepositoryCustomRepository {
  const ArtifactRegistryRepositoryRemoteRepositoryConfigNpmRepositoryCustomRepository({
    this.uri,
  });

  final TfArg<String>? uri;

  Map<String, Object?> encode() => {'uri': ?uri?.toTfJson()};
}

/// At most one of `public_repository`, `custom_repository` on the `remote_repository_config.python_repository` block of `google_artifact_registry_repository`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.publicRepository(...)`.
sealed class ArtifactRegistryRepositoryRemoteRepositoryConfigPythonRepository {
  const ArtifactRegistryRepositoryRemoteRepositoryConfigPythonRepository();

  /// Sets `public_repository`.
  const factory ArtifactRegistryRepositoryRemoteRepositoryConfigPythonRepository.publicRepository(
    TfArg<String> publicRepository,
  ) = ArtifactRegistryRepositoryRemoteRepositoryConfigPythonRepositoryPublicRepository;

  /// Sets `custom_repository`.
  const factory ArtifactRegistryRepositoryRemoteRepositoryConfigPythonRepository.customRepository(
    ArtifactRegistryRepositoryRemoteRepositoryConfigPythonRepositoryCustomRepository
    customRepository,
  ) = ArtifactRegistryRepositoryRemoteRepositoryConfigPythonRepositoryCustomRepositoryChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [ArtifactRegistryRepositoryRemoteRepositoryConfigPythonRepository.publicRepository] choice: sets `public_repository`.
final class ArtifactRegistryRepositoryRemoteRepositoryConfigPythonRepositoryPublicRepository
    extends ArtifactRegistryRepositoryRemoteRepositoryConfigPythonRepository {
  const ArtifactRegistryRepositoryRemoteRepositoryConfigPythonRepositoryPublicRepository(
    this.publicRepository,
  );

  final TfArg<String> publicRepository;

  @override
  String get blockKey => 'public_repository';

  @override
  Map<String, Object?> encode() => {
    'public_repository': publicRepository.toTfJson(),
  };
}

/// The [ArtifactRegistryRepositoryRemoteRepositoryConfigPythonRepository.customRepository] choice: sets `custom_repository`.
final class ArtifactRegistryRepositoryRemoteRepositoryConfigPythonRepositoryCustomRepositoryChoice
    extends ArtifactRegistryRepositoryRemoteRepositoryConfigPythonRepository {
  const ArtifactRegistryRepositoryRemoteRepositoryConfigPythonRepositoryCustomRepositoryChoice(
    this.customRepository,
  );

  final ArtifactRegistryRepositoryRemoteRepositoryConfigPythonRepositoryCustomRepository
  customRepository;

  @override
  String get blockKey => 'custom_repository';

  @override
  Map<String, Object?> encode() => {
    'custom_repository': customRepository.encode(),
  };
}

/// Typed helper for the `remote_repository_config.python_repository.custom_repository` block of
/// `google_artifact_registry_repository` (derived from provider schema).
@immutable
final class ArtifactRegistryRepositoryRemoteRepositoryConfigPythonRepositoryCustomRepository {
  const ArtifactRegistryRepositoryRemoteRepositoryConfigPythonRepositoryCustomRepository({
    this.uri,
  });

  final TfArg<String>? uri;

  Map<String, Object?> encode() => {'uri': ?uri?.toTfJson()};
}

/// Typed helper for the `remote_repository_config.upstream_credentials` block of
/// `google_artifact_registry_repository` (derived from provider schema).
@immutable
final class ArtifactRegistryRepositoryRemoteRepositoryConfigUpstreamCredentials {
  const ArtifactRegistryRepositoryRemoteRepositoryConfigUpstreamCredentials({
    this.usernamePasswordCredentials,
  });

  final ArtifactRegistryRepositoryRemoteRepositoryConfigUpstreamCredentialsUsernamePasswordCredentials?
  usernamePasswordCredentials;

  Map<String, Object?> encode() => {
    'username_password_credentials': ?usernamePasswordCredentials?.encode(),
  };
}

/// Typed helper for the `remote_repository_config.upstream_credentials.username_password_credentials` block of
/// `google_artifact_registry_repository` (derived from provider schema).
@immutable
final class ArtifactRegistryRepositoryRemoteRepositoryConfigUpstreamCredentialsUsernamePasswordCredentials {
  const ArtifactRegistryRepositoryRemoteRepositoryConfigUpstreamCredentialsUsernamePasswordCredentials({
    this.passwordSecretVersion,
    this.username,
  });

  final TfArg<String>? passwordSecretVersion;

  final TfArg<String>? username;

  Map<String, Object?> encode() => {
    'password_secret_version': ?passwordSecretVersion?.toTfJson(),
    'username': ?username?.toTfJson(),
  };
}

/// Typed helper for the `remote_repository_config.yum_repository` block of
/// `google_artifact_registry_repository` (derived from provider schema).
@immutable
final class ArtifactRegistryRepositoryRemoteRepositoryConfigYumRepository {
  const ArtifactRegistryRepositoryRemoteRepositoryConfigYumRepository({
    this.publicRepository,
  });

  final ArtifactRegistryRepositoryRemoteRepositoryConfigYumRepositoryPublicRepository?
  publicRepository;

  Map<String, Object?> encode() => {
    'public_repository': ?publicRepository?.encode(),
  };
}

/// Typed helper for the `remote_repository_config.yum_repository.public_repository` block of
/// `google_artifact_registry_repository` (derived from provider schema).
@immutable
final class ArtifactRegistryRepositoryRemoteRepositoryConfigYumRepositoryPublicRepository {
  const ArtifactRegistryRepositoryRemoteRepositoryConfigYumRepositoryPublicRepository({
    required this.repositoryBase,
    required this.repositoryPath,
  });

  final TfArg<ArtifactRegistryYumRepositoryBase> repositoryBase;

  final TfArg<String> repositoryPath;

  Map<String, Object?> encode() => {
    'repository_base': repositoryBase.toTfJson(),
    'repository_path': repositoryPath.toTfJson(),
  };
}

/// Typed helper for the `virtual_repository_config` block of
/// `google_artifact_registry_repository` (derived from provider schema).
@immutable
final class ArtifactRegistryRepositoryVirtualRepositoryConfig {
  const ArtifactRegistryRepositoryVirtualRepositoryConfig({
    this.upstreamPolicies,
  });

  final List<ArtifactRegistryRepositoryVirtualRepositoryConfigUpstreamPolicies>?
  upstreamPolicies;

  Map<String, Object?> encode() => {
    if (upstreamPolicies != null)
      'upstream_policies': [for (final e in upstreamPolicies!) e.encode()],
  };
}

/// Typed helper for the `virtual_repository_config.upstream_policies` block of
/// `google_artifact_registry_repository` (derived from provider schema).
@immutable
final class ArtifactRegistryRepositoryVirtualRepositoryConfigUpstreamPolicies {
  const ArtifactRegistryRepositoryVirtualRepositoryConfigUpstreamPolicies({
    this.id,
    this.priority,
    this.repository,
  });

  final TfArg<String>? id;

  final TfArg<num>? priority;

  final TfArg<String>? repository;

  Map<String, Object?> encode() => {
    'id': ?id?.toTfJson(),
    'priority': ?priority?.toTfJson(),
    'repository': ?repository?.toTfJson(),
  };
}

/// Typed helper for the `vulnerability_scanning_config` block of
/// `google_artifact_registry_repository` (derived from provider schema).
@immutable
final class ArtifactRegistryRepositoryVulnerabilityScanningConfig {
  const ArtifactRegistryRepositoryVulnerabilityScanningConfig({
    this.enablementConfig,
  });

  final TfArg<ArtifactRegistryVulnerabilityEnablementConfig>? enablementConfig;

  Map<String, Object?> encode() => {
    'enablement_config': ?enablementConfig?.toTfJson(),
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
    RefTo<GoogleKmsCryptoKey>? kmsKeyName,
    TfArg<Map<String, String>>? labels,
    ArtifactRegistryRepositoryDockerConfig? dockerConfig,
    ArtifactRegistryRepositoryMavenConfig? mavenConfig,
    ArtifactRegistryRepositoryConfig? repositoryConfig,
    List<ArtifactRegistryRepositoryCleanupPolicies>? cleanupPolicies,
    TfArg<bool>? cleanupPolicyDryRun,
    ArtifactRegistryRepositoryVulnerabilityScanningConfig?
    vulnerabilityScanningConfig,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'repository_id': repositoryId,
           'format': format,
           'mode': ?mode,
           'description': ?description,
           'location': ?location,
           'kms_key_name': ?kmsKeyName?.encodeAs('id'),
           'labels': ?labels,
           if (dockerConfig != null)
             'docker_config': TfArg.literal(dockerConfig.encode()),
           if (mavenConfig != null)
             'maven_config': TfArg.literal(mavenConfig.encode()),
           ...?repositoryConfig?.argMap,
           if (cleanupPolicies != null)
             'cleanup_policies': TfArg.literal([
               for (final e in cleanupPolicies) e.encode(),
             ]),
           'cleanup_policy_dry_run': ?cleanupPolicyDryRun,
           if (vulnerabilityScanningConfig != null)
             'vulnerability_scanning_config': TfArg.literal(
               vulnerabilityScanningConfig.encode(),
             ),
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleArtifactRegistryRepositorySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleArtifactRegistryRepository>`.
  RefTo<GoogleArtifactRegistryRepository> get ref => RefTo.of(this);

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
