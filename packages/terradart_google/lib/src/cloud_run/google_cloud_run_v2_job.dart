// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;
import '../compute/google_compute_subnetwork.dart' show GoogleComputeSubnetwork;
import '../iam/google_service_account.dart' show GoogleServiceAccount;
import '../secret_manager/google_secret_manager_secret.dart'
    show GoogleSecretManagerSecret;
import '../storage/google_storage_bucket.dart' show GoogleStorageBucket;

/// Sensitive field paths for `google_cloud_run_v2_job`.
const Set<String> _googleCloudRunV2JobSensitive = <String>{};

// ===========================================================================
// Top-level enums
// ===========================================================================

/// Launch stage for `google_cloud_run_v2_job.launch_stage`. Setting a
/// pre-GA stage on input allows preview features in that stage; on read
/// the field reflects the highest preview level actually used.
///
/// The Job and Service enums share the same Terraform values but live
/// under separate names ([CloudRunV2JobLaunchStage] vs. [LaunchStage]) so the
/// `cloud_run.dart` barrel can `show` both.
enum CloudRunV2JobLaunchStage implements TerraformEnum {
  unimplemented('UNIMPLEMENTED'),
  prelaunch('PRELAUNCH'),
  earlyAccess('EARLY_ACCESS'),
  alpha('ALPHA'),
  beta('BETA'),
  ga('GA'),
  deprecatedStage('DEPRECATED');

  const CloudRunV2JobLaunchStage(this.terraformValue);
  @override
  final String terraformValue;
}

/// Container sandbox environment for [CloudRunV2JobTemplateTemplate.executionEnvironment].
/// `gen2` enables larger CPU tiers + GCSFuse volumes; `gen1` keeps the
/// legacy gVisor sandbox.
enum CloudRunV2JobExecutionEnvironment implements TerraformEnum {
  gen1('EXECUTION_ENVIRONMENT_GEN1'),
  gen2('EXECUTION_ENVIRONMENT_GEN2');

  const CloudRunV2JobExecutionEnvironment(this.terraformValue);
  @override
  final String terraformValue;
}

/// Egress policy for [CloudRunV2JobVpcAccess.egress] (`template.template.vpc_access.egress`).
enum CloudRunV2JobVpcAccessEgress implements TerraformEnum {
  allTraffic('ALL_TRAFFIC'),
  privateRangesOnly('PRIVATE_RANGES_ONLY');

  const CloudRunV2JobVpcAccessEgress(this.terraformValue);
  @override
  final String terraformValue;
}

/// Storage medium for [CloudRunV2JobEmptyDirVolume.medium]. The Cloud Run v2 Job
/// schema documents `MEMORY`; `DISK` is reserved per the Magic-Modules
/// mirror but rejected by the provider today.
enum CloudRunV2JobEmptyDirMedium implements TerraformEnum {
  memory('MEMORY'),
  disk('DISK');

  const CloudRunV2JobEmptyDirMedium(this.terraformValue);
  @override
  final String terraformValue;
}

// ===========================================================================
// Top-level nested helpers
// ===========================================================================

// ===========================================================================
// CloudRunV2JobTemplate (outer) + CloudRunV2JobTemplateTemplate (inner) — `template.0.template.0`
// ===========================================================================

// ===========================================================================
// Containers
// ===========================================================================

// ===========================================================================
// Probes (Jobs ship startup_probe only). HTTP / TCP sub-blocks are typed;
// gRPC is intentionally an opaque map.
// ===========================================================================

// ===========================================================================
// Volumes (sealed source — secret / cloud_sql / empty_dir / gcs / nfs are
// mutually exclusive per the provider's commented exactly_one_of).
// ===========================================================================

/// At most one of `start_execution_token`, `run_execution_token` on `google_cloud_run_v2_job`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.startExecutionToken(...)`.
sealed class CloudRunV2JobExecutionToken {
  const CloudRunV2JobExecutionToken();

  /// Sets `start_execution_token`.
  const factory CloudRunV2JobExecutionToken.startExecutionToken(
    TfArg<String> startExecutionToken,
  ) = CloudRunV2JobStartExecutionToken;

