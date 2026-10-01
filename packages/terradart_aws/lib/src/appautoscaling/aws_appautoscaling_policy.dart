// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_appautoscaling_policy`.
const Set<String> _awsAppautoscalingPolicySensitive = <String>{};

/// Appautoscaling Policy enum for `policy_type`.
extension type const AppautoscalingPolicyType._(TfArg<String> _)
    implements TfArg<String> {
  AppautoscalingPolicyType.variable(String name) : this._(TfArg.variable(name));
  AppautoscalingPolicyType.expression(String template)
    : this._(TfArg.expression(template));
  const AppautoscalingPolicyType.arg(TfArg<String> arg) : this._(arg);

  static const stepscaling = AppautoscalingPolicyType._(
    TfArgLiteral('StepScaling'),
  );
  static const targettrackingscaling = AppautoscalingPolicyType._(
    TfArgLiteral('TargetTrackingScaling'),
  );
  static const predictivescaling = AppautoscalingPolicyType._(
    TfArgLiteral('PredictiveScaling'),
  );

  static const List<AppautoscalingPolicyType> values = [
    stepscaling,
    targettrackingscaling,
    predictivescaling,
  ];
}

/// Typed helper for the `predictive_scaling_policy_configuration` block of
/// `aws_appautoscaling_policy` (derived from provider schema).
@immutable
final class AppautoscalingPolicyPredictiveScalingPolicyConfiguration {
  const AppautoscalingPolicyPredictiveScalingPolicyConfiguration({
    this.maxCapacityBreachBehavior,
    this.maxCapacityBuffer,
    this.mode,
    this.schedulingBufferTime,
    required this.metricSpecification,
  });

  final AppautoscalingPolicyMaxCapacityBreachBehavior?
  maxCapacityBreachBehavior;

  final TfArg<num>? maxCapacityBuffer;

  final AppautoscalingPolicyMode? mode;

  final TfArg<num>? schedulingBufferTime;

  final List<
    AppautoscalingPolicyPredictiveScalingPolicyConfigurationMetricSpecification
  >
  metricSpecification;

  Map<String, Object?> encode() => {
    'max_capacity_breach_behavior': ?maxCapacityBreachBehavior?.toTfJson(),
    'max_capacity_buffer': ?maxCapacityBuffer?.toTfJson(),
    'mode': ?mode?.toTfJson(),
    'scheduling_buffer_time': ?schedulingBufferTime?.toTfJson(),
    'metric_specification': [for (final e in metricSpecification) e.encode()],
  };
}

/// `max_capacity_breach_behavior` — derived from the provider schema description.
extension type const AppautoscalingPolicyMaxCapacityBreachBehavior._(
  TfArg<String> _
) implements TfArg<String> {
  AppautoscalingPolicyMaxCapacityBreachBehavior.variable(String name)
    : this._(TfArg.variable(name));
  AppautoscalingPolicyMaxCapacityBreachBehavior.expression(String template)
    : this._(TfArg.expression(template));
  const AppautoscalingPolicyMaxCapacityBreachBehavior.arg(TfArg<String> arg)
    : this._(arg);

  static const honormaxcapacity =
      AppautoscalingPolicyMaxCapacityBreachBehavior._(
        TfArgLiteral('HonorMaxCapacity'),
      );
  static const increasemaxcapacity =
      AppautoscalingPolicyMaxCapacityBreachBehavior._(
        TfArgLiteral('IncreaseMaxCapacity'),
      );

  static const List<AppautoscalingPolicyMaxCapacityBreachBehavior> values = [
    honormaxcapacity,
    increasemaxcapacity,
  ];
}

/// `mode` — derived from the provider schema description.
extension type const AppautoscalingPolicyMode._(TfArg<String> _)
    implements TfArg<String> {
  AppautoscalingPolicyMode.variable(String name) : this._(TfArg.variable(name));
  AppautoscalingPolicyMode.expression(String template)
    : this._(TfArg.expression(template));
  const AppautoscalingPolicyMode.arg(TfArg<String> arg) : this._(arg);

  static const forecastonly = AppautoscalingPolicyMode._(
    TfArgLiteral('ForecastOnly'),
  );
  static const forecastandscale = AppautoscalingPolicyMode._(
    TfArgLiteral('ForecastAndScale'),
  );

  static const List<AppautoscalingPolicyMode> values = [
    forecastonly,
    forecastandscale,
  ];
}

