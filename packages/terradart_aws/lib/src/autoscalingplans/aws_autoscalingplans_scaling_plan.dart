// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_autoscalingplans_scaling_plan`.
const Set<String> _awsAutoscalingplansScalingPlanSensitive = <String>{};

/// Typed helper for the `application_source` block of
/// `aws_autoscalingplans_scaling_plan` (derived from provider schema).
@immutable
final class AutoscalingplansScalingPlanApplicationSource {
  const AutoscalingplansScalingPlanApplicationSource({this.selector});

  final AutoscalingplansScalingPlanApplicationSourceSelector? selector;

  Map<String, Object?> encode() => {...?selector?.encode()};
}

/// At most one of `cloudformation_stack_arn`, `tag_filter` on the `application_source` block of `aws_autoscalingplans_scaling_plan`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.cloudformationStackArn(...)`.
sealed class AutoscalingplansScalingPlanApplicationSourceSelector {
  const AutoscalingplansScalingPlanApplicationSourceSelector();

  /// Sets `cloudformation_stack_arn`.
  const factory AutoscalingplansScalingPlanApplicationSourceSelector.cloudformationStackArn(
    TfArg<String> cloudformationStackArn,
  ) = AutoscalingplansScalingPlanApplicationSourceSelectorCloudformationStackArn;

  /// Sets `tag_filter`.
  const factory AutoscalingplansScalingPlanApplicationSourceSelector.tagFilter(
    List<AutoscalingplansScalingPlanTagFilter> tagFilter,
  ) = AutoscalingplansScalingPlanApplicationSourceSelectorTagFilter;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [AutoscalingplansScalingPlanApplicationSourceSelector.cloudformationStackArn] choice: sets `cloudformation_stack_arn`.
final class AutoscalingplansScalingPlanApplicationSourceSelectorCloudformationStackArn
    extends AutoscalingplansScalingPlanApplicationSourceSelector {
  const AutoscalingplansScalingPlanApplicationSourceSelectorCloudformationStackArn(
    this.cloudformationStackArn,
  );

  final TfArg<String> cloudformationStackArn;

  @override
  String get blockKey => 'cloudformation_stack_arn';

  @override
  Map<String, Object?> encode() => {
    'cloudformation_stack_arn': cloudformationStackArn.toTfJson(),
  };
}

/// The [AutoscalingplansScalingPlanApplicationSourceSelector.tagFilter] choice: sets `tag_filter`.
final class AutoscalingplansScalingPlanApplicationSourceSelectorTagFilter
    extends AutoscalingplansScalingPlanApplicationSourceSelector {
  const AutoscalingplansScalingPlanApplicationSourceSelectorTagFilter(
    this.tagFilter,
  );

  final List<AutoscalingplansScalingPlanTagFilter> tagFilter;

  @override
  String get blockKey => 'tag_filter';

  @override
  Map<String, Object?> encode() => {
    'tag_filter': [for (final e in tagFilter) e.encode()],
  };
}

/// Typed helper for the `application_source.tag_filter` block of
/// `aws_autoscalingplans_scaling_plan` (derived from provider schema).
@immutable
final class AutoscalingplansScalingPlanTagFilter {
  const AutoscalingplansScalingPlanTagFilter({required this.key, this.values});

  final TfArg<String> key;

  final TfArg<List<String>>? values;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'values': ?values?.toTfJson(),
  };
}

/// Typed helper for the `scaling_instruction` block of
/// `aws_autoscalingplans_scaling_plan` (derived from provider schema).
@immutable
final class AutoscalingplansScalingPlanScalingInstruction {
  const AutoscalingplansScalingPlanScalingInstruction({
    this.disableDynamicScaling,
    required this.maxCapacity,
    required this.minCapacity,
    this.predictiveScalingMaxCapacityBehavior,
    this.predictiveScalingMaxCapacityBuffer,
    this.predictiveScalingMode,
    required this.resourceId,
    required this.scalableDimension,
    this.scalingPolicyUpdateBehavior,
    this.scheduledActionBufferTime,
    required this.serviceNamespace,
    this.customizedLoadMetricSpecification,
    this.predefinedLoadMetricSpecification,
    required this.targetTrackingConfiguration,
  });

