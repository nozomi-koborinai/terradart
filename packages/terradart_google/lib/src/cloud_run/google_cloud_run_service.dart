// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_cloud_run_service`.
const Set<String> _googleCloudRunServiceSensitive = <String>{};

/// Typed helper for the `metadata` block of
/// `google_cloud_run_service` (derived from provider schema).
@immutable
final class CloudRunServiceMetadata {
  const CloudRunServiceMetadata({
    this.annotations,
    this.labels,
    this.namespace,
  });

  final TfArg<Map<String, String>>? annotations;

  final TfArg<Map<String, String>>? labels;

  final TfArg<String>? namespace;

  @internal
  Map<String, Object?> encode() => {
    'annotations': ?annotations?.toTfJson(),
    'labels': ?labels?.toTfJson(),
    'namespace': ?namespace?.toTfJson(),
  };
}

/// Typed helper for the `template` block of
/// `google_cloud_run_service` (derived from provider schema).
@immutable
final class CloudRunServiceTemplate {
  const CloudRunServiceTemplate({this.metadata, this.spec});

  final CloudRunServiceTemplateMetadata? metadata;

  final CloudRunServiceSpec? spec;

  @internal
  Map<String, Object?> encode() => {
    'metadata': ?metadata?.encode(),
    'spec': ?spec?.encode(),
  };
}

/// Typed helper for the `template.metadata` block of
/// `google_cloud_run_service` (derived from provider schema).
@immutable
final class CloudRunServiceTemplateMetadata {
  const CloudRunServiceTemplateMetadata({
    this.annotations,
    this.labels,
    this.name,
    this.namespace,
  });

  final TfArg<Map<String, String>>? annotations;

  final TfArg<Map<String, String>>? labels;

  final TfArg<String>? name;

  final TfArg<String>? namespace;

  @internal
  Map<String, Object?> encode() => {
    'annotations': ?annotations?.toTfJson(),
    'labels': ?labels?.toTfJson(),
    'name': ?name?.toTfJson(),
    'namespace': ?namespace?.toTfJson(),
  };
}

/// Typed helper for the `template.spec` block of
/// `google_cloud_run_service` (derived from provider schema).
@immutable
final class CloudRunServiceSpec {
  const CloudRunServiceSpec({
    this.containerConcurrency,
    this.nodeSelector,
    this.serviceAccountName,
    this.timeoutSeconds,
    this.containers,
    this.volumes,
  });

  final TfArg<num>? containerConcurrency;

  final TfArg<Map<String, String>>? nodeSelector;

  final TfArg<String>? serviceAccountName;

  final TfArg<num>? timeoutSeconds;

  final List<CloudRunServiceContainers>? containers;

  final List<CloudRunServiceVolumes>? volumes;

  @internal
  Map<String, Object?> encode() => {
    'container_concurrency': ?containerConcurrency?.toTfJson(),
    'node_selector': ?nodeSelector?.toTfJson(),
    'service_account_name': ?serviceAccountName?.toTfJson(),
    'timeout_seconds': ?timeoutSeconds?.toTfJson(),
    if (containers != null)
      'containers': [for (final e in containers!) e.encode()],
    if (volumes != null) 'volumes': [for (final e in volumes!) e.encode()],
  };
}

/// Typed helper for the `template.spec.containers` block of
/// `google_cloud_run_service` (derived from provider schema).
@immutable
final class CloudRunServiceContainers {
  const CloudRunServiceContainers({
    this.args,
    this.command,
    required this.image,
    this.name,
    this.sandboxLauncher,
    this.workingDir,
    this.env,
    this.envFrom,
    this.livenessProbe,
    this.ports,
    this.readinessProbe,
    this.resources,
    this.startupProbe,
    this.volumeMounts,
  });

  final TfArg<List<String>>? args;

  final TfArg<List<String>>? command;

  final TfArg<String> image;

  final TfArg<String>? name;

  final TfArg<bool>? sandboxLauncher;

  final TfArg<String>? workingDir;

  final List<CloudRunServiceEnv>? env;

  final List<CloudRunServiceEnvFrom>? envFrom;

