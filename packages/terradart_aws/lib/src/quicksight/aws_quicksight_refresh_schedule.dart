// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_quicksight_refresh_schedule`.
const Set<String> _awsQuicksightRefreshScheduleSensitive = <String>{};

/// Typed helper for the `schedule` block of
/// `aws_quicksight_refresh_schedule` (derived from provider schema).
@immutable
final class QuicksightRefreshScheduleSchedule {
  const QuicksightRefreshScheduleSchedule({
    required this.refreshType,
    this.startAfterDateTime,
    this.scheduleFrequency,
  });

  final TfArg<String> refreshType;

  final TfArg<String>? startAfterDateTime;

  final List<QuicksightRefreshScheduleScheduleScheduleFrequency>?
  scheduleFrequency;

  Map<String, Object?> encode() => {
    'refresh_type': refreshType.toTfJson(),
    if (startAfterDateTime != null)
      'start_after_date_time': startAfterDateTime!.toTfJson(),
    if (scheduleFrequency != null)
      'schedule_frequency': [for (final e in scheduleFrequency!) e.encode()],
  };
}

/// Typed helper for the `schedule.schedule_frequency` block of
/// `aws_quicksight_refresh_schedule` (derived from provider schema).
@immutable
final class QuicksightRefreshScheduleScheduleScheduleFrequency {
  const QuicksightRefreshScheduleScheduleScheduleFrequency({
    required this.interval,
    this.timeOfTheDay,
    this.timezone,
    this.refreshOnDay,
  });

  final TfArg<String> interval;

  final TfArg<String>? timeOfTheDay;

  final TfArg<String>? timezone;

  final List<QuicksightRefreshScheduleScheduleScheduleFrequencyRefreshOnDay>?
  refreshOnDay;

  Map<String, Object?> encode() => {
    'interval': interval.toTfJson(),
    if (timeOfTheDay != null) 'time_of_the_day': timeOfTheDay!.toTfJson(),
    if (timezone != null) 'timezone': timezone!.toTfJson(),
    if (refreshOnDay != null)
      'refresh_on_day': [for (final e in refreshOnDay!) e.encode()],
  };
}

/// Typed helper for the `schedule.schedule_frequency.refresh_on_day` block of
/// `aws_quicksight_refresh_schedule` (derived from provider schema).
@immutable
final class QuicksightRefreshScheduleScheduleScheduleFrequencyRefreshOnDay {
  const QuicksightRefreshScheduleScheduleScheduleFrequencyRefreshOnDay({
    this.dayOfMonth,
    this.dayOfWeek,
  });

  final TfArg<String>? dayOfMonth;

  final TfArg<String>? dayOfWeek;

  Map<String, Object?> encode() => {
    if (dayOfMonth != null) 'day_of_month': dayOfMonth!.toTfJson(),
    if (dayOfWeek != null) 'day_of_week': dayOfWeek!.toTfJson(),
  };
}

/// Factory wrapper for `aws_quicksight_refresh_schedule`.
final class AwsQuicksightRefreshSchedule extends Resource {
  static const String tfType = 'aws_quicksight_refresh_schedule';

  AwsQuicksightRefreshSchedule({
    required super.localName,
    TfArg<String>? awsAccountId,
    required TfArg<String> dataSetId,
    TfArg<String>? region,
    required TfArg<String> scheduleId,
    List<QuicksightRefreshScheduleSchedule>? schedule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (awsAccountId != null) 'aws_account_id': awsAccountId,
           'data_set_id': dataSetId,
           if (region != null) 'region': region,
           'schedule_id': scheduleId,
           if (schedule != null)
             'schedule': TfArg.literal([for (final e in schedule) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsQuicksightRefreshScheduleSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