/// Typed helper for the `predictive_scaling_policy_configuration.metric_specification` block of
/// `aws_appautoscaling_policy` (derived from provider schema).
@immutable
final class AppautoscalingPolicyPredictiveScalingPolicyConfigurationMetricSpecification {
  const AppautoscalingPolicyPredictiveScalingPolicyConfigurationMetricSpecification({
    required this.targetValue,
    this.customizedCapacityMetricSpecification,
    this.customizedLoadMetricSpecification,
    this.customizedScalingMetricSpecification,
    this.predefinedLoadMetricSpecification,
    this.predefinedMetricPairSpecification,
    this.predefinedScalingMetricSpecification,
  });

  final TfArg<String> targetValue;

  final AppautoscalingPolicyCustomizedCapacityMetricSpecification?
  customizedCapacityMetricSpecification;

  final AppautoscalingPolicyCustomizedLoadMetricSpecification?
  customizedLoadMetricSpecification;

  final AppautoscalingPolicyCustomizedScalingMetricSpecification?
  customizedScalingMetricSpecification;

  final AppautoscalingPolicyPredefinedLoadMetricSpecification?
  predefinedLoadMetricSpecification;

  final AppautoscalingPolicyPredefinedMetricPairSpecification?
  predefinedMetricPairSpecification;

  final AppautoscalingPolicyPredefinedScalingMetricSpecification?
  predefinedScalingMetricSpecification;

  Map<String, Object?> encode() => {
    'target_value': targetValue.toTfJson(),
    'customized_capacity_metric_specification':
        ?customizedCapacityMetricSpecification?.encode(),
    'customized_load_metric_specification': ?customizedLoadMetricSpecification
        ?.encode(),
    'customized_scaling_metric_specification':
        ?customizedScalingMetricSpecification?.encode(),
    'predefined_load_metric_specification': ?predefinedLoadMetricSpecification
        ?.encode(),
    'predefined_metric_pair_specification': ?predefinedMetricPairSpecification
        ?.encode(),
    'predefined_scaling_metric_specification':
        ?predefinedScalingMetricSpecification?.encode(),
  };
}

/// Typed helper for the `predictive_scaling_policy_configuration.metric_specification.customized_capacity_metric_specification` block of
/// `aws_appautoscaling_policy` (derived from provider schema).
@immutable
final class AppautoscalingPolicyCustomizedCapacityMetricSpecification {
  const AppautoscalingPolicyCustomizedCapacityMetricSpecification({
    required this.metricDataQuery,
  });

  final List<AppautoscalingPolicyMetricDataQuery> metricDataQuery;

  Map<String, Object?> encode() => {
    'metric_data_query': [for (final e in metricDataQuery) e.encode()],
  };
}

/// Typed helper for the `predictive_scaling_policy_configuration.metric_specification.customized_capacity_metric_specification.metric_data_query` block of
/// `aws_appautoscaling_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AppautoscalingPolicyMetricDataQuery {
  const AppautoscalingPolicyMetricDataQuery({
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

  final AppautoscalingPolicyMetricDataQueryMetricStat? metricStat;

  Map<String, Object?> encode() => {
    'expression': ?expression?.toTfJson(),
    'id': id.toTfJson(),
    'label': ?label?.toTfJson(),
    'return_data': ?returnData?.toTfJson(),
    'metric_stat': ?metricStat?.encode(),
  };
}

/// Typed helper for the `predictive_scaling_policy_configuration.metric_specification.customized_capacity_metric_specification.metric_data_query.metric_stat` block of
/// `aws_appautoscaling_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AppautoscalingPolicyMetricDataQueryMetricStat {
  const AppautoscalingPolicyMetricDataQueryMetricStat({
    required this.stat,
    this.unit,
    required this.metric,
  });

  final TfArg<String> stat;

  final TfArg<String>? unit;

  final AppautoscalingPolicyMetricStatMetric metric;

  Map<String, Object?> encode() => {
    'stat': stat.toTfJson(),
    'unit': ?unit?.toTfJson(),
    'metric': metric.encode(),
  };
}

