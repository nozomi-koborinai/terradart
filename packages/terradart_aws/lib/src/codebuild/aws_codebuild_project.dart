// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_codebuild_project`.
const Set<String> _awsCodebuildProjectSensitive = <String>{};

/// Typed helper for the `artifacts` block of
/// `aws_codebuild_project` (derived from provider schema).
@immutable
final class CodebuildProjectArtifacts {
  const CodebuildProjectArtifacts({
    this.artifactIdentifier,
    this.bucketOwnerAccess,
    this.encryptionDisabled,
    this.location,
    this.name,
    this.namespaceType,
    this.overrideArtifactName,
    this.packaging,
    this.path,
    required this.type,
  });

  final TfArg<String>? artifactIdentifier;

  final TfArg<String>? bucketOwnerAccess;

  final TfArg<bool>? encryptionDisabled;

  final TfArg<String>? location;

  final TfArg<String>? name;

  final TfArg<String>? namespaceType;

  final TfArg<bool>? overrideArtifactName;

  final TfArg<String>? packaging;

  final TfArg<String>? path;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (artifactIdentifier != null)
      'artifact_identifier': artifactIdentifier!.toTfJson(),
    if (bucketOwnerAccess != null)
      'bucket_owner_access': bucketOwnerAccess!.toTfJson(),
    if (encryptionDisabled != null)
      'encryption_disabled': encryptionDisabled!.toTfJson(),
    if (location != null) 'location': location!.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
    if (namespaceType != null) 'namespace_type': namespaceType!.toTfJson(),
    if (overrideArtifactName != null)
      'override_artifact_name': overrideArtifactName!.toTfJson(),
    if (packaging != null) 'packaging': packaging!.toTfJson(),
    if (path != null) 'path': path!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `build_batch_config` block of
/// `aws_codebuild_project` (derived from provider schema).
@immutable
final class CodebuildProjectBuildBatchConfig {
  const CodebuildProjectBuildBatchConfig({
    this.combineArtifacts,
    required this.serviceRole,
    this.timeoutInMins,
    this.restrictions,
  });

  final TfArg<bool>? combineArtifacts;

  final TfArg<String> serviceRole;

  final TfArg<num>? timeoutInMins;

  final CodebuildProjectBuildBatchConfigRestrictions? restrictions;

  Map<String, Object?> encode() => {
    if (combineArtifacts != null)
      'combine_artifacts': combineArtifacts!.toTfJson(),
    'service_role': serviceRole.toTfJson(),
    if (timeoutInMins != null) 'timeout_in_mins': timeoutInMins!.toTfJson(),
    if (restrictions != null) 'restrictions': restrictions!.encode(),
  };
}

/// Typed helper for the `build_batch_config.restrictions` block of
/// `aws_codebuild_project` (derived from provider schema).
@immutable
final class CodebuildProjectBuildBatchConfigRestrictions {
  const CodebuildProjectBuildBatchConfigRestrictions({
    this.computeTypesAllowed,
    this.maximumBuildsAllowed,
  });

  final TfArg<List<Object?>>? computeTypesAllowed;

  final TfArg<num>? maximumBuildsAllowed;

  Map<String, Object?> encode() => {
    if (computeTypesAllowed != null)
      'compute_types_allowed': computeTypesAllowed!.toTfJson(),
    if (maximumBuildsAllowed != null)
      'maximum_builds_allowed': maximumBuildsAllowed!.toTfJson(),
  };
}

/// Typed helper for the `cache` block of
/// `aws_codebuild_project` (derived from provider schema).
@immutable
final class CodebuildProjectCache {
  const CodebuildProjectCache({
    this.cacheNamespace,
    this.location,
    this.modes,
    this.type,
  });

  final TfArg<String>? cacheNamespace;

  final TfArg<String>? location;

  final TfArg<List<Object?>>? modes;

  final TfArg<String>? type;

