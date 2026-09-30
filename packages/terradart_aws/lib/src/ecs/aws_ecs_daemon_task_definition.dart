// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

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

  final TfArg<List<String>>? command;

  final TfArg<num>? cpu;

  final TfArg<List<String>>? entryPoint;

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
    'command': ?command?.toTfJson(),
    'cpu': ?cpu?.toTfJson(),
    'entry_point': ?entryPoint?.toTfJson(),
    'essential': ?essential?.toTfJson(),
    'image': image.toTfJson(),
    'interactive': ?interactive?.toTfJson(),
    'memory': ?memory?.toTfJson(),
    'memory_reservation': ?memoryReservation?.toTfJson(),
    'name': ?name?.toTfJson(),
    'privileged': ?privileged?.toTfJson(),
    'pseudo_terminal': ?pseudoTerminal?.toTfJson(),
    'readonly_root_filesystem': ?readonlyRootFilesystem?.toTfJson(),
    'start_timeout': ?startTimeout?.toTfJson(),
    'stop_timeout': ?stopTimeout?.toTfJson(),
    'user': ?user?.toTfJson(),
    'working_directory': ?workingDirectory?.toTfJson(),
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

  final TfArg<EcsDaemonTaskDefinitionContainerDefinitionDependsOnCondition>
  condition;

  final TfArg<String> containerName;

  Map<String, Object?> encode() => {
    'condition': condition.toTfJson(),
    'container_name': containerName.toTfJson(),
  };
}