/// Typed helper for the `predictive_scaling_policy_configuration.metric_specification.customized_capacity_metric_specification.metric_data_query.metric_stat.metric` block of
/// `aws_appautoscaling_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AppautoscalingPolicyMetricStatMetric {
  const AppautoscalingPolicyMetricStatMetric({
    this.metricName,
    this.namespace,
    this.dimension,
  });

  final TfArg<String>? metricName;

  final TfArg<String>? namespace;

  final List<AppautoscalingPolicyDimension>? dimension;

  Map<String, Object?> encode() => {
    'metric_name': ?metricName?.toTfJson(),
    'namespace': ?namespace?.toTfJson(),
    if (dimension != null)
      'dimension': [for (final e in dimension!) e.encode()],
  };
}

/// Typed helper for the `predictive_scaling_policy_configuration.metric_specification.customized_capacity_metric_specification.metric_data_query.metric_stat.metric.dimension` block of
/// `aws_appautoscaling_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AppautoscalingPolicyDimension {
  const AppautoscalingPolicyDimension({
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

/// Typed helper for the `predictive_scaling_policy_configuration.metric_specification.customized_load_metric_specification` block of
/// `aws_appautoscaling_policy` (derived from provider schema).
@immutable
final class AppautoscalingPolicyCustomizedLoadMetricSpecification {
  const AppautoscalingPolicyCustomizedLoadMetricSpecification({
    required this.metricDataQuery,
  });

  final List<AppautoscalingPolicyMetricDataQuery> metricDataQuery;

  Map<String, Object?> encode() => {
    'metric_data_query': [for (final e in metricDataQuery) e.encode()],
  };
}

/// Typed helper for the `predictive_scaling_policy_configuration.metric_specification.customized_scaling_metric_specification` block of
/// `aws_appautoscaling_policy` (derived from provider schema).
@immutable
final class AppautoscalingPolicyCustomizedScalingMetricSpecification {
  const AppautoscalingPolicyCustomizedScalingMetricSpecification({
    required this.metricDataQuery,
  });

  final List<AppautoscalingPolicyMetricDataQuery> metricDataQuery;

  Map<String, Object?> encode() => {
    'metric_data_query': [for (final e in metricDataQuery) e.encode()],
  };
}

/// Typed helper for the `predictive_scaling_policy_configuration.metric_specification.predefined_load_metric_specification` block of
/// `aws_appautoscaling_policy` (derived from provider schema).
@immutable
final class AppautoscalingPolicyPredefinedLoadMetricSpecification {
  const AppautoscalingPolicyPredefinedLoadMetricSpecification({
    required this.predefinedMetricType,
    this.resourceLabel,
  });

  final TfArg<String> predefinedMetricType;

  final TfArg<String>? resourceLabel;

  Map<String, Object?> encode() => {
    'predefined_metric_type': predefinedMetricType.toTfJson(),
    'resource_label': ?resourceLabel?.toTfJson(),
  };
}

/// Typed helper for the `predictive_scaling_policy_configuration.metric_specification.predefined_metric_pair_specification` block of
/// `aws_appautoscaling_policy` (derived from provider schema).
@immutable
final class AppautoscalingPolicyPredefinedMetricPairSpecification {
  const AppautoscalingPolicyPredefinedMetricPairSpecification({
    required this.predefinedMetricType,
    this.resourceLabel,
  });

  final TfArg<String> predefinedMetricType;

  final TfArg<String>? resourceLabel;

  Map<String, Object?> encode() => {
    'predefined_metric_type': predefinedMetricType.toTfJson(),
    'resource_label': ?resourceLabel?.toTfJson(),
  };
}

/// Typed helper for the `predictive_scaling_policy_configuration.metric_specification.predefined_scaling_metric_specification` block of
/// `aws_appautoscaling_policy` (derived from provider schema).
@immutable
final class AppautoscalingPolicyPredefinedScalingMetricSpecification {
  const AppautoscalingPolicyPredefinedScalingMetricSpecification({
    required this.predefinedMetricType,
    this.resourceLabel,
  });

  final TfArg<String> predefinedMetricType;

  final TfArg<String>? resourceLabel;

  Map<String, Object?> encode() => {
    'predefined_metric_type': predefinedMetricType.toTfJson(),
    'resource_label': ?resourceLabel?.toTfJson(),
  };
}

/// Typed helper for the `step_scaling_policy_configuration` block of
/// `aws_appautoscaling_policy` (derived from provider schema).
@immutable
final class AppautoscalingPolicyStepScalingPolicyConfiguration {
  const AppautoscalingPolicyStepScalingPolicyConfiguration({
    this.adjustmentType,
    this.cooldown,
    this.metricAggregationType,
    this.minAdjustmentMagnitude,
    this.stepAdjustment,
  });

  final AppautoscalingPolicyAdjustmentType? adjustmentType;

  final TfArg<num>? cooldown;

  final AppautoscalingPolicyMetricAggregationType? metricAggregationType;

  final TfArg<num>? minAdjustmentMagnitude;

  final List<AppautoscalingPolicyStepAdjustment>? stepAdjustment;

  Map<String, Object?> encode() => {
    'adjustment_type': ?adjustmentType?.toTfJson(),
    'cooldown': ?cooldown?.toTfJson(),
    'metric_aggregation_type': ?metricAggregationType?.toTfJson(),
    'min_adjustment_magnitude': ?minAdjustmentMagnitude?.toTfJson(),
    if (stepAdjustment != null)
      'step_adjustment': [for (final e in stepAdjustment!) e.encode()],
  };
}

/// `adjustment_type` — derived from the provider schema description.
extension type const AppautoscalingPolicyAdjustmentType._(TfArg<String> _)
    implements TfArg<String> {
  AppautoscalingPolicyAdjustmentType.variable(String name)
    : this._(TfArg.variable(name));
  AppautoscalingPolicyAdjustmentType.expression(String template)
    : this._(TfArg.expression(template));
  const AppautoscalingPolicyAdjustmentType.arg(TfArg<String> arg) : this._(arg);

  static const changeincapacity = AppautoscalingPolicyAdjustmentType._(
    TfArgLiteral('ChangeInCapacity'),
  );
  static const percentchangeincapacity = AppautoscalingPolicyAdjustmentType._(
    TfArgLiteral('PercentChangeInCapacity'),
  );
  static const exactcapacity = AppautoscalingPolicyAdjustmentType._(
    TfArgLiteral('ExactCapacity'),
  );

  static const List<AppautoscalingPolicyAdjustmentType> values = [
    changeincapacity,
    percentchangeincapacity,
    exactcapacity,
  ];
}

/// `metric_aggregation_type` — derived from the provider schema description.
extension type const AppautoscalingPolicyMetricAggregationType._(
  TfArg<String> _
) implements TfArg<String> {
  AppautoscalingPolicyMetricAggregationType.variable(String name)
    : this._(TfArg.variable(name));
  AppautoscalingPolicyMetricAggregationType.expression(String template)
    : this._(TfArg.expression(template));
  const AppautoscalingPolicyMetricAggregationType.arg(TfArg<String> arg)
    : this._(arg);

  static const average = AppautoscalingPolicyMetricAggregationType._(
    TfArgLiteral('Average'),
  );
  static const minimum = AppautoscalingPolicyMetricAggregationType._(
    TfArgLiteral('Minimum'),
  );
  static const maximum = AppautoscalingPolicyMetricAggregationType._(
    TfArgLiteral('Maximum'),
  );

  static const List<AppautoscalingPolicyMetricAggregationType> values = [
    average,
    minimum,
    maximum,
  ];
}

/// Typed helper for the `step_scaling_policy_configuration.step_adjustment` block of
/// `aws_appautoscaling_policy` (derived from provider schema).
@immutable
final class AppautoscalingPolicyStepAdjustment {
  const AppautoscalingPolicyStepAdjustment({
    this.metricIntervalLowerBound,
    this.metricIntervalUpperBound,
    required this.scalingAdjustment,
  });

  final TfArg<String>? metricIntervalLowerBound;

  final TfArg<String>? metricIntervalUpperBound;

  final TfArg<num> scalingAdjustment;

  Map<String, Object?> encode() => {
    'metric_interval_lower_bound': ?metricIntervalLowerBound?.toTfJson(),
    'metric_interval_upper_bound': ?metricIntervalUpperBound?.toTfJson(),
    'scaling_adjustment': scalingAdjustment.toTfJson(),
  };
}

/// Typed helper for the `target_tracking_scaling_policy_configuration` block of
/// `aws_appautoscaling_policy` (derived from provider schema).
@immutable
final class AppautoscalingPolicyTargetTrackingScalingPolicyConfiguration {
  const AppautoscalingPolicyTargetTrackingScalingPolicyConfiguration({
    this.disableScaleIn,
    this.scaleInCooldown,
    this.scaleOutCooldown,
    required this.targetValue,
    this.metricSpecification,
  });

  final TfArg<bool>? disableScaleIn;

  final TfArg<num>? scaleInCooldown;

  final TfArg<num>? scaleOutCooldown;

  final TfArg<num> targetValue;

  final AppautoscalingPolicyTargetTrackingScalingPolicyConfigurationMetricSpecification?
  metricSpecification;

  Map<String, Object?> encode() => {
    'disable_scale_in': ?disableScaleIn?.toTfJson(),
    'scale_in_cooldown': ?scaleInCooldown?.toTfJson(),
    'scale_out_cooldown': ?scaleOutCooldown?.toTfJson(),
    'target_value': targetValue.toTfJson(),
    ...?metricSpecification?.encode(),
  };
}

/// At most one of `customized_metric_specification`, `predefined_metric_specification` on the `target_tracking_scaling_policy_configuration` block of `aws_appautoscaling_policy`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.customizedMetricSpecification(...)`.
sealed class AppautoscalingPolicyTargetTrackingScalingPolicyConfigurationMetricSpecification {
  const AppautoscalingPolicyTargetTrackingScalingPolicyConfigurationMetricSpecification();

  /// Sets `customized_metric_specification`.
  const factory AppautoscalingPolicyTargetTrackingScalingPolicyConfigurationMetricSpecification.customizedMetricSpecification(
    AppautoscalingPolicyCustomizedMetricSpecification
    customizedMetricSpecification,
  ) = AppautoscalingPolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecification;

  /// Sets `predefined_metric_specification`.
  const factory AppautoscalingPolicyTargetTrackingScalingPolicyConfigurationMetricSpecification.predefinedMetricSpecification(
    AppautoscalingPolicyPredefinedMetricSpecification
    predefinedMetricSpecification,
  ) = AppautoscalingPolicyTargetTrackingScalingPolicyConfigurationPredefinedMetricSpecification;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [AppautoscalingPolicyTargetTrackingScalingPolicyConfigurationMetricSpecification.customizedMetricSpecification] choice: sets `customized_metric_specification`.
final class AppautoscalingPolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecification
    extends
        AppautoscalingPolicyTargetTrackingScalingPolicyConfigurationMetricSpecification {
  const AppautoscalingPolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecification(
    this.customizedMetricSpecification,
  );

  final AppautoscalingPolicyCustomizedMetricSpecification
  customizedMetricSpecification;

  @override
  String get blockKey => 'customized_metric_specification';

  @override
  Map<String, Object?> encode() => {
    'customized_metric_specification': customizedMetricSpecification.encode(),
  };
}

/// The [AppautoscalingPolicyTargetTrackingScalingPolicyConfigurationMetricSpecification.predefinedMetricSpecification] choice: sets `predefined_metric_specification`.
final class AppautoscalingPolicyTargetTrackingScalingPolicyConfigurationPredefinedMetricSpecification
    extends
        AppautoscalingPolicyTargetTrackingScalingPolicyConfigurationMetricSpecification {
  const AppautoscalingPolicyTargetTrackingScalingPolicyConfigurationPredefinedMetricSpecification(
    this.predefinedMetricSpecification,
  );

  final AppautoscalingPolicyPredefinedMetricSpecification
  predefinedMetricSpecification;

  @override
  String get blockKey => 'predefined_metric_specification';

  @override
  Map<String, Object?> encode() => {
    'predefined_metric_specification': predefinedMetricSpecification.encode(),
  };
}

/// Typed helper for the `target_tracking_scaling_policy_configuration.customized_metric_specification` block of
/// `aws_appautoscaling_policy` (derived from provider schema).
@immutable
final class AppautoscalingPolicyCustomizedMetricSpecification {
  const AppautoscalingPolicyCustomizedMetricSpecification({
    this.metricName,
    this.namespace,
    this.statistic,
    this.unit,
    this.dimensions,
    this.metrics,
  });

  final TfArg<String>? metricName;

  final TfArg<String>? namespace;

  final AppautoscalingPolicyStatistic? statistic;

  final TfArg<String>? unit;

  final List<AppautoscalingPolicyDimensions>? dimensions;

  final List<AppautoscalingPolicyMetrics>? metrics;

  Map<String, Object?> encode() => {
    'metric_name': ?metricName?.toTfJson(),
    'namespace': ?namespace?.toTfJson(),
    'statistic': ?statistic?.toTfJson(),
    'unit': ?unit?.toTfJson(),
    if (dimensions != null)
      'dimensions': [for (final e in dimensions!) e.encode()],
    if (metrics != null) 'metrics': [for (final e in metrics!) e.encode()],
  };
}

/// `statistic` — derived from the provider schema description.
extension type const AppautoscalingPolicyStatistic._(TfArg<String> _)
    implements TfArg<String> {
  AppautoscalingPolicyStatistic.variable(String name)
    : this._(TfArg.variable(name));
  AppautoscalingPolicyStatistic.expression(String template)
    : this._(TfArg.expression(template));
  const AppautoscalingPolicyStatistic.arg(TfArg<String> arg) : this._(arg);

  static const average = AppautoscalingPolicyStatistic._(
    TfArgLiteral('Average'),
  );
  static const minimum = AppautoscalingPolicyStatistic._(
    TfArgLiteral('Minimum'),
  );
  static const maximum = AppautoscalingPolicyStatistic._(
    TfArgLiteral('Maximum'),
  );
  static const samplecount = AppautoscalingPolicyStatistic._(
    TfArgLiteral('SampleCount'),
  );
  static const sum = AppautoscalingPolicyStatistic._(TfArgLiteral('Sum'));

  static const List<AppautoscalingPolicyStatistic> values = [
    average,
    minimum,
    maximum,
    samplecount,
    sum,
  ];
}

/// Typed helper for the `target_tracking_scaling_policy_configuration.customized_metric_specification.dimensions` block of
/// `aws_appautoscaling_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AppautoscalingPolicyDimensions {
  const AppautoscalingPolicyDimensions({
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

/// Typed helper for the `target_tracking_scaling_policy_configuration.customized_metric_specification.metrics` block of
/// `aws_appautoscaling_policy` (derived from provider schema).
@immutable
final class AppautoscalingPolicyMetrics {
  const AppautoscalingPolicyMetrics({
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

  final AppautoscalingPolicyMetricStat? metricStat;

  Map<String, Object?> encode() => {
    'expression': ?expression?.toTfJson(),
    'id': id.toTfJson(),
    'label': ?label?.toTfJson(),
    'return_data': ?returnData?.toTfJson(),
    'metric_stat': ?metricStat?.encode(),
  };
}

/// Typed helper for the `target_tracking_scaling_policy_configuration.customized_metric_specification.metrics.metric_stat` block of
/// `aws_appautoscaling_policy` (derived from provider schema).
@immutable
final class AppautoscalingPolicyMetricStat {
  const AppautoscalingPolicyMetricStat({
    required this.stat,
    this.unit,
    required this.metric,
  });

  final TfArg<String> stat;

  final TfArg<String>? unit;

  final AppautoscalingPolicyMetric metric;

  Map<String, Object?> encode() => {
    'stat': stat.toTfJson(),
    'unit': ?unit?.toTfJson(),
    'metric': metric.encode(),
  };
}

/// Typed helper for the `target_tracking_scaling_policy_configuration.customized_metric_specification.metrics.metric_stat.metric` block of
/// `aws_appautoscaling_policy` (derived from provider schema).
@immutable
final class AppautoscalingPolicyMetric {
  const AppautoscalingPolicyMetric({
    required this.metricName,
    required this.namespace,
    this.dimensions,
  });

  final TfArg<String> metricName;

  final TfArg<String> namespace;

  final List<AppautoscalingPolicyDimensions>? dimensions;

  Map<String, Object?> encode() => {
    'metric_name': metricName.toTfJson(),
    'namespace': namespace.toTfJson(),
    if (dimensions != null)
      'dimensions': [for (final e in dimensions!) e.encode()],
  };
}

/// Typed helper for the `target_tracking_scaling_policy_configuration.predefined_metric_specification` block of
/// `aws_appautoscaling_policy` (derived from provider schema).
@immutable
final class AppautoscalingPolicyPredefinedMetricSpecification {
  const AppautoscalingPolicyPredefinedMetricSpecification({
    required this.predefinedMetricType,
    this.resourceLabel,
  });

  final TfArg<String> predefinedMetricType;

  final TfArg<String>? resourceLabel;

  Map<String, Object?> encode() => {
    'predefined_metric_type': predefinedMetricType.toTfJson(),
    'resource_label': ?resourceLabel?.toTfJson(),
  };
}

/// Factory wrapper for `aws_appautoscaling_policy`.
final class AwsAppautoscalingPolicy extends Resource {
  static const String tfType = 'aws_appautoscaling_policy';

  AwsAppautoscalingPolicy(
    super.localName, {
    required TfArg<String> name,
    AppautoscalingPolicyType? policyType,
    TfArg<String>? region,
    required TfArg<String> resourceId,
    required TfArg<String> scalableDimension,
    required TfArg<String> serviceNamespace,
    AppautoscalingPolicyPredictiveScalingPolicyConfiguration?
    predictiveScalingPolicyConfiguration,
    AppautoscalingPolicyStepScalingPolicyConfiguration?
    stepScalingPolicyConfiguration,
    AppautoscalingPolicyTargetTrackingScalingPolicyConfiguration?
    targetTrackingScalingPolicyConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'policy_type': ?policyType,
           'region': ?region,
           'resource_id': resourceId,
           'scalable_dimension': scalableDimension,
           'service_namespace': serviceNamespace,
           if (predictiveScalingPolicyConfiguration != null)
             'predictive_scaling_policy_configuration': TfArg.literal(
               predictiveScalingPolicyConfiguration.encode(),
             ),
           if (stepScalingPolicyConfiguration != null)
             'step_scaling_policy_configuration': TfArg.literal(
               stepScalingPolicyConfiguration.encode(),
             ),
           if (targetTrackingScalingPolicyConfiguration != null)
             'target_tracking_scaling_policy_configuration': TfArg.literal(
               targetTrackingScalingPolicyConfiguration.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppautoscalingPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAppautoscalingPolicy>`.
  RefTo<AwsAppautoscalingPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `alarm_arns` attribute.
  TfRef<List<String>> get alarmArns =>
      TfRef.attribute<List<String>>(this, 'alarm_arns');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `policy_type` attribute.
  TfRef<String> get policyType => TfRef.attribute<String>(this, 'policy_type');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_id` attribute.
  TfRef<String> get resourceId => TfRef.attribute<String>(this, 'resource_id');

  /// Reference to `scalable_dimension` attribute.
  TfRef<String> get scalableDimension =>
      TfRef.attribute<String>(this, 'scalable_dimension');

  /// Reference to `service_namespace` attribute.
  TfRef<String> get serviceNamespace =>
      TfRef.attribute<String>(this, 'service_namespace');
}