  Map<String, Object?> encode() => {
    if (cacheNamespace != null) 'cache_namespace': cacheNamespace!.toTfJson(),
    if (location != null) 'location': location!.toTfJson(),
    if (modes != null) 'modes': modes!.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
  };
}

/// Typed helper for the `environment` block of
/// `aws_codebuild_project` (derived from provider schema).
@immutable
final class CodebuildProjectEnvironment {
  const CodebuildProjectEnvironment({
    this.certificate,
    required this.computeType,
    this.hostKernel,
    required this.image,
    this.imagePullCredentialsType,
    this.privilegedMode,
    required this.type,
    this.dockerServer,
    this.environmentVariable,
    this.fleet,
    this.registryCredential,
  });

  final TfArg<String>? certificate;

  final TfArg<String> computeType;

  final TfArg<String>? hostKernel;

  final TfArg<String> image;

  final TfArg<String>? imagePullCredentialsType;

  final TfArg<bool>? privilegedMode;

  final TfArg<String> type;

  final CodebuildProjectEnvironmentDockerServer? dockerServer;

  final List<CodebuildProjectEnvironmentEnvironmentVariable>?
  environmentVariable;

  final CodebuildProjectEnvironmentFleet? fleet;

  final CodebuildProjectEnvironmentRegistryCredential? registryCredential;

  Map<String, Object?> encode() => {
    if (certificate != null) 'certificate': certificate!.toTfJson(),
    'compute_type': computeType.toTfJson(),
    if (hostKernel != null) 'host_kernel': hostKernel!.toTfJson(),
    'image': image.toTfJson(),
    if (imagePullCredentialsType != null)
      'image_pull_credentials_type': imagePullCredentialsType!.toTfJson(),
    if (privilegedMode != null) 'privileged_mode': privilegedMode!.toTfJson(),
    'type': type.toTfJson(),
    if (dockerServer != null) 'docker_server': dockerServer!.encode(),
    if (environmentVariable != null)
      'environment_variable': [
        for (final e in environmentVariable!) e.encode(),
      ],
    if (fleet != null) 'fleet': fleet!.encode(),
    if (registryCredential != null)
      'registry_credential': registryCredential!.encode(),
  };
}

/// Typed helper for the `environment.docker_server` block of
/// `aws_codebuild_project` (derived from provider schema).
@immutable
final class CodebuildProjectEnvironmentDockerServer {
  const CodebuildProjectEnvironmentDockerServer({
    required this.computeType,
    this.securityGroupIds,
  });

  final TfArg<String> computeType;

  final TfArg<List<Object?>>? securityGroupIds;

  Map<String, Object?> encode() => {
    'compute_type': computeType.toTfJson(),
    if (securityGroupIds != null)
      'security_group_ids': securityGroupIds!.toTfJson(),
  };
}

/// Typed helper for the `environment.environment_variable` block of
/// `aws_codebuild_project` (derived from provider schema).
@immutable
final class CodebuildProjectEnvironmentEnvironmentVariable {
  const CodebuildProjectEnvironmentEnvironmentVariable({
    required this.name,
    this.type,
    required this.value,
  });

  final TfArg<String> name;

  final TfArg<String>? type;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `environment.fleet` block of
/// `aws_codebuild_project` (derived from provider schema).
@immutable
final class CodebuildProjectEnvironmentFleet {
  const CodebuildProjectEnvironmentFleet({this.fleetArn});

  final TfArg<String>? fleetArn;

  Map<String, Object?> encode() => {
    if (fleetArn != null) 'fleet_arn': fleetArn!.toTfJson(),
  };
}

/// Typed helper for the `environment.registry_credential` block of
/// `aws_codebuild_project` (derived from provider schema).
@immutable
final class CodebuildProjectEnvironmentRegistryCredential {
  const CodebuildProjectEnvironmentRegistryCredential({
    required this.credential,
    required this.credentialProvider,
  });

  final TfArg<String> credential;

  final TfArg<String> credentialProvider;

