// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ecs_daemon_task_definition`.
const Set<String> _awsEcsDaemonTaskDefinitionSensitive = <String>{};

/// Typed helper for the `container_definition` block of
/// `aws_ecs_daemon_task_definition` (derived from provider schema).
@immutable
final class EcsDaemonTaskDefinitionContainerDefinition {
  const EcsDaemonTaskDefinitionContainerDefinition({
    this.command,
    this.cpu,
    this.entryPoint,
    this.essential,
    required this.image,
    this.interactive,
    this.memory,
    this.memoryReservation,
    this.name,
    this.privileged,
    this.pseudoTerminal,
    this.readonlyRootFilesystem,
    this.startTimeout,
    this.stopTimeout,
    this.user,
    this.workingDirectory,
    this.dependsOn,
    this.environment,
    this.environmentFile,
    this.firelensConfiguration,
    this.healthCheck,
    this.linuxParameters,
    this.logConfiguration,
    this.mountPoint,
    this.repositoryCredentials,
    this.restartPolicy,
    this.secret,
    this.systemControl,
    this.ulimit,
  });

  final TfArg<List<Object?>>? command;

  final TfArg<num>? cpu;

  final TfArg<List<Object?>>? entryPoint;

  final TfArg<bool>? essential;

  final TfArg<String> image;

  final TfArg<bool>? interactive;

  final TfArg<num>? memory;

  final TfArg<num>? memoryReservation;

  final TfArg<String>? name;

  final TfArg<bool>? privileged;

  final TfArg<bool>? pseudoTerminal;

  final TfArg<bool>? readonlyRootFilesystem;

  final TfArg<num>? startTimeout;

  final TfArg<num>? stopTimeout;

  final TfArg<String>? user;

  final TfArg<String>? workingDirectory;

  final List<EcsDaemonTaskDefinitionContainerDefinitionDependsOn>? dependsOn;

  final List<EcsDaemonTaskDefinitionContainerDefinitionEnvironment>?
  environment;

  final List<EcsDaemonTaskDefinitionContainerDefinitionEnvironmentFile>?
  environmentFile;

  final List<EcsDaemonTaskDefinitionContainerDefinitionFirelensConfiguration>?
  firelensConfiguration;

  final List<EcsDaemonTaskDefinitionContainerDefinitionHealthCheck>?
  healthCheck;

  final List<EcsDaemonTaskDefinitionContainerDefinitionLinuxParameters>?
  linuxParameters;

  final List<EcsDaemonTaskDefinitionContainerDefinitionLogConfiguration>?
  logConfiguration;

  final List<EcsDaemonTaskDefinitionContainerDefinitionMountPoint>? mountPoint;

  final List<EcsDaemonTaskDefinitionContainerDefinitionRepositoryCredentials>?
  repositoryCredentials;

  final List<EcsDaemonTaskDefinitionContainerDefinitionRestartPolicy>?
  restartPolicy;

  final List<EcsDaemonTaskDefinitionContainerDefinitionSecret>? secret;

  final List<EcsDaemonTaskDefinitionContainerDefinitionSystemControl>?
  systemControl;

  final List<EcsDaemonTaskDefinitionContainerDefinitionUlimit>? ulimit;

  Map<String, Object?> encode() => {
    if (command != null) 'command': command!.toTfJson(),
    if (cpu != null) 'cpu': cpu!.toTfJson(),
    if (entryPoint != null) 'entry_point': entryPoint!.toTfJson(),
    if (essential != null) 'essential': essential!.toTfJson(),
    'image': image.toTfJson(),
    if (interactive != null) 'interactive': interactive!.toTfJson(),
    if (memory != null) 'memory': memory!.toTfJson(),
    if (memoryReservation != null)
      'memory_reservation': memoryReservation!.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
    if (privileged != null) 'privileged': privileged!.toTfJson(),
    if (pseudoTerminal != null) 'pseudo_terminal': pseudoTerminal!.toTfJson(),
    if (readonlyRootFilesystem != null)
      'readonly_root_filesystem': readonlyRootFilesystem!.toTfJson(),
    if (startTimeout != null) 'start_timeout': startTimeout!.toTfJson(),
    if (stopTimeout != null) 'stop_timeout': stopTimeout!.toTfJson(),
    if (user != null) 'user': user!.toTfJson(),
    if (workingDirectory != null)
      'working_directory': workingDirectory!.toTfJson(),
    if (dependsOn != null)
      'depends_on': [for (final e in dependsOn!) e.encode()],
    if (environment != null)
      'environment': [for (final e in environment!) e.encode()],
    if (environmentFile != null)
      'environment_file': [for (final e in environmentFile!) e.encode()],
    if (firelensConfiguration != null)
      'firelens_configuration': [
        for (final e in firelensConfiguration!) e.encode(),
      ],
    if (healthCheck != null)
      'health_check': [for (final e in healthCheck!) e.encode()],
    if (linuxParameters != null)
      'linux_parameters': [for (final e in linuxParameters!) e.encode()],
    if (logConfiguration != null)
      'log_configuration': [for (final e in logConfiguration!) e.encode()],
    if (mountPoint != null)
      'mount_point': [for (final e in mountPoint!) e.encode()],
    if (repositoryCredentials != null)
      'repository_credentials': [
        for (final e in repositoryCredentials!) e.encode(),
      ],
    if (restartPolicy != null)
      'restart_policy': [for (final e in restartPolicy!) e.encode()],
    if (secret != null) 'secret': [for (final e in secret!) e.encode()],
    if (systemControl != null)
      'system_control': [for (final e in systemControl!) e.encode()],
    if (ulimit != null) 'ulimit': [for (final e in ulimit!) e.encode()],
  };
}

