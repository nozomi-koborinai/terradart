// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/google_service_account.dart' show GoogleServiceAccount;
import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;
import '../pubsub/google_pubsub_topic.dart' show GooglePubsubTopic;
import '../storage/google_storage_bucket.dart' show GoogleStorageBucket;

/// Sensitive field paths for `google_cloudbuild_trigger`.
const Set<String> _googleCloudbuildTriggerSensitive = <String>{};

/// `include_build_logs`. Controls whether Cloud Build forwards build
/// logs back to the originating GitHub check-run. Only meaningful for
/// triggers attached to a GitHub source.
enum CloudBuildTriggerIncludeBuildLogs implements TerraformEnum {
  unspecified('INCLUDE_BUILD_LOGS_UNSPECIFIED'),
  withStatus('INCLUDE_BUILD_LOGS_WITH_STATUS');

  const CloudBuildTriggerIncludeBuildLogs(this.terraformValue);
  @override
  final String terraformValue;
}

/// Exactly one of `filename`, `build`, `git_file_source` on `google_cloudbuild_trigger`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.filename(...)`.
sealed class CloudbuildTriggerBuildSpec {
  const CloudbuildTriggerBuildSpec();

  /// Sets `filename`.
  const factory CloudbuildTriggerBuildSpec.filename(TfArg<String> filename) =
      CloudbuildTriggerBuildSpecFilename;

  /// Sets `build`.
  const factory CloudbuildTriggerBuildSpec.build(CloudbuildTriggerBuild build) =
      CloudbuildTriggerBuildSpecBuild;

  /// Sets `git_file_source`.
  const factory CloudbuildTriggerBuildSpec.gitFileSource(
    CloudbuildTriggerGitFileSource gitFileSource,
  ) = CloudbuildTriggerBuildSpecGitFileSource;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [CloudbuildTriggerBuildSpec.filename] choice: sets `filename`.
final class CloudbuildTriggerBuildSpecFilename
    extends CloudbuildTriggerBuildSpec {
  const CloudbuildTriggerBuildSpecFilename(this.filename);

  final TfArg<String> filename;

  @override
  String get blockKey => 'filename';

  @override
  Map<String, Object?> encode() => {'filename': filename.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'filename': filename};
}

/// The [CloudbuildTriggerBuildSpec.build] choice: sets `build`.
final class CloudbuildTriggerBuildSpecBuild extends CloudbuildTriggerBuildSpec {
  const CloudbuildTriggerBuildSpecBuild(this.build);

  final CloudbuildTriggerBuild build;

  @override
  String get blockKey => 'build';

  @override
  Map<String, Object?> encode() => {'build': build.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'build': TfArg.literal(build.encode()),
  };
}

/// The [CloudbuildTriggerBuildSpec.gitFileSource] choice: sets `git_file_source`.
final class CloudbuildTriggerBuildSpecGitFileSource
    extends CloudbuildTriggerBuildSpec {
  const CloudbuildTriggerBuildSpecGitFileSource(this.gitFileSource);

  final CloudbuildTriggerGitFileSource gitFileSource;

  @override
  String get blockKey => 'git_file_source';

  @override
  Map<String, Object?> encode() => {'git_file_source': gitFileSource.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'git_file_source': TfArg.literal(gitFileSource.encode()),
  };
}

/// Typed helper for the `approval_config` block of
/// `google_cloudbuild_trigger` (derived from provider schema).
@immutable
final class CloudbuildTriggerApprovalConfig {
  const CloudbuildTriggerApprovalConfig({this.approvalRequired});

  final TfArg<bool>? approvalRequired;

  Map<String, Object?> encode() => {
    'approval_required': ?approvalRequired?.toTfJson(),
  };
}

/// Typed helper for the `bitbucket_server_trigger_config` block of
/// `google_cloudbuild_trigger` (derived from provider schema).
@immutable
final class CloudbuildTriggerBitbucketServerTriggerConfig {
  const CloudbuildTriggerBitbucketServerTriggerConfig({
    required this.bitbucketServerConfigResource,
    required this.projectKey,
    required this.repoSlug,
    required this.event,
  });

  final TfArg<String> bitbucketServerConfigResource;

  final TfArg<String> projectKey;

  final TfArg<String> repoSlug;

  final CloudbuildTriggerBitbucketServerTriggerConfigEvent event;

  Map<String, Object?> encode() => {
    'bitbucket_server_config_resource': bitbucketServerConfigResource
        .toTfJson(),
    'project_key': projectKey.toTfJson(),
    'repo_slug': repoSlug.toTfJson(),
    ...event.encode(),
  };
}

/// Exactly one of `pull_request`, `push` on the `bitbucket_server_trigger_config` block of `google_cloudbuild_trigger`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.pullRequest(...)`.
sealed class CloudbuildTriggerBitbucketServerTriggerConfigEvent {
  const CloudbuildTriggerBitbucketServerTriggerConfigEvent();

  /// Sets `pull_request`.
  const factory CloudbuildTriggerBitbucketServerTriggerConfigEvent.pullRequest(
    CloudbuildTriggerBitbucketServerTriggerConfigPullRequest pullRequest,
  ) = CloudbuildTriggerBitbucketServerTriggerConfigEventPullRequest;

  /// Sets `push`.
  const factory CloudbuildTriggerBitbucketServerTriggerConfigEvent.push(
    CloudbuildTriggerBitbucketServerTriggerConfigPush push,
  ) = CloudbuildTriggerBitbucketServerTriggerConfigEventPush;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [CloudbuildTriggerBitbucketServerTriggerConfigEvent.pullRequest] choice: sets `pull_request`.
final class CloudbuildTriggerBitbucketServerTriggerConfigEventPullRequest
    extends CloudbuildTriggerBitbucketServerTriggerConfigEvent {
  const CloudbuildTriggerBitbucketServerTriggerConfigEventPullRequest(
    this.pullRequest,
  );

  final CloudbuildTriggerBitbucketServerTriggerConfigPullRequest pullRequest;

  @override
  String get blockKey => 'pull_request';

  @override
  Map<String, Object?> encode() => {'pull_request': pullRequest.encode()};
}

/// The [CloudbuildTriggerBitbucketServerTriggerConfigEvent.push] choice: sets `push`.
final class CloudbuildTriggerBitbucketServerTriggerConfigEventPush
    extends CloudbuildTriggerBitbucketServerTriggerConfigEvent {
  const CloudbuildTriggerBitbucketServerTriggerConfigEventPush(this.push);

  final CloudbuildTriggerBitbucketServerTriggerConfigPush push;

  @override
  String get blockKey => 'push';

  @override
  Map<String, Object?> encode() => {'push': push.encode()};
}

/// Typed helper for the `bitbucket_server_trigger_config.pull_request` block of
/// `google_cloudbuild_trigger` (derived from provider schema).
@immutable
final class CloudbuildTriggerBitbucketServerTriggerConfigPullRequest {
  const CloudbuildTriggerBitbucketServerTriggerConfigPullRequest({
    required this.branch,
    this.commentControl,
    this.invertRegex,
  });

  final TfArg<String> branch;

  final TfArg<
    CloudbuildTriggerBitbucketServerTriggerConfigPullRequestCommentControl
  >?
  commentControl;

  final TfArg<bool>? invertRegex;