  Map<String, Object?> encode() => {
    'credential': credential.toTfJson(),
    'credential_provider': credentialProvider.toTfJson(),
  };
}

/// Typed helper for the `file_system_locations` block of
/// `aws_codebuild_project` (derived from provider schema).
@immutable
final class CodebuildProjectFileSystemLocations {
  const CodebuildProjectFileSystemLocations({
    this.identifier,
    this.location,
    this.mountOptions,
    this.mountPoint,
    this.type,
  });

  final TfArg<String>? identifier;

  final TfArg<String>? location;

  final TfArg<String>? mountOptions;

  final TfArg<String>? mountPoint;

  final TfArg<String>? type;

  Map<String, Object?> encode() => {
    if (identifier != null) 'identifier': identifier!.toTfJson(),
    if (location != null) 'location': location!.toTfJson(),
    if (mountOptions != null) 'mount_options': mountOptions!.toTfJson(),
    if (mountPoint != null) 'mount_point': mountPoint!.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
  };
}

/// Typed helper for the `logs_config` block of
/// `aws_codebuild_project` (derived from provider schema).
@immutable
final class CodebuildProjectLogsConfig {
  const CodebuildProjectLogsConfig({this.cloudwatchLogs, this.s3Logs});

  final CodebuildProjectLogsConfigCloudwatchLogs? cloudwatchLogs;

  final CodebuildProjectLogsConfigS3Logs? s3Logs;

  Map<String, Object?> encode() => {
    if (cloudwatchLogs != null) 'cloudwatch_logs': cloudwatchLogs!.encode(),
    if (s3Logs != null) 's3_logs': s3Logs!.encode(),
  };
}

/// Typed helper for the `logs_config.cloudwatch_logs` block of
/// `aws_codebuild_project` (derived from provider schema).
@immutable
final class CodebuildProjectLogsConfigCloudwatchLogs {
  const CodebuildProjectLogsConfigCloudwatchLogs({
    this.groupName,
    this.status,
    this.streamName,
  });

  final TfArg<String>? groupName;

  final TfArg<String>? status;

  final TfArg<String>? streamName;

  Map<String, Object?> encode() => {
    if (groupName != null) 'group_name': groupName!.toTfJson(),
    if (status != null) 'status': status!.toTfJson(),
    if (streamName != null) 'stream_name': streamName!.toTfJson(),
  };
}

/// Typed helper for the `logs_config.s3_logs` block of
/// `aws_codebuild_project` (derived from provider schema).
@immutable
final class CodebuildProjectLogsConfigS3Logs {
  const CodebuildProjectLogsConfigS3Logs({
    this.bucketOwnerAccess,
    this.encryptionDisabled,
    this.location,
    this.status,
  });

  final TfArg<String>? bucketOwnerAccess;

  final TfArg<bool>? encryptionDisabled;

  final TfArg<String>? location;

  final TfArg<String>? status;

  Map<String, Object?> encode() => {
    if (bucketOwnerAccess != null)
      'bucket_owner_access': bucketOwnerAccess!.toTfJson(),
    if (encryptionDisabled != null)
      'encryption_disabled': encryptionDisabled!.toTfJson(),
    if (location != null) 'location': location!.toTfJson(),
    if (status != null) 'status': status!.toTfJson(),
  };
}

/// Typed helper for the `secondary_artifacts` block of
/// `aws_codebuild_project` (derived from provider schema).
@immutable
final class CodebuildProjectSecondaryArtifacts {
  const CodebuildProjectSecondaryArtifacts({
    required this.artifactIdentifier,
    this.bucketOwnerAccess,
    this.encryptionDisabled,
    this.location,
    this.name,
    this.namespaceType,
    this.overrideArtifactName,
    this.packaging,
    this.path,
    required this.type,
  });

  final TfArg<String> artifactIdentifier;

  final TfArg<String>? bucketOwnerAccess;

  final TfArg<bool>? encryptionDisabled;

  final TfArg<String>? location;

  final TfArg<String>? name;

  final TfArg<String>? namespaceType;

  final TfArg<bool>? overrideArtifactName;

  final TfArg<String>? packaging;