  final CloudRunServiceLivenessProbe? livenessProbe;

  final List<CloudRunServicePorts>? ports;

  final CloudRunServiceReadinessProbe? readinessProbe;

  final CloudRunServiceResources? resources;

  final CloudRunServiceStartupProbe? startupProbe;

  final List<CloudRunServiceVolumeMounts>? volumeMounts;

  @internal
  Map<String, Object?> encode() => {
    'args': ?args?.toTfJson(),
    'command': ?command?.toTfJson(),
    'image': image.toTfJson(),
    'name': ?name?.toTfJson(),
    'sandbox_launcher': ?sandboxLauncher?.toTfJson(),
    'working_dir': ?workingDir?.toTfJson(),
    if (env != null) 'env': [for (final e in env!) e.encode()],
    if (envFrom != null) 'env_from': [for (final e in envFrom!) e.encode()],
    'liveness_probe': ?livenessProbe?.encode(),
    if (ports != null) 'ports': [for (final e in ports!) e.encode()],
    'readiness_probe': ?readinessProbe?.encode(),
    'resources': ?resources?.encode(),
    'startup_probe': ?startupProbe?.encode(),
    if (volumeMounts != null)
      'volume_mounts': [for (final e in volumeMounts!) e.encode()],
  };
}

/// Typed helper for the `template.spec.containers.env` block of
/// `google_cloud_run_service` (derived from provider schema).
@immutable
final class CloudRunServiceEnv {
  const CloudRunServiceEnv({this.name, this.value, this.valueFrom});

  final TfArg<String>? name;

  final TfArg<String>? value;

  final CloudRunServiceValueFrom? valueFrom;

  @internal
  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'value': ?value?.toTfJson(),
    'value_from': ?valueFrom?.encode(),
  };
}

/// Typed helper for the `template.spec.containers.env.value_from` block of
/// `google_cloud_run_service` (derived from provider schema).
@immutable
final class CloudRunServiceValueFrom {
  const CloudRunServiceValueFrom({required this.secretKeyRef});

  final CloudRunServiceSecretKeyRef secretKeyRef;

  @internal
  Map<String, Object?> encode() => {'secret_key_ref': secretKeyRef.encode()};
}

/// Typed helper for the `template.spec.containers.env.value_from.secret_key_ref` block of
/// `google_cloud_run_service` (derived from provider schema).
@immutable
final class CloudRunServiceSecretKeyRef {
  const CloudRunServiceSecretKeyRef({required this.key, required this.name});

  final TfArg<String> key;

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Typed helper for the `template.spec.containers.env_from` block of
/// `google_cloud_run_service` (derived from provider schema).
@immutable
final class CloudRunServiceEnvFrom {
  const CloudRunServiceEnvFrom({
    this.prefix,
    this.configMapRef,
    this.secretRef,
  });

  final TfArg<String>? prefix;

  final CloudRunServiceConfigMapRef? configMapRef;

  final CloudRunServiceSecretRef? secretRef;

  @internal
  Map<String, Object?> encode() => {
    'prefix': ?prefix?.toTfJson(),
    'config_map_ref': ?configMapRef?.encode(),
    'secret_ref': ?secretRef?.encode(),
  };
}

/// Typed helper for the `template.spec.containers.env_from.config_map_ref` block of
/// `google_cloud_run_service` (derived from provider schema).
@immutable
final class CloudRunServiceConfigMapRef {
  const CloudRunServiceConfigMapRef({this.optional, this.localObjectReference});

  final TfArg<bool>? optional;

  final CloudRunServiceLocalObjectReference? localObjectReference;

  @internal
  Map<String, Object?> encode() => {
    'optional': ?optional?.toTfJson(),
    'local_object_reference': ?localObjectReference?.encode(),
  };
}

/// Typed helper for the `template.spec.containers.env_from.config_map_ref.local_object_reference` block of
/// `google_cloud_run_service` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CloudRunServiceLocalObjectReference {
  const CloudRunServiceLocalObjectReference({required this.name});

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `template.spec.containers.env_from.secret_ref` block of
/// `google_cloud_run_service` (derived from provider schema).
@immutable
final class CloudRunServiceSecretRef {
  const CloudRunServiceSecretRef({this.optional, this.localObjectReference});

