// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudwatch_metric_alarm`.
const Set<String> _awsCloudwatchMetricAlarmSensitive = <String>{};

/// Cloudwatch Metric Alarm Comparison enum for `comparison_operator`.
extension type const CloudwatchMetricAlarmComparisonOperator._(TfArg<String> _)
    implements TfArg<String> {
  CloudwatchMetricAlarmComparisonOperator.variable(String name)
    : this._(TfArg.variable(name));
  CloudwatchMetricAlarmComparisonOperator.expression(String template)
    : this._(TfArg.expression(template));
  const CloudwatchMetricAlarmComparisonOperator.arg(TfArg<String> arg)
    : this._(arg);

  static const greaterthanorequaltothreshold =
      CloudwatchMetricAlarmComparisonOperator._(
        TfArgLiteral('GreaterThanOrEqualToThreshold'),
      );
  static const greaterthanthreshold = CloudwatchMetricAlarmComparisonOperator._(
    TfArgLiteral('GreaterThanThreshold'),
  );
  static const lessthanthreshold = CloudwatchMetricAlarmComparisonOperator._(
    TfArgLiteral('LessThanThreshold'),
  );
  static const lessthanorequaltothreshold =
      CloudwatchMetricAlarmComparisonOperator._(
        TfArgLiteral('LessThanOrEqualToThreshold'),
      );
  static const lessthanlowerorgreaterthanupperthreshold =
      CloudwatchMetricAlarmComparisonOperator._(
        TfArgLiteral('LessThanLowerOrGreaterThanUpperThreshold'),
      );
  static const lessthanlowerthreshold =
      CloudwatchMetricAlarmComparisonOperator._(
        TfArgLiteral('LessThanLowerThreshold'),
      );
  static const greaterthanupperthreshold =
      CloudwatchMetricAlarmComparisonOperator._(
        TfArgLiteral('GreaterThanUpperThreshold'),
      );

  static const List<CloudwatchMetricAlarmComparisonOperator> values = [
    greaterthanorequaltothreshold,
    greaterthanthreshold,
    lessthanthreshold,
    lessthanorequaltothreshold,
    lessthanlowerorgreaterthanupperthreshold,
    lessthanlowerthreshold,
    greaterthanupperthreshold,
  ];
}

/// Cloudwatch Metric Alarm Evaluate Low Sample Count enum for `evaluate_low_sample_count_percentiles`.
extension type const CloudwatchMetricAlarmEvaluateLowSampleCountPercentiles._(
  TfArg<String> _
) implements TfArg<String> {
  CloudwatchMetricAlarmEvaluateLowSampleCountPercentiles.variable(String name)
    : this._(TfArg.variable(name));
  CloudwatchMetricAlarmEvaluateLowSampleCountPercentiles.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const CloudwatchMetricAlarmEvaluateLowSampleCountPercentiles.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const evaluate =
      CloudwatchMetricAlarmEvaluateLowSampleCountPercentiles._(
        TfArgLiteral('evaluate'),
      );
  static const ignore =
      CloudwatchMetricAlarmEvaluateLowSampleCountPercentiles._(
        TfArgLiteral('ignore'),
      );

  static const List<CloudwatchMetricAlarmEvaluateLowSampleCountPercentiles>
  values = [evaluate, ignore];
}

/// Cloudwatch Metric Alarm enum for `statistic`.
extension type const CloudwatchMetricAlarmStatistic._(TfArg<String> _)
    implements TfArg<String> {
  CloudwatchMetricAlarmStatistic.variable(String name)
    : this._(TfArg.variable(name));
  CloudwatchMetricAlarmStatistic.expression(String template)
    : this._(TfArg.expression(template));
  const CloudwatchMetricAlarmStatistic.arg(TfArg<String> arg) : this._(arg);

  static const samplecount = CloudwatchMetricAlarmStatistic._(
    TfArgLiteral('SampleCount'),
  );
  static const average = CloudwatchMetricAlarmStatistic._(
    TfArgLiteral('Average'),
  );
  static const sum = CloudwatchMetricAlarmStatistic._(TfArgLiteral('Sum'));
  static const minimum = CloudwatchMetricAlarmStatistic._(
    TfArgLiteral('Minimum'),
  );
  static const maximum = CloudwatchMetricAlarmStatistic._(
    TfArgLiteral('Maximum'),
  );

  static const List<CloudwatchMetricAlarmStatistic> values = [
    samplecount,
    average,
    sum,
    minimum,
    maximum,
  ];
}

