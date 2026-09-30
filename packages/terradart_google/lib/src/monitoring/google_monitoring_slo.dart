// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_monitoring_slo`.
const Set<String> _googleMonitoringSloSensitive = <String>{};

enum MonitoringSloCalendarPeriod implements TerraformEnum {
  day('DAY'),
  week('WEEK'),
  fortnight('FORTNIGHT'),
  month('MONTH');

  const MonitoringSloCalendarPeriod(this.terraformValue);
  @override
  final String terraformValue;
}

/// Exactly one of `rolling_period_days`, `calendar_period` on `google_monitoring_slo`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.rollingPeriodDays(...)`.
sealed class MonitoringSloPeriod {
  const MonitoringSloPeriod();

  /// Sets `rolling_period_days`.
  const factory MonitoringSloPeriod.rollingPeriodDays(
    TfArg<num> rollingPeriodDays,
  ) = MonitoringSloPeriodRollingPeriodDays;

  /// Sets `calendar_period`.
  const factory MonitoringSloPeriod.calendarPeriod(
    TfArg<MonitoringSloCalendarPeriod> calendarPeriod,
  ) = MonitoringSloPeriodCalendarPeriod;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [MonitoringSloPeriod.rollingPeriodDays] choice: sets `rolling_period_days`.
final class MonitoringSloPeriodRollingPeriodDays extends MonitoringSloPeriod {
  const MonitoringSloPeriodRollingPeriodDays(this.rollingPeriodDays);

  final TfArg<num> rollingPeriodDays;

  @override
  String get blockKey => 'rolling_period_days';

  @override
  Map<String, Object?> encode() => {
    'rolling_period_days': rollingPeriodDays.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'rolling_period_days': rollingPeriodDays,
  };
}

/// The [MonitoringSloPeriod.calendarPeriod] choice: sets `calendar_period`.
final class MonitoringSloPeriodCalendarPeriod extends MonitoringSloPeriod {
  const MonitoringSloPeriodCalendarPeriod(this.calendarPeriod);

  final TfArg<MonitoringSloCalendarPeriod> calendarPeriod;

  @override
  String get blockKey => 'calendar_period';

  @override
  Map<String, Object?> encode() => {
    'calendar_period': calendarPeriod.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {'calendar_period': calendarPeriod};
}

/// Exactly one of `basic_sli`, `request_based_sli`, `windows_based_sli` on `google_monitoring_slo`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.basicSli(...)`.
sealed class MonitoringSloSli {
  const MonitoringSloSli();

  /// Sets `basic_sli`.
  const factory MonitoringSloSli.basicSli(MonitoringSloBasicSli basicSli) =
      MonitoringSloSliBasicSli;

  /// Sets `request_based_sli`.
  const factory MonitoringSloSli.requestBasedSli(
    MonitoringSloRequestBasedSli requestBasedSli,
  ) = MonitoringSloSliRequestBasedSli;

  /// Sets `windows_based_sli`.
  const factory MonitoringSloSli.windowsBasedSli(
    MonitoringSloWindowsBasedSli windowsBasedSli,
  ) = MonitoringSloSliWindowsBasedSli;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [MonitoringSloSli.basicSli] choice: sets `basic_sli`.
final class MonitoringSloSliBasicSli extends MonitoringSloSli {
  const MonitoringSloSliBasicSli(this.basicSli);

  final MonitoringSloBasicSli basicSli;

  @override
  String get blockKey => 'basic_sli';

  @override
  Map<String, Object?> encode() => {'basic_sli': basicSli.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'basic_sli': TfArg.literal(basicSli.encode()),
  };
}

/// The [MonitoringSloSli.requestBasedSli] choice: sets `request_based_sli`.
final class MonitoringSloSliRequestBasedSli extends MonitoringSloSli {
  const MonitoringSloSliRequestBasedSli(this.requestBasedSli);

  final MonitoringSloRequestBasedSli requestBasedSli;

  @override
  String get blockKey => 'request_based_sli';

  @override
  Map<String, Object?> encode() => {
    'request_based_sli': requestBasedSli.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'request_based_sli': TfArg.literal(requestBasedSli.encode()),
  };
}

/// The [MonitoringSloSli.windowsBasedSli] choice: sets `windows_based_sli`.
final class MonitoringSloSliWindowsBasedSli extends MonitoringSloSli {
  const MonitoringSloSliWindowsBasedSli(this.windowsBasedSli);

