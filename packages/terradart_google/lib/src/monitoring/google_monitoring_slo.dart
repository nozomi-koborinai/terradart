// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_monitoring_slo`.
const Set<String> _googleMonitoringSloSensitive = <String>{};

extension type const MonitoringSloCalendarPeriod._(TfArg<String> _)
    implements TfArg<String> {
  MonitoringSloCalendarPeriod.variable(String name)
    : this._(TfArg.variable(name));
  MonitoringSloCalendarPeriod.expression(String template)
    : this._(TfArg.expression(template));
  const MonitoringSloCalendarPeriod.arg(TfArg<String> arg) : this._(arg);

  static const day = MonitoringSloCalendarPeriod._(TfArgLiteral('DAY'));
  static const week = MonitoringSloCalendarPeriod._(TfArgLiteral('WEEK'));
  static const fortnight = MonitoringSloCalendarPeriod._(
    TfArgLiteral('FORTNIGHT'),
  );
  static const month = MonitoringSloCalendarPeriod._(TfArgLiteral('MONTH'));

  static const List<MonitoringSloCalendarPeriod> values = [
    day,
    week,
    fortnight,
    month,
  ];
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
    MonitoringSloCalendarPeriod calendarPeriod,
  ) = MonitoringSloCalendarPeriodChoice;

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

/// The [MonitoringSloPeriod.rollingPeriodDays] choice: sets `rolling_period_days`.
final class MonitoringSloPeriodRollingPeriodDays extends MonitoringSloPeriod {
  const MonitoringSloPeriodRollingPeriodDays(this.rollingPeriodDays);

  final TfArg<num> rollingPeriodDays;

  @internal
  @override
  String get blockKey => 'rolling_period_days';

  @internal
  @override
  Map<String, Object?> encode() => {
    'rolling_period_days': rollingPeriodDays.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'rolling_period_days': rollingPeriodDays,
  };
}

/// The [MonitoringSloPeriod.calendarPeriod] choice: sets `calendar_period`.
final class MonitoringSloCalendarPeriodChoice extends MonitoringSloPeriod {
  const MonitoringSloCalendarPeriodChoice(this.calendarPeriod);

  final MonitoringSloCalendarPeriod calendarPeriod;

  @internal
  @override
  String get blockKey => 'calendar_period';

  @internal
  @override
  Map<String, Object?> encode() => {
    'calendar_period': calendarPeriod.toTfJson(),
  };

  @internal
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
      MonitoringSloBasicSliChoice;

  /// Sets `request_based_sli`.
  const factory MonitoringSloSli.requestBasedSli(
    MonitoringSloRequestBasedSli requestBasedSli,
  ) = MonitoringSloRequestBasedSliChoice;

  /// Sets `windows_based_sli`.
  const factory MonitoringSloSli.windowsBasedSli(
    MonitoringSloWindowsBasedSli windowsBasedSli,
  ) = MonitoringSloWindowsBasedSliChoice;

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

/// The [MonitoringSloSli.basicSli] choice: sets `basic_sli`.
final class MonitoringSloBasicSliChoice extends MonitoringSloSli {
  const MonitoringSloBasicSliChoice(this.basicSli);

  final MonitoringSloBasicSli basicSli;

  @internal
  @override
  String get blockKey => 'basic_sli';

  @internal
  @override
  Map<String, Object?> encode() => {'basic_sli': basicSli.encode()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'basic_sli': TfArg.literal(basicSli.encode()),
  };
}

/// The [MonitoringSloSli.requestBasedSli] choice: sets `request_based_sli`.
final class MonitoringSloRequestBasedSliChoice extends MonitoringSloSli {
  const MonitoringSloRequestBasedSliChoice(this.requestBasedSli);

  final MonitoringSloRequestBasedSli requestBasedSli;

  @internal
  @override
  String get blockKey => 'request_based_sli';

  @internal
  @override
  Map<String, Object?> encode() => {
    'request_based_sli': requestBasedSli.encode(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'request_based_sli': TfArg.literal(requestBasedSli.encode()),
  };
}

/// The [MonitoringSloSli.windowsBasedSli] choice: sets `windows_based_sli`.
final class MonitoringSloWindowsBasedSliChoice extends MonitoringSloSli {
  const MonitoringSloWindowsBasedSliChoice(this.windowsBasedSli);

  final MonitoringSloWindowsBasedSli windowsBasedSli;