  /// Sets `run_execution_token`.
  const factory CloudRunV2JobExecutionToken.runExecutionToken(
    TfArg<String> runExecutionToken,
  ) = CloudRunV2JobRunExecutionToken;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [CloudRunV2JobExecutionToken.startExecutionToken] choice: sets `start_execution_token`.
final class CloudRunV2JobStartExecutionToken
    extends CloudRunV2JobExecutionToken {
  const CloudRunV2JobStartExecutionToken(this.startExecutionToken);

  final TfArg<String> startExecutionToken;

  @override
  String get blockKey => 'start_execution_token';

  @override
  Map<String, Object?> encode() => {
    'start_execution_token': startExecutionToken.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'start_execution_token': startExecutionToken,
  };
}

/// The [CloudRunV2JobExecutionToken.runExecutionToken] choice: sets `run_execution_token`.
final class CloudRunV2JobRunExecutionToken extends CloudRunV2JobExecutionToken {
  const CloudRunV2JobRunExecutionToken(this.runExecutionToken);

  final TfArg<String> runExecutionToken;

  @override
  String get blockKey => 'run_execution_token';

  @override
  Map<String, Object?> encode() => {
    'run_execution_token': runExecutionToken.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'run_execution_token': runExecutionToken,
  };
}

/// Typed helper for the `binary_authorization` block of
/// `google_cloud_run_v2_job` (derived from provider schema).
@immutable
final class CloudRunV2JobBinaryAuthorization {
  const CloudRunV2JobBinaryAuthorization({
    this.breakglassJustification,
    this.policy,
  });

  final TfArg<String>? breakglassJustification;

  final CloudRunV2JobPolicy? policy;

  Map<String, Object?> encode() => {
    'breakglass_justification': ?breakglassJustification?.toTfJson(),
    ...?policy?.encode(),
  };
}

/// At most one of `use_default`, `policy` on the `binary_authorization` block of `google_cloud_run_v2_job`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.useDefault(...)`.
sealed class CloudRunV2JobPolicy {
  const CloudRunV2JobPolicy();

  /// Sets `use_default`.
  const factory CloudRunV2JobPolicy.useDefault(TfArg<bool> useDefault) =
      CloudRunV2JobPolicyUseDefault;

  /// Sets `policy`.
  const factory CloudRunV2JobPolicy.policy(TfArg<String> policy) =
      CloudRunV2JobPolicyChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [CloudRunV2JobPolicy.useDefault] choice: sets `use_default`.
final class CloudRunV2JobPolicyUseDefault extends CloudRunV2JobPolicy {
  const CloudRunV2JobPolicyUseDefault(this.useDefault);

  final TfArg<bool> useDefault;

  @override
  String get blockKey => 'use_default';

  @override
  Map<String, Object?> encode() => {'use_default': useDefault.toTfJson()};
}

/// The [CloudRunV2JobPolicy.policy] choice: sets `policy`.
final class CloudRunV2JobPolicyChoice extends CloudRunV2JobPolicy {
  const CloudRunV2JobPolicyChoice(this.policy);

  final TfArg<String> policy;

  @override
  String get blockKey => 'policy';

  @override
  Map<String, Object?> encode() => {'policy': policy.toTfJson()};
}

/// Typed helper for the `template` block of
/// `google_cloud_run_v2_job` (derived from provider schema).
@immutable
final class CloudRunV2JobTemplate {
  const CloudRunV2JobTemplate({
    this.annotations,
    this.delayExecution,
    this.labels,
    this.parallelism,
    this.taskCount,
    required this.template,
  });

  final TfArg<Map<String, String>>? annotations;

  final TfArg<bool>? delayExecution;

  final TfArg<Map<String, String>>? labels;

  final TfArg<num>? parallelism;

  final TfArg<num>? taskCount;

  final CloudRunV2JobTemplateTemplate template;