/// Typed helper for the `container_definition.depends_on` block of
/// `aws_ecs_daemon_task_definition` (derived from provider schema).
@immutable
final class EcsDaemonTaskDefinitionContainerDefinitionDependsOn {
  const EcsDaemonTaskDefinitionContainerDefinitionDependsOn({
    required this.condition,
    required this.containerName,
  });

  final TfArg<String> condition;

  final TfArg<String> containerName;

  Map<String, Object?> encode() => {
    'condition': condition.toTfJson(),
    'container_name': containerName.toTfJson(),
  };
}

/// Typed helper for the `container_definition.environment` block of
/// `aws_ecs_daemon_task_definition` (derived from provider schema).
@immutable
final class EcsDaemonTaskDefinitionContainerDefinitionEnvironment {
  const EcsDaemonTaskDefinitionContainerDefinitionEnvironment({
    this.name,
    this.value,
  });

  final TfArg<String>? name;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Typed helper for the `container_definition.environment_file` block of
/// `aws_ecs_daemon_task_definition` (derived from provider schema).
@immutable
final class EcsDaemonTaskDefinitionContainerDefinitionEnvironmentFile {
  const EcsDaemonTaskDefinitionContainerDefinitionEnvironmentFile({
    required this.type,
    required this.value,
  });

  final TfArg<String> type;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `container_definition.firelens_configuration` block of
/// `aws_ecs_daemon_task_definition` (derived from provider schema).
@immutable
final class EcsDaemonTaskDefinitionContainerDefinitionFirelensConfiguration {
  const EcsDaemonTaskDefinitionContainerDefinitionFirelensConfiguration({
    this.options,
    required this.type,
  });

  final TfArg<Map<String, String>>? options;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (options != null) 'options': options!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `container_definition.health_check` block of
/// `aws_ecs_daemon_task_definition` (derived from provider schema).
@immutable
final class EcsDaemonTaskDefinitionContainerDefinitionHealthCheck {
  const EcsDaemonTaskDefinitionContainerDefinitionHealthCheck({
    required this.command,
    this.interval,
    this.retries,
    this.startPeriod,
    this.timeout,
  });

  final TfArg<List<Object?>> command;

  final TfArg<num>? interval;

  final TfArg<num>? retries;

  final TfArg<num>? startPeriod;

  final TfArg<num>? timeout;

  Map<String, Object?> encode() => {
    'command': command.toTfJson(),
    if (interval != null) 'interval': interval!.toTfJson(),
    if (retries != null) 'retries': retries!.toTfJson(),
    if (startPeriod != null) 'start_period': startPeriod!.toTfJson(),
    if (timeout != null) 'timeout': timeout!.toTfJson(),
  };
}

/// Typed helper for the `container_definition.linux_parameters` block of
/// `aws_ecs_daemon_task_definition` (derived from provider schema).
@immutable
final class EcsDaemonTaskDefinitionContainerDefinitionLinuxParameters {
  const EcsDaemonTaskDefinitionContainerDefinitionLinuxParameters({
    this.initProcessEnabled,
    this.capabilities,
    this.device,
    this.tmpfs,
  });

  final TfArg<bool>? initProcessEnabled;

  final List<
    EcsDaemonTaskDefinitionContainerDefinitionLinuxParametersCapabilities
  >?
  capabilities;

  final List<EcsDaemonTaskDefinitionContainerDefinitionLinuxParametersDevice>?
  device;

  final List<EcsDaemonTaskDefinitionContainerDefinitionLinuxParametersTmpfs>?
  tmpfs;