  @internal
  @override
  String get blockKey => 'windows_based_sli';

  @internal
  @override
  Map<String, Object?> encode() => {
    'windows_based_sli': windowsBasedSli.encode(),
  };

  @internal
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

  final TfArg<List<String>>? location;

  final TfArg<List<String>>? method;

  final TfArg<List<String>>? version;

  final MonitoringSloObjective objective;

  @internal
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
sealed class MonitoringSloObjective {
  const MonitoringSloObjective();

  /// Sets `latency`.
  const factory MonitoringSloObjective.latency(MonitoringSloLatency latency) =
      MonitoringSloObjectiveLatency;

  /// Sets `availability`.
  const factory MonitoringSloObjective.availability(
    MonitoringSloAvailability availability,
  ) = MonitoringSloObjectiveAvailability;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [MonitoringSloObjective.latency] choice: sets `latency`.
final class MonitoringSloObjectiveLatency extends MonitoringSloObjective {
  const MonitoringSloObjectiveLatency(this.latency);

  final MonitoringSloLatency latency;

  @internal
  @override
  String get blockKey => 'latency';

  @internal
  @override
  Map<String, Object?> encode() => {'latency': latency.encode()};
}

/// The [MonitoringSloObjective.availability] choice: sets `availability`.
final class MonitoringSloObjectiveAvailability extends MonitoringSloObjective {
  const MonitoringSloObjectiveAvailability(this.availability);

  final MonitoringSloAvailability availability;

  @internal
  @override
  String get blockKey => 'availability';

  @internal
  @override
  Map<String, Object?> encode() => {'availability': availability.encode()};
}

/// Typed helper for the `basic_sli.availability` block of
/// `google_monitoring_slo` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class MonitoringSloAvailability {
  const MonitoringSloAvailability({this.enabled});

  final TfArg<bool>? enabled;

  @internal
  Map<String, Object?> encode() => {'enabled': ?enabled?.toTfJson()};
}

/// Typed helper for the `basic_sli.latency` block of
/// `google_monitoring_slo` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class MonitoringSloLatency {
  const MonitoringSloLatency({required this.threshold});

  final TfArg<String> threshold;

  @internal
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
    MonitoringSloGoodTotalRatio goodTotalRatio,
  ) = MonitoringSloRequestBasedSliGoodTotalRatio;

  /// Sets `distribution_cut`.
  const factory MonitoringSloRequestBasedSli.distributionCut(
    MonitoringSloDistributionCut distributionCut,
  ) = MonitoringSloRequestBasedSliDistributionCut;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [MonitoringSloRequestBasedSli.goodTotalRatio] choice: sets `good_total_ratio`.
final class MonitoringSloRequestBasedSliGoodTotalRatio
    extends MonitoringSloRequestBasedSli {
  const MonitoringSloRequestBasedSliGoodTotalRatio(this.goodTotalRatio);

  final MonitoringSloGoodTotalRatio goodTotalRatio;

  @internal
  @override
  String get blockKey => 'good_total_ratio';

  @internal
  @override
  Map<String, Object?> encode() => {
    'good_total_ratio': goodTotalRatio.encode(),
  };
}

/// The [MonitoringSloRequestBasedSli.distributionCut] choice: sets `distribution_cut`.
final class MonitoringSloRequestBasedSliDistributionCut
    extends MonitoringSloRequestBasedSli {
  const MonitoringSloRequestBasedSliDistributionCut(this.distributionCut);

  final MonitoringSloDistributionCut distributionCut;

  @internal
  @override
  String get blockKey => 'distribution_cut';

  @internal
  @override
  Map<String, Object?> encode() => {
    'distribution_cut': distributionCut.encode(),
  };
}

/// Typed helper for the `request_based_sli.distribution_cut` block of
/// `google_monitoring_slo` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class MonitoringSloDistributionCut {
  const MonitoringSloDistributionCut({
    required this.distributionFilter,
    required this.range,
  });

  final TfArg<String> distributionFilter;

  final MonitoringSloRange range;

  @internal
  Map<String, Object?> encode() => {
    'distribution_filter': distributionFilter.toTfJson(),
    'range': range.encode(),
  };
}

/// Typed helper for the `request_based_sli.distribution_cut.range` block of
/// `google_monitoring_slo` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class MonitoringSloRange {
  const MonitoringSloRange({this.max, this.min});

  final TfArg<num>? max;

  final TfArg<num>? min;