/// Cloudwatch Metric Alarm Treat Missing enum for `treat_missing_data`.
extension type const CloudwatchMetricAlarmTreatMissingData._(TfArg<String> _)
    implements TfArg<String> {
  CloudwatchMetricAlarmTreatMissingData.variable(String name)
    : this._(TfArg.variable(name));
  CloudwatchMetricAlarmTreatMissingData.expression(String template)
    : this._(TfArg.expression(template));
  const CloudwatchMetricAlarmTreatMissingData.arg(TfArg<String> arg)
    : this._(arg);

  static const breaching = CloudwatchMetricAlarmTreatMissingData._(
    TfArgLiteral('breaching'),
  );
  static const ignore = CloudwatchMetricAlarmTreatMissingData._(
    TfArgLiteral('ignore'),
  );
  static const missing = CloudwatchMetricAlarmTreatMissingData._(
    TfArgLiteral('missing'),
  );
  static const notbreaching = CloudwatchMetricAlarmTreatMissingData._(
    TfArgLiteral('notBreaching'),
  );

  static const List<CloudwatchMetricAlarmTreatMissingData> values = [
    breaching,
    ignore,
    missing,
    notbreaching,
  ];
}

/// Cloudwatch Metric Alarm enum for `unit`.
extension type const CloudwatchMetricAlarmUnit._(TfArg<String> _)
    implements TfArg<String> {
  CloudwatchMetricAlarmUnit.variable(String name)
    : this._(TfArg.variable(name));
  CloudwatchMetricAlarmUnit.expression(String template)
    : this._(TfArg.expression(template));
  const CloudwatchMetricAlarmUnit.arg(TfArg<String> arg) : this._(arg);

  static const seconds = CloudwatchMetricAlarmUnit._(TfArgLiteral('Seconds'));
  static const microseconds = CloudwatchMetricAlarmUnit._(
    TfArgLiteral('Microseconds'),
  );
  static const milliseconds = CloudwatchMetricAlarmUnit._(
    TfArgLiteral('Milliseconds'),
  );
  static const bytes = CloudwatchMetricAlarmUnit._(TfArgLiteral('Bytes'));
  static const kilobytes = CloudwatchMetricAlarmUnit._(
    TfArgLiteral('Kilobytes'),
  );
  static const megabytes = CloudwatchMetricAlarmUnit._(
    TfArgLiteral('Megabytes'),
  );
  static const gigabytes = CloudwatchMetricAlarmUnit._(
    TfArgLiteral('Gigabytes'),
  );
  static const terabytes = CloudwatchMetricAlarmUnit._(
    TfArgLiteral('Terabytes'),
  );
  static const bits = CloudwatchMetricAlarmUnit._(TfArgLiteral('Bits'));
  static const kilobits = CloudwatchMetricAlarmUnit._(TfArgLiteral('Kilobits'));
  static const megabits = CloudwatchMetricAlarmUnit._(TfArgLiteral('Megabits'));
  static const gigabits = CloudwatchMetricAlarmUnit._(TfArgLiteral('Gigabits'));
  static const terabits = CloudwatchMetricAlarmUnit._(TfArgLiteral('Terabits'));
  static const percent = CloudwatchMetricAlarmUnit._(TfArgLiteral('Percent'));
  static const count = CloudwatchMetricAlarmUnit._(TfArgLiteral('Count'));
  static const bytesSecond = CloudwatchMetricAlarmUnit._(
    TfArgLiteral('Bytes/Second'),
  );
  static const kilobytesSecond = CloudwatchMetricAlarmUnit._(
    TfArgLiteral('Kilobytes/Second'),
  );
  static const megabytesSecond = CloudwatchMetricAlarmUnit._(
    TfArgLiteral('Megabytes/Second'),
  );
  static const gigabytesSecond = CloudwatchMetricAlarmUnit._(
    TfArgLiteral('Gigabytes/Second'),
  );
  static const terabytesSecond = CloudwatchMetricAlarmUnit._(
    TfArgLiteral('Terabytes/Second'),
  );
  static const bitsSecond = CloudwatchMetricAlarmUnit._(
    TfArgLiteral('Bits/Second'),
  );
  static const kilobitsSecond = CloudwatchMetricAlarmUnit._(
    TfArgLiteral('Kilobits/Second'),
  );
  static const megabitsSecond = CloudwatchMetricAlarmUnit._(
    TfArgLiteral('Megabits/Second'),
  );
  static const gigabitsSecond = CloudwatchMetricAlarmUnit._(
    TfArgLiteral('Gigabits/Second'),
  );
  static const terabitsSecond = CloudwatchMetricAlarmUnit._(
    TfArgLiteral('Terabits/Second'),
  );
  static const countSecond = CloudwatchMetricAlarmUnit._(
    TfArgLiteral('Count/Second'),
  );
  static const none = CloudwatchMetricAlarmUnit._(TfArgLiteral('None'));

  static const List<CloudwatchMetricAlarmUnit> values = [
    seconds,
    microseconds,
    milliseconds,
    bytes,
    kilobytes,
    megabytes,
    gigabytes,
    terabytes,
    bits,
    kilobits,
    megabits,
    gigabits,
    terabits,
    percent,
    count,
    bytesSecond,
    kilobytesSecond,
    megabytesSecond,
    gigabytesSecond,
    terabytesSecond,
    bitsSecond,
    kilobitsSecond,
    megabitsSecond,
    gigabitsSecond,
    terabitsSecond,
    countSecond,
    none,
  ];
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
    CloudwatchMetricAlarmStatistic statistic,
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

  final CloudwatchMetricAlarmStatistic statistic;

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

  final CloudwatchMetricAlarmStat stat;

  final CloudwatchMetricAlarmMetricUnit? unit;

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
extension type const CloudwatchMetricAlarmStat._(TfArg<String> _)
    implements TfArg<String> {
  CloudwatchMetricAlarmStat.variable(String name)
    : this._(TfArg.variable(name));
  CloudwatchMetricAlarmStat.expression(String template)
    : this._(TfArg.expression(template));
  const CloudwatchMetricAlarmStat.arg(TfArg<String> arg) : this._(arg);

  static const samplecount = CloudwatchMetricAlarmStat._(
    TfArgLiteral('SampleCount'),
  );
  static const average = CloudwatchMetricAlarmStat._(TfArgLiteral('Average'));
  static const sum = CloudwatchMetricAlarmStat._(TfArgLiteral('Sum'));
  static const minimum = CloudwatchMetricAlarmStat._(TfArgLiteral('Minimum'));
  static const maximum = CloudwatchMetricAlarmStat._(TfArgLiteral('Maximum'));

  static const List<CloudwatchMetricAlarmStat> values = [
    samplecount,
    average,
    sum,
    minimum,
    maximum,
  ];
}

/// `unit` — derived from the provider schema description.
extension type const CloudwatchMetricAlarmMetricUnit._(TfArg<String> _)
    implements TfArg<String> {
  CloudwatchMetricAlarmMetricUnit.variable(String name)
    : this._(TfArg.variable(name));
  CloudwatchMetricAlarmMetricUnit.expression(String template)
    : this._(TfArg.expression(template));
  const CloudwatchMetricAlarmMetricUnit.arg(TfArg<String> arg) : this._(arg);

  static const seconds = CloudwatchMetricAlarmMetricUnit._(
    TfArgLiteral('Seconds'),
  );
  static const microseconds = CloudwatchMetricAlarmMetricUnit._(
    TfArgLiteral('Microseconds'),
  );
  static const milliseconds = CloudwatchMetricAlarmMetricUnit._(
    TfArgLiteral('Milliseconds'),
  );
  static const bytes = CloudwatchMetricAlarmMetricUnit._(TfArgLiteral('Bytes'));
  static const kilobytes = CloudwatchMetricAlarmMetricUnit._(
    TfArgLiteral('Kilobytes'),
  );
  static const megabytes = CloudwatchMetricAlarmMetricUnit._(
    TfArgLiteral('Megabytes'),
  );
  static const gigabytes = CloudwatchMetricAlarmMetricUnit._(
    TfArgLiteral('Gigabytes'),
  );
  static const terabytes = CloudwatchMetricAlarmMetricUnit._(
    TfArgLiteral('Terabytes'),
  );
  static const bits = CloudwatchMetricAlarmMetricUnit._(TfArgLiteral('Bits'));
  static const kilobits = CloudwatchMetricAlarmMetricUnit._(
    TfArgLiteral('Kilobits'),
  );
  static const megabits = CloudwatchMetricAlarmMetricUnit._(
    TfArgLiteral('Megabits'),
  );
  static const gigabits = CloudwatchMetricAlarmMetricUnit._(
    TfArgLiteral('Gigabits'),
  );
  static const terabits = CloudwatchMetricAlarmMetricUnit._(
    TfArgLiteral('Terabits'),
  );
  static const percent = CloudwatchMetricAlarmMetricUnit._(
    TfArgLiteral('Percent'),
  );
  static const count = CloudwatchMetricAlarmMetricUnit._(TfArgLiteral('Count'));
  static const bytesSecond = CloudwatchMetricAlarmMetricUnit._(
    TfArgLiteral('Bytes/Second'),
  );
  static const kilobytesSecond = CloudwatchMetricAlarmMetricUnit._(
    TfArgLiteral('Kilobytes/Second'),
  );
  static const megabytesSecond = CloudwatchMetricAlarmMetricUnit._(
    TfArgLiteral('Megabytes/Second'),
  );
  static const gigabytesSecond = CloudwatchMetricAlarmMetricUnit._(
    TfArgLiteral('Gigabytes/Second'),
  );
  static const terabytesSecond = CloudwatchMetricAlarmMetricUnit._(
    TfArgLiteral('Terabytes/Second'),
  );
  static const bitsSecond = CloudwatchMetricAlarmMetricUnit._(
    TfArgLiteral('Bits/Second'),
  );
  static const kilobitsSecond = CloudwatchMetricAlarmMetricUnit._(
    TfArgLiteral('Kilobits/Second'),
  );
  static const megabitsSecond = CloudwatchMetricAlarmMetricUnit._(
    TfArgLiteral('Megabits/Second'),
  );
  static const gigabitsSecond = CloudwatchMetricAlarmMetricUnit._(
    TfArgLiteral('Gigabits/Second'),
  );
  static const terabitsSecond = CloudwatchMetricAlarmMetricUnit._(
    TfArgLiteral('Terabits/Second'),
  );
  static const countSecond = CloudwatchMetricAlarmMetricUnit._(
    TfArgLiteral('Count/Second'),
  );
  static const none = CloudwatchMetricAlarmMetricUnit._(TfArgLiteral('None'));

  static const List<CloudwatchMetricAlarmMetricUnit> values = [
    seconds,
    microseconds,
    milliseconds,
    bytes,
    kilobytes,
    megabytes,
    gigabytes,
    terabytes,
    bits,
    kilobits,
    megabits,
    gigabits,
    terabits,
    percent,
    count,
    bytesSecond,
    kilobytesSecond,
    megabytesSecond,
    gigabytesSecond,
    terabytesSecond,
    bitsSecond,
    kilobitsSecond,
    megabitsSecond,
    gigabitsSecond,
    terabitsSecond,
    countSecond,
    none,
  ];
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
    CloudwatchMetricAlarmComparisonOperator? comparisonOperator,
    TfArg<num>? datapointsToAlarm,
    TfArg<Map<String, String>>? dimensions,
    CloudwatchMetricAlarmEvaluateLowSampleCountPercentiles?
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
    CloudwatchMetricAlarmTreatMissingData? treatMissingData,
    CloudwatchMetricAlarmUnit? unit,
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