  final TfArg<bool>? disableDynamicScaling;

  final TfArg<num> maxCapacity;

  final TfArg<num> minCapacity;

  final AutoscalingplansScalingPlanPredictiveScalingMaxCapacityBehavior?
  predictiveScalingMaxCapacityBehavior;

  final TfArg<num>? predictiveScalingMaxCapacityBuffer;

  final AutoscalingplansScalingPlanPredictiveScalingMode? predictiveScalingMode;

  final TfArg<String> resourceId;

  final AutoscalingplansScalingPlanScalableDimension scalableDimension;

  final AutoscalingplansScalingPlanScalingPolicyUpdateBehavior?
  scalingPolicyUpdateBehavior;

  final TfArg<num>? scheduledActionBufferTime;

  final AutoscalingplansScalingPlanServiceNamespace serviceNamespace;

  final AutoscalingplansScalingPlanCustomizedLoadMetricSpecification?
  customizedLoadMetricSpecification;

  final AutoscalingplansScalingPlanPredefinedLoadMetricSpecification?
  predefinedLoadMetricSpecification;

  final List<AutoscalingplansScalingPlanTargetTrackingConfiguration>
  targetTrackingConfiguration;

  Map<String, Object?> encode() => {
    'disable_dynamic_scaling': ?disableDynamicScaling?.toTfJson(),
    'max_capacity': maxCapacity.toTfJson(),
    'min_capacity': minCapacity.toTfJson(),
    'predictive_scaling_max_capacity_behavior':
        ?predictiveScalingMaxCapacityBehavior?.toTfJson(),
    'predictive_scaling_max_capacity_buffer':
        ?predictiveScalingMaxCapacityBuffer?.toTfJson(),
    'predictive_scaling_mode': ?predictiveScalingMode?.toTfJson(),
    'resource_id': resourceId.toTfJson(),
    'scalable_dimension': scalableDimension.toTfJson(),
    'scaling_policy_update_behavior': ?scalingPolicyUpdateBehavior?.toTfJson(),
    'scheduled_action_buffer_time': ?scheduledActionBufferTime?.toTfJson(),
    'service_namespace': serviceNamespace.toTfJson(),
    'customized_load_metric_specification': ?customizedLoadMetricSpecification
        ?.encode(),
    'predefined_load_metric_specification': ?predefinedLoadMetricSpecification
        ?.encode(),
    'target_tracking_configuration': [
      for (final e in targetTrackingConfiguration) e.encode(),
    ],
  };
}

/// `predictive_scaling_max_capacity_behavior` — derived from the provider schema description.
extension type const AutoscalingplansScalingPlanPredictiveScalingMaxCapacityBehavior._(
  TfArg<String> _
) implements TfArg<String> {
  AutoscalingplansScalingPlanPredictiveScalingMaxCapacityBehavior.variable(
    String name,
  ) : this._(TfArg.variable(name));
  AutoscalingplansScalingPlanPredictiveScalingMaxCapacityBehavior.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const AutoscalingplansScalingPlanPredictiveScalingMaxCapacityBehavior.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const setforecastcapacitytomaxcapacity =
      AutoscalingplansScalingPlanPredictiveScalingMaxCapacityBehavior._(
        TfArgLiteral('SetForecastCapacityToMaxCapacity'),
      );
  static const setmaxcapacitytoforecastcapacity =
      AutoscalingplansScalingPlanPredictiveScalingMaxCapacityBehavior._(
        TfArgLiteral('SetMaxCapacityToForecastCapacity'),
      );
  static const setmaxcapacityaboveforecastcapacity =
      AutoscalingplansScalingPlanPredictiveScalingMaxCapacityBehavior._(
        TfArgLiteral('SetMaxCapacityAboveForecastCapacity'),
      );

  static const List<
    AutoscalingplansScalingPlanPredictiveScalingMaxCapacityBehavior
  >
  values = [
    setforecastcapacitytomaxcapacity,
    setmaxcapacitytoforecastcapacity,
    setmaxcapacityaboveforecastcapacity,
  ];
}

