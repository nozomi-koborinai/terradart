// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_appautoscaling_policy`.
const Set<String> _awsAppautoscalingPolicySensitive = <String>{};

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

  final TfArg<String>? maxCapacityBreachBehavior;

  final TfArg<num>? maxCapacityBuffer;

  final TfArg<String>? mode;

  final TfArg<num>? schedulingBufferTime;

  final List<
    AppautoscalingPolicyPredictiveScalingPolicyConfigurationMetricSpecification
  >
  metricSpecification;

  Map<String, Object?> encode() => {
    if (maxCapacityBreachBehavior != null)
      'max_capacity_breach_behavior': maxCapacityBreachBehavior!.toTfJson(),
    if (maxCapacityBuffer != null)
      'max_capacity_buffer': maxCapacityBuffer!.toTfJson(),
    if (mode != null) 'mode': mode!.toTfJson(),
    if (schedulingBufferTime != null)
      'scheduling_buffer_time': schedulingBufferTime!.toTfJson(),
    'metric_specification': [for (final e in metricSpecification) e.encode()],
  };
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

  final AppautoscalingPolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedCapacityMetricSpecification?
  customizedCapacityMetricSpecification;

  final AppautoscalingPolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedLoadMetricSpecification?
  customizedLoadMetricSpecification;

  final AppautoscalingPolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecification?
  customizedScalingMetricSpecification;

  final AppautoscalingPolicyPredictiveScalingPolicyConfigurationMetricSpecificationPredefinedLoadMetricSpecification?
  predefinedLoadMetricSpecification;

  final AppautoscalingPolicyPredictiveScalingPolicyConfigurationMetricSpecificationPredefinedMetricPairSpecification?
  predefinedMetricPairSpecification;

  final AppautoscalingPolicyPredictiveScalingPolicyConfigurationMetricSpecificationPredefinedScalingMetricSpecification?
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

/// Typed helper for the `predictive_scaling_policy_configuration.metric_specification.customized_capacity_metric_specification` block of
/// `aws_appautoscaling_policy` (derived from provider schema).
@immutable
final class AppautoscalingPolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedCapacityMetricSpecification {
  const AppautoscalingPolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedCapacityMetricSpecification({
    required this.metricDataQuery,
  });

  final List<
    AppautoscalingPolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQuery
  >
  metricDataQuery;

  Map<String, Object?> encode() => {
    'metric_data_query': [for (final e in metricDataQuery) e.encode()],
  };
}