  Map<String, Object?> encode() => {
    'annotations': ?annotations?.toTfJson(),
    'delay_execution': ?delayExecution?.toTfJson(),
    'labels': ?labels?.toTfJson(),
    'parallelism': ?parallelism?.toTfJson(),
    'task_count': ?taskCount?.toTfJson(),
    'template': template.encode(),
  };
}

/// Typed helper for the `template.template` block of
/// `google_cloud_run_v2_job` (derived from provider schema).
@immutable
final class CloudRunV2JobTemplateTemplate {
  const CloudRunV2JobTemplateTemplate({
    this.encryptionKey,
    this.executionEnvironment,
    this.gpuZonalRedundancyDisabled,
    this.maxRetries,
    this.serviceAccount,
    this.timeout,
    this.containers,
    this.nodeSelector,
    this.volumes,
    this.vpcAccess,
  });

  final TfArg<String>? encryptionKey;

  final TfArg<CloudRunV2JobExecutionEnvironment>? executionEnvironment;

  final TfArg<bool>? gpuZonalRedundancyDisabled;

  final TfArg<num>? maxRetries;

  final RefTo<GoogleServiceAccount>? serviceAccount;

  final TfArg<String>? timeout;

  final List<CloudRunV2JobContainers>? containers;

  final CloudRunV2JobNodeSelector? nodeSelector;

  final List<CloudRunV2JobVolumes>? volumes;

  final CloudRunV2JobVpcAccess? vpcAccess;

  Map<String, Object?> encode() => {
    'encryption_key': ?encryptionKey?.toTfJson(),
    'execution_environment': ?executionEnvironment?.toTfJson(),
    'gpu_zonal_redundancy_disabled': ?gpuZonalRedundancyDisabled?.toTfJson(),
    'max_retries': ?maxRetries?.toTfJson(),
    'service_account': ?serviceAccount?.encodeAs('email').toTfJson(),
    'timeout': ?timeout?.toTfJson(),
    if (containers != null)
      'containers': [for (final e in containers!) e.encode()],
    'node_selector': ?nodeSelector?.encode(),
    if (volumes != null) 'volumes': [for (final e in volumes!) e.encode()],
    'vpc_access': ?vpcAccess?.encode(),
  };
}

/// Typed helper for the `template.template.containers` block of
/// `google_cloud_run_v2_job` (derived from provider schema).
@immutable
final class CloudRunV2JobContainers {
  const CloudRunV2JobContainers({
    this.args,
    this.command,
    this.dependsOn,
    required this.image,
    this.name,
    this.sandboxLauncher,
    this.workingDir,
    this.env,
    this.ports,
    this.resources,
    this.startupProbe,
    this.volumeMounts,
  });

  final TfArg<List<String>>? args;

  final TfArg<List<String>>? command;

  final TfArg<List<String>>? dependsOn;

  final TfArg<String> image;

  final TfArg<String>? name;

  final TfArg<bool>? sandboxLauncher;

  final TfArg<String>? workingDir;

  final List<CloudRunV2JobEnv>? env;

  final List<CloudRunV2JobPorts>? ports;

  final CloudRunV2JobResources? resources;

  final CloudRunV2JobStartupProbe? startupProbe;

  final List<CloudRunV2JobVolumeMounts>? volumeMounts;

  Map<String, Object?> encode() => {
    'args': ?args?.toTfJson(),
    'command': ?command?.toTfJson(),
    'depends_on': ?dependsOn?.toTfJson(),
    'image': image.toTfJson(),
    'name': ?name?.toTfJson(),
    'sandbox_launcher': ?sandboxLauncher?.toTfJson(),
    'working_dir': ?workingDir?.toTfJson(),
    if (env != null) 'env': [for (final e in env!) e.encode()],
    if (ports != null) 'ports': [for (final e in ports!) e.encode()],
    'resources': ?resources?.encode(),
    'startup_probe': ?startupProbe?.encode(),
    if (volumeMounts != null)
      'volume_mounts': [for (final e in volumeMounts!) e.encode()],
  };
}

/// Typed helper for the `template.template.containers.env` block of
/// `google_cloud_run_v2_job` (derived from provider schema).
@immutable
final class CloudRunV2JobEnv {
  const CloudRunV2JobEnv({required this.name, required this.source});

  final TfArg<String> name;

  final CloudRunV2JobEnvSource source;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    ...source.encode(),
  };
}

/// Exactly one of `value`, `value_source` on the `template.template.containers.env` block of `google_cloud_run_v2_job`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.value(...)`.
sealed class CloudRunV2JobEnvSource {
  const CloudRunV2JobEnvSource();

