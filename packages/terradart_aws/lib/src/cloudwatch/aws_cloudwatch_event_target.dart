// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_cloudwatch_event_target`.
const Set<String> _awsCloudwatchEventTargetSensitive = <String>{};

/// At most one of `input`, `input_path`, `input_transformer` on `aws_cloudwatch_event_target`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.input(...)`.
sealed class CloudwatchEventTargetInput {
  const CloudwatchEventTargetInput();

  /// Sets `input`.
  const factory CloudwatchEventTargetInput.input(TfArg<String> input) =
      CloudwatchEventTargetInputChoice;

  /// Sets `input_path`.
  const factory CloudwatchEventTargetInput.inputPath(TfArg<String> inputPath) =
      CloudwatchEventTargetInputPath;

  /// Sets `input_transformer`.
  const factory CloudwatchEventTargetInput.inputTransformer(
    CloudwatchEventTargetInputTransformer inputTransformer,
  ) = CloudwatchEventTargetInputTransformerChoice;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [CloudwatchEventTargetInput.input] choice: sets `input`.
final class CloudwatchEventTargetInputChoice
    extends CloudwatchEventTargetInput {
  const CloudwatchEventTargetInputChoice(this.input);

  final TfArg<String> input;

  @internal
  @override
  String get blockKey => 'input';

  @internal
  @override
  Map<String, Object?> encode() => {'input': input.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'input': input};
}

/// The [CloudwatchEventTargetInput.inputPath] choice: sets `input_path`.
final class CloudwatchEventTargetInputPath extends CloudwatchEventTargetInput {
  const CloudwatchEventTargetInputPath(this.inputPath);

  final TfArg<String> inputPath;

  @internal
  @override
  String get blockKey => 'input_path';

