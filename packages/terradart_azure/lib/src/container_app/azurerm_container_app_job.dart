// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_container_app_job`.
const Set<String> _azurermContainerAppJobSensitive = <String>{'secret.value'};

/// Exactly one of `event_trigger_config`, `manual_trigger_config`, `schedule_trigger_config` on `azurerm_container_app_job`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.eventTriggerConfig(...)`.
sealed class ContainerAppJobTriggerConfig {
  const ContainerAppJobTriggerConfig();

  /// Sets `event_trigger_config`.
  const factory ContainerAppJobTriggerConfig.eventTriggerConfig(
    ContainerAppJobEventTriggerConfig eventTriggerConfig,
  ) = ContainerAppJobEventTriggerConfigChoice;

  /// Sets `manual_trigger_config`.
  const factory ContainerAppJobTriggerConfig.manualTriggerConfig(
    ContainerAppJobManualTriggerConfig manualTriggerConfig,
  ) = ContainerAppJobManualTriggerConfigChoice;

  /// Sets `schedule_trigger_config`.
  const factory ContainerAppJobTriggerConfig.scheduleTriggerConfig(
    ContainerAppJobScheduleTriggerConfig scheduleTriggerConfig,
  ) = ContainerAppJobScheduleTriggerConfigChoice;

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

/// The [ContainerAppJobTriggerConfig.eventTriggerConfig] choice: sets `event_trigger_config`.
final class ContainerAppJobEventTriggerConfigChoice
    extends ContainerAppJobTriggerConfig {
  const ContainerAppJobEventTriggerConfigChoice(this.eventTriggerConfig);

  final ContainerAppJobEventTriggerConfig eventTriggerConfig;

  @internal
  @override
  String get blockKey => 'event_trigger_config';

  @internal
  @override
  Map<String, Object?> encode() => {
    'event_trigger_config': eventTriggerConfig.encode(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'event_trigger_config': TfArg.literal(eventTriggerConfig.encode()),
  };
}

/// The [ContainerAppJobTriggerConfig.manualTriggerConfig] choice: sets `manual_trigger_config`.
final class ContainerAppJobManualTriggerConfigChoice
    extends ContainerAppJobTriggerConfig {
  const ContainerAppJobManualTriggerConfigChoice(this.manualTriggerConfig);

  final ContainerAppJobManualTriggerConfig manualTriggerConfig;

  @internal
  @override
  String get blockKey => 'manual_trigger_config';

  @internal
  @override
  Map<String, Object?> encode() => {
    'manual_trigger_config': manualTriggerConfig.encode(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'manual_trigger_config': TfArg.literal(manualTriggerConfig.encode()),
  };
}

/// The [ContainerAppJobTriggerConfig.scheduleTriggerConfig] choice: sets `schedule_trigger_config`.
final class ContainerAppJobScheduleTriggerConfigChoice
    extends ContainerAppJobTriggerConfig {
  const ContainerAppJobScheduleTriggerConfigChoice(this.scheduleTriggerConfig);

  final ContainerAppJobScheduleTriggerConfig scheduleTriggerConfig;

  @internal
  @override
  String get blockKey => 'schedule_trigger_config';

  @internal
  @override
  Map<String, Object?> encode() => {
    'schedule_trigger_config': scheduleTriggerConfig.encode(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'schedule_trigger_config': TfArg.literal(scheduleTriggerConfig.encode()),
  };
}

/// Typed helper for the `event_trigger_config` block of
/// `azurerm_container_app_job` (derived from provider schema).
@immutable
final class ContainerAppJobEventTriggerConfig {
  const ContainerAppJobEventTriggerConfig({
    this.parallelism,
    this.replicaCompletionCount,
    this.scale,
  });

  final TfArg<num>? parallelism;

  final TfArg<num>? replicaCompletionCount;

  final List<ContainerAppJobScale>? scale;

  @internal
  Map<String, Object?> encode() => {
    'parallelism': ?parallelism?.toTfJson(),
    'replica_completion_count': ?replicaCompletionCount?.toTfJson(),
    if (scale != null) 'scale': [for (final e in scale!) e.encode()],
  };
}

/// Typed helper for the `event_trigger_config.scale` block of
/// `azurerm_container_app_job` (derived from provider schema).
@immutable
final class ContainerAppJobScale {
  const ContainerAppJobScale({
    this.maxExecutions,
    this.minExecutions,
    this.pollingIntervalInSeconds,
    this.rules,
  });

  final TfArg<num>? maxExecutions;

  final TfArg<num>? minExecutions;

  final TfArg<num>? pollingIntervalInSeconds;

  final List<ContainerAppJobRules>? rules;

  @internal
  Map<String, Object?> encode() => {
    'max_executions': ?maxExecutions?.toTfJson(),
    'min_executions': ?minExecutions?.toTfJson(),
    'polling_interval_in_seconds': ?pollingIntervalInSeconds?.toTfJson(),
    if (rules != null) 'rules': [for (final e in rules!) e.encode()],
  };
}

/// Typed helper for the `event_trigger_config.scale.rules` block of
/// `azurerm_container_app_job` (derived from provider schema).
@immutable
final class ContainerAppJobRules {
  const ContainerAppJobRules({
    required this.customRuleType,
    this.identityId,
    required this.metadata,
    required this.name,
    this.authentication,
  });

  final TfArg<String> customRuleType;

  final TfArg<String>? identityId;

  final TfArg<Map<String, String>> metadata;

  final TfArg<String> name;

  final List<ContainerAppJobAuthentication>? authentication;

  @internal
  Map<String, Object?> encode() => {
    'custom_rule_type': customRuleType.toTfJson(),
    'identity_id': ?identityId?.toTfJson(),
    'metadata': metadata.toTfJson(),
    'name': name.toTfJson(),
    if (authentication != null)
      'authentication': [for (final e in authentication!) e.encode()],
  };
}

/// Typed helper for the `event_trigger_config.scale.rules.authentication` block of
/// `azurerm_container_app_job` (derived from provider schema).
@immutable
final class ContainerAppJobAuthentication {
  const ContainerAppJobAuthentication({
    required this.secretName,
    required this.triggerParameter,
  });

  final TfArg<String> secretName;

  final TfArg<String> triggerParameter;

  @internal
  Map<String, Object?> encode() => {
    'secret_name': secretName.toTfJson(),
    'trigger_parameter': triggerParameter.toTfJson(),
  };
}

/// Typed helper for the `identity` block of
/// `azurerm_container_app_job` (derived from provider schema).
@immutable
final class ContainerAppJobIdentity {
  const ContainerAppJobIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `manual_trigger_config` block of
/// `azurerm_container_app_job` (derived from provider schema).
@immutable
final class ContainerAppJobManualTriggerConfig {
  const ContainerAppJobManualTriggerConfig({
    this.parallelism,
    this.replicaCompletionCount,
  });

  final TfArg<num>? parallelism;

  final TfArg<num>? replicaCompletionCount;

  @internal
  Map<String, Object?> encode() => {
    'parallelism': ?parallelism?.toTfJson(),
    'replica_completion_count': ?replicaCompletionCount?.toTfJson(),
  };
}

/// Typed helper for the `registry` block of
/// `azurerm_container_app_job` (derived from provider schema).
@immutable
final class ContainerAppJobRegistry {
  const ContainerAppJobRegistry({
    this.identity,
    this.passwordSecretName,
    required this.server,
    this.username,
  });

  final TfArg<String>? identity;

  final TfArg<String>? passwordSecretName;

  final TfArg<String> server;

  final TfArg<String>? username;

  @internal
  Map<String, Object?> encode() => {
    'identity': ?identity?.toTfJson(),
    'password_secret_name': ?passwordSecretName?.toTfJson(),
    'server': server.toTfJson(),
    'username': ?username?.toTfJson(),
  };
}

/// Typed helper for the `schedule_trigger_config` block of
/// `azurerm_container_app_job` (derived from provider schema).
@immutable
final class ContainerAppJobScheduleTriggerConfig {
  const ContainerAppJobScheduleTriggerConfig({
    required this.cronExpression,
    this.parallelism,
    this.replicaCompletionCount,
  });

  final TfArg<String> cronExpression;

  final TfArg<num>? parallelism;

  final TfArg<num>? replicaCompletionCount;

  @internal
  Map<String, Object?> encode() => {
    'cron_expression': cronExpression.toTfJson(),
    'parallelism': ?parallelism?.toTfJson(),
    'replica_completion_count': ?replicaCompletionCount?.toTfJson(),
  };
}

/// Typed helper for the `secret` block of
/// `azurerm_container_app_job` (derived from provider schema).
@immutable
final class ContainerAppJobSecret {
  const ContainerAppJobSecret({
    this.identity,
    this.keyVaultSecretId,
    required this.name,
    this.value,
  });

  final TfArg<String>? identity;

  final TfArg<String>? keyVaultSecretId;

  final TfArg<String> name;

  final Sensitive<String>? value;

  @internal
  Map<String, Object?> encode() => {
    'identity': ?identity?.toTfJson(),
    'key_vault_secret_id': ?keyVaultSecretId?.toTfJson(),
    'name': name.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `template` block of
/// `azurerm_container_app_job` (derived from provider schema).
@immutable
final class ContainerAppJobTemplate {
  const ContainerAppJobTemplate({
    required this.container,
    this.initContainer,
    this.volume,
  });

  final List<ContainerAppJobContainer> container;

  final List<ContainerAppJobInitContainer>? initContainer;

  final List<ContainerAppJobVolume>? volume;

  @internal
  Map<String, Object?> encode() => {
    'container': [for (final e in container) e.encode()],
    if (initContainer != null)
      'init_container': [for (final e in initContainer!) e.encode()],
    if (volume != null) 'volume': [for (final e in volume!) e.encode()],
  };
}

/// Typed helper for the `template.container` block of
/// `azurerm_container_app_job` (derived from provider schema).
@immutable
final class ContainerAppJobContainer {
  const ContainerAppJobContainer({
    this.args,
    this.command,
    required this.cpu,
    required this.image,
    required this.memory,
    required this.name,
    this.env,
    this.livenessProbe,
    this.readinessProbe,
    this.startupProbe,
    this.volumeMounts,
  });

  final TfArg<List<String>>? args;

  final TfArg<List<String>>? command;

  final TfArg<num> cpu;

  final TfArg<String> image;

  final TfArg<String> memory;

  final TfArg<String> name;

  final List<ContainerAppJobEnv>? env;

  final List<ContainerAppJobLivenessProbe>? livenessProbe;

  final List<ContainerAppJobReadinessProbe>? readinessProbe;

  final List<ContainerAppJobStartupProbe>? startupProbe;

  final List<ContainerAppJobVolumeMounts>? volumeMounts;

  @internal
  Map<String, Object?> encode() => {
    'args': ?args?.toTfJson(),
    'command': ?command?.toTfJson(),
    'cpu': cpu.toTfJson(),
    'image': image.toTfJson(),
    'memory': memory.toTfJson(),
    'name': name.toTfJson(),
    if (env != null) 'env': [for (final e in env!) e.encode()],
    if (livenessProbe != null)
      'liveness_probe': [for (final e in livenessProbe!) e.encode()],
    if (readinessProbe != null)
      'readiness_probe': [for (final e in readinessProbe!) e.encode()],
    if (startupProbe != null)
      'startup_probe': [for (final e in startupProbe!) e.encode()],
    if (volumeMounts != null)
      'volume_mounts': [for (final e in volumeMounts!) e.encode()],
  };
}

/// Typed helper for the `template.container.env` block of
/// `azurerm_container_app_job` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerAppJobEnv {
  const ContainerAppJobEnv({required this.name, this.secretName, this.value});

  final TfArg<String> name;

  final TfArg<String>? secretName;

  final TfArg<String>? value;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'secret_name': ?secretName?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `template.container.liveness_probe` block of
/// `azurerm_container_app_job` (derived from provider schema).
@immutable
final class ContainerAppJobLivenessProbe {
  const ContainerAppJobLivenessProbe({
    this.failureCountThreshold,
    this.host,
    this.initialDelay,
    this.intervalSeconds,
    this.path,
    required this.port,
    this.timeout,
    required this.transport,
    this.header,
  });

  final TfArg<num>? failureCountThreshold;

  final TfArg<String>? host;

  final TfArg<num>? initialDelay;

  final TfArg<num>? intervalSeconds;

  final TfArg<String>? path;

  final TfArg<num> port;

  final TfArg<num>? timeout;

  final TfArg<String> transport;

  final List<ContainerAppJobHeader>? header;

  @internal
  Map<String, Object?> encode() => {
    'failure_count_threshold': ?failureCountThreshold?.toTfJson(),
    'host': ?host?.toTfJson(),
    'initial_delay': ?initialDelay?.toTfJson(),
    'interval_seconds': ?intervalSeconds?.toTfJson(),
    'path': ?path?.toTfJson(),
    'port': port.toTfJson(),
    'timeout': ?timeout?.toTfJson(),
    'transport': transport.toTfJson(),
    if (header != null) 'header': [for (final e in header!) e.encode()],
  };
}

/// Typed helper for the `template.container.liveness_probe.header` block of
/// `azurerm_container_app_job` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerAppJobHeader {
  const ContainerAppJobHeader({required this.name, required this.value});

  final TfArg<String> name;

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `template.container.readiness_probe` block of
/// `azurerm_container_app_job` (derived from provider schema).
@immutable
final class ContainerAppJobReadinessProbe {
  const ContainerAppJobReadinessProbe({
    this.failureCountThreshold,
    this.host,
    this.initialDelay,
    this.intervalSeconds,
    this.path,
    required this.port,
    this.successCountThreshold,
    this.timeout,
    required this.transport,
    this.header,
  });

  final TfArg<num>? failureCountThreshold;

  final TfArg<String>? host;

  final TfArg<num>? initialDelay;

  final TfArg<num>? intervalSeconds;

  final TfArg<String>? path;

  final TfArg<num> port;

  final TfArg<num>? successCountThreshold;

  final TfArg<num>? timeout;

  final TfArg<String> transport;

  final List<ContainerAppJobHeader>? header;

  @internal
  Map<String, Object?> encode() => {
    'failure_count_threshold': ?failureCountThreshold?.toTfJson(),
    'host': ?host?.toTfJson(),
    'initial_delay': ?initialDelay?.toTfJson(),
    'interval_seconds': ?intervalSeconds?.toTfJson(),
    'path': ?path?.toTfJson(),
    'port': port.toTfJson(),
    'success_count_threshold': ?successCountThreshold?.toTfJson(),
    'timeout': ?timeout?.toTfJson(),
    'transport': transport.toTfJson(),
    if (header != null) 'header': [for (final e in header!) e.encode()],
  };
}

/// Typed helper for the `template.container.startup_probe` block of
/// `azurerm_container_app_job` (derived from provider schema).
@immutable
final class ContainerAppJobStartupProbe {
  const ContainerAppJobStartupProbe({
    this.failureCountThreshold,
    this.host,
    this.initialDelay,
    this.intervalSeconds,
    this.path,
    required this.port,
    this.timeout,
    required this.transport,
    this.header,
  });

  final TfArg<num>? failureCountThreshold;

  final TfArg<String>? host;

  final TfArg<num>? initialDelay;

  final TfArg<num>? intervalSeconds;

  final TfArg<String>? path;

  final TfArg<num> port;

  final TfArg<num>? timeout;

  final TfArg<String> transport;

  final List<ContainerAppJobHeader>? header;

  @internal
  Map<String, Object?> encode() => {
    'failure_count_threshold': ?failureCountThreshold?.toTfJson(),
    'host': ?host?.toTfJson(),
    'initial_delay': ?initialDelay?.toTfJson(),
    'interval_seconds': ?intervalSeconds?.toTfJson(),
    'path': ?path?.toTfJson(),
    'port': port.toTfJson(),
    'timeout': ?timeout?.toTfJson(),
    'transport': transport.toTfJson(),
    if (header != null) 'header': [for (final e in header!) e.encode()],
  };
}

/// Typed helper for the `template.container.volume_mounts` block of
/// `azurerm_container_app_job` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerAppJobVolumeMounts {
  const ContainerAppJobVolumeMounts({
    required this.name,
    required this.path,
    this.subPath,
  });

  final TfArg<String> name;

  final TfArg<String> path;

  final TfArg<String>? subPath;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'path': path.toTfJson(),
    'sub_path': ?subPath?.toTfJson(),
  };
}

/// Typed helper for the `template.init_container` block of
/// `azurerm_container_app_job` (derived from provider schema).
@immutable
final class ContainerAppJobInitContainer {
  const ContainerAppJobInitContainer({
    this.args,
    this.command,
    this.cpu,
    required this.image,
    this.memory,
    required this.name,
    this.env,
    this.volumeMounts,
  });

  final TfArg<List<String>>? args;

  final TfArg<List<String>>? command;

  final TfArg<num>? cpu;

  final TfArg<String> image;

  final TfArg<String>? memory;

  final TfArg<String> name;

  final List<ContainerAppJobEnv>? env;

  final List<ContainerAppJobVolumeMounts>? volumeMounts;

  @internal
  Map<String, Object?> encode() => {
    'args': ?args?.toTfJson(),
    'command': ?command?.toTfJson(),
    'cpu': ?cpu?.toTfJson(),
    'image': image.toTfJson(),
    'memory': ?memory?.toTfJson(),
    'name': name.toTfJson(),
    if (env != null) 'env': [for (final e in env!) e.encode()],
    if (volumeMounts != null)
      'volume_mounts': [for (final e in volumeMounts!) e.encode()],
  };
}

/// Typed helper for the `template.volume` block of
/// `azurerm_container_app_job` (derived from provider schema).
@immutable
final class ContainerAppJobVolume {
  const ContainerAppJobVolume({
    this.mountOptions,
    required this.name,
    this.storageName,
    this.storageType,
  });

  final TfArg<String>? mountOptions;

  final TfArg<String> name;

  final TfArg<String>? storageName;

  final TfArg<String>? storageType;

  @internal
  Map<String, Object?> encode() => {
    'mount_options': ?mountOptions?.toTfJson(),
    'name': name.toTfJson(),
    'storage_name': ?storageName?.toTfJson(),
    'storage_type': ?storageType?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_container_app_job`.
final class AzurermContainerAppJob extends Resource {
  static const String tfType = 'azurerm_container_app_job';

  AzurermContainerAppJob(
    super.localName, {
    required TfArg<String> containerAppEnvironmentId,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<num>? replicaRetryLimit,
    required TfArg<num> replicaTimeoutInSeconds,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? workloadProfileName,
    required ContainerAppJobTriggerConfig triggerConfig,
    ContainerAppJobIdentity? identity,
    List<ContainerAppJobRegistry>? registry,
    List<ContainerAppJobSecret>? secret,
    required ContainerAppJobTemplate template,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'container_app_environment_id': containerAppEnvironmentId,
           'location': location,
           'name': name,
           'replica_retry_limit': ?replicaRetryLimit,
           'replica_timeout_in_seconds': replicaTimeoutInSeconds,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           'workload_profile_name': ?workloadProfileName,
           ...triggerConfig.argMap,
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
           if (registry != null)
             'registry': TfArg.literal([for (final e in registry) e.encode()]),
           if (secret != null)
             'secret': TfArg.literal([for (final e in secret) e.encode()]),
           'template': TfArg.literal(template.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermContainerAppJobSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermContainerAppJob>`.
  RefTo<AzurermContainerAppJob> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `event_stream_endpoint` attribute.
  TfRef<String> get eventStreamEndpoint =>
      TfRef.attribute<String>(this, 'event_stream_endpoint');

  /// Reference to `outbound_ip_addresses` attribute.
  TfRef<List<String>> get outboundIpAddresses =>
      TfRef.attribute<List<String>>(this, 'outbound_ip_addresses');

  /// Reference to `container_app_environment_id` attribute.
  TfRef<String> get containerAppEnvironmentId =>
      TfRef.attribute<String>(this, 'container_app_environment_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `replica_retry_limit` attribute.
  TfRef<num> get replicaRetryLimit =>
      TfRef.attribute<num>(this, 'replica_retry_limit');

  /// Reference to `replica_timeout_in_seconds` attribute.
  TfRef<num> get replicaTimeoutInSeconds =>
      TfRef.attribute<num>(this, 'replica_timeout_in_seconds');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `workload_profile_name` attribute.
  TfRef<String> get workloadProfileName =>
      TfRef.attribute<String>(this, 'workload_profile_name');
}
