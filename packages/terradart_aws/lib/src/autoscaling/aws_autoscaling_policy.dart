// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_autoscaling_policy`.
const Set<String> _awsAutoscalingPolicySensitive = <String>{};

/// Autoscaling Policy enum for `policy_type`.
extension type const AutoscalingPolicyType._(TfArg<String> _)
    implements TfArg<String> {
  AutoscalingPolicyType.variable(String name) : this._(TfArg.variable(name));
  AutoscalingPolicyType.expression(String template)
    : this._(TfArg.expression(template));
  const AutoscalingPolicyType.arg(TfArg<String> arg) : this._(arg);

  static const predictivescaling = AutoscalingPolicyType._(
    TfArgLiteral('PredictiveScaling'),
  );
  static const simplescaling = AutoscalingPolicyType._(
    TfArgLiteral('SimpleScaling'),
  );
  static const stepscaling = AutoscalingPolicyType._(
    TfArgLiteral('StepScaling'),
  );
  static const targettrackingscaling = AutoscalingPolicyType._(
    TfArgLiteral('TargetTrackingScaling'),
  );

  static const List<AutoscalingPolicyType> values = [
    predictivescaling,
    simplescaling,
    stepscaling,
    targettrackingscaling,
  ];
}

/// At most one of `scaling_adjustment`, `step_adjustment` on `aws_autoscaling_policy`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.scalingAdjustment(...)`.
sealed class AutoscalingPolicyAdjustment {
  const AutoscalingPolicyAdjustment();

  /// Sets `scaling_adjustment`.
  const factory AutoscalingPolicyAdjustment.scalingAdjustment(
    TfArg<num> scalingAdjustment,
  ) = AutoscalingPolicyScalingAdjustment;

  /// Sets `step_adjustment`.
  const factory AutoscalingPolicyAdjustment.stepAdjustment(
    List<AutoscalingPolicyStepAdjustment> stepAdjustment,
  ) = AutoscalingPolicyStepAdjustmentChoice;

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

/// The [AutoscalingPolicyAdjustment.scalingAdjustment] choice: sets `scaling_adjustment`.
final class AutoscalingPolicyScalingAdjustment
    extends AutoscalingPolicyAdjustment {
  const AutoscalingPolicyScalingAdjustment(this.scalingAdjustment);

  final TfArg<num> scalingAdjustment;

  @internal
  @override
  String get blockKey => 'scaling_adjustment';

  @internal
  @override
  Map<String, Object?> encode() => {
    'scaling_adjustment': scalingAdjustment.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'scaling_adjustment': scalingAdjustment,
  };
}

/// The [AutoscalingPolicyAdjustment.stepAdjustment] choice: sets `step_adjustment`.
final class AutoscalingPolicyStepAdjustmentChoice
    extends AutoscalingPolicyAdjustment {
  const AutoscalingPolicyStepAdjustmentChoice(this.stepAdjustment);

  final List<AutoscalingPolicyStepAdjustment> stepAdjustment;

  @internal
  @override
  String get blockKey => 'step_adjustment';

  @internal
  @override
  Map<String, Object?> encode() => {
    'step_adjustment': [for (final e in stepAdjustment) e.encode()],
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'step_adjustment': TfArg.literal([
      for (final e in stepAdjustment) e.encode(),
    ]),
  };
}

/// Typed helper for the `predictive_scaling_configuration` block of
/// `aws_autoscaling_policy` (derived from provider schema).
@immutable
final class AutoscalingPolicyPredictiveScalingConfiguration {
  const AutoscalingPolicyPredictiveScalingConfiguration({
    this.maxCapacityBreachBehavior,
    this.maxCapacityBuffer,
    this.mode,
    this.schedulingBufferTime,
    required this.metricSpecification,
  });

  final AutoscalingPolicyMaxCapacityBreachBehavior? maxCapacityBreachBehavior;

  final TfArg<String>? maxCapacityBuffer;

  final AutoscalingPolicyMode? mode;

  final TfArg<String>? schedulingBufferTime;

  final AutoscalingPolicyPredictiveScalingConfigurationMetricSpecification
  metricSpecification;