  final TfArg<bool>? optional;

  final CloudRunServiceLocalObjectReference? localObjectReference;

  @internal
  Map<String, Object?> encode() => {
    'optional': ?optional?.toTfJson(),
    'local_object_reference': ?localObjectReference?.encode(),
  };
}

/// Typed helper for the `template.spec.containers.liveness_probe` block of
/// `google_cloud_run_service` (derived from provider schema).
@immutable
final class CloudRunServiceLivenessProbe {
  const CloudRunServiceLivenessProbe({
    this.failureThreshold,
    this.initialDelaySeconds,
    this.periodSeconds,
    this.timeoutSeconds,
    required this.check,
  });

  final TfArg<num>? failureThreshold;

  final TfArg<num>? initialDelaySeconds;

  final TfArg<num>? periodSeconds;

  final TfArg<num>? timeoutSeconds;

  final CloudRunServiceLivenessProbeCheck check;

  @internal
  Map<String, Object?> encode() => {
    'failure_threshold': ?failureThreshold?.toTfJson(),
    'initial_delay_seconds': ?initialDelaySeconds?.toTfJson(),
    'period_seconds': ?periodSeconds?.toTfJson(),
    'timeout_seconds': ?timeoutSeconds?.toTfJson(),
    ...check.encode(),
  };
}

/// Exactly one of `http_get`, `grpc` on the `template.spec.containers.liveness_probe` block of `google_cloud_run_service`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.httpGet(...)`.
sealed class CloudRunServiceLivenessProbeCheck {
  const CloudRunServiceLivenessProbeCheck();

  /// Sets `http_get`.
  const factory CloudRunServiceLivenessProbeCheck.httpGet(
    CloudRunServiceLivenessProbeHttpGet httpGet,
  ) = CloudRunServiceLivenessProbeCheckHttpGet;

  /// Sets `grpc`.
  const factory CloudRunServiceLivenessProbeCheck.grpc(
    CloudRunServiceGrpc grpc,
  ) = CloudRunServiceLivenessProbeCheckGrpc;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [CloudRunServiceLivenessProbeCheck.httpGet] choice: sets `http_get`.
final class CloudRunServiceLivenessProbeCheckHttpGet
    extends CloudRunServiceLivenessProbeCheck {
  const CloudRunServiceLivenessProbeCheckHttpGet(this.httpGet);

  final CloudRunServiceLivenessProbeHttpGet httpGet;

  @internal
  @override
  String get blockKey => 'http_get';

  @internal
  @override
  Map<String, Object?> encode() => {'http_get': httpGet.encode()};
}

/// The [CloudRunServiceLivenessProbeCheck.grpc] choice: sets `grpc`.
final class CloudRunServiceLivenessProbeCheckGrpc
    extends CloudRunServiceLivenessProbeCheck {
  const CloudRunServiceLivenessProbeCheckGrpc(this.grpc);

  final CloudRunServiceGrpc grpc;

  @internal
  @override
  String get blockKey => 'grpc';

  @internal
  @override
  Map<String, Object?> encode() => {'grpc': grpc.encode()};
}

/// Typed helper for the `template.spec.containers.liveness_probe.grpc` block of
/// `google_cloud_run_service` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CloudRunServiceGrpc {
  const CloudRunServiceGrpc({this.port, this.service});

  final TfArg<num>? port;

  final TfArg<String>? service;

  @internal
  Map<String, Object?> encode() => {
    'port': ?port?.toTfJson(),
    'service': ?service?.toTfJson(),
  };
}

/// Typed helper for the `template.spec.containers.liveness_probe.http_get` block of
/// `google_cloud_run_service` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CloudRunServiceLivenessProbeHttpGet {
  const CloudRunServiceLivenessProbeHttpGet({
    this.path,
    this.port,
    this.httpHeaders,
  });

  final TfArg<String>? path;

  final TfArg<num>? port;

  final List<CloudRunServiceHttpHeaders>? httpHeaders;

