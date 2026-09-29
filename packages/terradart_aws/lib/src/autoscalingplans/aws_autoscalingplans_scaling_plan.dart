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
  const AutoscalingplansScalingPlanApplicationSource({this.applicationSource});

  final AutoscalingplansScalingPlanApplicationSourceApplicationSource?
  applicationSource;

  Map<String, Object?> encode() => {...?applicationSource?.encode()};
}

/// At most one of `cloudformation_stack_arn`, `tag_filter` on the `application_source` block of `aws_autoscalingplans_scaling_plan`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.cloudformationStackArn(...)`.
sealed class AutoscalingplansScalingPlanApplicationSourceApplicationSource {
  const AutoscalingplansScalingPlanApplicationSourceApplicationSource();

  /// Sets `cloudformation_stack_arn`.
  const factory AutoscalingplansScalingPlanApplicationSourceApplicationSource.cloudformationStackArn(
    TfArg<String> cloudformationStackArn,
  ) = AutoscalingplansScalingPlanApplicationSourceApplicationSourceCloudformationStackArn;

  /// Sets `tag_filter`.
  const factory AutoscalingplansScalingPlanApplicationSourceApplicationSource.tagFilter(
    List<AutoscalingplansScalingPlanApplicationSourceTagFilter> tagFilter,
  ) = AutoscalingplansScalingPlanApplicationSourceApplicationSourceTagFilter;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [AutoscalingplansScalingPlanApplicationSourceApplicationSource.cloudformationStackArn] choice: sets `cloudformation_stack_arn`.
final class AutoscalingplansScalingPlanApplicationSourceApplicationSourceCloudformationStackArn
    extends AutoscalingplansScalingPlanApplicationSourceApplicationSource {
  const AutoscalingplansScalingPlanApplicationSourceApplicationSourceCloudformationStackArn(
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

/// The [AutoscalingplansScalingPlanApplicationSourceApplicationSource.tagFilter] choice: sets `tag_filter`.
final class AutoscalingplansScalingPlanApplicationSourceApplicationSourceTagFilter
    extends AutoscalingplansScalingPlanApplicationSourceApplicationSource {
  const AutoscalingplansScalingPlanApplicationSourceApplicationSourceTagFilter(
    this.tagFilter,
  );

  final List<AutoscalingplansScalingPlanApplicationSourceTagFilter> tagFilter;

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
final class AutoscalingplansScalingPlanApplicationSourceTagFilter {
  const AutoscalingplansScalingPlanApplicationSourceTagFilter({
    required this.key,
    this.values,
  });

  final TfArg<String> key;

  final TfArg<List<Object?>>? values;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    if (values != null) 'values': values!.toTfJson(),
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

  final TfArg<
    AutoscalingplansScalingPlanScalingInstructionPredictiveScalingMaxCapacityBehavior
  >?
  predictiveScalingMaxCapacityBehavior;

  final TfArg<num>? predictiveScalingMaxCapacityBuffer;

  final TfArg<
    AutoscalingplansScalingPlanScalingInstructionPredictiveScalingMode
  >?
  predictiveScalingMode;

  final TfArg<String> resourceId;

  final TfArg<AutoscalingplansScalingPlanScalingInstructionScalableDimension>
  scalableDimension;

  final TfArg<
    AutoscalingplansScalingPlanScalingInstructionScalingPolicyUpdateBehavior
  >?
  scalingPolicyUpdateBehavior;

  final TfArg<num>? scheduledActionBufferTime;

  final TfArg<AutoscalingplansScalingPlanScalingInstructionServiceNamespace>
  serviceNamespace;

  final AutoscalingplansScalingPlanScalingInstructionCustomizedLoadMetricSpecification?
  customizedLoadMetricSpecification;

  final AutoscalingplansScalingPlanScalingInstructionPredefinedLoadMetricSpecification?
  predefinedLoadMetricSpecification;

  final List<
    AutoscalingplansScalingPlanScalingInstructionTargetTrackingConfiguration
  >
  targetTrackingConfiguration;

  Map<String, Object?> encode() => {
    if (disableDynamicScaling != null)
      'disable_dynamic_scaling': disableDynamicScaling!.toTfJson(),
    'max_capacity': maxCapacity.toTfJson(),
    'min_capacity': minCapacity.toTfJson(),
    if (predictiveScalingMaxCapacityBehavior != null)
      'predictive_scaling_max_capacity_behavior':
          predictiveScalingMaxCapacityBehavior!.toTfJson(),
    if (predictiveScalingMaxCapacityBuffer != null)
      'predictive_scaling_max_capacity_buffer':
          predictiveScalingMaxCapacityBuffer!.toTfJson(),
    if (predictiveScalingMode != null)
      'predictive_scaling_mode': predictiveScalingMode!.toTfJson(),
    'resource_id': resourceId.toTfJson(),
    'scalable_dimension': scalableDimension.toTfJson(),
    if (scalingPolicyUpdateBehavior != null)
      'scaling_policy_update_behavior': scalingPolicyUpdateBehavior!.toTfJson(),
    if (scheduledActionBufferTime != null)
      'scheduled_action_buffer_time': scheduledActionBufferTime!.toTfJson(),
    'service_namespace': serviceNamespace.toTfJson(),
    if (customizedLoadMetricSpecification != null)
      'customized_load_metric_specification': customizedLoadMetricSpecification!
          .encode(),
    if (predefinedLoadMetricSpecification != null)
      'predefined_load_metric_specification': predefinedLoadMetricSpecification!
          .encode(),
    'target_tracking_configuration': [
      for (final e in targetTrackingConfiguration) e.encode(),
    ],
  };
}

/// `predictive_scaling_max_capacity_behavior` — derived from the provider schema description.
enum AutoscalingplansScalingPlanScalingInstructionPredictiveScalingMaxCapacityBehavior
    implements TerraformEnum {
  setforecastcapacitytomaxcapacity('SetForecastCapacityToMaxCapacity'),
  setmaxcapacitytoforecastcapacity('SetMaxCapacityToForecastCapacity'),
  setmaxcapacityaboveforecastcapacity('SetMaxCapacityAboveForecastCapacity');

  const AutoscalingplansScalingPlanScalingInstructionPredictiveScalingMaxCapacityBehavior(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `predictive_scaling_mode` — derived from the provider schema description.
enum AutoscalingplansScalingPlanScalingInstructionPredictiveScalingMode
    implements TerraformEnum {
  forecastandscale('ForecastAndScale'),
  forecastonly('ForecastOnly');

  const AutoscalingplansScalingPlanScalingInstructionPredictiveScalingMode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `scalable_dimension` — derived from the provider schema description.
enum AutoscalingplansScalingPlanScalingInstructionScalableDimension
    implements TerraformEnum {
  autoscalingAutoscalinggroupDesiredcapacity(
    'autoscaling:autoScalingGroup:DesiredCapacity',
  ),
  ecsServiceDesiredcount('ecs:service:DesiredCount'),
  ec2SpotFleetRequestTargetcapacity('ec2:spot-fleet-request:TargetCapacity'),
  rdsClusterReadreplicacount('rds:cluster:ReadReplicaCount'),
  dynamodbTableReadcapacityunits('dynamodb:table:ReadCapacityUnits'),
  dynamodbTableWritecapacityunits('dynamodb:table:WriteCapacityUnits'),
  dynamodbIndexReadcapacityunits('dynamodb:index:ReadCapacityUnits'),
  dynamodbIndexWritecapacityunits('dynamodb:index:WriteCapacityUnits');

  const AutoscalingplansScalingPlanScalingInstructionScalableDimension(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `scaling_policy_update_behavior` — derived from the provider schema description.
enum AutoscalingplansScalingPlanScalingInstructionScalingPolicyUpdateBehavior
    implements TerraformEnum {
  keepexternalpolicies('KeepExternalPolicies'),
  replaceexternalpolicies('ReplaceExternalPolicies');

  const AutoscalingplansScalingPlanScalingInstructionScalingPolicyUpdateBehavior(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `service_namespace` — derived from the provider schema description.
enum AutoscalingplansScalingPlanScalingInstructionServiceNamespace
    implements TerraformEnum {
  autoscaling('autoscaling'),
  ecs('ecs'),
  ec2('ec2'),
  rds('rds'),
  dynamodb('dynamodb');

  const AutoscalingplansScalingPlanScalingInstructionServiceNamespace(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `scaling_instruction.customized_load_metric_specification` block of
/// `aws_autoscalingplans_scaling_plan` (derived from provider schema).
@immutable
final class AutoscalingplansScalingPlanScalingInstructionCustomizedLoadMetricSpecification {
  const AutoscalingplansScalingPlanScalingInstructionCustomizedLoadMetricSpecification({
    this.dimensions,
    required this.metricName,
    required this.namespace,
    required this.statistic,
    this.unit,
  });

  final TfArg<Map<String, String>>? dimensions;

  final TfArg<String> metricName;

  final TfArg<String> namespace;

  final TfArg<
    AutoscalingplansScalingPlanScalingInstructionCustomizedLoadMetricSpecificationStatistic
  >
  statistic;

  final TfArg<String>? unit;

  Map<String, Object?> encode() => {
    if (dimensions != null) 'dimensions': dimensions!.toTfJson(),
    'metric_name': metricName.toTfJson(),
    'namespace': namespace.toTfJson(),
    'statistic': statistic.toTfJson(),
    if (unit != null) 'unit': unit!.toTfJson(),
  };
}

/// `statistic` — derived from the provider schema description.
enum AutoscalingplansScalingPlanScalingInstructionCustomizedLoadMetricSpecificationStatistic
    implements TerraformEnum {
  sum('Sum');

  const AutoscalingplansScalingPlanScalingInstructionCustomizedLoadMetricSpecificationStatistic(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `scaling_instruction.predefined_load_metric_specification` block of
/// `aws_autoscalingplans_scaling_plan` (derived from provider schema).
@immutable
final class AutoscalingplansScalingPlanScalingInstructionPredefinedLoadMetricSpecification {
  const AutoscalingplansScalingPlanScalingInstructionPredefinedLoadMetricSpecification({
    required this.predefinedLoadMetricType,
    this.resourceLabel,
  });

  final TfArg<
    AutoscalingplansScalingPlanScalingInstructionPredefinedLoadMetricSpecificationPredefinedLoadMetricType
  >
  predefinedLoadMetricType;

  final TfArg<String>? resourceLabel;

  Map<String, Object?> encode() => {
    'predefined_load_metric_type': predefinedLoadMetricType.toTfJson(),
    if (resourceLabel != null) 'resource_label': resourceLabel!.toTfJson(),
  };
}

/// `predefined_load_metric_type` — derived from the provider schema description.
enum AutoscalingplansScalingPlanScalingInstructionPredefinedLoadMetricSpecificationPredefinedLoadMetricType
    implements TerraformEnum {
  asgtotalcpuutilization('ASGTotalCPUUtilization'),
  asgtotalnetworkin('ASGTotalNetworkIn'),
  asgtotalnetworkout('ASGTotalNetworkOut'),
  albtargetgrouprequestcount('ALBTargetGroupRequestCount');

  const AutoscalingplansScalingPlanScalingInstructionPredefinedLoadMetricSpecificationPredefinedLoadMetricType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `scaling_instruction.target_tracking_configuration` block of
/// `aws_autoscalingplans_scaling_plan` (derived from provider schema).
@immutable
final class AutoscalingplansScalingPlanScalingInstructionTargetTrackingConfiguration {
  const AutoscalingplansScalingPlanScalingInstructionTargetTrackingConfiguration({
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

  final AutoscalingplansScalingPlanScalingInstructionTargetTrackingConfigurationCustomizedScalingMetricSpecification?
  customizedScalingMetricSpecification;

  final AutoscalingplansScalingPlanScalingInstructionTargetTrackingConfigurationPredefinedScalingMetricSpecification?
  predefinedScalingMetricSpecification;

  Map<String, Object?> encode() => {
    if (disableScaleIn != null) 'disable_scale_in': disableScaleIn!.toTfJson(),
    if (estimatedInstanceWarmup != null)
      'estimated_instance_warmup': estimatedInstanceWarmup!.toTfJson(),
    if (scaleInCooldown != null)
      'scale_in_cooldown': scaleInCooldown!.toTfJson(),
    if (scaleOutCooldown != null)
      'scale_out_cooldown': scaleOutCooldown!.toTfJson(),
    'target_value': targetValue.toTfJson(),
    if (customizedScalingMetricSpecification != null)
      'customized_scaling_metric_specification':
          customizedScalingMetricSpecification!.encode(),
    if (predefinedScalingMetricSpecification != null)
      'predefined_scaling_metric_specification':
          predefinedScalingMetricSpecification!.encode(),
  };
}

/// Typed helper for the `scaling_instruction.target_tracking_configuration.customized_scaling_metric_specification` block of
/// `aws_autoscalingplans_scaling_plan` (derived from provider schema).
@immutable
final class AutoscalingplansScalingPlanScalingInstructionTargetTrackingConfigurationCustomizedScalingMetricSpecification {
  const AutoscalingplansScalingPlanScalingInstructionTargetTrackingConfigurationCustomizedScalingMetricSpecification({
    this.dimensions,
    required this.metricName,
    required this.namespace,
    required this.statistic,
    this.unit,
  });

  final TfArg<Map<String, String>>? dimensions;

  final TfArg<String> metricName;

  final TfArg<String> namespace;

  final TfArg<
    AutoscalingplansScalingPlanScalingInstructionTargetTrackingConfigurationCustomizedScalingMetricSpecificationStatistic
  >
  statistic;

  final TfArg<String>? unit;

  Map<String, Object?> encode() => {
    if (dimensions != null) 'dimensions': dimensions!.toTfJson(),
    'metric_name': metricName.toTfJson(),
    'namespace': namespace.toTfJson(),
    'statistic': statistic.toTfJson(),
    if (unit != null) 'unit': unit!.toTfJson(),
  };
}

/// `statistic` — derived from the provider schema description.
enum AutoscalingplansScalingPlanScalingInstructionTargetTrackingConfigurationCustomizedScalingMetricSpecificationStatistic
    implements TerraformEnum {
  average('Average'),
  minimum('Minimum'),
  maximum('Maximum'),
  samplecount('SampleCount'),
  sum('Sum');

  const AutoscalingplansScalingPlanScalingInstructionTargetTrackingConfigurationCustomizedScalingMetricSpecificationStatistic(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `scaling_instruction.target_tracking_configuration.predefined_scaling_metric_specification` block of
/// `aws_autoscalingplans_scaling_plan` (derived from provider schema).
@immutable
final class AutoscalingplansScalingPlanScalingInstructionTargetTrackingConfigurationPredefinedScalingMetricSpecification {
  const AutoscalingplansScalingPlanScalingInstructionTargetTrackingConfigurationPredefinedScalingMetricSpecification({
    required this.predefinedScalingMetricType,
    this.resourceLabel,
  });

  final TfArg<
    AutoscalingplansScalingPlanScalingInstructionTargetTrackingConfigurationPredefinedScalingMetricSpecificationPredefinedScalingMetricType
  >
  predefinedScalingMetricType;

  final TfArg<String>? resourceLabel;

  Map<String, Object?> encode() => {
    'predefined_scaling_metric_type': predefinedScalingMetricType.toTfJson(),
    if (resourceLabel != null) 'resource_label': resourceLabel!.toTfJson(),
  };
}

/// `predefined_scaling_metric_type` — derived from the provider schema description.
enum AutoscalingplansScalingPlanScalingInstructionTargetTrackingConfigurationPredefinedScalingMetricSpecificationPredefinedScalingMetricType
    implements TerraformEnum {
  asgaveragecpuutilization('ASGAverageCPUUtilization'),
  asgaveragenetworkin('ASGAverageNetworkIn'),
  asgaveragenetworkout('ASGAverageNetworkOut'),
  dynamodbreadcapacityutilization('DynamoDBReadCapacityUtilization'),
  dynamodbwritecapacityutilization('DynamoDBWriteCapacityUtilization'),
  ecsserviceaveragecpuutilization('ECSServiceAverageCPUUtilization'),
  ecsserviceaveragememoryutilization('ECSServiceAverageMemoryUtilization'),
  albrequestcountpertarget('ALBRequestCountPerTarget'),
  rdsreaderaveragecpuutilization('RDSReaderAverageCPUUtilization'),
  rdsreaderaveragedatabaseconnections('RDSReaderAverageDatabaseConnections'),
  ec2spotfleetrequestaveragecpuutilization(
    'EC2SpotFleetRequestAverageCPUUtilization',
  ),
  ec2spotfleetrequestaveragenetworkin('EC2SpotFleetRequestAverageNetworkIn'),
  ec2spotfleetrequestaveragenetworkout('EC2SpotFleetRequestAverageNetworkOut');

  const AutoscalingplansScalingPlanScalingInstructionTargetTrackingConfigurationPredefinedScalingMetricSpecificationPredefinedScalingMetricType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_autoscalingplans_scaling_plan`.
final class AwsAutoscalingplansScalingPlan extends Resource {
  static const String tfType = 'aws_autoscalingplans_scaling_plan';

  AwsAutoscalingplansScalingPlan({
    required super.localName,
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
           if (region != null) 'region': region,
           'application_source': TfArg.literal(applicationSource.encode()),
           'scaling_instruction': TfArg.literal([
             for (final e in scalingInstruction) e.encode(),
           ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAutoscalingplansScalingPlanSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `scaling_plan_version` attribute.
  TfRef<num> get scalingPlanVersion =>
      TfRef.attribute<num>(this, 'scaling_plan_version');
}