/// `predictive_scaling_mode` — derived from the provider schema description.
extension type const AutoscalingplansScalingPlanPredictiveScalingMode._(
  TfArg<String> _
) implements TfArg<String> {
  AutoscalingplansScalingPlanPredictiveScalingMode.variable(String name)
    : this._(TfArg.variable(name));
  AutoscalingplansScalingPlanPredictiveScalingMode.expression(String template)
    : this._(TfArg.expression(template));
  const AutoscalingplansScalingPlanPredictiveScalingMode.arg(TfArg<String> arg)
    : this._(arg);

  static const forecastandscale =
      AutoscalingplansScalingPlanPredictiveScalingMode._(
        TfArgLiteral('ForecastAndScale'),
      );
  static const forecastonly =
      AutoscalingplansScalingPlanPredictiveScalingMode._(
        TfArgLiteral('ForecastOnly'),
      );

  static const List<AutoscalingplansScalingPlanPredictiveScalingMode> values = [
    forecastandscale,
    forecastonly,
  ];
}

/// `scalable_dimension` — derived from the provider schema description.
extension type const AutoscalingplansScalingPlanScalableDimension._(
  TfArg<String> _
) implements TfArg<String> {
  AutoscalingplansScalingPlanScalableDimension.variable(String name)
    : this._(TfArg.variable(name));
  AutoscalingplansScalingPlanScalableDimension.expression(String template)
    : this._(TfArg.expression(template));
  const AutoscalingplansScalingPlanScalableDimension.arg(TfArg<String> arg)
    : this._(arg);

  static const autoscalingAutoscalinggroupDesiredcapacity =
      AutoscalingplansScalingPlanScalableDimension._(
        TfArgLiteral('autoscaling:autoScalingGroup:DesiredCapacity'),
      );
  static const ecsServiceDesiredcount =
      AutoscalingplansScalingPlanScalableDimension._(
        TfArgLiteral('ecs:service:DesiredCount'),
      );
  static const ec2SpotFleetRequestTargetcapacity =
      AutoscalingplansScalingPlanScalableDimension._(
        TfArgLiteral('ec2:spot-fleet-request:TargetCapacity'),
      );
  static const rdsClusterReadreplicacount =
      AutoscalingplansScalingPlanScalableDimension._(
        TfArgLiteral('rds:cluster:ReadReplicaCount'),
      );
  static const dynamodbTableReadcapacityunits =
      AutoscalingplansScalingPlanScalableDimension._(
        TfArgLiteral('dynamodb:table:ReadCapacityUnits'),
      );
  static const dynamodbTableWritecapacityunits =
      AutoscalingplansScalingPlanScalableDimension._(
        TfArgLiteral('dynamodb:table:WriteCapacityUnits'),
      );
  static const dynamodbIndexReadcapacityunits =
      AutoscalingplansScalingPlanScalableDimension._(
        TfArgLiteral('dynamodb:index:ReadCapacityUnits'),
      );
  static const dynamodbIndexWritecapacityunits =
      AutoscalingplansScalingPlanScalableDimension._(
        TfArgLiteral('dynamodb:index:WriteCapacityUnits'),
      );

  static const List<AutoscalingplansScalingPlanScalableDimension> values = [
    autoscalingAutoscalinggroupDesiredcapacity,
    ecsServiceDesiredcount,
    ec2SpotFleetRequestTargetcapacity,
    rdsClusterReadreplicacount,
    dynamodbTableReadcapacityunits,
    dynamodbTableWritecapacityunits,
    dynamodbIndexReadcapacityunits,
    dynamodbIndexWritecapacityunits,
  ];
}