  /// Sets `value`.
  const factory CloudRunV2JobEnvSource.value(TfArg<String> value) =
      CloudRunV2JobEnvSourceValue;

  /// Sets `value_source`.
  const factory CloudRunV2JobEnvSource.valueSource(
    CloudRunV2JobValueSource valueSource,
  ) = CloudRunV2JobEnvValueSource;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [CloudRunV2JobEnvSource.value] choice: sets `value`.
final class CloudRunV2JobEnvSourceValue extends CloudRunV2JobEnvSource {
  const CloudRunV2JobEnvSourceValue(this.value);

  final TfArg<String> value;

  @override
  String get blockKey => 'value';

  @override
  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// The [CloudRunV2JobEnvSource.valueSource] choice: sets `value_source`.
final class CloudRunV2JobEnvValueSource extends CloudRunV2JobEnvSource {
  const CloudRunV2JobEnvValueSource(this.valueSource);

  final CloudRunV2JobValueSource valueSource;

  @override
  String get blockKey => 'value_source';

  @override
  Map<String, Object?> encode() => {'value_source': valueSource.encode()};
}

/// Typed helper for the `template.template.containers.env.value_source` block of
/// `google_cloud_run_v2_job` (derived from provider schema).
@immutable
final class CloudRunV2JobValueSource {
  const CloudRunV2JobValueSource({this.secretKeyRef});

  final CloudRunV2JobSecretKeyRef? secretKeyRef;

  Map<String, Object?> encode() => {'secret_key_ref': ?secretKeyRef?.encode()};
}

/// Typed helper for the `template.template.containers.env.value_source.secret_key_ref` block of
/// `google_cloud_run_v2_job` (derived from provider schema).
@immutable
final class CloudRunV2JobSecretKeyRef {
  const CloudRunV2JobSecretKeyRef({
    required this.secret,
    required this.version,
  });

  final RefTo<GoogleSecretManagerSecret> secret;

  final TfArg<String> version;

  Map<String, Object?> encode() => {
    'secret': secret.encodeAs('id').toTfJson(),
    'version': version.toTfJson(),
  };
}

/// Typed helper for the `template.template.containers.ports` block of
/// `google_cloud_run_v2_job` (derived from provider schema).
@immutable
final class CloudRunV2JobPorts {
  const CloudRunV2JobPorts({this.containerPort, this.name});

  final TfArg<num>? containerPort;

  final TfArg<String>? name;

  Map<String, Object?> encode() => {
    'container_port': ?containerPort?.toTfJson(),
    'name': ?name?.toTfJson(),
  };
}

/// Typed helper for the `template.template.containers.resources` block of
/// `google_cloud_run_v2_job` (derived from provider schema).
@immutable
final class CloudRunV2JobResources {
  const CloudRunV2JobResources({this.limits});

  final TfArg<Map<String, String>>? limits;

  Map<String, Object?> encode() => {'limits': ?limits?.toTfJson()};
}

/// Typed helper for the `template.template.containers.startup_probe` block of
/// `google_cloud_run_v2_job` (derived from provider schema).
@immutable
final class CloudRunV2JobStartupProbe {
  const CloudRunV2JobStartupProbe({
    this.failureThreshold,
    this.initialDelaySeconds,
    this.periodSeconds,
    this.timeoutSeconds,
    this.grpc,
    this.httpGet,
    this.tcpSocket,
  });

  final TfArg<num>? failureThreshold;

  final TfArg<num>? initialDelaySeconds;

  final TfArg<num>? periodSeconds;

  final TfArg<num>? timeoutSeconds;

  final CloudRunV2JobGrpc? grpc;

  final CloudRunV2JobHttpGet? httpGet;

  final CloudRunV2JobTcpSocket? tcpSocket;