  @internal
  Map<String, Object?> encode() => {
    'max_capacity_breach_behavior': ?maxCapacityBreachBehavior?.toTfJson(),
    'max_capacity_buffer': ?maxCapacityBuffer?.toTfJson(),
    'mode': ?mode?.toTfJson(),
    'scheduling_buffer_time': ?schedulingBufferTime?.toTfJson(),
    'metric_specification': metricSpecification.encode(),
  };
}

/// `max_capacity_breach_behavior` — derived from the provider schema description.
extension type const AutoscalingPolicyMaxCapacityBreachBehavior._(
  TfArg<String> _
) implements TfArg<String> {
  AutoscalingPolicyMaxCapacityBreachBehavior.variable(String name)
    : this._(TfArg.variable(name));
  AutoscalingPolicyMaxCapacityBreachBehavior.expression(String template)
    : this._(TfArg.expression(template));
  const AutoscalingPolicyMaxCapacityBreachBehavior.arg(TfArg<String> arg)
    : this._(arg);

  static const honormaxcapacity = AutoscalingPolicyMaxCapacityBreachBehavior._(
    TfArgLiteral('HonorMaxCapacity'),
  );
  static const increasemaxcapacity =
      AutoscalingPolicyMaxCapacityBreachBehavior._(
        TfArgLiteral('IncreaseMaxCapacity'),
      );

  static const List<AutoscalingPolicyMaxCapacityBreachBehavior> values = [
    honormaxcapacity,
    increasemaxcapacity,
  ];
}

/// `mode` — derived from the provider schema description.
extension type const AutoscalingPolicyMode._(TfArg<String> _)
    implements TfArg<String> {
  AutoscalingPolicyMode.variable(String name) : this._(TfArg.variable(name));
  AutoscalingPolicyMode.expression(String template)
    : this._(TfArg.expression(template));
  const AutoscalingPolicyMode.arg(TfArg<String> arg) : this._(arg);

  static const forecastandscale = AutoscalingPolicyMode._(
    TfArgLiteral('ForecastAndScale'),
  );
  static const forecastonly = AutoscalingPolicyMode._(
    TfArgLiteral('ForecastOnly'),
  );

  static const List<AutoscalingPolicyMode> values = [
    forecastandscale,
    forecastonly,
  ];
}

/// Typed helper for the `predictive_scaling_configuration.metric_specification` block of
/// `aws_autoscaling_policy` (derived from provider schema).
@immutable
final class AutoscalingPolicyPredictiveScalingConfigurationMetricSpecification {
  const AutoscalingPolicyPredictiveScalingConfigurationMetricSpecification({
    required this.targetValue,
    this.customizedCapacityMetricSpecification,
    this.customizedLoadMetricSpecification,
    this.scalingMetricSpecification,
    this.predefinedLoadMetricSpecification,
    this.predefinedMetricPairSpecification,
  });

  final TfArg<num> targetValue;

  final AutoscalingPolicyCustomizedCapacityMetricSpecification?
  customizedCapacityMetricSpecification;

  final AutoscalingPolicyCustomizedLoadMetricSpecification?
  customizedLoadMetricSpecification;

  final AutoscalingPolicyScalingMetricSpecification? scalingMetricSpecification;

  final AutoscalingPolicyPredefinedLoadMetricSpecification?
  predefinedLoadMetricSpecification;

  final AutoscalingPolicyPredefinedMetricPairSpecification?
  predefinedMetricPairSpecification;

  @internal
  Map<String, Object?> encode() => {
    'target_value': targetValue.toTfJson(),
    'customized_capacity_metric_specification':
        ?customizedCapacityMetricSpecification?.encode(),
    'customized_load_metric_specification': ?customizedLoadMetricSpecification
        ?.encode(),
    ...?scalingMetricSpecification?.encode(),
    'predefined_load_metric_specification': ?predefinedLoadMetricSpecification
        ?.encode(),
    'predefined_metric_pair_specification': ?predefinedMetricPairSpecification
        ?.encode(),
  };
}

/// At most one of `customized_scaling_metric_specification`, `predefined_scaling_metric_specification` on the `predictive_scaling_configuration.metric_specification` block of `aws_autoscaling_policy`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.customizedScalingMetricSpecification(...)`.
sealed class AutoscalingPolicyScalingMetricSpecification {
  const AutoscalingPolicyScalingMetricSpecification();

