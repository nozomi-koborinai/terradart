// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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
    if (base != null) 'base': base!.toTfJson(),
    'capacity_provider': capacityProvider.toTfJson(),
    if (weight != null) 'weight': weight!.toTfJson(),
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

  final TfArg<List<Object?>>? securityGroups;

  final TfArg<List<Object?>> subnets;

  Map<String, Object?> encode() => {
    if (assignPublicIp != null) 'assign_public_ip': assignPublicIp!.toTfJson(),
    if (securityGroups != null) 'security_groups': securityGroups!.toTfJson(),
    'subnets': subnets.toTfJson(),
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

  final TfArg<String>? executionRoleArn;

  final TfArg<String>? memory;

  final TfArg<String>? taskRoleArn;

  final List<DataEcsTaskExecutionOverridesContainerOverrides>?
  containerOverrides;

  Map<String, Object?> encode() => {
    if (cpu != null) 'cpu': cpu!.toTfJson(),
    if (executionRoleArn != null)
      'execution_role_arn': executionRoleArn!.toTfJson(),
    if (memory != null) 'memory': memory!.toTfJson(),
    if (taskRoleArn != null) 'task_role_arn': taskRoleArn!.toTfJson(),
    if (containerOverrides != null)
      'container_overrides': [for (final e in containerOverrides!) e.encode()],
  };
}

/// Typed helper for the `overrides.container_overrides` block of
/// `aws_ecs_task_execution` (derived from provider schema).
@immutable
final class DataEcsTaskExecutionOverridesContainerOverrides {
  const DataEcsTaskExecutionOverridesContainerOverrides({
    this.command,
    this.cpu,
    this.memory,
    this.memoryReservation,
    required this.name,
    this.environment,
    this.resourceRequirements,
  });

  final TfArg<List<Object?>>? command;

  final TfArg<num>? cpu;

  final TfArg<num>? memory;

  final TfArg<num>? memoryReservation;

  final TfArg<String> name;

  final List<DataEcsTaskExecutionOverridesContainerOverridesEnvironment>?
  environment;

  final List<
    DataEcsTaskExecutionOverridesContainerOverridesResourceRequirements
  >?
  resourceRequirements;

  Map<String, Object?> encode() => {
    if (command != null) 'command': command!.toTfJson(),
    if (cpu != null) 'cpu': cpu!.toTfJson(),
    if (memory != null) 'memory': memory!.toTfJson(),
    if (memoryReservation != null)
      'memory_reservation': memoryReservation!.toTfJson(),
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
final class DataEcsTaskExecutionOverridesContainerOverridesEnvironment {
  const DataEcsTaskExecutionOverridesContainerOverridesEnvironment({
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
final class DataEcsTaskExecutionOverridesContainerOverridesResourceRequirements {
  const DataEcsTaskExecutionOverridesContainerOverridesResourceRequirements({
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
    if (expression != null) 'expression': expression!.toTfJson(),
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
    if (field != null) 'field': field!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `aws_ecs_task_execution`.
final class DataAwsEcsTaskExecution extends Data {
  static const String tfType = 'aws_ecs_task_execution';

  DataAwsEcsTaskExecution({
    required super.localName,
    TfArg<String>? clientToken,
    required TfArg<String> cluster,
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
           if (clientToken != null) 'client_token': clientToken,
           'cluster': cluster,
           if (desiredCount != null) 'desired_count': desiredCount,
           if (enableEcsManagedTags != null)
             'enable_ecs_managed_tags': enableEcsManagedTags,
           if (enableExecuteCommand != null)
             'enable_execute_command': enableExecuteCommand,
           if (group != null) 'group': group,
           if (launchType != null) 'launch_type': launchType,
           if (platformVersion != null) 'platform_version': platformVersion,
           if (propagateTags != null) 'propagate_tags': propagateTags,
           if (referenceId != null) 'reference_id': referenceId,
           if (region != null) 'region': region,
           if (startedBy != null) 'started_by': startedBy,
           if (tags != null) 'tags': tags,
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
}