  Map<String, Object?> encode() => {
    'failure_threshold': ?failureThreshold?.toTfJson(),
    'initial_delay_seconds': ?initialDelaySeconds?.toTfJson(),
    'period_seconds': ?periodSeconds?.toTfJson(),
    'timeout_seconds': ?timeoutSeconds?.toTfJson(),
    'grpc': ?grpc?.encode(),
    'http_get': ?httpGet?.encode(),
    'tcp_socket': ?tcpSocket?.encode(),
  };
}

/// Typed helper for the `template.template.containers.startup_probe.grpc` block of
/// `google_cloud_run_v2_job` (derived from provider schema).
@immutable
final class CloudRunV2JobGrpc {
  const CloudRunV2JobGrpc({this.port, this.service});

  final TfArg<num>? port;

  final TfArg<String>? service;

  Map<String, Object?> encode() => {
    'port': ?port?.toTfJson(),
    'service': ?service?.toTfJson(),
  };
}

/// Typed helper for the `template.template.containers.startup_probe.http_get` block of
/// `google_cloud_run_v2_job` (derived from provider schema).
@immutable
final class CloudRunV2JobHttpGet {
  const CloudRunV2JobHttpGet({this.path, this.port, this.httpHeaders});

  final TfArg<String>? path;

  final TfArg<num>? port;

  final List<CloudRunV2JobHttpHeaders>? httpHeaders;

  Map<String, Object?> encode() => {
    'path': ?path?.toTfJson(),
    'port': ?port?.toTfJson(),
    if (httpHeaders != null)
      'http_headers': [for (final e in httpHeaders!) e.encode()],
  };
}

/// Typed helper for the `template.template.containers.startup_probe.http_get.http_headers` block of
/// `google_cloud_run_v2_job` (derived from provider schema).
@immutable
final class CloudRunV2JobHttpHeaders {
  const CloudRunV2JobHttpHeaders({required this.name, this.value});

  final TfArg<String> name;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `template.template.containers.startup_probe.tcp_socket` block of
/// `google_cloud_run_v2_job` (derived from provider schema).
@immutable
final class CloudRunV2JobTcpSocket {
  const CloudRunV2JobTcpSocket({this.port});

  final TfArg<num>? port;

  Map<String, Object?> encode() => {'port': ?port?.toTfJson()};
}

/// Typed helper for the `template.template.containers.volume_mounts` block of
/// `google_cloud_run_v2_job` (derived from provider schema).
@immutable
final class CloudRunV2JobVolumeMounts {
  const CloudRunV2JobVolumeMounts({
    required this.mountPath,
    required this.name,
    this.subPath,
  });

  final TfArg<String> mountPath;

  final TfArg<String> name;

  final TfArg<String>? subPath;

  Map<String, Object?> encode() => {
    'mount_path': mountPath.toTfJson(),
    'name': name.toTfJson(),
    'sub_path': ?subPath?.toTfJson(),
  };
}

/// Typed helper for the `template.template.node_selector` block of
/// `google_cloud_run_v2_job` (derived from provider schema).
@immutable
final class CloudRunV2JobNodeSelector {
  const CloudRunV2JobNodeSelector({required this.accelerator});

  final TfArg<String> accelerator;

  Map<String, Object?> encode() => {'accelerator': accelerator.toTfJson()};
}

/// Typed helper for the `template.template.volumes` block of
/// `google_cloud_run_v2_job` (derived from provider schema).
@immutable
final class CloudRunV2JobVolumes {
  const CloudRunV2JobVolumes({required this.name, required this.source});

  final TfArg<String> name;

  final CloudRunV2JobSource source;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    ...source.encode(),
  };
}

/// Exactly one of `cloud_sql_instance`, `empty_dir`, `gcs`, `nfs`, `secret` on the `template.template.volumes` block of `google_cloud_run_v2_job`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.cloudSqlInstance(...)`.
sealed class CloudRunV2JobSource {
  const CloudRunV2JobSource();

  /// Sets `cloud_sql_instance`.
  const factory CloudRunV2JobSource.cloudSqlInstance(
    CloudRunV2JobCloudSqlInstance cloudSqlInstance,
  ) = CloudRunV2JobSourceCloudSqlInstance;

  /// Sets `empty_dir`.
  const factory CloudRunV2JobSource.emptyDir(CloudRunV2JobEmptyDir emptyDir) =
      CloudRunV2JobSourceEmptyDir;

  /// Sets `gcs`.
  const factory CloudRunV2JobSource.gcs(CloudRunV2JobGcs gcs) =
      CloudRunV2JobSourceGcs;