/// Typed helper for the `predictive_scaling_policy_configuration.metric_specification.customized_capacity_metric_specification.metric_data_query` block of
/// `aws_appautoscaling_policy` (derived from provider schema).
@immutable
final class AppautoscalingPolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQuery {
  const AppautoscalingPolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQuery({
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

  final AppautoscalingPolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQueryMetricStat?
  metricStat;

  Map<String, Object?> encode() => {
    if (expression != null) 'expression': expression!.toTfJson(),
    'id': id.toTfJson(),
    if (label != null) 'label': label!.toTfJson(),
    if (returnData != null) 'return_data': returnData!.toTfJson(),
    if (metricStat != null) 'metric_stat': metricStat!.encode(),
  };
}

/// Typed helper for the `predictive_scaling_policy_configuration.metric_specification.customized_capacity_metric_specification.metric_data_query.metric_stat` block of
/// `aws_appautoscaling_policy` (derived from provider schema).
@immutable
final class AppautoscalingPolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQueryMetricStat {
  const AppautoscalingPolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQueryMetricStat({
    required this.stat,
    this.unit,
    required this.metric,
  });

  final TfArg<String> stat;

  final TfArg<String>? unit;

  final AppautoscalingPolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQueryMetricStatMetric
  metric;

  Map<String, Object?> encode() => {
    'stat': stat.toTfJson(),
    if (unit != null) 'unit': unit!.toTfJson(),
    'metric': metric.encode(),
  };
}

/// Typed helper for the `predictive_scaling_policy_configuration.metric_specification.customized_capacity_metric_specification.metric_data_query.metric_stat.metric` block of
/// `aws_appautoscaling_policy` (derived from provider schema).
@immutable
final class AppautoscalingPolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQueryMetricStatMetric {
  const AppautoscalingPolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQueryMetricStatMetric({
    this.metricName,
    this.namespace,
    this.dimension,
  });

  final TfArg<String>? metricName;

  final TfArg<String>? namespace;

  final List<
    AppautoscalingPolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQueryMetricStatMetricDimension
  >?
  dimension;

  Map<String, Object?> encode() => {
    if (metricName != null) 'metric_name': metricName!.toTfJson(),
    if (namespace != null) 'namespace': namespace!.toTfJson(),
    if (dimension != null)
      'dimension': [for (final e in dimension!) e.encode()],
  };
}

/// Typed helper for the `predictive_scaling_policy_configuration.metric_specification.customized_capacity_metric_specification.metric_data_query.metric_stat.metric.dimension` block of
/// `aws_appautoscaling_policy` (derived from provider schema).
@immutable
final class AppautoscalingPolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQueryMetricStatMetricDimension {
  const AppautoscalingPolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQueryMetricStatMetricDimension({
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
final class AppautoscalingPolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedLoadMetricSpecification {
  const AppautoscalingPolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedLoadMetricSpecification({
    required this.metricDataQuery,
  });

  final List<
    AppautoscalingPolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQuery
  >
  metricDataQuery;

  Map<String, Object?> encode() => {
    'metric_data_query': [for (final e in metricDataQuery) e.encode()],
  };
}

/// Typed helper for the `predictive_scaling_policy_configuration.metric_specification.customized_load_metric_specification.metric_data_query` block of
/// `aws_appautoscaling_policy` (derived from provider schema).
@immutable
final class AppautoscalingPolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQuery {
  const AppautoscalingPolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQuery({
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

  final AppautoscalingPolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQueryMetricStat?
  metricStat;

  Map<String, Object?> encode() => {
    if (expression != null) 'expression': expression!.toTfJson(),
    'id': id.toTfJson(),
    if (label != null) 'label': label!.toTfJson(),
    if (returnData != null) 'return_data': returnData!.toTfJson(),
    if (metricStat != null) 'metric_stat': metricStat!.encode(),
  };
}

/// Typed helper for the `predictive_scaling_policy_configuration.metric_specification.customized_load_metric_specification.metric_data_query.metric_stat` block of
/// `aws_appautoscaling_policy` (derived from provider schema).
@immutable
final class AppautoscalingPolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQueryMetricStat {
  const AppautoscalingPolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQueryMetricStat({
    required this.stat,
    this.unit,
    required this.metric,
  });

  final TfArg<String> stat;

  final TfArg<String>? unit;

  final AppautoscalingPolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQueryMetricStatMetric
  metric;

  Map<String, Object?> encode() => {
    'stat': stat.toTfJson(),
    if (unit != null) 'unit': unit!.toTfJson(),
    'metric': metric.encode(),
  };
}

/// Typed helper for the `predictive_scaling_policy_configuration.metric_specification.customized_load_metric_specification.metric_data_query.metric_stat.metric` block of
/// `aws_appautoscaling_policy` (derived from provider schema).
@immutable
final class AppautoscalingPolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQueryMetricStatMetric {
  const AppautoscalingPolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQueryMetricStatMetric({
    this.metricName,
    this.namespace,
    this.dimension,
  });

  final TfArg<String>? metricName;

  final TfArg<String>? namespace;

  final List<
    AppautoscalingPolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQueryMetricStatMetricDimension
  >?
  dimension;

  Map<String, Object?> encode() => {
    if (metricName != null) 'metric_name': metricName!.toTfJson(),
    if (namespace != null) 'namespace': namespace!.toTfJson(),
    if (dimension != null)
      'dimension': [for (final e in dimension!) e.encode()],
  };
}

/// Typed helper for the `predictive_scaling_policy_configuration.metric_specification.customized_load_metric_specification.metric_data_query.metric_stat.metric.dimension` block of
/// `aws_appautoscaling_policy` (derived from provider schema).
@immutable
final class AppautoscalingPolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQueryMetricStatMetricDimension {
  const AppautoscalingPolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQueryMetricStatMetricDimension({
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

/// Typed helper for the `predictive_scaling_policy_configuration.metric_specification.customized_scaling_metric_specification` block of
/// `aws_appautoscaling_policy` (derived from provider schema).
@immutable
final class AppautoscalingPolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecification {
  const AppautoscalingPolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecification({
    required this.metricDataQuery,
  });

  final List<
    AppautoscalingPolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQuery
  >
  metricDataQuery;

  Map<String, Object?> encode() => {
    'metric_data_query': [for (final e in metricDataQuery) e.encode()],
  };
}

/// Typed helper for the `predictive_scaling_policy_configuration.metric_specification.customized_scaling_metric_specification.metric_data_query` block of
/// `aws_appautoscaling_policy` (derived from provider schema).
@immutable
final class AppautoscalingPolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQuery {
  const AppautoscalingPolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQuery({
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

  final AppautoscalingPolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryMetricStat?
  metricStat;

  Map<String, Object?> encode() => {
    if (expression != null) 'expression': expression!.toTfJson(),
    'id': id.toTfJson(),
    if (label != null) 'label': label!.toTfJson(),
    if (returnData != null) 'return_data': returnData!.toTfJson(),
    if (metricStat != null) 'metric_stat': metricStat!.encode(),
  };
}

/// Typed helper for the `predictive_scaling_policy_configuration.metric_specification.customized_scaling_metric_specification.metric_data_query.metric_stat` block of
/// `aws_appautoscaling_policy` (derived from provider schema).
@immutable
final class AppautoscalingPolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryMetricStat {
  const AppautoscalingPolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryMetricStat({
    required this.stat,
    this.unit,
    required this.metric,
  });

  final TfArg<String> stat;

  final TfArg<String>? unit;

  final AppautoscalingPolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryMetricStatMetric
  metric;

  Map<String, Object?> encode() => {
    'stat': stat.toTfJson(),
    if (unit != null) 'unit': unit!.toTfJson(),
    'metric': metric.encode(),
  };
}

/// Typed helper for the `predictive_scaling_policy_configuration.metric_specification.customized_scaling_metric_specification.metric_data_query.metric_stat.metric` block of
/// `aws_appautoscaling_policy` (derived from provider schema).
@immutable
final class AppautoscalingPolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryMetricStatMetric {
  const AppautoscalingPolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryMetricStatMetric({
    this.metricName,
    this.namespace,
    this.dimension,
  });

  final TfArg<String>? metricName;

  final TfArg<String>? namespace;

  final List<
    AppautoscalingPolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryMetricStatMetricDimension
  >?
  dimension;

  Map<String, Object?> encode() => {
    if (metricName != null) 'metric_name': metricName!.toTfJson(),
    if (namespace != null) 'namespace': namespace!.toTfJson(),
    if (dimension != null)
      'dimension': [for (final e in dimension!) e.encode()],
  };
}

/// Typed helper for the `predictive_scaling_policy_configuration.metric_specification.customized_scaling_metric_specification.metric_data_query.metric_stat.metric.dimension` block of
/// `aws_appautoscaling_policy` (derived from provider schema).
@immutable
final class AppautoscalingPolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryMetricStatMetricDimension {
  const AppautoscalingPolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryMetricStatMetricDimension({
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

/// Typed helper for the `predictive_scaling_policy_configuration.metric_specification.predefined_load_metric_specification` block of
/// `aws_appautoscaling_policy` (derived from provider schema).
@immutable
final class AppautoscalingPolicyPredictiveScalingPolicyConfigurationMetricSpecificationPredefinedLoadMetricSpecification {
  const AppautoscalingPolicyPredictiveScalingPolicyConfigurationMetricSpecificationPredefinedLoadMetricSpecification({
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

/// Typed helper for the `predictive_scaling_policy_configuration.metric_specification.predefined_metric_pair_specification` block of
/// `aws_appautoscaling_policy` (derived from provider schema).
@immutable
final class AppautoscalingPolicyPredictiveScalingPolicyConfigurationMetricSpecificationPredefinedMetricPairSpecification {
  const AppautoscalingPolicyPredictiveScalingPolicyConfigurationMetricSpecificationPredefinedMetricPairSpecification({
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

/// Typed helper for the `predictive_scaling_policy_configuration.metric_specification.predefined_scaling_metric_specification` block of
/// `aws_appautoscaling_policy` (derived from provider schema).
@immutable
final class AppautoscalingPolicyPredictiveScalingPolicyConfigurationMetricSpecificationPredefinedScalingMetricSpecification {
  const AppautoscalingPolicyPredictiveScalingPolicyConfigurationMetricSpecificationPredefinedScalingMetricSpecification({
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

  final TfArg<String>? adjustmentType;

  final TfArg<num>? cooldown;

  final TfArg<String>? metricAggregationType;

  final TfArg<num>? minAdjustmentMagnitude;

  final List<AppautoscalingPolicyStepScalingPolicyConfigurationStepAdjustment>?
  stepAdjustment;

  Map<String, Object?> encode() => {
    if (adjustmentType != null) 'adjustment_type': adjustmentType!.toTfJson(),
    if (cooldown != null) 'cooldown': cooldown!.toTfJson(),
    if (metricAggregationType != null)
      'metric_aggregation_type': metricAggregationType!.toTfJson(),
    if (minAdjustmentMagnitude != null)
      'min_adjustment_magnitude': minAdjustmentMagnitude!.toTfJson(),
    if (stepAdjustment != null)
      'step_adjustment': [for (final e in stepAdjustment!) e.encode()],
  };
}

/// Typed helper for the `step_scaling_policy_configuration.step_adjustment` block of
/// `aws_appautoscaling_policy` (derived from provider schema).
@immutable
final class AppautoscalingPolicyStepScalingPolicyConfigurationStepAdjustment {
  const AppautoscalingPolicyStepScalingPolicyConfigurationStepAdjustment({
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

/// Typed helper for the `target_tracking_scaling_policy_configuration` block of
/// `aws_appautoscaling_policy` (derived from provider schema).
@immutable
final class AppautoscalingPolicyTargetTrackingScalingPolicyConfiguration {
  const AppautoscalingPolicyTargetTrackingScalingPolicyConfiguration({
    this.disableScaleIn,
    this.scaleInCooldown,
    this.scaleOutCooldown,
    required this.targetValue,
    this.customizedMetricSpecification,
    this.predefinedMetricSpecification,
  });

  final TfArg<bool>? disableScaleIn;

  final TfArg<num>? scaleInCooldown;

  final TfArg<num>? scaleOutCooldown;

  final TfArg<num> targetValue;

  final AppautoscalingPolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecification?
  customizedMetricSpecification;

  final AppautoscalingPolicyTargetTrackingScalingPolicyConfigurationPredefinedMetricSpecification?
  predefinedMetricSpecification;

  Map<String, Object?> encode() => {
    if (disableScaleIn != null) 'disable_scale_in': disableScaleIn!.toTfJson(),
    if (scaleInCooldown != null)
      'scale_in_cooldown': scaleInCooldown!.toTfJson(),
    if (scaleOutCooldown != null)
      'scale_out_cooldown': scaleOutCooldown!.toTfJson(),
    'target_value': targetValue.toTfJson(),
    if (customizedMetricSpecification != null)
      'customized_metric_specification': customizedMetricSpecification!
          .encode(),
    if (predefinedMetricSpecification != null)
      'predefined_metric_specification': predefinedMetricSpecification!
          .encode(),
  };
}

/// Typed helper for the `target_tracking_scaling_policy_configuration.customized_metric_specification` block of
/// `aws_appautoscaling_policy` (derived from provider schema).
@immutable
final class AppautoscalingPolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecification {
  const AppautoscalingPolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecification({
    this.metricName,
    this.namespace,
    this.statistic,
    this.unit,
    this.dimensions,
    this.metrics,
  });

  final TfArg<String>? metricName;

  final TfArg<String>? namespace;

  final TfArg<String>? statistic;

  final TfArg<String>? unit;

  final List<
    AppautoscalingPolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationDimensions
  >?
  dimensions;

  final List<
    AppautoscalingPolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetrics
  >?
  metrics;

  Map<String, Object?> encode() => {
    if (metricName != null) 'metric_name': metricName!.toTfJson(),
    if (namespace != null) 'namespace': namespace!.toTfJson(),
    if (statistic != null) 'statistic': statistic!.toTfJson(),
    if (unit != null) 'unit': unit!.toTfJson(),
    if (dimensions != null)
      'dimensions': [for (final e in dimensions!) e.encode()],
    if (metrics != null) 'metrics': [for (final e in metrics!) e.encode()],
  };
}

/// Typed helper for the `target_tracking_scaling_policy_configuration.customized_metric_specification.dimensions` block of
/// `aws_appautoscaling_policy` (derived from provider schema).
@immutable
final class AppautoscalingPolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationDimensions {
  const AppautoscalingPolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationDimensions({
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
final class AppautoscalingPolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetrics {
  const AppautoscalingPolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetrics({
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

  final AppautoscalingPolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricsMetricStat?
  metricStat;

  Map<String, Object?> encode() => {
    if (expression != null) 'expression': expression!.toTfJson(),
    'id': id.toTfJson(),
    if (label != null) 'label': label!.toTfJson(),
    if (returnData != null) 'return_data': returnData!.toTfJson(),
    if (metricStat != null) 'metric_stat': metricStat!.encode(),
  };
}

/// Typed helper for the `target_tracking_scaling_policy_configuration.customized_metric_specification.metrics.metric_stat` block of
/// `aws_appautoscaling_policy` (derived from provider schema).
@immutable
final class AppautoscalingPolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricsMetricStat {
  const AppautoscalingPolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricsMetricStat({
    required this.stat,
    this.unit,
    required this.metric,
  });

  final TfArg<String> stat;

  final TfArg<String>? unit;

  final AppautoscalingPolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricsMetricStatMetric
  metric;

  Map<String, Object?> encode() => {
    'stat': stat.toTfJson(),
    if (unit != null) 'unit': unit!.toTfJson(),
    'metric': metric.encode(),
  };
}

/// Typed helper for the `target_tracking_scaling_policy_configuration.customized_metric_specification.metrics.metric_stat.metric` block of
/// `aws_appautoscaling_policy` (derived from provider schema).
@immutable
final class AppautoscalingPolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricsMetricStatMetric {
  const AppautoscalingPolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricsMetricStatMetric({
    required this.metricName,
    required this.namespace,
    this.dimensions,
  });

  final TfArg<String> metricName;

  final TfArg<String> namespace;

  final List<
    AppautoscalingPolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricsMetricStatMetricDimensions
  >?
  dimensions;

  Map<String, Object?> encode() => {
    'metric_name': metricName.toTfJson(),
    'namespace': namespace.toTfJson(),
    if (dimensions != null)
      'dimensions': [for (final e in dimensions!) e.encode()],
  };
}

/// Typed helper for the `target_tracking_scaling_policy_configuration.customized_metric_specification.metrics.metric_stat.metric.dimensions` block of
/// `aws_appautoscaling_policy` (derived from provider schema).
@immutable
final class AppautoscalingPolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricsMetricStatMetricDimensions {
  const AppautoscalingPolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricsMetricStatMetricDimensions({
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

/// Typed helper for the `target_tracking_scaling_policy_configuration.predefined_metric_specification` block of
/// `aws_appautoscaling_policy` (derived from provider schema).
@immutable
final class AppautoscalingPolicyTargetTrackingScalingPolicyConfigurationPredefinedMetricSpecification {
  const AppautoscalingPolicyTargetTrackingScalingPolicyConfigurationPredefinedMetricSpecification({
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

/// Factory wrapper for `aws_appautoscaling_policy`.
final class AwsAppautoscalingPolicy extends Resource {
  static const String tfType = 'aws_appautoscaling_policy';

  AwsAppautoscalingPolicy({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? policyType,
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
           if (policyType != null) 'policy_type': policyType,
           if (region != null) 'region': region,
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

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `alarm_arns` attribute.
  TfRef<List<String>> get alarmArns =>
      TfRef.attribute<List<String>>(this, 'alarm_arns');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