  @internal
  Map<String, Object?> encode() => {
    'max': ?max?.toTfJson(),
    'min': ?min?.toTfJson(),
  };
}

/// Typed helper for the `request_based_sli.good_total_ratio` block of
/// `google_monitoring_slo` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class MonitoringSloGoodTotalRatio {
  const MonitoringSloGoodTotalRatio({
    this.badServiceFilter,
    this.goodServiceFilter,
    this.totalServiceFilter,
  });

  final TfArg<String>? badServiceFilter;

  final TfArg<String>? goodServiceFilter;

  final TfArg<String>? totalServiceFilter;

  @internal
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

  final MonitoringSloCriterion criterion;

  final TfArg<String>? windowPeriod;

  @internal
  Map<String, Object?> encode() => {
    ...criterion.encode(),
    'window_period': ?windowPeriod?.toTfJson(),
  };
}

/// Exactly one of `good_bad_metric_filter`, `good_total_ratio_threshold`, `metric_mean_in_range`, `metric_sum_in_range` on the `windows_based_sli` block of `google_monitoring_slo`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.goodBadMetricFilter(...)`.
sealed class MonitoringSloCriterion {
  const MonitoringSloCriterion();

  /// Sets `good_bad_metric_filter`.
  const factory MonitoringSloCriterion.goodBadMetricFilter(
    TfArg<String> goodBadMetricFilter,
  ) = MonitoringSloCriterionGoodBadMetricFilter;

  /// Sets `good_total_ratio_threshold`.
  const factory MonitoringSloCriterion.goodTotalRatioThreshold(
    MonitoringSloGoodTotalRatioThreshold goodTotalRatioThreshold,
  ) = MonitoringSloCriterionGoodTotalRatioThreshold;

  /// Sets `metric_mean_in_range`.
  const factory MonitoringSloCriterion.metricMeanInRange(
    MonitoringSloMetricMeanInRange metricMeanInRange,
  ) = MonitoringSloCriterionMetricMeanInRange;

  /// Sets `metric_sum_in_range`.
  const factory MonitoringSloCriterion.metricSumInRange(
    MonitoringSloMetricSumInRange metricSumInRange,
  ) = MonitoringSloCriterionMetricSumInRange;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [MonitoringSloCriterion.goodBadMetricFilter] choice: sets `good_bad_metric_filter`.
final class MonitoringSloCriterionGoodBadMetricFilter
    extends MonitoringSloCriterion {
  const MonitoringSloCriterionGoodBadMetricFilter(this.goodBadMetricFilter);

  final TfArg<String> goodBadMetricFilter;

  @internal
  @override
  String get blockKey => 'good_bad_metric_filter';

  @internal
  @override
  Map<String, Object?> encode() => {
    'good_bad_metric_filter': goodBadMetricFilter.toTfJson(),
  };
}

/// The [MonitoringSloCriterion.goodTotalRatioThreshold] choice: sets `good_total_ratio_threshold`.
final class MonitoringSloCriterionGoodTotalRatioThreshold
    extends MonitoringSloCriterion {
  const MonitoringSloCriterionGoodTotalRatioThreshold(
    this.goodTotalRatioThreshold,
  );

  final MonitoringSloGoodTotalRatioThreshold goodTotalRatioThreshold;

  @internal
  @override
  String get blockKey => 'good_total_ratio_threshold';

  @internal
  @override
  Map<String, Object?> encode() => {
    'good_total_ratio_threshold': goodTotalRatioThreshold.encode(),
  };
}

/// The [MonitoringSloCriterion.metricMeanInRange] choice: sets `metric_mean_in_range`.
final class MonitoringSloCriterionMetricMeanInRange
    extends MonitoringSloCriterion {
  const MonitoringSloCriterionMetricMeanInRange(this.metricMeanInRange);

  final MonitoringSloMetricMeanInRange metricMeanInRange;

  @internal
  @override
  String get blockKey => 'metric_mean_in_range';

  @internal
  @override
  Map<String, Object?> encode() => {
    'metric_mean_in_range': metricMeanInRange.encode(),
  };
}

/// The [MonitoringSloCriterion.metricSumInRange] choice: sets `metric_sum_in_range`.
final class MonitoringSloCriterionMetricSumInRange
    extends MonitoringSloCriterion {
  const MonitoringSloCriterionMetricSumInRange(this.metricSumInRange);

  final MonitoringSloMetricSumInRange metricSumInRange;

  @internal
  @override
  String get blockKey => 'metric_sum_in_range';

  @internal
  @override
  Map<String, Object?> encode() => {
    'metric_sum_in_range': metricSumInRange.encode(),
  };
}

/// Typed helper for the `windows_based_sli.good_total_ratio_threshold` block of
/// `google_monitoring_slo` (derived from provider schema).
@immutable
final class MonitoringSloGoodTotalRatioThreshold {
  const MonitoringSloGoodTotalRatioThreshold({
    this.threshold,
    required this.measure,
  });