  Map<String, Object?> encode() => {
    if (initProcessEnabled != null)
      'init_process_enabled': initProcessEnabled!.toTfJson(),
    if (capabilities != null)
      'capabilities': [for (final e in capabilities!) e.encode()],
    if (device != null) 'device': [for (final e in device!) e.encode()],
    if (tmpfs != null) 'tmpfs': [for (final e in tmpfs!) e.encode()],
  };
}

/// Typed helper for the `container_definition.linux_parameters.capabilities` block of
/// `aws_ecs_daemon_task_definition` (derived from provider schema).
@immutable
final class EcsDaemonTaskDefinitionContainerDefinitionLinuxParametersCapabilities {
  const EcsDaemonTaskDefinitionContainerDefinitionLinuxParametersCapabilities({
    this.add,
    this.drop,
  });

  final TfArg<List<Object?>>? add;

  final TfArg<List<Object?>>? drop;

  Map<String, Object?> encode() => {
    if (add != null) 'add': add!.toTfJson(),
    if (drop != null) 'drop': drop!.toTfJson(),
  };
}

/// Typed helper for the `container_definition.linux_parameters.device` block of
/// `aws_ecs_daemon_task_definition` (derived from provider schema).
@immutable
final class EcsDaemonTaskDefinitionContainerDefinitionLinuxParametersDevice {
  const EcsDaemonTaskDefinitionContainerDefinitionLinuxParametersDevice({
    this.containerPath,
    required this.hostPath,
    this.permissions,
  });

  final TfArg<String>? containerPath;

  final TfArg<String> hostPath;

  final TfArg<List<Object?>>? permissions;

  Map<String, Object?> encode() => {
    if (containerPath != null) 'container_path': containerPath!.toTfJson(),
    'host_path': hostPath.toTfJson(),
    if (permissions != null) 'permissions': permissions!.toTfJson(),
  };
}

/// Typed helper for the `container_definition.linux_parameters.tmpfs` block of
/// `aws_ecs_daemon_task_definition` (derived from provider schema).
@immutable
final class EcsDaemonTaskDefinitionContainerDefinitionLinuxParametersTmpfs {
  const EcsDaemonTaskDefinitionContainerDefinitionLinuxParametersTmpfs({
    required this.containerPath,
    this.mountOptions,
    required this.size,
  });

  final TfArg<String> containerPath;

  final TfArg<List<Object?>>? mountOptions;

  final TfArg<num> size;

  Map<String, Object?> encode() => {
    'container_path': containerPath.toTfJson(),
    if (mountOptions != null) 'mount_options': mountOptions!.toTfJson(),
    'size': size.toTfJson(),
  };
}

/// Typed helper for the `container_definition.log_configuration` block of
/// `aws_ecs_daemon_task_definition` (derived from provider schema).
@immutable
final class EcsDaemonTaskDefinitionContainerDefinitionLogConfiguration {
  const EcsDaemonTaskDefinitionContainerDefinitionLogConfiguration({
    required this.logDriver,
    this.options,
    this.secretOption,
  });

  final TfArg<String> logDriver;

  final TfArg<Map<String, String>>? options;

  final List<
    EcsDaemonTaskDefinitionContainerDefinitionLogConfigurationSecretOption
  >?
  secretOption;

  Map<String, Object?> encode() => {
    'log_driver': logDriver.toTfJson(),
    if (options != null) 'options': options!.toTfJson(),
    if (secretOption != null)
      'secret_option': [for (final e in secretOption!) e.encode()],
  };
}

/// Typed helper for the `container_definition.log_configuration.secret_option` block of
/// `aws_ecs_daemon_task_definition` (derived from provider schema).
@immutable
final class EcsDaemonTaskDefinitionContainerDefinitionLogConfigurationSecretOption {
  const EcsDaemonTaskDefinitionContainerDefinitionLogConfigurationSecretOption({
    required this.name,
    required this.valueFrom,
  });

  final TfArg<String> name;

  final TfArg<String> valueFrom;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value_from': valueFrom.toTfJson(),
  };
}

/// Typed helper for the `container_definition.mount_point` block of
/// `aws_ecs_daemon_task_definition` (derived from provider schema).
@immutable
final class EcsDaemonTaskDefinitionContainerDefinitionMountPoint {
  const EcsDaemonTaskDefinitionContainerDefinitionMountPoint({
    this.containerPath,
    this.readOnly,
    this.sourceVolume,
  });

  final TfArg<String>? containerPath;

  final TfArg<bool>? readOnly;

  final TfArg<String>? sourceVolume;

  Map<String, Object?> encode() => {
    if (containerPath != null) 'container_path': containerPath!.toTfJson(),
    if (readOnly != null) 'read_only': readOnly!.toTfJson(),
    if (sourceVolume != null) 'source_volume': sourceVolume!.toTfJson(),
  };
}

/// Typed helper for the `container_definition.repository_credentials` block of
/// `aws_ecs_daemon_task_definition` (derived from provider schema).
@immutable
final class EcsDaemonTaskDefinitionContainerDefinitionRepositoryCredentials {
  const EcsDaemonTaskDefinitionContainerDefinitionRepositoryCredentials({
    required this.credentialsParameter,
  });