  final TfArg<String>? path;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    'artifact_identifier': artifactIdentifier.toTfJson(),
    if (bucketOwnerAccess != null)
      'bucket_owner_access': bucketOwnerAccess!.toTfJson(),
    if (encryptionDisabled != null)
      'encryption_disabled': encryptionDisabled!.toTfJson(),
    if (location != null) 'location': location!.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
    if (namespaceType != null) 'namespace_type': namespaceType!.toTfJson(),
    if (overrideArtifactName != null)
      'override_artifact_name': overrideArtifactName!.toTfJson(),
    if (packaging != null) 'packaging': packaging!.toTfJson(),
    if (path != null) 'path': path!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `secondary_source_version` block of
/// `aws_codebuild_project` (derived from provider schema).
@immutable
final class CodebuildProjectSecondarySourceVersion {
  const CodebuildProjectSecondarySourceVersion({
    required this.sourceIdentifier,
    required this.sourceVersion,
  });

  final TfArg<String> sourceIdentifier;

  final TfArg<String> sourceVersion;

  Map<String, Object?> encode() => {
    'source_identifier': sourceIdentifier.toTfJson(),
    'source_version': sourceVersion.toTfJson(),
  };
}

/// Typed helper for the `secondary_sources` block of
/// `aws_codebuild_project` (derived from provider schema).
@immutable
final class CodebuildProjectSecondarySources {
  const CodebuildProjectSecondarySources({
    this.buildspec,
    this.gitCloneDepth,
    this.insecureSsl,
    this.location,
    this.reportBuildStatus,
    required this.sourceIdentifier,
    required this.type,
    this.auth,
    this.buildStatusConfig,
    this.gitSubmodulesConfig,
  });

  final TfArg<String>? buildspec;

  final TfArg<num>? gitCloneDepth;

  final TfArg<bool>? insecureSsl;

  final TfArg<String>? location;

  final TfArg<bool>? reportBuildStatus;

  final TfArg<String> sourceIdentifier;

  final TfArg<String> type;

  final CodebuildProjectSecondarySourcesAuth? auth;

  final CodebuildProjectSecondarySourcesBuildStatusConfig? buildStatusConfig;

  final CodebuildProjectSecondarySourcesGitSubmodulesConfig?
  gitSubmodulesConfig;

  Map<String, Object?> encode() => {
    if (buildspec != null) 'buildspec': buildspec!.toTfJson(),
    if (gitCloneDepth != null) 'git_clone_depth': gitCloneDepth!.toTfJson(),
    if (insecureSsl != null) 'insecure_ssl': insecureSsl!.toTfJson(),
    if (location != null) 'location': location!.toTfJson(),
    if (reportBuildStatus != null)
      'report_build_status': reportBuildStatus!.toTfJson(),
    'source_identifier': sourceIdentifier.toTfJson(),
    'type': type.toTfJson(),
    if (auth != null) 'auth': auth!.encode(),
    if (buildStatusConfig != null)
      'build_status_config': buildStatusConfig!.encode(),
    if (gitSubmodulesConfig != null)
      'git_submodules_config': gitSubmodulesConfig!.encode(),
  };
}

/// Typed helper for the `secondary_sources.auth` block of
/// `aws_codebuild_project` (derived from provider schema).
@immutable
final class CodebuildProjectSecondarySourcesAuth {
  const CodebuildProjectSecondarySourcesAuth({
    required this.resource,
    required this.type,
  });

  final TfArg<String> resource;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    'resource': resource.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `secondary_sources.build_status_config` block of
/// `aws_codebuild_project` (derived from provider schema).
@immutable
final class CodebuildProjectSecondarySourcesBuildStatusConfig {
  const CodebuildProjectSecondarySourcesBuildStatusConfig({
    this.context,
    this.targetUrl,
  });

  final TfArg<String>? context;

  final TfArg<String>? targetUrl;

