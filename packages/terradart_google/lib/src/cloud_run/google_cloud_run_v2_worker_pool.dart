// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_google/src/cloud_run/google_cloud_run_v2_service.dart'
    show EmptyDirMedium, ScalingMode;
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;
import '../compute/google_compute_subnetwork.dart' show GoogleComputeSubnetwork;
import '../iam/google_service_account.dart' show GoogleServiceAccount;
import '../secret_manager/google_secret_manager_secret.dart'
    show GoogleSecretManagerSecret;
import '../storage/google_storage_bucket.dart' show GoogleStorageBucket;

/// Sensitive field paths for `google_cloud_run_v2_worker_pool`.
const Set<String> _googleCloudRunV2WorkerPoolSensitive = <String>{};

/// Launch stage for `google_cloud_run_v2_worker_pool.launch_stage`. Shares
/// Terraform values with [LaunchStage] / [CloudRunV2JobLaunchStage] but uses
/// a worker-pool-specific name so `cloud_run.dart` can export all three.
enum CloudRunV2WorkerPoolLaunchStage implements TerraformEnum {
  unimplemented('UNIMPLEMENTED'),
  prelaunch('PRELAUNCH'),
  earlyAccess('EARLY_ACCESS'),
  alpha('ALPHA'),
  beta('BETA'),
  ga('GA'),
  deprecatedStage('DEPRECATED');

  const CloudRunV2WorkerPoolLaunchStage(this.terraformValue);
  @override
  final String terraformValue;
}

enum CloudRunV2WorkerPoolInstanceSplitType implements TerraformEnum {
  latest('INSTANCE_SPLIT_ALLOCATION_TYPE_LATEST'),
  revision('INSTANCE_SPLIT_ALLOCATION_TYPE_REVISION');

  const CloudRunV2WorkerPoolInstanceSplitType(this.terraformValue);
  @override
  final String terraformValue;
}