  Map<String, Object?> encode() => {
    'branch': branch.toTfJson(),
    'comment_control': ?commentControl?.toTfJson(),
    'invert_regex': ?invertRegex?.toTfJson(),
  };
}

/// `comment_control` — derived from the provider schema description.
enum CloudbuildTriggerBitbucketServerTriggerConfigPullRequestCommentControl
    implements TerraformEnum {
  commentsDisabled('COMMENTS_DISABLED'),
  commentsEnabled('COMMENTS_ENABLED'),
  commentsEnabledForExternalContributorsOnly(
    'COMMENTS_ENABLED_FOR_EXTERNAL_CONTRIBUTORS_ONLY',
  );

  const CloudbuildTriggerBitbucketServerTriggerConfigPullRequestCommentControl(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `bitbucket_server_trigger_config.push` block of
/// `google_cloudbuild_trigger` (derived from provider schema).
@immutable
final class CloudbuildTriggerBitbucketServerTriggerConfigPush {
  const CloudbuildTriggerBitbucketServerTriggerConfigPush({
    required this.revision,
    this.invertRegex,
  });

  final CloudbuildTriggerBitbucketServerTriggerConfigPushRevision revision;

  final TfArg<bool>? invertRegex;

  Map<String, Object?> encode() => {
    ...revision.encode(),
    'invert_regex': ?invertRegex?.toTfJson(),
  };
}

/// Exactly one of `branch`, `tag` on the `bitbucket_server_trigger_config.push` block of `google_cloudbuild_trigger`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.branch(...)`.
sealed class CloudbuildTriggerBitbucketServerTriggerConfigPushRevision {
  const CloudbuildTriggerBitbucketServerTriggerConfigPushRevision();

  /// Sets `branch`.
  const factory CloudbuildTriggerBitbucketServerTriggerConfigPushRevision.branch(
    TfArg<String> branch,
  ) = CloudbuildTriggerBitbucketServerTriggerConfigPushRevisionBranch;

  /// Sets `tag`.
  const factory CloudbuildTriggerBitbucketServerTriggerConfigPushRevision.tag(
    TfArg<String> tag,
  ) = CloudbuildTriggerBitbucketServerTriggerConfigPushRevisionTag;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [CloudbuildTriggerBitbucketServerTriggerConfigPushRevision.branch] choice: sets `branch`.
final class CloudbuildTriggerBitbucketServerTriggerConfigPushRevisionBranch
    extends CloudbuildTriggerBitbucketServerTriggerConfigPushRevision {
  const CloudbuildTriggerBitbucketServerTriggerConfigPushRevisionBranch(
    this.branch,
  );

  final TfArg<String> branch;

  @override
  String get blockKey => 'branch';

  @override
  Map<String, Object?> encode() => {'branch': branch.toTfJson()};
}

/// The [CloudbuildTriggerBitbucketServerTriggerConfigPushRevision.tag] choice: sets `tag`.
final class CloudbuildTriggerBitbucketServerTriggerConfigPushRevisionTag
    extends CloudbuildTriggerBitbucketServerTriggerConfigPushRevision {
  const CloudbuildTriggerBitbucketServerTriggerConfigPushRevisionTag(this.tag);

  final TfArg<String> tag;

  @override
  String get blockKey => 'tag';

  @override
  Map<String, Object?> encode() => {'tag': tag.toTfJson()};
}

/// Typed helper for the `build` block of
/// `google_cloudbuild_trigger` (derived from provider schema).
@immutable
final class CloudbuildTriggerBuild {
  const CloudbuildTriggerBuild({
    this.images,
    this.logsBucket,
    this.queueTtl,
    this.substitutions,
    this.tags,
    this.timeout,
    this.artifacts,
    this.availableSecrets,
    this.options,
    this.secret,
    this.source,
    required this.step,
  });

  final TfArg<List<Object?>>? images;

  final TfArg<String>? logsBucket;

  final TfArg<String>? queueTtl;

  final TfArg<Map<String, String>>? substitutions;

  final TfArg<List<Object?>>? tags;

  final TfArg<String>? timeout;

  final CloudbuildTriggerBuildArtifacts? artifacts;

  final CloudbuildTriggerBuildAvailableSecrets? availableSecrets;

  final CloudbuildTriggerBuildOptions? options;

  final List<CloudbuildTriggerBuildSecret>? secret;

  final CloudbuildTriggerBuildSource? source;

  final List<CloudbuildTriggerBuildStep> step;

  Map<String, Object?> encode() => {
    'images': ?images?.toTfJson(),
    'logs_bucket': ?logsBucket?.toTfJson(),
    'queue_ttl': ?queueTtl?.toTfJson(),
    'substitutions': ?substitutions?.toTfJson(),
    'tags': ?tags?.toTfJson(),
    'timeout': ?timeout?.toTfJson(),
    'artifacts': ?artifacts?.encode(),
    'available_secrets': ?availableSecrets?.encode(),
    'options': ?options?.encode(),
    if (secret != null) 'secret': [for (final e in secret!) e.encode()],
    'source': ?source?.encode(),
    'step': [for (final e in step) e.encode()],
  };
}

/// Typed helper for the `build.artifacts` block of
/// `google_cloudbuild_trigger` (derived from provider schema).
@immutable
final class CloudbuildTriggerBuildArtifacts {
  const CloudbuildTriggerBuildArtifacts({
    this.images,
    this.mavenArtifacts,
    this.npmPackages,
    this.objects,
    this.pythonPackages,
  });

  final TfArg<List<Object?>>? images;

  final List<CloudbuildTriggerBuildArtifactsMavenArtifacts>? mavenArtifacts;

  final List<CloudbuildTriggerBuildArtifactsNpmPackages>? npmPackages;

  final CloudbuildTriggerBuildArtifactsObjects? objects;

  final List<CloudbuildTriggerBuildArtifactsPythonPackages>? pythonPackages;

  Map<String, Object?> encode() => {
    'images': ?images?.toTfJson(),
    if (mavenArtifacts != null)
      'maven_artifacts': [for (final e in mavenArtifacts!) e.encode()],
    if (npmPackages != null)
      'npm_packages': [for (final e in npmPackages!) e.encode()],
    'objects': ?objects?.encode(),
    if (pythonPackages != null)
      'python_packages': [for (final e in pythonPackages!) e.encode()],
  };
}

/// Typed helper for the `build.artifacts.maven_artifacts` block of
/// `google_cloudbuild_trigger` (derived from provider schema).
@immutable
final class CloudbuildTriggerBuildArtifactsMavenArtifacts {
  const CloudbuildTriggerBuildArtifactsMavenArtifacts({
    this.artifactId,
    this.groupId,
    this.path,
    this.repository,
    this.version,
  });

  final TfArg<String>? artifactId;

  final TfArg<String>? groupId;

  final TfArg<String>? path;

  final TfArg<String>? repository;

  final TfArg<String>? version;

  Map<String, Object?> encode() => {
    'artifact_id': ?artifactId?.toTfJson(),
    'group_id': ?groupId?.toTfJson(),
    'path': ?path?.toTfJson(),
    'repository': ?repository?.toTfJson(),
    'version': ?version?.toTfJson(),
  };
}

/// Typed helper for the `build.artifacts.npm_packages` block of
/// `google_cloudbuild_trigger` (derived from provider schema).
@immutable
final class CloudbuildTriggerBuildArtifactsNpmPackages {
  const CloudbuildTriggerBuildArtifactsNpmPackages({
    this.packagePath,
    this.repository,
  });

  final TfArg<String>? packagePath;

  final TfArg<String>? repository;

  Map<String, Object?> encode() => {
    'package_path': ?packagePath?.toTfJson(),
    'repository': ?repository?.toTfJson(),
  };
}

/// Typed helper for the `build.artifacts.objects` block of
/// `google_cloudbuild_trigger` (derived from provider schema).
@immutable
final class CloudbuildTriggerBuildArtifactsObjects {
  const CloudbuildTriggerBuildArtifactsObjects({this.location, this.paths});

  final TfArg<String>? location;

  final TfArg<List<Object?>>? paths;

  Map<String, Object?> encode() => {
    'location': ?location?.toTfJson(),
    'paths': ?paths?.toTfJson(),
  };
}

/// Typed helper for the `build.artifacts.python_packages` block of
/// `google_cloudbuild_trigger` (derived from provider schema).
@immutable
final class CloudbuildTriggerBuildArtifactsPythonPackages {
  const CloudbuildTriggerBuildArtifactsPythonPackages({
    this.paths,
    this.repository,
  });

  final TfArg<List<Object?>>? paths;

  final TfArg<String>? repository;

  Map<String, Object?> encode() => {
    'paths': ?paths?.toTfJson(),
    'repository': ?repository?.toTfJson(),
  };
}

/// Typed helper for the `build.available_secrets` block of
/// `google_cloudbuild_trigger` (derived from provider schema).
@immutable
final class CloudbuildTriggerBuildAvailableSecrets {
  const CloudbuildTriggerBuildAvailableSecrets({required this.secretManager});

  final List<CloudbuildTriggerBuildAvailableSecretsSecretManager> secretManager;

  Map<String, Object?> encode() => {
    'secret_manager': [for (final e in secretManager) e.encode()],
  };
}

/// Typed helper for the `build.available_secrets.secret_manager` block of
/// `google_cloudbuild_trigger` (derived from provider schema).
@immutable
final class CloudbuildTriggerBuildAvailableSecretsSecretManager {
  const CloudbuildTriggerBuildAvailableSecretsSecretManager({
    required this.env,
    required this.versionName,
  });

  final TfArg<String> env;

  final TfArg<String> versionName;

  Map<String, Object?> encode() => {
    'env': env.toTfJson(),
    'version_name': versionName.toTfJson(),
  };
}

/// Typed helper for the `build.options` block of
/// `google_cloudbuild_trigger` (derived from provider schema).
@immutable
final class CloudbuildTriggerBuildOptions {
  const CloudbuildTriggerBuildOptions({
    this.diskSizeGb,
    this.dynamicSubstitutions,
    this.env,
    this.logStreamingOption,
    this.logging,
    this.machineType,
    this.requestedVerifyOption,
    this.secretEnv,
    this.sourceProvenanceHash,
    this.substitutionOption,
    this.workerPool,
    this.volumes,
  });

  final TfArg<num>? diskSizeGb;

  final TfArg<bool>? dynamicSubstitutions;

  final TfArg<List<Object?>>? env;

  final TfArg<CloudbuildTriggerBuildOptionsLogStreamingOption>?
  logStreamingOption;

  final TfArg<CloudbuildTriggerBuildOptionsLogging>? logging;

  final TfArg<String>? machineType;

  final TfArg<CloudbuildTriggerBuildOptionsRequestedVerifyOption>?
  requestedVerifyOption;

  final TfArg<List<Object?>>? secretEnv;

  final List<TfArg<CloudbuildTriggerBuildOptionsSourceProvenanceHash>>?
  sourceProvenanceHash;

  final TfArg<CloudbuildTriggerBuildOptionsSubstitutionOption>?
  substitutionOption;

  final TfArg<String>? workerPool;

  final List<CloudbuildTriggerBuildOptionsVolumes>? volumes;

  Map<String, Object?> encode() => {
    'disk_size_gb': ?diskSizeGb?.toTfJson(),
    'dynamic_substitutions': ?dynamicSubstitutions?.toTfJson(),
    'env': ?env?.toTfJson(),
    'log_streaming_option': ?logStreamingOption?.toTfJson(),
    'logging': ?logging?.toTfJson(),
    'machine_type': ?machineType?.toTfJson(),
    'requested_verify_option': ?requestedVerifyOption?.toTfJson(),
    'secret_env': ?secretEnv?.toTfJson(),
    if (sourceProvenanceHash != null)
      'source_provenance_hash': [
        for (final e in sourceProvenanceHash!) e.toTfJson(),
      ],
    'substitution_option': ?substitutionOption?.toTfJson(),
    'worker_pool': ?workerPool?.toTfJson(),
    if (volumes != null) 'volumes': [for (final e in volumes!) e.encode()],
  };
}

/// `log_streaming_option` — derived from the provider schema description.
enum CloudbuildTriggerBuildOptionsLogStreamingOption implements TerraformEnum {
  streamDefault('STREAM_DEFAULT'),
  streamOn('STREAM_ON'),
  streamOff('STREAM_OFF');

  const CloudbuildTriggerBuildOptionsLogStreamingOption(this.terraformValue);
  @override
  final String terraformValue;
}

/// `logging` — derived from the provider schema description.
enum CloudbuildTriggerBuildOptionsLogging implements TerraformEnum {
  loggingUnspecified('LOGGING_UNSPECIFIED'),
  legacy('LEGACY'),
  gcsOnly('GCS_ONLY'),
  stackdriverOnly('STACKDRIVER_ONLY'),
  cloudLoggingOnly('CLOUD_LOGGING_ONLY'),
  none('NONE');

  const CloudbuildTriggerBuildOptionsLogging(this.terraformValue);
  @override
  final String terraformValue;
}

/// `requested_verify_option` — derived from the provider schema description.
enum CloudbuildTriggerBuildOptionsRequestedVerifyOption
    implements TerraformEnum {
  notVerified('NOT_VERIFIED'),
  verified('VERIFIED');

  const CloudbuildTriggerBuildOptionsRequestedVerifyOption(this.terraformValue);
  @override
  final String terraformValue;
}

/// `source_provenance_hash` — derived from the provider schema description.
enum CloudbuildTriggerBuildOptionsSourceProvenanceHash
    implements TerraformEnum {
  none('NONE'),
  sha256('SHA256'),
  md5('MD5');

  const CloudbuildTriggerBuildOptionsSourceProvenanceHash(this.terraformValue);
  @override
  final String terraformValue;
}

/// `substitution_option` — derived from the provider schema description.
enum CloudbuildTriggerBuildOptionsSubstitutionOption implements TerraformEnum {
  mustMatch('MUST_MATCH'),
  allowLoose('ALLOW_LOOSE');

  const CloudbuildTriggerBuildOptionsSubstitutionOption(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `build.options.volumes` block of
/// `google_cloudbuild_trigger` (derived from provider schema).
@immutable
final class CloudbuildTriggerBuildOptionsVolumes {
  const CloudbuildTriggerBuildOptionsVolumes({this.name, this.path});

  final TfArg<String>? name;

  final TfArg<String>? path;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'path': ?path?.toTfJson(),
  };
}

/// Typed helper for the `build.secret` block of
/// `google_cloudbuild_trigger` (derived from provider schema).
@immutable
final class CloudbuildTriggerBuildSecret {
  const CloudbuildTriggerBuildSecret({
    required this.kmsKeyName,
    this.secretEnv,
  });

  final RefTo<GoogleKmsCryptoKey> kmsKeyName;

  final TfArg<Map<String, String>>? secretEnv;

  Map<String, Object?> encode() => {
    'kms_key_name': kmsKeyName.encodeAs('id').toTfJson(),
    'secret_env': ?secretEnv?.toTfJson(),
  };
}

/// Typed helper for the `build.source` block of
/// `google_cloudbuild_trigger` (derived from provider schema).
@immutable
final class CloudbuildTriggerBuildSource {
  const CloudbuildTriggerBuildSource({this.repoSource, this.storageSource});

  final CloudbuildTriggerBuildSourceRepoSource? repoSource;

  final CloudbuildTriggerBuildSourceStorageSource? storageSource;

  Map<String, Object?> encode() => {
    'repo_source': ?repoSource?.encode(),
    'storage_source': ?storageSource?.encode(),
  };
}

/// Typed helper for the `build.source.repo_source` block of
/// `google_cloudbuild_trigger` (derived from provider schema).
@immutable
final class CloudbuildTriggerBuildSourceRepoSource {
  const CloudbuildTriggerBuildSourceRepoSource({
    required this.revision,
    this.dir,
    this.invertRegex,
    this.projectId,
    required this.repoName,
    this.substitutions,
  });

  final CloudbuildTriggerBuildSourceRepoSourceRevision revision;

  final TfArg<String>? dir;

  final TfArg<bool>? invertRegex;

  final TfArg<String>? projectId;

  final TfArg<String> repoName;

  final TfArg<Map<String, String>>? substitutions;

  Map<String, Object?> encode() => {
    ...revision.encode(),
    'dir': ?dir?.toTfJson(),
    'invert_regex': ?invertRegex?.toTfJson(),
    'project_id': ?projectId?.toTfJson(),
    'repo_name': repoName.toTfJson(),
    'substitutions': ?substitutions?.toTfJson(),
  };
}

/// Exactly one of `branch_name`, `commit_sha`, `tag_name` on the `build.source.repo_source` block of `google_cloudbuild_trigger`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.branchName(...)`.
sealed class CloudbuildTriggerBuildSourceRepoSourceRevision {
  const CloudbuildTriggerBuildSourceRepoSourceRevision();

  /// Sets `branch_name`.
  const factory CloudbuildTriggerBuildSourceRepoSourceRevision.branchName(
    TfArg<String> branchName,
  ) = CloudbuildTriggerBuildSourceRepoSourceRevisionBranchName;

  /// Sets `commit_sha`.
  const factory CloudbuildTriggerBuildSourceRepoSourceRevision.commitSha(
    TfArg<String> commitSha,
  ) = CloudbuildTriggerBuildSourceRepoSourceRevisionCommitSha;

  /// Sets `tag_name`.
  const factory CloudbuildTriggerBuildSourceRepoSourceRevision.tagName(
    TfArg<String> tagName,
  ) = CloudbuildTriggerBuildSourceRepoSourceRevisionTagName;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [CloudbuildTriggerBuildSourceRepoSourceRevision.branchName] choice: sets `branch_name`.
final class CloudbuildTriggerBuildSourceRepoSourceRevisionBranchName
    extends CloudbuildTriggerBuildSourceRepoSourceRevision {
  const CloudbuildTriggerBuildSourceRepoSourceRevisionBranchName(
    this.branchName,
  );

  final TfArg<String> branchName;

  @override
  String get blockKey => 'branch_name';

  @override
  Map<String, Object?> encode() => {'branch_name': branchName.toTfJson()};
}

/// The [CloudbuildTriggerBuildSourceRepoSourceRevision.commitSha] choice: sets `commit_sha`.
final class CloudbuildTriggerBuildSourceRepoSourceRevisionCommitSha
    extends CloudbuildTriggerBuildSourceRepoSourceRevision {
  const CloudbuildTriggerBuildSourceRepoSourceRevisionCommitSha(this.commitSha);

  final TfArg<String> commitSha;

  @override
  String get blockKey => 'commit_sha';

  @override
  Map<String, Object?> encode() => {'commit_sha': commitSha.toTfJson()};
}

/// The [CloudbuildTriggerBuildSourceRepoSourceRevision.tagName] choice: sets `tag_name`.
final class CloudbuildTriggerBuildSourceRepoSourceRevisionTagName
    extends CloudbuildTriggerBuildSourceRepoSourceRevision {
  const CloudbuildTriggerBuildSourceRepoSourceRevisionTagName(this.tagName);

  final TfArg<String> tagName;

  @override
  String get blockKey => 'tag_name';

  @override
  Map<String, Object?> encode() => {'tag_name': tagName.toTfJson()};
}

/// Typed helper for the `build.source.storage_source` block of
/// `google_cloudbuild_trigger` (derived from provider schema).
@immutable
final class CloudbuildTriggerBuildSourceStorageSource {
  const CloudbuildTriggerBuildSourceStorageSource({
    required this.bucket,
    this.generation,
    required this.object,
  });

  final RefTo<GoogleStorageBucket> bucket;

  final TfArg<String>? generation;

  final TfArg<String> object;

  Map<String, Object?> encode() => {
    'bucket': bucket.encodeAs('name').toTfJson(),
    'generation': ?generation?.toTfJson(),
    'object': object.toTfJson(),
  };
}

/// Typed helper for the `build.step` block of
/// `google_cloudbuild_trigger` (derived from provider schema).
@immutable
final class CloudbuildTriggerBuildStep {
  const CloudbuildTriggerBuildStep({
    this.allowExitCodes,
    this.allowFailure,
    this.args,
    this.dir,
    this.entrypoint,
    this.env,
    this.id,
    required this.name,
    this.script,
    this.secretEnv,
    this.timeout,
    this.timing,
    this.waitFor,
    this.volumes,
  });

  final TfArg<List<Object?>>? allowExitCodes;

  final TfArg<bool>? allowFailure;

  final TfArg<List<Object?>>? args;

  final TfArg<String>? dir;

  final TfArg<String>? entrypoint;

  final TfArg<List<Object?>>? env;

  final TfArg<String>? id;

  final TfArg<String> name;

  final TfArg<String>? script;

  final TfArg<List<Object?>>? secretEnv;

  final TfArg<String>? timeout;

  final TfArg<String>? timing;

  final TfArg<List<Object?>>? waitFor;

  final List<CloudbuildTriggerBuildStepVolumes>? volumes;

  Map<String, Object?> encode() => {
    'allow_exit_codes': ?allowExitCodes?.toTfJson(),
    'allow_failure': ?allowFailure?.toTfJson(),
    'args': ?args?.toTfJson(),
    'dir': ?dir?.toTfJson(),
    'entrypoint': ?entrypoint?.toTfJson(),
    'env': ?env?.toTfJson(),
    'id': ?id?.toTfJson(),
    'name': name.toTfJson(),
    'script': ?script?.toTfJson(),
    'secret_env': ?secretEnv?.toTfJson(),
    'timeout': ?timeout?.toTfJson(),
    'timing': ?timing?.toTfJson(),
    'wait_for': ?waitFor?.toTfJson(),
    if (volumes != null) 'volumes': [for (final e in volumes!) e.encode()],
  };
}

/// Typed helper for the `build.step.volumes` block of
/// `google_cloudbuild_trigger` (derived from provider schema).
@immutable
final class CloudbuildTriggerBuildStepVolumes {
  const CloudbuildTriggerBuildStepVolumes({
    required this.name,
    required this.path,
  });

  final TfArg<String> name;

  final TfArg<String> path;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'path': path.toTfJson(),
  };
}

/// Typed helper for the `developer_connect_event_config` block of
/// `google_cloudbuild_trigger` (derived from provider schema).
@immutable
final class CloudbuildTriggerDeveloperConnectEventConfig {
  const CloudbuildTriggerDeveloperConnectEventConfig({
    required this.gitRepositoryLink,
    this.pullRequest,
    this.push,
  });

  final TfArg<String> gitRepositoryLink;

  final CloudbuildTriggerDeveloperConnectEventConfigPullRequest? pullRequest;

  final CloudbuildTriggerDeveloperConnectEventConfigPush? push;

  Map<String, Object?> encode() => {
    'git_repository_link': gitRepositoryLink.toTfJson(),
    'pull_request': ?pullRequest?.encode(),
    'push': ?push?.encode(),
  };
}

/// Typed helper for the `developer_connect_event_config.pull_request` block of
/// `google_cloudbuild_trigger` (derived from provider schema).
@immutable
final class CloudbuildTriggerDeveloperConnectEventConfigPullRequest {
  const CloudbuildTriggerDeveloperConnectEventConfigPullRequest({
    this.branch,
    this.commentControl,
    this.invertRegex,
  });

  final TfArg<String>? branch;

  final TfArg<
    CloudbuildTriggerDeveloperConnectEventConfigPullRequestCommentControl
  >?
  commentControl;

  final TfArg<bool>? invertRegex;

  Map<String, Object?> encode() => {
    'branch': ?branch?.toTfJson(),
    'comment_control': ?commentControl?.toTfJson(),
    'invert_regex': ?invertRegex?.toTfJson(),
  };
}

/// `comment_control` — derived from the provider schema description.
enum CloudbuildTriggerDeveloperConnectEventConfigPullRequestCommentControl
    implements TerraformEnum {
  commentsDisabled('COMMENTS_DISABLED'),
  commentsEnabled('COMMENTS_ENABLED'),
  commentsEnabledForExternalContributorsOnly(
    'COMMENTS_ENABLED_FOR_EXTERNAL_CONTRIBUTORS_ONLY',
  );

  const CloudbuildTriggerDeveloperConnectEventConfigPullRequestCommentControl(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `developer_connect_event_config.push` block of
/// `google_cloudbuild_trigger` (derived from provider schema).
@immutable
final class CloudbuildTriggerDeveloperConnectEventConfigPush {
  const CloudbuildTriggerDeveloperConnectEventConfigPush({
    this.branch,
    this.invertRegex,
    this.tag,
  });

  final TfArg<String>? branch;

  final TfArg<bool>? invertRegex;

  final TfArg<String>? tag;

  Map<String, Object?> encode() => {
    'branch': ?branch?.toTfJson(),
    'invert_regex': ?invertRegex?.toTfJson(),
    'tag': ?tag?.toTfJson(),
  };
}

/// Typed helper for the `git_file_source` block of
/// `google_cloudbuild_trigger` (derived from provider schema).
@immutable
final class CloudbuildTriggerGitFileSource {
  const CloudbuildTriggerGitFileSource({
    this.bitbucketServerConfig,
    this.githubEnterpriseConfig,
    required this.path,
    required this.repoType,
    this.repository,
    this.revision,
    this.uri,
  });

  final TfArg<String>? bitbucketServerConfig;

  final TfArg<String>? githubEnterpriseConfig;

  final TfArg<String> path;

  final TfArg<CloudbuildTriggerGitFileSourceRepoType> repoType;

  final TfArg<String>? repository;

  final TfArg<String>? revision;

  final TfArg<String>? uri;

  Map<String, Object?> encode() => {
    'bitbucket_server_config': ?bitbucketServerConfig?.toTfJson(),
    'github_enterprise_config': ?githubEnterpriseConfig?.toTfJson(),
    'path': path.toTfJson(),
    'repo_type': repoType.toTfJson(),
    'repository': ?repository?.toTfJson(),
    'revision': ?revision?.toTfJson(),
    'uri': ?uri?.toTfJson(),
  };
}

/// `repo_type` — derived from the provider schema description.
enum CloudbuildTriggerGitFileSourceRepoType implements TerraformEnum {
  unknown('UNKNOWN'),
  cloudSourceRepositories('CLOUD_SOURCE_REPOSITORIES'),
  github('GITHUB'),
  bitbucketServer('BITBUCKET_SERVER');

  const CloudbuildTriggerGitFileSourceRepoType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `github` block of
/// `google_cloudbuild_trigger` (derived from provider schema).
@immutable
final class CloudbuildTriggerGithub {
  const CloudbuildTriggerGithub({
    this.enterpriseConfigResourceName,
    this.name,
    this.owner,
    required this.event,
  });

  final TfArg<String>? enterpriseConfigResourceName;

  final TfArg<String>? name;

  final TfArg<String>? owner;

  final CloudbuildTriggerGithubEvent event;

  Map<String, Object?> encode() => {
    'enterprise_config_resource_name': ?enterpriseConfigResourceName
        ?.toTfJson(),
    'name': ?name?.toTfJson(),
    'owner': ?owner?.toTfJson(),
    ...event.encode(),
  };
}

/// Exactly one of `pull_request`, `push` on the `github` block of `google_cloudbuild_trigger`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.pullRequest(...)`.
sealed class CloudbuildTriggerGithubEvent {
  const CloudbuildTriggerGithubEvent();

  /// Sets `pull_request`.
  const factory CloudbuildTriggerGithubEvent.pullRequest(
    CloudbuildTriggerGithubPullRequest pullRequest,
  ) = CloudbuildTriggerGithubEventPullRequest;

  /// Sets `push`.
  const factory CloudbuildTriggerGithubEvent.push(
    CloudbuildTriggerGithubPush push,
  ) = CloudbuildTriggerGithubEventPush;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [CloudbuildTriggerGithubEvent.pullRequest] choice: sets `pull_request`.
final class CloudbuildTriggerGithubEventPullRequest
    extends CloudbuildTriggerGithubEvent {
  const CloudbuildTriggerGithubEventPullRequest(this.pullRequest);

  final CloudbuildTriggerGithubPullRequest pullRequest;

  @override
  String get blockKey => 'pull_request';

  @override
  Map<String, Object?> encode() => {'pull_request': pullRequest.encode()};
}

/// The [CloudbuildTriggerGithubEvent.push] choice: sets `push`.
final class CloudbuildTriggerGithubEventPush
    extends CloudbuildTriggerGithubEvent {
  const CloudbuildTriggerGithubEventPush(this.push);

  final CloudbuildTriggerGithubPush push;

  @override
  String get blockKey => 'push';

  @override
  Map<String, Object?> encode() => {'push': push.encode()};
}

/// Typed helper for the `github.pull_request` block of
/// `google_cloudbuild_trigger` (derived from provider schema).
@immutable
final class CloudbuildTriggerGithubPullRequest {
  const CloudbuildTriggerGithubPullRequest({
    required this.branch,
    this.commentControl,
    this.invertRegex,
  });

  final TfArg<String> branch;

  final TfArg<CloudbuildTriggerGithubPullRequestCommentControl>? commentControl;

  final TfArg<bool>? invertRegex;

  Map<String, Object?> encode() => {
    'branch': branch.toTfJson(),
    'comment_control': ?commentControl?.toTfJson(),
    'invert_regex': ?invertRegex?.toTfJson(),
  };
}

/// `comment_control` — derived from the provider schema description.
enum CloudbuildTriggerGithubPullRequestCommentControl implements TerraformEnum {
  commentsDisabled('COMMENTS_DISABLED'),
  commentsEnabled('COMMENTS_ENABLED'),
  commentsEnabledForExternalContributorsOnly(
    'COMMENTS_ENABLED_FOR_EXTERNAL_CONTRIBUTORS_ONLY',
  );

  const CloudbuildTriggerGithubPullRequestCommentControl(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `github.push` block of
/// `google_cloudbuild_trigger` (derived from provider schema).
@immutable
final class CloudbuildTriggerGithubPush {
  const CloudbuildTriggerGithubPush({required this.revision, this.invertRegex});

  final CloudbuildTriggerGithubPushRevision revision;

  final TfArg<bool>? invertRegex;

  Map<String, Object?> encode() => {
    ...revision.encode(),
    'invert_regex': ?invertRegex?.toTfJson(),
  };
}

/// Exactly one of `branch`, `tag` on the `github.push` block of `google_cloudbuild_trigger`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.branch(...)`.
sealed class CloudbuildTriggerGithubPushRevision {
  const CloudbuildTriggerGithubPushRevision();

  /// Sets `branch`.
  const factory CloudbuildTriggerGithubPushRevision.branch(
    TfArg<String> branch,
  ) = CloudbuildTriggerGithubPushRevisionBranch;

  /// Sets `tag`.
  const factory CloudbuildTriggerGithubPushRevision.tag(TfArg<String> tag) =
      CloudbuildTriggerGithubPushRevisionTag;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [CloudbuildTriggerGithubPushRevision.branch] choice: sets `branch`.
final class CloudbuildTriggerGithubPushRevisionBranch
    extends CloudbuildTriggerGithubPushRevision {
  const CloudbuildTriggerGithubPushRevisionBranch(this.branch);

  final TfArg<String> branch;

  @override
  String get blockKey => 'branch';

  @override
  Map<String, Object?> encode() => {'branch': branch.toTfJson()};
}

/// The [CloudbuildTriggerGithubPushRevision.tag] choice: sets `tag`.
final class CloudbuildTriggerGithubPushRevisionTag
    extends CloudbuildTriggerGithubPushRevision {
  const CloudbuildTriggerGithubPushRevisionTag(this.tag);

  final TfArg<String> tag;

  @override
  String get blockKey => 'tag';

  @override
  Map<String, Object?> encode() => {'tag': tag.toTfJson()};
}

/// Typed helper for the `pubsub_config` block of
/// `google_cloudbuild_trigger` (derived from provider schema).
@immutable
final class CloudbuildTriggerPubsubConfig {
  const CloudbuildTriggerPubsubConfig({
    this.serviceAccountEmail,
    required this.topic,
  });

  final RefTo<GoogleServiceAccount>? serviceAccountEmail;

  final RefTo<GooglePubsubTopic> topic;

  Map<String, Object?> encode() => {
    'service_account_email': ?serviceAccountEmail?.encodeAs('email').toTfJson(),
    'topic': topic.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `repository_event_config` block of
/// `google_cloudbuild_trigger` (derived from provider schema).
@immutable
final class CloudbuildTriggerRepositoryEventConfig {
  const CloudbuildTriggerRepositoryEventConfig({
    this.repository,
    required this.event,
  });

  final TfArg<String>? repository;

  final CloudbuildTriggerRepositoryEventConfigEvent event;

  Map<String, Object?> encode() => {
    'repository': ?repository?.toTfJson(),
    ...event.encode(),
  };
}

/// Exactly one of `pull_request`, `push` on the `repository_event_config` block of `google_cloudbuild_trigger`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.pullRequest(...)`.
sealed class CloudbuildTriggerRepositoryEventConfigEvent {
  const CloudbuildTriggerRepositoryEventConfigEvent();

  /// Sets `pull_request`.
  const factory CloudbuildTriggerRepositoryEventConfigEvent.pullRequest(
    CloudbuildTriggerRepositoryEventConfigPullRequest pullRequest,
  ) = CloudbuildTriggerRepositoryEventConfigEventPullRequest;

  /// Sets `push`.
  const factory CloudbuildTriggerRepositoryEventConfigEvent.push(
    CloudbuildTriggerRepositoryEventConfigPush push,
  ) = CloudbuildTriggerRepositoryEventConfigEventPush;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [CloudbuildTriggerRepositoryEventConfigEvent.pullRequest] choice: sets `pull_request`.
final class CloudbuildTriggerRepositoryEventConfigEventPullRequest
    extends CloudbuildTriggerRepositoryEventConfigEvent {
  const CloudbuildTriggerRepositoryEventConfigEventPullRequest(
    this.pullRequest,
  );

  final CloudbuildTriggerRepositoryEventConfigPullRequest pullRequest;

  @override
  String get blockKey => 'pull_request';

  @override
  Map<String, Object?> encode() => {'pull_request': pullRequest.encode()};
}

/// The [CloudbuildTriggerRepositoryEventConfigEvent.push] choice: sets `push`.
final class CloudbuildTriggerRepositoryEventConfigEventPush
    extends CloudbuildTriggerRepositoryEventConfigEvent {
  const CloudbuildTriggerRepositoryEventConfigEventPush(this.push);

  final CloudbuildTriggerRepositoryEventConfigPush push;

  @override
  String get blockKey => 'push';

  @override
  Map<String, Object?> encode() => {'push': push.encode()};
}

/// Typed helper for the `repository_event_config.pull_request` block of
/// `google_cloudbuild_trigger` (derived from provider schema).
@immutable
final class CloudbuildTriggerRepositoryEventConfigPullRequest {
  const CloudbuildTriggerRepositoryEventConfigPullRequest({
    this.branch,
    this.commentControl,
    this.invertRegex,
  });

  final TfArg<String>? branch;

  final TfArg<CloudbuildTriggerRepositoryEventConfigPullRequestCommentControl>?
  commentControl;

  final TfArg<bool>? invertRegex;

  Map<String, Object?> encode() => {
    'branch': ?branch?.toTfJson(),
    'comment_control': ?commentControl?.toTfJson(),
    'invert_regex': ?invertRegex?.toTfJson(),
  };
}

/// `comment_control` — derived from the provider schema description.
enum CloudbuildTriggerRepositoryEventConfigPullRequestCommentControl
    implements TerraformEnum {
  commentsDisabled('COMMENTS_DISABLED'),
  commentsEnabled('COMMENTS_ENABLED'),
  commentsEnabledForExternalContributorsOnly(
    'COMMENTS_ENABLED_FOR_EXTERNAL_CONTRIBUTORS_ONLY',
  );

  const CloudbuildTriggerRepositoryEventConfigPullRequestCommentControl(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `repository_event_config.push` block of
/// `google_cloudbuild_trigger` (derived from provider schema).
@immutable
final class CloudbuildTriggerRepositoryEventConfigPush {
  const CloudbuildTriggerRepositoryEventConfigPush({
    required this.revision,
    this.invertRegex,
  });

  final CloudbuildTriggerRepositoryEventConfigPushRevision revision;

  final TfArg<bool>? invertRegex;

  Map<String, Object?> encode() => {
    ...revision.encode(),
    'invert_regex': ?invertRegex?.toTfJson(),
  };
}

/// Exactly one of `branch`, `tag` on the `repository_event_config.push` block of `google_cloudbuild_trigger`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.branch(...)`.
sealed class CloudbuildTriggerRepositoryEventConfigPushRevision {
  const CloudbuildTriggerRepositoryEventConfigPushRevision();

  /// Sets `branch`.
  const factory CloudbuildTriggerRepositoryEventConfigPushRevision.branch(
    TfArg<String> branch,
  ) = CloudbuildTriggerRepositoryEventConfigPushRevisionBranch;

  /// Sets `tag`.
  const factory CloudbuildTriggerRepositoryEventConfigPushRevision.tag(
    TfArg<String> tag,
  ) = CloudbuildTriggerRepositoryEventConfigPushRevisionTag;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [CloudbuildTriggerRepositoryEventConfigPushRevision.branch] choice: sets `branch`.
final class CloudbuildTriggerRepositoryEventConfigPushRevisionBranch
    extends CloudbuildTriggerRepositoryEventConfigPushRevision {
  const CloudbuildTriggerRepositoryEventConfigPushRevisionBranch(this.branch);

  final TfArg<String> branch;

  @override
  String get blockKey => 'branch';

  @override
  Map<String, Object?> encode() => {'branch': branch.toTfJson()};
}

/// The [CloudbuildTriggerRepositoryEventConfigPushRevision.tag] choice: sets `tag`.
final class CloudbuildTriggerRepositoryEventConfigPushRevisionTag
    extends CloudbuildTriggerRepositoryEventConfigPushRevision {
  const CloudbuildTriggerRepositoryEventConfigPushRevisionTag(this.tag);

  final TfArg<String> tag;

  @override
  String get blockKey => 'tag';

  @override
  Map<String, Object?> encode() => {'tag': tag.toTfJson()};
}

/// Typed helper for the `source_to_build` block of
/// `google_cloudbuild_trigger` (derived from provider schema).
@immutable
final class CloudbuildTriggerSourceToBuild {
  const CloudbuildTriggerSourceToBuild({
    this.bitbucketServerConfig,
    this.githubEnterpriseConfig,
    required this.ref,
    required this.repoType,
    this.repository,
    this.uri,
  });

  final TfArg<String>? bitbucketServerConfig;

  final TfArg<String>? githubEnterpriseConfig;

  final TfArg<String> ref;

  final TfArg<CloudbuildTriggerSourceToBuildRepoType> repoType;

  final TfArg<String>? repository;

  final TfArg<String>? uri;

  Map<String, Object?> encode() => {
    'bitbucket_server_config': ?bitbucketServerConfig?.toTfJson(),
    'github_enterprise_config': ?githubEnterpriseConfig?.toTfJson(),
    'ref': ref.toTfJson(),
    'repo_type': repoType.toTfJson(),
    'repository': ?repository?.toTfJson(),
    'uri': ?uri?.toTfJson(),
  };
}

/// `repo_type` — derived from the provider schema description.
enum CloudbuildTriggerSourceToBuildRepoType implements TerraformEnum {
  unknown('UNKNOWN'),
  cloudSourceRepositories('CLOUD_SOURCE_REPOSITORIES'),
  github('GITHUB'),
  bitbucketServer('BITBUCKET_SERVER');

  const CloudbuildTriggerSourceToBuildRepoType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `trigger_template` block of
/// `google_cloudbuild_trigger` (derived from provider schema).
@immutable
final class CloudbuildTriggerTriggerTemplate {
  const CloudbuildTriggerTriggerTemplate({
    required this.revision,
    this.dir,
    this.invertRegex,
    this.projectId,
    this.repoName,
  });

  final CloudbuildTriggerTriggerTemplateRevision revision;

  final TfArg<String>? dir;

  final TfArg<bool>? invertRegex;

  final TfArg<String>? projectId;

  final TfArg<String>? repoName;

  Map<String, Object?> encode() => {
    ...revision.encode(),
    'dir': ?dir?.toTfJson(),
    'invert_regex': ?invertRegex?.toTfJson(),
    'project_id': ?projectId?.toTfJson(),
    'repo_name': ?repoName?.toTfJson(),
  };
}

/// Exactly one of `branch_name`, `tag_name`, `commit_sha` on the `trigger_template` block of `google_cloudbuild_trigger`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.branchName(...)`.
sealed class CloudbuildTriggerTriggerTemplateRevision {
  const CloudbuildTriggerTriggerTemplateRevision();

  /// Sets `branch_name`.
  const factory CloudbuildTriggerTriggerTemplateRevision.branchName(
    TfArg<String> branchName,
  ) = CloudbuildTriggerTriggerTemplateRevisionBranchName;

  /// Sets `tag_name`.
  const factory CloudbuildTriggerTriggerTemplateRevision.tagName(
    TfArg<String> tagName,
  ) = CloudbuildTriggerTriggerTemplateRevisionTagName;

  /// Sets `commit_sha`.
  const factory CloudbuildTriggerTriggerTemplateRevision.commitSha(
    TfArg<String> commitSha,
  ) = CloudbuildTriggerTriggerTemplateRevisionCommitSha;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [CloudbuildTriggerTriggerTemplateRevision.branchName] choice: sets `branch_name`.
final class CloudbuildTriggerTriggerTemplateRevisionBranchName
    extends CloudbuildTriggerTriggerTemplateRevision {
  const CloudbuildTriggerTriggerTemplateRevisionBranchName(this.branchName);

  final TfArg<String> branchName;

  @override
  String get blockKey => 'branch_name';

  @override
  Map<String, Object?> encode() => {'branch_name': branchName.toTfJson()};
}

/// The [CloudbuildTriggerTriggerTemplateRevision.tagName] choice: sets `tag_name`.
final class CloudbuildTriggerTriggerTemplateRevisionTagName
    extends CloudbuildTriggerTriggerTemplateRevision {
  const CloudbuildTriggerTriggerTemplateRevisionTagName(this.tagName);

  final TfArg<String> tagName;

  @override
  String get blockKey => 'tag_name';

  @override
  Map<String, Object?> encode() => {'tag_name': tagName.toTfJson()};
}

/// The [CloudbuildTriggerTriggerTemplateRevision.commitSha] choice: sets `commit_sha`.
final class CloudbuildTriggerTriggerTemplateRevisionCommitSha
    extends CloudbuildTriggerTriggerTemplateRevision {
  const CloudbuildTriggerTriggerTemplateRevisionCommitSha(this.commitSha);

  final TfArg<String> commitSha;

  @override
  String get blockKey => 'commit_sha';

  @override
  Map<String, Object?> encode() => {'commit_sha': commitSha.toTfJson()};
}

/// Typed helper for the `webhook_config` block of
/// `google_cloudbuild_trigger` (derived from provider schema).
@immutable
final class CloudbuildTriggerWebhookConfig {
  const CloudbuildTriggerWebhookConfig({required this.secret});

  final TfArg<String> secret;

  Map<String, Object?> encode() => {'secret': secret.toTfJson()};
}

/// Factory wrapper for `google_cloudbuild_trigger`.
///
/// Configuration for an automated build in response to source repository
/// changes.
///
/// The resource has **two competing repository-connection forms** that
/// callers must pick between:
///
/// 1. **v1 (legacy)** — point the trigger at a GitHub App / Bitbucket
///    Server installation directly via the inline [github] or
///    [bitbucketServerTriggerConfig] block. The trigger watches the SCM
///    webhook delivered through the legacy Cloud Build first-party
///    integration. Recommended only for installs that pre-date the
///    second-generation connection (i.e. existing GitHub App users).
/// 2. **v2 (modern, 2024+)** — supply [repositoryEventConfig] referring
///    to a `cloudbuildv2_repository` (which in turn pins a
///    `cloudbuildv2_connection`). The v2 form supports the full matrix
///    of providers — GitHub, GitHub Enterprise, GitLab Self-Managed,
///    Bitbucket Data Center, Bitbucket Cloud — through a single uniform
///    Repo API surface. Recommended for new builds.
///
/// Each trigger picks exactly one of: [github] / [bitbucketServerTriggerConfig]
/// / [repositoryEventConfig] / [developerConnectEventConfig] /
/// [pubsubConfig] / [webhookConfig] / [triggerTemplate] / [sourceToBuild].
/// The first six wire up an event source; [triggerTemplate] is the
/// legacy Cloud Source Repositories form; [sourceToBuild] declares a
/// manual / Pub/Sub / Webhook-invoked build's source explicitly.
///
/// Build content is the required [CloudbuildTriggerBuildSpec] `buildSpec`
/// argument, one of:
/// - `.filename(...)` — path to an in-repo `cloudbuild.yaml`. Use with
///   [triggerTemplate], [github] or [repositoryEventConfig].
/// - `.gitFileSource(...)` — fetch the build config from an arbitrary
///   repo / ref. Use with Pub/Sub, Webhook, Manual, or v2 triggers.
/// - `.build(...)` — inline build steps + options.
///
/// Optional but commonly set:
/// - `location`: Cloud Build region (e.g. `'asia-northeast1'`).
///   Defaults to `'global'`. Repository-event triggers MUST live in the
///   same region as their `cloudbuildv2_repository`.
/// - `name`: trigger name (must be unique within the project). When
///   omitted the API assigns one.
/// - `serviceAccount`: the service account the build runs as. When
///   `null` the legacy `[PROJECT_NUM]@cloudbuild.gserviceaccount.com`
///   SA is used.
///
/// ### Example 1 — v1 form (GitHub App push to `main`, runs in-repo
/// `cloudbuild.yaml`):
/// ```dart
/// final pushTrigger = GoogleCloudbuildTrigger(
///   localName: 'push_main',
///   name: .literal('push-main'),
///   location: .literal('asia-northeast1'),
///   buildSpec: .filename(.literal('cloudbuild.yaml')),
///   github: CloudbuildTriggerGithub(
///     owner: .literal('myorg'),
///     name: .literal('my-repo'),
///     event: .push(
///       CloudbuildTriggerGithubPush(revision: .branch(.literal(r'^main$'))),
///     ),
///   ),
/// );
/// ```
///
/// ### Example 2 — v2 form (pull-request gate against a
/// `cloudbuildv2_repository`):
/// ```dart
/// final prTrigger = GoogleCloudbuildTrigger(
///   localName: 'pr_gate',
///   name: .literal('pr-gate'),
///   location: .literal('asia-northeast1'),
///   serviceAccount: .of(runner),
///   buildSpec: .filename(.literal('cloudbuild.yaml')),
///   repositoryEventConfig: CloudbuildTriggerRepositoryEventConfig(
///     repository: .ref(repository.id),
///     event: .pullRequest(
///       CloudbuildTriggerRepositoryEventConfigPullRequest(
///         branch: .literal(r'^main$'),
///         commentControl: .literal(.commentsEnabled),
///       ),
///     ),
///   ),
/// );
/// ```
///
/// Cross-resource references:
/// - `build.options.pool` accepts a `google_cloudbuild_worker_pool` id.
/// - [repositoryEventConfig].`repository` accepts a
///   `google_cloudbuildv2_repository` id.
final class GoogleCloudbuildTrigger extends Resource {
  static const String tfType = 'google_cloudbuild_trigger';

  GoogleCloudbuildTrigger({
    required super.localName,
    TfArg<String>? name,
    TfArg<String>? location,
    TfArg<String>? description,
    TfArg<List<String>>? tags,
    TfArg<bool>? disabled,
    RefTo<GoogleServiceAccount>? serviceAccount,
    TfArg<CloudBuildTriggerIncludeBuildLogs>? includeBuildLogs,
    TfArg<String>? filter,
    TfArg<Map<String, String>>? substitutions,
    TfArg<List<String>>? includedFiles,
    TfArg<List<String>>? ignoredFiles,
    required CloudbuildTriggerBuildSpec buildSpec,
    CloudbuildTriggerSourceToBuild? sourceToBuild,
    CloudbuildTriggerTriggerTemplate? triggerTemplate,
    CloudbuildTriggerGithub? github,
    CloudbuildTriggerBitbucketServerTriggerConfig? bitbucketServerTriggerConfig,
    CloudbuildTriggerRepositoryEventConfig? repositoryEventConfig,
    CloudbuildTriggerDeveloperConnectEventConfig? developerConnectEventConfig,
    CloudbuildTriggerPubsubConfig? pubsubConfig,
    CloudbuildTriggerWebhookConfig? webhookConfig,
    CloudbuildTriggerApprovalConfig? approvalConfig,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': ?name,
           'location': ?location,
           'description': ?description,
           'tags': ?tags,
           'disabled': ?disabled,
           'service_account': ?serviceAccount?.encodeAs('name'),
           'include_build_logs': ?includeBuildLogs,
           'filter': ?filter,
           'substitutions': ?substitutions,
           'included_files': ?includedFiles,
           'ignored_files': ?ignoredFiles,
           if (sourceToBuild != null)
             'source_to_build': TfArg.literal(sourceToBuild.encode()),
           if (triggerTemplate != null)
             'trigger_template': TfArg.literal(triggerTemplate.encode()),
           if (github != null) 'github': TfArg.literal(github.encode()),
           if (bitbucketServerTriggerConfig != null)
             'bitbucket_server_trigger_config': TfArg.literal(
               bitbucketServerTriggerConfig.encode(),
             ),
           if (repositoryEventConfig != null)
             'repository_event_config': TfArg.literal(
               repositoryEventConfig.encode(),
             ),
           if (developerConnectEventConfig != null)
             'developer_connect_event_config': TfArg.literal(
               developerConnectEventConfig.encode(),
             ),
           if (pubsubConfig != null)
             'pubsub_config': TfArg.literal(pubsubConfig.encode()),
           if (webhookConfig != null)
             'webhook_config': TfArg.literal(webhookConfig.encode()),
           if (approvalConfig != null)
             'approval_config': TfArg.literal(approvalConfig.encode()),
           'project': ?project,
           ...buildSpec.argMap,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCloudbuildTriggerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleCloudbuildTrigger>`.
  RefTo<GoogleCloudbuildTrigger> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `trigger_id` attribute.
  TfRef<String> get triggerId => TfRef.attribute<String>(this, 'trigger_id');
}