  Map<String, Object?> encode() => {
    if (context != null) 'context': context!.toTfJson(),
    if (targetUrl != null) 'target_url': targetUrl!.toTfJson(),
  };
}

/// Typed helper for the `secondary_sources.git_submodules_config` block of
/// `aws_codebuild_project` (derived from provider schema).
@immutable
final class CodebuildProjectSecondarySourcesGitSubmodulesConfig {
  const CodebuildProjectSecondarySourcesGitSubmodulesConfig({
    required this.fetchSubmodules,
  });

  final TfArg<bool> fetchSubmodules;

  Map<String, Object?> encode() => {
    'fetch_submodules': fetchSubmodules.toTfJson(),
  };
}

/// Typed helper for the `source` block of
/// `aws_codebuild_project` (derived from provider schema).
@immutable
final class CodebuildProjectSource {
  const CodebuildProjectSource({
    this.buildspec,
    this.gitCloneDepth,
    this.insecureSsl,
    this.location,
    this.reportBuildStatus,
    required this.type,
    this.auth,
    this.buildStatusConfig,
    this.gitSubmodulesConfig,
  });

  final TfArg<String>? buildspec;

  final TfArg<num>? gitCloneDepth;

  final TfArg<bool>? insecureSsl;

  final TfArg<String>? location;

  final TfArg<bool>? reportBuildStatus;

  final TfArg<String> type;

  final CodebuildProjectSourceAuth? auth;

  final CodebuildProjectSourceBuildStatusConfig? buildStatusConfig;

  final CodebuildProjectSourceGitSubmodulesConfig? gitSubmodulesConfig;

  Map<String, Object?> encode() => {
    if (buildspec != null) 'buildspec': buildspec!.toTfJson(),
    if (gitCloneDepth != null) 'git_clone_depth': gitCloneDepth!.toTfJson(),
    if (insecureSsl != null) 'insecure_ssl': insecureSsl!.toTfJson(),
    if (location != null) 'location': location!.toTfJson(),
    if (reportBuildStatus != null)
      'report_build_status': reportBuildStatus!.toTfJson(),
    'type': type.toTfJson(),
    if (auth != null) 'auth': auth!.encode(),
    if (buildStatusConfig != null)
      'build_status_config': buildStatusConfig!.encode(),
    if (gitSubmodulesConfig != null)
      'git_submodules_config': gitSubmodulesConfig!.encode(),
  };
}

/// Typed helper for the `source.auth` block of
/// `aws_codebuild_project` (derived from provider schema).
@immutable
final class CodebuildProjectSourceAuth {
  const CodebuildProjectSourceAuth({
    required this.resource,
    required this.type,
  });

  final TfArg<String> resource;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    'resource': resource.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `source.build_status_config` block of
/// `aws_codebuild_project` (derived from provider schema).
@immutable
final class CodebuildProjectSourceBuildStatusConfig {
  const CodebuildProjectSourceBuildStatusConfig({this.context, this.targetUrl});

  final TfArg<String>? context;

  final TfArg<String>? targetUrl;

  Map<String, Object?> encode() => {
    if (context != null) 'context': context!.toTfJson(),
    if (targetUrl != null) 'target_url': targetUrl!.toTfJson(),
  };
}

/// Typed helper for the `source.git_submodules_config` block of
/// `aws_codebuild_project` (derived from provider schema).
@immutable
final class CodebuildProjectSourceGitSubmodulesConfig {
  const CodebuildProjectSourceGitSubmodulesConfig({
    required this.fetchSubmodules,
  });

  final TfArg<bool> fetchSubmodules;

  Map<String, Object?> encode() => {
    'fetch_submodules': fetchSubmodules.toTfJson(),
  };
}

/// Typed helper for the `vpc_config` block of
/// `aws_codebuild_project` (derived from provider schema).
@immutable
final class CodebuildProjectVpcConfig {
  const CodebuildProjectVpcConfig({
    required this.securityGroupIds,
    required this.subnets,
    required this.vpcId,
  });

  final TfArg<List<Object?>> securityGroupIds;

  final TfArg<List<Object?>> subnets;

  final TfArg<String> vpcId;

