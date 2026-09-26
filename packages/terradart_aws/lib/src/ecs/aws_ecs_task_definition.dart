// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ecs_task_definition`.
const Set<String> _awsEcsTaskDefinitionSensitive = <String>{};

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

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (expression != null) 'expression': expression!.toTfJson(),
    'type': type.toTfJson(),
  };
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

  final TfArg<String>? type;

  Map<String, Object?> encode() => {
    'container_name': containerName.toTfJson(),
    if (properties != null) 'properties': properties!.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
  };
}

/// Typed helper for the `runtime_platform` block of
/// `aws_ecs_task_definition` (derived from provider schema).
@immutable
final class EcsTaskDefinitionRuntimePlatform {
  const EcsTaskDefinitionRuntimePlatform({
    this.cpuArchitecture,
    this.operatingSystemFamily,
  });

  final TfArg<String>? cpuArchitecture;

  final TfArg<String>? operatingSystemFamily;

  Map<String, Object?> encode() => {
    if (cpuArchitecture != null)
      'cpu_architecture': cpuArchitecture!.toTfJson(),
    if (operatingSystemFamily != null)
      'operating_system_family': operatingSystemFamily!.toTfJson(),
  };
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
    if (configureAtLaunch != null)
      'configure_at_launch': configureAtLaunch!.toTfJson(),
    if (hostPath != null) 'host_path': hostPath!.toTfJson(),
    'name': name.toTfJson(),
    if (dockerVolumeConfiguration != null)
      'docker_volume_configuration': dockerVolumeConfiguration!.encode(),
    if (efsVolumeConfiguration != null)
      'efs_volume_configuration': efsVolumeConfiguration!.encode(),
    if (fsxWindowsFileServerVolumeConfiguration != null)
      'fsx_windows_file_server_volume_configuration':
          fsxWindowsFileServerVolumeConfiguration!.encode(),
    if (s3filesVolumeConfiguration != null)
      's3files_volume_configuration': s3filesVolumeConfiguration!.encode(),
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

  final TfArg<String>? scope;

  Map<String, Object?> encode() => {
    if (autoprovision != null) 'autoprovision': autoprovision!.toTfJson(),
    if (driver != null) 'driver': driver!.toTfJson(),
    if (driverOpts != null) 'driver_opts': driverOpts!.toTfJson(),
    if (labels != null) 'labels': labels!.toTfJson(),
    if (scope != null) 'scope': scope!.toTfJson(),
  };
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

  final TfArg<String>? transitEncryption;

  final TfArg<num>? transitEncryptionPort;

  final EcsTaskDefinitionVolumeEfsVolumeConfigurationAuthorizationConfig?
  authorizationConfig;

  Map<String, Object?> encode() => {
    'file_system_id': fileSystemId.toTfJson(),
    if (rootDirectory != null) 'root_directory': rootDirectory!.toTfJson(),
    if (transitEncryption != null)
      'transit_encryption': transitEncryption!.toTfJson(),
    if (transitEncryptionPort != null)
      'transit_encryption_port': transitEncryptionPort!.toTfJson(),
    if (authorizationConfig != null)
      'authorization_config': authorizationConfig!.encode(),
  };
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

  final TfArg<String>? iam;

  Map<String, Object?> encode() => {
    if (accessPointId != null) 'access_point_id': accessPointId!.toTfJson(),
    if (iam != null) 'iam': iam!.toTfJson(),
  };
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
    if (accessPointArn != null) 'access_point_arn': accessPointArn!.toTfJson(),
    'file_system_arn': fileSystemArn.toTfJson(),
    if (rootDirectory != null) 'root_directory': rootDirectory!.toTfJson(),
    if (transitEncryptionPort != null)
      'transit_encryption_port': transitEncryptionPort!.toTfJson(),
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
    TfArg<String>? executionRoleArn,
    required TfArg<String> family,
    TfArg<String>? ipcMode,
    TfArg<String>? memory,
    TfArg<String>? networkMode,
    TfArg<String>? pidMode,
    TfArg<String>? region,
    TfArg<List<String>>? requiresCompatibilities,
    TfArg<bool>? skipDestroy,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? taskRoleArn,
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
           if (cpu != null) 'cpu': cpu,
           if (enableFaultInjection != null)
             'enable_fault_injection': enableFaultInjection,
           if (executionRoleArn != null) 'execution_role_arn': executionRoleArn,
           'family': family,
           if (ipcMode != null) 'ipc_mode': ipcMode,
           if (memory != null) 'memory': memory,
           if (networkMode != null) 'network_mode': networkMode,
           if (pidMode != null) 'pid_mode': pidMode,
           if (region != null) 'region': region,
           if (requiresCompatibilities != null)
             'requires_compatibilities': requiresCompatibilities,
           if (skipDestroy != null) 'skip_destroy': skipDestroy,
           if (tags != null) 'tags': tags,
           if (taskRoleArn != null) 'task_role_arn': taskRoleArn,
           if (trackLatest != null) 'track_latest': trackLatest,
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
