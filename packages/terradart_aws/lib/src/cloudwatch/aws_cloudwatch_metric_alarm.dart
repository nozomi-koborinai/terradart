// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudwatch_metric_alarm`.
const Set<String> _awsCloudwatchMetricAlarmSensitive = <String>{};

/// Cloudwatch Metric Alarm Comparison enum for `comparison_operator`.
enum CloudwatchMetricAlarmComparisonOperator implements TerraformEnum {
  greaterthanorequaltothreshold('GreaterThanOrEqualToThreshold'),
  greaterthanthreshold('GreaterThanThreshold'),
  lessthanthreshold('LessThanThreshold'),
  lessthanorequaltothreshold('LessThanOrEqualToThreshold'),
  lessthanlowerorgreaterthanupperthreshold(
    'LessThanLowerOrGreaterThanUpperThreshold',
  ),
  lessthanlowerthreshold('LessThanLowerThreshold'),
  greaterthanupperthreshold('GreaterThanUpperThreshold');

  const CloudwatchMetricAlarmComparisonOperator(this.terraformValue);
  @override
  final String terraformValue;
}

/// Cloudwatch Metric Alarm Evaluate Low Sample Count enum for `evaluate_low_sample_count_percentiles`.
enum CloudwatchMetricAlarmEvaluateLowSampleCountPercentiles
    implements TerraformEnum {
  evaluate('evaluate'),
  ignore('ignore');

  const CloudwatchMetricAlarmEvaluateLowSampleCountPercentiles(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Cloudwatch Metric Alarm enum for `statistic`.
enum CloudwatchMetricAlarmStatistic implements TerraformEnum {
  samplecount('SampleCount'),
  average('Average'),
  sum('Sum'),
  minimum('Minimum'),
  maximum('Maximum');

  const CloudwatchMetricAlarmStatistic(this.terraformValue);
  @override
  final String terraformValue;
}

/// Cloudwatch Metric Alarm Treat Missing enum for `treat_missing_data`.
enum CloudwatchMetricAlarmTreatMissingData implements TerraformEnum {
  breaching('breaching'),
  ignore('ignore'),
  missing('missing'),
  notbreaching('notBreaching');

  const CloudwatchMetricAlarmTreatMissingData(this.terraformValue);
  @override
  final String terraformValue;
}

/// Cloudwatch Metric Alarm enum for `unit`.
enum CloudwatchMetricAlarmUnit implements TerraformEnum {
  seconds('Seconds'),
  microseconds('Microseconds'),
  milliseconds('Milliseconds'),
  bytes('Bytes'),
  kilobytes('Kilobytes'),
  megabytes('Megabytes'),
  gigabytes('Gigabytes'),
  terabytes('Terabytes'),
  bits('Bits'),
  kilobits('Kilobits'),
  megabits('Megabits'),
  gigabits('Gigabits'),
  terabits('Terabits'),
  percent('Percent'),
  count('Count'),
  bytesSecond('Bytes/Second'),
  kilobytesSecond('Kilobytes/Second'),
  megabytesSecond('Megabytes/Second'),
  gigabytesSecond('Gigabytes/Second'),
  terabytesSecond('Terabytes/Second'),
  bitsSecond('Bits/Second'),
  kilobitsSecond('Kilobits/Second'),
  megabitsSecond('Megabits/Second'),
  gigabitsSecond('Gigabits/Second'),
  terabitsSecond('Terabits/Second'),
  countSecond('Count/Second'),
  none('None');

  const CloudwatchMetricAlarmUnit(this.terraformValue);
  @override
  final String terraformValue;
}

/// Exactly one of `evaluation_criteria`, `metric_name`, `metric_query` on `aws_cloudwatch_metric_alarm`: the provider rejects
/// none and more than one, so each variant sets one of them.
sealed class CloudwatchMetricAlarmEvaluationCriteriaOrMetricNameOrMetricQuery {
  const CloudwatchMetricAlarmEvaluationCriteriaOrMetricNameOrMetricQuery();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// Sets `evaluation_criteria` (one of the [CloudwatchMetricAlarmEvaluationCriteriaOrMetricNameOrMetricQuery] choices).
final class CloudwatchMetricAlarmEvaluationCriteriaOption
    extends CloudwatchMetricAlarmEvaluationCriteriaOrMetricNameOrMetricQuery {
  const CloudwatchMetricAlarmEvaluationCriteriaOption({
    required this.evaluationCriteria,
  });

  final CloudwatchMetricAlarmEvaluationCriteria evaluationCriteria;

  @override
  String get blockKey => 'evaluation_criteria';

  @override
  Map<String, Object?> encode() => {
    'evaluation_criteria': evaluationCriteria.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'evaluation_criteria': TfArg.literal(evaluationCriteria.encode()),
  };
}

/// Sets `metric_name` (one of the [CloudwatchMetricAlarmEvaluationCriteriaOrMetricNameOrMetricQuery] choices).
final class CloudwatchMetricAlarmMetricNameOption
    extends CloudwatchMetricAlarmEvaluationCriteriaOrMetricNameOrMetricQuery {
  const CloudwatchMetricAlarmMetricNameOption({required this.metricName});

  final TfArg<String> metricName;

  @override
  String get blockKey => 'metric_name';

  @override
  Map<String, Object?> encode() => {'metric_name': metricName.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'metric_name': metricName};
}

/// Sets `metric_query` (one of the [CloudwatchMetricAlarmEvaluationCriteriaOrMetricNameOrMetricQuery] choices).
final class CloudwatchMetricAlarmMetricQueryOption
    extends CloudwatchMetricAlarmEvaluationCriteriaOrMetricNameOrMetricQuery {
  const CloudwatchMetricAlarmMetricQueryOption({required this.metricQuery});

  final List<CloudwatchMetricAlarmMetricQuery> metricQuery;

  @override
  String get blockKey => 'metric_query';

  @override
  Map<String, Object?> encode() => {
    'metric_query': [for (final e in metricQuery) e.encode()],
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'metric_query': TfArg.literal([for (final e in metricQuery) e.encode()]),
  };
}

/// Typed helper for the `evaluation_criteria` block of
/// `aws_cloudwatch_metric_alarm` (derived from provider schema).
@immutable
final class CloudwatchMetricAlarmEvaluationCriteria {
  const CloudwatchMetricAlarmEvaluationCriteria({required this.promqlCriteria});

  final CloudwatchMetricAlarmEvaluationCriteriaPromqlCriteria promqlCriteria;

  Map<String, Object?> encode() => {'promql_criteria': promqlCriteria.encode()};
}

/// Typed helper for the `evaluation_criteria.promql_criteria` block of
/// `aws_cloudwatch_metric_alarm` (derived from provider schema).
@immutable
final class CloudwatchMetricAlarmEvaluationCriteriaPromqlCriteria {
  const CloudwatchMetricAlarmEvaluationCriteriaPromqlCriteria({
    this.pendingPeriod,
    required this.query,
    this.recoveryPeriod,
  });

  final TfArg<num>? pendingPeriod;

  final TfArg<String> query;

  final TfArg<num>? recoveryPeriod;

  Map<String, Object?> encode() => {
    if (pendingPeriod != null) 'pending_period': pendingPeriod!.toTfJson(),
    'query': query.toTfJson(),
    if (recoveryPeriod != null) 'recovery_period': recoveryPeriod!.toTfJson(),
  };
}

/// Typed helper for the `metric_query` block of
/// `aws_cloudwatch_metric_alarm` (derived from provider schema).
@immutable
final class CloudwatchMetricAlarmMetricQuery {
  const CloudwatchMetricAlarmMetricQuery({
    this.accountId,
    this.expression,
    required this.id,
    this.label,
    this.period,
    this.returnData,
    this.metric,
  });

  final TfArg<String>? accountId;

  final TfArg<String>? expression;

  final TfArg<String> id;

  final TfArg<String>? label;

  final TfArg<num>? period;

  final TfArg<bool>? returnData;

  final CloudwatchMetricAlarmMetricQueryMetric? metric;

  Map<String, Object?> encode() => {
    if (accountId != null) 'account_id': accountId!.toTfJson(),
    if (expression != null) 'expression': expression!.toTfJson(),
    'id': id.toTfJson(),
    if (label != null) 'label': label!.toTfJson(),
    if (period != null) 'period': period!.toTfJson(),
    if (returnData != null) 'return_data': returnData!.toTfJson(),
    if (metric != null) 'metric': metric!.encode(),
  };
}

/// Typed helper for the `metric_query.metric` block of
/// `aws_cloudwatch_metric_alarm` (derived from provider schema).
@immutable
final class CloudwatchMetricAlarmMetricQueryMetric {
  const CloudwatchMetricAlarmMetricQueryMetric({
    this.dimensions,
    required this.metricName,
    this.namespace,
    required this.period,
    required this.stat,
    this.unit,
  });

  final TfArg<Map<String, String>>? dimensions;

  final TfArg<String> metricName;

  final TfArg<String>? namespace;

  final TfArg<num> period;

  final TfArg<CloudwatchMetricAlarmMetricQueryMetricStat> stat;

  final TfArg<CloudwatchMetricAlarmMetricQueryMetricUnit>? unit;

  Map<String, Object?> encode() => {
    if (dimensions != null) 'dimensions': dimensions!.toTfJson(),
    'metric_name': metricName.toTfJson(),
    if (namespace != null) 'namespace': namespace!.toTfJson(),
    'period': period.toTfJson(),
    'stat': stat.toTfJson(),
    if (unit != null) 'unit': unit!.toTfJson(),
  };
}

/// `stat` — derived from the provider schema description.
enum CloudwatchMetricAlarmMetricQueryMetricStat implements TerraformEnum {
  samplecount('SampleCount'),
  average('Average'),
  sum('Sum'),
  minimum('Minimum'),
  maximum('Maximum');

  const CloudwatchMetricAlarmMetricQueryMetricStat(this.terraformValue);
  @override
  final String terraformValue;
}

/// `unit` — derived from the provider schema description.
enum CloudwatchMetricAlarmMetricQueryMetricUnit implements TerraformEnum {
  seconds('Seconds'),
  microseconds('Microseconds'),
  milliseconds('Milliseconds'),
  bytes('Bytes'),
  kilobytes('Kilobytes'),
  megabytes('Megabytes'),
  gigabytes('Gigabytes'),
  terabytes('Terabytes'),
  bits('Bits'),
  kilobits('Kilobits'),
  megabits('Megabits'),
  gigabits('Gigabits'),
  terabits('Terabits'),
  percent('Percent'),
  count('Count'),
  bytesSecond('Bytes/Second'),
  kilobytesSecond('Kilobytes/Second'),
  megabytesSecond('Megabytes/Second'),
  gigabytesSecond('Gigabytes/Second'),
  terabytesSecond('Terabytes/Second'),
  bitsSecond('Bits/Second'),
  kilobitsSecond('Kilobits/Second'),
  megabitsSecond('Megabits/Second'),
  gigabitsSecond('Gigabits/Second'),
  terabitsSecond('Terabits/Second'),
  countSecond('Count/Second'),
  none('None');

  const CloudwatchMetricAlarmMetricQueryMetricUnit(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `warm_up_configuration` block of
/// `aws_cloudwatch_metric_alarm` (derived from provider schema).
@immutable
final class CloudwatchMetricAlarmWarmUpConfiguration {
  const CloudwatchMetricAlarmWarmUpConfiguration({
    this.onlyStartEvaluatingAfterWarmUpPeriodEnds,
    required this.warmUpPeriodDurationInMinutes,
  });

  final TfArg<bool>? onlyStartEvaluatingAfterWarmUpPeriodEnds;

  final TfArg<num> warmUpPeriodDurationInMinutes;

  Map<String, Object?> encode() => {
    if (onlyStartEvaluatingAfterWarmUpPeriodEnds != null)
      'only_start_evaluating_after_warm_up_period_ends':
          onlyStartEvaluatingAfterWarmUpPeriodEnds!.toTfJson(),
    'warm_up_period_duration_in_minutes': warmUpPeriodDurationInMinutes
        .toTfJson(),
  };
}

/// Factory wrapper for `aws_cloudwatch_metric_alarm`.
final class AwsCloudwatchMetricAlarm extends Resource {
  static const String tfType = 'aws_cloudwatch_metric_alarm';

  AwsCloudwatchMetricAlarm({
    required super.localName,
    TfArg<bool>? actionsEnabled,
    TfArg<List<String>>? alarmActions,
    TfArg<String>? alarmDescription,
    required TfArg<String> alarmName,
    TfArg<CloudwatchMetricAlarmComparisonOperator>? comparisonOperator,
    TfArg<num>? datapointsToAlarm,
    TfArg<Map<String, String>>? dimensions,
    TfArg<CloudwatchMetricAlarmEvaluateLowSampleCountPercentiles>?
    evaluateLowSampleCountPercentiles,
    TfArg<num>? evaluationInterval,
    TfArg<num>? evaluationPeriods,
    TfArg<String>? extendedStatistic,
    TfArg<List<String>>? insufficientDataActions,
    required CloudwatchMetricAlarmEvaluationCriteriaOrMetricNameOrMetricQuery
    evaluationCriteriaOrMetricNameOrMetricQuery,
    TfArg<String>? namespace,
    TfArg<List<String>>? okActions,
    TfArg<num>? period,
    TfArg<String>? region,
    TfArg<CloudwatchMetricAlarmStatistic>? statistic,
    TfArg<Map<String, String>>? tags,
    TfArg<num>? threshold,
    TfArg<String>? thresholdMetricId,
    TfArg<CloudwatchMetricAlarmTreatMissingData>? treatMissingData,
    TfArg<CloudwatchMetricAlarmUnit>? unit,
    CloudwatchMetricAlarmWarmUpConfiguration? warmUpConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (actionsEnabled != null) 'actions_enabled': actionsEnabled,
           if (alarmActions != null) 'alarm_actions': alarmActions,
           if (alarmDescription != null) 'alarm_description': alarmDescription,
           'alarm_name': alarmName,
           if (comparisonOperator != null)
             'comparison_operator': comparisonOperator,
           if (datapointsToAlarm != null)
             'datapoints_to_alarm': datapointsToAlarm,
           if (dimensions != null) 'dimensions': dimensions,
           if (evaluateLowSampleCountPercentiles != null)
             'evaluate_low_sample_count_percentiles':
                 evaluateLowSampleCountPercentiles,
           if (evaluationInterval != null)
             'evaluation_interval': evaluationInterval,
           if (evaluationPeriods != null)
             'evaluation_periods': evaluationPeriods,
           if (extendedStatistic != null)
             'extended_statistic': extendedStatistic,
           if (insufficientDataActions != null)
             'insufficient_data_actions': insufficientDataActions,
           ...evaluationCriteriaOrMetricNameOrMetricQuery.argMap,
           if (namespace != null) 'namespace': namespace,
           if (okActions != null) 'ok_actions': okActions,
           if (period != null) 'period': period,
           if (region != null) 'region': region,
           if (statistic != null) 'statistic': statistic,
           if (tags != null) 'tags': tags,
           if (threshold != null) 'threshold': threshold,
           if (thresholdMetricId != null)
             'threshold_metric_id': thresholdMetricId,
           if (treatMissingData != null) 'treat_missing_data': treatMissingData,
           if (unit != null) 'unit': unit,
           if (warmUpConfiguration != null)
             'warm_up_configuration': TfArg.literal(
               warmUpConfiguration.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudwatchMetricAlarmSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