  @internal
  Map<String, Object?> encode() => {
    'path': ?path?.toTfJson(),
    'port': ?port?.toTfJson(),
    if (httpHeaders != null)
      'http_headers': [for (final e in httpHeaders!) e.encode()],
  };
}

/// Typed helper for the `template.spec.containers.liveness_probe.http_get.http_headers` block of
/// `google_cloud_run_service` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CloudRunServiceHttpHeaders {
  const CloudRunServiceHttpHeaders({required this.name, this.value});

  final TfArg<String> name;

  final TfArg<String>? value;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `template.spec.containers.ports` block of
/// `google_cloud_run_service` (derived from provider schema).
@immutable
final class CloudRunServicePorts {
  const CloudRunServicePorts({this.containerPort, this.name, this.protocol});

  final TfArg<num>? containerPort;

  final TfArg<String>? name;

  final TfArg<String>? protocol;

  @internal
  Map<String, Object?> encode() => {
    'container_port': ?containerPort?.toTfJson(),
    'name': ?name?.toTfJson(),
    'protocol': ?protocol?.toTfJson(),
  };
}

/// Typed helper for the `template.spec.containers.readiness_probe` block of
/// `google_cloud_run_service` (derived from provider schema).
@immutable
final class CloudRunServiceReadinessProbe {
  const CloudRunServiceReadinessProbe({
    this.failureThreshold,
    this.periodSeconds,
    this.successThreshold,
    this.timeoutSeconds,
    required this.check,
  });

  final TfArg<num>? failureThreshold;

  final TfArg<num>? periodSeconds;

  final TfArg<num>? successThreshold;

  final TfArg<num>? timeoutSeconds;

  final CloudRunServiceReadinessProbeCheck check;

  @internal
  Map<String, Object?> encode() => {
    'failure_threshold': ?failureThreshold?.toTfJson(),
    'period_seconds': ?periodSeconds?.toTfJson(),
    'success_threshold': ?successThreshold?.toTfJson(),
    'timeout_seconds': ?timeoutSeconds?.toTfJson(),
    ...check.encode(),
  };
}

/// Exactly one of `http_get`, `grpc` on the `template.spec.containers.readiness_probe` block of `google_cloud_run_service`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.httpGet(...)`.
sealed class CloudRunServiceReadinessProbeCheck {
  const CloudRunServiceReadinessProbeCheck();

  /// Sets `http_get`.
  const factory CloudRunServiceReadinessProbeCheck.httpGet(
    CloudRunServiceReadinessProbeHttpGet httpGet,
  ) = CloudRunServiceReadinessProbeCheckHttpGet;

  /// Sets `grpc`.
  const factory CloudRunServiceReadinessProbeCheck.grpc(
    CloudRunServiceGrpc grpc,
  ) = CloudRunServiceReadinessProbeCheckGrpc;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [CloudRunServiceReadinessProbeCheck.httpGet] choice: sets `http_get`.
final class CloudRunServiceReadinessProbeCheckHttpGet
    extends CloudRunServiceReadinessProbeCheck {
  const CloudRunServiceReadinessProbeCheckHttpGet(this.httpGet);

  final CloudRunServiceReadinessProbeHttpGet httpGet;

  @internal
  @override
  String get blockKey => 'http_get';

  @internal
  @override
  Map<String, Object?> encode() => {'http_get': httpGet.encode()};
}

/// The [CloudRunServiceReadinessProbeCheck.grpc] choice: sets `grpc`.
final class CloudRunServiceReadinessProbeCheckGrpc
    extends CloudRunServiceReadinessProbeCheck {
  const CloudRunServiceReadinessProbeCheckGrpc(this.grpc);

  final CloudRunServiceGrpc grpc;

  @internal
  @override
  String get blockKey => 'grpc';

  @internal
  @override
  Map<String, Object?> encode() => {'grpc': grpc.encode()};
}

/// Typed helper for the `template.spec.containers.readiness_probe.http_get` block of
/// `google_cloud_run_service` (derived from provider schema).
@immutable
final class CloudRunServiceReadinessProbeHttpGet {
  const CloudRunServiceReadinessProbeHttpGet({this.path, this.port});