  /// Sets `customized_scaling_metric_specification`.
  const factory AutoscalingPolicyScalingMetricSpecification.customizedScalingMetricSpecification(
    AutoscalingPolicyCustomizedScalingMetricSpecification
    customizedScalingMetricSpecification,
  ) = AutoscalingPolicyCustomizedScalingMetricSpecificationChoice;

  /// Sets `predefined_scaling_metric_specification`.
  const factory AutoscalingPolicyScalingMetricSpecification.predefinedScalingMetricSpecification(
    AutoscalingPolicyPredefinedScalingMetricSpecification
    predefinedScalingMetricSpecification,
  ) = AutoscalingPolicyPredefinedScalingMetricSpecificationChoice;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [AutoscalingPolicyScalingMetricSpecification.customizedScalingMetricSpecification] choice: sets `customized_scaling_metric_specification`.
final class AutoscalingPolicyCustomizedScalingMetricSpecificationChoice
    extends AutoscalingPolicyScalingMetricSpecification {
  const AutoscalingPolicyCustomizedScalingMetricSpecificationChoice(
    this.customizedScalingMetricSpecification,
  );

  final AutoscalingPolicyCustomizedScalingMetricSpecification
  customizedScalingMetricSpecification;

  @internal
  @override
  String get blockKey => 'customized_scaling_metric_specification';

  @internal
  @override
  Map<String, Object?> encode() => {
    'customized_scaling_metric_specification':
        customizedScalingMetricSpecification.encode(),
  };
}

/// The [AutoscalingPolicyScalingMetricSpecification.predefinedScalingMetricSpecification] choice: sets `predefined_scaling_metric_specification`.
final class AutoscalingPolicyPredefinedScalingMetricSpecificationChoice
    extends AutoscalingPolicyScalingMetricSpecification {
  const AutoscalingPolicyPredefinedScalingMetricSpecificationChoice(
    this.predefinedScalingMetricSpecification,
  );

  final AutoscalingPolicyPredefinedScalingMetricSpecification
  predefinedScalingMetricSpecification;

  @internal
  @override
  String get blockKey => 'predefined_scaling_metric_specification';

  @internal
  @override
  Map<String, Object?> encode() => {
    'predefined_scaling_metric_specification':
        predefinedScalingMetricSpecification.encode(),
  };
}

/// Typed helper for the `predictive_scaling_configuration.metric_specification.customized_capacity_metric_specification` block of
/// `aws_autoscaling_policy` (derived from provider schema).
@immutable
final class AutoscalingPolicyCustomizedCapacityMetricSpecification {
  const AutoscalingPolicyCustomizedCapacityMetricSpecification({
    required this.metricDataQueries,
  });

  final List<AutoscalingPolicyMetricDataQueries> metricDataQueries;

  @internal
  Map<String, Object?> encode() => {
    'metric_data_queries': [for (final e in metricDataQueries) e.encode()],
  };
}

/// Typed helper for the `predictive_scaling_configuration.metric_specification.customized_capacity_metric_specification.metric_data_queries` block of
/// `aws_autoscaling_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AutoscalingPolicyMetricDataQueries {
  const AutoscalingPolicyMetricDataQueries({
    this.expression,
    required this.id,
    this.label,
    this.returnData,
    this.metricStat,
  });

  final TfArg<String>? expression;

  final TfArg<String> id;

  final TfArg<String>? label;

  final TfArg<bool>? returnData;

  final AutoscalingPolicyMetricDataQueriesMetricStat? metricStat;

  @internal
  Map<String, Object?> encode() => {
    'expression': ?expression?.toTfJson(),
    'id': id.toTfJson(),
    'label': ?label?.toTfJson(),
    'return_data': ?returnData?.toTfJson(),
    'metric_stat': ?metricStat?.encode(),
  };
}

/// Typed helper for the `predictive_scaling_configuration.metric_specification.customized_capacity_metric_specification.metric_data_queries.metric_stat` block of
/// `aws_autoscaling_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AutoscalingPolicyMetricDataQueriesMetricStat {
  const AutoscalingPolicyMetricDataQueriesMetricStat({
    required this.stat,
    this.unit,
    required this.metric,
  });

