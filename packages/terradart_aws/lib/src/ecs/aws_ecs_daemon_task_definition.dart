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

  final List<EcsDaemonTaskDefinitionDependsOn>? dependsOn;

  final List<EcsDaemonTaskDefinitionEnvironment>? environment;

  final List<EcsDaemonTaskDefinitionEnvironmentFile>? environmentFile;

  final List<EcsDaemonTaskDefinitionFirelensConfiguration>?
  firelensConfiguration;

  final List<EcsDaemonTaskDefinitionHealthCheck>? healthCheck;

  final List<EcsDaemonTaskDefinitionLinuxParameters>? linuxParameters;

  final List<EcsDaemonTaskDefinitionLogConfiguration>? logConfiguration;

  final List<EcsDaemonTaskDefinitionMountPoint>? mountPoint;

  final List<EcsDaemonTaskDefinitionRepositoryCredentials>?
  repositoryCredentials;

  final List<EcsDaemonTaskDefinitionRestartPolicy>? restartPolicy;

  final List<EcsDaemonTaskDefinitionSecret>? secret;

  final List<EcsDaemonTaskDefinitionSystemControl>? systemControl;

  final List<EcsDaemonTaskDefinitionUlimit>? ulimit;

  @internal
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
final class EcsDaemonTaskDefinitionDependsOn {
  const EcsDaemonTaskDefinitionDependsOn({
    required this.condition,
    required this.containerName,
  });

  final EcsDaemonTaskDefinitionCondition condition;

  final TfArg<String> containerName;

  @internal
  Map<String, Object?> encode() => {
    'condition': condition.toTfJson(),
    'container_name': containerName.toTfJson(),
  };
}

/// `condition` — derived from the provider schema description.
extension type const EcsDaemonTaskDefinitionCondition._(TfArg<String> _)
    implements TfArg<String> {
  EcsDaemonTaskDefinitionCondition.variable(String name)
    : this._(TfArg.variable(name));
  EcsDaemonTaskDefinitionCondition.expression(String template)
    : this._(TfArg.expression(template));
  const EcsDaemonTaskDefinitionCondition.arg(TfArg<String> arg) : this._(arg);

  static const start = EcsDaemonTaskDefinitionCondition._(
    TfArgLiteral('START'),
  );
  static const complete = EcsDaemonTaskDefinitionCondition._(
    TfArgLiteral('COMPLETE'),
  );
  static const success = EcsDaemonTaskDefinitionCondition._(
    TfArgLiteral('SUCCESS'),
  );
  static const healthy = EcsDaemonTaskDefinitionCondition._(
    TfArgLiteral('HEALTHY'),
  );

  static const List<EcsDaemonTaskDefinitionCondition> values = [
    start,
    complete,
    success,
    healthy,
  ];
}

/// Typed helper for the `container_definition.environment` block of
/// `aws_ecs_daemon_task_definition` (derived from provider schema).
@immutable
final class EcsDaemonTaskDefinitionEnvironment {
  const EcsDaemonTaskDefinitionEnvironment({this.name, this.value});

  final TfArg<String>? name;

  final TfArg<String>? value;

  @internal
  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `container_definition.environment_file` block of
/// `aws_ecs_daemon_task_definition` (derived from provider schema).
@immutable
final class EcsDaemonTaskDefinitionEnvironmentFile {
  const EcsDaemonTaskDefinitionEnvironmentFile({
    required this.type,
    required this.value,
  });

