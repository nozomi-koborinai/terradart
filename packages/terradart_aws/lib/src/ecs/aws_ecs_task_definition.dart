// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_ecs_task_definition`.
const Set<String> _awsEcsTaskDefinitionSensitive = <String>{};

/// Ecs Task Definition Ipc enum for `ipc_mode`.
extension type const EcsTaskDefinitionIpcMode._(TfArg<String> _)
    implements TfArg<String> {
  EcsTaskDefinitionIpcMode.variable(String name) : this._(TfArg.variable(name));
  EcsTaskDefinitionIpcMode.expression(String template)
    : this._(TfArg.expression(template));
  const EcsTaskDefinitionIpcMode.arg(TfArg<String> arg) : this._(arg);

  static const host = EcsTaskDefinitionIpcMode._(TfArgLiteral('host'));
  static const task = EcsTaskDefinitionIpcMode._(TfArgLiteral('task'));
  static const none = EcsTaskDefinitionIpcMode._(TfArgLiteral('none'));

  static const List<EcsTaskDefinitionIpcMode> values = [host, task, none];
}

/// Ecs Task Definition Network enum for `network_mode`.
extension type const EcsTaskDefinitionNetworkMode._(TfArg<String> _)
    implements TfArg<String> {
  EcsTaskDefinitionNetworkMode.variable(String name)
    : this._(TfArg.variable(name));
  EcsTaskDefinitionNetworkMode.expression(String template)
    : this._(TfArg.expression(template));
  const EcsTaskDefinitionNetworkMode.arg(TfArg<String> arg) : this._(arg);

  static const bridge = EcsTaskDefinitionNetworkMode._(TfArgLiteral('bridge'));
  static const host = EcsTaskDefinitionNetworkMode._(TfArgLiteral('host'));
  static const awsvpc = EcsTaskDefinitionNetworkMode._(TfArgLiteral('awsvpc'));
  static const none = EcsTaskDefinitionNetworkMode._(TfArgLiteral('none'));

  static const List<EcsTaskDefinitionNetworkMode> values = [
    bridge,
    host,
    awsvpc,
    none,
  ];
}

/// Ecs Task Definition Pid enum for `pid_mode`.
extension type const EcsTaskDefinitionPidMode._(TfArg<String> _)
    implements TfArg<String> {
  EcsTaskDefinitionPidMode.variable(String name) : this._(TfArg.variable(name));
  EcsTaskDefinitionPidMode.expression(String template)
    : this._(TfArg.expression(template));
  const EcsTaskDefinitionPidMode.arg(TfArg<String> arg) : this._(arg);

  static const host = EcsTaskDefinitionPidMode._(TfArgLiteral('host'));
  static const task = EcsTaskDefinitionPidMode._(TfArgLiteral('task'));

  static const List<EcsTaskDefinitionPidMode> values = [host, task];
}

/// Ecs Task Definition Requires enum for `requires_compatibilities`.
extension type const EcsTaskDefinitionRequiresCompatibilities._(TfArg<String> _)
    implements TfArg<String> {
  EcsTaskDefinitionRequiresCompatibilities.variable(String name)
    : this._(TfArg.variable(name));
  EcsTaskDefinitionRequiresCompatibilities.expression(String template)
    : this._(TfArg.expression(template));
  const EcsTaskDefinitionRequiresCompatibilities.arg(TfArg<String> arg)
    : this._(arg);

  static const ec2 = EcsTaskDefinitionRequiresCompatibilities._(
    TfArgLiteral('EC2'),
  );
  static const fargate = EcsTaskDefinitionRequiresCompatibilities._(
    TfArgLiteral('FARGATE'),
  );
  static const external = EcsTaskDefinitionRequiresCompatibilities._(
    TfArgLiteral('EXTERNAL'),
  );
  static const managedInstances = EcsTaskDefinitionRequiresCompatibilities._(
    TfArgLiteral('MANAGED_INSTANCES'),
  );

  static const List<EcsTaskDefinitionRequiresCompatibilities> values = [
    ec2,
    fargate,
    external,
    managedInstances,
  ];
}

/// Typed helper for the `ephemeral_storage` block of
/// `aws_ecs_task_definition` (derived from provider schema).
@immutable
final class EcsTaskDefinitionEphemeralStorage {
  const EcsTaskDefinitionEphemeralStorage({required this.sizeInGib});