/// `scaling_policy_update_behavior` — derived from the provider schema description.
extension type const AutoscalingplansScalingPlanScalingPolicyUpdateBehavior._(
  TfArg<String> _
) implements TfArg<String> {
  AutoscalingplansScalingPlanScalingPolicyUpdateBehavior.variable(String name)
    : this._(TfArg.variable(name));
  AutoscalingplansScalingPlanScalingPolicyUpdateBehavior.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const AutoscalingplansScalingPlanScalingPolicyUpdateBehavior.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const keepexternalpolicies =
      AutoscalingplansScalingPlanScalingPolicyUpdateBehavior._(
        TfArgLiteral('KeepExternalPolicies'),
      );
  static const replaceexternalpolicies =
      AutoscalingplansScalingPlanScalingPolicyUpdateBehavior._(
        TfArgLiteral('ReplaceExternalPolicies'),
      );

  static const List<AutoscalingplansScalingPlanScalingPolicyUpdateBehavior>
  values = [keepexternalpolicies, replaceexternalpolicies];
}

/// `service_namespace` — derived from the provider schema description.
extension type const AutoscalingplansScalingPlanServiceNamespace._(
  TfArg<String> _
) implements TfArg<String> {
  AutoscalingplansScalingPlanServiceNamespace.variable(String name)
    : this._(TfArg.variable(name));
  AutoscalingplansScalingPlanServiceNamespace.expression(String template)
    : this._(TfArg.expression(template));
  const AutoscalingplansScalingPlanServiceNamespace.arg(TfArg<String> arg)
    : this._(arg);

  static const autoscaling = AutoscalingplansScalingPlanServiceNamespace._(
    TfArgLiteral('autoscaling'),
  );
  static const ecs = AutoscalingplansScalingPlanServiceNamespace._(
    TfArgLiteral('ecs'),
  );
  static const ec2 = AutoscalingplansScalingPlanServiceNamespace._(
    TfArgLiteral('ec2'),
  );
  static const rds = AutoscalingplansScalingPlanServiceNamespace._(
    TfArgLiteral('rds'),
  );
  static const dynamodb = AutoscalingplansScalingPlanServiceNamespace._(
    TfArgLiteral('dynamodb'),
  );

  static const List<AutoscalingplansScalingPlanServiceNamespace> values = [
    autoscaling,
    ecs,
    ec2,
    rds,
    dynamodb,
  ];
}

/// Typed helper for the `scaling_instruction.customized_load_metric_specification` block of
/// `aws_autoscalingplans_scaling_plan` (derived from provider schema).
@immutable
final class AutoscalingplansScalingPlanCustomizedLoadMetricSpecification {
  const AutoscalingplansScalingPlanCustomizedLoadMetricSpecification({
    this.dimensions,
    required this.metricName,
    required this.namespace,
    required this.statistic,
    this.unit,
  });

  final TfArg<Map<String, String>>? dimensions;

  final TfArg<String> metricName;

  final TfArg<String> namespace;

  final AutoscalingplansScalingPlanStatistic statistic;

  final TfArg<String>? unit;

  Map<String, Object?> encode() => {
    'dimensions': ?dimensions?.toTfJson(),
    'metric_name': metricName.toTfJson(),
    'namespace': namespace.toTfJson(),
    'statistic': statistic.toTfJson(),
    'unit': ?unit?.toTfJson(),
  };
}

/// `statistic` — derived from the provider schema description.
extension type const AutoscalingplansScalingPlanStatistic._(TfArg<String> _)
    implements TfArg<String> {
  AutoscalingplansScalingPlanStatistic.variable(String name)
    : this._(TfArg.variable(name));
  AutoscalingplansScalingPlanStatistic.expression(String template)
    : this._(TfArg.expression(template));
  const AutoscalingplansScalingPlanStatistic.arg(TfArg<String> arg)
    : this._(arg);

  static const sum = AutoscalingplansScalingPlanStatistic._(
    TfArgLiteral('Sum'),
  );

  static const List<AutoscalingplansScalingPlanStatistic> values = [sum];
}

