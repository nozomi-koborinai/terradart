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
  ) = ArtifactRegistryRepositoryVirtualRepositoryConfigChoice;

  /// Sets `remote_repository_config`.
  const factory ArtifactRegistryRepositoryConfig.remoteRepositoryConfig(
    ArtifactRegistryRepositoryRemoteRepositoryConfig remoteRepositoryConfig,
  ) = ArtifactRegistryRepositoryRemoteRepositoryConfigChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ArtifactRegistryRepositoryConfig.virtualRepositoryConfig] choice: sets `virtual_repository_config`.
final class ArtifactRegistryRepositoryVirtualRepositoryConfigChoice
    extends ArtifactRegistryRepositoryConfig {
  const ArtifactRegistryRepositoryVirtualRepositoryConfigChoice(
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
final class ArtifactRegistryRepositoryRemoteRepositoryConfigChoice
    extends ArtifactRegistryRepositoryConfig {
  const ArtifactRegistryRepositoryRemoteRepositoryConfigChoice(
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

  final ArtifactRegistryRepositoryCondition? condition;

  final ArtifactRegistryRepositoryMostRecentVersions? mostRecentVersions;

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
final class ArtifactRegistryRepositoryCondition {
  const ArtifactRegistryRepositoryCondition({
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
final class ArtifactRegistryRepositoryMostRecentVersions {
  const ArtifactRegistryRepositoryMostRecentVersions({
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

  final ArtifactRegistryRepositoryNoCache? noCache;

  final ArtifactRegistryRepositoryUpstreamCredentials? upstreamCredentials;

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
    ArtifactRegistryRepositoryAptRepository aptRepository,
  ) = ArtifactRegistryRepositoryRemoteRepositoryConfigFormatAptRepository;

  /// Sets `docker_repository`.
  const factory ArtifactRegistryRepositoryRemoteRepositoryConfigFormat.dockerRepository(
    ArtifactRegistryRepositoryDockerRepository dockerRepository,
  ) = ArtifactRegistryRepositoryRemoteRepositoryConfigFormatDockerRepository;

  /// Sets `maven_repository`.
  const factory ArtifactRegistryRepositoryRemoteRepositoryConfigFormat.mavenRepository(
    ArtifactRegistryRepositoryMavenRepository mavenRepository,
  ) = ArtifactRegistryRepositoryRemoteRepositoryConfigFormatMavenRepository;

  /// Sets `npm_repository`.
  const factory ArtifactRegistryRepositoryRemoteRepositoryConfigFormat.npmRepository(
    ArtifactRegistryRepositoryNpmRepository npmRepository,
  ) = ArtifactRegistryRepositoryRemoteRepositoryConfigFormatNpmRepository;

  /// Sets `python_repository`.
  const factory ArtifactRegistryRepositoryRemoteRepositoryConfigFormat.pythonRepository(
    ArtifactRegistryRepositoryPythonRepository pythonRepository,
  ) = ArtifactRegistryRepositoryRemoteRepositoryConfigFormatPythonRepository;

  /// Sets `yum_repository`.
  const factory ArtifactRegistryRepositoryRemoteRepositoryConfigFormat.yumRepository(
    ArtifactRegistryRepositoryYumRepository yumRepository,
  ) = ArtifactRegistryRepositoryRemoteRepositoryConfigFormatYumRepository;

  /// Sets `common_repository`.
  const factory ArtifactRegistryRepositoryRemoteRepositoryConfigFormat.commonRepository(
    ArtifactRegistryRepositoryCommonRepository commonRepository,
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

  final ArtifactRegistryRepositoryAptRepository aptRepository;

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

  final ArtifactRegistryRepositoryDockerRepository dockerRepository;

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

  final ArtifactRegistryRepositoryMavenRepository mavenRepository;

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

  final ArtifactRegistryRepositoryNpmRepository npmRepository;

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

  final ArtifactRegistryRepositoryPythonRepository pythonRepository;

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

  final ArtifactRegistryRepositoryYumRepository yumRepository;

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

  final ArtifactRegistryRepositoryCommonRepository commonRepository;

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
final class ArtifactRegistryRepositoryAptRepository {
  const ArtifactRegistryRepositoryAptRepository({this.publicRepository});

  final ArtifactRegistryRepositoryAptRepositoryPublicRepository?
  publicRepository;

  Map<String, Object?> encode() => {
    'public_repository': ?publicRepository?.encode(),
  };
}

/// Typed helper for the `remote_repository_config.apt_repository.public_repository` block of
/// `google_artifact_registry_repository` (derived from provider schema).
@immutable
final class ArtifactRegistryRepositoryAptRepositoryPublicRepository {
  const ArtifactRegistryRepositoryAptRepositoryPublicRepository({
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
final class ArtifactRegistryRepositoryCommonRepository {
  const ArtifactRegistryRepositoryCommonRepository({required this.uri});

  final TfArg<String> uri;

  Map<String, Object?> encode() => {'uri': uri.toTfJson()};
}

/// At most one of `public_repository`, `custom_repository` on the `remote_repository_config.docker_repository` block of `google_artifact_registry_repository`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.publicRepository(...)`.
sealed class ArtifactRegistryRepositoryDockerRepository {
  const ArtifactRegistryRepositoryDockerRepository();

  /// Sets `public_repository`.
  const factory ArtifactRegistryRepositoryDockerRepository.publicRepository(
    TfArg<ArtifactRegistryDockerPublicRepository> publicRepository,
  ) = ArtifactRegistryRepositoryDockerRepositoryPublicRepository;

  /// Sets `custom_repository`.
  const factory ArtifactRegistryRepositoryDockerRepository.customRepository(
    ArtifactRegistryRepositoryCustomRepository customRepository,
  ) = ArtifactRegistryRepositoryDockerRepositoryCustomRepository;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [ArtifactRegistryRepositoryDockerRepository.publicRepository] choice: sets `public_repository`.
final class ArtifactRegistryRepositoryDockerRepositoryPublicRepository
    extends ArtifactRegistryRepositoryDockerRepository {
  const ArtifactRegistryRepositoryDockerRepositoryPublicRepository(
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

/// The [ArtifactRegistryRepositoryDockerRepository.customRepository] choice: sets `custom_repository`.
final class ArtifactRegistryRepositoryDockerRepositoryCustomRepository
    extends ArtifactRegistryRepositoryDockerRepository {
  const ArtifactRegistryRepositoryDockerRepositoryCustomRepository(
    this.customRepository,
  );

  final ArtifactRegistryRepositoryCustomRepository customRepository;

  @override
  String get blockKey => 'custom_repository';

  @override
  Map<String, Object?> encode() => {
    'custom_repository': customRepository.encode(),
  };
}

/// Typed helper for the `remote_repository_config.docker_repository.custom_repository` block of
/// `google_artifact_registry_repository` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ArtifactRegistryRepositoryCustomRepository {
  const ArtifactRegistryRepositoryCustomRepository({this.uri});

  final TfArg<String>? uri;

  Map<String, Object?> encode() => {'uri': ?uri?.toTfJson()};
}

/// At most one of `public_repository`, `custom_repository` on the `remote_repository_config.maven_repository` block of `google_artifact_registry_repository`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.publicRepository(...)`.
sealed class ArtifactRegistryRepositoryMavenRepository {
  const ArtifactRegistryRepositoryMavenRepository();

  /// Sets `public_repository`.
  const factory ArtifactRegistryRepositoryMavenRepository.publicRepository(
    TfArg<ArtifactRegistryMavenPublicRepository> publicRepository,
  ) = ArtifactRegistryRepositoryMavenRepositoryPublicRepository;

  /// Sets `custom_repository`.
  const factory ArtifactRegistryRepositoryMavenRepository.customRepository(
    ArtifactRegistryRepositoryCustomRepository customRepository,
  ) = ArtifactRegistryRepositoryMavenRepositoryCustomRepository;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [ArtifactRegistryRepositoryMavenRepository.publicRepository] choice: sets `public_repository`.
final class ArtifactRegistryRepositoryMavenRepositoryPublicRepository
    extends ArtifactRegistryRepositoryMavenRepository {
  const ArtifactRegistryRepositoryMavenRepositoryPublicRepository(
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

/// The [ArtifactRegistryRepositoryMavenRepository.customRepository] choice: sets `custom_repository`.
final class ArtifactRegistryRepositoryMavenRepositoryCustomRepository
    extends ArtifactRegistryRepositoryMavenRepository {
  const ArtifactRegistryRepositoryMavenRepositoryCustomRepository(
    this.customRepository,
  );

  final ArtifactRegistryRepositoryCustomRepository customRepository;

  @override
  String get blockKey => 'custom_repository';

  @override
  Map<String, Object?> encode() => {
    'custom_repository': customRepository.encode(),
  };
}

/// Typed helper for the `remote_repository_config.no_cache` block of
/// `google_artifact_registry_repository` (derived from provider schema).
@immutable
final class ArtifactRegistryRepositoryNoCache {
  const ArtifactRegistryRepositoryNoCache();

  Map<String, Object?> encode() => {};
}

/// At most one of `public_repository`, `custom_repository` on the `remote_repository_config.npm_repository` block of `google_artifact_registry_repository`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.publicRepository(...)`.
sealed class ArtifactRegistryRepositoryNpmRepository {
  const ArtifactRegistryRepositoryNpmRepository();

  /// Sets `public_repository`.
  const factory ArtifactRegistryRepositoryNpmRepository.publicRepository(
    TfArg<ArtifactRegistryNpmPublicRepository> publicRepository,
  ) = ArtifactRegistryRepositoryNpmRepositoryPublicRepository;

  /// Sets `custom_repository`.
  const factory ArtifactRegistryRepositoryNpmRepository.customRepository(
    ArtifactRegistryRepositoryCustomRepository customRepository,
  ) = ArtifactRegistryRepositoryNpmRepositoryCustomRepository;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [ArtifactRegistryRepositoryNpmRepository.publicRepository] choice: sets `public_repository`.
final class ArtifactRegistryRepositoryNpmRepositoryPublicRepository
    extends ArtifactRegistryRepositoryNpmRepository {
  const ArtifactRegistryRepositoryNpmRepositoryPublicRepository(
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

/// The [ArtifactRegistryRepositoryNpmRepository.customRepository] choice: sets `custom_repository`.
final class ArtifactRegistryRepositoryNpmRepositoryCustomRepository
    extends ArtifactRegistryRepositoryNpmRepository {
  const ArtifactRegistryRepositoryNpmRepositoryCustomRepository(
    this.customRepository,
  );

  final ArtifactRegistryRepositoryCustomRepository customRepository;

  @override
  String get blockKey => 'custom_repository';

  @override
  Map<String, Object?> encode() => {
    'custom_repository': customRepository.encode(),
  };
}

/// At most one of `public_repository`, `custom_repository` on the `remote_repository_config.python_repository` block of `google_artifact_registry_repository`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.publicRepository(...)`.
sealed class ArtifactRegistryRepositoryPythonRepository {
  const ArtifactRegistryRepositoryPythonRepository();

  /// Sets `public_repository`.
  const factory ArtifactRegistryRepositoryPythonRepository.publicRepository(
    TfArg<String> publicRepository,
  ) = ArtifactRegistryRepositoryPythonRepositoryPublicRepository;

  /// Sets `custom_repository`.
  const factory ArtifactRegistryRepositoryPythonRepository.customRepository(
    ArtifactRegistryRepositoryCustomRepository customRepository,
  ) = ArtifactRegistryRepositoryPythonRepositoryCustomRepository;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [ArtifactRegistryRepositoryPythonRepository.publicRepository] choice: sets `public_repository`.
final class ArtifactRegistryRepositoryPythonRepositoryPublicRepository
    extends ArtifactRegistryRepositoryPythonRepository {
  const ArtifactRegistryRepositoryPythonRepositoryPublicRepository(
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

/// The [ArtifactRegistryRepositoryPythonRepository.customRepository] choice: sets `custom_repository`.
final class ArtifactRegistryRepositoryPythonRepositoryCustomRepository
    extends ArtifactRegistryRepositoryPythonRepository {
  const ArtifactRegistryRepositoryPythonRepositoryCustomRepository(
    this.customRepository,
  );

  final ArtifactRegistryRepositoryCustomRepository customRepository;

  @override
  String get blockKey => 'custom_repository';

  @override
  Map<String, Object?> encode() => {
    'custom_repository': customRepository.encode(),
  };
}

/// Typed helper for the `remote_repository_config.upstream_credentials` block of
/// `google_artifact_registry_repository` (derived from provider schema).
@immutable
final class ArtifactRegistryRepositoryUpstreamCredentials {
  const ArtifactRegistryRepositoryUpstreamCredentials({
    this.usernamePasswordCredentials,
  });

  final ArtifactRegistryRepositoryUsernamePasswordCredentials?
  usernamePasswordCredentials;

  Map<String, Object?> encode() => {
    'username_password_credentials': ?usernamePasswordCredentials?.encode(),
  };
}

/// Typed helper for the `remote_repository_config.upstream_credentials.username_password_credentials` block of
/// `google_artifact_registry_repository` (derived from provider schema).
@immutable
final class ArtifactRegistryRepositoryUsernamePasswordCredentials {
  const ArtifactRegistryRepositoryUsernamePasswordCredentials({
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
final class ArtifactRegistryRepositoryYumRepository {
  const ArtifactRegistryRepositoryYumRepository({this.publicRepository});

  final ArtifactRegistryRepositoryYumRepositoryPublicRepository?
  publicRepository;

  Map<String, Object?> encode() => {
    'public_repository': ?publicRepository?.encode(),
  };
}

/// Typed helper for the `remote_repository_config.yum_repository.public_repository` block of
/// `google_artifact_registry_repository` (derived from provider schema).
@immutable
final class ArtifactRegistryRepositoryYumRepositoryPublicRepository {
  const ArtifactRegistryRepositoryYumRepositoryPublicRepository({
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

  final List<ArtifactRegistryRepositoryUpstreamPolicies>? upstreamPolicies;

  Map<String, Object?> encode() => {
    if (upstreamPolicies != null)
      'upstream_policies': [for (final e in upstreamPolicies!) e.encode()],
  };
}

/// Typed helper for the `virtual_repository_config.upstream_policies` block of
/// `google_artifact_registry_repository` (derived from provider schema).
@immutable
final class ArtifactRegistryRepositoryUpstreamPolicies {
  const ArtifactRegistryRepositoryUpstreamPolicies({
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `cleanup_policy_dry_run` attribute.
  TfRef<bool> get cleanupPolicyDryRun =>
      TfRef.attribute<bool>(this, 'cleanup_policy_dry_run');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `format` attribute.
  TfRef<String> get format => TfRef.attribute<String>(this, 'format');

  /// Reference to `kms_key_name` attribute.
  TfRef<String> get kmsKeyName => TfRef.attribute<String>(this, 'kms_key_name');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `mode` attribute.
  TfRef<String> get mode => TfRef.attribute<String>(this, 'mode');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `repository_id` attribute.
  TfRef<String> get repositoryId =>
      TfRef.attribute<String>(this, 'repository_id');
}
