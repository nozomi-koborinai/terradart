// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_autoscaling_policy`.
const Set<String> _awsAutoscalingPolicySensitive = <String>{};

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

  final TfArg<String>? maxCapacityBreachBehavior;

  final TfArg<String>? maxCapacityBuffer;

  final TfArg<String>? mode;

  final TfArg<String>? schedulingBufferTime;

  final AutoscalingPolicyPredictiveScalingConfigurationMetricSpecification
  metricSpecification;

  Map<String, Object?> encode() => {
    if (maxCapacityBreachBehavior != null)
      'max_capacity_breach_behavior': maxCapacityBreachBehavior!.toTfJson(),
    if (maxCapacityBuffer != null)
      'max_capacity_buffer': maxCapacityBuffer!.toTfJson(),
    if (mode != null) 'mode': mode!.toTfJson(),
    if (schedulingBufferTime != null)
      'scheduling_buffer_time': schedulingBufferTime!.toTfJson(),
    'metric_specification': metricSpecification.encode(),
  };
}

/// Typed helper for the `predictive_scaling_configuration.metric_specification` block of
/// `aws_autoscaling_policy` (derived from provider schema).
@immutable
final class AutoscalingPolicyPredictiveScalingConfigurationMetricSpecification {
  const AutoscalingPolicyPredictiveScalingConfigurationMetricSpecification({
    required this.targetValue,
    this.customizedCapacityMetricSpecification,
    this.customizedLoadMetricSpecification,
    this.customizedScalingMetricSpecification,
    this.predefinedLoadMetricSpecification,
    this.predefinedMetricPairSpecification,
    this.predefinedScalingMetricSpecification,
  });

  final TfArg<num> targetValue;

  final AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecification?
  customizedCapacityMetricSpecification;

  final AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationCustomizedLoadMetricSpecification?
  customizedLoadMetricSpecification;

  final AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecification?
  customizedScalingMetricSpecification;

  final AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationPredefinedLoadMetricSpecification?
  predefinedLoadMetricSpecification;

  final AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationPredefinedMetricPairSpecification?
  predefinedMetricPairSpecification;

  final AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationPredefinedScalingMetricSpecification?
  predefinedScalingMetricSpecification;

  Map<String, Object?> encode() => {
    'target_value': targetValue.toTfJson(),
    if (customizedCapacityMetricSpecification != null)
      'customized_capacity_metric_specification':
          customizedCapacityMetricSpecification!.encode(),
    if (customizedLoadMetricSpecification != null)
      'customized_load_metric_specification': customizedLoadMetricSpecification!
          .encode(),
    if (customizedScalingMetricSpecification != null)
      'customized_scaling_metric_specification':
          customizedScalingMetricSpecification!.encode(),
    if (predefinedLoadMetricSpecification != null)
      'predefined_load_metric_specification': predefinedLoadMetricSpecification!
          .encode(),
    if (predefinedMetricPairSpecification != null)
      'predefined_metric_pair_specification': predefinedMetricPairSpecification!
          .encode(),
    if (predefinedScalingMetricSpecification != null)
      'predefined_scaling_metric_specification':
          predefinedScalingMetricSpecification!.encode(),
  };
}

/// Typed helper for the `predictive_scaling_configuration.metric_specification.customized_capacity_metric_specification` block of
/// `aws_autoscaling_policy` (derived from provider schema).
@immutable
final class AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecification {
  const AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecification({
    required this.metricDataQueries,
  });

  final List<
    AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQueries
  >
  metricDataQueries;

  Map<String, Object?> encode() => {
    'metric_data_queries': [for (final e in metricDataQueries) e.encode()],
  };
}