/// Typed helper for the `scaling_instruction.predefined_load_metric_specification` block of
/// `aws_autoscalingplans_scaling_plan` (derived from provider schema).
@immutable
final class AutoscalingplansScalingPlanPredefinedLoadMetricSpecification {
  const AutoscalingplansScalingPlanPredefinedLoadMetricSpecification({
    required this.predefinedLoadMetricType,
    this.resourceLabel,
  });

  final AutoscalingplansScalingPlanPredefinedLoadMetricType
  predefinedLoadMetricType;

  final TfArg<String>? resourceLabel;

  Map<String, Object?> encode() => {
    'predefined_load_metric_type': predefinedLoadMetricType.toTfJson(),
    'resource_label': ?resourceLabel?.toTfJson(),
  };
}

/// `predefined_load_metric_type` — derived from the provider schema description.
extension type const AutoscalingplansScalingPlanPredefinedLoadMetricType._(
  TfArg<String> _
) implements TfArg<String> {
  AutoscalingplansScalingPlanPredefinedLoadMetricType.variable(String name)
    : this._(TfArg.variable(name));
  AutoscalingplansScalingPlanPredefinedLoadMetricType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const AutoscalingplansScalingPlanPredefinedLoadMetricType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const asgtotalcpuutilization =
      AutoscalingplansScalingPlanPredefinedLoadMetricType._(
        TfArgLiteral('ASGTotalCPUUtilization'),
      );
  static const asgtotalnetworkin =
      AutoscalingplansScalingPlanPredefinedLoadMetricType._(
        TfArgLiteral('ASGTotalNetworkIn'),
      );
  static const asgtotalnetworkout =
      AutoscalingplansScalingPlanPredefinedLoadMetricType._(
        TfArgLiteral('ASGTotalNetworkOut'),
      );
  static const albtargetgrouprequestcount =
      AutoscalingplansScalingPlanPredefinedLoadMetricType._(
        TfArgLiteral('ALBTargetGroupRequestCount'),
      );

  static const List<AutoscalingplansScalingPlanPredefinedLoadMetricType>
  values = [
    asgtotalcpuutilization,
    asgtotalnetworkin,
    asgtotalnetworkout,
    albtargetgrouprequestcount,
  ];
}

/// Typed helper for the `scaling_instruction.target_tracking_configuration` block of
/// `aws_autoscalingplans_scaling_plan` (derived from provider schema).
@immutable
final class AutoscalingplansScalingPlanTargetTrackingConfiguration {
  const AutoscalingplansScalingPlanTargetTrackingConfiguration({
    this.disableScaleIn,
    this.estimatedInstanceWarmup,
    this.scaleInCooldown,
    this.scaleOutCooldown,
    required this.targetValue,
    this.customizedScalingMetricSpecification,
    this.predefinedScalingMetricSpecification,
  });

  final TfArg<bool>? disableScaleIn;

  final TfArg<num>? estimatedInstanceWarmup;

  final TfArg<num>? scaleInCooldown;

  final TfArg<num>? scaleOutCooldown;

  final TfArg<num> targetValue;

  final AutoscalingplansScalingPlanCustomizedScalingMetricSpecification?
  customizedScalingMetricSpecification;

  final AutoscalingplansScalingPlanPredefinedScalingMetricSpecification?
  predefinedScalingMetricSpecification;

  Map<String, Object?> encode() => {
    'disable_scale_in': ?disableScaleIn?.toTfJson(),
    'estimated_instance_warmup': ?estimatedInstanceWarmup?.toTfJson(),
    'scale_in_cooldown': ?scaleInCooldown?.toTfJson(),
    'scale_out_cooldown': ?scaleOutCooldown?.toTfJson(),
    'target_value': targetValue.toTfJson(),
    'customized_scaling_metric_specification':
        ?customizedScalingMetricSpecification?.encode(),
    'predefined_scaling_metric_specification':
        ?predefinedScalingMetricSpecification?.encode(),
  };
}