  /// Sets `nfs`.
  const factory CloudRunV2JobSource.nfs(CloudRunV2JobNfs nfs) =
      CloudRunV2JobSourceNfs;

  /// Sets `secret`.
  const factory CloudRunV2JobSource.secret(CloudRunV2JobSecret secret) =
      CloudRunV2JobSourceSecret;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [CloudRunV2JobSource.cloudSqlInstance] choice: sets `cloud_sql_instance`.
final class CloudRunV2JobSourceCloudSqlInstance extends CloudRunV2JobSource {
  const CloudRunV2JobSourceCloudSqlInstance(this.cloudSqlInstance);

  final CloudRunV2JobCloudSqlInstance cloudSqlInstance;

  @override
  String get blockKey => 'cloud_sql_instance';

  @override
  Map<String, Object?> encode() => {
    'cloud_sql_instance': cloudSqlInstance.encode(),
  };
}

/// The [CloudRunV2JobSource.emptyDir] choice: sets `empty_dir`.
final class CloudRunV2JobSourceEmptyDir extends CloudRunV2JobSource {
  const CloudRunV2JobSourceEmptyDir(this.emptyDir);

  final CloudRunV2JobEmptyDir emptyDir;

  @override
  String get blockKey => 'empty_dir';

  @override
  Map<String, Object?> encode() => {'empty_dir': emptyDir.encode()};
}

/// The [CloudRunV2JobSource.gcs] choice: sets `gcs`.
final class CloudRunV2JobSourceGcs extends CloudRunV2JobSource {
  const CloudRunV2JobSourceGcs(this.gcs);

  final CloudRunV2JobGcs gcs;

  @override
  String get blockKey => 'gcs';

  @override
  Map<String, Object?> encode() => {'gcs': gcs.encode()};
}

/// The [CloudRunV2JobSource.nfs] choice: sets `nfs`.
final class CloudRunV2JobSourceNfs extends CloudRunV2JobSource {
  const CloudRunV2JobSourceNfs(this.nfs);

  final CloudRunV2JobNfs nfs;

  @override
  String get blockKey => 'nfs';

  @override
  Map<String, Object?> encode() => {'nfs': nfs.encode()};
}

/// The [CloudRunV2JobSource.secret] choice: sets `secret`.
final class CloudRunV2JobSourceSecret extends CloudRunV2JobSource {
  const CloudRunV2JobSourceSecret(this.secret);

  final CloudRunV2JobSecret secret;

  @override
  String get blockKey => 'secret';

  @override
  Map<String, Object?> encode() => {'secret': secret.encode()};
}

/// Typed helper for the `template.template.volumes.cloud_sql_instance` block of
/// `google_cloud_run_v2_job` (derived from provider schema).
@immutable
final class CloudRunV2JobCloudSqlInstance {
  const CloudRunV2JobCloudSqlInstance({this.instances});

  final TfArg<List<String>>? instances;

  Map<String, Object?> encode() => {'instances': ?instances?.toTfJson()};
}

/// Typed helper for the `template.template.volumes.empty_dir` block of
/// `google_cloud_run_v2_job` (derived from provider schema).
@immutable
final class CloudRunV2JobEmptyDir {
  const CloudRunV2JobEmptyDir({this.medium, this.sizeLimit});

  final TfArg<CloudRunV2JobEmptyDirMedium>? medium;

  final TfArg<String>? sizeLimit;

  Map<String, Object?> encode() => {
    'medium': ?medium?.toTfJson(),
    'size_limit': ?sizeLimit?.toTfJson(),
  };
}

/// Typed helper for the `template.template.volumes.gcs` block of
/// `google_cloud_run_v2_job` (derived from provider schema).
@immutable
final class CloudRunV2JobGcs {
  const CloudRunV2JobGcs({
    required this.bucket,
    this.mountOptions,
    this.readOnly,
  });

  final RefTo<GoogleStorageBucket> bucket;

  final TfArg<List<String>>? mountOptions;

  final TfArg<bool>? readOnly;

