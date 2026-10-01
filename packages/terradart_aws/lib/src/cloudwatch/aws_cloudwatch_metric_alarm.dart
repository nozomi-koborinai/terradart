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
///
/// Pick one with a dot shorthand: `.evaluationCriteria(...)`.
sealed class CloudwatchMetricAlarmSignal {
  const CloudwatchMetricAlarmSignal();

  /// Sets `evaluation_criteria`.
  const factory CloudwatchMetricAlarmSignal.evaluationCriteria(
    CloudwatchMetricAlarmEvaluationCriteria evaluationCriteria,
  ) = CloudwatchMetricAlarmSignalEvaluationCriteria;

  /// Sets `metric_name`.
  const factory CloudwatchMetricAlarmSignal.metricName(
    TfArg<String> metricName,
  ) = CloudwatchMetricAlarmSignalMetricName;

  /// Sets `metric_query`.
  const factory CloudwatchMetricAlarmSignal.metricQuery(
    List<CloudwatchMetricAlarmMetricQuery> metricQuery,
  ) = CloudwatchMetricAlarmSignalMetricQuery;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [CloudwatchMetricAlarmSignal.evaluationCriteria] choice: sets `evaluation_criteria`.
final class CloudwatchMetricAlarmSignalEvaluationCriteria
    extends CloudwatchMetricAlarmSignal {
  const CloudwatchMetricAlarmSignalEvaluationCriteria(this.evaluationCriteria);

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

/// The [CloudwatchMetricAlarmSignal.metricName] choice: sets `metric_name`.
final class CloudwatchMetricAlarmSignalMetricName
    extends CloudwatchMetricAlarmSignal {
  const CloudwatchMetricAlarmSignalMetricName(this.metricName);

  final TfArg<String> metricName;

  @override
  String get blockKey => 'metric_name';

  @override
  Map<String, Object?> encode() => {'metric_name': metricName.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'metric_name': metricName};
}

/// The [CloudwatchMetricAlarmSignal.metricQuery] choice: sets `metric_query`.
final class CloudwatchMetricAlarmSignalMetricQuery
    extends CloudwatchMetricAlarmSignal {
  const CloudwatchMetricAlarmSignalMetricQuery(this.metricQuery);

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

/// At most one of `extended_statistic`, `statistic` on `aws_cloudwatch_metric_alarm`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.extendedStatistic(...)`.
sealed class CloudwatchMetricAlarmAggregation {
  const CloudwatchMetricAlarmAggregation();

  /// Sets `extended_statistic`.
  const factory CloudwatchMetricAlarmAggregation.extendedStatistic(
    TfArg<String> extendedStatistic,
  ) = CloudwatchMetricAlarmAggregationExtendedStatistic;

  /// Sets `statistic`.
  const factory CloudwatchMetricAlarmAggregation.statistic(
    TfArg<CloudwatchMetricAlarmStatistic> statistic,
  ) = CloudwatchMetricAlarmAggregationStatistic;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [CloudwatchMetricAlarmAggregation.extendedStatistic] choice: sets `extended_statistic`.
final class CloudwatchMetricAlarmAggregationExtendedStatistic
    extends CloudwatchMetricAlarmAggregation {
  const CloudwatchMetricAlarmAggregationExtendedStatistic(
    this.extendedStatistic,
  );

  final TfArg<String> extendedStatistic;

  @override
  String get blockKey => 'extended_statistic';

  @override
  Map<String, Object?> encode() => {
    'extended_statistic': extendedStatistic.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'extended_statistic': extendedStatistic,
  };
}

/// The [CloudwatchMetricAlarmAggregation.statistic] choice: sets `statistic`.
final class CloudwatchMetricAlarmAggregationStatistic
    extends CloudwatchMetricAlarmAggregation {
  const CloudwatchMetricAlarmAggregationStatistic(this.statistic);

  final TfArg<CloudwatchMetricAlarmStatistic> statistic;

  @override
  String get blockKey => 'statistic';

  @override
  Map<String, Object?> encode() => {'statistic': statistic.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'statistic': statistic};
}

/// At most one of `threshold`, `threshold_metric_id` on `aws_cloudwatch_metric_alarm`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.threshold(...)`.
sealed class CloudwatchMetricAlarmThreshold {
  const CloudwatchMetricAlarmThreshold();

  /// Sets `threshold`.
  const factory CloudwatchMetricAlarmThreshold.threshold(TfArg<num> threshold) =
      CloudwatchMetricAlarmThresholdChoice;

  /// Sets `threshold_metric_id`.
  const factory CloudwatchMetricAlarmThreshold.thresholdMetricId(
    TfArg<String> thresholdMetricId,
  ) = CloudwatchMetricAlarmThresholdMetricId;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [CloudwatchMetricAlarmThreshold.threshold] choice: sets `threshold`.
final class CloudwatchMetricAlarmThresholdChoice
    extends CloudwatchMetricAlarmThreshold {
  const CloudwatchMetricAlarmThresholdChoice(this.threshold);

  final TfArg<num> threshold;

  @override
  String get blockKey => 'threshold';

  @override
  Map<String, Object?> encode() => {'threshold': threshold.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'threshold': threshold};
}

/// The [CloudwatchMetricAlarmThreshold.thresholdMetricId] choice: sets `threshold_metric_id`.
final class CloudwatchMetricAlarmThresholdMetricId
    extends CloudwatchMetricAlarmThreshold {
  const CloudwatchMetricAlarmThresholdMetricId(this.thresholdMetricId);

  final TfArg<String> thresholdMetricId;

  @override
  String get blockKey => 'threshold_metric_id';

  @override
  Map<String, Object?> encode() => {
    'threshold_metric_id': thresholdMetricId.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'threshold_metric_id': thresholdMetricId,
  };
}

/// Typed helper for the `evaluation_criteria` block of
/// `aws_cloudwatch_metric_alarm` (derived from provider schema).
@immutable
final class CloudwatchMetricAlarmEvaluationCriteria {
  const CloudwatchMetricAlarmEvaluationCriteria({required this.promqlCriteria});

  final CloudwatchMetricAlarmPromqlCriteria promqlCriteria;

  Map<String, Object?> encode() => {'promql_criteria': promqlCriteria.encode()};
}

/// Typed helper for the `evaluation_criteria.promql_criteria` block of
/// `aws_cloudwatch_metric_alarm` (derived from provider schema).
@immutable
final class CloudwatchMetricAlarmPromqlCriteria {
  const CloudwatchMetricAlarmPromqlCriteria({
    this.pendingPeriod,
    required this.query,
    this.recoveryPeriod,
  });

  final TfArg<num>? pendingPeriod;

  final TfArg<String> query;

  final TfArg<num>? recoveryPeriod;

  Map<String, Object?> encode() => {
    'pending_period': ?pendingPeriod?.toTfJson(),
    'query': query.toTfJson(),
    'recovery_period': ?recoveryPeriod?.toTfJson(),
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

  final CloudwatchMetricAlarmMetric? metric;

  Map<String, Object?> encode() => {
    'account_id': ?accountId?.toTfJson(),
    'expression': ?expression?.toTfJson(),
    'id': id.toTfJson(),
    'label': ?label?.toTfJson(),
    'period': ?period?.toTfJson(),
    'return_data': ?returnData?.toTfJson(),
    'metric': ?metric?.encode(),
  };
}

/// Typed helper for the `metric_query.metric` block of
/// `aws_cloudwatch_metric_alarm` (derived from provider schema).
@immutable
final class CloudwatchMetricAlarmMetric {
  const CloudwatchMetricAlarmMetric({
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

  final TfArg<CloudwatchMetricAlarmStat> stat;

  final TfArg<CloudwatchMetricAlarmMetricUnit>? unit;

  Map<String, Object?> encode() => {
    'dimensions': ?dimensions?.toTfJson(),
    'metric_name': metricName.toTfJson(),
    'namespace': ?namespace?.toTfJson(),
    'period': period.toTfJson(),
    'stat': stat.toTfJson(),
    'unit': ?unit?.toTfJson(),
  };
}

/// `stat` — derived from the provider schema description.
enum CloudwatchMetricAlarmStat implements TerraformEnum {
  samplecount('SampleCount'),
  average('Average'),
  sum('Sum'),
  minimum('Minimum'),
  maximum('Maximum');

  const CloudwatchMetricAlarmStat(this.terraformValue);
  @override
  final String terraformValue;
}

/// `unit` — derived from the provider schema description.
enum CloudwatchMetricAlarmMetricUnit implements TerraformEnum {
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

  const CloudwatchMetricAlarmMetricUnit(this.terraformValue);
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
    'only_start_evaluating_after_warm_up_period_ends':
        ?onlyStartEvaluatingAfterWarmUpPeriodEnds?.toTfJson(),
    'warm_up_period_duration_in_minutes': warmUpPeriodDurationInMinutes
        .toTfJson(),
  };
}

/// Factory wrapper for `aws_cloudwatch_metric_alarm`.
final class AwsCloudwatchMetricAlarm extends Resource {
  static const String tfType = 'aws_cloudwatch_metric_alarm';

  AwsCloudwatchMetricAlarm(
    super.localName, {
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
    CloudwatchMetricAlarmAggregation? aggregation,
    TfArg<List<String>>? insufficientDataActions,
    required CloudwatchMetricAlarmSignal signal,
    TfArg<String>? namespace,
    TfArg<List<String>>? okActions,
    TfArg<num>? period,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    CloudwatchMetricAlarmThreshold? threshold,
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
           'actions_enabled': ?actionsEnabled,
           'alarm_actions': ?alarmActions,
           'alarm_description': ?alarmDescription,
           'alarm_name': alarmName,
           'comparison_operator': ?comparisonOperator,
           'datapoints_to_alarm': ?datapointsToAlarm,
           'dimensions': ?dimensions,
           'evaluate_low_sample_count_percentiles':
               ?evaluateLowSampleCountPercentiles,
           'evaluation_interval': ?evaluationInterval,
           'evaluation_periods': ?evaluationPeriods,
           ...?aggregation?.argMap,
           'insufficient_data_actions': ?insufficientDataActions,
           ...signal.argMap,
           'namespace': ?namespace,
           'ok_actions': ?okActions,
           'period': ?period,
           'region': ?region,
           'tags': ?tags,
           ...?threshold?.argMap,
           'treat_missing_data': ?treatMissingData,
           'unit': ?unit,
           if (warmUpConfiguration != null)
             'warm_up_configuration': TfArg.literal(
               warmUpConfiguration.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudwatchMetricAlarmSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudwatchMetricAlarm>`.
  RefTo<AwsCloudwatchMetricAlarm> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `actions_enabled` attribute.
  TfRef<bool> get actionsEnabled =>
      TfRef.attribute<bool>(this, 'actions_enabled');

  /// Reference to `alarm_actions` attribute.
  TfRef<List<String>> get alarmActions =>
      TfRef.attribute<List<String>>(this, 'alarm_actions');

  /// Reference to `alarm_description` attribute.
  TfRef<String> get alarmDescription =>
      TfRef.attribute<String>(this, 'alarm_description');

  /// Reference to `alarm_name` attribute.
  TfRef<String> get alarmName => TfRef.attribute<String>(this, 'alarm_name');

  /// Reference to `comparison_operator` attribute.
  TfRef<String> get comparisonOperator =>
      TfRef.attribute<String>(this, 'comparison_operator');

  /// Reference to `datapoints_to_alarm` attribute.
  TfRef<num> get datapointsToAlarm =>
      TfRef.attribute<num>(this, 'datapoints_to_alarm');

  /// Reference to `dimensions` attribute.
  TfRef<Map<String, String>> get dimensions =>
      TfRef.attribute<Map<String, String>>(this, 'dimensions');

  /// Reference to `evaluate_low_sample_count_percentiles` attribute.
  TfRef<String> get evaluateLowSampleCountPercentiles =>
      TfRef.attribute<String>(this, 'evaluate_low_sample_count_percentiles');

  /// Reference to `evaluation_interval` attribute.
  TfRef<num> get evaluationInterval =>
      TfRef.attribute<num>(this, 'evaluation_interval');

  /// Reference to `evaluation_periods` attribute.
  TfRef<num> get evaluationPeriods =>
      TfRef.attribute<num>(this, 'evaluation_periods');

  /// Reference to `extended_statistic` attribute.
  TfRef<String> get extendedStatistic =>
      TfRef.attribute<String>(this, 'extended_statistic');

  /// Reference to `insufficient_data_actions` attribute.
  TfRef<List<String>> get insufficientDataActions =>
      TfRef.attribute<List<String>>(this, 'insufficient_data_actions');

  /// Reference to `metric_name` attribute.
  TfRef<String> get metricName => TfRef.attribute<String>(this, 'metric_name');

  /// Reference to `namespace` attribute.
  TfRef<String> get namespace => TfRef.attribute<String>(this, 'namespace');

  /// Reference to `ok_actions` attribute.
  TfRef<List<String>> get okActions =>
      TfRef.attribute<List<String>>(this, 'ok_actions');

  /// Reference to `period` attribute.
  TfRef<num> get period => TfRef.attribute<num>(this, 'period');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `statistic` attribute.
  TfRef<String> get statistic => TfRef.attribute<String>(this, 'statistic');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `threshold` attribute.
  TfRef<num> get threshold => TfRef.attribute<num>(this, 'threshold');

  /// Reference to `threshold_metric_id` attribute.
  TfRef<String> get thresholdMetricId =>
      TfRef.attribute<String>(this, 'threshold_metric_id');

  /// Reference to `treat_missing_data` attribute.
  TfRef<String> get treatMissingData =>
      TfRef.attribute<String>(this, 'treat_missing_data');

  /// Reference to `unit` attribute.
  TfRef<String> get unit => TfRef.attribute<String>(this, 'unit');
}
