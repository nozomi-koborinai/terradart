// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_scheduler_schedule`.
const Set<String> _awsSchedulerScheduleSensitive = <String>{};

/// Scheduler Schedule Action After enum for `action_after_completion`.
enum SchedulerScheduleActionAfterCompletion implements TerraformEnum {
  none('NONE'),
  delete('DELETE');

  const SchedulerScheduleActionAfterCompletion(this.terraformValue);
  @override
  final String terraformValue;
}

/// Scheduler Schedule enum for `state`.
enum SchedulerScheduleState implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const SchedulerScheduleState(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `name`, `name_prefix` on `aws_scheduler_schedule`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.name(...)`.
sealed class SchedulerScheduleName {
  const SchedulerScheduleName();

  /// Sets `name`.
  const factory SchedulerScheduleName.name(TfArg<String> name) =
      SchedulerScheduleNameName;

  /// Sets `name_prefix`.
  const factory SchedulerScheduleName.namePrefix(TfArg<String> namePrefix) =
      SchedulerScheduleNameNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [SchedulerScheduleName.name] choice: sets `name`.
final class SchedulerScheduleNameName extends SchedulerScheduleName {
  const SchedulerScheduleNameName(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [SchedulerScheduleName.namePrefix] choice: sets `name_prefix`.
final class SchedulerScheduleNameNamePrefix extends SchedulerScheduleName {
  const SchedulerScheduleNameNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @override
  String get blockKey => 'name_prefix';

  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

/// Typed helper for the `flexible_time_window` block of
/// `aws_scheduler_schedule` (derived from provider schema).
@immutable
final class SchedulerScheduleFlexibleTimeWindow {
  const SchedulerScheduleFlexibleTimeWindow({
    this.maximumWindowInMinutes,
    required this.mode,
  });

  final TfArg<num>? maximumWindowInMinutes;

  final TfArg<SchedulerScheduleFlexibleTimeWindowMode> mode;

  Map<String, Object?> encode() => {
    'maximum_window_in_minutes': ?maximumWindowInMinutes?.toTfJson(),
    'mode': mode.toTfJson(),
  };
}

/// `mode` — derived from the provider schema description.
enum SchedulerScheduleFlexibleTimeWindowMode implements TerraformEnum {
  off('OFF'),
  flexible('FLEXIBLE');

  const SchedulerScheduleFlexibleTimeWindowMode(this.terraformValue);
  @override
  final String terraformValue;
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

  final RefTo<AwsIamRole> roleArn;

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
    'input': ?input?.toTfJson(),
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
    'dead_letter_config': ?deadLetterConfig?.encode(),
    'ecs_parameters': ?ecsParameters?.encode(),
    'eventbridge_parameters': ?eventbridgeParameters?.encode(),
    'kinesis_parameters': ?kinesisParameters?.encode(),
    'retry_policy': ?retryPolicy?.encode(),
    'sagemaker_pipeline_parameters': ?sagemakerPipelineParameters?.encode(),
    'sqs_parameters': ?sqsParameters?.encode(),
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

  final TfArg<SchedulerScheduleTargetEcsParametersLaunchType>? launchType;

  final TfArg<String>? platformVersion;

  final TfArg<SchedulerScheduleTargetEcsParametersPropagateTags>? propagateTags;

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
    'enable_ecs_managed_tags': ?enableEcsManagedTags?.toTfJson(),
    'enable_execute_command': ?enableExecuteCommand?.toTfJson(),
    'group': ?group?.toTfJson(),
    'launch_type': ?launchType?.toTfJson(),
    'platform_version': ?platformVersion?.toTfJson(),
    'propagate_tags': ?propagateTags?.toTfJson(),
    'reference_id': ?referenceId?.toTfJson(),
    'tags': ?tags?.toTfJson(),
    'task_count': ?taskCount?.toTfJson(),
    'task_definition_arn': taskDefinitionArn.toTfJson(),
    if (capacityProviderStrategy != null)
      'capacity_provider_strategy': [
        for (final e in capacityProviderStrategy!) e.encode(),
      ],
    'network_configuration': ?networkConfiguration?.encode(),
    if (placementConstraints != null)
      'placement_constraints': [
        for (final e in placementConstraints!) e.encode(),
      ],
    if (placementStrategy != null)
      'placement_strategy': [for (final e in placementStrategy!) e.encode()],
  };
}

/// `launch_type` — derived from the provider schema description.
enum SchedulerScheduleTargetEcsParametersLaunchType implements TerraformEnum {
  ec2('EC2'),
  fargate('FARGATE'),
  external('EXTERNAL');

  const SchedulerScheduleTargetEcsParametersLaunchType(this.terraformValue);
  @override
  final String terraformValue;
}

/// `propagate_tags` — derived from the provider schema description.
enum SchedulerScheduleTargetEcsParametersPropagateTags
    implements TerraformEnum {
  taskDefinition('TASK_DEFINITION');

  const SchedulerScheduleTargetEcsParametersPropagateTags(this.terraformValue);
  @override
  final String terraformValue;
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
    'base': ?base?.toTfJson(),
    'capacity_provider': capacityProvider.toTfJson(),
    'weight': ?weight?.toTfJson(),
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

  final TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroups;

  final TfArg<List<RefTo<AwsSubnet>>> subnets;

  Map<String, Object?> encode() => {
    'assign_public_ip': ?assignPublicIp?.toTfJson(),
    'security_groups': ?securityGroups?.encodeAs('id').toTfJson(),
    'subnets': subnets.encodeAs('id').toTfJson(),
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

  final TfArg<SchedulerScheduleTargetEcsParametersPlacementConstraintsType>
  type;

  Map<String, Object?> encode() => {
    'expression': ?expression?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum SchedulerScheduleTargetEcsParametersPlacementConstraintsType
    implements TerraformEnum {
  distinctinstance('distinctInstance'),
  memberof('memberOf');

  const SchedulerScheduleTargetEcsParametersPlacementConstraintsType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final TfArg<SchedulerScheduleTargetEcsParametersPlacementStrategyType> type;

  Map<String, Object?> encode() => {
    'field': ?field?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum SchedulerScheduleTargetEcsParametersPlacementStrategyType
    implements TerraformEnum {
  random('random'),
  spread('spread'),
  binpack('binpack');

  const SchedulerScheduleTargetEcsParametersPlacementStrategyType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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
    'maximum_event_age_in_seconds': ?maximumEventAgeInSeconds?.toTfJson(),
    'maximum_retry_attempts': ?maximumRetryAttempts?.toTfJson(),
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
    'message_group_id': ?messageGroupId?.toTfJson(),
  };
}

/// Factory wrapper for `aws_scheduler_schedule`.
final class AwsSchedulerSchedule extends Resource {
  static const String tfType = 'aws_scheduler_schedule';

  AwsSchedulerSchedule({
    required super.localName,
    TfArg<SchedulerScheduleActionAfterCompletion>? actionAfterCompletion,
    TfArg<String>? description,
    TfArg<String>? endDate,
    TfArg<String>? groupName,
    RefTo<AwsKmsKey>? kmsKeyArn,
    SchedulerScheduleName? name,
    TfArg<String>? region,
    required TfArg<String> scheduleExpression,
    TfArg<String>? scheduleExpressionTimezone,
    TfArg<String>? startDate,
    TfArg<SchedulerScheduleState>? state,
    required SchedulerScheduleFlexibleTimeWindow flexibleTimeWindow,
    required SchedulerScheduleTarget target,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'action_after_completion': ?actionAfterCompletion,
           'description': ?description,
           'end_date': ?endDate,
           'group_name': ?groupName,
           'kms_key_arn': ?kmsKeyArn?.encodeAs('arn'),
           ...?name?.argMap,
           'region': ?region,
           'schedule_expression': scheduleExpression,
           'schedule_expression_timezone': ?scheduleExpressionTimezone,
           'start_date': ?startDate,
           'state': ?state,
           'flexible_time_window': TfArg.literal(flexibleTimeWindow.encode()),
           'target': TfArg.literal(target.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSchedulerScheduleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSchedulerSchedule>`.
  RefTo<AwsSchedulerSchedule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
