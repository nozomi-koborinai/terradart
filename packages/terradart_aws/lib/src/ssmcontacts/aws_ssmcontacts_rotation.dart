// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ssmcontacts_rotation`.
const Set<String> _awsSsmcontactsRotationSensitive = <String>{};

/// Typed helper for the `recurrence` block of
/// `aws_ssmcontacts_rotation` (derived from provider schema).
@immutable
final class SsmcontactsRotationRecurrence {
  const SsmcontactsRotationRecurrence({
    required this.numberOfOnCalls,
    required this.recurrenceMultiplier,
    this.dailySettings,
    this.monthlySettings,
    this.shiftCoverages,
    this.weeklySettings,
  });

  final TfArg<num> numberOfOnCalls;

  final TfArg<num> recurrenceMultiplier;

  final List<SsmcontactsRotationRecurrenceDailySettings>? dailySettings;

  final List<SsmcontactsRotationRecurrenceMonthlySettings>? monthlySettings;

  final List<SsmcontactsRotationRecurrenceShiftCoverages>? shiftCoverages;

  final List<SsmcontactsRotationRecurrenceWeeklySettings>? weeklySettings;

  Map<String, Object?> encode() => {
    'number_of_on_calls': numberOfOnCalls.toTfJson(),
    'recurrence_multiplier': recurrenceMultiplier.toTfJson(),
    if (dailySettings != null)
      'daily_settings': [for (final e in dailySettings!) e.encode()],
    if (monthlySettings != null)
      'monthly_settings': [for (final e in monthlySettings!) e.encode()],
    if (shiftCoverages != null)
      'shift_coverages': [for (final e in shiftCoverages!) e.encode()],
    if (weeklySettings != null)
      'weekly_settings': [for (final e in weeklySettings!) e.encode()],
  };
}

/// Typed helper for the `recurrence.daily_settings` block of
/// `aws_ssmcontacts_rotation` (derived from provider schema).
@immutable
final class SsmcontactsRotationRecurrenceDailySettings {
  const SsmcontactsRotationRecurrenceDailySettings({
    required this.hourOfDay,
    required this.minuteOfHour,
  });

  final TfArg<num> hourOfDay;

  final TfArg<num> minuteOfHour;

  Map<String, Object?> encode() => {
    'hour_of_day': hourOfDay.toTfJson(),
    'minute_of_hour': minuteOfHour.toTfJson(),
  };
}

/// Typed helper for the `recurrence.monthly_settings` block of
/// `aws_ssmcontacts_rotation` (derived from provider schema).
@immutable
final class SsmcontactsRotationRecurrenceMonthlySettings {
  const SsmcontactsRotationRecurrenceMonthlySettings({
    required this.dayOfMonth,
    this.handOffTime,
  });

  final TfArg<num> dayOfMonth;

  final List<SsmcontactsRotationRecurrenceMonthlySettingsHandOffTime>?
  handOffTime;

  Map<String, Object?> encode() => {
    'day_of_month': dayOfMonth.toTfJson(),
    if (handOffTime != null)
      'hand_off_time': [for (final e in handOffTime!) e.encode()],
  };
}

/// Typed helper for the `recurrence.monthly_settings.hand_off_time` block of
/// `aws_ssmcontacts_rotation` (derived from provider schema).
@immutable
final class SsmcontactsRotationRecurrenceMonthlySettingsHandOffTime {
  const SsmcontactsRotationRecurrenceMonthlySettingsHandOffTime({
    required this.hourOfDay,
    required this.minuteOfHour,
  });

  final TfArg<num> hourOfDay;

  final TfArg<num> minuteOfHour;

  Map<String, Object?> encode() => {
    'hour_of_day': hourOfDay.toTfJson(),
    'minute_of_hour': minuteOfHour.toTfJson(),
  };
}

/// Typed helper for the `recurrence.shift_coverages` block of
/// `aws_ssmcontacts_rotation` (derived from provider schema).
@immutable
final class SsmcontactsRotationRecurrenceShiftCoverages {
  const SsmcontactsRotationRecurrenceShiftCoverages({
    required this.mapBlockKey,
    this.coverageTimes,
  });

  final TfArg<String> mapBlockKey;

  final List<SsmcontactsRotationRecurrenceShiftCoveragesCoverageTimes>?
  coverageTimes;

  Map<String, Object?> encode() => {
    'map_block_key': mapBlockKey.toTfJson(),
    if (coverageTimes != null)
      'coverage_times': [for (final e in coverageTimes!) e.encode()],
  };
}