  final TfArg<String>? path;

  final TfArg<num>? port;

  @internal
  Map<String, Object?> encode() => {
    'path': ?path?.toTfJson(),
    'port': ?port?.toTfJson(),
  };
}

/// Typed helper for the `template.spec.containers.resources` block of
/// `google_cloud_run_service` (derived from provider schema).
@immutable
final class CloudRunServiceResources {
  const CloudRunServiceResources({this.limits, this.requests});

  final TfArg<Map<String, String>>? limits;

  final TfArg<Map<String, String>>? requests;

  @internal
  Map<String, Object?> encode() => {
    'limits': ?limits?.toTfJson(),
    'requests': ?requests?.toTfJson(),
  };
}

/// Typed helper for the `template.spec.containers.startup_probe` block of
/// `google_cloud_run_service` (derived from provider schema).
@immutable
final class CloudRunServiceStartupProbe {
  const CloudRunServiceStartupProbe({
    this.failureThreshold,
    this.initialDelaySeconds,
    this.periodSeconds,
    this.timeoutSeconds,
    required this.check,
  });

  final TfArg<num>? failureThreshold;

  final TfArg<num>? initialDelaySeconds;

  final TfArg<num>? periodSeconds;

  final TfArg<num>? timeoutSeconds;

  final CloudRunServiceStartupProbeCheck check;

  @internal
  Map<String, Object?> encode() => {
    'failure_threshold': ?failureThreshold?.toTfJson(),
    'initial_delay_seconds': ?initialDelaySeconds?.toTfJson(),
    'period_seconds': ?periodSeconds?.toTfJson(),
    'timeout_seconds': ?timeoutSeconds?.toTfJson(),
    ...check.encode(),
  };
}

/// Exactly one of `tcp_socket`, `http_get`, `grpc` on the `template.spec.containers.startup_probe` block of `google_cloud_run_service`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.tcpSocket(...)`.
sealed class CloudRunServiceStartupProbeCheck {
  const CloudRunServiceStartupProbeCheck();

  /// Sets `tcp_socket`.
  const factory CloudRunServiceStartupProbeCheck.tcpSocket(
    CloudRunServiceTcpSocket tcpSocket,
  ) = CloudRunServiceStartupProbeCheckTcpSocket;

  /// Sets `http_get`.
  const factory CloudRunServiceStartupProbeCheck.httpGet(
    CloudRunServiceLivenessProbeHttpGet httpGet,
  ) = CloudRunServiceStartupProbeCheckHttpGet;

  /// Sets `grpc`.
  const factory CloudRunServiceStartupProbeCheck.grpc(
    CloudRunServiceGrpc grpc,
  ) = CloudRunServiceStartupProbeCheckGrpc;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [CloudRunServiceStartupProbeCheck.tcpSocket] choice: sets `tcp_socket`.
final class CloudRunServiceStartupProbeCheckTcpSocket
    extends CloudRunServiceStartupProbeCheck {
  const CloudRunServiceStartupProbeCheckTcpSocket(this.tcpSocket);

  final CloudRunServiceTcpSocket tcpSocket;

  @internal
  @override
  String get blockKey => 'tcp_socket';

  @internal
  @override
  Map<String, Object?> encode() => {'tcp_socket': tcpSocket.encode()};
}

/// The [CloudRunServiceStartupProbeCheck.httpGet] choice: sets `http_get`.
final class CloudRunServiceStartupProbeCheckHttpGet
    extends CloudRunServiceStartupProbeCheck {
  const CloudRunServiceStartupProbeCheckHttpGet(this.httpGet);

  final CloudRunServiceLivenessProbeHttpGet httpGet;

  @internal
  @override
  String get blockKey => 'http_get';

  @internal
  @override
  Map<String, Object?> encode() => {'http_get': httpGet.encode()};
}

/// The [CloudRunServiceStartupProbeCheck.grpc] choice: sets `grpc`.
final class CloudRunServiceStartupProbeCheckGrpc
    extends CloudRunServiceStartupProbeCheck {
  const CloudRunServiceStartupProbeCheckGrpc(this.grpc);

  final CloudRunServiceGrpc grpc;

  @internal
  @override
  String get blockKey => 'grpc';

  @internal
  @override
  Map<String, Object?> encode() => {'grpc': grpc.encode()};
}

/// Typed helper for the `template.spec.containers.startup_probe.tcp_socket` block of
/// `google_cloud_run_service` (derived from provider schema).
@immutable
final class CloudRunServiceTcpSocket {
  const CloudRunServiceTcpSocket({this.port});