  final TfArg<String> stat;

  final TfArg<String>? unit;

  final AutoscalingPolicyMetric metric;

  @internal
  Map<String, Object?> encode() => {
    'stat': stat.toTfJson(),
    'unit': ?unit?.toTfJson(),
    'metric': metric.encode(),
  };
}

/// Typed helper for the `target_tracking_configuration.customized_metric_specification.metrics.metric_stat.metric` block of
/// `aws_autoscaling_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AutoscalingPolicyMetric {
  const AutoscalingPolicyMetric({
    required this.metricName,
    required this.namespace,
    this.dimensions,
  });

  final TfArg<String> metricName;

  final TfArg<String> namespace;

  final List<AutoscalingPolicyDimensions>? dimensions;

  @internal
  Map<String, Object?> encode() => {
    'metric_name': metricName.toTfJson(),
    'namespace': namespace.toTfJson(),
    if (dimensions != null)
      'dimensions': [for (final e in dimensions!) e.encode()],
  };
}

/// Typed helper for the `target_tracking_configuration.customized_metric_specification.metrics.metric_stat.metric.dimensions` block of
/// `aws_autoscaling_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AutoscalingPolicyDimensions {
  const AutoscalingPolicyDimensions({required this.name, required this.value});

  final TfArg<String> name;

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `predictive_scaling_configuration.metric_specification.customized_load_metric_specification` block of
/// `aws_autoscaling_policy` (derived from provider schema).
@immutable
final class AutoscalingPolicyCustomizedLoadMetricSpecification {
  const AutoscalingPolicyCustomizedLoadMetricSpecification({
    required this.metricDataQueries,
  });

  final List<AutoscalingPolicyMetricDataQueries> metricDataQueries;

  @internal
  Map<String, Object?> encode() => {
    'metric_data_queries': [for (final e in metricDataQueries) e.encode()],
  };
}

/// Typed helper for the `predictive_scaling_configuration.metric_specification.customized_scaling_metric_specification` block of
/// `aws_autoscaling_policy` (derived from provider schema).
@immutable
final class AutoscalingPolicyCustomizedScalingMetricSpecification {
  const AutoscalingPolicyCustomizedScalingMetricSpecification({
    required this.metricDataQueries,
  });

  final List<AutoscalingPolicyMetricDataQueries> metricDataQueries;

  @internal
  Map<String, Object?> encode() => {
    'metric_data_queries': [for (final e in metricDataQueries) e.encode()],
  };
}

/// Typed helper for the `predictive_scaling_configuration.metric_specification.predefined_load_metric_specification` block of
/// `aws_autoscaling_policy` (derived from provider schema).
@immutable
final class AutoscalingPolicyPredefinedLoadMetricSpecification {
  const AutoscalingPolicyPredefinedLoadMetricSpecification({
    required this.predefinedMetricType,
    this.resourceLabel,
  });

  final AutoscalingPolicyPredefinedLoadMetricSpecificationPredefinedMetricType
  predefinedMetricType;

  final TfArg<String>? resourceLabel;

  @internal
  Map<String, Object?> encode() => {
    'predefined_metric_type': predefinedMetricType.toTfJson(),
    'resource_label': ?resourceLabel?.toTfJson(),
  };
}

