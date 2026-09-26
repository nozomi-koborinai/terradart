// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_scheduler_schedule`.
const Set<String> _awsSchedulerScheduleSensitive = <String>{};

/// Typed helper for the `flexible_time_window` block of
/// `aws_scheduler_schedule` (derived from provider schema).
@immutable
final class SchedulerScheduleFlexibleTimeWindow {
  const SchedulerScheduleFlexibleTimeWindow({
    this.maximumWindowInMinutes,
    required this.mode,
  });

  final TfArg<num>? maximumWindowInMinutes;

  final TfArg<String> mode;

  Map<String, Object?> encode() => {
    if (maximumWindowInMinutes != null)
      'maximum_window_in_minutes': maximumWindowInMinutes!.toTfJson(),
    'mode': mode.toTfJson(),
  };
}

/// Typed helper for the `target` block of
/// `aws_scheduler_schedule` (derived from provider schema).
@immutable
final class SchedulerScheduleTarget {
  const SchedulerScheduleTarget({
    required this.arn,
    this.input,
    required this.roleArn,
    this.deadLetterConfig,
    this.ecsParameters,
    this.eventbridgeParameters,
    this.kinesisParameters,
    this.retryPolicy,
    this.sagemakerPipelineParameters,
    this.sqsParameters,
  });

  final TfArg<String> arn;

  final TfArg<String>? input;

  final TfArg<String> roleArn;

  final SchedulerScheduleTargetDeadLetterConfig? deadLetterConfig;

  final SchedulerScheduleTargetEcsParameters? ecsParameters;

  final SchedulerScheduleTargetEventbridgeParameters? eventbridgeParameters;

  final SchedulerScheduleTargetKinesisParameters? kinesisParameters;

  final SchedulerScheduleTargetRetryPolicy? retryPolicy;

  final SchedulerScheduleTargetSagemakerPipelineParameters?
  sagemakerPipelineParameters;

  final SchedulerScheduleTargetSqsParameters? sqsParameters;

  Map<String, Object?> encode() => {
    'arn': arn.toTfJson(),
    if (input != null) 'input': input!.toTfJson(),
    'role_arn': roleArn.toTfJson(),
    if (deadLetterConfig != null)
      'dead_letter_config': deadLetterConfig!.encode(),
    if (ecsParameters != null) 'ecs_parameters': ecsParameters!.encode(),
    if (eventbridgeParameters != null)
      'eventbridge_parameters': eventbridgeParameters!.encode(),
    if (kinesisParameters != null)
      'kinesis_parameters': kinesisParameters!.encode(),
    if (retryPolicy != null) 'retry_policy': retryPolicy!.encode(),
    if (sagemakerPipelineParameters != null)
      'sagemaker_pipeline_parameters': sagemakerPipelineParameters!.encode(),
    if (sqsParameters != null) 'sqs_parameters': sqsParameters!.encode(),
  };
}

/// Typed helper for the `target.dead_letter_config` block of
/// `aws_scheduler_schedule` (derived from provider schema).
@immutable
final class SchedulerScheduleTargetDeadLetterConfig {
  const SchedulerScheduleTargetDeadLetterConfig({required this.arn});

  final TfArg<String> arn;

  Map<String, Object?> encode() => {'arn': arn.toTfJson()};
}

/// Typed helper for the `target.ecs_parameters` block of
/// `aws_scheduler_schedule` (derived from provider schema).
@immutable
final class SchedulerScheduleTargetEcsParameters {
  const SchedulerScheduleTargetEcsParameters({
    this.enableEcsManagedTags,
    this.enableExecuteCommand,
    this.group,
    this.launchType,
    this.platformVersion,
    this.propagateTags,
    this.referenceId,
    this.tags,
    this.taskCount,
    required this.taskDefinitionArn,
    this.capacityProviderStrategy,
    this.networkConfiguration,
    this.placementConstraints,
    this.placementStrategy,
  });

  final TfArg<bool>? enableEcsManagedTags;

  final TfArg<bool>? enableExecuteCommand;

  final TfArg<String>? group;

  final TfArg<String>? launchType;