  final TfArg<num> sizeInGib;

  @internal
  Map<String, Object?> encode() => {'size_in_gib': sizeInGib.toTfJson()};
}

/// Typed helper for the `placement_constraints` block of
/// `aws_ecs_task_definition` (derived from provider schema).
@immutable
final class EcsTaskDefinitionPlacementConstraints {
  const EcsTaskDefinitionPlacementConstraints({
    this.expression,
    required this.type,
  });

  final TfArg<String>? expression;

  final EcsTaskDefinitionPlacementConstraintsType type;

  @internal
  Map<String, Object?> encode() => {
    'expression': ?expression?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const EcsTaskDefinitionPlacementConstraintsType._(
  TfArg<String> _
) implements TfArg<String> {
  EcsTaskDefinitionPlacementConstraintsType.variable(String name)
    : this._(TfArg.variable(name));
  EcsTaskDefinitionPlacementConstraintsType.expression(String template)
    : this._(TfArg.expression(template));
  const EcsTaskDefinitionPlacementConstraintsType.arg(TfArg<String> arg)
    : this._(arg);

  static const memberof = EcsTaskDefinitionPlacementConstraintsType._(
    TfArgLiteral('memberOf'),
  );

  static const List<EcsTaskDefinitionPlacementConstraintsType> values = [
    memberof,
  ];
}

/// Typed helper for the `proxy_configuration` block of
/// `aws_ecs_task_definition` (derived from provider schema).
@immutable
final class EcsTaskDefinitionProxyConfiguration {
  const EcsTaskDefinitionProxyConfiguration({
    required this.containerName,
    this.properties,
    this.type,
  });

  final TfArg<String> containerName;

  final TfArg<Map<String, String>>? properties;

  final EcsTaskDefinitionProxyConfigurationType? type;

  @internal
  Map<String, Object?> encode() => {
    'container_name': containerName.toTfJson(),
    'properties': ?properties?.toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const EcsTaskDefinitionProxyConfigurationType._(TfArg<String> _)
    implements TfArg<String> {
  EcsTaskDefinitionProxyConfigurationType.variable(String name)
    : this._(TfArg.variable(name));
  EcsTaskDefinitionProxyConfigurationType.expression(String template)
    : this._(TfArg.expression(template));
  const EcsTaskDefinitionProxyConfigurationType.arg(TfArg<String> arg)
    : this._(arg);

  static const appmesh = EcsTaskDefinitionProxyConfigurationType._(
    TfArgLiteral('APPMESH'),
  );

  static const List<EcsTaskDefinitionProxyConfigurationType> values = [appmesh];
}

/// Typed helper for the `runtime_platform` block of
/// `aws_ecs_task_definition` (derived from provider schema).
@immutable
final class EcsTaskDefinitionRuntimePlatform {
  const EcsTaskDefinitionRuntimePlatform({
    this.cpuArchitecture,
    this.operatingSystemFamily,
  });

  final EcsTaskDefinitionCpuArchitecture? cpuArchitecture;

  final EcsTaskDefinitionOperatingSystemFamily? operatingSystemFamily;

  @internal
  Map<String, Object?> encode() => {
    'cpu_architecture': ?cpuArchitecture?.toTfJson(),
    'operating_system_family': ?operatingSystemFamily?.toTfJson(),
  };
}

/// `cpu_architecture` — derived from the provider schema description.
extension type const EcsTaskDefinitionCpuArchitecture._(TfArg<String> _)
    implements TfArg<String> {
  EcsTaskDefinitionCpuArchitecture.variable(String name)
    : this._(TfArg.variable(name));
  EcsTaskDefinitionCpuArchitecture.expression(String template)
    : this._(TfArg.expression(template));
  const EcsTaskDefinitionCpuArchitecture.arg(TfArg<String> arg) : this._(arg);

  static const x8664 = EcsTaskDefinitionCpuArchitecture._(
    TfArgLiteral('X86_64'),
  );
  static const arm64 = EcsTaskDefinitionCpuArchitecture._(
    TfArgLiteral('ARM64'),
  );

  static const List<EcsTaskDefinitionCpuArchitecture> values = [x8664, arm64];
}

/// `operating_system_family` — derived from the provider schema description.
extension type const EcsTaskDefinitionOperatingSystemFamily._(TfArg<String> _)
    implements TfArg<String> {
  EcsTaskDefinitionOperatingSystemFamily.variable(String name)
    : this._(TfArg.variable(name));
  EcsTaskDefinitionOperatingSystemFamily.expression(String template)
    : this._(TfArg.expression(template));
  const EcsTaskDefinitionOperatingSystemFamily.arg(TfArg<String> arg)
    : this._(arg);

  static const windowsServer2019Full = EcsTaskDefinitionOperatingSystemFamily._(
    TfArgLiteral('WINDOWS_SERVER_2019_FULL'),
  );
  static const windowsServer2019Core = EcsTaskDefinitionOperatingSystemFamily._(
    TfArgLiteral('WINDOWS_SERVER_2019_CORE'),
  );
  static const windowsServer2016Full = EcsTaskDefinitionOperatingSystemFamily._(
    TfArgLiteral('WINDOWS_SERVER_2016_FULL'),
  );
  static const windowsServer2004Core = EcsTaskDefinitionOperatingSystemFamily._(
    TfArgLiteral('WINDOWS_SERVER_2004_CORE'),
  );
  static const windowsServer2022Core = EcsTaskDefinitionOperatingSystemFamily._(
    TfArgLiteral('WINDOWS_SERVER_2022_CORE'),
  );
  static const windowsServer2022Full = EcsTaskDefinitionOperatingSystemFamily._(
    TfArgLiteral('WINDOWS_SERVER_2022_FULL'),
  );
  static const windowsServer2025Core = EcsTaskDefinitionOperatingSystemFamily._(
    TfArgLiteral('WINDOWS_SERVER_2025_CORE'),
  );
  static const windowsServer2025Full = EcsTaskDefinitionOperatingSystemFamily._(
    TfArgLiteral('WINDOWS_SERVER_2025_FULL'),
  );
  static const windowsServer20h2Core = EcsTaskDefinitionOperatingSystemFamily._(
    TfArgLiteral('WINDOWS_SERVER_20H2_CORE'),
  );
  static const linux = EcsTaskDefinitionOperatingSystemFamily._(
    TfArgLiteral('LINUX'),
  );

  static const List<EcsTaskDefinitionOperatingSystemFamily> values = [
    windowsServer2019Full,
    windowsServer2019Core,
    windowsServer2016Full,
    windowsServer2004Core,
    windowsServer2022Core,
    windowsServer2022Full,
    windowsServer2025Core,
    windowsServer2025Full,
    windowsServer20h2Core,
    linux,
  ];
}

/// Typed helper for the `volume` block of
/// `aws_ecs_task_definition` (derived from provider schema).
@immutable
final class EcsTaskDefinitionVolume {
  const EcsTaskDefinitionVolume({
    this.configureAtLaunch,
    this.hostPath,
    required this.name,
    this.dockerVolumeConfiguration,
    this.efsVolumeConfiguration,
    this.fsxWindowsFileServerVolumeConfiguration,
    this.s3filesVolumeConfiguration,
  });

  final TfArg<bool>? configureAtLaunch;

  final TfArg<String>? hostPath;

  final TfArg<String> name;

  final EcsTaskDefinitionDockerVolumeConfiguration? dockerVolumeConfiguration;

  final EcsTaskDefinitionEfsVolumeConfiguration? efsVolumeConfiguration;

  final EcsTaskDefinitionFsxWindowsFileServerVolumeConfiguration?
  fsxWindowsFileServerVolumeConfiguration;

  final EcsTaskDefinitionS3filesVolumeConfiguration? s3filesVolumeConfiguration;

  @internal
  Map<String, Object?> encode() => {
    'configure_at_launch': ?configureAtLaunch?.toTfJson(),
    'host_path': ?hostPath?.toTfJson(),
    'name': name.toTfJson(),
    'docker_volume_configuration': ?dockerVolumeConfiguration?.encode(),
    'efs_volume_configuration': ?efsVolumeConfiguration?.encode(),
    'fsx_windows_file_server_volume_configuration':
        ?fsxWindowsFileServerVolumeConfiguration?.encode(),
    's3files_volume_configuration': ?s3filesVolumeConfiguration?.encode(),
  };
}

/// Typed helper for the `volume.docker_volume_configuration` block of
/// `aws_ecs_task_definition` (derived from provider schema).
@immutable
final class EcsTaskDefinitionDockerVolumeConfiguration {
  const EcsTaskDefinitionDockerVolumeConfiguration({
    this.autoprovision,
    this.driver,
    this.driverOpts,
    this.labels,
    this.scope,
  });

  final TfArg<bool>? autoprovision;

  final TfArg<String>? driver;

  final TfArg<Map<String, String>>? driverOpts;

  final TfArg<Map<String, String>>? labels;

  final EcsTaskDefinitionScope? scope;

  @internal
  Map<String, Object?> encode() => {
    'autoprovision': ?autoprovision?.toTfJson(),
    'driver': ?driver?.toTfJson(),
    'driver_opts': ?driverOpts?.toTfJson(),
    'labels': ?labels?.toTfJson(),
    'scope': ?scope?.toTfJson(),
  };
}

/// `scope` — derived from the provider schema description.
extension type const EcsTaskDefinitionScope._(TfArg<String> _)
    implements TfArg<String> {
  EcsTaskDefinitionScope.variable(String name) : this._(TfArg.variable(name));
  EcsTaskDefinitionScope.expression(String template)
    : this._(TfArg.expression(template));
  const EcsTaskDefinitionScope.arg(TfArg<String> arg) : this._(arg);

  static const task = EcsTaskDefinitionScope._(TfArgLiteral('task'));
  static const shared = EcsTaskDefinitionScope._(TfArgLiteral('shared'));

  static const List<EcsTaskDefinitionScope> values = [task, shared];
}

/// Typed helper for the `volume.efs_volume_configuration` block of
/// `aws_ecs_task_definition` (derived from provider schema).
@immutable
final class EcsTaskDefinitionEfsVolumeConfiguration {
  const EcsTaskDefinitionEfsVolumeConfiguration({
    required this.fileSystemId,
    this.rootDirectory,
    this.transitEncryption,
    this.transitEncryptionPort,
    this.authorizationConfig,
  });

  final TfArg<String> fileSystemId;

  final TfArg<String>? rootDirectory;

  final EcsTaskDefinitionTransitEncryption? transitEncryption;

  final TfArg<num>? transitEncryptionPort;

  final EcsTaskDefinitionEfsVolumeConfigurationAuthorizationConfig?
  authorizationConfig;

  @internal
  Map<String, Object?> encode() => {
    'file_system_id': fileSystemId.toTfJson(),
    'root_directory': ?rootDirectory?.toTfJson(),
    'transit_encryption': ?transitEncryption?.toTfJson(),
    'transit_encryption_port': ?transitEncryptionPort?.toTfJson(),
    'authorization_config': ?authorizationConfig?.encode(),
  };
}

/// `transit_encryption` — derived from the provider schema description.
extension type const EcsTaskDefinitionTransitEncryption._(TfArg<String> _)
    implements TfArg<String> {
  EcsTaskDefinitionTransitEncryption.variable(String name)
    : this._(TfArg.variable(name));
  EcsTaskDefinitionTransitEncryption.expression(String template)
    : this._(TfArg.expression(template));
  const EcsTaskDefinitionTransitEncryption.arg(TfArg<String> arg) : this._(arg);

  static const enabled = EcsTaskDefinitionTransitEncryption._(
    TfArgLiteral('ENABLED'),
  );
  static const disabled = EcsTaskDefinitionTransitEncryption._(
    TfArgLiteral('DISABLED'),
  );

  static const List<EcsTaskDefinitionTransitEncryption> values = [
    enabled,
    disabled,
  ];
}

/// Typed helper for the `volume.efs_volume_configuration.authorization_config` block of
/// `aws_ecs_task_definition` (derived from provider schema).
@immutable
final class EcsTaskDefinitionEfsVolumeConfigurationAuthorizationConfig {
  const EcsTaskDefinitionEfsVolumeConfigurationAuthorizationConfig({
    this.accessPointId,
    this.iam,
  });

  final TfArg<String>? accessPointId;

  final EcsTaskDefinitionIam? iam;

  @internal
  Map<String, Object?> encode() => {
    'access_point_id': ?accessPointId?.toTfJson(),
    'iam': ?iam?.toTfJson(),
  };
}

/// `iam` — derived from the provider schema description.
extension type const EcsTaskDefinitionIam._(TfArg<String> _)
    implements TfArg<String> {
  EcsTaskDefinitionIam.variable(String name) : this._(TfArg.variable(name));
  EcsTaskDefinitionIam.expression(String template)
    : this._(TfArg.expression(template));
  const EcsTaskDefinitionIam.arg(TfArg<String> arg) : this._(arg);

  static const enabled = EcsTaskDefinitionIam._(TfArgLiteral('ENABLED'));
  static const disabled = EcsTaskDefinitionIam._(TfArgLiteral('DISABLED'));

  static const List<EcsTaskDefinitionIam> values = [enabled, disabled];
}

/// Typed helper for the `volume.fsx_windows_file_server_volume_configuration` block of
/// `aws_ecs_task_definition` (derived from provider schema).
@immutable
final class EcsTaskDefinitionFsxWindowsFileServerVolumeConfiguration {
  const EcsTaskDefinitionFsxWindowsFileServerVolumeConfiguration({
    required this.fileSystemId,
    required this.rootDirectory,
    required this.authorizationConfig,
  });

  final TfArg<String> fileSystemId;

  final TfArg<String> rootDirectory;

  final EcsTaskDefinitionFsxWindowsFileServerVolumeConfigurationAuthorizationConfig
  authorizationConfig;

  @internal
  Map<String, Object?> encode() => {
    'file_system_id': fileSystemId.toTfJson(),
    'root_directory': rootDirectory.toTfJson(),
    'authorization_config': authorizationConfig.encode(),
  };
}

/// Typed helper for the `volume.fsx_windows_file_server_volume_configuration.authorization_config` block of
/// `aws_ecs_task_definition` (derived from provider schema).
@immutable
final class EcsTaskDefinitionFsxWindowsFileServerVolumeConfigurationAuthorizationConfig {
  const EcsTaskDefinitionFsxWindowsFileServerVolumeConfigurationAuthorizationConfig({
    required this.credentialsParameter,
    required this.domain,
  });

  final TfArg<String> credentialsParameter;

  final TfArg<String> domain;

  @internal
  Map<String, Object?> encode() => {
    'credentials_parameter': credentialsParameter.toTfJson(),
    'domain': domain.toTfJson(),
  };
}

/// Typed helper for the `volume.s3files_volume_configuration` block of
/// `aws_ecs_task_definition` (derived from provider schema).
@immutable
final class EcsTaskDefinitionS3filesVolumeConfiguration {
  const EcsTaskDefinitionS3filesVolumeConfiguration({
    this.accessPointArn,
    required this.fileSystemArn,
    this.rootDirectory,
    this.transitEncryptionPort,
  });

  final TfArg<String>? accessPointArn;

  final TfArg<String> fileSystemArn;

  final TfArg<String>? rootDirectory;

  final TfArg<num>? transitEncryptionPort;

  @internal
  Map<String, Object?> encode() => {
    'access_point_arn': ?accessPointArn?.toTfJson(),
    'file_system_arn': fileSystemArn.toTfJson(),
    'root_directory': ?rootDirectory?.toTfJson(),
    'transit_encryption_port': ?transitEncryptionPort?.toTfJson(),
  };
}

/// Factory wrapper for `aws_ecs_task_definition`.
final class AwsEcsTaskDefinition extends Resource {
  static const String tfType = 'aws_ecs_task_definition';

  AwsEcsTaskDefinition(
    super.localName, {
    required TfArg<String> containerDefinitions,
    TfArg<String>? cpu,
    TfArg<bool>? enableFaultInjection,
    RefTo<AwsIamRole>? executionRoleArn,
    required TfArg<String> family,
    EcsTaskDefinitionIpcMode? ipcMode,
    TfArg<String>? memory,
    EcsTaskDefinitionNetworkMode? networkMode,
    EcsTaskDefinitionPidMode? pidMode,
    TfArg<String>? region,
    List<EcsTaskDefinitionRequiresCompatibilities>? requiresCompatibilities,
    TfArg<bool>? skipDestroy,
    TfArg<Map<String, String>>? tags,
    RefTo<AwsIamRole>? taskRoleArn,
    TfArg<bool>? trackLatest,
    EcsTaskDefinitionEphemeralStorage? ephemeralStorage,
    List<EcsTaskDefinitionPlacementConstraints>? placementConstraints,
    EcsTaskDefinitionProxyConfiguration? proxyConfiguration,
    EcsTaskDefinitionRuntimePlatform? runtimePlatform,
    List<EcsTaskDefinitionVolume>? volume,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'container_definitions': containerDefinitions,
           'cpu': ?cpu,
           'enable_fault_injection': ?enableFaultInjection,
           'execution_role_arn': ?executionRoleArn?.encodeAs('arn'),
           'family': family,
           'ipc_mode': ?ipcMode,
           'memory': ?memory,
           'network_mode': ?networkMode,
           'pid_mode': ?pidMode,
           'region': ?region,
           if (requiresCompatibilities != null)
             'requires_compatibilities': TfArg.literal([
               for (final e in requiresCompatibilities) e.toTfJson(),
             ]),
           'skip_destroy': ?skipDestroy,
           'tags': ?tags,
           'task_role_arn': ?taskRoleArn?.encodeAs('arn'),
           'track_latest': ?trackLatest,
           if (ephemeralStorage != null)
             'ephemeral_storage': TfArg.literal(ephemeralStorage.encode()),
           if (placementConstraints != null)
             'placement_constraints': TfArg.literal([
               for (final e in placementConstraints) e.encode(),
             ]),
           if (proxyConfiguration != null)
             'proxy_configuration': TfArg.literal(proxyConfiguration.encode()),
           if (runtimePlatform != null)
             'runtime_platform': TfArg.literal(runtimePlatform.encode()),
           if (volume != null)
             'volume': TfArg.literal([for (final e in volume) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEcsTaskDefinitionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEcsTaskDefinition>`.
  RefTo<AwsEcsTaskDefinition> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `arn_without_revision` attribute.
  TfRef<String> get arnWithoutRevision =>
      TfRef.attribute<String>(this, 'arn_without_revision');

  /// Reference to `revision` attribute.
  TfRef<num> get revision => TfRef.attribute<num>(this, 'revision');

  /// Reference to `container_definitions` attribute.
  TfRef<String> get containerDefinitions =>
      TfRef.attribute<String>(this, 'container_definitions');

  /// Reference to `cpu` attribute.
  TfRef<String> get cpu => TfRef.attribute<String>(this, 'cpu');

  /// Reference to `enable_fault_injection` attribute.
  TfRef<bool> get enableFaultInjection =>
      TfRef.attribute<bool>(this, 'enable_fault_injection');

  /// Reference to `execution_role_arn` attribute.
  TfRef<String> get executionRoleArn =>
      TfRef.attribute<String>(this, 'execution_role_arn');

  /// Reference to `family` attribute.
  TfRef<String> get family => TfRef.attribute<String>(this, 'family');

  /// Reference to `ipc_mode` attribute.
  TfRef<String> get ipcMode => TfRef.attribute<String>(this, 'ipc_mode');

  /// Reference to `memory` attribute.
  TfRef<String> get memory => TfRef.attribute<String>(this, 'memory');

  /// Reference to `network_mode` attribute.
  TfRef<String> get networkMode =>
      TfRef.attribute<String>(this, 'network_mode');

  /// Reference to `pid_mode` attribute.
  TfRef<String> get pidMode => TfRef.attribute<String>(this, 'pid_mode');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `requires_compatibilities` attribute.
  TfRef<List<String>> get requiresCompatibilities =>
      TfRef.attribute<List<String>>(this, 'requires_compatibilities');

  /// Reference to `skip_destroy` attribute.
  TfRef<bool> get skipDestroy => TfRef.attribute<bool>(this, 'skip_destroy');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `task_role_arn` attribute.
  TfRef<String> get taskRoleArn =>
      TfRef.attribute<String>(this, 'task_role_arn');

  /// Reference to `track_latest` attribute.
  TfRef<bool> get trackLatest => TfRef.attribute<bool>(this, 'track_latest');
}