  final TfArg<num>? port;

  @internal
  Map<String, Object?> encode() => {'port': ?port?.toTfJson()};
}

/// Typed helper for the `template.spec.containers.volume_mounts` block of
/// `google_cloud_run_service` (derived from provider schema).
@immutable
final class CloudRunServiceVolumeMounts {
  const CloudRunServiceVolumeMounts({
    required this.mountPath,
    required this.name,
    this.subPath,
  });

  final TfArg<String> mountPath;

  final TfArg<String> name;

  final TfArg<String>? subPath;

  @internal
  Map<String, Object?> encode() => {
    'mount_path': mountPath.toTfJson(),
    'name': name.toTfJson(),
    'sub_path': ?subPath?.toTfJson(),
  };
}

/// Typed helper for the `template.spec.volumes` block of
/// `google_cloud_run_service` (derived from provider schema).
@immutable
final class CloudRunServiceVolumes {
  const CloudRunServiceVolumes({
    required this.name,
    this.csi,
    this.emptyDir,
    this.nfs,
    this.secret,
  });

  final TfArg<String> name;

  final CloudRunServiceCsi? csi;

  final CloudRunServiceEmptyDir? emptyDir;

  final CloudRunServiceNfs? nfs;

  final CloudRunServiceSecret? secret;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'csi': ?csi?.encode(),
    'empty_dir': ?emptyDir?.encode(),
    'nfs': ?nfs?.encode(),
    'secret': ?secret?.encode(),
  };
}

/// Typed helper for the `template.spec.volumes.csi` block of
/// `google_cloud_run_service` (derived from provider schema).
@immutable
final class CloudRunServiceCsi {
  const CloudRunServiceCsi({
    required this.driver,
    this.readOnly,
    this.volumeAttributes,
  });

  final TfArg<String> driver;

  final TfArg<bool>? readOnly;

  final TfArg<Map<String, String>>? volumeAttributes;

  @internal
  Map<String, Object?> encode() => {
    'driver': driver.toTfJson(),
    'read_only': ?readOnly?.toTfJson(),
    'volume_attributes': ?volumeAttributes?.toTfJson(),
  };
}

/// Typed helper for the `template.spec.volumes.empty_dir` block of
/// `google_cloud_run_service` (derived from provider schema).
@immutable
final class CloudRunServiceEmptyDir {
  const CloudRunServiceEmptyDir({this.medium, this.sizeLimit});

  final TfArg<String>? medium;

  final TfArg<String>? sizeLimit;

  @internal
  Map<String, Object?> encode() => {
    'medium': ?medium?.toTfJson(),
    'size_limit': ?sizeLimit?.toTfJson(),
  };
}

/// Typed helper for the `template.spec.volumes.nfs` block of
/// `google_cloud_run_service` (derived from provider schema).
@immutable
final class CloudRunServiceNfs {
  const CloudRunServiceNfs({
    required this.path,
    this.readOnly,
    required this.server,
  });

  final TfArg<String> path;

  final TfArg<bool>? readOnly;

  final TfArg<String> server;

  @internal
  Map<String, Object?> encode() => {
    'path': path.toTfJson(),
    'read_only': ?readOnly?.toTfJson(),
    'server': server.toTfJson(),
  };
}

/// Typed helper for the `template.spec.volumes.secret` block of
/// `google_cloud_run_service` (derived from provider schema).
@immutable
final class CloudRunServiceSecret {
  const CloudRunServiceSecret({
    this.defaultMode,
    required this.secretName,
    this.items,
  });

