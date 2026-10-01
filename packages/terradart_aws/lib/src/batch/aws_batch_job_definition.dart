// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_batch_job_definition`.
const Set<String> _awsBatchJobDefinitionSensitive = <String>{};

/// Batch Job Definition Platform enum for `platform_capabilities`.
extension type const BatchJobDefinitionPlatformCapabilities._(TfArg<String> _)
    implements TfArg<String> {
  BatchJobDefinitionPlatformCapabilities.variable(String name)
    : this._(TfArg.variable(name));
  BatchJobDefinitionPlatformCapabilities.expression(String template)
    : this._(TfArg.expression(template));
  const BatchJobDefinitionPlatformCapabilities.arg(TfArg<String> arg)
    : this._(arg);

  static const ec2 = BatchJobDefinitionPlatformCapabilities._(
    TfArgLiteral('EC2'),
  );
  static const fargate = BatchJobDefinitionPlatformCapabilities._(
    TfArgLiteral('FARGATE'),
  );
  static const managedInstances = BatchJobDefinitionPlatformCapabilities._(
    TfArgLiteral('MANAGED_INSTANCES'),
  );

  static const List<BatchJobDefinitionPlatformCapabilities> values = [
    ec2,
    fargate,
    managedInstances,
  ];
}

/// Batch Job Definition enum for `type`.
extension type const BatchJobDefinitionType._(TfArg<String> _)
    implements TfArg<String> {
  BatchJobDefinitionType.variable(String name) : this._(TfArg.variable(name));
  BatchJobDefinitionType.expression(String template)
    : this._(TfArg.expression(template));
  const BatchJobDefinitionType.arg(TfArg<String> arg) : this._(arg);

  static const container = BatchJobDefinitionType._(TfArgLiteral('container'));
  static const multinode = BatchJobDefinitionType._(TfArgLiteral('multinode'));

  static const List<BatchJobDefinitionType> values = [container, multinode];
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
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [BatchJobDefinitionProperties.containerProperties] choice: sets `container_properties`.
final class BatchJobDefinitionContainerProperties
    extends BatchJobDefinitionProperties {
  const BatchJobDefinitionContainerProperties(this.containerProperties);

  final TfArg<String> containerProperties;

  @internal
  @override
  String get blockKey => 'container_properties';

  @internal
  @override
  Map<String, Object?> encode() => {
    'container_properties': containerProperties.toTfJson(),
  };

  @internal
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

  @internal
  @override
  String get blockKey => 'ecs_properties';

  @internal
  @override
  Map<String, Object?> encode() => {'ecs_properties': ecsProperties.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'ecs_properties': ecsProperties};
}

/// The [BatchJobDefinitionProperties.eksProperties] choice: sets `eks_properties`.
final class BatchJobDefinitionEksPropertiesChoice
    extends BatchJobDefinitionProperties {
  const BatchJobDefinitionEksPropertiesChoice(this.eksProperties);

  final BatchJobDefinitionEksProperties eksProperties;

  @internal
  @override
  String get blockKey => 'eks_properties';

  @internal
  @override
  Map<String, Object?> encode() => {'eks_properties': eksProperties.encode()};

  @internal
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

  @internal
  @override
  String get blockKey => 'node_properties';

  @internal
  @override
  Map<String, Object?> encode() => {
    'node_properties': nodeProperties.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'node_properties': nodeProperties};
}

/// Typed helper for the `eks_properties` block of
/// `aws_batch_job_definition` (derived from provider schema).
@immutable
final class BatchJobDefinitionEksProperties {
  const BatchJobDefinitionEksProperties({required this.podProperties});

  final BatchJobDefinitionPodProperties podProperties;

  @internal
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

  final BatchJobDefinitionDnsPolicy? dnsPolicy;

  final TfArg<bool>? hostNetwork;

  final TfArg<String>? serviceAccountName;

  final TfArg<bool>? shareProcessNamespace;

  final List<BatchJobDefinitionContainers> containers;

  final List<BatchJobDefinitionImagePullSecret>? imagePullSecret;

  final List<BatchJobDefinitionInitContainers>? initContainers;

  final BatchJobDefinitionMetadata? metadata;

  final List<BatchJobDefinitionVolumes>? volumes;

  @internal
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
extension type const BatchJobDefinitionDnsPolicy._(TfArg<String> _)
    implements TfArg<String> {
  BatchJobDefinitionDnsPolicy.variable(String name)
    : this._(TfArg.variable(name));
  BatchJobDefinitionDnsPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const BatchJobDefinitionDnsPolicy.arg(TfArg<String> arg) : this._(arg);

  static const defaultCase = BatchJobDefinitionDnsPolicy._(
    TfArgLiteral('Default'),
  );
  static const clusterfirst = BatchJobDefinitionDnsPolicy._(
    TfArgLiteral('ClusterFirst'),
  );
  static const clusterfirstwithhostnet = BatchJobDefinitionDnsPolicy._(
    TfArgLiteral('ClusterFirstWithHostNet'),
  );

  static const List<BatchJobDefinitionDnsPolicy> values = [
    defaultCase,
    clusterfirst,
    clusterfirstwithhostnet,
  ];
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

  final BatchJobDefinitionImagePullPolicy? imagePullPolicy;

  final TfArg<String>? name;

  final List<BatchJobDefinitionEnv>? env;

  final BatchJobDefinitionResources? resources;

  final BatchJobDefinitionSecurityContext? securityContext;

  final List<BatchJobDefinitionVolumeMounts>? volumeMounts;

  @internal
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
extension type const BatchJobDefinitionImagePullPolicy._(TfArg<String> _)
    implements TfArg<String> {
  BatchJobDefinitionImagePullPolicy.variable(String name)
    : this._(TfArg.variable(name));
  BatchJobDefinitionImagePullPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const BatchJobDefinitionImagePullPolicy.arg(TfArg<String> arg) : this._(arg);

  static const always = BatchJobDefinitionImagePullPolicy._(
    TfArgLiteral('Always'),
  );
  static const ifnotpresent = BatchJobDefinitionImagePullPolicy._(
    TfArgLiteral('IfNotPresent'),
  );
  static const never = BatchJobDefinitionImagePullPolicy._(
    TfArgLiteral('Never'),
  );

  static const List<BatchJobDefinitionImagePullPolicy> values = [
    always,
    ifnotpresent,
    never,
  ];
}

/// Typed helper for the `eks_properties.pod_properties.containers.env` block of
/// `aws_batch_job_definition` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class BatchJobDefinitionEnv {
  const BatchJobDefinitionEnv({required this.name, required this.value});

  final TfArg<String> name;

  final TfArg<String> value;

  @internal
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

  @internal
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

  @internal
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

  @internal
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

  @internal
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

  final BatchJobDefinitionImagePullPolicy? imagePullPolicy;

  final TfArg<String>? name;

  final List<BatchJobDefinitionEnv>? env;

  final BatchJobDefinitionResources? resources;

  final BatchJobDefinitionSecurityContext? securityContext;

  final List<BatchJobDefinitionVolumeMounts>? volumeMounts;

  @internal
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

  @internal
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

  @internal
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

  final BatchJobDefinitionMedium? medium;

  final TfArg<String> sizeLimit;

  @internal
  Map<String, Object?> encode() => {
    'medium': ?medium?.toTfJson(),
    'size_limit': sizeLimit.toTfJson(),
  };
}

/// `medium` — derived from the provider schema description.
extension type const BatchJobDefinitionMedium._(TfArg<String> _)
    implements TfArg<String> {
  BatchJobDefinitionMedium.variable(String name) : this._(TfArg.variable(name));
  BatchJobDefinitionMedium.expression(String template)
    : this._(TfArg.expression(template));
  const BatchJobDefinitionMedium.arg(TfArg<String> arg) : this._(arg);

  static const empty = BatchJobDefinitionMedium._(TfArgLiteral(''));
  static const memory = BatchJobDefinitionMedium._(TfArgLiteral('Memory'));

  static const List<BatchJobDefinitionMedium> values = [empty, memory];
}

/// Typed helper for the `eks_properties.pod_properties.volumes.host_path` block of
/// `aws_batch_job_definition` (derived from provider schema).
@immutable
final class BatchJobDefinitionHostPath {
  const BatchJobDefinitionHostPath({required this.path});

  final TfArg<String> path;

  @internal
  Map<String, Object?> encode() => {'path': path.toTfJson()};
}

/// Typed helper for the `eks_properties.pod_properties.volumes.secret` block of
/// `aws_batch_job_definition` (derived from provider schema).
@immutable
final class BatchJobDefinitionSecret {
  const BatchJobDefinitionSecret({this.optional, required this.secretName});

  final TfArg<bool>? optional;

  final TfArg<String> secretName;

  @internal
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

  @internal
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

  final BatchJobDefinitionAction action;

  final TfArg<String>? onExitCode;

  final TfArg<String>? onReason;

  final TfArg<String>? onStatusReason;

  @internal
  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    'on_exit_code': ?onExitCode?.toTfJson(),
    'on_reason': ?onReason?.toTfJson(),
    'on_status_reason': ?onStatusReason?.toTfJson(),
  };
}

/// `action` — derived from the provider schema description.
extension type const BatchJobDefinitionAction._(TfArg<String> _)
    implements TfArg<String> {
  BatchJobDefinitionAction.variable(String name) : this._(TfArg.variable(name));
  BatchJobDefinitionAction.expression(String template)
    : this._(TfArg.expression(template));
  const BatchJobDefinitionAction.arg(TfArg<String> arg) : this._(arg);

  static const retry = BatchJobDefinitionAction._(TfArgLiteral('RETRY'));
  static const exit = BatchJobDefinitionAction._(TfArgLiteral('EXIT'));

  static const List<BatchJobDefinitionAction> values = [retry, exit];
}

/// Typed helper for the `timeout` block of
/// `aws_batch_job_definition` (derived from provider schema).
@immutable
final class BatchJobDefinitionTimeout {
  const BatchJobDefinitionTimeout({this.attemptDurationSeconds});

  final TfArg<num>? attemptDurationSeconds;

  @internal
  Map<String, Object?> encode() => {
    'attempt_duration_seconds': ?attemptDurationSeconds?.toTfJson(),
  };
}

/// Factory wrapper for `aws_batch_job_definition`.
final class AwsBatchJobDefinition extends Resource {
  static const String tfType = 'aws_batch_job_definition';

  AwsBatchJobDefinition(
    super.localName, {
    BatchJobDefinitionProperties? properties,
    TfArg<bool>? deregisterOnNewRevision,
    required TfArg<String> name,
    TfArg<Map<String, String>>? parameters,
    List<BatchJobDefinitionPlatformCapabilities>? platformCapabilities,
    TfArg<bool>? propagateTags,
    TfArg<String>? region,
    TfArg<num>? schedulingPriority,
    TfArg<Map<String, String>>? tags,
    required BatchJobDefinitionType type,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `arn_prefix` attribute.
  TfRef<String> get arnPrefix => TfRef.attribute<String>(this, 'arn_prefix');

  /// Reference to `revision` attribute.
  TfRef<num> get revision => TfRef.attribute<num>(this, 'revision');

  /// Reference to `container_properties` attribute.
  TfRef<String> get containerProperties =>
      TfRef.attribute<String>(this, 'container_properties');

  /// Reference to `deregister_on_new_revision` attribute.
  TfRef<bool> get deregisterOnNewRevision =>
      TfRef.attribute<bool>(this, 'deregister_on_new_revision');

  /// Reference to `ecs_properties` attribute.
  TfRef<String> get ecsProperties =>
      TfRef.attribute<String>(this, 'ecs_properties');

  /// Reference to `node_properties` attribute.
  TfRef<String> get nodeProperties =>
      TfRef.attribute<String>(this, 'node_properties');

  /// Reference to `parameters` attribute.
  TfRef<Map<String, String>> get parameters =>
      TfRef.attribute<Map<String, String>>(this, 'parameters');

  /// Reference to `platform_capabilities` attribute.
  TfRef<List<String>> get platformCapabilities =>
      TfRef.attribute<List<String>>(this, 'platform_capabilities');

  /// Reference to `propagate_tags` attribute.
  TfRef<bool> get propagateTags =>
      TfRef.attribute<bool>(this, 'propagate_tags');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `scheduling_priority` attribute.
  TfRef<num> get schedulingPriority =>
      TfRef.attribute<num>(this, 'scheduling_priority');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