  final TfArg<String>? platformVersion;

  final TfArg<String>? propagateTags;

  final TfArg<String>? referenceId;

  final TfArg<Map<String, String>>? tags;

  final TfArg<num>? taskCount;

  final TfArg<String> taskDefinitionArn;

  final List<SchedulerScheduleTargetEcsParametersCapacityProviderStrategy>?
  capacityProviderStrategy;

  final SchedulerScheduleTargetEcsParametersNetworkConfiguration?
  networkConfiguration;

  final List<SchedulerScheduleTargetEcsParametersPlacementConstraints>?
  placementConstraints;

  final List<SchedulerScheduleTargetEcsParametersPlacementStrategy>?
  placementStrategy;

  Map<String, Object?> encode() => {
    if (enableEcsManagedTags != null)
      'enable_ecs_managed_tags': enableEcsManagedTags!.toTfJson(),
    if (enableExecuteCommand != null)
      'enable_execute_command': enableExecuteCommand!.toTfJson(),
    if (group != null) 'group': group!.toTfJson(),
    if (launchType != null) 'launch_type': launchType!.toTfJson(),
    if (platformVersion != null)
      'platform_version': platformVersion!.toTfJson(),
    if (propagateTags != null) 'propagate_tags': propagateTags!.toTfJson(),
    if (referenceId != null) 'reference_id': referenceId!.toTfJson(),
    if (tags != null) 'tags': tags!.toTfJson(),
    if (taskCount != null) 'task_count': taskCount!.toTfJson(),
    'task_definition_arn': taskDefinitionArn.toTfJson(),
    if (capacityProviderStrategy != null)
      'capacity_provider_strategy': [
        for (final e in capacityProviderStrategy!) e.encode(),
      ],
    if (networkConfiguration != null)
      'network_configuration': networkConfiguration!.encode(),
    if (placementConstraints != null)
      'placement_constraints': [
        for (final e in placementConstraints!) e.encode(),
      ],
    if (placementStrategy != null)
      'placement_strategy': [for (final e in placementStrategy!) e.encode()],
  };
}

