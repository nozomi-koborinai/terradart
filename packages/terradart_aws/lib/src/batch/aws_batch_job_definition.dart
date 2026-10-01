// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_batch_job_definition`.
const Set<String> _awsBatchJobDefinitionSensitive = <String>{};

/// Batch Job Definition Platform enum for `platform_capabilities`.
enum BatchJobDefinitionPlatformCapabilities implements TerraformEnum {
  ec2('EC2'),
  fargate('FARGATE'),
  managedInstances('MANAGED_INSTANCES');

  const BatchJobDefinitionPlatformCapabilities(this.terraformValue);
  @override
  final String terraformValue;
}

/// Batch Job Definition enum for `type`.
enum BatchJobDefinitionType implements TerraformEnum {
  container('container'),
  multinode('multinode');

  const BatchJobDefinitionType(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `container_properties`, `ecs_properties`, `eks_properties`, `node_properties` on `aws_batch_job_definition`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.containerProperties(...)`.
sealed class BatchJobDefinitionProperties {
  const BatchJobDefinitionProperties();

  /// Sets `container_properties`.
  const factory BatchJobDefinitionProperties.containerProperties(
    TfArg<String> containerProperties,
  ) = BatchJobDefinitionContainerProperties;

  /// Sets `ecs_properties`.
  const factory BatchJobDefinitionProperties.ecsProperties(
    TfArg<String> ecsProperties,
  ) = BatchJobDefinitionEcsProperties;

  /// Sets `eks_properties`.
  const factory BatchJobDefinitionProperties.eksProperties(
    BatchJobDefinitionEksProperties eksProperties,
  ) = BatchJobDefinitionEksPropertiesChoice;

  /// Sets `node_properties`.
  const factory BatchJobDefinitionProperties.nodeProperties(
    TfArg<String> nodeProperties,
  ) = BatchJobDefinitionNodeProperties;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [BatchJobDefinitionProperties.containerProperties] choice: sets `container_properties`.
final class BatchJobDefinitionContainerProperties
    extends BatchJobDefinitionProperties {
  const BatchJobDefinitionContainerProperties(this.containerProperties);

  final TfArg<String> containerProperties;

  @override
  String get blockKey => 'container_properties';

  @override
  Map<String, Object?> encode() => {
    'container_properties': containerProperties.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'container_properties': containerProperties,
  };
}

/// The [BatchJobDefinitionProperties.ecsProperties] choice: sets `ecs_properties`.
final class BatchJobDefinitionEcsProperties
    extends BatchJobDefinitionProperties {
  const BatchJobDefinitionEcsProperties(this.ecsProperties);

  final TfArg<String> ecsProperties;

  @override
  String get blockKey => 'ecs_properties';

  @override
  Map<String, Object?> encode() => {'ecs_properties': ecsProperties.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'ecs_properties': ecsProperties};
}

/// The [BatchJobDefinitionProperties.eksProperties] choice: sets `eks_properties`.
final class BatchJobDefinitionEksPropertiesChoice
    extends BatchJobDefinitionProperties {
  const BatchJobDefinitionEksPropertiesChoice(this.eksProperties);

  final BatchJobDefinitionEksProperties eksProperties;

  @override
  String get blockKey => 'eks_properties';

  @override
  Map<String, Object?> encode() => {'eks_properties': eksProperties.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'eks_properties': TfArg.literal(eksProperties.encode()),
  };
}

/// The [BatchJobDefinitionProperties.nodeProperties] choice: sets `node_properties`.
final class BatchJobDefinitionNodeProperties
    extends BatchJobDefinitionProperties {
  const BatchJobDefinitionNodeProperties(this.nodeProperties);

  final TfArg<String> nodeProperties;

  @override
  String get blockKey => 'node_properties';

  @override
  Map<String, Object?> encode() => {
    'node_properties': nodeProperties.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {'node_properties': nodeProperties};
}

/// Typed helper for the `eks_properties` block of
/// `aws_batch_job_definition` (derived from provider schema).
@immutable
final class BatchJobDefinitionEksProperties {
  const BatchJobDefinitionEksProperties({required this.podProperties});

  final BatchJobDefinitionPodProperties podProperties;

  Map<String, Object?> encode() => {'pod_properties': podProperties.encode()};
}

/// Typed helper for the `eks_properties.pod_properties` block of
/// `aws_batch_job_definition` (derived from provider schema).
@immutable
final class BatchJobDefinitionPodProperties {
  const BatchJobDefinitionPodProperties({
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

  final TfArg<BatchJobDefinitionDnsPolicy>? dnsPolicy;

  final TfArg<bool>? hostNetwork;

  final TfArg<String>? serviceAccountName;

  final TfArg<bool>? shareProcessNamespace;

  final List<BatchJobDefinitionContainers> containers;

  final List<BatchJobDefinitionImagePullSecret>? imagePullSecret;

  final List<BatchJobDefinitionInitContainers>? initContainers;

  final BatchJobDefinitionMetadata? metadata;

  final List<BatchJobDefinitionVolumes>? volumes;

  Map<String, Object?> encode() => {
    'dns_policy': ?dnsPolicy?.toTfJson(),
    'host_network': ?hostNetwork?.toTfJson(),
    'service_account_name': ?serviceAccountName?.toTfJson(),
    'share_process_namespace': ?shareProcessNamespace?.toTfJson(),
    'containers': [for (final e in containers) e.encode()],
    if (imagePullSecret != null)
      'image_pull_secret': [for (final e in imagePullSecret!) e.encode()],
    if (initContainers != null)
      'init_containers': [for (final e in initContainers!) e.encode()],
    'metadata': ?metadata?.encode(),
    if (volumes != null) 'volumes': [for (final e in volumes!) e.encode()],
  };
}

/// `dns_policy` — derived from the provider schema description.
enum BatchJobDefinitionDnsPolicy implements TerraformEnum {
  defaultCase('Default'),
  clusterfirst('ClusterFirst'),
  clusterfirstwithhostnet('ClusterFirstWithHostNet');

  const BatchJobDefinitionDnsPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `eks_properties.pod_properties.containers` block of
/// `aws_batch_job_definition` (derived from provider schema).
@immutable
final class BatchJobDefinitionContainers {
  const BatchJobDefinitionContainers({
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

  final TfArg<List<String>>? args;

  final TfArg<List<String>>? command;

  final TfArg<String> image;

  final TfArg<BatchJobDefinitionImagePullPolicy>? imagePullPolicy;

  final TfArg<String>? name;

  final List<BatchJobDefinitionEnv>? env;

  final BatchJobDefinitionResources? resources;

  final BatchJobDefinitionSecurityContext? securityContext;

  final List<BatchJobDefinitionVolumeMounts>? volumeMounts;

  Map<String, Object?> encode() => {
    'args': ?args?.toTfJson(),
    'command': ?command?.toTfJson(),
    'image': image.toTfJson(),
    'image_pull_policy': ?imagePullPolicy?.toTfJson(),
    'name': ?name?.toTfJson(),
    if (env != null) 'env': [for (final e in env!) e.encode()],
    'resources': ?resources?.encode(),
    'security_context': ?securityContext?.encode(),
    if (volumeMounts != null)
      'volume_mounts': [for (final e in volumeMounts!) e.encode()],
  };
}

/// `image_pull_policy` — derived from the provider schema description.
enum BatchJobDefinitionImagePullPolicy implements TerraformEnum {
  always('Always'),
  ifnotpresent('IfNotPresent'),
  never('Never');

  const BatchJobDefinitionImagePullPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `eks_properties.pod_properties.containers.env` block of
/// `aws_batch_job_definition` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class BatchJobDefinitionEnv {
  const BatchJobDefinitionEnv({required this.name, required this.value});

  final TfArg<String> name;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `eks_properties.pod_properties.containers.resources` block of
/// `aws_batch_job_definition` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class BatchJobDefinitionResources {
  const BatchJobDefinitionResources({this.limits, this.requests});

  final TfArg<Map<String, String>>? limits;

  final TfArg<Map<String, String>>? requests;

  Map<String, Object?> encode() => {
    'limits': ?limits?.toTfJson(),
    'requests': ?requests?.toTfJson(),
  };
}

/// Typed helper for the `eks_properties.pod_properties.containers.security_context` block of
/// `aws_batch_job_definition` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class BatchJobDefinitionSecurityContext {
  const BatchJobDefinitionSecurityContext({
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
    'allow_privilege_escalation': ?allowPrivilegeEscalation?.toTfJson(),
    'privileged': ?privileged?.toTfJson(),
    'read_only_root_file_system': ?readOnlyRootFileSystem?.toTfJson(),
    'run_as_group': ?runAsGroup?.toTfJson(),
    'run_as_non_root': ?runAsNonRoot?.toTfJson(),
    'run_as_user': ?runAsUser?.toTfJson(),
  };
}

/// Typed helper for the `eks_properties.pod_properties.containers.volume_mounts` block of
/// `aws_batch_job_definition` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class BatchJobDefinitionVolumeMounts {
  const BatchJobDefinitionVolumeMounts({
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
    'read_only': ?readOnly?.toTfJson(),
  };
}

/// Typed helper for the `eks_properties.pod_properties.image_pull_secret` block of
/// `aws_batch_job_definition` (derived from provider schema).
@immutable
final class BatchJobDefinitionImagePullSecret {
  const BatchJobDefinitionImagePullSecret({required this.name});

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `eks_properties.pod_properties.init_containers` block of
/// `aws_batch_job_definition` (derived from provider schema).
@immutable
final class BatchJobDefinitionInitContainers {
  const BatchJobDefinitionInitContainers({
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

  final TfArg<List<String>>? args;

  final TfArg<List<String>>? command;

  final TfArg<String> image;

  final TfArg<BatchJobDefinitionImagePullPolicy>? imagePullPolicy;

  final TfArg<String>? name;

  final List<BatchJobDefinitionEnv>? env;

  final BatchJobDefinitionResources? resources;

  final BatchJobDefinitionSecurityContext? securityContext;

  final List<BatchJobDefinitionVolumeMounts>? volumeMounts;

  Map<String, Object?> encode() => {
    'args': ?args?.toTfJson(),
    'command': ?command?.toTfJson(),
    'image': image.toTfJson(),
    'image_pull_policy': ?imagePullPolicy?.toTfJson(),
    'name': ?name?.toTfJson(),
    if (env != null) 'env': [for (final e in env!) e.encode()],
    'resources': ?resources?.encode(),
    'security_context': ?securityContext?.encode(),
    if (volumeMounts != null)
      'volume_mounts': [for (final e in volumeMounts!) e.encode()],
  };
}

/// Typed helper for the `eks_properties.pod_properties.metadata` block of
/// `aws_batch_job_definition` (derived from provider schema).
@immutable
final class BatchJobDefinitionMetadata {
  const BatchJobDefinitionMetadata({this.labels});

  final TfArg<Map<String, String>>? labels;

  Map<String, Object?> encode() => {'labels': ?labels?.toTfJson()};
}

/// Typed helper for the `eks_properties.pod_properties.volumes` block of
/// `aws_batch_job_definition` (derived from provider schema).
@immutable
final class BatchJobDefinitionVolumes {
  const BatchJobDefinitionVolumes({
    this.name,
    this.emptyDir,
    this.hostPath,
    this.secret,
  });

  final TfArg<String>? name;

  final BatchJobDefinitionEmptyDir? emptyDir;

  final BatchJobDefinitionHostPath? hostPath;

  final BatchJobDefinitionSecret? secret;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'empty_dir': ?emptyDir?.encode(),
    'host_path': ?hostPath?.encode(),
    'secret': ?secret?.encode(),
  };
}

/// Typed helper for the `eks_properties.pod_properties.volumes.empty_dir` block of
/// `aws_batch_job_definition` (derived from provider schema).
@immutable
final class BatchJobDefinitionEmptyDir {
  const BatchJobDefinitionEmptyDir({this.medium, required this.sizeLimit});

  final TfArg<BatchJobDefinitionMedium>? medium;

  final TfArg<String> sizeLimit;

  Map<String, Object?> encode() => {
    'medium': ?medium?.toTfJson(),
    'size_limit': sizeLimit.toTfJson(),
  };
}

/// `medium` — derived from the provider schema description.
enum BatchJobDefinitionMedium implements TerraformEnum {
  empty(''),
  memory('Memory');

  const BatchJobDefinitionMedium(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `eks_properties.pod_properties.volumes.host_path` block of
/// `aws_batch_job_definition` (derived from provider schema).
@immutable
final class BatchJobDefinitionHostPath {
  const BatchJobDefinitionHostPath({required this.path});

  final TfArg<String> path;

  Map<String, Object?> encode() => {'path': path.toTfJson()};
}

/// Typed helper for the `eks_properties.pod_properties.volumes.secret` block of
/// `aws_batch_job_definition` (derived from provider schema).
@immutable
final class BatchJobDefinitionSecret {
  const BatchJobDefinitionSecret({this.optional, required this.secretName});

  final TfArg<bool>? optional;

  final TfArg<String> secretName;

  Map<String, Object?> encode() => {
    'optional': ?optional?.toTfJson(),
    'secret_name': secretName.toTfJson(),
  };
}

/// Typed helper for the `retry_strategy` block of
/// `aws_batch_job_definition` (derived from provider schema).
@immutable
final class BatchJobDefinitionRetryStrategy {
  const BatchJobDefinitionRetryStrategy({this.attempts, this.evaluateOnExit});

  final TfArg<num>? attempts;

  final List<BatchJobDefinitionEvaluateOnExit>? evaluateOnExit;

  Map<String, Object?> encode() => {
    'attempts': ?attempts?.toTfJson(),
    if (evaluateOnExit != null)
      'evaluate_on_exit': [for (final e in evaluateOnExit!) e.encode()],
  };
}

/// Typed helper for the `retry_strategy.evaluate_on_exit` block of
/// `aws_batch_job_definition` (derived from provider schema).
@immutable
final class BatchJobDefinitionEvaluateOnExit {
  const BatchJobDefinitionEvaluateOnExit({
    required this.action,
    this.onExitCode,
    this.onReason,
    this.onStatusReason,
  });

  final TfArg<BatchJobDefinitionAction> action;

  final TfArg<String>? onExitCode;

  final TfArg<String>? onReason;

  final TfArg<String>? onStatusReason;

  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    'on_exit_code': ?onExitCode?.toTfJson(),
    'on_reason': ?onReason?.toTfJson(),
    'on_status_reason': ?onStatusReason?.toTfJson(),
  };
}

/// `action` — derived from the provider schema description.
enum BatchJobDefinitionAction implements TerraformEnum {
  retry('RETRY'),
  exit('EXIT');

  const BatchJobDefinitionAction(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `timeout` block of
/// `aws_batch_job_definition` (derived from provider schema).
@immutable
final class BatchJobDefinitionTimeout {
  const BatchJobDefinitionTimeout({this.attemptDurationSeconds});

  final TfArg<num>? attemptDurationSeconds;

  Map<String, Object?> encode() => {
    'attempt_duration_seconds': ?attemptDurationSeconds?.toTfJson(),
  };
}

/// Factory wrapper for `aws_batch_job_definition`.
final class AwsBatchJobDefinition extends Resource {
  static const String tfType = 'aws_batch_job_definition';

  AwsBatchJobDefinition({
    required super.localName,
    BatchJobDefinitionProperties? properties,
    TfArg<bool>? deregisterOnNewRevision,
    required TfArg<String> name,
    TfArg<Map<String, String>>? parameters,
    List<TfArg<BatchJobDefinitionPlatformCapabilities>>? platformCapabilities,
    TfArg<bool>? propagateTags,
    TfArg<String>? region,
    TfArg<num>? schedulingPriority,
    TfArg<Map<String, String>>? tags,
    required TfArg<BatchJobDefinitionType> type,
    BatchJobDefinitionRetryStrategy? retryStrategy,
    BatchJobDefinitionTimeout? timeout,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...?properties?.argMap,
           'deregister_on_new_revision': ?deregisterOnNewRevision,
           'name': name,
           'parameters': ?parameters,
           if (platformCapabilities != null)
             'platform_capabilities': TfArg.literal([
               for (final e in platformCapabilities) e.toTfJson(),
             ]),
           'propagate_tags': ?propagateTags,
           'region': ?region,
           'scheduling_priority': ?schedulingPriority,
           'tags': ?tags,
           'type': type,
           if (retryStrategy != null)
             'retry_strategy': TfArg.literal(retryStrategy.encode()),
           if (timeout != null) 'timeout': TfArg.literal(timeout.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBatchJobDefinitionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsBatchJobDefinition>`.
  RefTo<AwsBatchJobDefinition> get ref => RefTo.of(this);

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

  /// Reference to `container_properties` attribute.
  TfRef<String> get containerPropertiesRef =>
      TfRef.attribute<String>(this, 'container_properties');

  /// Reference to `deregister_on_new_revision` attribute.
  TfRef<bool> get deregisterOnNewRevisionRef =>
      TfRef.attribute<bool>(this, 'deregister_on_new_revision');

  /// Reference to `ecs_properties` attribute.
  TfRef<String> get ecsPropertiesRef =>
      TfRef.attribute<String>(this, 'ecs_properties');

  /// Reference to `node_properties` attribute.
  TfRef<String> get nodePropertiesRef =>
      TfRef.attribute<String>(this, 'node_properties');

  /// Reference to `parameters` attribute.
  TfRef<Map<String, String>> get parametersRef =>
      TfRef.attribute<Map<String, String>>(this, 'parameters');

  /// Reference to `platform_capabilities` attribute.
  TfRef<List<String>> get platformCapabilitiesRef =>
      TfRef.attribute<List<String>>(this, 'platform_capabilities');

  /// Reference to `propagate_tags` attribute.
  TfRef<bool> get propagateTagsRef =>
      TfRef.attribute<bool>(this, 'propagate_tags');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `scheduling_priority` attribute.
  TfRef<num> get schedulingPriorityRef =>
      TfRef.attribute<num>(this, 'scheduling_priority');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `type` attribute.
  TfRef<String> get typeRef => TfRef.attribute<String>(this, 'type');
}