  final MonitoringSloWindowsBasedSli windowsBasedSli;

  @override
  String get blockKey => 'windows_based_sli';

  @override
  Map<String, Object?> encode() => {
    'windows_based_sli': windowsBasedSli.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'windows_based_sli': TfArg.literal(windowsBasedSli.encode()),
  };
}

/// Typed helper for the `basic_sli` block of
/// `google_monitoring_slo` (derived from provider schema).
@immutable
final class MonitoringSloBasicSli {
  const MonitoringSloBasicSli({
    this.location,
    this.method,
    this.version,
    required this.objective,
  });

  final TfArg<List<Object?>>? location;

  final TfArg<List<Object?>>? method;

  final TfArg<List<Object?>>? version;

  final MonitoringSloBasicSliObjective objective;

  Map<String, Object?> encode() => {
    'location': ?location?.toTfJson(),
    'method': ?method?.toTfJson(),
    'version': ?version?.toTfJson(),
    ...objective.encode(),
  };
}

/// Exactly one of `latency`, `availability` on the `basic_sli` block of `google_monitoring_slo`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.latency(...)`.
sealed class MonitoringSloBasicSliObjective {
  const MonitoringSloBasicSliObjective();

  /// Sets `latency`.
  const factory MonitoringSloBasicSliObjective.latency(
    MonitoringSloBasicSliLatency latency,
  ) = MonitoringSloBasicSliObjectiveLatency;

