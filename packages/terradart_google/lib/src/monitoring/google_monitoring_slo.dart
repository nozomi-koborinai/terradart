// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
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

sealed class MonitoringSloSli {
  const MonitoringSloSli();
  String get blockKey;
  List<Map<String, Object?>> encode();
}

class MonitoringSloBasicSliAvailability {
  const MonitoringSloBasicSliAvailability({this.enabled});
  final TfArg<bool>? enabled;
  Map<String, Object?> toArgMap() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
  };
}

class MonitoringSloBasicSliLatency {
  const MonitoringSloBasicSliLatency({required this.threshold});
  final TfArg<String> threshold;
  Map<String, Object?> toArgMap() => {'threshold': threshold.toTfJson()};
}

/// `basic_sli` — availability and/or latency thresholds on a service.
final class MonitoringSloBasicSli extends MonitoringSloSli {
  const MonitoringSloBasicSli({this.availability, this.latency});
  final MonitoringSloBasicSliAvailability? availability;
  final MonitoringSloBasicSliLatency? latency;
  @override
  String get blockKey => 'basic_sli';
  @override
  List<Map<String, Object?>> encode() => [
    {
      if (availability != null) 'availability': [availability!.toArgMap()],
      if (latency != null) 'latency': [latency!.toArgMap()],
    },
  ];
}

class MonitoringSloGoodTotalRatio {
  const MonitoringSloGoodTotalRatio({
    this.goodServiceFilter,
    this.badServiceFilter,
    this.totalServiceFilter,
  });
  final TfArg<String>? goodServiceFilter;
  final TfArg<String>? badServiceFilter;
  final TfArg<String>? totalServiceFilter;
  Map<String, Object?> toArgMap() => {
    if (goodServiceFilter != null)
      'good_service_filter': goodServiceFilter!.toTfJson(),
    if (badServiceFilter != null)
      'bad_service_filter': badServiceFilter!.toTfJson(),
    if (totalServiceFilter != null)
      'total_service_filter': totalServiceFilter!.toTfJson(),
  };
}

/// `request_based_sli` — ratio of good vs total request metrics.
final class MonitoringSloRequestBasedSli extends MonitoringSloSli {
  const MonitoringSloRequestBasedSli({this.goodTotalRatio});
  final MonitoringSloGoodTotalRatio? goodTotalRatio;
  @override
  String get blockKey => 'request_based_sli';
  @override
  List<Map<String, Object?>> encode() => [
    {
      if (goodTotalRatio != null)
        'good_total_ratio': [goodTotalRatio!.toArgMap()],
    },
  ];
}

class MonitoringSloWindowsGoodTotalRatioThreshold {
  const MonitoringSloWindowsGoodTotalRatioThreshold({required this.threshold});
  final TfArg<num> threshold;
  Map<String, Object?> toArgMap() => {'threshold': threshold.toTfJson()};
}

/// `windows_based_sli` — windowed metric SLI.
final class MonitoringSloWindowsBasedSli extends MonitoringSloSli {
  const MonitoringSloWindowsBasedSli({
    this.goodBadMetricFilter,
    this.windowPeriod,
    this.goodTotalRatioThreshold,
  });
  final TfArg<String>? goodBadMetricFilter;
  final TfArg<String>? windowPeriod;
  final MonitoringSloWindowsGoodTotalRatioThreshold? goodTotalRatioThreshold;
  @override
  String get blockKey => 'windows_based_sli';
  @override
  List<Map<String, Object?>> encode() => [
    {
      if (goodBadMetricFilter != null)
        'good_bad_metric_filter': goodBadMetricFilter!.toTfJson(),
      if (windowPeriod != null) 'window_period': windowPeriod!.toTfJson(),
      if (goodTotalRatioThreshold != null)
        'good_total_ratio_threshold': [goodTotalRatioThreshold!.toArgMap()],
    },
  ];
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
/// Service-level objective on a [GoogleMonitoringService]. Provide exactly
/// one [sli] variant (`basic_sli`, `request_based_sli`, or
/// `windows_based_sli`).
///
/// Example (availability basic SLI):
/// ```dart
/// GoogleMonitoringSlo(
///   localName: 'api_availability',
///   service: TfArg.ref(apiService.nameRef),
///   goal: TfArg.literal(0.99),
///   displayName: TfArg.literal('API availability'),
///   rollingPeriodDays: TfArg.literal(30),
///   sli: MonitoringSloBasicSli(
///     availability: MonitoringSloBasicSliAvailability(
///       enabled: TfArg.literal(true),
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
    TfArg<MonitoringSloCalendarPeriod>? calendarPeriod,
    TfArg<num>? rollingPeriodDays,
    TfArg<String>? sloId,
    TfArg<Map<String, String>>? userLabels,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'service': service,
           'goal': goal,
           if (displayName != null) 'display_name': displayName,
           if (calendarPeriod != null) 'calendar_period': calendarPeriod,
           if (rollingPeriodDays != null)
             'rolling_period_days': rollingPeriodDays,
           if (sloId != null) 'slo_id': sloId,
           if (userLabels != null) 'user_labels': userLabels,
           if (project != null) 'project': project,
           sli.blockKey: TfArg.literal(sli.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleMonitoringSloSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
