// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_batch_job_definition`.
const Set<String> _awsBatchJobDefinitionSensitive = <String>{};

/// Typed helper for the `eks_properties` block of
/// `aws_batch_job_definition` (derived from provider schema).
@immutable
final class BatchJobDefinitionEksProperties {
  const BatchJobDefinitionEksProperties({required this.podProperties});

  final BatchJobDefinitionEksPropertiesPodProperties podProperties;

  Map<String, Object?> encode() => {'pod_properties': podProperties.encode()};
}

/// Typed helper for the `eks_properties.pod_properties` block of
/// `aws_batch_job_definition` (derived from provider schema).
@immutable
final class BatchJobDefinitionEksPropertiesPodProperties {
  const BatchJobDefinitionEksPropertiesPodProperties({
    this.dnsPolicy,
    this.hostNetwork,
    this.serviceAccountName,
    this.shareProcessNamespace,
    required this.containers,
    this.imagePullSecret,
    this.initContainers,
    this.metadata,
    this.volumes,
  });

  final TfArg<String>? dnsPolicy;

  final TfArg<bool>? hostNetwork;

  final TfArg<String>? serviceAccountName;

  final TfArg<bool>? shareProcessNamespace;

  final List<BatchJobDefinitionEksPropertiesPodPropertiesContainers> containers;

  final List<BatchJobDefinitionEksPropertiesPodPropertiesImagePullSecret>?
  imagePullSecret;

  final List<BatchJobDefinitionEksPropertiesPodPropertiesInitContainers>?
  initContainers;

  final BatchJobDefinitionEksPropertiesPodPropertiesMetadata? metadata;

  final List<BatchJobDefinitionEksPropertiesPodPropertiesVolumes>? volumes;

  Map<String, Object?> encode() => {
    if (dnsPolicy != null) 'dns_policy': dnsPolicy!.toTfJson(),
    if (hostNetwork != null) 'host_network': hostNetwork!.toTfJson(),
    if (serviceAccountName != null)
      'service_account_name': serviceAccountName!.toTfJson(),
    if (shareProcessNamespace != null)
      'share_process_namespace': shareProcessNamespace!.toTfJson(),
    'containers': [for (final e in containers) e.encode()],
    if (imagePullSecret != null)
      'image_pull_secret': [for (final e in imagePullSecret!) e.encode()],
    if (initContainers != null)
      'init_containers': [for (final e in initContainers!) e.encode()],
    if (metadata != null) 'metadata': metadata!.encode(),
    if (volumes != null) 'volumes': [for (final e in volumes!) e.encode()],
  };
}

/// Typed helper for the `eks_properties.pod_properties.containers` block of
/// `aws_batch_job_definition` (derived from provider schema).
@immutable
final class BatchJobDefinitionEksPropertiesPodPropertiesContainers {
  const BatchJobDefinitionEksPropertiesPodPropertiesContainers({
    this.args,
    this.command,
    required this.image,
    this.imagePullPolicy,
    this.name,
    this.env,
    this.resources,
    this.securityContext,
    this.volumeMounts,
  });

  final TfArg<List<Object?>>? args;

  final TfArg<List<Object?>>? command;

  final TfArg<String> image;

  final TfArg<String>? imagePullPolicy;

  final TfArg<String>? name;

  final List<BatchJobDefinitionEksPropertiesPodPropertiesContainersEnv>? env;

  final BatchJobDefinitionEksPropertiesPodPropertiesContainersResources?
  resources;

  final BatchJobDefinitionEksPropertiesPodPropertiesContainersSecurityContext?
  securityContext;

  final List<
    BatchJobDefinitionEksPropertiesPodPropertiesContainersVolumeMounts
  >?
  volumeMounts;