  final TfArg<num>? defaultMode;

  final TfArg<String> secretName;

  final List<CloudRunServiceItems>? items;

  @internal
  Map<String, Object?> encode() => {
    'default_mode': ?defaultMode?.toTfJson(),
    'secret_name': secretName.toTfJson(),
    if (items != null) 'items': [for (final e in items!) e.encode()],
  };
}

/// Typed helper for the `template.spec.volumes.secret.items` block of
/// `google_cloud_run_service` (derived from provider schema).
@immutable
final class CloudRunServiceItems {
  const CloudRunServiceItems({
    required this.key,
    this.mode,
    required this.path,
  });

  final TfArg<String> key;

  final TfArg<num>? mode;

  final TfArg<String> path;

  @internal
  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'mode': ?mode?.toTfJson(),
    'path': path.toTfJson(),
  };
}

/// Typed helper for the `traffic` block of
/// `google_cloud_run_service` (derived from provider schema).
@immutable
final class CloudRunServiceTraffic {
  const CloudRunServiceTraffic({
    this.latestRevision,
    required this.percent,
    this.revisionName,
    this.tag,
  });

  final TfArg<bool>? latestRevision;

  final TfArg<num> percent;

  final TfArg<String>? revisionName;

  final TfArg<String>? tag;

  @internal
  Map<String, Object?> encode() => {
    'latest_revision': ?latestRevision?.toTfJson(),
    'percent': percent.toTfJson(),
    'revision_name': ?revisionName?.toTfJson(),
    'tag': ?tag?.toTfJson(),
  };
}

/// Factory wrapper for `google_cloud_run_service`.
///
/// A Cloud Run service has a unique endpoint and autoscales containers.
///
/// Cloud Run **v1** service — Knative serving API. Prefer
/// [GoogleCloudRunV2Service] for new stacks; this leftover keeps the
/// v1 factory so existing `google_cloud_run_service` + v1 IAM adjuncts
/// can be authored in Dart.
///
/// This leftover exposes the official hello recipe via [template]
/// (`spec.containers[].image`) and [traffic] (100% latest revision).
/// Probe / volume / secret-env surfaces stay optional nested types.
///
/// Enable `run.googleapis.com` via [GoogleProjectService] before apply.
/// Default request-based billing does not charge while the service is
/// idle (no min instances, no invocations).
///
/// Example:
/// ```dart
/// GoogleCloudRunService(
///   'hello',
///   location: TfArg.literal('us-central1'),
///   name: TfArg.literal('terradart-run-v1'),
///   template: CloudRunServiceTemplate(
///     spec: .new(
///       containers: [
///         .new(
///           image: TfArg.literal(
///             'us-docker.pkg.dev/cloudrun/container/hello',
///           ),
///         ),
///       ],
///     ),
///   ),
///   traffic: [
///     CloudRunServiceTraffic(
///       percent: TfArg.literal(100),
///       latestRevision: TfArg.literal(true),
///     ),
///   ],
///   deletionPolicy: TfArg.literal('DELETE'),
/// );
/// ```
final class GoogleCloudRunService extends Resource {
  static const String tfType = 'google_cloud_run_service';

  GoogleCloudRunService(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> name,
    CloudRunServiceTemplate? template,
    List<CloudRunServiceTraffic>? traffic,
    TfArg<bool>? autogenerateRevisionName,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    CloudRunServiceMetadata? metadata,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'name': name,
           if (template != null) 'template': TfArg.literal(template.encode()),
           if (traffic != null)
             'traffic': TfArg.literal([for (final e in traffic) e.encode()]),
           'autogenerate_revision_name': ?autogenerateRevisionName,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
           if (metadata != null) 'metadata': TfArg.literal(metadata.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCloudRunServiceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleCloudRunService>`.
  RefTo<GoogleCloudRunService> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `status` attribute.
  TfRef<List<Map<String, Object?>>> get status =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'status');

  /// Reference to `autogenerate_revision_name` attribute.
  TfRef<bool> get autogenerateRevisionName =>
      TfRef.attribute<bool>(this, 'autogenerate_revision_name');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