/// Typed helper for the `scaling_instruction.target_tracking_configuration.customized_scaling_metric_specification` block of
/// `aws_autoscalingplans_scaling_plan` (derived from provider schema).
@immutable
final class AutoscalingplansScalingPlanCustomizedScalingMetricSpecification {
  const AutoscalingplansScalingPlanCustomizedScalingMetricSpecification({
    this.dimensions,
    required this.metricName,
    required this.namespace,
    required this.statistic,
    this.unit,
  });

  final TfArg<Map<String, String>>? dimensions;

  final TfArg<String> metricName;

  final TfArg<String> namespace;

  final AutoscalingplansScalingPlanCustomizedScalingMetricSpecificationStatistic
  statistic;

  final TfArg<String>? unit;

  Map<String, Object?> encode() => {
    'dimensions': ?dimensions?.toTfJson(),
    'metric_name': metricName.toTfJson(),
    'namespace': namespace.toTfJson(),
    'statistic': statistic.toTfJson(),
    'unit': ?unit?.toTfJson(),
  };
}

/// `statistic` — derived from the provider schema description.
extension type const AutoscalingplansScalingPlanCustomizedScalingMetricSpecificationStatistic._(
  TfArg<String> _
) implements TfArg<String> {
  AutoscalingplansScalingPlanCustomizedScalingMetricSpecificationStatistic.variable(
    String name,
  ) : this._(TfArg.variable(name));
  AutoscalingplansScalingPlanCustomizedScalingMetricSpecificationStatistic.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const AutoscalingplansScalingPlanCustomizedScalingMetricSpecificationStatistic.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const average =
      AutoscalingplansScalingPlanCustomizedScalingMetricSpecificationStatistic._(
        TfArgLiteral('Average'),
      );
  static const minimum =
      AutoscalingplansScalingPlanCustomizedScalingMetricSpecificationStatistic._(
        TfArgLiteral('Minimum'),
      );
  static const maximum =
      AutoscalingplansScalingPlanCustomizedScalingMetricSpecificationStatistic._(
        TfArgLiteral('Maximum'),
      );
  static const samplecount =
      AutoscalingplansScalingPlanCustomizedScalingMetricSpecificationStatistic._(
        TfArgLiteral('SampleCount'),
      );
  static const sum =
      AutoscalingplansScalingPlanCustomizedScalingMetricSpecificationStatistic._(
        TfArgLiteral('Sum'),
      );

  static const List<
    AutoscalingplansScalingPlanCustomizedScalingMetricSpecificationStatistic
  >
  values = [average, minimum, maximum, samplecount, sum];
}

/// Typed helper for the `scaling_instruction.target_tracking_configuration.predefined_scaling_metric_specification` block of
/// `aws_autoscalingplans_scaling_plan` (derived from provider schema).
@immutable
final class AutoscalingplansScalingPlanPredefinedScalingMetricSpecification {
  const AutoscalingplansScalingPlanPredefinedScalingMetricSpecification({
    required this.predefinedScalingMetricType,
    this.resourceLabel,
  });

  final AutoscalingplansScalingPlanPredefinedScalingMetricType
  predefinedScalingMetricType;

  final TfArg<String>? resourceLabel;

  Map<String, Object?> encode() => {
    'predefined_scaling_metric_type': predefinedScalingMetricType.toTfJson(),
    'resource_label': ?resourceLabel?.toTfJson(),
  };
}