  Map<String, Object?> encode() => {
    'bucket': bucket.encodeAs('name').toTfJson(),
    'mount_options': ?mountOptions?.toTfJson(),
    'read_only': ?readOnly?.toTfJson(),
  };
}

/// Typed helper for the `template.template.volumes.nfs` block of
/// `google_cloud_run_v2_job` (derived from provider schema).
@immutable
final class CloudRunV2JobNfs {
  const CloudRunV2JobNfs({this.path, this.readOnly, required this.server});

  final TfArg<String>? path;

  final TfArg<bool>? readOnly;

  final TfArg<String> server;

  Map<String, Object?> encode() => {
    'path': ?path?.toTfJson(),
    'read_only': ?readOnly?.toTfJson(),
    'server': server.toTfJson(),
  };
}

/// Typed helper for the `template.template.volumes.secret` block of
/// `google_cloud_run_v2_job` (derived from provider schema).
@immutable
final class CloudRunV2JobSecret {
  const CloudRunV2JobSecret({
    this.defaultMode,
    required this.secret,
    this.items,
  });

  final TfArg<num>? defaultMode;

  final RefTo<GoogleSecretManagerSecret> secret;

  final List<CloudRunV2JobItems>? items;

  Map<String, Object?> encode() => {
    'default_mode': ?defaultMode?.toTfJson(),
    'secret': secret.encodeAs('id').toTfJson(),
    if (items != null) 'items': [for (final e in items!) e.encode()],
  };
}

/// Typed helper for the `template.template.volumes.secret.items` block of
/// `google_cloud_run_v2_job` (derived from provider schema).
@immutable
final class CloudRunV2JobItems {
  const CloudRunV2JobItems({
    this.mode,
    required this.path,
    required this.version,
  });

  final TfArg<num>? mode;

  final TfArg<String> path;

  final TfArg<String> version;

  Map<String, Object?> encode() => {
    'mode': ?mode?.toTfJson(),
    'path': path.toTfJson(),
    'version': version.toTfJson(),
  };
}

/// Typed helper for the `template.template.vpc_access` block of
/// `google_cloud_run_v2_job` (derived from provider schema).
@immutable
final class CloudRunV2JobVpcAccess {
  const CloudRunV2JobVpcAccess({
    this.connector,
    this.egress,
    this.networkInterfaces,
  });

  final TfArg<String>? connector;

  final TfArg<CloudRunV2JobVpcAccessEgress>? egress;

  final List<CloudRunV2JobNetworkInterfaces>? networkInterfaces;

  Map<String, Object?> encode() => {
    'connector': ?connector?.toTfJson(),
    'egress': ?egress?.toTfJson(),
    if (networkInterfaces != null)
      'network_interfaces': [for (final e in networkInterfaces!) e.encode()],
  };
}

/// Typed helper for the `template.template.vpc_access.network_interfaces` block of
/// `google_cloud_run_v2_job` (derived from provider schema).
@immutable
final class CloudRunV2JobNetworkInterfaces {
  const CloudRunV2JobNetworkInterfaces({
    this.network,
    this.subnetwork,
    this.tags,
  });

  final RefTo<GoogleComputeNetwork>? network;

  final RefTo<GoogleComputeSubnetwork>? subnetwork;

  final TfArg<List<String>>? tags;

  Map<String, Object?> encode() => {
    'network': ?network?.encodeAs('id').toTfJson(),
    'subnetwork': ?subnetwork?.encodeAs('id').toTfJson(),
    'tags': ?tags?.toTfJson(),
  };
}

/// Factory wrapper for `google_cloud_run_v2_job`.
///
/// A Cloud Run Job resource that references a container image which is run to
/// completion.
///
/// Example (minimal one-shot batch job):
/// ```dart
/// final etl = GoogleCloudRunV2Job(
///   localName: 'etl',
///   name: .literal('nightly-etl'),
///   location: .literal('asia-northeast1'),
///   template: CloudRunV2JobTemplate(
///     template: CloudRunV2JobTemplateTemplate(
///       containers: [
///         CloudRunV2JobContainers(
///           image: .literal('gcr.io/p/etl:v1'),
///         ),
///       ],
///     ),
///   ),
/// );
/// ```
final class GoogleCloudRunV2Job extends Resource {
  static const String tfType = 'google_cloud_run_v2_job';