  Map<String, Object?> encode() => {
    'security_group_ids': securityGroupIds.toTfJson(),
    'subnets': subnets.toTfJson(),
    'vpc_id': vpcId.toTfJson(),
  };
}

/// Factory wrapper for `aws_codebuild_project`.
final class AwsCodebuildProject extends Resource {
  static const String tfType = 'aws_codebuild_project';

  AwsCodebuildProject({
    required super.localName,
    TfArg<num>? autoRetryLimit,
    TfArg<bool>? badgeEnabled,
    TfArg<num>? buildTimeout,
    TfArg<num>? concurrentBuildLimit,
    TfArg<String>? description,
    TfArg<String>? encryptionKey,
    required TfArg<String> name,
    TfArg<String>? projectVisibility,
    TfArg<num>? queuedTimeout,
    TfArg<String>? region,
    TfArg<String>? resourceAccessRole,
    required TfArg<String> serviceRole,
    TfArg<String>? sourceVersion,
    TfArg<Map<String, String>>? tags,
    required CodebuildProjectArtifacts artifacts,
    CodebuildProjectBuildBatchConfig? buildBatchConfig,
    CodebuildProjectCache? cache,
    required CodebuildProjectEnvironment environment,
    List<CodebuildProjectFileSystemLocations>? fileSystemLocations,
    CodebuildProjectLogsConfig? logsConfig,
    List<CodebuildProjectSecondaryArtifacts>? secondaryArtifacts,
    List<CodebuildProjectSecondarySourceVersion>? secondarySourceVersion,
    List<CodebuildProjectSecondarySources>? secondarySources,
    required CodebuildProjectSource source,
    CodebuildProjectVpcConfig? vpcConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (autoRetryLimit != null) 'auto_retry_limit': autoRetryLimit,
           if (badgeEnabled != null) 'badge_enabled': badgeEnabled,
           if (buildTimeout != null) 'build_timeout': buildTimeout,
           if (concurrentBuildLimit != null)
             'concurrent_build_limit': concurrentBuildLimit,
           if (description != null) 'description': description,
           if (encryptionKey != null) 'encryption_key': encryptionKey,
           'name': name,
           if (projectVisibility != null)
             'project_visibility': projectVisibility,
           if (queuedTimeout != null) 'queued_timeout': queuedTimeout,
           if (region != null) 'region': region,
           if (resourceAccessRole != null)
             'resource_access_role': resourceAccessRole,
           'service_role': serviceRole,
           if (sourceVersion != null) 'source_version': sourceVersion,
           if (tags != null) 'tags': tags,
           'artifacts': TfArg.literal(artifacts.encode()),
           if (buildBatchConfig != null)
             'build_batch_config': TfArg.literal(buildBatchConfig.encode()),
           if (cache != null) 'cache': TfArg.literal(cache.encode()),
           'environment': TfArg.literal(environment.encode()),
           if (fileSystemLocations != null)
             'file_system_locations': TfArg.literal([
               for (final e in fileSystemLocations) e.encode(),
             ]),
           if (logsConfig != null)
             'logs_config': TfArg.literal(logsConfig.encode()),
           if (secondaryArtifacts != null)
             'secondary_artifacts': TfArg.literal([
               for (final e in secondaryArtifacts) e.encode(),
             ]),
           if (secondarySourceVersion != null)
             'secondary_source_version': TfArg.literal([
               for (final e in secondarySourceVersion) e.encode(),
             ]),
           if (secondarySources != null)
             'secondary_sources': TfArg.literal([
               for (final e in secondarySources) e.encode(),
             ]),
           'source': TfArg.literal(source.encode()),
           if (vpcConfig != null)
             'vpc_config': TfArg.literal(vpcConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCodebuildProjectSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `badge_url` attribute.
  TfRef<String> get badgeUrl => TfRef.attribute<String>(this, 'badge_url');

  /// Reference to `public_project_alias` attribute.
  TfRef<String> get publicProjectAlias =>
      TfRef.attribute<String>(this, 'public_project_alias');
}