  @internal
  @override
  Map<String, Object?> encode() => {'input_path': inputPath.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'input_path': inputPath};
}

/// The [CloudwatchEventTargetInput.inputTransformer] choice: sets `input_transformer`.
final class CloudwatchEventTargetInputTransformerChoice
    extends CloudwatchEventTargetInput {
  const CloudwatchEventTargetInputTransformerChoice(this.inputTransformer);

  final CloudwatchEventTargetInputTransformer inputTransformer;

  @internal
  @override
  String get blockKey => 'input_transformer';

  @internal
  @override
  Map<String, Object?> encode() => {
    'input_transformer': inputTransformer.encode(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'input_transformer': TfArg.literal(inputTransformer.encode()),
  };
}

/// Typed helper for the `appsync_target` block of
/// `aws_cloudwatch_event_target` (derived from provider schema).
@immutable
final class CloudwatchEventTargetAppsyncTarget {
  const CloudwatchEventTargetAppsyncTarget({this.graphqlOperation});

  final TfArg<String>? graphqlOperation;

  @internal
  Map<String, Object?> encode() => {
    'graphql_operation': ?graphqlOperation?.toTfJson(),
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

  @internal
  Map<String, Object?> encode() => {
    'array_size': ?arraySize?.toTfJson(),
    'job_attempts': ?jobAttempts?.toTfJson(),
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

  @internal
  Map<String, Object?> encode() => {'arn': ?arn?.toTfJson()};
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

  final CloudwatchEventTargetLaunchType? launchType;

  final TfArg<String>? platformVersion;

  final CloudwatchEventTargetPropagateTags? propagateTags;

  final TfArg<Map<String, String>>? tags;

  final TfArg<num>? taskCount;

  final TfArg<String> taskDefinitionArn;

  final List<CloudwatchEventTargetCapacityProviderStrategy>?
  capacityProviderStrategy;

  final CloudwatchEventTargetNetworkConfiguration? networkConfiguration;

  final List<CloudwatchEventTargetOrderedPlacementStrategy>?
  orderedPlacementStrategy;

  final List<CloudwatchEventTargetPlacementConstraint>? placementConstraint;

  @internal
  Map<String, Object?> encode() => {
    'enable_ecs_managed_tags': ?enableEcsManagedTags?.toTfJson(),
    'enable_execute_command': ?enableExecuteCommand?.toTfJson(),
    'group': ?group?.toTfJson(),
    'launch_type': ?launchType?.toTfJson(),
    'platform_version': ?platformVersion?.toTfJson(),
    'propagate_tags': ?propagateTags?.toTfJson(),
    'tags': ?tags?.toTfJson(),
    'task_count': ?taskCount?.toTfJson(),
    'task_definition_arn': taskDefinitionArn.toTfJson(),
    if (capacityProviderStrategy != null)
      'capacity_provider_strategy': [
        for (final e in capacityProviderStrategy!) e.encode(),
      ],
    'network_configuration': ?networkConfiguration?.encode(),
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

/// `launch_type` — derived from the provider schema description.
extension type const CloudwatchEventTargetLaunchType._(TfArg<String> _)
    implements TfArg<String> {
  CloudwatchEventTargetLaunchType.variable(String name)
    : this._(TfArg.variable(name));
  CloudwatchEventTargetLaunchType.expression(String template)
    : this._(TfArg.expression(template));
  const CloudwatchEventTargetLaunchType.arg(TfArg<String> arg) : this._(arg);

  static const ec2 = CloudwatchEventTargetLaunchType._(TfArgLiteral('EC2'));
  static const fargate = CloudwatchEventTargetLaunchType._(
    TfArgLiteral('FARGATE'),
  );
  static const external = CloudwatchEventTargetLaunchType._(
    TfArgLiteral('EXTERNAL'),
  );

  static const List<CloudwatchEventTargetLaunchType> values = [
    ec2,
    fargate,
    external,
  ];
}

/// `propagate_tags` — derived from the provider schema description.
extension type const CloudwatchEventTargetPropagateTags._(TfArg<String> _)
    implements TfArg<String> {
  CloudwatchEventTargetPropagateTags.variable(String name)
    : this._(TfArg.variable(name));
  CloudwatchEventTargetPropagateTags.expression(String template)
    : this._(TfArg.expression(template));
  const CloudwatchEventTargetPropagateTags.arg(TfArg<String> arg) : this._(arg);

  static const taskDefinition = CloudwatchEventTargetPropagateTags._(
    TfArgLiteral('TASK_DEFINITION'),
  );

  static const List<CloudwatchEventTargetPropagateTags> values = [
    taskDefinition,
  ];
}

/// Typed helper for the `ecs_target.capacity_provider_strategy` block of
/// `aws_cloudwatch_event_target` (derived from provider schema).
@immutable
final class CloudwatchEventTargetCapacityProviderStrategy {
  const CloudwatchEventTargetCapacityProviderStrategy({
    this.base,
    required this.capacityProvider,
    this.weight,
  });

  final TfArg<num>? base;

  final TfArg<String> capacityProvider;

  final TfArg<num>? weight;

  @internal
  Map<String, Object?> encode() => {
    'base': ?base?.toTfJson(),
    'capacity_provider': capacityProvider.toTfJson(),
    'weight': ?weight?.toTfJson(),
  };
}

/// Typed helper for the `ecs_target.network_configuration` block of
/// `aws_cloudwatch_event_target` (derived from provider schema).
@immutable
final class CloudwatchEventTargetNetworkConfiguration {
  const CloudwatchEventTargetNetworkConfiguration({
    this.assignPublicIp,
    this.securityGroups,
    required this.subnets,
  });

  final TfArg<bool>? assignPublicIp;

  final TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroups;

  final TfArg<List<RefTo<AwsSubnet>>> subnets;

  @internal
  Map<String, Object?> encode() => {
    'assign_public_ip': ?assignPublicIp?.toTfJson(),
    'security_groups': ?securityGroups?.encodeAs('id').toTfJson(),
    'subnets': subnets.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `ecs_target.ordered_placement_strategy` block of
/// `aws_cloudwatch_event_target` (derived from provider schema).
@immutable
final class CloudwatchEventTargetOrderedPlacementStrategy {
  const CloudwatchEventTargetOrderedPlacementStrategy({
    this.field,
    required this.type,
  });

  final TfArg<String>? field;

  final CloudwatchEventTargetOrderedPlacementStrategyType type;

  @internal
  Map<String, Object?> encode() => {
    'field': ?field?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const CloudwatchEventTargetOrderedPlacementStrategyType._(
  TfArg<String> _
) implements TfArg<String> {
  CloudwatchEventTargetOrderedPlacementStrategyType.variable(String name)
    : this._(TfArg.variable(name));
  CloudwatchEventTargetOrderedPlacementStrategyType.expression(String template)
    : this._(TfArg.expression(template));
  const CloudwatchEventTargetOrderedPlacementStrategyType.arg(TfArg<String> arg)
    : this._(arg);

  static const random = CloudwatchEventTargetOrderedPlacementStrategyType._(
    TfArgLiteral('random'),
  );
  static const spread = CloudwatchEventTargetOrderedPlacementStrategyType._(
    TfArgLiteral('spread'),
  );
  static const binpack = CloudwatchEventTargetOrderedPlacementStrategyType._(
    TfArgLiteral('binpack'),
  );

  static const List<CloudwatchEventTargetOrderedPlacementStrategyType> values =
      [random, spread, binpack];
}

/// Typed helper for the `ecs_target.placement_constraint` block of
/// `aws_cloudwatch_event_target` (derived from provider schema).
@immutable
final class CloudwatchEventTargetPlacementConstraint {
  const CloudwatchEventTargetPlacementConstraint({
    this.expression,
    required this.type,
  });

  final TfArg<String>? expression;

  final CloudwatchEventTargetPlacementConstraintType type;

  @internal
  Map<String, Object?> encode() => {
    'expression': ?expression?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const CloudwatchEventTargetPlacementConstraintType._(
  TfArg<String> _
) implements TfArg<String> {
  CloudwatchEventTargetPlacementConstraintType.variable(String name)
    : this._(TfArg.variable(name));
  CloudwatchEventTargetPlacementConstraintType.expression(String template)
    : this._(TfArg.expression(template));
  const CloudwatchEventTargetPlacementConstraintType.arg(TfArg<String> arg)
    : this._(arg);

  static const distinctinstance =
      CloudwatchEventTargetPlacementConstraintType._(
        TfArgLiteral('distinctInstance'),
      );
  static const memberof = CloudwatchEventTargetPlacementConstraintType._(
    TfArgLiteral('memberOf'),
  );

  static const List<CloudwatchEventTargetPlacementConstraintType> values = [
    distinctinstance,
    memberof,
  ];
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

  final TfArg<List<String>>? pathParameterValues;

  final TfArg<Map<String, String>>? queryStringParameters;

  @internal
  Map<String, Object?> encode() => {
    'header_parameters': ?headerParameters?.toTfJson(),
    'path_parameter_values': ?pathParameterValues?.toTfJson(),
    'query_string_parameters': ?queryStringParameters?.toTfJson(),
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

  @internal
  Map<String, Object?> encode() => {
    'input_paths': ?inputPaths?.toTfJson(),
    'input_template': inputTemplate.toTfJson(),
  };
}

/// Typed helper for the `kinesis_target` block of
/// `aws_cloudwatch_event_target` (derived from provider schema).
@immutable
final class CloudwatchEventTargetKinesisTarget {
  const CloudwatchEventTargetKinesisTarget({this.partitionKeyPath});

  final TfArg<String>? partitionKeyPath;

  @internal
  Map<String, Object?> encode() => {
    'partition_key_path': ?partitionKeyPath?.toTfJson(),
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

  @internal
  Map<String, Object?> encode() => {
    'database': database.toTfJson(),
    'db_user': ?dbUser?.toTfJson(),
    'secrets_manager_arn': ?secretsManagerArn?.toTfJson(),
    'sql': ?sql?.toTfJson(),
    'statement_name': ?statementName?.toTfJson(),
    'with_event': ?withEvent?.toTfJson(),
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

  @internal
  Map<String, Object?> encode() => {
    'maximum_event_age_in_seconds': ?maximumEventAgeInSeconds?.toTfJson(),
    'maximum_retry_attempts': ?maximumRetryAttempts?.toTfJson(),
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

  final TfArg<List<String>> values;

  @internal
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

  final List<CloudwatchEventTargetPipelineParameterList>? pipelineParameterList;

  @internal
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
final class CloudwatchEventTargetPipelineParameterList {
  const CloudwatchEventTargetPipelineParameterList({
    required this.name,
    required this.value,
  });

  final TfArg<String> name;

  final TfArg<String> value;

  @internal
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

  @internal
  Map<String, Object?> encode() => {
    'message_group_id': ?messageGroupId?.toTfJson(),
  };
}

/// Factory wrapper for `aws_cloudwatch_event_target`.
final class AwsCloudwatchEventTarget extends Resource {
  static const String tfType = 'aws_cloudwatch_event_target';

  AwsCloudwatchEventTarget(
    super.localName, {
    required TfArg<String> arn,
    TfArg<String>? eventBusName,
    TfArg<bool>? forceDestroy,
    CloudwatchEventTargetInput? input,
    TfArg<String>? region,
    RefTo<AwsIamRole>? roleArn,
    required TfArg<String> rule,
    TfArg<String>? targetId,
    CloudwatchEventTargetAppsyncTarget? appsyncTarget,
    CloudwatchEventTargetBatchTarget? batchTarget,
    CloudwatchEventTargetDeadLetterConfig? deadLetterConfig,
    CloudwatchEventTargetEcsTarget? ecsTarget,
    CloudwatchEventTargetHttpTarget? httpTarget,
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
           'event_bus_name': ?eventBusName,
           'force_destroy': ?forceDestroy,
           ...?input?.argMap,
           'region': ?region,
           'role_arn': ?roleArn?.encodeAs('arn'),
           'rule': rule,
           'target_id': ?targetId,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudwatchEventTarget>`.
  RefTo<AwsCloudwatchEventTarget> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `event_bus_name` attribute.
  TfRef<String> get eventBusName =>
      TfRef.attribute<String>(this, 'event_bus_name');

  /// Reference to `force_destroy` attribute.
  TfRef<bool> get forceDestroy => TfRef.attribute<bool>(this, 'force_destroy');

  /// Reference to `input` attribute.
  TfRef<String> get input => TfRef.attribute<String>(this, 'input');

  /// Reference to `input_path` attribute.
  TfRef<String> get inputPath => TfRef.attribute<String>(this, 'input_path');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArn => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `rule` attribute.
  TfRef<String> get rule => TfRef.attribute<String>(this, 'rule');

  /// Reference to `target_id` attribute.
  TfRef<String> get targetId => TfRef.attribute<String>(this, 'target_id');
}