/// `predefined_metric_type` — derived from the provider schema description.
extension type const AutoscalingPolicyPredefinedLoadMetricSpecificationPredefinedMetricType._(
  TfArg<String> _
) implements TfArg<String> {
  AutoscalingPolicyPredefinedLoadMetricSpecificationPredefinedMetricType.variable(
    String name,
  ) : this._(TfArg.variable(name));
  AutoscalingPolicyPredefinedLoadMetricSpecificationPredefinedMetricType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const AutoscalingPolicyPredefinedLoadMetricSpecificationPredefinedMetricType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const asgtotalcpuutilization =
      AutoscalingPolicyPredefinedLoadMetricSpecificationPredefinedMetricType._(
        TfArgLiteral('ASGTotalCPUUtilization'),
      );
  static const asgtotalnetworkin =
      AutoscalingPolicyPredefinedLoadMetricSpecificationPredefinedMetricType._(
        TfArgLiteral('ASGTotalNetworkIn'),
      );
  static const asgtotalnetworkout =
      AutoscalingPolicyPredefinedLoadMetricSpecificationPredefinedMetricType._(
        TfArgLiteral('ASGTotalNetworkOut'),
      );
  static const albtargetgrouprequestcount =
      AutoscalingPolicyPredefinedLoadMetricSpecificationPredefinedMetricType._(
        TfArgLiteral('ALBTargetGroupRequestCount'),
      );

  static const List<
    AutoscalingPolicyPredefinedLoadMetricSpecificationPredefinedMetricType
  >
  values = [
    asgtotalcpuutilization,
    asgtotalnetworkin,
    asgtotalnetworkout,
    albtargetgrouprequestcount,
  ];
}

/// Typed helper for the `predictive_scaling_configuration.metric_specification.predefined_metric_pair_specification` block of
/// `aws_autoscaling_policy` (derived from provider schema).
@immutable
final class AutoscalingPolicyPredefinedMetricPairSpecification {
  const AutoscalingPolicyPredefinedMetricPairSpecification({
    required this.predefinedMetricType,
    this.resourceLabel,
  });

  final AutoscalingPolicyPredefinedMetricPairSpecificationPredefinedMetricType
  predefinedMetricType;

  final TfArg<String>? resourceLabel;

  @internal
  Map<String, Object?> encode() => {
    'predefined_metric_type': predefinedMetricType.toTfJson(),
    'resource_label': ?resourceLabel?.toTfJson(),
  };
}

/// `predefined_metric_type` — derived from the provider schema description.
extension type const AutoscalingPolicyPredefinedMetricPairSpecificationPredefinedMetricType._(
  TfArg<String> _
) implements TfArg<String> {
  AutoscalingPolicyPredefinedMetricPairSpecificationPredefinedMetricType.variable(
    String name,
  ) : this._(TfArg.variable(name));
  AutoscalingPolicyPredefinedMetricPairSpecificationPredefinedMetricType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const AutoscalingPolicyPredefinedMetricPairSpecificationPredefinedMetricType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const asgcpuutilization =
      AutoscalingPolicyPredefinedMetricPairSpecificationPredefinedMetricType._(
        TfArgLiteral('ASGCPUUtilization'),
      );
  static const asgnetworkin =
      AutoscalingPolicyPredefinedMetricPairSpecificationPredefinedMetricType._(
        TfArgLiteral('ASGNetworkIn'),
      );
  static const asgnetworkout =
      AutoscalingPolicyPredefinedMetricPairSpecificationPredefinedMetricType._(
        TfArgLiteral('ASGNetworkOut'),
      );
  static const albrequestcount =
      AutoscalingPolicyPredefinedMetricPairSpecificationPredefinedMetricType._(
        TfArgLiteral('ALBRequestCount'),
      );

  static const List<
    AutoscalingPolicyPredefinedMetricPairSpecificationPredefinedMetricType
  >
  values = [asgcpuutilization, asgnetworkin, asgnetworkout, albrequestcount];
}

/// Typed helper for the `predictive_scaling_configuration.metric_specification.predefined_scaling_metric_specification` block of
/// `aws_autoscaling_policy` (derived from provider schema).
@immutable
final class AutoscalingPolicyPredefinedScalingMetricSpecification {
  const AutoscalingPolicyPredefinedScalingMetricSpecification({
    required this.predefinedMetricType,
    this.resourceLabel,
  });

  final AutoscalingPolicyPredefinedScalingMetricSpecificationPredefinedMetricType
  predefinedMetricType;

  final TfArg<String>? resourceLabel;

  @internal
  Map<String, Object?> encode() => {
    'predefined_metric_type': predefinedMetricType.toTfJson(),
    'resource_label': ?resourceLabel?.toTfJson(),
  };
}