/// `condition` — derived from the provider schema description.
enum EcsDaemonTaskDefinitionContainerDefinitionDependsOnCondition
    implements TerraformEnum {
  start('START'),
  complete('COMPLETE'),
  success('SUCCESS'),
  healthy('HEALTHY');

  const EcsDaemonTaskDefinitionContainerDefinitionDependsOnCondition(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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
    'name': ?name?.toTfJson(),
    'value': ?value?.toTfJson(),
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

  final TfArg<EcsDaemonTaskDefinitionContainerDefinitionEnvironmentFileType>
  type;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum EcsDaemonTaskDefinitionContainerDefinitionEnvironmentFileType
    implements TerraformEnum {
  s3('s3');

  const EcsDaemonTaskDefinitionContainerDefinitionEnvironmentFileType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final TfArg<
    EcsDaemonTaskDefinitionContainerDefinitionFirelensConfigurationType
  >
  type;

  Map<String, Object?> encode() => {
    'options': ?options?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum EcsDaemonTaskDefinitionContainerDefinitionFirelensConfigurationType
    implements TerraformEnum {
  fluentd('fluentd'),
  fluentbit('fluentbit');

  const EcsDaemonTaskDefinitionContainerDefinitionFirelensConfigurationType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final TfArg<List<String>> command;

  final TfArg<num>? interval;

  final TfArg<num>? retries;

  final TfArg<num>? startPeriod;

  final TfArg<num>? timeout;

  Map<String, Object?> encode() => {
    'command': command.toTfJson(),
    'interval': ?interval?.toTfJson(),
    'retries': ?retries?.toTfJson(),
    'start_period': ?startPeriod?.toTfJson(),
    'timeout': ?timeout?.toTfJson(),
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
    'init_process_enabled': ?initProcessEnabled?.toTfJson(),
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

  final TfArg<List<String>>? add;

  final TfArg<List<String>>? drop;

  Map<String, Object?> encode() => {
    'add': ?add?.toTfJson(),
    'drop': ?drop?.toTfJson(),
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

  final List<
    TfArg<
      EcsDaemonTaskDefinitionContainerDefinitionLinuxParametersDevicePermissions
    >
  >?
  permissions;

  Map<String, Object?> encode() => {
    'container_path': ?containerPath?.toTfJson(),
    'host_path': hostPath.toTfJson(),
    if (permissions != null)
      'permissions': [for (final e in permissions!) e.toTfJson()],
  };
}

/// `permissions` — derived from the provider schema description.
enum EcsDaemonTaskDefinitionContainerDefinitionLinuxParametersDevicePermissions
    implements TerraformEnum {
  read('read'),
  write('write'),
  mknod('mknod');

  const EcsDaemonTaskDefinitionContainerDefinitionLinuxParametersDevicePermissions(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final TfArg<List<String>>? mountOptions;

  final TfArg<num> size;

  Map<String, Object?> encode() => {
    'container_path': containerPath.toTfJson(),
    'mount_options': ?mountOptions?.toTfJson(),
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

  final TfArg<
    EcsDaemonTaskDefinitionContainerDefinitionLogConfigurationLogDriver
  >
  logDriver;

  final TfArg<Map<String, String>>? options;

  final List<
    EcsDaemonTaskDefinitionContainerDefinitionLogConfigurationSecretOption
  >?
  secretOption;

  Map<String, Object?> encode() => {
    'log_driver': logDriver.toTfJson(),
    'options': ?options?.toTfJson(),
    if (secretOption != null)
      'secret_option': [for (final e in secretOption!) e.encode()],
  };
}

/// `log_driver` — derived from the provider schema description.
enum EcsDaemonTaskDefinitionContainerDefinitionLogConfigurationLogDriver
    implements TerraformEnum {
  jsonFile('json-file'),
  syslog('syslog'),
  journald('journald'),
  gelf('gelf'),
  fluentd('fluentd'),
  awslogs('awslogs'),
  splunk('splunk'),
  awsfirelens('awsfirelens');

  const EcsDaemonTaskDefinitionContainerDefinitionLogConfigurationLogDriver(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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
    'container_path': ?containerPath?.toTfJson(),
    'read_only': ?readOnly?.toTfJson(),
    'source_volume': ?sourceVolume?.toTfJson(),
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

  final TfArg<List<num>>? ignoredExitCodes;

  final TfArg<num>? restartAttemptPeriod;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'ignored_exit_codes': ?ignoredExitCodes?.toTfJson(),
    'restart_attempt_period': ?restartAttemptPeriod?.toTfJson(),
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
    'namespace': ?namespace?.toTfJson(),
    'value': ?value?.toTfJson(),
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

  final TfArg<EcsDaemonTaskDefinitionContainerDefinitionUlimitName> name;

  final TfArg<num> softLimit;

  Map<String, Object?> encode() => {
    'hard_limit': hardLimit.toTfJson(),
    'name': name.toTfJson(),
    'soft_limit': softLimit.toTfJson(),
  };
}

/// `name` — derived from the provider schema description.
enum EcsDaemonTaskDefinitionContainerDefinitionUlimitName
    implements TerraformEnum {
  core('core'),
  cpu('cpu'),
  data('data'),
  fsize('fsize'),
  locks('locks'),
  memlock('memlock'),
  msgqueue('msgqueue'),
  nice('nice'),
  nofile('nofile'),
  nproc('nproc'),
  rss('rss'),
  rtprio('rtprio'),
  rttime('rttime'),
  sigpending('sigpending'),
  stack('stack');

  const EcsDaemonTaskDefinitionContainerDefinitionUlimitName(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  Map<String, Object?> encode() => {'source_path': ?sourcePath?.toTfJson()};
}

/// Factory wrapper for `aws_ecs_daemon_task_definition`.
final class AwsEcsDaemonTaskDefinition extends Resource {
  static const String tfType = 'aws_ecs_daemon_task_definition';

  AwsEcsDaemonTaskDefinition({
    required super.localName,
    TfArg<String>? cpu,
    RefTo<AwsIamRole>? executionRoleArn,
    required TfArg<String> family,
    TfArg<String>? memory,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    RefTo<AwsIamRole>? taskRoleArn,
    List<EcsDaemonTaskDefinitionContainerDefinition>? containerDefinition,
    List<EcsDaemonTaskDefinitionVolume>? volume,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cpu': ?cpu,
           'execution_role_arn': ?executionRoleArn?.encodeAs('arn'),
           'family': family,
           'memory': ?memory,
           'region': ?region,
           'tags': ?tags,
           'task_role_arn': ?taskRoleArn?.encodeAs('arn'),
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEcsDaemonTaskDefinition>`.
  RefTo<AwsEcsDaemonTaskDefinition> get ref => RefTo.of(this);

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