/// Typed helper for the `predictive_scaling_configuration.metric_specification.customized_capacity_metric_specification.metric_data_queries` block of
/// `aws_autoscaling_policy` (derived from provider schema).
@immutable
final class AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQueries {
  const AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQueries({
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

  final AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQueriesMetricStat?
  metricStat;

  Map<String, Object?> encode() => {
    if (expression != null) 'expression': expression!.toTfJson(),
    'id': id.toTfJson(),
    if (label != null) 'label': label!.toTfJson(),
    if (returnData != null) 'return_data': returnData!.toTfJson(),
    if (metricStat != null) 'metric_stat': metricStat!.encode(),
  };
}

/// Typed helper for the `predictive_scaling_configuration.metric_specification.customized_capacity_metric_specification.metric_data_queries.metric_stat` block of
/// `aws_autoscaling_policy` (derived from provider schema).
@immutable
final class AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQueriesMetricStat {
  const AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQueriesMetricStat({
    required this.stat,
    this.unit,
    required this.metric,
  });

  final TfArg<String> stat;

  final TfArg<String>? unit;

  final AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQueriesMetricStatMetric
  metric;

  Map<String, Object?> encode() => {
    'stat': stat.toTfJson(),
    if (unit != null) 'unit': unit!.toTfJson(),
    'metric': metric.encode(),
  };
}

/// Typed helper for the `predictive_scaling_configuration.metric_specification.customized_capacity_metric_specification.metric_data_queries.metric_stat.metric` block of
/// `aws_autoscaling_policy` (derived from provider schema).
@immutable
final class AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQueriesMetricStatMetric {
  const AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQueriesMetricStatMetric({
    required this.metricName,
    required this.namespace,
    this.dimensions,
  });

  final TfArg<String> metricName;

  final TfArg<String> namespace;

  final List<
    AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQueriesMetricStatMetricDimensions
  >?
  dimensions;

  Map<String, Object?> encode() => {
    'metric_name': metricName.toTfJson(),
    'namespace': namespace.toTfJson(),
    if (dimensions != null)
      'dimensions': [for (final e in dimensions!) e.encode()],
  };
}

/// Typed helper for the `predictive_scaling_configuration.metric_specification.customized_capacity_metric_specification.metric_data_queries.metric_stat.metric.dimensions` block of
/// `aws_autoscaling_policy` (derived from provider schema).
@immutable
final class AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQueriesMetricStatMetricDimensions {
  const AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQueriesMetricStatMetricDimensions({
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

/// Typed helper for the `predictive_scaling_configuration.metric_specification.customized_load_metric_specification` block of
/// `aws_autoscaling_policy` (derived from provider schema).
@immutable
final class AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationCustomizedLoadMetricSpecification {
  const AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationCustomizedLoadMetricSpecification({
    required this.metricDataQueries,
  });

  final List<
    AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQueries
  >
  metricDataQueries;

  Map<String, Object?> encode() => {
    'metric_data_queries': [for (final e in metricDataQueries) e.encode()],
  };
}

/// Typed helper for the `predictive_scaling_configuration.metric_specification.customized_load_metric_specification.metric_data_queries` block of
/// `aws_autoscaling_policy` (derived from provider schema).
@immutable
final class AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQueries {
  const AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQueries({
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

  final AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQueriesMetricStat?
  metricStat;

  Map<String, Object?> encode() => {
    if (expression != null) 'expression': expression!.toTfJson(),
    'id': id.toTfJson(),
    if (label != null) 'label': label!.toTfJson(),
    if (returnData != null) 'return_data': returnData!.toTfJson(),
    if (metricStat != null) 'metric_stat': metricStat!.encode(),
  };
}

/// Typed helper for the `predictive_scaling_configuration.metric_specification.customized_load_metric_specification.metric_data_queries.metric_stat` block of
/// `aws_autoscaling_policy` (derived from provider schema).
@immutable
final class AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQueriesMetricStat {
  const AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQueriesMetricStat({
    required this.stat,
    this.unit,
    required this.metric,
  });

  final TfArg<String> stat;

  final TfArg<String>? unit;

  final AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQueriesMetricStatMetric
  metric;

  Map<String, Object?> encode() => {
    'stat': stat.toTfJson(),
    if (unit != null) 'unit': unit!.toTfJson(),
    'metric': metric.encode(),
  };
}

/// Typed helper for the `predictive_scaling_configuration.metric_specification.customized_load_metric_specification.metric_data_queries.metric_stat.metric` block of
/// `aws_autoscaling_policy` (derived from provider schema).
@immutable
final class AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQueriesMetricStatMetric {
  const AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQueriesMetricStatMetric({
    required this.metricName,
    required this.namespace,
    this.dimensions,
  });

  final TfArg<String> metricName;

  final TfArg<String> namespace;

  final List<
    AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQueriesMetricStatMetricDimensions
  >?
  dimensions;

  Map<String, Object?> encode() => {
    'metric_name': metricName.toTfJson(),
    'namespace': namespace.toTfJson(),
    if (dimensions != null)
      'dimensions': [for (final e in dimensions!) e.encode()],
  };
}

/// Typed helper for the `predictive_scaling_configuration.metric_specification.customized_load_metric_specification.metric_data_queries.metric_stat.metric.dimensions` block of
/// `aws_autoscaling_policy` (derived from provider schema).
@immutable
final class AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQueriesMetricStatMetricDimensions {
  const AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQueriesMetricStatMetricDimensions({
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

/// Typed helper for the `predictive_scaling_configuration.metric_specification.customized_scaling_metric_specification` block of
/// `aws_autoscaling_policy` (derived from provider schema).
@immutable
final class AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecification {
  const AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecification({
    required this.metricDataQueries,
  });

  final List<
    AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueries
  >
  metricDataQueries;

  Map<String, Object?> encode() => {
    'metric_data_queries': [for (final e in metricDataQueries) e.encode()],
  };
}

/// Typed helper for the `predictive_scaling_configuration.metric_specification.customized_scaling_metric_specification.metric_data_queries` block of
/// `aws_autoscaling_policy` (derived from provider schema).
@immutable
final class AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueries {
  const AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueries({
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

  final AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueriesMetricStat?
  metricStat;

  Map<String, Object?> encode() => {
    if (expression != null) 'expression': expression!.toTfJson(),
    'id': id.toTfJson(),
    if (label != null) 'label': label!.toTfJson(),
    if (returnData != null) 'return_data': returnData!.toTfJson(),
    if (metricStat != null) 'metric_stat': metricStat!.encode(),
  };
}

/// Typed helper for the `predictive_scaling_configuration.metric_specification.customized_scaling_metric_specification.metric_data_queries.metric_stat` block of
/// `aws_autoscaling_policy` (derived from provider schema).
@immutable
final class AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueriesMetricStat {
  const AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueriesMetricStat({
    required this.stat,
    this.unit,
    required this.metric,
  });

  final TfArg<String> stat;

  final TfArg<String>? unit;

  final AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueriesMetricStatMetric
  metric;

  Map<String, Object?> encode() => {
    'stat': stat.toTfJson(),
    if (unit != null) 'unit': unit!.toTfJson(),
    'metric': metric.encode(),
  };
}

/// Typed helper for the `predictive_scaling_configuration.metric_specification.customized_scaling_metric_specification.metric_data_queries.metric_stat.metric` block of
/// `aws_autoscaling_policy` (derived from provider schema).
@immutable
final class AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueriesMetricStatMetric {
  const AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueriesMetricStatMetric({
    required this.metricName,
    required this.namespace,
    this.dimensions,
  });

  final TfArg<String> metricName;

  final TfArg<String> namespace;

  final List<
    AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueriesMetricStatMetricDimensions
  >?
  dimensions;

  Map<String, Object?> encode() => {
    'metric_name': metricName.toTfJson(),
    'namespace': namespace.toTfJson(),
    if (dimensions != null)
      'dimensions': [for (final e in dimensions!) e.encode()],
  };
}

/// Typed helper for the `predictive_scaling_configuration.metric_specification.customized_scaling_metric_specification.metric_data_queries.metric_stat.metric.dimensions` block of
/// `aws_autoscaling_policy` (derived from provider schema).
@immutable
final class AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueriesMetricStatMetricDimensions {
  const AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueriesMetricStatMetricDimensions({
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

/// Typed helper for the `predictive_scaling_configuration.metric_specification.predefined_load_metric_specification` block of
/// `aws_autoscaling_policy` (derived from provider schema).
@immutable
final class AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationPredefinedLoadMetricSpecification {
  const AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationPredefinedLoadMetricSpecification({
    required this.predefinedMetricType,
    this.resourceLabel,
  });

  final TfArg<String> predefinedMetricType;

  final TfArg<String>? resourceLabel;

  Map<String, Object?> encode() => {
    'predefined_metric_type': predefinedMetricType.toTfJson(),
    if (resourceLabel != null) 'resource_label': resourceLabel!.toTfJson(),
  };
}

/// Typed helper for the `predictive_scaling_configuration.metric_specification.predefined_metric_pair_specification` block of
/// `aws_autoscaling_policy` (derived from provider schema).
@immutable
final class AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationPredefinedMetricPairSpecification {
  const AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationPredefinedMetricPairSpecification({
    required this.predefinedMetricType,
    this.resourceLabel,
  });

  final TfArg<String> predefinedMetricType;

  final TfArg<String>? resourceLabel;

  Map<String, Object?> encode() => {
    'predefined_metric_type': predefinedMetricType.toTfJson(),
    if (resourceLabel != null) 'resource_label': resourceLabel!.toTfJson(),
  };
}

/// Typed helper for the `predictive_scaling_configuration.metric_specification.predefined_scaling_metric_specification` block of
/// `aws_autoscaling_policy` (derived from provider schema).
@immutable
final class AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationPredefinedScalingMetricSpecification {
  const AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationPredefinedScalingMetricSpecification({
    required this.predefinedMetricType,
    this.resourceLabel,
  });

  final TfArg<String> predefinedMetricType;

  final TfArg<String>? resourceLabel;

  Map<String, Object?> encode() => {
    'predefined_metric_type': predefinedMetricType.toTfJson(),
    if (resourceLabel != null) 'resource_label': resourceLabel!.toTfJson(),
  };
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

  Map<String, Object?> encode() => {
    if (metricIntervalLowerBound != null)
      'metric_interval_lower_bound': metricIntervalLowerBound!.toTfJson(),
    if (metricIntervalUpperBound != null)
      'metric_interval_upper_bound': metricIntervalUpperBound!.toTfJson(),
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
    this.customizedMetricSpecification,
    this.predefinedMetricSpecification,
  });

  final TfArg<bool>? disableScaleIn;

  final TfArg<num> targetValue;

  final AutoscalingPolicyTargetTrackingConfigurationCustomizedMetricSpecification?
  customizedMetricSpecification;

  final AutoscalingPolicyTargetTrackingConfigurationPredefinedMetricSpecification?
  predefinedMetricSpecification;

  Map<String, Object?> encode() => {
    if (disableScaleIn != null) 'disable_scale_in': disableScaleIn!.toTfJson(),
    'target_value': targetValue.toTfJson(),
    if (customizedMetricSpecification != null)
      'customized_metric_specification': customizedMetricSpecification!
          .encode(),
    if (predefinedMetricSpecification != null)
      'predefined_metric_specification': predefinedMetricSpecification!
          .encode(),
  };
}

/// Typed helper for the `target_tracking_configuration.customized_metric_specification` block of
/// `aws_autoscaling_policy` (derived from provider schema).
@immutable
final class AutoscalingPolicyTargetTrackingConfigurationCustomizedMetricSpecification {
  const AutoscalingPolicyTargetTrackingConfigurationCustomizedMetricSpecification({
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

  final List<
    AutoscalingPolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricDimension
  >?
  metricDimension;

  final List<
    AutoscalingPolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetrics
  >?
  metrics;

  Map<String, Object?> encode() => {
    if (metricName != null) 'metric_name': metricName!.toTfJson(),
    if (namespace != null) 'namespace': namespace!.toTfJson(),
    if (period != null) 'period': period!.toTfJson(),
    if (statistic != null) 'statistic': statistic!.toTfJson(),
    if (unit != null) 'unit': unit!.toTfJson(),
    if (metricDimension != null)
      'metric_dimension': [for (final e in metricDimension!) e.encode()],
    if (metrics != null) 'metrics': [for (final e in metrics!) e.encode()],
  };
}

/// Typed helper for the `target_tracking_configuration.customized_metric_specification.metric_dimension` block of
/// `aws_autoscaling_policy` (derived from provider schema).
@immutable
final class AutoscalingPolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricDimension {
  const AutoscalingPolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricDimension({
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

/// Typed helper for the `target_tracking_configuration.customized_metric_specification.metrics` block of
/// `aws_autoscaling_policy` (derived from provider schema).
@immutable
final class AutoscalingPolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetrics {
  const AutoscalingPolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetrics({
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

  final AutoscalingPolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricsMetricStat?
  metricStat;

  Map<String, Object?> encode() => {
    if (expression != null) 'expression': expression!.toTfJson(),
    'id': id.toTfJson(),
    if (label != null) 'label': label!.toTfJson(),
    if (returnData != null) 'return_data': returnData!.toTfJson(),
    if (metricStat != null) 'metric_stat': metricStat!.encode(),
  };
}

/// Typed helper for the `target_tracking_configuration.customized_metric_specification.metrics.metric_stat` block of
/// `aws_autoscaling_policy` (derived from provider schema).
@immutable
final class AutoscalingPolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricsMetricStat {
  const AutoscalingPolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricsMetricStat({
    this.period,
    required this.stat,
    this.unit,
    required this.metric,
  });

  final TfArg<num>? period;

  final TfArg<String> stat;

  final TfArg<String>? unit;

  final AutoscalingPolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricsMetricStatMetric
  metric;

  Map<String, Object?> encode() => {
    if (period != null) 'period': period!.toTfJson(),
    'stat': stat.toTfJson(),
    if (unit != null) 'unit': unit!.toTfJson(),
    'metric': metric.encode(),
  };
}

/// Typed helper for the `target_tracking_configuration.customized_metric_specification.metrics.metric_stat.metric` block of
/// `aws_autoscaling_policy` (derived from provider schema).
@immutable
final class AutoscalingPolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricsMetricStatMetric {
  const AutoscalingPolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricsMetricStatMetric({
    required this.metricName,
    required this.namespace,
    this.dimensions,
  });

  final TfArg<String> metricName;

  final TfArg<String> namespace;

  final List<
    AutoscalingPolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricsMetricStatMetricDimensions
  >?
  dimensions;

  Map<String, Object?> encode() => {
    'metric_name': metricName.toTfJson(),
    'namespace': namespace.toTfJson(),
    if (dimensions != null)
      'dimensions': [for (final e in dimensions!) e.encode()],
  };
}

/// Typed helper for the `target_tracking_configuration.customized_metric_specification.metrics.metric_stat.metric.dimensions` block of
/// `aws_autoscaling_policy` (derived from provider schema).
@immutable
final class AutoscalingPolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricsMetricStatMetricDimensions {
  const AutoscalingPolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricsMetricStatMetricDimensions({
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

/// Typed helper for the `target_tracking_configuration.predefined_metric_specification` block of
/// `aws_autoscaling_policy` (derived from provider schema).
@immutable
final class AutoscalingPolicyTargetTrackingConfigurationPredefinedMetricSpecification {
  const AutoscalingPolicyTargetTrackingConfigurationPredefinedMetricSpecification({
    required this.predefinedMetricType,
    this.resourceLabel,
  });

  final TfArg<String> predefinedMetricType;

  final TfArg<String>? resourceLabel;

  Map<String, Object?> encode() => {
    'predefined_metric_type': predefinedMetricType.toTfJson(),
    if (resourceLabel != null) 'resource_label': resourceLabel!.toTfJson(),
  };
}

/// Factory wrapper for `aws_autoscaling_policy`.
final class AwsAutoscalingPolicy extends Resource {
  static const String tfType = 'aws_autoscaling_policy';

  AwsAutoscalingPolicy({
    required super.localName,
    TfArg<String>? adjustmentType,
    required TfArg<String> autoscalingGroupName,
    TfArg<num>? cooldown,
    TfArg<bool>? enabled,
    TfArg<num>? estimatedInstanceWarmup,
    TfArg<String>? metricAggregationType,
    TfArg<num>? minAdjustmentMagnitude,
    required TfArg<String> name,
    TfArg<String>? policyType,
    TfArg<String>? region,
    TfArg<num>? scalingAdjustment,
    AutoscalingPolicyPredictiveScalingConfiguration?
    predictiveScalingConfiguration,
    List<AutoscalingPolicyStepAdjustment>? stepAdjustment,
    AutoscalingPolicyTargetTrackingConfiguration? targetTrackingConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (adjustmentType != null) 'adjustment_type': adjustmentType,
           'autoscaling_group_name': autoscalingGroupName,
           if (cooldown != null) 'cooldown': cooldown,
           if (enabled != null) 'enabled': enabled,
           if (estimatedInstanceWarmup != null)
             'estimated_instance_warmup': estimatedInstanceWarmup,
           if (metricAggregationType != null)
             'metric_aggregation_type': metricAggregationType,
           if (minAdjustmentMagnitude != null)
             'min_adjustment_magnitude': minAdjustmentMagnitude,
           'name': name,
           if (policyType != null) 'policy_type': policyType,
           if (region != null) 'region': region,
           if (scalingAdjustment != null)
             'scaling_adjustment': scalingAdjustment,
           if (predictiveScalingConfiguration != null)
             'predictive_scaling_configuration': TfArg.literal(
               predictiveScalingConfiguration.encode(),
             ),
           if (stepAdjustment != null)
             'step_adjustment': TfArg.literal([
               for (final e in stepAdjustment) e.encode(),
             ]),
           if (targetTrackingConfiguration != null)
             'target_tracking_configuration': TfArg.literal(
               targetTrackingConfiguration.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAutoscalingPolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