  GoogleCloudRunV2Job({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    required CloudRunV2JobTemplate template,
    CloudRunV2JobBinaryAuthorization? binaryAuthorization,
    TfArg<CloudRunV2JobLaunchStage>? launchStage,
    TfArg<Map<String, String>>? labels,
    TfArg<Map<String, String>>? annotations,
    TfArg<String>? client,
    TfArg<String>? clientVersion,
    TfArg<bool>? deletionProtection,
    TfArg<String>? project,
    CloudRunV2JobExecutionToken? executionToken,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'template': TfArg.literal(template.encode()),
           if (binaryAuthorization != null)
             'binary_authorization': TfArg.literal(
               binaryAuthorization.encode(),
             ),
           'launch_stage': ?launchStage,
           'labels': ?labels,
           'annotations': ?annotations,
           'client': ?client,
           'client_version': ?clientVersion,
           'deletion_protection': ?deletionProtection,
           'project': ?project,
           ...?executionToken?.argMap,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCloudRunV2JobSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleCloudRunV2Job>`.
  RefTo<GoogleCloudRunV2Job> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `conditions` attribute.
  TfRef<List<Map<String, Object?>>> get conditions =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'conditions');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `creator` attribute.
  TfRef<String> get creator => TfRef.attribute<String>(this, 'creator');

  /// Reference to `delete_time` attribute.
  TfRef<String> get deleteTime => TfRef.attribute<String>(this, 'delete_time');

  /// Reference to `effective_annotations` attribute.
  TfRef<Map<String, String>> get effectiveAnnotations =>
      TfRef.attribute<Map<String, String>>(this, 'effective_annotations');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `expire_time` attribute.
  TfRef<String> get expireTime => TfRef.attribute<String>(this, 'expire_time');

  /// Reference to `generation` attribute.
  TfRef<String> get generation => TfRef.attribute<String>(this, 'generation');

  /// Reference to `last_modifier` attribute.
  TfRef<String> get lastModifier =>
      TfRef.attribute<String>(this, 'last_modifier');

  /// Reference to `observed_generation` attribute.
  TfRef<String> get observedGeneration =>
      TfRef.attribute<String>(this, 'observed_generation');

  /// Reference to `reconciling` attribute.
  TfRef<bool> get reconciling => TfRef.attribute<bool>(this, 'reconciling');

  /// Reference to `terminal_condition` attribute.
  TfRef<List<Map<String, Object?>>> get terminalCondition =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'terminal_condition');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `annotations` attribute.
  TfRef<Map<String, String>> get annotationsRef =>
      TfRef.attribute<Map<String, String>>(this, 'annotations');

  /// Reference to `client` attribute.
  TfRef<String> get clientRef => TfRef.attribute<String>(this, 'client');

  /// Reference to `client_version` attribute.
  TfRef<String> get clientVersionRef =>
      TfRef.attribute<String>(this, 'client_version');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deletion_protection` attribute.
  TfRef<bool> get deletionProtectionRef =>
      TfRef.attribute<bool>(this, 'deletion_protection');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `launch_stage` attribute.
  TfRef<String> get launchStageRef =>
      TfRef.attribute<String>(this, 'launch_stage');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `run_execution_token` attribute.
  TfRef<String> get runExecutionTokenRef =>
      TfRef.attribute<String>(this, 'run_execution_token');

  /// Reference to `start_execution_token` attribute.
  TfRef<String> get startExecutionTokenRef =>
      TfRef.attribute<String>(this, 'start_execution_token');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `execution_count` — total number of executions that
  /// have ever run. Kept (not derived) to preserve the `int` type; the
  /// schema's `number` would widen the derived getter to `TfRef<num>`.
  TfRef<int> get executionCount =>
      TfRef.attribute<int>(this, 'execution_count');

  /// Reference to `latest_created_execution` — `{name, create_time,
  /// completion_time}` triple for the most recently created execution.
  /// Kept (not derived) to preserve the `List<Object?>` element type.
  TfRef<List<Object?>> get latestCreatedExecution =>
      TfRef.attribute<List<Object?>>(this, 'latest_created_execution');

  /// Reference to `location` attribute — region the job is deployed in.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');
}
