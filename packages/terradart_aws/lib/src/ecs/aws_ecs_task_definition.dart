// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_ecs_task_definition`.
const Set<String> _awsEcsTaskDefinitionSensitive = <String>{};

/// Ecs Task Definition Ipc enum for `ipc_mode`.
enum EcsTaskDefinitionIpcMode implements TerraformEnum {
  host('host'),
  task('task'),
  none('none');

  const EcsTaskDefinitionIpcMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Ecs Task Definition Network enum for `network_mode`.
enum EcsTaskDefinitionNetworkMode implements TerraformEnum {
  bridge('bridge'),
  host('host'),
  awsvpc('awsvpc'),
  none('none');

  const EcsTaskDefinitionNetworkMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Ecs Task Definition Pid enum for `pid_mode`.
enum EcsTaskDefinitionPidMode implements TerraformEnum {
  host('host'),
  task('task');

  const EcsTaskDefinitionPidMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Ecs Task Definition Requires enum for `requires_compatibilities`.
enum EcsTaskDefinitionRequiresCompatibilities implements TerraformEnum {
  ec2('EC2'),
  fargate('FARGATE'),
  external('EXTERNAL'),
  managedInstances('MANAGED_INSTANCES');

  const EcsTaskDefinitionRequiresCompatibilities(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `ephemeral_storage` block of
/// `aws_ecs_task_definition` (derived from provider schema).
@immutable
final class EcsTaskDefinitionEphemeralStorage {
  const EcsTaskDefinitionEphemeralStorage({required this.sizeInGib});

  final TfArg<num> sizeInGib;

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

  final TfArg<EcsTaskDefinitionPlacementConstraintsType> type;

  Map<String, Object?> encode() => {
    'expression': ?expression?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum EcsTaskDefinitionPlacementConstraintsType implements TerraformEnum {
  memberof('memberOf');

  const EcsTaskDefinitionPlacementConstraintsType(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<EcsTaskDefinitionProxyConfigurationType>? type;

  Map<String, Object?> encode() => {
    'container_name': containerName.toTfJson(),
    'properties': ?properties?.toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum EcsTaskDefinitionProxyConfigurationType implements TerraformEnum {
  appmesh('APPMESH');

  const EcsTaskDefinitionProxyConfigurationType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `runtime_platform` block of
/// `aws_ecs_task_definition` (derived from provider schema).
@immutable
final class EcsTaskDefinitionRuntimePlatform {
  const EcsTaskDefinitionRuntimePlatform({
    this.cpuArchitecture,
    this.operatingSystemFamily,
  });

  final TfArg<EcsTaskDefinitionRuntimePlatformCpuArchitecture>? cpuArchitecture;

  final TfArg<EcsTaskDefinitionRuntimePlatformOperatingSystemFamily>?
  operatingSystemFamily;

  Map<String, Object?> encode() => {
    'cpu_architecture': ?cpuArchitecture?.toTfJson(),
    'operating_system_family': ?operatingSystemFamily?.toTfJson(),
  };
}

/// `cpu_architecture` — derived from the provider schema description.
enum EcsTaskDefinitionRuntimePlatformCpuArchitecture implements TerraformEnum {
  x8664('X86_64'),
  arm64('ARM64');

  const EcsTaskDefinitionRuntimePlatformCpuArchitecture(this.terraformValue);
  @override
  final String terraformValue;
}

/// `operating_system_family` — derived from the provider schema description.
enum EcsTaskDefinitionRuntimePlatformOperatingSystemFamily
    implements TerraformEnum {
  windowsServer2019Full('WINDOWS_SERVER_2019_FULL'),
  windowsServer2019Core('WINDOWS_SERVER_2019_CORE'),
  windowsServer2016Full('WINDOWS_SERVER_2016_FULL'),
  windowsServer2004Core('WINDOWS_SERVER_2004_CORE'),
  windowsServer2022Core('WINDOWS_SERVER_2022_CORE'),
  windowsServer2022Full('WINDOWS_SERVER_2022_FULL'),
  windowsServer2025Core('WINDOWS_SERVER_2025_CORE'),
  windowsServer2025Full('WINDOWS_SERVER_2025_FULL'),
  windowsServer20h2Core('WINDOWS_SERVER_20H2_CORE'),
  linux('LINUX');

  const EcsTaskDefinitionRuntimePlatformOperatingSystemFamily(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final EcsTaskDefinitionVolumeDockerVolumeConfiguration?
  dockerVolumeConfiguration;

  final EcsTaskDefinitionVolumeEfsVolumeConfiguration? efsVolumeConfiguration;

  final EcsTaskDefinitionVolumeFsxWindowsFileServerVolumeConfiguration?
  fsxWindowsFileServerVolumeConfiguration;

  final EcsTaskDefinitionVolumeS3filesVolumeConfiguration?
  s3filesVolumeConfiguration;

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
final class EcsTaskDefinitionVolumeDockerVolumeConfiguration {
  const EcsTaskDefinitionVolumeDockerVolumeConfiguration({
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

  final TfArg<EcsTaskDefinitionVolumeDockerVolumeConfigurationScope>? scope;

  Map<String, Object?> encode() => {
    'autoprovision': ?autoprovision?.toTfJson(),
    'driver': ?driver?.toTfJson(),
    'driver_opts': ?driverOpts?.toTfJson(),
    'labels': ?labels?.toTfJson(),
    'scope': ?scope?.toTfJson(),
  };
}

/// `scope` — derived from the provider schema description.
enum EcsTaskDefinitionVolumeDockerVolumeConfigurationScope
    implements TerraformEnum {
  task('task'),
  shared('shared');

  const EcsTaskDefinitionVolumeDockerVolumeConfigurationScope(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `volume.efs_volume_configuration` block of
/// `aws_ecs_task_definition` (derived from provider schema).
@immutable
final class EcsTaskDefinitionVolumeEfsVolumeConfiguration {
  const EcsTaskDefinitionVolumeEfsVolumeConfiguration({
    required this.fileSystemId,
    this.rootDirectory,
    this.transitEncryption,
    this.transitEncryptionPort,
    this.authorizationConfig,
  });

  final TfArg<String> fileSystemId;

  final TfArg<String>? rootDirectory;

  final TfArg<EcsTaskDefinitionVolumeEfsVolumeConfigurationTransitEncryption>?
  transitEncryption;

  final TfArg<num>? transitEncryptionPort;

  final EcsTaskDefinitionVolumeEfsVolumeConfigurationAuthorizationConfig?
  authorizationConfig;

  Map<String, Object?> encode() => {
    'file_system_id': fileSystemId.toTfJson(),
    'root_directory': ?rootDirectory?.toTfJson(),
    'transit_encryption': ?transitEncryption?.toTfJson(),
    'transit_encryption_port': ?transitEncryptionPort?.toTfJson(),
    'authorization_config': ?authorizationConfig?.encode(),
  };
}

/// `transit_encryption` — derived from the provider schema description.
enum EcsTaskDefinitionVolumeEfsVolumeConfigurationTransitEncryption
    implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const EcsTaskDefinitionVolumeEfsVolumeConfigurationTransitEncryption(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `volume.efs_volume_configuration.authorization_config` block of
/// `aws_ecs_task_definition` (derived from provider schema).
@immutable
final class EcsTaskDefinitionVolumeEfsVolumeConfigurationAuthorizationConfig {
  const EcsTaskDefinitionVolumeEfsVolumeConfigurationAuthorizationConfig({
    this.accessPointId,
    this.iam,
  });

  final TfArg<String>? accessPointId;

  final TfArg<
    EcsTaskDefinitionVolumeEfsVolumeConfigurationAuthorizationConfigIam
  >?
  iam;

  Map<String, Object?> encode() => {
    'access_point_id': ?accessPointId?.toTfJson(),
    'iam': ?iam?.toTfJson(),
  };
}

/// `iam` — derived from the provider schema description.
enum EcsTaskDefinitionVolumeEfsVolumeConfigurationAuthorizationConfigIam
    implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const EcsTaskDefinitionVolumeEfsVolumeConfigurationAuthorizationConfigIam(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `volume.fsx_windows_file_server_volume_configuration` block of
/// `aws_ecs_task_definition` (derived from provider schema).
@immutable
final class EcsTaskDefinitionVolumeFsxWindowsFileServerVolumeConfiguration {
  const EcsTaskDefinitionVolumeFsxWindowsFileServerVolumeConfiguration({
    required this.fileSystemId,
    required this.rootDirectory,
    required this.authorizationConfig,
  });

  final TfArg<String> fileSystemId;

  final TfArg<String> rootDirectory;

  final EcsTaskDefinitionVolumeFsxWindowsFileServerVolumeConfigurationAuthorizationConfig
  authorizationConfig;

  Map<String, Object?> encode() => {
    'file_system_id': fileSystemId.toTfJson(),
    'root_directory': rootDirectory.toTfJson(),
    'authorization_config': authorizationConfig.encode(),
  };
}

/// Typed helper for the `volume.fsx_windows_file_server_volume_configuration.authorization_config` block of
/// `aws_ecs_task_definition` (derived from provider schema).
@immutable
final class EcsTaskDefinitionVolumeFsxWindowsFileServerVolumeConfigurationAuthorizationConfig {
  const EcsTaskDefinitionVolumeFsxWindowsFileServerVolumeConfigurationAuthorizationConfig({
    required this.credentialsParameter,
    required this.domain,
  });

  final TfArg<String> credentialsParameter;

  final TfArg<String> domain;

  Map<String, Object?> encode() => {
    'credentials_parameter': credentialsParameter.toTfJson(),
    'domain': domain.toTfJson(),
  };
}

/// Typed helper for the `volume.s3files_volume_configuration` block of
/// `aws_ecs_task_definition` (derived from provider schema).
@immutable
final class EcsTaskDefinitionVolumeS3filesVolumeConfiguration {
  const EcsTaskDefinitionVolumeS3filesVolumeConfiguration({
    this.accessPointArn,
    required this.fileSystemArn,
    this.rootDirectory,
    this.transitEncryptionPort,
  });

  final TfArg<String>? accessPointArn;

  final TfArg<String> fileSystemArn;

  final TfArg<String>? rootDirectory;

  final TfArg<num>? transitEncryptionPort;

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

  AwsEcsTaskDefinition({
    required super.localName,
    required TfArg<String> containerDefinitions,
    TfArg<String>? cpu,
    TfArg<bool>? enableFaultInjection,
    RefTo<AwsIamRole>? executionRoleArn,
    required TfArg<String> family,
    TfArg<EcsTaskDefinitionIpcMode>? ipcMode,
    TfArg<String>? memory,
    TfArg<EcsTaskDefinitionNetworkMode>? networkMode,
    TfArg<EcsTaskDefinitionPidMode>? pidMode,
    TfArg<String>? region,
    List<TfArg<EcsTaskDefinitionRequiresCompatibilities>>?
    requiresCompatibilities,
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
}