/// `predefined_metric_type` — derived from the provider schema description.
extension type const AutoscalingPolicyPredefinedScalingMetricSpecificationPredefinedMetricType._(
  TfArg<String> _
) implements TfArg<String> {
  AutoscalingPolicyPredefinedScalingMetricSpecificationPredefinedMetricType.variable(
    String name,
  ) : this._(TfArg.variable(name));
  AutoscalingPolicyPredefinedScalingMetricSpecificationPredefinedMetricType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const AutoscalingPolicyPredefinedScalingMetricSpecificationPredefinedMetricType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const asgaveragecpuutilization =
      AutoscalingPolicyPredefinedScalingMetricSpecificationPredefinedMetricType._(
        TfArgLiteral('ASGAverageCPUUtilization'),
      );
  static const asgaveragenetworkin =
      AutoscalingPolicyPredefinedScalingMetricSpecificationPredefinedMetricType._(
        TfArgLiteral('ASGAverageNetworkIn'),
      );
  static const asgaveragenetworkout =
      AutoscalingPolicyPredefinedScalingMetricSpecificationPredefinedMetricType._(
        TfArgLiteral('ASGAverageNetworkOut'),
      );
  static const albrequestcountpertarget =
      AutoscalingPolicyPredefinedScalingMetricSpecificationPredefinedMetricType._(
        TfArgLiteral('ALBRequestCountPerTarget'),
      );

  static const List<
    AutoscalingPolicyPredefinedScalingMetricSpecificationPredefinedMetricType
  >
  values = [
    asgaveragecpuutilization,
    asgaveragenetworkin,
    asgaveragenetworkout,
    albrequestcountpertarget,
  ];
}

/// Typed helper for the `step_adjustment` block of
/// `aws_autoscaling_policy` (derived from provider schema).
@immutable
final class AutoscalingPolicyStepAdjustment {
  const AutoscalingPolicyStepAdjustment({
    this.metricIntervalLowerBound,
    this.metricIntervalUpperBound,
    required this.scalingAdjustment,
  });

  final TfArg<String>? metricIntervalLowerBound;

  final TfArg<String>? metricIntervalUpperBound;

  final TfArg<num> scalingAdjustment;

  @internal
  Map<String, Object?> encode() => {
    'metric_interval_lower_bound': ?metricIntervalLowerBound?.toTfJson(),
    'metric_interval_upper_bound': ?metricIntervalUpperBound?.toTfJson(),
    'scaling_adjustment': scalingAdjustment.toTfJson(),
  };
}

/// Typed helper for the `target_tracking_configuration` block of
/// `aws_autoscaling_policy` (derived from provider schema).
@immutable
final class AutoscalingPolicyTargetTrackingConfiguration {
  const AutoscalingPolicyTargetTrackingConfiguration({
    this.disableScaleIn,
    required this.targetValue,
    this.metricSpecification,
  });

  final TfArg<bool>? disableScaleIn;

  final TfArg<num> targetValue;

  final AutoscalingPolicyTargetTrackingConfigurationMetricSpecification?
  metricSpecification;

  @internal
  Map<String, Object?> encode() => {
    'disable_scale_in': ?disableScaleIn?.toTfJson(),
    'target_value': targetValue.toTfJson(),
    ...?metricSpecification?.encode(),
  };
}

/// At most one of `customized_metric_specification`, `predefined_metric_specification` on the `target_tracking_configuration` block of `aws_autoscaling_policy`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.customizedMetricSpecification(...)`.
sealed class AutoscalingPolicyTargetTrackingConfigurationMetricSpecification {
  const AutoscalingPolicyTargetTrackingConfigurationMetricSpecification();

  /// Sets `customized_metric_specification`.
  const factory AutoscalingPolicyTargetTrackingConfigurationMetricSpecification.customizedMetricSpecification(
    AutoscalingPolicyCustomizedMetricSpecification
    customizedMetricSpecification,
  ) = AutoscalingPolicyTargetTrackingConfigurationCustomizedMetricSpecification;