  /// Sets `availability`.
  const factory MonitoringSloBasicSliObjective.availability(
    MonitoringSloBasicSliAvailability availability,
  ) = MonitoringSloBasicSliObjectiveAvailability;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [MonitoringSloBasicSliObjective.latency] choice: sets `latency`.
final class MonitoringSloBasicSliObjectiveLatency
    extends MonitoringSloBasicSliObjective {
  const MonitoringSloBasicSliObjectiveLatency(this.latency);

  final MonitoringSloBasicSliLatency latency;

  @override
  String get blockKey => 'latency';

  @override
  Map<String, Object?> encode() => {'latency': latency.encode()};
}

/// The [MonitoringSloBasicSliObjective.availability] choice: sets `availability`.
final class MonitoringSloBasicSliObjectiveAvailability
    extends MonitoringSloBasicSliObjective {
  const MonitoringSloBasicSliObjectiveAvailability(this.availability);

  final MonitoringSloBasicSliAvailability availability;

  @override
  String get blockKey => 'availability';

  @override
  Map<String, Object?> encode() => {'availability': availability.encode()};
}

/// Typed helper for the `basic_sli.availability` block of
/// `google_monitoring_slo` (derived from provider schema).
@immutable
final class MonitoringSloBasicSliAvailability {
  const MonitoringSloBasicSliAvailability({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {'enabled': ?enabled?.toTfJson()};
}

/// Typed helper for the `basic_sli.latency` block of
/// `google_monitoring_slo` (derived from provider schema).
@immutable
final class MonitoringSloBasicSliLatency {
  const MonitoringSloBasicSliLatency({required this.threshold});

  final TfArg<String> threshold;

  Map<String, Object?> encode() => {'threshold': threshold.toTfJson()};
}

/// Exactly one of `good_total_ratio`, `distribution_cut` on the `request_based_sli` block of `google_monitoring_slo`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.goodTotalRatio(...)`.
sealed class MonitoringSloRequestBasedSli {
  const MonitoringSloRequestBasedSli();

  /// Sets `good_total_ratio`.
  const factory MonitoringSloRequestBasedSli.goodTotalRatio(
    MonitoringSloRequestBasedSliGoodTotalRatio goodTotalRatio,
  ) = MonitoringSloRequestBasedSliGoodTotalRatioChoice;

  /// Sets `distribution_cut`.
  const factory MonitoringSloRequestBasedSli.distributionCut(
    MonitoringSloRequestBasedSliDistributionCut distributionCut,
  ) = MonitoringSloRequestBasedSliDistributionCutChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [MonitoringSloRequestBasedSli.goodTotalRatio] choice: sets `good_total_ratio`.
final class MonitoringSloRequestBasedSliGoodTotalRatioChoice
    extends MonitoringSloRequestBasedSli {
  const MonitoringSloRequestBasedSliGoodTotalRatioChoice(this.goodTotalRatio);

  final MonitoringSloRequestBasedSliGoodTotalRatio goodTotalRatio;

  @override
  String get blockKey => 'good_total_ratio';

  @override
  Map<String, Object?> encode() => {
    'good_total_ratio': goodTotalRatio.encode(),
  };
}

/// The [MonitoringSloRequestBasedSli.distributionCut] choice: sets `distribution_cut`.
final class MonitoringSloRequestBasedSliDistributionCutChoice
    extends MonitoringSloRequestBasedSli {
  const MonitoringSloRequestBasedSliDistributionCutChoice(this.distributionCut);

  final MonitoringSloRequestBasedSliDistributionCut distributionCut;

  @override
  String get blockKey => 'distribution_cut';

  @override
  Map<String, Object?> encode() => {
    'distribution_cut': distributionCut.encode(),
  };
}

/// Typed helper for the `request_based_sli.distribution_cut` block of
/// `google_monitoring_slo` (derived from provider schema).
@immutable
final class MonitoringSloRequestBasedSliDistributionCut {
  const MonitoringSloRequestBasedSliDistributionCut({
    required this.distributionFilter,
    required this.range,
  });

  final TfArg<String> distributionFilter;

  final MonitoringSloRequestBasedSliDistributionCutRange range;

  Map<String, Object?> encode() => {
    'distribution_filter': distributionFilter.toTfJson(),
    'range': range.encode(),
  };
}

/// Typed helper for the `request_based_sli.distribution_cut.range` block of
/// `google_monitoring_slo` (derived from provider schema).
@immutable
final class MonitoringSloRequestBasedSliDistributionCutRange {
  const MonitoringSloRequestBasedSliDistributionCutRange({this.max, this.min});

  final TfArg<num>? max;

  final TfArg<num>? min;

  Map<String, Object?> encode() => {
    'max': ?max?.toTfJson(),
    'min': ?min?.toTfJson(),
  };
}

/// Typed helper for the `request_based_sli.good_total_ratio` block of
/// `google_monitoring_slo` (derived from provider schema).
@immutable
final class MonitoringSloRequestBasedSliGoodTotalRatio {
  const MonitoringSloRequestBasedSliGoodTotalRatio({
    this.badServiceFilter,
    this.goodServiceFilter,
    this.totalServiceFilter,
  });

  final TfArg<String>? badServiceFilter;

  final TfArg<String>? goodServiceFilter;

  final TfArg<String>? totalServiceFilter;

  Map<String, Object?> encode() => {
    'bad_service_filter': ?badServiceFilter?.toTfJson(),
    'good_service_filter': ?goodServiceFilter?.toTfJson(),
    'total_service_filter': ?totalServiceFilter?.toTfJson(),
  };
}

/// Typed helper for the `windows_based_sli` block of
/// `google_monitoring_slo` (derived from provider schema).
@immutable
final class MonitoringSloWindowsBasedSli {
  const MonitoringSloWindowsBasedSli({
    required this.criterion,
    this.windowPeriod,
  });

  final MonitoringSloWindowsBasedSliCriterion criterion;

  final TfArg<String>? windowPeriod;

  Map<String, Object?> encode() => {
    ...criterion.encode(),
    'window_period': ?windowPeriod?.toTfJson(),
  };
}

/// Exactly one of `good_bad_metric_filter`, `good_total_ratio_threshold`, `metric_mean_in_range`, `metric_sum_in_range` on the `windows_based_sli` block of `google_monitoring_slo`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.goodBadMetricFilter(...)`.
sealed class MonitoringSloWindowsBasedSliCriterion {
  const MonitoringSloWindowsBasedSliCriterion();

  /// Sets `good_bad_metric_filter`.
  const factory MonitoringSloWindowsBasedSliCriterion.goodBadMetricFilter(
    TfArg<String> goodBadMetricFilter,
  ) = MonitoringSloWindowsBasedSliCriterionGoodBadMetricFilter;

  /// Sets `good_total_ratio_threshold`.
  const factory MonitoringSloWindowsBasedSliCriterion.goodTotalRatioThreshold(
    MonitoringSloWindowsBasedSliGoodTotalRatioThreshold goodTotalRatioThreshold,
  ) = MonitoringSloWindowsBasedSliCriterionGoodTotalRatioThreshold;

  /// Sets `metric_mean_in_range`.
  const factory MonitoringSloWindowsBasedSliCriterion.metricMeanInRange(
    MonitoringSloWindowsBasedSliMetricMeanInRange metricMeanInRange,
  ) = MonitoringSloWindowsBasedSliCriterionMetricMeanInRange;

  /// Sets `metric_sum_in_range`.
  const factory MonitoringSloWindowsBasedSliCriterion.metricSumInRange(
    MonitoringSloWindowsBasedSliMetricSumInRange metricSumInRange,
  ) = MonitoringSloWindowsBasedSliCriterionMetricSumInRange;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [MonitoringSloWindowsBasedSliCriterion.goodBadMetricFilter] choice: sets `good_bad_metric_filter`.
final class MonitoringSloWindowsBasedSliCriterionGoodBadMetricFilter
    extends MonitoringSloWindowsBasedSliCriterion {
  const MonitoringSloWindowsBasedSliCriterionGoodBadMetricFilter(
    this.goodBadMetricFilter,
  );

  final TfArg<String> goodBadMetricFilter;

  @override
  String get blockKey => 'good_bad_metric_filter';

  @override
  Map<String, Object?> encode() => {
    'good_bad_metric_filter': goodBadMetricFilter.toTfJson(),
  };
}

/// The [MonitoringSloWindowsBasedSliCriterion.goodTotalRatioThreshold] choice: sets `good_total_ratio_threshold`.
final class MonitoringSloWindowsBasedSliCriterionGoodTotalRatioThreshold
    extends MonitoringSloWindowsBasedSliCriterion {
  const MonitoringSloWindowsBasedSliCriterionGoodTotalRatioThreshold(
    this.goodTotalRatioThreshold,
  );

  final MonitoringSloWindowsBasedSliGoodTotalRatioThreshold
  goodTotalRatioThreshold;

  @override
  String get blockKey => 'good_total_ratio_threshold';

  @override
  Map<String, Object?> encode() => {
    'good_total_ratio_threshold': goodTotalRatioThreshold.encode(),
  };
}

/// The [MonitoringSloWindowsBasedSliCriterion.metricMeanInRange] choice: sets `metric_mean_in_range`.
final class MonitoringSloWindowsBasedSliCriterionMetricMeanInRange
    extends MonitoringSloWindowsBasedSliCriterion {
  const MonitoringSloWindowsBasedSliCriterionMetricMeanInRange(
    this.metricMeanInRange,
  );

  final MonitoringSloWindowsBasedSliMetricMeanInRange metricMeanInRange;

  @override
  String get blockKey => 'metric_mean_in_range';

  @override
  Map<String, Object?> encode() => {
    'metric_mean_in_range': metricMeanInRange.encode(),
  };
}

/// The [MonitoringSloWindowsBasedSliCriterion.metricSumInRange] choice: sets `metric_sum_in_range`.
final class MonitoringSloWindowsBasedSliCriterionMetricSumInRange
    extends MonitoringSloWindowsBasedSliCriterion {
  const MonitoringSloWindowsBasedSliCriterionMetricSumInRange(
    this.metricSumInRange,
  );

  final MonitoringSloWindowsBasedSliMetricSumInRange metricSumInRange;

  @override
  String get blockKey => 'metric_sum_in_range';

  @override
  Map<String, Object?> encode() => {
    'metric_sum_in_range': metricSumInRange.encode(),
  };
}

/// Typed helper for the `windows_based_sli.good_total_ratio_threshold` block of
/// `google_monitoring_slo` (derived from provider schema).
@immutable
final class MonitoringSloWindowsBasedSliGoodTotalRatioThreshold {
  const MonitoringSloWindowsBasedSliGoodTotalRatioThreshold({
    this.threshold,
    required this.measure,
  });

  final TfArg<num>? threshold;

  final MonitoringSloWindowsBasedSliGoodTotalRatioThresholdMeasure measure;

  Map<String, Object?> encode() => {
    'threshold': ?threshold?.toTfJson(),
    ...measure.encode(),
  };
}

/// Exactly one of `performance`, `basic_sli_performance` on the `windows_based_sli.good_total_ratio_threshold` block of `google_monitoring_slo`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.performance(...)`.
sealed class MonitoringSloWindowsBasedSliGoodTotalRatioThresholdMeasure {
  const MonitoringSloWindowsBasedSliGoodTotalRatioThresholdMeasure();

  /// Sets `performance`.
  const factory MonitoringSloWindowsBasedSliGoodTotalRatioThresholdMeasure.performance(
    MonitoringSloWindowsBasedSliGoodTotalRatioThresholdPerformance performance,
  ) = MonitoringSloWindowsBasedSliGoodTotalRatioThresholdMeasurePerformance;

  /// Sets `basic_sli_performance`.
  const factory MonitoringSloWindowsBasedSliGoodTotalRatioThresholdMeasure.basicSliPerformance(
    MonitoringSloWindowsBasedSliGoodTotalRatioThresholdBasicSliPerformance
    basicSliPerformance,
  ) = MonitoringSloWindowsBasedSliGoodTotalRatioThresholdMeasureBasicSliPerformance;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [MonitoringSloWindowsBasedSliGoodTotalRatioThresholdMeasure.performance] choice: sets `performance`.
final class MonitoringSloWindowsBasedSliGoodTotalRatioThresholdMeasurePerformance
    extends MonitoringSloWindowsBasedSliGoodTotalRatioThresholdMeasure {
  const MonitoringSloWindowsBasedSliGoodTotalRatioThresholdMeasurePerformance(
    this.performance,
  );

  final MonitoringSloWindowsBasedSliGoodTotalRatioThresholdPerformance
  performance;

  @override
  String get blockKey => 'performance';

  @override
  Map<String, Object?> encode() => {'performance': performance.encode()};
}

/// The [MonitoringSloWindowsBasedSliGoodTotalRatioThresholdMeasure.basicSliPerformance] choice: sets `basic_sli_performance`.
final class MonitoringSloWindowsBasedSliGoodTotalRatioThresholdMeasureBasicSliPerformance
    extends MonitoringSloWindowsBasedSliGoodTotalRatioThresholdMeasure {
  const MonitoringSloWindowsBasedSliGoodTotalRatioThresholdMeasureBasicSliPerformance(
    this.basicSliPerformance,
  );

  final MonitoringSloWindowsBasedSliGoodTotalRatioThresholdBasicSliPerformance
  basicSliPerformance;

  @override
  String get blockKey => 'basic_sli_performance';

  @override
  Map<String, Object?> encode() => {
    'basic_sli_performance': basicSliPerformance.encode(),
  };
}

/// Typed helper for the `windows_based_sli.good_total_ratio_threshold.basic_sli_performance` block of
/// `google_monitoring_slo` (derived from provider schema).
@immutable
final class MonitoringSloWindowsBasedSliGoodTotalRatioThresholdBasicSliPerformance {
  const MonitoringSloWindowsBasedSliGoodTotalRatioThresholdBasicSliPerformance({
    this.location,
    this.method,
    this.version,
    required this.objective,
  });

  final TfArg<List<Object?>>? location;

  final TfArg<List<Object?>>? method;

  final TfArg<List<Object?>>? version;

  final MonitoringSloWindowsBasedSliGoodTotalRatioThresholdBasicSliPerformanceObjective
  objective;

  Map<String, Object?> encode() => {
    'location': ?location?.toTfJson(),
    'method': ?method?.toTfJson(),
    'version': ?version?.toTfJson(),
    ...objective.encode(),
  };
}

/// Exactly one of `latency`, `availability` on the `windows_based_sli.good_total_ratio_threshold.basic_sli_performance` block of `google_monitoring_slo`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.latency(...)`.
sealed class MonitoringSloWindowsBasedSliGoodTotalRatioThresholdBasicSliPerformanceObjective {
  const MonitoringSloWindowsBasedSliGoodTotalRatioThresholdBasicSliPerformanceObjective();

  /// Sets `latency`.
  const factory MonitoringSloWindowsBasedSliGoodTotalRatioThresholdBasicSliPerformanceObjective.latency(
    MonitoringSloWindowsBasedSliGoodTotalRatioThresholdBasicSliPerformanceLatency
    latency,
  ) = MonitoringSloWindowsBasedSliGoodTotalRatioThresholdBasicSliPerformanceObjectiveLatency;

  /// Sets `availability`.
  const factory MonitoringSloWindowsBasedSliGoodTotalRatioThresholdBasicSliPerformanceObjective.availability(
    MonitoringSloWindowsBasedSliGoodTotalRatioThresholdBasicSliPerformanceAvailability
    availability,
  ) = MonitoringSloWindowsBasedSliGoodTotalRatioThresholdBasicSliPerformanceObjectiveAvailability;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [MonitoringSloWindowsBasedSliGoodTotalRatioThresholdBasicSliPerformanceObjective.latency] choice: sets `latency`.
final class MonitoringSloWindowsBasedSliGoodTotalRatioThresholdBasicSliPerformanceObjectiveLatency
    extends
        MonitoringSloWindowsBasedSliGoodTotalRatioThresholdBasicSliPerformanceObjective {
  const MonitoringSloWindowsBasedSliGoodTotalRatioThresholdBasicSliPerformanceObjectiveLatency(
    this.latency,
  );

  final MonitoringSloWindowsBasedSliGoodTotalRatioThresholdBasicSliPerformanceLatency
  latency;

  @override
  String get blockKey => 'latency';

  @override
  Map<String, Object?> encode() => {'latency': latency.encode()};
}

/// The [MonitoringSloWindowsBasedSliGoodTotalRatioThresholdBasicSliPerformanceObjective.availability] choice: sets `availability`.
final class MonitoringSloWindowsBasedSliGoodTotalRatioThresholdBasicSliPerformanceObjectiveAvailability
    extends
        MonitoringSloWindowsBasedSliGoodTotalRatioThresholdBasicSliPerformanceObjective {
  const MonitoringSloWindowsBasedSliGoodTotalRatioThresholdBasicSliPerformanceObjectiveAvailability(
    this.availability,
  );

  final MonitoringSloWindowsBasedSliGoodTotalRatioThresholdBasicSliPerformanceAvailability
  availability;

  @override
  String get blockKey => 'availability';

  @override
  Map<String, Object?> encode() => {'availability': availability.encode()};
}

/// Typed helper for the `windows_based_sli.good_total_ratio_threshold.basic_sli_performance.availability` block of
/// `google_monitoring_slo` (derived from provider schema).
@immutable
final class MonitoringSloWindowsBasedSliGoodTotalRatioThresholdBasicSliPerformanceAvailability {
  const MonitoringSloWindowsBasedSliGoodTotalRatioThresholdBasicSliPerformanceAvailability({
    this.enabled,
  });

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {'enabled': ?enabled?.toTfJson()};
}

/// Typed helper for the `windows_based_sli.good_total_ratio_threshold.basic_sli_performance.latency` block of
/// `google_monitoring_slo` (derived from provider schema).
@immutable
final class MonitoringSloWindowsBasedSliGoodTotalRatioThresholdBasicSliPerformanceLatency {
  const MonitoringSloWindowsBasedSliGoodTotalRatioThresholdBasicSliPerformanceLatency({
    required this.threshold,
  });

  final TfArg<String> threshold;

  Map<String, Object?> encode() => {'threshold': threshold.toTfJson()};
}

/// Exactly one of `good_total_ratio`, `distribution_cut` on the `windows_based_sli.good_total_ratio_threshold.performance` block of `google_monitoring_slo`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.goodTotalRatio(...)`.
sealed class MonitoringSloWindowsBasedSliGoodTotalRatioThresholdPerformance {
  const MonitoringSloWindowsBasedSliGoodTotalRatioThresholdPerformance();

  /// Sets `good_total_ratio`.
  const factory MonitoringSloWindowsBasedSliGoodTotalRatioThresholdPerformance.goodTotalRatio(
    MonitoringSloWindowsBasedSliGoodTotalRatioThresholdPerformanceGoodTotalRatio
    goodTotalRatio,
  ) = MonitoringSloWindowsBasedSliGoodTotalRatioThresholdPerformanceGoodTotalRatioChoice;

  /// Sets `distribution_cut`.
  const factory MonitoringSloWindowsBasedSliGoodTotalRatioThresholdPerformance.distributionCut(
    MonitoringSloWindowsBasedSliGoodTotalRatioThresholdPerformanceDistributionCut
    distributionCut,
  ) = MonitoringSloWindowsBasedSliGoodTotalRatioThresholdPerformanceDistributionCutChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [MonitoringSloWindowsBasedSliGoodTotalRatioThresholdPerformance.goodTotalRatio] choice: sets `good_total_ratio`.
final class MonitoringSloWindowsBasedSliGoodTotalRatioThresholdPerformanceGoodTotalRatioChoice
    extends MonitoringSloWindowsBasedSliGoodTotalRatioThresholdPerformance {
  const MonitoringSloWindowsBasedSliGoodTotalRatioThresholdPerformanceGoodTotalRatioChoice(
    this.goodTotalRatio,
  );

  final MonitoringSloWindowsBasedSliGoodTotalRatioThresholdPerformanceGoodTotalRatio
  goodTotalRatio;

  @override
  String get blockKey => 'good_total_ratio';

  @override
  Map<String, Object?> encode() => {
    'good_total_ratio': goodTotalRatio.encode(),
  };
}

/// The [MonitoringSloWindowsBasedSliGoodTotalRatioThresholdPerformance.distributionCut] choice: sets `distribution_cut`.
final class MonitoringSloWindowsBasedSliGoodTotalRatioThresholdPerformanceDistributionCutChoice
    extends MonitoringSloWindowsBasedSliGoodTotalRatioThresholdPerformance {
  const MonitoringSloWindowsBasedSliGoodTotalRatioThresholdPerformanceDistributionCutChoice(
    this.distributionCut,
  );

  final MonitoringSloWindowsBasedSliGoodTotalRatioThresholdPerformanceDistributionCut
  distributionCut;

  @override
  String get blockKey => 'distribution_cut';

  @override
  Map<String, Object?> encode() => {
    'distribution_cut': distributionCut.encode(),
  };
}

/// Typed helper for the `windows_based_sli.good_total_ratio_threshold.performance.distribution_cut` block of
/// `google_monitoring_slo` (derived from provider schema).
@immutable
final class MonitoringSloWindowsBasedSliGoodTotalRatioThresholdPerformanceDistributionCut {
  const MonitoringSloWindowsBasedSliGoodTotalRatioThresholdPerformanceDistributionCut({
    required this.distributionFilter,
    required this.range,
  });

  final TfArg<String> distributionFilter;

  final MonitoringSloWindowsBasedSliGoodTotalRatioThresholdPerformanceDistributionCutRange
  range;

  Map<String, Object?> encode() => {
    'distribution_filter': distributionFilter.toTfJson(),
    'range': range.encode(),
  };
}

/// Typed helper for the `windows_based_sli.good_total_ratio_threshold.performance.distribution_cut.range` block of
/// `google_monitoring_slo` (derived from provider schema).
@immutable
final class MonitoringSloWindowsBasedSliGoodTotalRatioThresholdPerformanceDistributionCutRange {
  const MonitoringSloWindowsBasedSliGoodTotalRatioThresholdPerformanceDistributionCutRange({
    this.max,
    this.min,
  });

  final TfArg<num>? max;

  final TfArg<num>? min;

  Map<String, Object?> encode() => {
    'max': ?max?.toTfJson(),
    'min': ?min?.toTfJson(),
  };
}

/// Typed helper for the `windows_based_sli.good_total_ratio_threshold.performance.good_total_ratio` block of
/// `google_monitoring_slo` (derived from provider schema).
@immutable
final class MonitoringSloWindowsBasedSliGoodTotalRatioThresholdPerformanceGoodTotalRatio {
  const MonitoringSloWindowsBasedSliGoodTotalRatioThresholdPerformanceGoodTotalRatio({
    this.badServiceFilter,
    this.goodServiceFilter,
    this.totalServiceFilter,
  });

  final TfArg<String>? badServiceFilter;

  final TfArg<String>? goodServiceFilter;

  final TfArg<String>? totalServiceFilter;

  Map<String, Object?> encode() => {
    'bad_service_filter': ?badServiceFilter?.toTfJson(),
    'good_service_filter': ?goodServiceFilter?.toTfJson(),
    'total_service_filter': ?totalServiceFilter?.toTfJson(),
  };
}

/// Typed helper for the `windows_based_sli.metric_mean_in_range` block of
/// `google_monitoring_slo` (derived from provider schema).
@immutable
final class MonitoringSloWindowsBasedSliMetricMeanInRange {
  const MonitoringSloWindowsBasedSliMetricMeanInRange({
    required this.timeSeries,
    required this.range,
  });

  final TfArg<String> timeSeries;

  final MonitoringSloWindowsBasedSliMetricMeanInRangeRange range;

  Map<String, Object?> encode() => {
    'time_series': timeSeries.toTfJson(),
    'range': range.encode(),
  };
}

/// Typed helper for the `windows_based_sli.metric_mean_in_range.range` block of
/// `google_monitoring_slo` (derived from provider schema).
@immutable
final class MonitoringSloWindowsBasedSliMetricMeanInRangeRange {
  const MonitoringSloWindowsBasedSliMetricMeanInRangeRange({
    this.max,
    this.min,
  });

  final TfArg<num>? max;

  final TfArg<num>? min;

  Map<String, Object?> encode() => {
    'max': ?max?.toTfJson(),
    'min': ?min?.toTfJson(),
  };
}

/// Typed helper for the `windows_based_sli.metric_sum_in_range` block of
/// `google_monitoring_slo` (derived from provider schema).
@immutable
final class MonitoringSloWindowsBasedSliMetricSumInRange {
  const MonitoringSloWindowsBasedSliMetricSumInRange({
    required this.timeSeries,
    required this.range,
  });

  final TfArg<String> timeSeries;

  final MonitoringSloWindowsBasedSliMetricSumInRangeRange range;

  Map<String, Object?> encode() => {
    'time_series': timeSeries.toTfJson(),
    'range': range.encode(),
  };
}

/// Typed helper for the `windows_based_sli.metric_sum_in_range.range` block of
/// `google_monitoring_slo` (derived from provider schema).
@immutable
final class MonitoringSloWindowsBasedSliMetricSumInRangeRange {
  const MonitoringSloWindowsBasedSliMetricSumInRangeRange({this.max, this.min});

  final TfArg<num>? max;

  final TfArg<num>? min;

  Map<String, Object?> encode() => {
    'max': ?max?.toTfJson(),
    'min': ?min?.toTfJson(),
  };
}

/// Factory wrapper for `google_monitoring_slo`.
///
/// A Service-Level Objective (SLO) describes the level of desired good service.
/// It consists of a service-level indicator (SLI), a performance goal, and a
/// period over which the objective is to be evaluated against that goal. The
/// SLO can use SLIs defined in a number of different manners. Typical SLOs
/// might include "99% of requests in each rolling week have latency below 200
/// milliseconds" or "99.5% of requests in each calendar month return
/// successfully."
///
/// Service-level objective on a [GoogleMonitoringService]. `sli` is sealed:
/// exactly one of `.basicSli(...)`, `.requestBasedSli(...)` or
/// `.windowsBasedSli(...)`; `period` is `.rollingPeriodDays(...)` or
/// `.calendarPeriod(...)`.
///
/// Example (availability basic SLI):
/// ```dart
/// GoogleMonitoringSlo(
///   localName: 'api_availability',
///   service: .ref(apiService.nameRef),
///   goal: .literal(0.99),
///   displayName: .literal('API availability'),
///   period: .rollingPeriodDays(.literal(30)),
///   sli: .basicSli(
///     MonitoringSloBasicSli(
///       objective: .availability(
///         MonitoringSloBasicSliAvailability(enabled: .literal(true)),
///       ),
///     ),
///   ),
/// );
/// ```
final class GoogleMonitoringSlo extends Resource {
  static const String tfType = 'google_monitoring_slo';

  GoogleMonitoringSlo({
    required super.localName,
    required TfArg<String> service,
    required TfArg<num> goal,
    TfArg<String>? displayName,
    required MonitoringSloSli sli,
    required MonitoringSloPeriod period,
    TfArg<String>? sloId,
    TfArg<Map<String, String>>? userLabels,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'service': service,
           'goal': goal,
           'display_name': ?displayName,
           ...period.argMap,
           'slo_id': ?sloId,
           'user_labels': ?userLabels,
           'project': ?project,
           ...sli.argMap,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleMonitoringSloSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleMonitoringSlo>`.
  RefTo<GoogleMonitoringSlo> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