  final TfArg<num>? threshold;

  final MonitoringSloMeasure measure;

  @internal
  Map<String, Object?> encode() => {
    'threshold': ?threshold?.toTfJson(),
    ...measure.encode(),
  };
}

/// Exactly one of `performance`, `basic_sli_performance` on the `windows_based_sli.good_total_ratio_threshold` block of `google_monitoring_slo`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.performance(...)`.
sealed class MonitoringSloMeasure {
  const MonitoringSloMeasure();

  /// Sets `performance`.
  const factory MonitoringSloMeasure.performance(
    MonitoringSloPerformance performance,
  ) = MonitoringSloMeasurePerformance;

  /// Sets `basic_sli_performance`.
  const factory MonitoringSloMeasure.basicSliPerformance(
    MonitoringSloBasicSliPerformance basicSliPerformance,
  ) = MonitoringSloMeasureBasicSliPerformance;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [MonitoringSloMeasure.performance] choice: sets `performance`.
final class MonitoringSloMeasurePerformance extends MonitoringSloMeasure {
  const MonitoringSloMeasurePerformance(this.performance);

  final MonitoringSloPerformance performance;

  @internal
  @override
  String get blockKey => 'performance';

  @internal
  @override
  Map<String, Object?> encode() => {'performance': performance.encode()};
}

/// The [MonitoringSloMeasure.basicSliPerformance] choice: sets `basic_sli_performance`.
final class MonitoringSloMeasureBasicSliPerformance
    extends MonitoringSloMeasure {
  const MonitoringSloMeasureBasicSliPerformance(this.basicSliPerformance);

  final MonitoringSloBasicSliPerformance basicSliPerformance;

  @internal
  @override
  String get blockKey => 'basic_sli_performance';

  @internal
  @override
  Map<String, Object?> encode() => {
    'basic_sli_performance': basicSliPerformance.encode(),
  };
}

/// Typed helper for the `windows_based_sli.good_total_ratio_threshold.basic_sli_performance` block of
/// `google_monitoring_slo` (derived from provider schema).
@immutable
final class MonitoringSloBasicSliPerformance {
  const MonitoringSloBasicSliPerformance({
    this.location,
    this.method,
    this.version,
    required this.objective,
  });

  final TfArg<List<String>>? location;

  final TfArg<List<String>>? method;

  final TfArg<List<String>>? version;

  final MonitoringSloBasicSliPerformanceObjective objective;

  @internal
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
sealed class MonitoringSloBasicSliPerformanceObjective {
  const MonitoringSloBasicSliPerformanceObjective();

  /// Sets `latency`.
  const factory MonitoringSloBasicSliPerformanceObjective.latency(
    MonitoringSloLatency latency,
  ) = MonitoringSloBasicSliPerformanceObjectiveLatency;

  /// Sets `availability`.
  const factory MonitoringSloBasicSliPerformanceObjective.availability(
    MonitoringSloAvailability availability,
  ) = MonitoringSloBasicSliPerformanceObjectiveAvailability;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [MonitoringSloBasicSliPerformanceObjective.latency] choice: sets `latency`.
final class MonitoringSloBasicSliPerformanceObjectiveLatency
    extends MonitoringSloBasicSliPerformanceObjective {
  const MonitoringSloBasicSliPerformanceObjectiveLatency(this.latency);

  final MonitoringSloLatency latency;

  @internal
  @override
  String get blockKey => 'latency';

  @internal
  @override
  Map<String, Object?> encode() => {'latency': latency.encode()};
}

/// The [MonitoringSloBasicSliPerformanceObjective.availability] choice: sets `availability`.
final class MonitoringSloBasicSliPerformanceObjectiveAvailability
    extends MonitoringSloBasicSliPerformanceObjective {
  const MonitoringSloBasicSliPerformanceObjectiveAvailability(
    this.availability,
  );

  final MonitoringSloAvailability availability;

  @internal
  @override
  String get blockKey => 'availability';

  @internal
  @override
  Map<String, Object?> encode() => {'availability': availability.encode()};
}

/// Exactly one of `good_total_ratio`, `distribution_cut` on the `windows_based_sli.good_total_ratio_threshold.performance` block of `google_monitoring_slo`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.goodTotalRatio(...)`.
sealed class MonitoringSloPerformance {
  const MonitoringSloPerformance();

