// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudwatch_event_target`.
const Set<String> _awsCloudwatchEventTargetSensitive = <String>{};

/// Typed helper for the `appsync_target` block of
/// `aws_cloudwatch_event_target` (derived from provider schema).
@immutable
final class CloudwatchEventTargetAppsyncTarget {
  const CloudwatchEventTargetAppsyncTarget({this.graphqlOperation});

  final TfArg<String>? graphqlOperation;

  Map<String, Object?> encode() => {
    if (graphqlOperation != null)
      'graphql_operation': graphqlOperation!.toTfJson(),
  };
}

/// Typed helper for the `batch_target` block of
/// `aws_cloudwatch_event_target` (derived from provider schema).
@immutable
final class CloudwatchEventTargetBatchTarget {
  const CloudwatchEventTargetBatchTarget({
    this.arraySize,
    this.jobAttempts,
    required this.jobDefinition,
    required this.jobName,
  });

  final TfArg<num>? arraySize;

  final TfArg<num>? jobAttempts;

  final TfArg<String> jobDefinition;

  final TfArg<String> jobName;

  Map<String, Object?> encode() => {
    if (arraySize != null) 'array_size': arraySize!.toTfJson(),
    if (jobAttempts != null) 'job_attempts': jobAttempts!.toTfJson(),
    'job_definition': jobDefinition.toTfJson(),
    'job_name': jobName.toTfJson(),
  };
}

/// Typed helper for the `dead_letter_config` block of
/// `aws_cloudwatch_event_target` (derived from provider schema).
@immutable
final class CloudwatchEventTargetDeadLetterConfig {
  const CloudwatchEventTargetDeadLetterConfig({this.arn});

  final TfArg<String>? arn;

  Map<String, Object?> encode() => {if (arn != null) 'arn': arn!.toTfJson()};
}

/// Typed helper for the `ecs_target` block of
/// `aws_cloudwatch_event_target` (derived from provider schema).
@immutable
final class CloudwatchEventTargetEcsTarget {
  const CloudwatchEventTargetEcsTarget({
    this.enableEcsManagedTags,
    this.enableExecuteCommand,
    this.group,
    this.launchType,
    this.platformVersion,
    this.propagateTags,
    this.tags,
    this.taskCount,
    required this.taskDefinitionArn,
    this.capacityProviderStrategy,
    this.networkConfiguration,
    this.orderedPlacementStrategy,
    this.placementConstraint,
  });

  final TfArg<bool>? enableEcsManagedTags;

  final TfArg<bool>? enableExecuteCommand;

  final TfArg<String>? group;

  final TfArg<String>? launchType;

  final TfArg<String>? platformVersion;

  final TfArg<String>? propagateTags;

  final TfArg<Map<String, String>>? tags;

  final TfArg<num>? taskCount;

  final TfArg<String> taskDefinitionArn;

  final List<CloudwatchEventTargetEcsTargetCapacityProviderStrategy>?
  capacityProviderStrategy;

  final CloudwatchEventTargetEcsTargetNetworkConfiguration?
  networkConfiguration;

  final List<CloudwatchEventTargetEcsTargetOrderedPlacementStrategy>?
  orderedPlacementStrategy;

  final List<CloudwatchEventTargetEcsTargetPlacementConstraint>?
  placementConstraint;

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
    if (tags != null) 'tags': tags!.toTfJson(),
    if (taskCount != null) 'task_count': taskCount!.toTfJson(),
    'task_definition_arn': taskDefinitionArn.toTfJson(),
    if (capacityProviderStrategy != null)
      'capacity_provider_strategy': [
        for (final e in capacityProviderStrategy!) e.encode(),
      ],
    if (networkConfiguration != null)
      'network_configuration': networkConfiguration!.encode(),
    if (orderedPlacementStrategy != null)
      'ordered_placement_strategy': [
        for (final e in orderedPlacementStrategy!) e.encode(),
      ],
    if (placementConstraint != null)
      'placement_constraint': [
        for (final e in placementConstraint!) e.encode(),
      ],
  };
}