enum CloudRunV2WorkerPoolEncryptionKeyRevocationAction
    implements TerraformEnum {
  preventNew('PREVENT_NEW'),
  shutdown('SHUTDOWN');

  const CloudRunV2WorkerPoolEncryptionKeyRevocationAction(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `binary_authorization` block of
/// `google_cloud_run_v2_worker_pool` (derived from provider schema).
@immutable
final class CloudRunV2WorkerPoolBinaryAuthorization {
  const CloudRunV2WorkerPoolBinaryAuthorization({
    this.breakglassJustification,
    this.policy,
  });

  final TfArg<String>? breakglassJustification;

  final CloudRunV2WorkerPoolPolicy? policy;

  Map<String, Object?> encode() => {
    'breakglass_justification': ?breakglassJustification?.toTfJson(),
    ...?policy?.encode(),
  };
}

/// At most one of `use_default`, `policy` on the `binary_authorization` block of `google_cloud_run_v2_worker_pool`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.useDefault(...)`.
sealed class CloudRunV2WorkerPoolPolicy {
  const CloudRunV2WorkerPoolPolicy();

  /// Sets `use_default`.
  const factory CloudRunV2WorkerPoolPolicy.useDefault(TfArg<bool> useDefault) =
      CloudRunV2WorkerPoolPolicyUseDefault;

  /// Sets `policy`.
  const factory CloudRunV2WorkerPoolPolicy.policy(TfArg<String> policy) =
      CloudRunV2WorkerPoolPolicyChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [CloudRunV2WorkerPoolPolicy.useDefault] choice: sets `use_default`.
final class CloudRunV2WorkerPoolPolicyUseDefault
    extends CloudRunV2WorkerPoolPolicy {
  const CloudRunV2WorkerPoolPolicyUseDefault(this.useDefault);

  final TfArg<bool> useDefault;

  @override
  String get blockKey => 'use_default';

  @override
  Map<String, Object?> encode() => {'use_default': useDefault.toTfJson()};
}

/// The [CloudRunV2WorkerPoolPolicy.policy] choice: sets `policy`.
final class CloudRunV2WorkerPoolPolicyChoice
    extends CloudRunV2WorkerPoolPolicy {
  const CloudRunV2WorkerPoolPolicyChoice(this.policy);

  final TfArg<String> policy;

  @override
  String get blockKey => 'policy';

  @override
  Map<String, Object?> encode() => {'policy': policy.toTfJson()};
}

/// Typed helper for the `instance_splits` block of
/// `google_cloud_run_v2_worker_pool` (derived from provider schema).
@immutable
final class CloudRunV2WorkerPoolInstanceSplits {
  const CloudRunV2WorkerPoolInstanceSplits({
    this.percent,
    this.revision,
    this.type,
  });

  final TfArg<num>? percent;

  final TfArg<String>? revision;

  final TfArg<CloudRunV2WorkerPoolInstanceSplitType>? type;

  Map<String, Object?> encode() => {
    'percent': ?percent?.toTfJson(),
    'revision': ?revision?.toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// Typed helper for the `scaling` block of
/// `google_cloud_run_v2_worker_pool` (derived from provider schema).
@immutable
final class CloudRunV2WorkerPoolScaling {
  const CloudRunV2WorkerPoolScaling({
    this.manualInstanceCount,
    this.maxInstanceCount,
    this.minInstanceCount,
    this.scalingMode,
  });

  final TfArg<num>? manualInstanceCount;

  final TfArg<num>? maxInstanceCount;

  final TfArg<num>? minInstanceCount;

  final TfArg<ScalingMode>? scalingMode;

  Map<String, Object?> encode() => {
    'manual_instance_count': ?manualInstanceCount?.toTfJson(),
    'max_instance_count': ?maxInstanceCount?.toTfJson(),
    'min_instance_count': ?minInstanceCount?.toTfJson(),
    'scaling_mode': ?scalingMode?.toTfJson(),
  };
}

/// Typed helper for the `template` block of
/// `google_cloud_run_v2_worker_pool` (derived from provider schema).
@immutable
final class CloudRunV2WorkerPoolTemplate {
  const CloudRunV2WorkerPoolTemplate({
    this.annotations,
    this.client,
    this.clientVersion,
    this.encryptionKey,
    this.encryptionKeyRevocationAction,
    this.encryptionKeyShutdownDuration,
    this.gpuZonalRedundancyDisabled,
    this.labels,
    this.revision,
    this.serviceAccount,
    this.containers,
    this.nodeSelector,
    this.volumes,
    this.vpcAccess,
  });

  final TfArg<Map<String, String>>? annotations;

  final TfArg<String>? client;

  final TfArg<String>? clientVersion;

  final TfArg<String>? encryptionKey;

  final TfArg<CloudRunV2WorkerPoolEncryptionKeyRevocationAction>?
  encryptionKeyRevocationAction;

  final TfArg<String>? encryptionKeyShutdownDuration;

  final TfArg<bool>? gpuZonalRedundancyDisabled;

  final TfArg<Map<String, String>>? labels;

  final TfArg<String>? revision;

  final RefTo<GoogleServiceAccount>? serviceAccount;

  final List<CloudRunV2WorkerPoolContainers>? containers;

  final CloudRunV2WorkerPoolNodeSelector? nodeSelector;

  final List<CloudRunV2WorkerPoolVolumes>? volumes;

  final CloudRunV2WorkerPoolVpcAccess? vpcAccess;

  Map<String, Object?> encode() => {
    'annotations': ?annotations?.toTfJson(),
    'client': ?client?.toTfJson(),
    'client_version': ?clientVersion?.toTfJson(),
    'encryption_key': ?encryptionKey?.toTfJson(),
    'encryption_key_revocation_action': ?encryptionKeyRevocationAction
        ?.toTfJson(),
    'encryption_key_shutdown_duration': ?encryptionKeyShutdownDuration
        ?.toTfJson(),
    'gpu_zonal_redundancy_disabled': ?gpuZonalRedundancyDisabled?.toTfJson(),
    'labels': ?labels?.toTfJson(),
    'revision': ?revision?.toTfJson(),
    'service_account': ?serviceAccount?.encodeAs('email').toTfJson(),
    if (containers != null)
      'containers': [for (final e in containers!) e.encode()],
    'node_selector': ?nodeSelector?.encode(),
    if (volumes != null) 'volumes': [for (final e in volumes!) e.encode()],
    'vpc_access': ?vpcAccess?.encode(),
  };
}

/// Typed helper for the `template.containers` block of
/// `google_cloud_run_v2_worker_pool` (derived from provider schema).
@immutable
final class CloudRunV2WorkerPoolContainers {
  const CloudRunV2WorkerPoolContainers({
    this.args,
    this.command,
    this.dependsOn,
    required this.image,
    this.name,
    this.sandboxLauncher,
    this.workingDir,
    this.env,
    this.livenessProbe,
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

  final List<CloudRunV2WorkerPoolEnv>? env;

  final CloudRunV2WorkerPoolLivenessProbe? livenessProbe;

  final CloudRunV2WorkerPoolResources? resources;

  final CloudRunV2WorkerPoolStartupProbe? startupProbe;

  final List<CloudRunV2WorkerPoolVolumeMounts>? volumeMounts;

  Map<String, Object?> encode() => {
    'args': ?args?.toTfJson(),
    'command': ?command?.toTfJson(),
    'depends_on': ?dependsOn?.toTfJson(),
    'image': image.toTfJson(),
    'name': ?name?.toTfJson(),
    'sandbox_launcher': ?sandboxLauncher?.toTfJson(),
    'working_dir': ?workingDir?.toTfJson(),
    if (env != null) 'env': [for (final e in env!) e.encode()],
    'liveness_probe': ?livenessProbe?.encode(),
    'resources': ?resources?.encode(),
    'startup_probe': ?startupProbe?.encode(),
    if (volumeMounts != null)
      'volume_mounts': [for (final e in volumeMounts!) e.encode()],
  };
}

/// Typed helper for the `template.containers.env` block of
/// `google_cloud_run_v2_worker_pool` (derived from provider schema).
@immutable
final class CloudRunV2WorkerPoolEnv {
  const CloudRunV2WorkerPoolEnv({required this.name, required this.source});

  final TfArg<String> name;

  final CloudRunV2WorkerPoolEnvSource source;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    ...source.encode(),
  };
}

/// Exactly one of `value`, `value_source` on the `template.containers.env` block of `google_cloud_run_v2_worker_pool`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.value(...)`.
sealed class CloudRunV2WorkerPoolEnvSource {
  const CloudRunV2WorkerPoolEnvSource();

  /// Sets `value`.
  const factory CloudRunV2WorkerPoolEnvSource.value(TfArg<String> value) =
      CloudRunV2WorkerPoolEnvSourceValue;

  /// Sets `value_source`.
  const factory CloudRunV2WorkerPoolEnvSource.valueSource(
    CloudRunV2WorkerPoolValueSource valueSource,
  ) = CloudRunV2WorkerPoolEnvValueSource;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [CloudRunV2WorkerPoolEnvSource.value] choice: sets `value`.
final class CloudRunV2WorkerPoolEnvSourceValue
    extends CloudRunV2WorkerPoolEnvSource {
  const CloudRunV2WorkerPoolEnvSourceValue(this.value);

  final TfArg<String> value;

  @override
  String get blockKey => 'value';

  @override
  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// The [CloudRunV2WorkerPoolEnvSource.valueSource] choice: sets `value_source`.
final class CloudRunV2WorkerPoolEnvValueSource
    extends CloudRunV2WorkerPoolEnvSource {
  const CloudRunV2WorkerPoolEnvValueSource(this.valueSource);

  final CloudRunV2WorkerPoolValueSource valueSource;

  @override
  String get blockKey => 'value_source';

  @override
  Map<String, Object?> encode() => {'value_source': valueSource.encode()};
}

/// Typed helper for the `template.containers.env.value_source` block of
/// `google_cloud_run_v2_worker_pool` (derived from provider schema).
@immutable
final class CloudRunV2WorkerPoolValueSource {
  const CloudRunV2WorkerPoolValueSource({this.secretKeyRef});

  final CloudRunV2WorkerPoolSecretKeyRef? secretKeyRef;

  Map<String, Object?> encode() => {'secret_key_ref': ?secretKeyRef?.encode()};
}

/// Typed helper for the `template.containers.env.value_source.secret_key_ref` block of
/// `google_cloud_run_v2_worker_pool` (derived from provider schema).
@immutable
final class CloudRunV2WorkerPoolSecretKeyRef {
  const CloudRunV2WorkerPoolSecretKeyRef({required this.secret, this.version});

  final RefTo<GoogleSecretManagerSecret> secret;

  final TfArg<String>? version;

  Map<String, Object?> encode() => {
    'secret': secret.encodeAs('id').toTfJson(),
    'version': ?version?.toTfJson(),
  };
}

/// Typed helper for the `template.containers.liveness_probe` block of
/// `google_cloud_run_v2_worker_pool` (derived from provider schema).
@immutable
final class CloudRunV2WorkerPoolLivenessProbe {
  const CloudRunV2WorkerPoolLivenessProbe({
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

  final CloudRunV2WorkerPoolGrpc? grpc;

  final CloudRunV2WorkerPoolHttpGet? httpGet;

  final CloudRunV2WorkerPoolTcpSocket? tcpSocket;

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

/// Typed helper for the `template.containers.liveness_probe.grpc` block of
/// `google_cloud_run_v2_worker_pool` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CloudRunV2WorkerPoolGrpc {
  const CloudRunV2WorkerPoolGrpc({this.port, this.service});

  final TfArg<num>? port;

  final TfArg<String>? service;

  Map<String, Object?> encode() => {
    'port': ?port?.toTfJson(),
    'service': ?service?.toTfJson(),
  };
}

/// Typed helper for the `template.containers.liveness_probe.http_get` block of
/// `google_cloud_run_v2_worker_pool` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CloudRunV2WorkerPoolHttpGet {
  const CloudRunV2WorkerPoolHttpGet({this.path, this.port, this.httpHeaders});

  final TfArg<String>? path;

  final TfArg<num>? port;

  final List<CloudRunV2WorkerPoolHttpHeaders>? httpHeaders;

  Map<String, Object?> encode() => {
    'path': ?path?.toTfJson(),
    'port': ?port?.toTfJson(),
    if (httpHeaders != null)
      'http_headers': [for (final e in httpHeaders!) e.encode()],
  };
}

/// Typed helper for the `template.containers.liveness_probe.http_get.http_headers` block of
/// `google_cloud_run_v2_worker_pool` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CloudRunV2WorkerPoolHttpHeaders {
  const CloudRunV2WorkerPoolHttpHeaders({required this.name, this.value});

  final TfArg<String> name;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `template.containers.liveness_probe.tcp_socket` block of
/// `google_cloud_run_v2_worker_pool` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CloudRunV2WorkerPoolTcpSocket {
  const CloudRunV2WorkerPoolTcpSocket({this.port});

  final TfArg<num>? port;

  Map<String, Object?> encode() => {'port': ?port?.toTfJson()};
}

/// Typed helper for the `template.containers.resources` block of
/// `google_cloud_run_v2_worker_pool` (derived from provider schema).
@immutable
final class CloudRunV2WorkerPoolResources {
  const CloudRunV2WorkerPoolResources({this.limits});

  final TfArg<Map<String, String>>? limits;

  Map<String, Object?> encode() => {'limits': ?limits?.toTfJson()};
}

/// Typed helper for the `template.containers.startup_probe` block of
/// `google_cloud_run_v2_worker_pool` (derived from provider schema).
@immutable
final class CloudRunV2WorkerPoolStartupProbe {
  const CloudRunV2WorkerPoolStartupProbe({
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

  final CloudRunV2WorkerPoolGrpc? grpc;

  final CloudRunV2WorkerPoolHttpGet? httpGet;

  final CloudRunV2WorkerPoolTcpSocket? tcpSocket;

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

/// Typed helper for the `template.containers.volume_mounts` block of
/// `google_cloud_run_v2_worker_pool` (derived from provider schema).
@immutable
final class CloudRunV2WorkerPoolVolumeMounts {
  const CloudRunV2WorkerPoolVolumeMounts({
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

/// Typed helper for the `template.node_selector` block of
/// `google_cloud_run_v2_worker_pool` (derived from provider schema).
@immutable
final class CloudRunV2WorkerPoolNodeSelector {
  const CloudRunV2WorkerPoolNodeSelector({required this.accelerator});

  final TfArg<String> accelerator;

  Map<String, Object?> encode() => {'accelerator': accelerator.toTfJson()};
}

/// Typed helper for the `template.volumes` block of
/// `google_cloud_run_v2_worker_pool` (derived from provider schema).
@immutable
final class CloudRunV2WorkerPoolVolumes {
  const CloudRunV2WorkerPoolVolumes({required this.name, required this.source});

  final TfArg<String> name;

  final CloudRunV2WorkerPoolSource source;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    ...source.encode(),
  };
}

/// Exactly one of `cloud_sql_instance`, `empty_dir`, `gcs`, `nfs`, `secret` on the `template.volumes` block of `google_cloud_run_v2_worker_pool`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.cloudSqlInstance(...)`.
sealed class CloudRunV2WorkerPoolSource {
  const CloudRunV2WorkerPoolSource();

  /// Sets `cloud_sql_instance`.
  const factory CloudRunV2WorkerPoolSource.cloudSqlInstance(
    CloudRunV2WorkerPoolCloudSqlInstance cloudSqlInstance,
  ) = CloudRunV2WorkerPoolSourceCloudSqlInstance;

  /// Sets `empty_dir`.
  const factory CloudRunV2WorkerPoolSource.emptyDir(
    CloudRunV2WorkerPoolEmptyDir emptyDir,
  ) = CloudRunV2WorkerPoolSourceEmptyDir;

  /// Sets `gcs`.
  const factory CloudRunV2WorkerPoolSource.gcs(CloudRunV2WorkerPoolGcs gcs) =
      CloudRunV2WorkerPoolSourceGcs;

  /// Sets `nfs`.
  const factory CloudRunV2WorkerPoolSource.nfs(CloudRunV2WorkerPoolNfs nfs) =
      CloudRunV2WorkerPoolSourceNfs;

  /// Sets `secret`.
  const factory CloudRunV2WorkerPoolSource.secret(
    CloudRunV2WorkerPoolSecret secret,
  ) = CloudRunV2WorkerPoolSourceSecret;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [CloudRunV2WorkerPoolSource.cloudSqlInstance] choice: sets `cloud_sql_instance`.
final class CloudRunV2WorkerPoolSourceCloudSqlInstance
    extends CloudRunV2WorkerPoolSource {
  const CloudRunV2WorkerPoolSourceCloudSqlInstance(this.cloudSqlInstance);

  final CloudRunV2WorkerPoolCloudSqlInstance cloudSqlInstance;

  @override
  String get blockKey => 'cloud_sql_instance';

  @override
  Map<String, Object?> encode() => {
    'cloud_sql_instance': cloudSqlInstance.encode(),
  };
}

/// The [CloudRunV2WorkerPoolSource.emptyDir] choice: sets `empty_dir`.
final class CloudRunV2WorkerPoolSourceEmptyDir
    extends CloudRunV2WorkerPoolSource {
  const CloudRunV2WorkerPoolSourceEmptyDir(this.emptyDir);

  final CloudRunV2WorkerPoolEmptyDir emptyDir;

  @override
  String get blockKey => 'empty_dir';

  @override
  Map<String, Object?> encode() => {'empty_dir': emptyDir.encode()};
}

/// The [CloudRunV2WorkerPoolSource.gcs] choice: sets `gcs`.
final class CloudRunV2WorkerPoolSourceGcs extends CloudRunV2WorkerPoolSource {
  const CloudRunV2WorkerPoolSourceGcs(this.gcs);

  final CloudRunV2WorkerPoolGcs gcs;

  @override
  String get blockKey => 'gcs';

  @override
  Map<String, Object?> encode() => {'gcs': gcs.encode()};
}

/// The [CloudRunV2WorkerPoolSource.nfs] choice: sets `nfs`.
final class CloudRunV2WorkerPoolSourceNfs extends CloudRunV2WorkerPoolSource {
  const CloudRunV2WorkerPoolSourceNfs(this.nfs);

  final CloudRunV2WorkerPoolNfs nfs;

  @override
  String get blockKey => 'nfs';

  @override
  Map<String, Object?> encode() => {'nfs': nfs.encode()};
}

/// The [CloudRunV2WorkerPoolSource.secret] choice: sets `secret`.
final class CloudRunV2WorkerPoolSourceSecret
    extends CloudRunV2WorkerPoolSource {
  const CloudRunV2WorkerPoolSourceSecret(this.secret);

  final CloudRunV2WorkerPoolSecret secret;

  @override
  String get blockKey => 'secret';

  @override
  Map<String, Object?> encode() => {'secret': secret.encode()};
}

/// Typed helper for the `template.volumes.cloud_sql_instance` block of
/// `google_cloud_run_v2_worker_pool` (derived from provider schema).
@immutable
final class CloudRunV2WorkerPoolCloudSqlInstance {
  const CloudRunV2WorkerPoolCloudSqlInstance({this.instances});

  final TfArg<List<String>>? instances;

  Map<String, Object?> encode() => {'instances': ?instances?.toTfJson()};
}

/// Typed helper for the `template.volumes.empty_dir` block of
/// `google_cloud_run_v2_worker_pool` (derived from provider schema).
@immutable
final class CloudRunV2WorkerPoolEmptyDir {
  const CloudRunV2WorkerPoolEmptyDir({this.medium, this.sizeLimit});

  final TfArg<EmptyDirMedium>? medium;

  final TfArg<String>? sizeLimit;

  Map<String, Object?> encode() => {
    'medium': ?medium?.toTfJson(),
    'size_limit': ?sizeLimit?.toTfJson(),
  };
}

/// Typed helper for the `template.volumes.gcs` block of
/// `google_cloud_run_v2_worker_pool` (derived from provider schema).
@immutable
final class CloudRunV2WorkerPoolGcs {
  const CloudRunV2WorkerPoolGcs({
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

/// Typed helper for the `template.volumes.nfs` block of
/// `google_cloud_run_v2_worker_pool` (derived from provider schema).
@immutable
final class CloudRunV2WorkerPoolNfs {
  const CloudRunV2WorkerPoolNfs({
    required this.path,
    this.readOnly,
    required this.server,
  });

  final TfArg<String> path;

  final TfArg<bool>? readOnly;

  final TfArg<String> server;

  Map<String, Object?> encode() => {
    'path': path.toTfJson(),
    'read_only': ?readOnly?.toTfJson(),
    'server': server.toTfJson(),
  };
}

/// Typed helper for the `template.volumes.secret` block of
/// `google_cloud_run_v2_worker_pool` (derived from provider schema).
@immutable
final class CloudRunV2WorkerPoolSecret {
  const CloudRunV2WorkerPoolSecret({
    this.defaultMode,
    required this.secret,
    this.items,
  });

  final TfArg<num>? defaultMode;

  final RefTo<GoogleSecretManagerSecret> secret;

  final List<CloudRunV2WorkerPoolItems>? items;

  Map<String, Object?> encode() => {
    'default_mode': ?defaultMode?.toTfJson(),
    'secret': secret.encodeAs('id').toTfJson(),
    if (items != null) 'items': [for (final e in items!) e.encode()],
  };
}

/// Typed helper for the `template.volumes.secret.items` block of
/// `google_cloud_run_v2_worker_pool` (derived from provider schema).
@immutable
final class CloudRunV2WorkerPoolItems {
  const CloudRunV2WorkerPoolItems({
    this.mode,
    required this.path,
    this.version,
  });

  final TfArg<num>? mode;

  final TfArg<String> path;

  final TfArg<String>? version;

  Map<String, Object?> encode() => {
    'mode': ?mode?.toTfJson(),
    'path': path.toTfJson(),
    'version': ?version?.toTfJson(),
  };
}

/// Typed helper for the `template.vpc_access` block of
/// `google_cloud_run_v2_worker_pool` (derived from provider schema).
@immutable
final class CloudRunV2WorkerPoolVpcAccess {
  const CloudRunV2WorkerPoolVpcAccess({
    this.connector,
    this.egress,
    this.networkInterfaces,
  });

  final TfArg<String>? connector;

  final TfArg<CloudRunV2WorkerPoolEgress>? egress;

  final List<CloudRunV2WorkerPoolNetworkInterfaces>? networkInterfaces;

  Map<String, Object?> encode() => {
    'connector': ?connector?.toTfJson(),
    'egress': ?egress?.toTfJson(),
    if (networkInterfaces != null)
      'network_interfaces': [for (final e in networkInterfaces!) e.encode()],
  };
}

/// `egress` — derived from the provider schema description.
enum CloudRunV2WorkerPoolEgress implements TerraformEnum {
  allTraffic('ALL_TRAFFIC'),
  privateRangesOnly('PRIVATE_RANGES_ONLY');

  const CloudRunV2WorkerPoolEgress(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `template.vpc_access.network_interfaces` block of
/// `google_cloud_run_v2_worker_pool` (derived from provider schema).
@immutable
final class CloudRunV2WorkerPoolNetworkInterfaces {
  const CloudRunV2WorkerPoolNetworkInterfaces({
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

/// Factory wrapper for `google_cloud_run_v2_worker_pool`.
///
/// WorkerPool acts as a top-level container that manages a set of
/// configurations and revision templates which implement a pull-based workload.
/// WorkerPool exists to provide a singular abstraction which can be access
/// controlled, reasoned about, and which encapsulates software lifecycle
/// decisions such as rollout policy and team resource ownership.
final class GoogleCloudRunV2WorkerPool extends Resource {
  static const String tfType = 'google_cloud_run_v2_worker_pool';

  GoogleCloudRunV2WorkerPool({
    required super.localName,
    TfArg<Map<String, String>>? annotations,
    TfArg<String>? client,
    TfArg<String>? clientVersion,
    TfArg<bool>? deletionProtection,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    TfArg<CloudRunV2WorkerPoolLaunchStage>? launchStage,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<String>? project,
    CloudRunV2WorkerPoolBinaryAuthorization? binaryAuthorization,
    List<CloudRunV2WorkerPoolInstanceSplits>? instanceSplits,
    CloudRunV2WorkerPoolScaling? scaling,
    required CloudRunV2WorkerPoolTemplate template,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'annotations': ?annotations,
           'client': ?client,
           'client_version': ?clientVersion,
           'deletion_protection': ?deletionProtection,
           'description': ?description,
           'labels': ?labels,
           'launch_stage': ?launchStage,
           'location': location,
           'name': name,
           'project': ?project,
           if (binaryAuthorization != null)
             'binary_authorization': TfArg.literal(
               binaryAuthorization.encode(),
             ),
           if (instanceSplits != null)
             'instance_splits': TfArg.literal([
               for (final e in instanceSplits) e.encode(),
             ]),
           if (scaling != null) 'scaling': TfArg.literal(scaling.encode()),
           'template': TfArg.literal(template.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCloudRunV2WorkerPoolSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleCloudRunV2WorkerPool>`.
  RefTo<GoogleCloudRunV2WorkerPool> get ref => RefTo.of(this);

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

  /// Reference to `instance_split_statuses` attribute.
  TfRef<List<Map<String, Object?>>> get instanceSplitStatuses =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'instance_split_statuses',
      );

  /// Reference to `last_modifier` attribute.
  TfRef<String> get lastModifier =>
      TfRef.attribute<String>(this, 'last_modifier');

  /// Reference to `latest_created_revision` attribute.
  TfRef<String> get latestCreatedRevision =>
      TfRef.attribute<String>(this, 'latest_created_revision');

  /// Reference to `latest_ready_revision` attribute.
  TfRef<String> get latestReadyRevision =>
      TfRef.attribute<String>(this, 'latest_ready_revision');

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

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `launch_stage` attribute.
  TfRef<String> get launchStageRef =>
      TfRef.attribute<String>(this, 'launch_stage');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');
}