  /// Sets `predefined_metric_specification`.
  const factory AutoscalingPolicyTargetTrackingConfigurationMetricSpecification.predefinedMetricSpecification(
    AutoscalingPolicyPredefinedMetricSpecification
    predefinedMetricSpecification,
  ) = AutoscalingPolicyTargetTrackingConfigurationPredefinedMetricSpecification;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [AutoscalingPolicyTargetTrackingConfigurationMetricSpecification.customizedMetricSpecification] choice: sets `customized_metric_specification`.
final class AutoscalingPolicyTargetTrackingConfigurationCustomizedMetricSpecification
    extends AutoscalingPolicyTargetTrackingConfigurationMetricSpecification {
  const AutoscalingPolicyTargetTrackingConfigurationCustomizedMetricSpecification(
    this.customizedMetricSpecification,
  );

  final AutoscalingPolicyCustomizedMetricSpecification
  customizedMetricSpecification;

  @internal
  @override
  String get blockKey => 'customized_metric_specification';

  @internal
  @override
  Map<String, Object?> encode() => {
    'customized_metric_specification': customizedMetricSpecification.encode(),
  };
}

/// The [AutoscalingPolicyTargetTrackingConfigurationMetricSpecification.predefinedMetricSpecification] choice: sets `predefined_metric_specification`.
final class AutoscalingPolicyTargetTrackingConfigurationPredefinedMetricSpecification
    extends AutoscalingPolicyTargetTrackingConfigurationMetricSpecification {
  const AutoscalingPolicyTargetTrackingConfigurationPredefinedMetricSpecification(
    this.predefinedMetricSpecification,
  );

  final AutoscalingPolicyPredefinedMetricSpecification
  predefinedMetricSpecification;

  @internal
  @override
  String get blockKey => 'predefined_metric_specification';

  @internal
  @override
  Map<String, Object?> encode() => {
    'predefined_metric_specification': predefinedMetricSpecification.encode(),
  };
}

/// Typed helper for the `target_tracking_configuration.customized_metric_specification` block of
/// `aws_autoscaling_policy` (derived from provider schema).
@immutable
final class AutoscalingPolicyCustomizedMetricSpecification {
  const AutoscalingPolicyCustomizedMetricSpecification({
    this.metricName,
    this.namespace,
    this.period,
    this.statistic,
    this.unit,
    this.metricDimension,
    this.metrics,
  });

  final TfArg<String>? metricName;

  final TfArg<String>? namespace;

  final TfArg<num>? period;

  final TfArg<String>? statistic;

  final TfArg<String>? unit;

  final List<AutoscalingPolicyMetricDimension>? metricDimension;

  final List<AutoscalingPolicyMetrics>? metrics;