/// `predefined_scaling_metric_type` — derived from the provider schema description.
extension type const AutoscalingplansScalingPlanPredefinedScalingMetricType._(
  TfArg<String> _
) implements TfArg<String> {
  AutoscalingplansScalingPlanPredefinedScalingMetricType.variable(String name)
    : this._(TfArg.variable(name));
  AutoscalingplansScalingPlanPredefinedScalingMetricType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const AutoscalingplansScalingPlanPredefinedScalingMetricType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const asgaveragecpuutilization =
      AutoscalingplansScalingPlanPredefinedScalingMetricType._(
        TfArgLiteral('ASGAverageCPUUtilization'),
      );
  static const asgaveragenetworkin =
      AutoscalingplansScalingPlanPredefinedScalingMetricType._(
        TfArgLiteral('ASGAverageNetworkIn'),
      );
  static const asgaveragenetworkout =
      AutoscalingplansScalingPlanPredefinedScalingMetricType._(
        TfArgLiteral('ASGAverageNetworkOut'),
      );
  static const dynamodbreadcapacityutilization =
      AutoscalingplansScalingPlanPredefinedScalingMetricType._(
        TfArgLiteral('DynamoDBReadCapacityUtilization'),
      );
  static const dynamodbwritecapacityutilization =
      AutoscalingplansScalingPlanPredefinedScalingMetricType._(
        TfArgLiteral('DynamoDBWriteCapacityUtilization'),
      );
  static const ecsserviceaveragecpuutilization =
      AutoscalingplansScalingPlanPredefinedScalingMetricType._(
        TfArgLiteral('ECSServiceAverageCPUUtilization'),
      );
  static const ecsserviceaveragememoryutilization =
      AutoscalingplansScalingPlanPredefinedScalingMetricType._(
        TfArgLiteral('ECSServiceAverageMemoryUtilization'),
      );
  static const albrequestcountpertarget =
      AutoscalingplansScalingPlanPredefinedScalingMetricType._(
        TfArgLiteral('ALBRequestCountPerTarget'),
      );
  static const rdsreaderaveragecpuutilization =
      AutoscalingplansScalingPlanPredefinedScalingMetricType._(
        TfArgLiteral('RDSReaderAverageCPUUtilization'),
      );
  static const rdsreaderaveragedatabaseconnections =
      AutoscalingplansScalingPlanPredefinedScalingMetricType._(
        TfArgLiteral('RDSReaderAverageDatabaseConnections'),
      );
  static const ec2spotfleetrequestaveragecpuutilization =
      AutoscalingplansScalingPlanPredefinedScalingMetricType._(
        TfArgLiteral('EC2SpotFleetRequestAverageCPUUtilization'),
      );
  static const ec2spotfleetrequestaveragenetworkin =
      AutoscalingplansScalingPlanPredefinedScalingMetricType._(
        TfArgLiteral('EC2SpotFleetRequestAverageNetworkIn'),
      );
  static const ec2spotfleetrequestaveragenetworkout =
      AutoscalingplansScalingPlanPredefinedScalingMetricType._(
        TfArgLiteral('EC2SpotFleetRequestAverageNetworkOut'),
      );

  static const List<AutoscalingplansScalingPlanPredefinedScalingMetricType>
  values = [
    asgaveragecpuutilization,
    asgaveragenetworkin,
    asgaveragenetworkout,
    dynamodbreadcapacityutilization,
    dynamodbwritecapacityutilization,
    ecsserviceaveragecpuutilization,
    ecsserviceaveragememoryutilization,
    albrequestcountpertarget,
    rdsreaderaveragecpuutilization,
    rdsreaderaveragedatabaseconnections,
    ec2spotfleetrequestaveragecpuutilization,
    ec2spotfleetrequestaveragenetworkin,
    ec2spotfleetrequestaveragenetworkout,
  ];
}

/// Factory wrapper for `aws_autoscalingplans_scaling_plan`.
final class AwsAutoscalingplansScalingPlan extends Resource {
  static const String tfType = 'aws_autoscalingplans_scaling_plan';

  AwsAutoscalingplansScalingPlan(
    super.localName, {
    required TfArg<String> name,
    TfArg<String>? region,
    required AutoscalingplansScalingPlanApplicationSource applicationSource,
    required List<AutoscalingplansScalingPlanScalingInstruction>
    scalingInstruction,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'region': ?region,
           'application_source': TfArg.literal(applicationSource.encode()),
           'scaling_instruction': TfArg.literal([
             for (final e in scalingInstruction) e.encode(),
           ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAutoscalingplansScalingPlanSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAutoscalingplansScalingPlan>`.
  RefTo<AwsAutoscalingplansScalingPlan> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `scaling_plan_version` attribute.
  TfRef<num> get scalingPlanVersion =>
      TfRef.attribute<num>(this, 'scaling_plan_version');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