/// Typed helper for the `target.ecs_parameters.capacity_provider_strategy` block of
/// `aws_scheduler_schedule` (derived from provider schema).
@immutable
final class SchedulerScheduleTargetEcsParametersCapacityProviderStrategy {
  const SchedulerScheduleTargetEcsParametersCapacityProviderStrategy({
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

/// Typed helper for the `target.ecs_parameters.network_configuration` block of
/// `aws_scheduler_schedule` (derived from provider schema).
@immutable
final class SchedulerScheduleTargetEcsParametersNetworkConfiguration {
  const SchedulerScheduleTargetEcsParametersNetworkConfiguration({
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

/// Typed helper for the `target.ecs_parameters.placement_constraints` block of
/// `aws_scheduler_schedule` (derived from provider schema).
@immutable
final class SchedulerScheduleTargetEcsParametersPlacementConstraints {
  const SchedulerScheduleTargetEcsParametersPlacementConstraints({
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

/// Typed helper for the `target.ecs_parameters.placement_strategy` block of
/// `aws_scheduler_schedule` (derived from provider schema).
@immutable
final class SchedulerScheduleTargetEcsParametersPlacementStrategy {
  const SchedulerScheduleTargetEcsParametersPlacementStrategy({
    this.field,
    required this.type,
  });

  final TfArg<String>? field;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (field != null) 'field': field!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `target.eventbridge_parameters` block of
/// `aws_scheduler_schedule` (derived from provider schema).
@immutable
final class SchedulerScheduleTargetEventbridgeParameters {
  const SchedulerScheduleTargetEventbridgeParameters({
    required this.detailType,
    required this.source,
  });

  final TfArg<String> detailType;

  final TfArg<String> source;

  Map<String, Object?> encode() => {
    'detail_type': detailType.toTfJson(),
    'source': source.toTfJson(),
  };
}

/// Typed helper for the `target.kinesis_parameters` block of
/// `aws_scheduler_schedule` (derived from provider schema).
@immutable
final class SchedulerScheduleTargetKinesisParameters {
  const SchedulerScheduleTargetKinesisParameters({required this.partitionKey});

  final TfArg<String> partitionKey;

  Map<String, Object?> encode() => {'partition_key': partitionKey.toTfJson()};
}

/// Typed helper for the `target.retry_policy` block of
/// `aws_scheduler_schedule` (derived from provider schema).
@immutable
final class SchedulerScheduleTargetRetryPolicy {
  const SchedulerScheduleTargetRetryPolicy({
    this.maximumEventAgeInSeconds,
    this.maximumRetryAttempts,
  });

  final TfArg<num>? maximumEventAgeInSeconds;

  final TfArg<num>? maximumRetryAttempts;

  Map<String, Object?> encode() => {
    if (maximumEventAgeInSeconds != null)
      'maximum_event_age_in_seconds': maximumEventAgeInSeconds!.toTfJson(),
    if (maximumRetryAttempts != null)
      'maximum_retry_attempts': maximumRetryAttempts!.toTfJson(),
  };
}

/// Typed helper for the `target.sagemaker_pipeline_parameters` block of
/// `aws_scheduler_schedule` (derived from provider schema).
@immutable
final class SchedulerScheduleTargetSagemakerPipelineParameters {
  const SchedulerScheduleTargetSagemakerPipelineParameters({
    this.pipelineParameter,
  });

  final List<
    SchedulerScheduleTargetSagemakerPipelineParametersPipelineParameter
  >?
  pipelineParameter;

  Map<String, Object?> encode() => {
    if (pipelineParameter != null)
      'pipeline_parameter': [for (final e in pipelineParameter!) e.encode()],
  };
}

/// Typed helper for the `target.sagemaker_pipeline_parameters.pipeline_parameter` block of
/// `aws_scheduler_schedule` (derived from provider schema).
@immutable
final class SchedulerScheduleTargetSagemakerPipelineParametersPipelineParameter {
  const SchedulerScheduleTargetSagemakerPipelineParametersPipelineParameter({
    required this.name,
    required this.value,
  });

  final TfArg<String> name;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `target.sqs_parameters` block of
/// `aws_scheduler_schedule` (derived from provider schema).
@immutable
final class SchedulerScheduleTargetSqsParameters {
  const SchedulerScheduleTargetSqsParameters({this.messageGroupId});

  final TfArg<String>? messageGroupId;

  Map<String, Object?> encode() => {
    if (messageGroupId != null) 'message_group_id': messageGroupId!.toTfJson(),
  };
}

/// Factory wrapper for `aws_scheduler_schedule`.
final class AwsSchedulerSchedule extends Resource {
  static const String tfType = 'aws_scheduler_schedule';

  AwsSchedulerSchedule({
    required super.localName,
    TfArg<String>? actionAfterCompletion,
    TfArg<String>? description,
    TfArg<String>? endDate,
    TfArg<String>? groupName,
    TfArg<String>? kmsKeyArn,
    TfArg<String>? name,
    TfArg<String>? namePrefix,
    TfArg<String>? region,
    required TfArg<String> scheduleExpression,
    TfArg<String>? scheduleExpressionTimezone,
    TfArg<String>? startDate,
    TfArg<String>? state,
    required SchedulerScheduleFlexibleTimeWindow flexibleTimeWindow,
    required SchedulerScheduleTarget target,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (actionAfterCompletion != null)
             'action_after_completion': actionAfterCompletion,
           if (description != null) 'description': description,
           if (endDate != null) 'end_date': endDate,
           if (groupName != null) 'group_name': groupName,
           if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn,
           if (name != null) 'name': name,
           if (namePrefix != null) 'name_prefix': namePrefix,
           if (region != null) 'region': region,
           'schedule_expression': scheduleExpression,
           if (scheduleExpressionTimezone != null)
             'schedule_expression_timezone': scheduleExpressionTimezone,
           if (startDate != null) 'start_date': startDate,
           if (state != null) 'state': state,
           'flexible_time_window': TfArg.literal(flexibleTimeWindow.encode()),
           'target': TfArg.literal(target.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSchedulerScheduleSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