  @internal
  Map<String, Object?> encode() => {
    'metric_name': ?metricName?.toTfJson(),
    'namespace': ?namespace?.toTfJson(),
    'period': ?period?.toTfJson(),
    'statistic': ?statistic?.toTfJson(),
    'unit': ?unit?.toTfJson(),
    if (metricDimension != null)
      'metric_dimension': [for (final e in metricDimension!) e.encode()],
    if (metrics != null) 'metrics': [for (final e in metrics!) e.encode()],
  };
}

/// Typed helper for the `target_tracking_configuration.customized_metric_specification.metric_dimension` block of
/// `aws_autoscaling_policy` (derived from provider schema).
@immutable
final class AutoscalingPolicyMetricDimension {
  const AutoscalingPolicyMetricDimension({
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

/// Typed helper for the `target_tracking_configuration.customized_metric_specification.metrics` block of
/// `aws_autoscaling_policy` (derived from provider schema).
@immutable
final class AutoscalingPolicyMetrics {
  const AutoscalingPolicyMetrics({
    this.expression,
    required this.id,
    this.label,
    this.returnData,
    this.metricStat,
  });

  final TfArg<String>? expression;

  final TfArg<String> id;

  final TfArg<String>? label;

  final TfArg<bool>? returnData;

  final AutoscalingPolicyMetricStat? metricStat;

  @internal
  Map<String, Object?> encode() => {
    'expression': ?expression?.toTfJson(),
    'id': id.toTfJson(),
    'label': ?label?.toTfJson(),
    'return_data': ?returnData?.toTfJson(),
    'metric_stat': ?metricStat?.encode(),
  };
}

/// Typed helper for the `target_tracking_configuration.customized_metric_specification.metrics.metric_stat` block of
/// `aws_autoscaling_policy` (derived from provider schema).
@immutable
final class AutoscalingPolicyMetricStat {
  const AutoscalingPolicyMetricStat({
    this.period,
    required this.stat,
    this.unit,
    required this.metric,
  });

  final TfArg<num>? period;

  final TfArg<String> stat;

  final TfArg<String>? unit;

  final AutoscalingPolicyMetric metric;

  @internal
  Map<String, Object?> encode() => {
    'period': ?period?.toTfJson(),
    'stat': stat.toTfJson(),
    'unit': ?unit?.toTfJson(),
    'metric': metric.encode(),
  };
}

/// Typed helper for the `target_tracking_configuration.predefined_metric_specification` block of
/// `aws_autoscaling_policy` (derived from provider schema).
@immutable
final class AutoscalingPolicyPredefinedMetricSpecification {
  const AutoscalingPolicyPredefinedMetricSpecification({
    required this.predefinedMetricType,
    this.resourceLabel,
  });

  final TfArg<String> predefinedMetricType;

  final TfArg<String>? resourceLabel;

  @internal
  Map<String, Object?> encode() => {
    'predefined_metric_type': predefinedMetricType.toTfJson(),
    'resource_label': ?resourceLabel?.toTfJson(),
  };
}

/// Factory wrapper for `aws_autoscaling_policy`.
final class AwsAutoscalingPolicy extends Resource {
  static const String tfType = 'aws_autoscaling_policy';

  AwsAutoscalingPolicy(
    super.localName, {
    TfArg<String>? adjustmentType,
    required TfArg<String> autoscalingGroupName,
    TfArg<num>? cooldown,
    TfArg<bool>? enabled,
    TfArg<num>? estimatedInstanceWarmup,
    TfArg<String>? metricAggregationType,
    TfArg<num>? minAdjustmentMagnitude,
    required TfArg<String> name,
    AutoscalingPolicyType? policyType,
    TfArg<String>? region,
    AutoscalingPolicyAdjustment? adjustment,
    AutoscalingPolicyPredictiveScalingConfiguration?
    predictiveScalingConfiguration,
    AutoscalingPolicyTargetTrackingConfiguration? targetTrackingConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'adjustment_type': ?adjustmentType,
           'autoscaling_group_name': autoscalingGroupName,
           'cooldown': ?cooldown,
           'enabled': ?enabled,
           'estimated_instance_warmup': ?estimatedInstanceWarmup,
           'metric_aggregation_type': ?metricAggregationType,
           'min_adjustment_magnitude': ?minAdjustmentMagnitude,
           'name': name,
           'policy_type': ?policyType,
           'region': ?region,
           ...?adjustment?.argMap,
           if (predictiveScalingConfiguration != null)
             'predictive_scaling_configuration': TfArg.literal(
               predictiveScalingConfiguration.encode(),
             ),
           if (targetTrackingConfiguration != null)
             'target_tracking_configuration': TfArg.literal(
               targetTrackingConfiguration.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAutoscalingPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAutoscalingPolicy>`.
  RefTo<AwsAutoscalingPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `adjustment_type` attribute.
  TfRef<String> get adjustmentType =>
      TfRef.attribute<String>(this, 'adjustment_type');

  /// Reference to `autoscaling_group_name` attribute.
  TfRef<String> get autoscalingGroupName =>
      TfRef.attribute<String>(this, 'autoscaling_group_name');

  /// Reference to `cooldown` attribute.
  TfRef<num> get cooldown => TfRef.attribute<num>(this, 'cooldown');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `estimated_instance_warmup` attribute.
  TfRef<num> get estimatedInstanceWarmup =>
      TfRef.attribute<num>(this, 'estimated_instance_warmup');

  /// Reference to `metric_aggregation_type` attribute.
  TfRef<String> get metricAggregationType =>
      TfRef.attribute<String>(this, 'metric_aggregation_type');

  /// Reference to `min_adjustment_magnitude` attribute.
  TfRef<num> get minAdjustmentMagnitude =>
      TfRef.attribute<num>(this, 'min_adjustment_magnitude');

  /// Reference to `policy_type` attribute.
  TfRef<String> get policyType => TfRef.attribute<String>(this, 'policy_type');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `scaling_adjustment` attribute.
  TfRef<num> get scalingAdjustment =>
      TfRef.attribute<num>(this, 'scaling_adjustment');
}