  final TfArg<String> credentialsParameter;

  Map<String, Object?> encode() => {
    'credentials_parameter': credentialsParameter.toTfJson(),
  };
}

/// Typed helper for the `container_definition.restart_policy` block of
/// `aws_ecs_daemon_task_definition` (derived from provider schema).
@immutable
final class EcsDaemonTaskDefinitionContainerDefinitionRestartPolicy {
  const EcsDaemonTaskDefinitionContainerDefinitionRestartPolicy({
    required this.enabled,
    this.ignoredExitCodes,
    this.restartAttemptPeriod,
  });

  final TfArg<bool> enabled;

  final TfArg<List<Object?>>? ignoredExitCodes;

  final TfArg<num>? restartAttemptPeriod;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    if (ignoredExitCodes != null)
      'ignored_exit_codes': ignoredExitCodes!.toTfJson(),
    if (restartAttemptPeriod != null)
      'restart_attempt_period': restartAttemptPeriod!.toTfJson(),
  };
}

/// Typed helper for the `container_definition.secret` block of
/// `aws_ecs_daemon_task_definition` (derived from provider schema).
@immutable
final class EcsDaemonTaskDefinitionContainerDefinitionSecret {
  const EcsDaemonTaskDefinitionContainerDefinitionSecret({
    required this.name,
    required this.valueFrom,
  });

  final TfArg<String> name;

  final TfArg<String> valueFrom;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value_from': valueFrom.toTfJson(),
  };
}

/// Typed helper for the `container_definition.system_control` block of
/// `aws_ecs_daemon_task_definition` (derived from provider schema).
@immutable
final class EcsDaemonTaskDefinitionContainerDefinitionSystemControl {
  const EcsDaemonTaskDefinitionContainerDefinitionSystemControl({
    this.namespace,
    this.value,
  });

  final TfArg<String>? namespace;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    if (namespace != null) 'namespace': namespace!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Typed helper for the `container_definition.ulimit` block of
/// `aws_ecs_daemon_task_definition` (derived from provider schema).
@immutable
final class EcsDaemonTaskDefinitionContainerDefinitionUlimit {
  const EcsDaemonTaskDefinitionContainerDefinitionUlimit({
    required this.hardLimit,
    required this.name,
    required this.softLimit,
  });

  final TfArg<num> hardLimit;

  final TfArg<String> name;

  final TfArg<num> softLimit;

  Map<String, Object?> encode() => {
    'hard_limit': hardLimit.toTfJson(),
    'name': name.toTfJson(),
    'soft_limit': softLimit.toTfJson(),
  };
}

/// Typed helper for the `volume` block of
/// `aws_ecs_daemon_task_definition` (derived from provider schema).
@immutable
final class EcsDaemonTaskDefinitionVolume {
  const EcsDaemonTaskDefinitionVolume({required this.name, this.host});

  final TfArg<String> name;

  final List<EcsDaemonTaskDefinitionVolumeHost>? host;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    if (host != null) 'host': [for (final e in host!) e.encode()],
  };
}

/// Typed helper for the `volume.host` block of
/// `aws_ecs_daemon_task_definition` (derived from provider schema).
@immutable
final class EcsDaemonTaskDefinitionVolumeHost {
  const EcsDaemonTaskDefinitionVolumeHost({this.sourcePath});

  final TfArg<String>? sourcePath;

  Map<String, Object?> encode() => {
    if (sourcePath != null) 'source_path': sourcePath!.toTfJson(),
  };
}

/// Factory wrapper for `aws_ecs_daemon_task_definition`.
final class AwsEcsDaemonTaskDefinition extends Resource {
  static const String tfType = 'aws_ecs_daemon_task_definition';

  AwsEcsDaemonTaskDefinition({
    required super.localName,
    TfArg<String>? cpu,
    TfArg<String>? executionRoleArn,
    required TfArg<String> family,
    TfArg<String>? memory,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? taskRoleArn,
    List<EcsDaemonTaskDefinitionContainerDefinition>? containerDefinition,
    List<EcsDaemonTaskDefinitionVolume>? volume,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (cpu != null) 'cpu': cpu,
           if (executionRoleArn != null) 'execution_role_arn': executionRoleArn,
           'family': family,
           if (memory != null) 'memory': memory,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (taskRoleArn != null) 'task_role_arn': taskRoleArn,
           if (containerDefinition != null)
             'container_definition': TfArg.literal([
               for (final e in containerDefinition) e.encode(),
             ]),
           if (volume != null)
             'volume': TfArg.literal([for (final e in volume) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEcsDaemonTaskDefinitionSensitive;

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `revision` attribute.
  TfRef<num> get revision => TfRef.attribute<num>(this, 'revision');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