  /// Sets `good_total_ratio`.
  const factory MonitoringSloPerformance.goodTotalRatio(
    MonitoringSloGoodTotalRatio goodTotalRatio,
  ) = MonitoringSloPerformanceGoodTotalRatio;

  /// Sets `distribution_cut`.
  const factory MonitoringSloPerformance.distributionCut(
    MonitoringSloDistributionCut distributionCut,
  ) = MonitoringSloPerformanceDistributionCut;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [MonitoringSloPerformance.goodTotalRatio] choice: sets `good_total_ratio`.
final class MonitoringSloPerformanceGoodTotalRatio
    extends MonitoringSloPerformance {
  const MonitoringSloPerformanceGoodTotalRatio(this.goodTotalRatio);

  final MonitoringSloGoodTotalRatio goodTotalRatio;

  @internal
  @override
  String get blockKey => 'good_total_ratio';

  @internal
  @override
  Map<String, Object?> encode() => {
    'good_total_ratio': goodTotalRatio.encode(),
  };
}

/// The [MonitoringSloPerformance.distributionCut] choice: sets `distribution_cut`.
final class MonitoringSloPerformanceDistributionCut
    extends MonitoringSloPerformance {
  const MonitoringSloPerformanceDistributionCut(this.distributionCut);

  final MonitoringSloDistributionCut distributionCut;

  @internal
  @override
  String get blockKey => 'distribution_cut';

  @internal
  @override
  Map<String, Object?> encode() => {
    'distribution_cut': distributionCut.encode(),
  };
}

/// Typed helper for the `windows_based_sli.metric_mean_in_range` block of
/// `google_monitoring_slo` (derived from provider schema).
@immutable
final class MonitoringSloMetricMeanInRange {
  const MonitoringSloMetricMeanInRange({
    required this.timeSeries,
    required this.range,
  });

  final TfArg<String> timeSeries;

  final MonitoringSloRange range;

  @internal
  Map<String, Object?> encode() => {
    'time_series': timeSeries.toTfJson(),
    'range': range.encode(),
  };
}

/// Typed helper for the `windows_based_sli.metric_sum_in_range` block of
/// `google_monitoring_slo` (derived from provider schema).
@immutable
final class MonitoringSloMetricSumInRange {
  const MonitoringSloMetricSumInRange({
    required this.timeSeries,
    required this.range,
  });

  final TfArg<String> timeSeries;

  final MonitoringSloRange range;

  @internal
  Map<String, Object?> encode() => {
    'time_series': timeSeries.toTfJson(),
    'range': range.encode(),
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
///   'api_availability',
///   service: apiService.name,
///   goal: .literal(0.99),
///   displayName: .literal('API availability'),
///   period: .rollingPeriodDays(.literal(30)),
///   sli: .basicSli(
///     .new(
///       objective: .availability(
///         .new(enabled: .literal(true)),
///       ),
///     ),
///   ),
/// );
/// ```
final class GoogleMonitoringSlo extends Resource {
  static const String tfType = 'google_monitoring_slo';

  GoogleMonitoringSlo(
    super.localName, {
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `calendar_period` attribute.
  TfRef<String> get calendarPeriod =>
      TfRef.attribute<String>(this, 'calendar_period');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `goal` attribute.
  TfRef<num> get goal => TfRef.attribute<num>(this, 'goal');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `rolling_period_days` attribute.
  TfRef<num> get rollingPeriodDays =>
      TfRef.attribute<num>(this, 'rolling_period_days');

  /// Reference to `service` attribute.
  TfRef<String> get service => TfRef.attribute<String>(this, 'service');

  /// Reference to `slo_id` attribute.
  TfRef<String> get sloId => TfRef.attribute<String>(this, 'slo_id');

  /// Reference to `user_labels` attribute.
  TfRef<Map<String, String>> get userLabels =>
      TfRef.attribute<Map<String, String>>(this, 'user_labels');
}
