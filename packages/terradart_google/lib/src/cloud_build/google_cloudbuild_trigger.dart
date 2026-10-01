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
extension type const CloudBuildTriggerIncludeBuildLogs._(TfArg<String> _)
    implements TfArg<String> {
  CloudBuildTriggerIncludeBuildLogs.variable(String name)
    : this._(TfArg.variable(name));
  CloudBuildTriggerIncludeBuildLogs.expression(String template)
    : this._(TfArg.expression(template));
  const CloudBuildTriggerIncludeBuildLogs.arg(TfArg<String> arg) : this._(arg);

  static const unspecified = CloudBuildTriggerIncludeBuildLogs._(
    TfArgLiteral('INCLUDE_BUILD_LOGS_UNSPECIFIED'),
  );
  static const withStatus = CloudBuildTriggerIncludeBuildLogs._(
    TfArgLiteral('INCLUDE_BUILD_LOGS_WITH_STATUS'),
  );

  static const List<CloudBuildTriggerIncludeBuildLogs> values = [
    unspecified,
    withStatus,
  ];
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
/// Shared by every block of this shape in the resource.
@immutable
final class CloudbuildTriggerBitbucketServerTriggerConfigPullRequest {
  const CloudbuildTriggerBitbucketServerTriggerConfigPullRequest({
    required this.branch,
    this.commentControl,
    this.invertRegex,
  });

  final TfArg<String> branch;

  final CloudbuildTriggerCommentControl? commentControl;

  final TfArg<bool>? invertRegex;

  Map<String, Object?> encode() => {
    'branch': branch.toTfJson(),
    'comment_control': ?commentControl?.toTfJson(),
    'invert_regex': ?invertRegex?.toTfJson(),
  };
}

/// `comment_control` — derived from the provider schema description.
extension type const CloudbuildTriggerCommentControl._(TfArg<String> _)
    implements TfArg<String> {
  CloudbuildTriggerCommentControl.variable(String name)
    : this._(TfArg.variable(name));
  CloudbuildTriggerCommentControl.expression(String template)
    : this._(TfArg.expression(template));
  const CloudbuildTriggerCommentControl.arg(TfArg<String> arg) : this._(arg);

  static const commentsDisabled = CloudbuildTriggerCommentControl._(
    TfArgLiteral('COMMENTS_DISABLED'),
  );
  static const commentsEnabled = CloudbuildTriggerCommentControl._(
    TfArgLiteral('COMMENTS_ENABLED'),
  );
  static const commentsEnabledForExternalContributorsOnly =
      CloudbuildTriggerCommentControl._(
        TfArgLiteral('COMMENTS_ENABLED_FOR_EXTERNAL_CONTRIBUTORS_ONLY'),
      );

  static const List<CloudbuildTriggerCommentControl> values = [
    commentsDisabled,
    commentsEnabled,
    commentsEnabledForExternalContributorsOnly,
  ];
}

/// Typed helper for the `bitbucket_server_trigger_config.push` block of
/// `google_cloudbuild_trigger` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CloudbuildTriggerBitbucketServerTriggerConfigPush {
  const CloudbuildTriggerBitbucketServerTriggerConfigPush({
    required this.revision,
    this.invertRegex,
  });

  final CloudbuildTriggerPushRevision revision;

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
sealed class CloudbuildTriggerPushRevision {
  const CloudbuildTriggerPushRevision();

  /// Sets `branch`.
  const factory CloudbuildTriggerPushRevision.branch(TfArg<String> branch) =
      CloudbuildTriggerPushRevisionBranch;

  /// Sets `tag`.
  const factory CloudbuildTriggerPushRevision.tag(TfArg<String> tag) =
      CloudbuildTriggerPushRevisionTag;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [CloudbuildTriggerPushRevision.branch] choice: sets `branch`.
final class CloudbuildTriggerPushRevisionBranch
    extends CloudbuildTriggerPushRevision {
  const CloudbuildTriggerPushRevisionBranch(this.branch);

  final TfArg<String> branch;

  @override
  String get blockKey => 'branch';

  @override
  Map<String, Object?> encode() => {'branch': branch.toTfJson()};
}

/// The [CloudbuildTriggerPushRevision.tag] choice: sets `tag`.
final class CloudbuildTriggerPushRevisionTag
    extends CloudbuildTriggerPushRevision {
  const CloudbuildTriggerPushRevisionTag(this.tag);

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

  final TfArg<List<String>>? images;

  final TfArg<String>? logsBucket;

  final TfArg<String>? queueTtl;

  final TfArg<Map<String, String>>? substitutions;

  final TfArg<List<String>>? tags;

  final TfArg<String>? timeout;

  final CloudbuildTriggerArtifacts? artifacts;

  final CloudbuildTriggerAvailableSecrets? availableSecrets;

  final CloudbuildTriggerOptions? options;

  final List<CloudbuildTriggerSecret>? secret;

  final CloudbuildTriggerSource? source;

  final List<CloudbuildTriggerStep> step;

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
final class CloudbuildTriggerArtifacts {
  const CloudbuildTriggerArtifacts({
    this.images,
    this.mavenArtifacts,
    this.npmPackages,
    this.objects,
    this.pythonPackages,
  });

  final TfArg<List<String>>? images;

  final List<CloudbuildTriggerMavenArtifacts>? mavenArtifacts;

  final List<CloudbuildTriggerNpmPackages>? npmPackages;

  final CloudbuildTriggerObjects? objects;

  final List<CloudbuildTriggerPythonPackages>? pythonPackages;

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
final class CloudbuildTriggerMavenArtifacts {
  const CloudbuildTriggerMavenArtifacts({
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
final class CloudbuildTriggerNpmPackages {
  const CloudbuildTriggerNpmPackages({this.packagePath, this.repository});

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
final class CloudbuildTriggerObjects {
  const CloudbuildTriggerObjects({this.location, this.paths});

  final TfArg<String>? location;

  final TfArg<List<String>>? paths;

  Map<String, Object?> encode() => {
    'location': ?location?.toTfJson(),
    'paths': ?paths?.toTfJson(),
  };
}

/// Typed helper for the `build.artifacts.python_packages` block of
/// `google_cloudbuild_trigger` (derived from provider schema).
@immutable
final class CloudbuildTriggerPythonPackages {
  const CloudbuildTriggerPythonPackages({this.paths, this.repository});

  final TfArg<List<String>>? paths;

  final TfArg<String>? repository;

  Map<String, Object?> encode() => {
    'paths': ?paths?.toTfJson(),
    'repository': ?repository?.toTfJson(),
  };
}

/// Typed helper for the `build.available_secrets` block of
/// `google_cloudbuild_trigger` (derived from provider schema).
@immutable
final class CloudbuildTriggerAvailableSecrets {
  const CloudbuildTriggerAvailableSecrets({required this.secretManager});

  final List<CloudbuildTriggerSecretManager> secretManager;

  Map<String, Object?> encode() => {
    'secret_manager': [for (final e in secretManager) e.encode()],
  };
}

/// Typed helper for the `build.available_secrets.secret_manager` block of
/// `google_cloudbuild_trigger` (derived from provider schema).
@immutable
final class CloudbuildTriggerSecretManager {
  const CloudbuildTriggerSecretManager({
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
final class CloudbuildTriggerOptions {
  const CloudbuildTriggerOptions({
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

  final TfArg<List<String>>? env;

  final CloudbuildTriggerLogStreamingOption? logStreamingOption;

  final CloudbuildTriggerLogging? logging;

  final TfArg<String>? machineType;

  final CloudbuildTriggerRequestedVerifyOption? requestedVerifyOption;

  final TfArg<List<String>>? secretEnv;

  final List<CloudbuildTriggerSourceProvenanceHash>? sourceProvenanceHash;

  final CloudbuildTriggerSubstitutionOption? substitutionOption;

  final TfArg<String>? workerPool;

  final List<CloudbuildTriggerOptionsVolumes>? volumes;

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
extension type const CloudbuildTriggerLogStreamingOption._(TfArg<String> _)
    implements TfArg<String> {
  CloudbuildTriggerLogStreamingOption.variable(String name)
    : this._(TfArg.variable(name));
  CloudbuildTriggerLogStreamingOption.expression(String template)
    : this._(TfArg.expression(template));
  const CloudbuildTriggerLogStreamingOption.arg(TfArg<String> arg)
    : this._(arg);

  static const streamDefault = CloudbuildTriggerLogStreamingOption._(
    TfArgLiteral('STREAM_DEFAULT'),
  );
  static const streamOn = CloudbuildTriggerLogStreamingOption._(
    TfArgLiteral('STREAM_ON'),
  );
  static const streamOff = CloudbuildTriggerLogStreamingOption._(
    TfArgLiteral('STREAM_OFF'),
  );

  static const List<CloudbuildTriggerLogStreamingOption> values = [
    streamDefault,
    streamOn,
    streamOff,
  ];
}

/// `logging` — derived from the provider schema description.
extension type const CloudbuildTriggerLogging._(TfArg<String> _)
    implements TfArg<String> {
  CloudbuildTriggerLogging.variable(String name) : this._(TfArg.variable(name));
  CloudbuildTriggerLogging.expression(String template)
    : this._(TfArg.expression(template));
  const CloudbuildTriggerLogging.arg(TfArg<String> arg) : this._(arg);

  static const loggingUnspecified = CloudbuildTriggerLogging._(
    TfArgLiteral('LOGGING_UNSPECIFIED'),
  );
  static const legacy = CloudbuildTriggerLogging._(TfArgLiteral('LEGACY'));
  static const gcsOnly = CloudbuildTriggerLogging._(TfArgLiteral('GCS_ONLY'));
  static const stackdriverOnly = CloudbuildTriggerLogging._(
    TfArgLiteral('STACKDRIVER_ONLY'),
  );
  static const cloudLoggingOnly = CloudbuildTriggerLogging._(
    TfArgLiteral('CLOUD_LOGGING_ONLY'),
  );
  static const none = CloudbuildTriggerLogging._(TfArgLiteral('NONE'));

  static const List<CloudbuildTriggerLogging> values = [
    loggingUnspecified,
    legacy,
    gcsOnly,
    stackdriverOnly,
    cloudLoggingOnly,
    none,
  ];
}

/// `requested_verify_option` — derived from the provider schema description.
extension type const CloudbuildTriggerRequestedVerifyOption._(TfArg<String> _)
    implements TfArg<String> {
  CloudbuildTriggerRequestedVerifyOption.variable(String name)
    : this._(TfArg.variable(name));
  CloudbuildTriggerRequestedVerifyOption.expression(String template)
    : this._(TfArg.expression(template));
  const CloudbuildTriggerRequestedVerifyOption.arg(TfArg<String> arg)
    : this._(arg);

  static const notVerified = CloudbuildTriggerRequestedVerifyOption._(
    TfArgLiteral('NOT_VERIFIED'),
  );
  static const verified = CloudbuildTriggerRequestedVerifyOption._(
    TfArgLiteral('VERIFIED'),
  );

  static const List<CloudbuildTriggerRequestedVerifyOption> values = [
    notVerified,
    verified,
  ];
}

/// `source_provenance_hash` — derived from the provider schema description.
extension type const CloudbuildTriggerSourceProvenanceHash._(TfArg<String> _)
    implements TfArg<String> {
  CloudbuildTriggerSourceProvenanceHash.variable(String name)
    : this._(TfArg.variable(name));
  CloudbuildTriggerSourceProvenanceHash.expression(String template)
    : this._(TfArg.expression(template));
  const CloudbuildTriggerSourceProvenanceHash.arg(TfArg<String> arg)
    : this._(arg);

  static const none = CloudbuildTriggerSourceProvenanceHash._(
    TfArgLiteral('NONE'),
  );
  static const sha256 = CloudbuildTriggerSourceProvenanceHash._(
    TfArgLiteral('SHA256'),
  );
  static const md5 = CloudbuildTriggerSourceProvenanceHash._(
    TfArgLiteral('MD5'),
  );

  static const List<CloudbuildTriggerSourceProvenanceHash> values = [
    none,
    sha256,
    md5,
  ];
}

/// `substitution_option` — derived from the provider schema description.
extension type const CloudbuildTriggerSubstitutionOption._(TfArg<String> _)
    implements TfArg<String> {
  CloudbuildTriggerSubstitutionOption.variable(String name)
    : this._(TfArg.variable(name));
  CloudbuildTriggerSubstitutionOption.expression(String template)
    : this._(TfArg.expression(template));
  const CloudbuildTriggerSubstitutionOption.arg(TfArg<String> arg)
    : this._(arg);

  static const mustMatch = CloudbuildTriggerSubstitutionOption._(
    TfArgLiteral('MUST_MATCH'),
  );
  static const allowLoose = CloudbuildTriggerSubstitutionOption._(
    TfArgLiteral('ALLOW_LOOSE'),
  );

  static const List<CloudbuildTriggerSubstitutionOption> values = [
    mustMatch,
    allowLoose,
  ];
}

/// Typed helper for the `build.options.volumes` block of
/// `google_cloudbuild_trigger` (derived from provider schema).
@immutable
final class CloudbuildTriggerOptionsVolumes {
  const CloudbuildTriggerOptionsVolumes({this.name, this.path});

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
final class CloudbuildTriggerSecret {
  const CloudbuildTriggerSecret({required this.kmsKeyName, this.secretEnv});

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
final class CloudbuildTriggerSource {
  const CloudbuildTriggerSource({this.repoSource, this.storageSource});

  final CloudbuildTriggerRepoSource? repoSource;

  final CloudbuildTriggerStorageSource? storageSource;

  Map<String, Object?> encode() => {
    'repo_source': ?repoSource?.encode(),
    'storage_source': ?storageSource?.encode(),
  };
}

/// Typed helper for the `build.source.repo_source` block of
/// `google_cloudbuild_trigger` (derived from provider schema).
@immutable
final class CloudbuildTriggerRepoSource {
  const CloudbuildTriggerRepoSource({
    required this.revision,
    this.dir,
    this.invertRegex,
    this.projectId,
    required this.repoName,
    this.substitutions,
  });

  final CloudbuildTriggerRepoSourceRevision revision;

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
sealed class CloudbuildTriggerRepoSourceRevision {
  const CloudbuildTriggerRepoSourceRevision();

  /// Sets `branch_name`.
  const factory CloudbuildTriggerRepoSourceRevision.branchName(
    TfArg<String> branchName,
  ) = CloudbuildTriggerRepoSourceRevisionBranchName;

  /// Sets `commit_sha`.
  const factory CloudbuildTriggerRepoSourceRevision.commitSha(
    TfArg<String> commitSha,
  ) = CloudbuildTriggerRepoSourceRevisionCommitSha;

  /// Sets `tag_name`.
  const factory CloudbuildTriggerRepoSourceRevision.tagName(
    TfArg<String> tagName,
  ) = CloudbuildTriggerRepoSourceRevisionTagName;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [CloudbuildTriggerRepoSourceRevision.branchName] choice: sets `branch_name`.
final class CloudbuildTriggerRepoSourceRevisionBranchName
    extends CloudbuildTriggerRepoSourceRevision {
  const CloudbuildTriggerRepoSourceRevisionBranchName(this.branchName);

  final TfArg<String> branchName;

  @override
  String get blockKey => 'branch_name';

  @override
  Map<String, Object?> encode() => {'branch_name': branchName.toTfJson()};
}

/// The [CloudbuildTriggerRepoSourceRevision.commitSha] choice: sets `commit_sha`.
final class CloudbuildTriggerRepoSourceRevisionCommitSha
    extends CloudbuildTriggerRepoSourceRevision {
  const CloudbuildTriggerRepoSourceRevisionCommitSha(this.commitSha);

  final TfArg<String> commitSha;

  @override
  String get blockKey => 'commit_sha';

  @override
  Map<String, Object?> encode() => {'commit_sha': commitSha.toTfJson()};
}

/// The [CloudbuildTriggerRepoSourceRevision.tagName] choice: sets `tag_name`.
final class CloudbuildTriggerRepoSourceRevisionTagName
    extends CloudbuildTriggerRepoSourceRevision {
  const CloudbuildTriggerRepoSourceRevisionTagName(this.tagName);

  final TfArg<String> tagName;

  @override
  String get blockKey => 'tag_name';

  @override
  Map<String, Object?> encode() => {'tag_name': tagName.toTfJson()};
}

/// Typed helper for the `build.source.storage_source` block of
/// `google_cloudbuild_trigger` (derived from provider schema).
@immutable
final class CloudbuildTriggerStorageSource {
  const CloudbuildTriggerStorageSource({
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
final class CloudbuildTriggerStep {
  const CloudbuildTriggerStep({
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

  final TfArg<List<num>>? allowExitCodes;

  final TfArg<bool>? allowFailure;

  final TfArg<List<String>>? args;

  final TfArg<String>? dir;

  final TfArg<String>? entrypoint;

  final TfArg<List<String>>? env;

  final TfArg<String>? id;

  final TfArg<String> name;

  final TfArg<String>? script;

  final TfArg<List<String>>? secretEnv;

  final TfArg<String>? timeout;

  final TfArg<String>? timing;

  final TfArg<List<String>>? waitFor;

  final List<CloudbuildTriggerStepVolumes>? volumes;

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
final class CloudbuildTriggerStepVolumes {
  const CloudbuildTriggerStepVolumes({required this.name, required this.path});

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
/// Shared by every block of this shape in the resource.
@immutable
final class CloudbuildTriggerDeveloperConnectEventConfigPullRequest {
  const CloudbuildTriggerDeveloperConnectEventConfigPullRequest({
    this.branch,
    this.commentControl,
    this.invertRegex,
  });

  final TfArg<String>? branch;

  final CloudbuildTriggerCommentControl? commentControl;

  final TfArg<bool>? invertRegex;

  Map<String, Object?> encode() => {
    'branch': ?branch?.toTfJson(),
    'comment_control': ?commentControl?.toTfJson(),
    'invert_regex': ?invertRegex?.toTfJson(),
  };
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

  final CloudbuildTriggerRepoType repoType;

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
extension type const CloudbuildTriggerRepoType._(TfArg<String> _)
    implements TfArg<String> {
  CloudbuildTriggerRepoType.variable(String name)
    : this._(TfArg.variable(name));
  CloudbuildTriggerRepoType.expression(String template)
    : this._(TfArg.expression(template));
  const CloudbuildTriggerRepoType.arg(TfArg<String> arg) : this._(arg);

  static const unknown = CloudbuildTriggerRepoType._(TfArgLiteral('UNKNOWN'));
  static const cloudSourceRepositories = CloudbuildTriggerRepoType._(
    TfArgLiteral('CLOUD_SOURCE_REPOSITORIES'),
  );
  static const github = CloudbuildTriggerRepoType._(TfArgLiteral('GITHUB'));
  static const bitbucketServer = CloudbuildTriggerRepoType._(
    TfArgLiteral('BITBUCKET_SERVER'),
  );

  static const List<CloudbuildTriggerRepoType> values = [
    unknown,
    cloudSourceRepositories,
    github,
    bitbucketServer,
  ];
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
    CloudbuildTriggerBitbucketServerTriggerConfigPullRequest pullRequest,
  ) = CloudbuildTriggerGithubEventPullRequest;

  /// Sets `push`.
  const factory CloudbuildTriggerGithubEvent.push(
    CloudbuildTriggerBitbucketServerTriggerConfigPush push,
  ) = CloudbuildTriggerGithubEventPush;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [CloudbuildTriggerGithubEvent.pullRequest] choice: sets `pull_request`.
final class CloudbuildTriggerGithubEventPullRequest
    extends CloudbuildTriggerGithubEvent {
  const CloudbuildTriggerGithubEventPullRequest(this.pullRequest);

  final CloudbuildTriggerBitbucketServerTriggerConfigPullRequest pullRequest;

  @override
  String get blockKey => 'pull_request';

  @override
  Map<String, Object?> encode() => {'pull_request': pullRequest.encode()};
}

/// The [CloudbuildTriggerGithubEvent.push] choice: sets `push`.
final class CloudbuildTriggerGithubEventPush
    extends CloudbuildTriggerGithubEvent {
  const CloudbuildTriggerGithubEventPush(this.push);

  final CloudbuildTriggerBitbucketServerTriggerConfigPush push;

  @override
  String get blockKey => 'push';

  @override
  Map<String, Object?> encode() => {'push': push.encode()};
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
    CloudbuildTriggerDeveloperConnectEventConfigPullRequest pullRequest,
  ) = CloudbuildTriggerRepositoryEventConfigEventPullRequest;

  /// Sets `push`.
  const factory CloudbuildTriggerRepositoryEventConfigEvent.push(
    CloudbuildTriggerBitbucketServerTriggerConfigPush push,
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

  final CloudbuildTriggerDeveloperConnectEventConfigPullRequest pullRequest;

  @override
  String get blockKey => 'pull_request';

  @override
  Map<String, Object?> encode() => {'pull_request': pullRequest.encode()};
}

/// The [CloudbuildTriggerRepositoryEventConfigEvent.push] choice: sets `push`.
final class CloudbuildTriggerRepositoryEventConfigEventPush
    extends CloudbuildTriggerRepositoryEventConfigEvent {
  const CloudbuildTriggerRepositoryEventConfigEventPush(this.push);

  final CloudbuildTriggerBitbucketServerTriggerConfigPush push;

  @override
  String get blockKey => 'push';

  @override
  Map<String, Object?> encode() => {'push': push.encode()};
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

  final CloudbuildTriggerRepoType repoType;

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

/// Typed helper for the `trigger_template` block of
/// `google_cloudbuild_trigger` (derived from provider schema).
@immutable
final class CloudbuildTriggerTemplate {
  const CloudbuildTriggerTemplate({
    required this.revision,
    this.dir,
    this.invertRegex,
    this.projectId,
    this.repoName,
  });

  final CloudbuildTriggerRevision revision;

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
sealed class CloudbuildTriggerRevision {
  const CloudbuildTriggerRevision();

  /// Sets `branch_name`.
  const factory CloudbuildTriggerRevision.branchName(TfArg<String> branchName) =
      CloudbuildTriggerRevisionBranchName;

  /// Sets `tag_name`.
  const factory CloudbuildTriggerRevision.tagName(TfArg<String> tagName) =
      CloudbuildTriggerRevisionTagName;

  /// Sets `commit_sha`.
  const factory CloudbuildTriggerRevision.commitSha(TfArg<String> commitSha) =
      CloudbuildTriggerRevisionCommitSha;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [CloudbuildTriggerRevision.branchName] choice: sets `branch_name`.
final class CloudbuildTriggerRevisionBranchName
    extends CloudbuildTriggerRevision {
  const CloudbuildTriggerRevisionBranchName(this.branchName);

  final TfArg<String> branchName;

  @override
  String get blockKey => 'branch_name';

  @override
  Map<String, Object?> encode() => {'branch_name': branchName.toTfJson()};
}

/// The [CloudbuildTriggerRevision.tagName] choice: sets `tag_name`.
final class CloudbuildTriggerRevisionTagName extends CloudbuildTriggerRevision {
  const CloudbuildTriggerRevisionTagName(this.tagName);

  final TfArg<String> tagName;

  @override
  String get blockKey => 'tag_name';

  @override
  Map<String, Object?> encode() => {'tag_name': tagName.toTfJson()};
}

/// The [CloudbuildTriggerRevision.commitSha] choice: sets `commit_sha`.
final class CloudbuildTriggerRevisionCommitSha
    extends CloudbuildTriggerRevision {
  const CloudbuildTriggerRevisionCommitSha(this.commitSha);

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
///   'push_main',
///   name: .literal('push-main'),
///   location: .literal('asia-northeast1'),
///   buildSpec: .filename(.literal('cloudbuild.yaml')),
///   github: CloudbuildTriggerGithub(
///     owner: .literal('myorg'),
///     name: .literal('my-repo'),
///     event: .push(
///       .new(revision: .branch(.literal(r'^main$'))),
///     ),
///   ),
/// );
/// ```
///
/// ### Example 2 — v2 form (pull-request gate against a
/// `cloudbuildv2_repository`):
/// ```dart
/// final prTrigger = GoogleCloudbuildTrigger(
///   'pr_gate',
///   name: .literal('pr-gate'),
///   location: .literal('asia-northeast1'),
///   serviceAccount: .of(runner),
///   buildSpec: .filename(.literal('cloudbuild.yaml')),
///   repositoryEventConfig: CloudbuildTriggerRepositoryEventConfig(
///     repository: repository.id,
///     event: .pullRequest(
///       .new(
///         branch: .literal(r'^main$'),
///         commentControl: .commentsEnabled,
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

  GoogleCloudbuildTrigger(
    super.localName, {
    TfArg<String>? name,
    TfArg<String>? location,
    TfArg<String>? description,
    TfArg<List<String>>? tags,
    TfArg<bool>? disabled,
    RefTo<GoogleServiceAccount>? serviceAccount,
    CloudBuildTriggerIncludeBuildLogs? includeBuildLogs,
    TfArg<String>? filter,
    TfArg<Map<String, String>>? substitutions,
    TfArg<List<String>>? includedFiles,
    TfArg<List<String>>? ignoredFiles,
    required CloudbuildTriggerBuildSpec buildSpec,
    CloudbuildTriggerSourceToBuild? sourceToBuild,
    CloudbuildTriggerTemplate? triggerTemplate,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `trigger_id` attribute.
  TfRef<String> get triggerId => TfRef.attribute<String>(this, 'trigger_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `disabled` attribute.
  TfRef<bool> get disabled => TfRef.attribute<bool>(this, 'disabled');

  /// Reference to `filename` attribute.
  TfRef<String> get filename => TfRef.attribute<String>(this, 'filename');

  /// Reference to `filter` attribute.
  TfRef<String> get filter => TfRef.attribute<String>(this, 'filter');

  /// Reference to `ignored_files` attribute.
  TfRef<List<String>> get ignoredFiles =>
      TfRef.attribute<List<String>>(this, 'ignored_files');

  /// Reference to `include_build_logs` attribute.
  TfRef<String> get includeBuildLogs =>
      TfRef.attribute<String>(this, 'include_build_logs');

  /// Reference to `included_files` attribute.
  TfRef<List<String>> get includedFiles =>
      TfRef.attribute<List<String>>(this, 'included_files');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `service_account` attribute.
  TfRef<String> get serviceAccount =>
      TfRef.attribute<String>(this, 'service_account');

  /// Reference to `substitutions` attribute.
  TfRef<Map<String, String>> get substitutions =>
      TfRef.attribute<Map<String, String>>(this, 'substitutions');

  /// Reference to `tags` attribute.
  TfRef<List<String>> get tags => TfRef.attribute<List<String>>(this, 'tags');
}