  final EcsDaemonTaskDefinitionEnvironmentFileType type;

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const EcsDaemonTaskDefinitionEnvironmentFileType._(
  TfArg<String> _
) implements TfArg<String> {
  EcsDaemonTaskDefinitionEnvironmentFileType.variable(String name)
    : this._(TfArg.variable(name));
  EcsDaemonTaskDefinitionEnvironmentFileType.expression(String template)
    : this._(TfArg.expression(template));
  const EcsDaemonTaskDefinitionEnvironmentFileType.arg(TfArg<String> arg)
    : this._(arg);

  static const s3 = EcsDaemonTaskDefinitionEnvironmentFileType._(
    TfArgLiteral('s3'),
  );

  static const List<EcsDaemonTaskDefinitionEnvironmentFileType> values = [s3];
}

/// Typed helper for the `container_definition.firelens_configuration` block of
/// `aws_ecs_daemon_task_definition` (derived from provider schema).
@immutable
final class EcsDaemonTaskDefinitionFirelensConfiguration {
  const EcsDaemonTaskDefinitionFirelensConfiguration({
    this.options,
    required this.type,
  });

  final TfArg<Map<String, String>>? options;

  final EcsDaemonTaskDefinitionFirelensConfigurationType type;

  @internal
  Map<String, Object?> encode() => {
    'options': ?options?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const EcsDaemonTaskDefinitionFirelensConfigurationType._(
  TfArg<String> _
) implements TfArg<String> {
  EcsDaemonTaskDefinitionFirelensConfigurationType.variable(String name)
    : this._(TfArg.variable(name));
  EcsDaemonTaskDefinitionFirelensConfigurationType.expression(String template)
    : this._(TfArg.expression(template));
  const EcsDaemonTaskDefinitionFirelensConfigurationType.arg(TfArg<String> arg)
    : this._(arg);

  static const fluentd = EcsDaemonTaskDefinitionFirelensConfigurationType._(
    TfArgLiteral('fluentd'),
  );
  static const fluentbit = EcsDaemonTaskDefinitionFirelensConfigurationType._(
    TfArgLiteral('fluentbit'),
  );

  static const List<EcsDaemonTaskDefinitionFirelensConfigurationType> values = [
    fluentd,
    fluentbit,
  ];
}

/// Typed helper for the `container_definition.health_check` block of
/// `aws_ecs_daemon_task_definition` (derived from provider schema).
@immutable
final class EcsDaemonTaskDefinitionHealthCheck {
  const EcsDaemonTaskDefinitionHealthCheck({
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

  @internal
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
final class EcsDaemonTaskDefinitionLinuxParameters {
  const EcsDaemonTaskDefinitionLinuxParameters({
    this.initProcessEnabled,
    this.capabilities,
    this.device,
    this.tmpfs,
  });

  final TfArg<bool>? initProcessEnabled;

  final List<EcsDaemonTaskDefinitionCapabilities>? capabilities;

  final List<EcsDaemonTaskDefinitionDevice>? device;

  final List<EcsDaemonTaskDefinitionTmpfs>? tmpfs;

  @internal
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
final class EcsDaemonTaskDefinitionCapabilities {
  const EcsDaemonTaskDefinitionCapabilities({this.add, this.drop});

  final TfArg<List<String>>? add;

  final TfArg<List<String>>? drop;

  @internal
  Map<String, Object?> encode() => {
    'add': ?add?.toTfJson(),
    'drop': ?drop?.toTfJson(),
  };
}

/// Typed helper for the `container_definition.linux_parameters.device` block of
/// `aws_ecs_daemon_task_definition` (derived from provider schema).
@immutable
final class EcsDaemonTaskDefinitionDevice {
  const EcsDaemonTaskDefinitionDevice({
    this.containerPath,
    required this.hostPath,
    this.permissions,
  });

  final TfArg<String>? containerPath;

  final TfArg<String> hostPath;

  final List<EcsDaemonTaskDefinitionPermissions>? permissions;

  @internal
  Map<String, Object?> encode() => {
    'container_path': ?containerPath?.toTfJson(),
    'host_path': hostPath.toTfJson(),
    if (permissions != null)
      'permissions': [for (final e in permissions!) e.toTfJson()],
  };
}

/// `permissions` — derived from the provider schema description.
extension type const EcsDaemonTaskDefinitionPermissions._(TfArg<String> _)
    implements TfArg<String> {
  EcsDaemonTaskDefinitionPermissions.variable(String name)
    : this._(TfArg.variable(name));
  EcsDaemonTaskDefinitionPermissions.expression(String template)
    : this._(TfArg.expression(template));
  const EcsDaemonTaskDefinitionPermissions.arg(TfArg<String> arg) : this._(arg);

  static const read = EcsDaemonTaskDefinitionPermissions._(
    TfArgLiteral('read'),
  );
  static const write = EcsDaemonTaskDefinitionPermissions._(
    TfArgLiteral('write'),
  );
  static const mknod = EcsDaemonTaskDefinitionPermissions._(
    TfArgLiteral('mknod'),
  );

  static const List<EcsDaemonTaskDefinitionPermissions> values = [
    read,
    write,
    mknod,
  ];
}

/// Typed helper for the `container_definition.linux_parameters.tmpfs` block of
/// `aws_ecs_daemon_task_definition` (derived from provider schema).
@immutable
final class EcsDaemonTaskDefinitionTmpfs {
  const EcsDaemonTaskDefinitionTmpfs({
    required this.containerPath,
    this.mountOptions,
    required this.size,
  });

  final TfArg<String> containerPath;

  final TfArg<List<String>>? mountOptions;

  final TfArg<num> size;

  @internal
  Map<String, Object?> encode() => {
    'container_path': containerPath.toTfJson(),
    'mount_options': ?mountOptions?.toTfJson(),
    'size': size.toTfJson(),
  };
}

/// Typed helper for the `container_definition.log_configuration` block of
/// `aws_ecs_daemon_task_definition` (derived from provider schema).
@immutable
final class EcsDaemonTaskDefinitionLogConfiguration {
  const EcsDaemonTaskDefinitionLogConfiguration({
    required this.logDriver,
    this.options,
    this.secretOption,
  });

  final EcsDaemonTaskDefinitionLogDriver logDriver;

  final TfArg<Map<String, String>>? options;

  final List<EcsDaemonTaskDefinitionSecretOption>? secretOption;

  @internal
  Map<String, Object?> encode() => {
    'log_driver': logDriver.toTfJson(),
    'options': ?options?.toTfJson(),
    if (secretOption != null)
      'secret_option': [for (final e in secretOption!) e.encode()],
  };
}

/// `log_driver` — derived from the provider schema description.
extension type const EcsDaemonTaskDefinitionLogDriver._(TfArg<String> _)
    implements TfArg<String> {
  EcsDaemonTaskDefinitionLogDriver.variable(String name)
    : this._(TfArg.variable(name));
  EcsDaemonTaskDefinitionLogDriver.expression(String template)
    : this._(TfArg.expression(template));
  const EcsDaemonTaskDefinitionLogDriver.arg(TfArg<String> arg) : this._(arg);

  static const jsonFile = EcsDaemonTaskDefinitionLogDriver._(
    TfArgLiteral('json-file'),
  );
  static const syslog = EcsDaemonTaskDefinitionLogDriver._(
    TfArgLiteral('syslog'),
  );
  static const journald = EcsDaemonTaskDefinitionLogDriver._(
    TfArgLiteral('journald'),
  );
  static const gelf = EcsDaemonTaskDefinitionLogDriver._(TfArgLiteral('gelf'));
  static const fluentd = EcsDaemonTaskDefinitionLogDriver._(
    TfArgLiteral('fluentd'),
  );
  static const awslogs = EcsDaemonTaskDefinitionLogDriver._(
    TfArgLiteral('awslogs'),
  );
  static const splunk = EcsDaemonTaskDefinitionLogDriver._(
    TfArgLiteral('splunk'),
  );
  static const awsfirelens = EcsDaemonTaskDefinitionLogDriver._(
    TfArgLiteral('awsfirelens'),
  );

  static const List<EcsDaemonTaskDefinitionLogDriver> values = [
    jsonFile,
    syslog,
    journald,
    gelf,
    fluentd,
    awslogs,
    splunk,
    awsfirelens,
  ];
}

/// Typed helper for the `container_definition.log_configuration.secret_option` block of
/// `aws_ecs_daemon_task_definition` (derived from provider schema).
@immutable
final class EcsDaemonTaskDefinitionSecretOption {
  const EcsDaemonTaskDefinitionSecretOption({
    required this.name,
    required this.valueFrom,
  });

  final TfArg<String> name;

  final TfArg<String> valueFrom;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value_from': valueFrom.toTfJson(),
  };
}

/// Typed helper for the `container_definition.mount_point` block of
/// `aws_ecs_daemon_task_definition` (derived from provider schema).
@immutable
final class EcsDaemonTaskDefinitionMountPoint {
  const EcsDaemonTaskDefinitionMountPoint({
    this.containerPath,
    this.readOnly,
    this.sourceVolume,
  });

  final TfArg<String>? containerPath;

  final TfArg<bool>? readOnly;

  final TfArg<String>? sourceVolume;

  @internal
  Map<String, Object?> encode() => {
    'container_path': ?containerPath?.toTfJson(),
    'read_only': ?readOnly?.toTfJson(),
    'source_volume': ?sourceVolume?.toTfJson(),
  };
}

/// Typed helper for the `container_definition.repository_credentials` block of
/// `aws_ecs_daemon_task_definition` (derived from provider schema).
@immutable
final class EcsDaemonTaskDefinitionRepositoryCredentials {
  const EcsDaemonTaskDefinitionRepositoryCredentials({
    required this.credentialsParameter,
  });

  final TfArg<String> credentialsParameter;

  @internal
  Map<String, Object?> encode() => {
    'credentials_parameter': credentialsParameter.toTfJson(),
  };
}

/// Typed helper for the `container_definition.restart_policy` block of
/// `aws_ecs_daemon_task_definition` (derived from provider schema).
@immutable
final class EcsDaemonTaskDefinitionRestartPolicy {
  const EcsDaemonTaskDefinitionRestartPolicy({
    required this.enabled,
    this.ignoredExitCodes,
    this.restartAttemptPeriod,
  });

  final TfArg<bool> enabled;

  final TfArg<List<num>>? ignoredExitCodes;

  final TfArg<num>? restartAttemptPeriod;

  @internal
  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'ignored_exit_codes': ?ignoredExitCodes?.toTfJson(),
    'restart_attempt_period': ?restartAttemptPeriod?.toTfJson(),
  };
}

/// Typed helper for the `container_definition.secret` block of
/// `aws_ecs_daemon_task_definition` (derived from provider schema).
@immutable
final class EcsDaemonTaskDefinitionSecret {
  const EcsDaemonTaskDefinitionSecret({
    required this.name,
    required this.valueFrom,
  });

  final TfArg<String> name;

  final TfArg<String> valueFrom;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value_from': valueFrom.toTfJson(),
  };
}

/// Typed helper for the `container_definition.system_control` block of
/// `aws_ecs_daemon_task_definition` (derived from provider schema).
@immutable
final class EcsDaemonTaskDefinitionSystemControl {
  const EcsDaemonTaskDefinitionSystemControl({this.namespace, this.value});

  final TfArg<String>? namespace;

  final TfArg<String>? value;

  @internal
  Map<String, Object?> encode() => {
    'namespace': ?namespace?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `container_definition.ulimit` block of
/// `aws_ecs_daemon_task_definition` (derived from provider schema).
@immutable
final class EcsDaemonTaskDefinitionUlimit {
  const EcsDaemonTaskDefinitionUlimit({
    required this.hardLimit,
    required this.name,
    required this.softLimit,
  });

  final TfArg<num> hardLimit;

  final EcsDaemonTaskDefinitionName name;

  final TfArg<num> softLimit;

  @internal
  Map<String, Object?> encode() => {
    'hard_limit': hardLimit.toTfJson(),
    'name': name.toTfJson(),
    'soft_limit': softLimit.toTfJson(),
  };
}

/// `name` — derived from the provider schema description.
extension type const EcsDaemonTaskDefinitionName._(TfArg<String> _)
    implements TfArg<String> {
  EcsDaemonTaskDefinitionName.variable(String name)
    : this._(TfArg.variable(name));
  EcsDaemonTaskDefinitionName.expression(String template)
    : this._(TfArg.expression(template));
  const EcsDaemonTaskDefinitionName.arg(TfArg<String> arg) : this._(arg);

  static const core = EcsDaemonTaskDefinitionName._(TfArgLiteral('core'));
  static const cpu = EcsDaemonTaskDefinitionName._(TfArgLiteral('cpu'));
  static const data = EcsDaemonTaskDefinitionName._(TfArgLiteral('data'));
  static const fsize = EcsDaemonTaskDefinitionName._(TfArgLiteral('fsize'));
  static const locks = EcsDaemonTaskDefinitionName._(TfArgLiteral('locks'));
  static const memlock = EcsDaemonTaskDefinitionName._(TfArgLiteral('memlock'));
  static const msgqueue = EcsDaemonTaskDefinitionName._(
    TfArgLiteral('msgqueue'),
  );
  static const nice = EcsDaemonTaskDefinitionName._(TfArgLiteral('nice'));
  static const nofile = EcsDaemonTaskDefinitionName._(TfArgLiteral('nofile'));
  static const nproc = EcsDaemonTaskDefinitionName._(TfArgLiteral('nproc'));
  static const rss = EcsDaemonTaskDefinitionName._(TfArgLiteral('rss'));
  static const rtprio = EcsDaemonTaskDefinitionName._(TfArgLiteral('rtprio'));
  static const rttime = EcsDaemonTaskDefinitionName._(TfArgLiteral('rttime'));
  static const sigpending = EcsDaemonTaskDefinitionName._(
    TfArgLiteral('sigpending'),
  );
  static const stack = EcsDaemonTaskDefinitionName._(TfArgLiteral('stack'));

  static const List<EcsDaemonTaskDefinitionName> values = [
    core,
    cpu,
    data,
    fsize,
    locks,
    memlock,
    msgqueue,
    nice,
    nofile,
    nproc,
    rss,
    rtprio,
    rttime,
    sigpending,
    stack,
  ];
}

/// Typed helper for the `volume` block of
/// `aws_ecs_daemon_task_definition` (derived from provider schema).
@immutable
final class EcsDaemonTaskDefinitionVolume {
  const EcsDaemonTaskDefinitionVolume({required this.name, this.host});

  final TfArg<String> name;

  final List<EcsDaemonTaskDefinitionHost>? host;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    if (host != null) 'host': [for (final e in host!) e.encode()],
  };
}

/// Typed helper for the `volume.host` block of
/// `aws_ecs_daemon_task_definition` (derived from provider schema).
@immutable
final class EcsDaemonTaskDefinitionHost {
  const EcsDaemonTaskDefinitionHost({this.sourcePath});

  final TfArg<String>? sourcePath;

  @internal
  Map<String, Object?> encode() => {'source_path': ?sourcePath?.toTfJson()};
}

/// Factory wrapper for `aws_ecs_daemon_task_definition`.
final class AwsEcsDaemonTaskDefinition extends Resource {
  static const String tfType = 'aws_ecs_daemon_task_definition';

  AwsEcsDaemonTaskDefinition(
    super.localName, {
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

  /// Reference to `cpu` attribute.
  TfRef<String> get cpu => TfRef.attribute<String>(this, 'cpu');

  /// Reference to `execution_role_arn` attribute.
  TfRef<String> get executionRoleArn =>
      TfRef.attribute<String>(this, 'execution_role_arn');

  /// Reference to `family` attribute.
  TfRef<String> get family => TfRef.attribute<String>(this, 'family');

  /// Reference to `memory` attribute.
  TfRef<String> get memory => TfRef.attribute<String>(this, 'memory');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `task_role_arn` attribute.
  TfRef<String> get taskRoleArn =>
      TfRef.attribute<String>(this, 'task_role_arn');
}