  Map<String, Object?> encode() => {
    if (args != null) 'args': args!.toTfJson(),
    if (command != null) 'command': command!.toTfJson(),
    'image': image.toTfJson(),
    if (imagePullPolicy != null)
      'image_pull_policy': imagePullPolicy!.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
    if (env != null) 'env': [for (final e in env!) e.encode()],
    if (resources != null) 'resources': resources!.encode(),
    if (securityContext != null) 'security_context': securityContext!.encode(),
    if (volumeMounts != null)
      'volume_mounts': [for (final e in volumeMounts!) e.encode()],
  };
}

/// Typed helper for the `eks_properties.pod_properties.containers.env` block of
/// `aws_batch_job_definition` (derived from provider schema).
@immutable
final class BatchJobDefinitionEksPropertiesPodPropertiesContainersEnv {
  const BatchJobDefinitionEksPropertiesPodPropertiesContainersEnv({
    required this.name,
    required this.value,
  });

  final TfArg<String> name;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `eks_properties.pod_properties.containers.resources` block of
/// `aws_batch_job_definition` (derived from provider schema).
@immutable
final class BatchJobDefinitionEksPropertiesPodPropertiesContainersResources {
  const BatchJobDefinitionEksPropertiesPodPropertiesContainersResources({
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

/// Typed helper for the `eks_properties.pod_properties.containers.security_context` block of
/// `aws_batch_job_definition` (derived from provider schema).
@immutable
final class BatchJobDefinitionEksPropertiesPodPropertiesContainersSecurityContext {
  const BatchJobDefinitionEksPropertiesPodPropertiesContainersSecurityContext({
    this.allowPrivilegeEscalation,
    this.privileged,
    this.readOnlyRootFileSystem,
    this.runAsGroup,
    this.runAsNonRoot,
    this.runAsUser,
  });

  final TfArg<bool>? allowPrivilegeEscalation;

  final TfArg<bool>? privileged;

  final TfArg<bool>? readOnlyRootFileSystem;

  final TfArg<num>? runAsGroup;

  final TfArg<bool>? runAsNonRoot;

  final TfArg<num>? runAsUser;

  Map<String, Object?> encode() => {
    if (allowPrivilegeEscalation != null)
      'allow_privilege_escalation': allowPrivilegeEscalation!.toTfJson(),
    if (privileged != null) 'privileged': privileged!.toTfJson(),
    if (readOnlyRootFileSystem != null)
      'read_only_root_file_system': readOnlyRootFileSystem!.toTfJson(),
    if (runAsGroup != null) 'run_as_group': runAsGroup!.toTfJson(),
    if (runAsNonRoot != null) 'run_as_non_root': runAsNonRoot!.toTfJson(),
    if (runAsUser != null) 'run_as_user': runAsUser!.toTfJson(),
  };
}

/// Typed helper for the `eks_properties.pod_properties.containers.volume_mounts` block of
/// `aws_batch_job_definition` (derived from provider schema).
@immutable
final class BatchJobDefinitionEksPropertiesPodPropertiesContainersVolumeMounts {
  const BatchJobDefinitionEksPropertiesPodPropertiesContainersVolumeMounts({
    required this.mountPath,
    required this.name,
    this.readOnly,
  });

  final TfArg<String> mountPath;

  final TfArg<String> name;

  final TfArg<bool>? readOnly;

  Map<String, Object?> encode() => {
    'mount_path': mountPath.toTfJson(),
    'name': name.toTfJson(),
    if (readOnly != null) 'read_only': readOnly!.toTfJson(),
  };
}

/// Typed helper for the `eks_properties.pod_properties.image_pull_secret` block of
/// `aws_batch_job_definition` (derived from provider schema).
@immutable
final class BatchJobDefinitionEksPropertiesPodPropertiesImagePullSecret {
  const BatchJobDefinitionEksPropertiesPodPropertiesImagePullSecret({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `eks_properties.pod_properties.init_containers` block of
/// `aws_batch_job_definition` (derived from provider schema).
@immutable
final class BatchJobDefinitionEksPropertiesPodPropertiesInitContainers {
  const BatchJobDefinitionEksPropertiesPodPropertiesInitContainers({
    this.args,
    this.command,
    required this.image,
    this.imagePullPolicy,
    this.name,
    this.env,
    this.resources,
    this.securityContext,
    this.volumeMounts,
  });

  final TfArg<List<Object?>>? args;

  final TfArg<List<Object?>>? command;

  final TfArg<String> image;

  final TfArg<String>? imagePullPolicy;

  final TfArg<String>? name;

  final List<BatchJobDefinitionEksPropertiesPodPropertiesInitContainersEnv>?
  env;

  final BatchJobDefinitionEksPropertiesPodPropertiesInitContainersResources?
  resources;

  final BatchJobDefinitionEksPropertiesPodPropertiesInitContainersSecurityContext?
  securityContext;

  final List<
    BatchJobDefinitionEksPropertiesPodPropertiesInitContainersVolumeMounts
  >?
  volumeMounts;

  Map<String, Object?> encode() => {
    if (args != null) 'args': args!.toTfJson(),
    if (command != null) 'command': command!.toTfJson(),
    'image': image.toTfJson(),
    if (imagePullPolicy != null)
      'image_pull_policy': imagePullPolicy!.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
    if (env != null) 'env': [for (final e in env!) e.encode()],
    if (resources != null) 'resources': resources!.encode(),
    if (securityContext != null) 'security_context': securityContext!.encode(),
    if (volumeMounts != null)
      'volume_mounts': [for (final e in volumeMounts!) e.encode()],
  };
}

/// Typed helper for the `eks_properties.pod_properties.init_containers.env` block of
/// `aws_batch_job_definition` (derived from provider schema).
@immutable
final class BatchJobDefinitionEksPropertiesPodPropertiesInitContainersEnv {
  const BatchJobDefinitionEksPropertiesPodPropertiesInitContainersEnv({
    required this.name,
    required this.value,
  });

  final TfArg<String> name;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `eks_properties.pod_properties.init_containers.resources` block of
/// `aws_batch_job_definition` (derived from provider schema).
@immutable
final class BatchJobDefinitionEksPropertiesPodPropertiesInitContainersResources {
  const BatchJobDefinitionEksPropertiesPodPropertiesInitContainersResources({
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

/// Typed helper for the `eks_properties.pod_properties.init_containers.security_context` block of
/// `aws_batch_job_definition` (derived from provider schema).
@immutable
final class BatchJobDefinitionEksPropertiesPodPropertiesInitContainersSecurityContext {
  const BatchJobDefinitionEksPropertiesPodPropertiesInitContainersSecurityContext({
    this.allowPrivilegeEscalation,
    this.privileged,
    this.readOnlyRootFileSystem,
    this.runAsGroup,
    this.runAsNonRoot,
    this.runAsUser,
  });

  final TfArg<bool>? allowPrivilegeEscalation;

  final TfArg<bool>? privileged;

  final TfArg<bool>? readOnlyRootFileSystem;

  final TfArg<num>? runAsGroup;

  final TfArg<bool>? runAsNonRoot;

  final TfArg<num>? runAsUser;

  Map<String, Object?> encode() => {
    if (allowPrivilegeEscalation != null)
      'allow_privilege_escalation': allowPrivilegeEscalation!.toTfJson(),
    if (privileged != null) 'privileged': privileged!.toTfJson(),
    if (readOnlyRootFileSystem != null)
      'read_only_root_file_system': readOnlyRootFileSystem!.toTfJson(),
    if (runAsGroup != null) 'run_as_group': runAsGroup!.toTfJson(),
    if (runAsNonRoot != null) 'run_as_non_root': runAsNonRoot!.toTfJson(),
    if (runAsUser != null) 'run_as_user': runAsUser!.toTfJson(),
  };
}

/// Typed helper for the `eks_properties.pod_properties.init_containers.volume_mounts` block of
/// `aws_batch_job_definition` (derived from provider schema).
@immutable
final class BatchJobDefinitionEksPropertiesPodPropertiesInitContainersVolumeMounts {
  const BatchJobDefinitionEksPropertiesPodPropertiesInitContainersVolumeMounts({
    required this.mountPath,
    required this.name,
    this.readOnly,
  });

  final TfArg<String> mountPath;

  final TfArg<String> name;

  final TfArg<bool>? readOnly;

  Map<String, Object?> encode() => {
    'mount_path': mountPath.toTfJson(),
    'name': name.toTfJson(),
    if (readOnly != null) 'read_only': readOnly!.toTfJson(),
  };
}

/// Typed helper for the `eks_properties.pod_properties.metadata` block of
/// `aws_batch_job_definition` (derived from provider schema).
@immutable
final class BatchJobDefinitionEksPropertiesPodPropertiesMetadata {
  const BatchJobDefinitionEksPropertiesPodPropertiesMetadata({this.labels});

  final TfArg<Map<String, String>>? labels;

  Map<String, Object?> encode() => {
    if (labels != null) 'labels': labels!.toTfJson(),
  };
}

/// Typed helper for the `eks_properties.pod_properties.volumes` block of
/// `aws_batch_job_definition` (derived from provider schema).
@immutable
final class BatchJobDefinitionEksPropertiesPodPropertiesVolumes {
  const BatchJobDefinitionEksPropertiesPodPropertiesVolumes({
    this.name,
    this.emptyDir,
    this.hostPath,
    this.secret,
  });

  final TfArg<String>? name;

  final BatchJobDefinitionEksPropertiesPodPropertiesVolumesEmptyDir? emptyDir;

  final BatchJobDefinitionEksPropertiesPodPropertiesVolumesHostPath? hostPath;

  final BatchJobDefinitionEksPropertiesPodPropertiesVolumesSecret? secret;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (emptyDir != null) 'empty_dir': emptyDir!.encode(),
    if (hostPath != null) 'host_path': hostPath!.encode(),
    if (secret != null) 'secret': secret!.encode(),
  };
}

/// Typed helper for the `eks_properties.pod_properties.volumes.empty_dir` block of
/// `aws_batch_job_definition` (derived from provider schema).
@immutable
final class BatchJobDefinitionEksPropertiesPodPropertiesVolumesEmptyDir {
  const BatchJobDefinitionEksPropertiesPodPropertiesVolumesEmptyDir({
    this.medium,
    required this.sizeLimit,
  });

  final TfArg<String>? medium;

  final TfArg<String> sizeLimit;

  Map<String, Object?> encode() => {
    if (medium != null) 'medium': medium!.toTfJson(),
    'size_limit': sizeLimit.toTfJson(),
  };
}

/// Typed helper for the `eks_properties.pod_properties.volumes.host_path` block of
/// `aws_batch_job_definition` (derived from provider schema).
@immutable
final class BatchJobDefinitionEksPropertiesPodPropertiesVolumesHostPath {
  const BatchJobDefinitionEksPropertiesPodPropertiesVolumesHostPath({
    required this.path,
  });

  final TfArg<String> path;

  Map<String, Object?> encode() => {'path': path.toTfJson()};
}

/// Typed helper for the `eks_properties.pod_properties.volumes.secret` block of
/// `aws_batch_job_definition` (derived from provider schema).
@immutable
final class BatchJobDefinitionEksPropertiesPodPropertiesVolumesSecret {
  const BatchJobDefinitionEksPropertiesPodPropertiesVolumesSecret({
    this.optional,
    required this.secretName,
  });

  final TfArg<bool>? optional;

  final TfArg<String> secretName;

  Map<String, Object?> encode() => {
    if (optional != null) 'optional': optional!.toTfJson(),
    'secret_name': secretName.toTfJson(),
  };
}

/// Typed helper for the `retry_strategy` block of
/// `aws_batch_job_definition` (derived from provider schema).
@immutable
final class BatchJobDefinitionRetryStrategy {
  const BatchJobDefinitionRetryStrategy({this.attempts, this.evaluateOnExit});

  final TfArg<num>? attempts;

  final List<BatchJobDefinitionRetryStrategyEvaluateOnExit>? evaluateOnExit;

  Map<String, Object?> encode() => {
    if (attempts != null) 'attempts': attempts!.toTfJson(),
    if (evaluateOnExit != null)
      'evaluate_on_exit': [for (final e in evaluateOnExit!) e.encode()],
  };
}

/// Typed helper for the `retry_strategy.evaluate_on_exit` block of
/// `aws_batch_job_definition` (derived from provider schema).
@immutable
final class BatchJobDefinitionRetryStrategyEvaluateOnExit {
  const BatchJobDefinitionRetryStrategyEvaluateOnExit({
    required this.action,
    this.onExitCode,
    this.onReason,
    this.onStatusReason,
  });

  final TfArg<String> action;

  final TfArg<String>? onExitCode;

  final TfArg<String>? onReason;

  final TfArg<String>? onStatusReason;

  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    if (onExitCode != null) 'on_exit_code': onExitCode!.toTfJson(),
    if (onReason != null) 'on_reason': onReason!.toTfJson(),
    if (onStatusReason != null) 'on_status_reason': onStatusReason!.toTfJson(),
  };
}

/// Typed helper for the `timeout` block of
/// `aws_batch_job_definition` (derived from provider schema).
@immutable
final class BatchJobDefinitionTimeout {
  const BatchJobDefinitionTimeout({this.attemptDurationSeconds});

  final TfArg<num>? attemptDurationSeconds;

  Map<String, Object?> encode() => {
    if (attemptDurationSeconds != null)
      'attempt_duration_seconds': attemptDurationSeconds!.toTfJson(),
  };
}

/// Factory wrapper for `aws_batch_job_definition`.
final class AwsBatchJobDefinition extends Resource {
  static const String tfType = 'aws_batch_job_definition';

  AwsBatchJobDefinition({
    required super.localName,
    TfArg<String>? containerProperties,
    TfArg<bool>? deregisterOnNewRevision,
    TfArg<String>? ecsProperties,
    required TfArg<String> name,
    TfArg<String>? nodeProperties,
    TfArg<Map<String, String>>? parameters,
    TfArg<List<String>>? platformCapabilities,
    TfArg<bool>? propagateTags,
    TfArg<String>? region,
    TfArg<num>? schedulingPriority,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> type,
    BatchJobDefinitionEksProperties? eksProperties,
    BatchJobDefinitionRetryStrategy? retryStrategy,
    BatchJobDefinitionTimeout? timeout,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (containerProperties != null)
             'container_properties': containerProperties,
           if (deregisterOnNewRevision != null)
             'deregister_on_new_revision': deregisterOnNewRevision,
           if (ecsProperties != null) 'ecs_properties': ecsProperties,
           'name': name,
           if (nodeProperties != null) 'node_properties': nodeProperties,
           if (parameters != null) 'parameters': parameters,
           if (platformCapabilities != null)
             'platform_capabilities': platformCapabilities,
           if (propagateTags != null) 'propagate_tags': propagateTags,
           if (region != null) 'region': region,
           if (schedulingPriority != null)
             'scheduling_priority': schedulingPriority,
           if (tags != null) 'tags': tags,
           'type': type,
           if (eksProperties != null)
             'eks_properties': TfArg.literal(eksProperties.encode()),
           if (retryStrategy != null)
             'retry_strategy': TfArg.literal(retryStrategy.encode()),
           if (timeout != null) 'timeout': TfArg.literal(timeout.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBatchJobDefinitionSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `arn_prefix` attribute.
  TfRef<String> get arnPrefix => TfRef.attribute<String>(this, 'arn_prefix');

  /// Reference to `revision` attribute.
  TfRef<num> get revision => TfRef.attribute<num>(this, 'revision');
}
