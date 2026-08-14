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

  Map<String, Object?> encode() => {
    if (annotations != null) 'annotations': annotations!.toTfJson(),
    if (labels != null) 'labels': labels!.toTfJson(),
    if (namespace != null) 'namespace': namespace!.toTfJson(),
  };
}

/// Typed helper for the `template` block of
/// `google_cloud_run_service` (derived from provider schema).
@immutable
final class CloudRunServiceTemplate {
  const CloudRunServiceTemplate({this.metadata, this.spec});

  final CloudRunServiceTemplateMetadata? metadata;

  final CloudRunServiceTemplateSpec? spec;

  Map<String, Object?> encode() => {
    if (metadata != null) 'metadata': metadata!.encode(),
    if (spec != null) 'spec': spec!.encode(),
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

  Map<String, Object?> encode() => {
    if (annotations != null) 'annotations': annotations!.toTfJson(),
    if (labels != null) 'labels': labels!.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
    if (namespace != null) 'namespace': namespace!.toTfJson(),
  };
}

/// Typed helper for the `template.spec` block of
/// `google_cloud_run_service` (derived from provider schema).
@immutable
final class CloudRunServiceTemplateSpec {
  const CloudRunServiceTemplateSpec({
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

  final List<CloudRunServiceTemplateSpecContainers>? containers;

  final List<CloudRunServiceTemplateSpecVolumes>? volumes;

  Map<String, Object?> encode() => {
    if (containerConcurrency != null)
      'container_concurrency': containerConcurrency!.toTfJson(),
    if (nodeSelector != null) 'node_selector': nodeSelector!.toTfJson(),
    if (serviceAccountName != null)
      'service_account_name': serviceAccountName!.toTfJson(),
    if (timeoutSeconds != null) 'timeout_seconds': timeoutSeconds!.toTfJson(),
    if (containers != null)
      'containers': [for (final e in containers!) e.encode()],
    if (volumes != null) 'volumes': [for (final e in volumes!) e.encode()],
  };
}

/// Typed helper for the `template.spec.containers` block of
/// `google_cloud_run_service` (derived from provider schema).
@immutable
final class CloudRunServiceTemplateSpecContainers {
  const CloudRunServiceTemplateSpecContainers({
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

  final TfArg<List<Object?>>? args;

  final TfArg<List<Object?>>? command;

  final TfArg<String> image;

  final TfArg<String>? name;

  final TfArg<bool>? sandboxLauncher;

  final TfArg<String>? workingDir;

  final List<CloudRunServiceTemplateSpecContainersEnv>? env;

  final List<CloudRunServiceTemplateSpecContainersEnvFrom>? envFrom;

  final CloudRunServiceTemplateSpecContainersLivenessProbe? livenessProbe;

  final List<CloudRunServiceTemplateSpecContainersPorts>? ports;

  final CloudRunServiceTemplateSpecContainersReadinessProbe? readinessProbe;

  final CloudRunServiceTemplateSpecContainersResources? resources;

  final CloudRunServiceTemplateSpecContainersStartupProbe? startupProbe;

  final List<CloudRunServiceTemplateSpecContainersVolumeMounts>? volumeMounts;

  Map<String, Object?> encode() => {
    if (args != null) 'args': args!.toTfJson(),
    if (command != null) 'command': command!.toTfJson(),
    'image': image.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
    if (sandboxLauncher != null)
      'sandbox_launcher': sandboxLauncher!.toTfJson(),
    if (workingDir != null) 'working_dir': workingDir!.toTfJson(),
    if (env != null) 'env': [for (final e in env!) e.encode()],
    if (envFrom != null) 'env_from': [for (final e in envFrom!) e.encode()],
    if (livenessProbe != null) 'liveness_probe': livenessProbe!.encode(),
    if (ports != null) 'ports': [for (final e in ports!) e.encode()],
    if (readinessProbe != null) 'readiness_probe': readinessProbe!.encode(),
    if (resources != null) 'resources': resources!.encode(),
    if (startupProbe != null) 'startup_probe': startupProbe!.encode(),
    if (volumeMounts != null)
      'volume_mounts': [for (final e in volumeMounts!) e.encode()],
  };
}

/// Typed helper for the `template.spec.containers.env` block of
/// `google_cloud_run_service` (derived from provider schema).
@immutable
final class CloudRunServiceTemplateSpecContainersEnv {
  const CloudRunServiceTemplateSpecContainersEnv({
    this.name,
    this.value,
    this.valueFrom,
  });

  final TfArg<String>? name;

  final TfArg<String>? value;

  final CloudRunServiceTemplateSpecContainersEnvValueFrom? valueFrom;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
    if (valueFrom != null) 'value_from': valueFrom!.encode(),
  };
}

/// Typed helper for the `template.spec.containers.env.value_from` block of
/// `google_cloud_run_service` (derived from provider schema).
@immutable
final class CloudRunServiceTemplateSpecContainersEnvValueFrom {
  const CloudRunServiceTemplateSpecContainersEnvValueFrom({
    required this.secretKeyRef,
  });

  final CloudRunServiceTemplateSpecContainersEnvValueFromSecretKeyRef
  secretKeyRef;

  Map<String, Object?> encode() => {'secret_key_ref': secretKeyRef.encode()};
}

/// Typed helper for the `template.spec.containers.env.value_from.secret_key_ref` block of
/// `google_cloud_run_service` (derived from provider schema).
@immutable
final class CloudRunServiceTemplateSpecContainersEnvValueFromSecretKeyRef {
  const CloudRunServiceTemplateSpecContainersEnvValueFromSecretKeyRef({
    required this.key,
    required this.name,
  });

  final TfArg<String> key;

  final TfArg<String> name;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Typed helper for the `template.spec.containers.env_from` block of
/// `google_cloud_run_service` (derived from provider schema).
@immutable
final class CloudRunServiceTemplateSpecContainersEnvFrom {
  const CloudRunServiceTemplateSpecContainersEnvFrom({
    this.prefix,
    this.configMapRef,
    this.secretRef,
  });

  final TfArg<String>? prefix;

  final CloudRunServiceTemplateSpecContainersEnvFromConfigMapRef? configMapRef;

  final CloudRunServiceTemplateSpecContainersEnvFromSecretRef? secretRef;

  Map<String, Object?> encode() => {
    if (prefix != null) 'prefix': prefix!.toTfJson(),
    if (configMapRef != null) 'config_map_ref': configMapRef!.encode(),
    if (secretRef != null) 'secret_ref': secretRef!.encode(),
  };
}

/// Typed helper for the `template.spec.containers.env_from.config_map_ref` block of
/// `google_cloud_run_service` (derived from provider schema).
@immutable
final class CloudRunServiceTemplateSpecContainersEnvFromConfigMapRef {
  const CloudRunServiceTemplateSpecContainersEnvFromConfigMapRef({
    this.optional,
    this.localObjectReference,
  });

  final TfArg<bool>? optional;

  final CloudRunServiceTemplateSpecContainersEnvFromConfigMapRefLocalObjectReference?
  localObjectReference;

  Map<String, Object?> encode() => {
    if (optional != null) 'optional': optional!.toTfJson(),
    if (localObjectReference != null)
      'local_object_reference': localObjectReference!.encode(),
  };
}

/// Typed helper for the `template.spec.containers.env_from.config_map_ref.local_object_reference` block of
/// `google_cloud_run_service` (derived from provider schema).
@immutable
final class CloudRunServiceTemplateSpecContainersEnvFromConfigMapRefLocalObjectReference {
  const CloudRunServiceTemplateSpecContainersEnvFromConfigMapRefLocalObjectReference({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `template.spec.containers.env_from.secret_ref` block of
/// `google_cloud_run_service` (derived from provider schema).
@immutable
final class CloudRunServiceTemplateSpecContainersEnvFromSecretRef {
  const CloudRunServiceTemplateSpecContainersEnvFromSecretRef({
    this.optional,
    this.localObjectReference,
  });

  final TfArg<bool>? optional;

  final CloudRunServiceTemplateSpecContainersEnvFromSecretRefLocalObjectReference?
  localObjectReference;

  Map<String, Object?> encode() => {
    if (optional != null) 'optional': optional!.toTfJson(),
    if (localObjectReference != null)
      'local_object_reference': localObjectReference!.encode(),
  };
}

/// Typed helper for the `template.spec.containers.env_from.secret_ref.local_object_reference` block of
/// `google_cloud_run_service` (derived from provider schema).
@immutable
final class CloudRunServiceTemplateSpecContainersEnvFromSecretRefLocalObjectReference {
  const CloudRunServiceTemplateSpecContainersEnvFromSecretRefLocalObjectReference({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `template.spec.containers.liveness_probe` block of
/// `google_cloud_run_service` (derived from provider schema).
@immutable
final class CloudRunServiceTemplateSpecContainersLivenessProbe {
  const CloudRunServiceTemplateSpecContainersLivenessProbe({
    this.failureThreshold,
    this.initialDelaySeconds,
    this.periodSeconds,
    this.timeoutSeconds,
    this.grpc,
    this.httpGet,
  });

  final TfArg<num>? failureThreshold;

  final TfArg<num>? initialDelaySeconds;

  final TfArg<num>? periodSeconds;

  final TfArg<num>? timeoutSeconds;

  final CloudRunServiceTemplateSpecContainersLivenessProbeGrpc? grpc;

  final CloudRunServiceTemplateSpecContainersLivenessProbeHttpGet? httpGet;

  Map<String, Object?> encode() => {
    if (failureThreshold != null)
      'failure_threshold': failureThreshold!.toTfJson(),
    if (initialDelaySeconds != null)
      'initial_delay_seconds': initialDelaySeconds!.toTfJson(),
    if (periodSeconds != null) 'period_seconds': periodSeconds!.toTfJson(),
    if (timeoutSeconds != null) 'timeout_seconds': timeoutSeconds!.toTfJson(),
    if (grpc != null) 'grpc': grpc!.encode(),
    if (httpGet != null) 'http_get': httpGet!.encode(),
  };
}

/// Typed helper for the `template.spec.containers.liveness_probe.grpc` block of
/// `google_cloud_run_service` (derived from provider schema).
@immutable
final class CloudRunServiceTemplateSpecContainersLivenessProbeGrpc {
  const CloudRunServiceTemplateSpecContainersLivenessProbeGrpc({
    this.port,
    this.service,
  });

  final TfArg<num>? port;

  final TfArg<String>? service;

  Map<String, Object?> encode() => {
    if (port != null) 'port': port!.toTfJson(),
    if (service != null) 'service': service!.toTfJson(),
  };
}

/// Typed helper for the `template.spec.containers.liveness_probe.http_get` block of
/// `google_cloud_run_service` (derived from provider schema).
@immutable
final class CloudRunServiceTemplateSpecContainersLivenessProbeHttpGet {
  const CloudRunServiceTemplateSpecContainersLivenessProbeHttpGet({
    this.path,
    this.port,
    this.httpHeaders,
  });

  final TfArg<String>? path;

  final TfArg<num>? port;

  final List<
    CloudRunServiceTemplateSpecContainersLivenessProbeHttpGetHttpHeaders
  >?
  httpHeaders;

  Map<String, Object?> encode() => {
    if (path != null) 'path': path!.toTfJson(),
    if (port != null) 'port': port!.toTfJson(),
    if (httpHeaders != null)
      'http_headers': [for (final e in httpHeaders!) e.encode()],
  };
}

/// Typed helper for the `template.spec.containers.liveness_probe.http_get.http_headers` block of
/// `google_cloud_run_service` (derived from provider schema).
@immutable
final class CloudRunServiceTemplateSpecContainersLivenessProbeHttpGetHttpHeaders {
  const CloudRunServiceTemplateSpecContainersLivenessProbeHttpGetHttpHeaders({
    required this.name,
    this.value,
  });

  final TfArg<String> name;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Typed helper for the `template.spec.containers.ports` block of
/// `google_cloud_run_service` (derived from provider schema).
@immutable
final class CloudRunServiceTemplateSpecContainersPorts {
  const CloudRunServiceTemplateSpecContainersPorts({
    this.containerPort,
    this.name,
    this.protocol,
  });

  final TfArg<num>? containerPort;

  final TfArg<String>? name;

  final TfArg<String>? protocol;

  Map<String, Object?> encode() => {
    if (containerPort != null) 'container_port': containerPort!.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
    if (protocol != null) 'protocol': protocol!.toTfJson(),
  };
}

/// Typed helper for the `template.spec.containers.readiness_probe` block of
/// `google_cloud_run_service` (derived from provider schema).
@immutable
final class CloudRunServiceTemplateSpecContainersReadinessProbe {
  const CloudRunServiceTemplateSpecContainersReadinessProbe({
    this.failureThreshold,
    this.periodSeconds,
    this.successThreshold,
    this.timeoutSeconds,
    this.grpc,
    this.httpGet,
  });

  final TfArg<num>? failureThreshold;

  final TfArg<num>? periodSeconds;

  final TfArg<num>? successThreshold;

  final TfArg<num>? timeoutSeconds;

  final CloudRunServiceTemplateSpecContainersReadinessProbeGrpc? grpc;

  final CloudRunServiceTemplateSpecContainersReadinessProbeHttpGet? httpGet;

  Map<String, Object?> encode() => {
    if (failureThreshold != null)
      'failure_threshold': failureThreshold!.toTfJson(),
    if (periodSeconds != null) 'period_seconds': periodSeconds!.toTfJson(),
    if (successThreshold != null)
      'success_threshold': successThreshold!.toTfJson(),
    if (timeoutSeconds != null) 'timeout_seconds': timeoutSeconds!.toTfJson(),
    if (grpc != null) 'grpc': grpc!.encode(),
    if (httpGet != null) 'http_get': httpGet!.encode(),
  };
}

/// Typed helper for the `template.spec.containers.readiness_probe.grpc` block of
/// `google_cloud_run_service` (derived from provider schema).
@immutable
final class CloudRunServiceTemplateSpecContainersReadinessProbeGrpc {
  const CloudRunServiceTemplateSpecContainersReadinessProbeGrpc({
    this.port,
    this.service,
  });

  final TfArg<num>? port;

  final TfArg<String>? service;

  Map<String, Object?> encode() => {
    if (port != null) 'port': port!.toTfJson(),
    if (service != null) 'service': service!.toTfJson(),
  };
}

/// Typed helper for the `template.spec.containers.readiness_probe.http_get` block of
/// `google_cloud_run_service` (derived from provider schema).
@immutable
final class CloudRunServiceTemplateSpecContainersReadinessProbeHttpGet {
  const CloudRunServiceTemplateSpecContainersReadinessProbeHttpGet({
    this.path,
    this.port,
  });

  final TfArg<String>? path;

  final TfArg<num>? port;

  Map<String, Object?> encode() => {
    if (path != null) 'path': path!.toTfJson(),
    if (port != null) 'port': port!.toTfJson(),
  };
}

/// Typed helper for the `template.spec.containers.resources` block of
/// `google_cloud_run_service` (derived from provider schema).
@immutable
final class CloudRunServiceTemplateSpecContainersResources {
  const CloudRunServiceTemplateSpecContainersResources({
    this.limits,
    this.requests,
  });

  final TfArg<Map<String, String>>? limits;

  final TfArg<Map<String, String>>? requests;

  Map<String, Object?> encode() => {
    if (limits != null) 'limits': limits!.toTfJson(),
    if (requests != null) 'requests': requests!.toTfJson(),
  };
}

/// Typed helper for the `template.spec.containers.startup_probe` block of
/// `google_cloud_run_service` (derived from provider schema).
@immutable
final class CloudRunServiceTemplateSpecContainersStartupProbe {
  const CloudRunServiceTemplateSpecContainersStartupProbe({
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

  final CloudRunServiceTemplateSpecContainersStartupProbeGrpc? grpc;

  final CloudRunServiceTemplateSpecContainersStartupProbeHttpGet? httpGet;

  final CloudRunServiceTemplateSpecContainersStartupProbeTcpSocket? tcpSocket;

  Map<String, Object?> encode() => {
    if (failureThreshold != null)
      'failure_threshold': failureThreshold!.toTfJson(),
    if (initialDelaySeconds != null)
      'initial_delay_seconds': initialDelaySeconds!.toTfJson(),
    if (periodSeconds != null) 'period_seconds': periodSeconds!.toTfJson(),
    if (timeoutSeconds != null) 'timeout_seconds': timeoutSeconds!.toTfJson(),
    if (grpc != null) 'grpc': grpc!.encode(),
    if (httpGet != null) 'http_get': httpGet!.encode(),
    if (tcpSocket != null) 'tcp_socket': tcpSocket!.encode(),
  };
}

/// Typed helper for the `template.spec.containers.startup_probe.grpc` block of
/// `google_cloud_run_service` (derived from provider schema).
@immutable
final class CloudRunServiceTemplateSpecContainersStartupProbeGrpc {
  const CloudRunServiceTemplateSpecContainersStartupProbeGrpc({
    this.port,
    this.service,
  });

  final TfArg<num>? port;

  final TfArg<String>? service;

  Map<String, Object?> encode() => {
    if (port != null) 'port': port!.toTfJson(),
    if (service != null) 'service': service!.toTfJson(),
  };
}

/// Typed helper for the `template.spec.containers.startup_probe.http_get` block of
/// `google_cloud_run_service` (derived from provider schema).
@immutable
final class CloudRunServiceTemplateSpecContainersStartupProbeHttpGet {
  const CloudRunServiceTemplateSpecContainersStartupProbeHttpGet({
    this.path,
    this.port,
    this.httpHeaders,
  });

  final TfArg<String>? path;

  final TfArg<num>? port;

  final List<
    CloudRunServiceTemplateSpecContainersStartupProbeHttpGetHttpHeaders
  >?
  httpHeaders;

  Map<String, Object?> encode() => {
    if (path != null) 'path': path!.toTfJson(),
    if (port != null) 'port': port!.toTfJson(),
    if (httpHeaders != null)
      'http_headers': [for (final e in httpHeaders!) e.encode()],
  };
}

/// Typed helper for the `template.spec.containers.startup_probe.http_get.http_headers` block of
/// `google_cloud_run_service` (derived from provider schema).
@immutable
final class CloudRunServiceTemplateSpecContainersStartupProbeHttpGetHttpHeaders {
  const CloudRunServiceTemplateSpecContainersStartupProbeHttpGetHttpHeaders({
    required this.name,
    this.value,
  });

  final TfArg<String> name;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Typed helper for the `template.spec.containers.startup_probe.tcp_socket` block of
/// `google_cloud_run_service` (derived from provider schema).
@immutable
final class CloudRunServiceTemplateSpecContainersStartupProbeTcpSocket {
  const CloudRunServiceTemplateSpecContainersStartupProbeTcpSocket({this.port});

  final TfArg<num>? port;

  Map<String, Object?> encode() => {if (port != null) 'port': port!.toTfJson()};
}

/// Typed helper for the `template.spec.containers.volume_mounts` block of
/// `google_cloud_run_service` (derived from provider schema).
@immutable
final class CloudRunServiceTemplateSpecContainersVolumeMounts {
  const CloudRunServiceTemplateSpecContainersVolumeMounts({
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
    if (subPath != null) 'sub_path': subPath!.toTfJson(),
  };
}

/// Typed helper for the `template.spec.volumes` block of
/// `google_cloud_run_service` (derived from provider schema).
@immutable
final class CloudRunServiceTemplateSpecVolumes {
  const CloudRunServiceTemplateSpecVolumes({
    required this.name,
    this.csi,
    this.emptyDir,
    this.nfs,
    this.secret,
  });

  final TfArg<String> name;

  final CloudRunServiceTemplateSpecVolumesCsi? csi;

  final CloudRunServiceTemplateSpecVolumesEmptyDir? emptyDir;

  final CloudRunServiceTemplateSpecVolumesNfs? nfs;

  final CloudRunServiceTemplateSpecVolumesSecret? secret;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    if (csi != null) 'csi': csi!.encode(),
    if (emptyDir != null) 'empty_dir': emptyDir!.encode(),
    if (nfs != null) 'nfs': nfs!.encode(),
    if (secret != null) 'secret': secret!.encode(),
  };
}

/// Typed helper for the `template.spec.volumes.csi` block of
/// `google_cloud_run_service` (derived from provider schema).
@immutable
final class CloudRunServiceTemplateSpecVolumesCsi {
  const CloudRunServiceTemplateSpecVolumesCsi({
    required this.driver,
    this.readOnly,
    this.volumeAttributes,
  });

  final TfArg<String> driver;

  final TfArg<bool>? readOnly;

  final TfArg<Map<String, String>>? volumeAttributes;

  Map<String, Object?> encode() => {
    'driver': driver.toTfJson(),
    if (readOnly != null) 'read_only': readOnly!.toTfJson(),
    if (volumeAttributes != null)
      'volume_attributes': volumeAttributes!.toTfJson(),
  };
}

/// Typed helper for the `template.spec.volumes.empty_dir` block of
/// `google_cloud_run_service` (derived from provider schema).
@immutable
final class CloudRunServiceTemplateSpecVolumesEmptyDir {
  const CloudRunServiceTemplateSpecVolumesEmptyDir({
    this.medium,
    this.sizeLimit,
  });

  final TfArg<String>? medium;

  final TfArg<String>? sizeLimit;

  Map<String, Object?> encode() => {
    if (medium != null) 'medium': medium!.toTfJson(),
    if (sizeLimit != null) 'size_limit': sizeLimit!.toTfJson(),
  };
}

/// Typed helper for the `template.spec.volumes.nfs` block of
/// `google_cloud_run_service` (derived from provider schema).
@immutable
final class CloudRunServiceTemplateSpecVolumesNfs {
  const CloudRunServiceTemplateSpecVolumesNfs({
    required this.path,
    this.readOnly,
    required this.server,
  });

  final TfArg<String> path;

  final TfArg<bool>? readOnly;

  final TfArg<String> server;

  Map<String, Object?> encode() => {
    'path': path.toTfJson(),
    if (readOnly != null) 'read_only': readOnly!.toTfJson(),
    'server': server.toTfJson(),
  };
}

/// Typed helper for the `template.spec.volumes.secret` block of
/// `google_cloud_run_service` (derived from provider schema).
@immutable
final class CloudRunServiceTemplateSpecVolumesSecret {
  const CloudRunServiceTemplateSpecVolumesSecret({
    this.defaultMode,
    required this.secretName,
    this.items,
  });

  final TfArg<num>? defaultMode;

  final TfArg<String> secretName;

  final List<CloudRunServiceTemplateSpecVolumesSecretItems>? items;

  Map<String, Object?> encode() => {
    if (defaultMode != null) 'default_mode': defaultMode!.toTfJson(),
    'secret_name': secretName.toTfJson(),
    if (items != null) 'items': [for (final e in items!) e.encode()],
  };
}

/// Typed helper for the `template.spec.volumes.secret.items` block of
/// `google_cloud_run_service` (derived from provider schema).
@immutable
final class CloudRunServiceTemplateSpecVolumesSecretItems {
  const CloudRunServiceTemplateSpecVolumesSecretItems({
    required this.key,
    this.mode,
    required this.path,
  });

  final TfArg<String> key;

  final TfArg<num>? mode;

  final TfArg<String> path;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    if (mode != null) 'mode': mode!.toTfJson(),
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

  Map<String, Object?> encode() => {
    if (latestRevision != null) 'latest_revision': latestRevision!.toTfJson(),
    'percent': percent.toTfJson(),
    if (revisionName != null) 'revision_name': revisionName!.toTfJson(),
    if (tag != null) 'tag': tag!.toTfJson(),
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
///   localName: 'hello',
///   location: TfArg.literal('us-central1'),
///   name: TfArg.literal('terradart-run-v1'),
///   template: CloudRunServiceTemplate(
///     spec: CloudRunServiceTemplateSpec(
///       containers: [
///         CloudRunServiceTemplateSpecContainers(
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

  GoogleCloudRunService({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> name,
    CloudRunServiceTemplate? template,
    List<CloudRunServiceTraffic>? traffic,
    TfArg<bool>? autogenerateRevisionName,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'name': name,
           if (template != null) 'template': TfArg.literal(template.encode()),
           if (traffic != null)
             'traffic': TfArg.literal([for (final e in traffic) e.encode()]),
           if (autogenerateRevisionName != null)
             'autogenerate_revision_name': autogenerateRevisionName,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCloudRunServiceSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `status` attribute.
  TfRef<List<Map<String, Object?>>> get status =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'status');
}
