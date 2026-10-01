// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../ecs/aws_ecs_cluster.dart' show AwsEcsCluster;
import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_ecs_task_execution`.
const Set<String> _awsEcsTaskExecutionSensitive = <String>{};

/// Typed helper for the `capacity_provider_strategy` block of
/// `aws_ecs_task_execution` (derived from provider schema).
@immutable
final class DataEcsTaskExecutionCapacityProviderStrategy {
  const DataEcsTaskExecutionCapacityProviderStrategy({
    this.base,
    required this.capacityProvider,
    this.weight,
  });

  final TfArg<num>? base;

  final TfArg<String> capacityProvider;

  final TfArg<num>? weight;

  Map<String, Object?> encode() => {
    'base': ?base?.toTfJson(),
    'capacity_provider': capacityProvider.toTfJson(),
    'weight': ?weight?.toTfJson(),
  };
}

/// Typed helper for the `network_configuration` block of
/// `aws_ecs_task_execution` (derived from provider schema).
@immutable
final class DataEcsTaskExecutionNetworkConfiguration {
  const DataEcsTaskExecutionNetworkConfiguration({
    this.assignPublicIp,
    this.securityGroups,
    required this.subnets,
  });

  final TfArg<bool>? assignPublicIp;

  final TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroups;

  final TfArg<List<RefTo<AwsSubnet>>> subnets;

  Map<String, Object?> encode() => {
    'assign_public_ip': ?assignPublicIp?.toTfJson(),
    'security_groups': ?securityGroups?.encodeAs('id').toTfJson(),
    'subnets': subnets.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `overrides` block of
/// `aws_ecs_task_execution` (derived from provider schema).
@immutable
final class DataEcsTaskExecutionOverrides {
  const DataEcsTaskExecutionOverrides({
    this.cpu,
    this.executionRoleArn,
    this.memory,
    this.taskRoleArn,
    this.containerOverrides,
  });

  final TfArg<String>? cpu;

  final RefTo<AwsIamRole>? executionRoleArn;

  final TfArg<String>? memory;

  final RefTo<AwsIamRole>? taskRoleArn;

  final List<DataEcsTaskExecutionContainerOverrides>? containerOverrides;

  Map<String, Object?> encode() => {
    'cpu': ?cpu?.toTfJson(),
    'execution_role_arn': ?executionRoleArn?.encodeAs('arn').toTfJson(),
    'memory': ?memory?.toTfJson(),
    'task_role_arn': ?taskRoleArn?.encodeAs('arn').toTfJson(),
    if (containerOverrides != null)
      'container_overrides': [for (final e in containerOverrides!) e.encode()],
  };
}

/// Typed helper for the `overrides.container_overrides` block of
/// `aws_ecs_task_execution` (derived from provider schema).
@immutable
final class DataEcsTaskExecutionContainerOverrides {
  const DataEcsTaskExecutionContainerOverrides({
    this.command,
    this.cpu,
    this.memory,
    this.memoryReservation,
    required this.name,
    this.environment,
    this.resourceRequirements,
  });

  final TfArg<List<String>>? command;

  final TfArg<num>? cpu;

  final TfArg<num>? memory;

  final TfArg<num>? memoryReservation;

  final TfArg<String> name;

  final List<DataEcsTaskExecutionEnvironment>? environment;

  final List<DataEcsTaskExecutionResourceRequirements>? resourceRequirements;

  Map<String, Object?> encode() => {
    'command': ?command?.toTfJson(),
    'cpu': ?cpu?.toTfJson(),
    'memory': ?memory?.toTfJson(),
    'memory_reservation': ?memoryReservation?.toTfJson(),
    'name': name.toTfJson(),
    if (environment != null)
      'environment': [for (final e in environment!) e.encode()],
    if (resourceRequirements != null)
      'resource_requirements': [
        for (final e in resourceRequirements!) e.encode(),
      ],
  };
}

/// Typed helper for the `overrides.container_overrides.environment` block of
/// `aws_ecs_task_execution` (derived from provider schema).
@immutable
final class DataEcsTaskExecutionEnvironment {
  const DataEcsTaskExecutionEnvironment({
    required this.key,
    required this.value,
  });

  final TfArg<String> key;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `overrides.container_overrides.resource_requirements` block of
/// `aws_ecs_task_execution` (derived from provider schema).
@immutable
final class DataEcsTaskExecutionResourceRequirements {
  const DataEcsTaskExecutionResourceRequirements({
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

/// Typed helper for the `placement_constraints` block of
/// `aws_ecs_task_execution` (derived from provider schema).
@immutable
final class DataEcsTaskExecutionPlacementConstraints {
  const DataEcsTaskExecutionPlacementConstraints({
    this.expression,
    required this.type,
  });

  final TfArg<String>? expression;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    'expression': ?expression?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `placement_strategy` block of
/// `aws_ecs_task_execution` (derived from provider schema).
@immutable
final class DataEcsTaskExecutionPlacementStrategy {
  const DataEcsTaskExecutionPlacementStrategy({this.field, required this.type});

  final TfArg<String>? field;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    'field': ?field?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `aws_ecs_task_execution`.
final class DataAwsEcsTaskExecution extends Data {
  static const String tfType = 'aws_ecs_task_execution';

  DataAwsEcsTaskExecution({
    required super.localName,
    TfArg<String>? clientToken,
    required RefTo<AwsEcsCluster> cluster,
    TfArg<num>? desiredCount,
    TfArg<bool>? enableEcsManagedTags,
    TfArg<bool>? enableExecuteCommand,
    TfArg<String>? group,
    TfArg<String>? launchType,
    TfArg<String>? platformVersion,
    TfArg<String>? propagateTags,
    TfArg<String>? referenceId,
    TfArg<String>? region,
    TfArg<String>? startedBy,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> taskDefinition,
    List<DataEcsTaskExecutionCapacityProviderStrategy>?
    capacityProviderStrategy,
    DataEcsTaskExecutionNetworkConfiguration? networkConfiguration,
    DataEcsTaskExecutionOverrides? overrides,
    List<DataEcsTaskExecutionPlacementConstraints>? placementConstraints,
    List<DataEcsTaskExecutionPlacementStrategy>? placementStrategy,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'client_token': ?clientToken,
           'cluster': cluster.encodeAs('arn'),
           'desired_count': ?desiredCount,
           'enable_ecs_managed_tags': ?enableEcsManagedTags,
           'enable_execute_command': ?enableExecuteCommand,
           'group': ?group,
           'launch_type': ?launchType,
           'platform_version': ?platformVersion,
           'propagate_tags': ?propagateTags,
           'reference_id': ?referenceId,
           'region': ?region,
           'started_by': ?startedBy,
           'tags': ?tags,
           'task_definition': taskDefinition,
           if (capacityProviderStrategy != null)
             'capacity_provider_strategy': TfArg.literal([
               for (final e in capacityProviderStrategy) e.encode(),
             ]),
           if (networkConfiguration != null)
             'network_configuration': TfArg.literal(
               networkConfiguration.encode(),
             ),
           if (overrides != null)
             'overrides': TfArg.literal(overrides.encode()),
           if (placementConstraints != null)
             'placement_constraints': TfArg.literal([
               for (final e in placementConstraints) e.encode(),
             ]),
           if (placementStrategy != null)
             'placement_strategy': TfArg.literal([
               for (final e in placementStrategy) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEcsTaskExecutionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `task_arns` attribute.
  TfRef<List<String>> get taskArns =>
      TfRef.attribute<List<String>>(this, 'task_arns');

  /// Reference to `client_token` attribute.
  TfRef<String> get clientTokenRef =>
      TfRef.attribute<String>(this, 'client_token');

  /// Reference to `cluster` attribute.
  TfRef<String> get clusterRef => TfRef.attribute<String>(this, 'cluster');

  /// Reference to `desired_count` attribute.
  TfRef<num> get desiredCountRef => TfRef.attribute<num>(this, 'desired_count');

  /// Reference to `enable_ecs_managed_tags` attribute.
  TfRef<bool> get enableEcsManagedTagsRef =>
      TfRef.attribute<bool>(this, 'enable_ecs_managed_tags');

  /// Reference to `enable_execute_command` attribute.
  TfRef<bool> get enableExecuteCommandRef =>
      TfRef.attribute<bool>(this, 'enable_execute_command');

  /// Reference to `group` attribute.
  TfRef<String> get groupRef => TfRef.attribute<String>(this, 'group');

  /// Reference to `launch_type` attribute.
  TfRef<String> get launchTypeRef =>
      TfRef.attribute<String>(this, 'launch_type');

  /// Reference to `platform_version` attribute.
  TfRef<String> get platformVersionRef =>
      TfRef.attribute<String>(this, 'platform_version');

  /// Reference to `propagate_tags` attribute.
  TfRef<String> get propagateTagsRef =>
      TfRef.attribute<String>(this, 'propagate_tags');

  /// Reference to `reference_id` attribute.
  TfRef<String> get referenceIdRef =>
      TfRef.attribute<String>(this, 'reference_id');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `started_by` attribute.
  TfRef<String> get startedByRef => TfRef.attribute<String>(this, 'started_by');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `task_definition` attribute.
  TfRef<String> get taskDefinitionRef =>
      TfRef.attribute<String>(this, 'task_definition');
}