/// Typed helper for the `ecs_target.capacity_provider_strategy` block of
/// `aws_cloudwatch_event_target` (derived from provider schema).
@immutable
final class CloudwatchEventTargetEcsTargetCapacityProviderStrategy {
  const CloudwatchEventTargetEcsTargetCapacityProviderStrategy({
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

/// Typed helper for the `ecs_target.network_configuration` block of
/// `aws_cloudwatch_event_target` (derived from provider schema).
@immutable
final class CloudwatchEventTargetEcsTargetNetworkConfiguration {
  const CloudwatchEventTargetEcsTargetNetworkConfiguration({
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

/// Typed helper for the `ecs_target.ordered_placement_strategy` block of
/// `aws_cloudwatch_event_target` (derived from provider schema).
@immutable
final class CloudwatchEventTargetEcsTargetOrderedPlacementStrategy {
  const CloudwatchEventTargetEcsTargetOrderedPlacementStrategy({
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

/// Typed helper for the `ecs_target.placement_constraint` block of
/// `aws_cloudwatch_event_target` (derived from provider schema).
@immutable
final class CloudwatchEventTargetEcsTargetPlacementConstraint {
  const CloudwatchEventTargetEcsTargetPlacementConstraint({
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

/// Typed helper for the `http_target` block of
/// `aws_cloudwatch_event_target` (derived from provider schema).
@immutable
final class CloudwatchEventTargetHttpTarget {
  const CloudwatchEventTargetHttpTarget({
    this.headerParameters,
    this.pathParameterValues,
    this.queryStringParameters,
  });

  final TfArg<Map<String, String>>? headerParameters;

  final TfArg<List<Object?>>? pathParameterValues;

  final TfArg<Map<String, String>>? queryStringParameters;

  Map<String, Object?> encode() => {
    if (headerParameters != null)
      'header_parameters': headerParameters!.toTfJson(),
    if (pathParameterValues != null)
      'path_parameter_values': pathParameterValues!.toTfJson(),
    if (queryStringParameters != null)
      'query_string_parameters': queryStringParameters!.toTfJson(),
  };
}

/// Typed helper for the `input_transformer` block of
/// `aws_cloudwatch_event_target` (derived from provider schema).
@immutable
final class CloudwatchEventTargetInputTransformer {
  const CloudwatchEventTargetInputTransformer({
    this.inputPaths,
    required this.inputTemplate,
  });

  final TfArg<Map<String, String>>? inputPaths;

  final TfArg<String> inputTemplate;

  Map<String, Object?> encode() => {
    if (inputPaths != null) 'input_paths': inputPaths!.toTfJson(),
    'input_template': inputTemplate.toTfJson(),
  };
}

/// Typed helper for the `kinesis_target` block of
/// `aws_cloudwatch_event_target` (derived from provider schema).
@immutable
final class CloudwatchEventTargetKinesisTarget {
  const CloudwatchEventTargetKinesisTarget({this.partitionKeyPath});

  final TfArg<String>? partitionKeyPath;

  Map<String, Object?> encode() => {
    if (partitionKeyPath != null)
      'partition_key_path': partitionKeyPath!.toTfJson(),
  };
}

/// Typed helper for the `redshift_target` block of
/// `aws_cloudwatch_event_target` (derived from provider schema).
@immutable
final class CloudwatchEventTargetRedshiftTarget {
  const CloudwatchEventTargetRedshiftTarget({
    required this.database,
    this.dbUser,
    this.secretsManagerArn,
    this.sql,
    this.statementName,
    this.withEvent,
  });

  final TfArg<String> database;

  final TfArg<String>? dbUser;

  final TfArg<String>? secretsManagerArn;

  final TfArg<String>? sql;

  final TfArg<String>? statementName;

  final TfArg<bool>? withEvent;

  Map<String, Object?> encode() => {
    'database': database.toTfJson(),
    if (dbUser != null) 'db_user': dbUser!.toTfJson(),
    if (secretsManagerArn != null)
      'secrets_manager_arn': secretsManagerArn!.toTfJson(),
    if (sql != null) 'sql': sql!.toTfJson(),
    if (statementName != null) 'statement_name': statementName!.toTfJson(),
    if (withEvent != null) 'with_event': withEvent!.toTfJson(),
  };
}

/// Typed helper for the `retry_policy` block of
/// `aws_cloudwatch_event_target` (derived from provider schema).
@immutable
final class CloudwatchEventTargetRetryPolicy {
  const CloudwatchEventTargetRetryPolicy({
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

/// Typed helper for the `run_command_targets` block of
/// `aws_cloudwatch_event_target` (derived from provider schema).
@immutable
final class CloudwatchEventTargetRunCommandTargets {
  const CloudwatchEventTargetRunCommandTargets({
    required this.key,
    required this.values,
  });

  final TfArg<String> key;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `sagemaker_pipeline_target` block of
/// `aws_cloudwatch_event_target` (derived from provider schema).
@immutable
final class CloudwatchEventTargetSagemakerPipelineTarget {
  const CloudwatchEventTargetSagemakerPipelineTarget({
    this.pipelineParameterList,
  });

  final List<CloudwatchEventTargetSagemakerPipelineTargetPipelineParameterList>?
  pipelineParameterList;

  Map<String, Object?> encode() => {
    if (pipelineParameterList != null)
      'pipeline_parameter_list': [
        for (final e in pipelineParameterList!) e.encode(),
      ],
  };
}

/// Typed helper for the `sagemaker_pipeline_target.pipeline_parameter_list` block of
/// `aws_cloudwatch_event_target` (derived from provider schema).
@immutable
final class CloudwatchEventTargetSagemakerPipelineTargetPipelineParameterList {
  const CloudwatchEventTargetSagemakerPipelineTargetPipelineParameterList({
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

/// Typed helper for the `sqs_target` block of
/// `aws_cloudwatch_event_target` (derived from provider schema).
@immutable
final class CloudwatchEventTargetSqsTarget {
  const CloudwatchEventTargetSqsTarget({this.messageGroupId});

  final TfArg<String>? messageGroupId;

  Map<String, Object?> encode() => {
    if (messageGroupId != null) 'message_group_id': messageGroupId!.toTfJson(),
  };
}

/// Factory wrapper for `aws_cloudwatch_event_target`.
final class AwsCloudwatchEventTarget extends Resource {
  static const String tfType = 'aws_cloudwatch_event_target';

  AwsCloudwatchEventTarget({
    required super.localName,
    required TfArg<String> arn,
    TfArg<String>? eventBusName,
    TfArg<bool>? forceDestroy,
    TfArg<String>? input,
    TfArg<String>? inputPath,
    TfArg<String>? region,
    TfArg<String>? roleArn,
    required TfArg<String> rule,
    TfArg<String>? targetId,
    CloudwatchEventTargetAppsyncTarget? appsyncTarget,
    CloudwatchEventTargetBatchTarget? batchTarget,
    CloudwatchEventTargetDeadLetterConfig? deadLetterConfig,
    CloudwatchEventTargetEcsTarget? ecsTarget,
    CloudwatchEventTargetHttpTarget? httpTarget,
    CloudwatchEventTargetInputTransformer? inputTransformer,
    CloudwatchEventTargetKinesisTarget? kinesisTarget,
    CloudwatchEventTargetRedshiftTarget? redshiftTarget,
    CloudwatchEventTargetRetryPolicy? retryPolicy,
    List<CloudwatchEventTargetRunCommandTargets>? runCommandTargets,
    CloudwatchEventTargetSagemakerPipelineTarget? sagemakerPipelineTarget,
    CloudwatchEventTargetSqsTarget? sqsTarget,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'arn': arn,
           if (eventBusName != null) 'event_bus_name': eventBusName,
           if (forceDestroy != null) 'force_destroy': forceDestroy,
           if (input != null) 'input': input,
           if (inputPath != null) 'input_path': inputPath,
           if (region != null) 'region': region,
           if (roleArn != null) 'role_arn': roleArn,
           'rule': rule,
           if (targetId != null) 'target_id': targetId,
           if (appsyncTarget != null)
             'appsync_target': TfArg.literal(appsyncTarget.encode()),
           if (batchTarget != null)
             'batch_target': TfArg.literal(batchTarget.encode()),
           if (deadLetterConfig != null)
             'dead_letter_config': TfArg.literal(deadLetterConfig.encode()),
           if (ecsTarget != null)
             'ecs_target': TfArg.literal(ecsTarget.encode()),
           if (httpTarget != null)
             'http_target': TfArg.literal(httpTarget.encode()),
           if (inputTransformer != null)
             'input_transformer': TfArg.literal(inputTransformer.encode()),
           if (kinesisTarget != null)
             'kinesis_target': TfArg.literal(kinesisTarget.encode()),
           if (redshiftTarget != null)
             'redshift_target': TfArg.literal(redshiftTarget.encode()),
           if (retryPolicy != null)
             'retry_policy': TfArg.literal(retryPolicy.encode()),
           if (runCommandTargets != null)
             'run_command_targets': TfArg.literal([
               for (final e in runCommandTargets) e.encode(),
             ]),
           if (sagemakerPipelineTarget != null)
             'sagemaker_pipeline_target': TfArg.literal(
               sagemakerPipelineTarget.encode(),
             ),
           if (sqsTarget != null)
             'sqs_target': TfArg.literal(sqsTarget.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudwatchEventTargetSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