/// Typed helper for the `recurrence.shift_coverages.coverage_times` block of
/// `aws_ssmcontacts_rotation` (derived from provider schema).
@immutable
final class SsmcontactsRotationRecurrenceShiftCoveragesCoverageTimes {
  const SsmcontactsRotationRecurrenceShiftCoveragesCoverageTimes({
    this.end,
    this.start,
  });

  final List<SsmcontactsRotationRecurrenceShiftCoveragesCoverageTimesEnd>? end;

  final List<SsmcontactsRotationRecurrenceShiftCoveragesCoverageTimesStart>?
  start;

  Map<String, Object?> encode() => {
    if (end != null) 'end': [for (final e in end!) e.encode()],
    if (start != null) 'start': [for (final e in start!) e.encode()],
  };
}

/// Typed helper for the `recurrence.shift_coverages.coverage_times.end` block of
/// `aws_ssmcontacts_rotation` (derived from provider schema).
@immutable
final class SsmcontactsRotationRecurrenceShiftCoveragesCoverageTimesEnd {
  const SsmcontactsRotationRecurrenceShiftCoveragesCoverageTimesEnd({
    required this.hourOfDay,
    required this.minuteOfHour,
  });

  final TfArg<num> hourOfDay;

  final TfArg<num> minuteOfHour;

  Map<String, Object?> encode() => {
    'hour_of_day': hourOfDay.toTfJson(),
    'minute_of_hour': minuteOfHour.toTfJson(),
  };
}

/// Typed helper for the `recurrence.shift_coverages.coverage_times.start` block of
/// `aws_ssmcontacts_rotation` (derived from provider schema).
@immutable
final class SsmcontactsRotationRecurrenceShiftCoveragesCoverageTimesStart {
  const SsmcontactsRotationRecurrenceShiftCoveragesCoverageTimesStart({
    required this.hourOfDay,
    required this.minuteOfHour,
  });

  final TfArg<num> hourOfDay;

  final TfArg<num> minuteOfHour;

  Map<String, Object?> encode() => {
    'hour_of_day': hourOfDay.toTfJson(),
    'minute_of_hour': minuteOfHour.toTfJson(),
  };
}

/// Typed helper for the `recurrence.weekly_settings` block of
/// `aws_ssmcontacts_rotation` (derived from provider schema).
@immutable
final class SsmcontactsRotationRecurrenceWeeklySettings {
  const SsmcontactsRotationRecurrenceWeeklySettings({
    required this.dayOfWeek,
    this.handOffTime,
  });

  final TfArg<String> dayOfWeek;

  final List<SsmcontactsRotationRecurrenceWeeklySettingsHandOffTime>?
  handOffTime;

  Map<String, Object?> encode() => {
    'day_of_week': dayOfWeek.toTfJson(),
    if (handOffTime != null)
      'hand_off_time': [for (final e in handOffTime!) e.encode()],
  };
}

/// Typed helper for the `recurrence.weekly_settings.hand_off_time` block of
/// `aws_ssmcontacts_rotation` (derived from provider schema).
@immutable
final class SsmcontactsRotationRecurrenceWeeklySettingsHandOffTime {
  const SsmcontactsRotationRecurrenceWeeklySettingsHandOffTime({
    required this.hourOfDay,
    required this.minuteOfHour,
  });

  final TfArg<num> hourOfDay;

  final TfArg<num> minuteOfHour;

  Map<String, Object?> encode() => {
    'hour_of_day': hourOfDay.toTfJson(),
    'minute_of_hour': minuteOfHour.toTfJson(),
  };
}

/// Factory wrapper for `aws_ssmcontacts_rotation`.
final class AwsSsmcontactsRotation extends Resource {
  static const String tfType = 'aws_ssmcontacts_rotation';

  AwsSsmcontactsRotation({
    required super.localName,
    required TfArg<List<String>> contactIds,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<String>? startTime,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> timeZoneId,
    List<SsmcontactsRotationRecurrence>? recurrence,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'contact_ids': contactIds,
           'name': name,
           if (region != null) 'region': region,
           if (startTime != null) 'start_time': startTime,
           if (tags != null) 'tags': tags,
           'time_zone_id': timeZoneId,
           if (recurrence != null)
             'recurrence': TfArg.literal([
               for (final e in recurrence) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSsmcontactsRotationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
