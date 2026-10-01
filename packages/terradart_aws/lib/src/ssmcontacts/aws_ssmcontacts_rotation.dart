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

  final List<SsmcontactsRotationDailySettings>? dailySettings;

  final List<SsmcontactsRotationMonthlySettings>? monthlySettings;

  final List<SsmcontactsRotationShiftCoverages>? shiftCoverages;

  final List<SsmcontactsRotationWeeklySettings>? weeklySettings;

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
final class SsmcontactsRotationDailySettings {
  const SsmcontactsRotationDailySettings({
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
final class SsmcontactsRotationMonthlySettings {
  const SsmcontactsRotationMonthlySettings({
    required this.dayOfMonth,
    this.handOffTime,
  });

  final TfArg<num> dayOfMonth;

  final List<SsmcontactsRotationHandOffTime>? handOffTime;

  Map<String, Object?> encode() => {
    'day_of_month': dayOfMonth.toTfJson(),
    if (handOffTime != null)
      'hand_off_time': [for (final e in handOffTime!) e.encode()],
  };
}

/// Typed helper for the `recurrence.monthly_settings.hand_off_time` block of
/// `aws_ssmcontacts_rotation` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SsmcontactsRotationHandOffTime {
  const SsmcontactsRotationHandOffTime({
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
final class SsmcontactsRotationShiftCoverages {
  const SsmcontactsRotationShiftCoverages({
    required this.mapBlockKey,
    this.coverageTimes,
  });

  final SsmcontactsRotationMapBlockKey mapBlockKey;

  final List<SsmcontactsRotationCoverageTimes>? coverageTimes;

  Map<String, Object?> encode() => {
    'map_block_key': mapBlockKey.toTfJson(),
    if (coverageTimes != null)
      'coverage_times': [for (final e in coverageTimes!) e.encode()],
  };
}

/// `map_block_key` — derived from the provider schema description.
extension type const SsmcontactsRotationMapBlockKey._(TfArg<String> _)
    implements TfArg<String> {
  SsmcontactsRotationMapBlockKey.variable(String name)
    : this._(TfArg.variable(name));
  SsmcontactsRotationMapBlockKey.expression(String template)
    : this._(TfArg.expression(template));
  const SsmcontactsRotationMapBlockKey.arg(TfArg<String> arg) : this._(arg);

  static const mon = SsmcontactsRotationMapBlockKey._(TfArgLiteral('MON'));
  static const tue = SsmcontactsRotationMapBlockKey._(TfArgLiteral('TUE'));
  static const wed = SsmcontactsRotationMapBlockKey._(TfArgLiteral('WED'));
  static const thu = SsmcontactsRotationMapBlockKey._(TfArgLiteral('THU'));
  static const fri = SsmcontactsRotationMapBlockKey._(TfArgLiteral('FRI'));
  static const sat = SsmcontactsRotationMapBlockKey._(TfArgLiteral('SAT'));
  static const sun = SsmcontactsRotationMapBlockKey._(TfArgLiteral('SUN'));

  static const List<SsmcontactsRotationMapBlockKey> values = [
    mon,
    tue,
    wed,
    thu,
    fri,
    sat,
    sun,
  ];
}

/// Typed helper for the `recurrence.shift_coverages.coverage_times` block of
/// `aws_ssmcontacts_rotation` (derived from provider schema).
@immutable
final class SsmcontactsRotationCoverageTimes {
  const SsmcontactsRotationCoverageTimes({this.end, this.start});

  final List<SsmcontactsRotationEnd>? end;

  final List<SsmcontactsRotationStart>? start;

  Map<String, Object?> encode() => {
    if (end != null) 'end': [for (final e in end!) e.encode()],
    if (start != null) 'start': [for (final e in start!) e.encode()],
  };
}

/// Typed helper for the `recurrence.shift_coverages.coverage_times.end` block of
/// `aws_ssmcontacts_rotation` (derived from provider schema).
@immutable
final class SsmcontactsRotationEnd {
  const SsmcontactsRotationEnd({
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
final class SsmcontactsRotationStart {
  const SsmcontactsRotationStart({
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
final class SsmcontactsRotationWeeklySettings {
  const SsmcontactsRotationWeeklySettings({
    required this.dayOfWeek,
    this.handOffTime,
  });

  final SsmcontactsRotationDayOfWeek dayOfWeek;

  final List<SsmcontactsRotationHandOffTime>? handOffTime;

  Map<String, Object?> encode() => {
    'day_of_week': dayOfWeek.toTfJson(),
    if (handOffTime != null)
      'hand_off_time': [for (final e in handOffTime!) e.encode()],
  };
}

/// `day_of_week` — derived from the provider schema description.
extension type const SsmcontactsRotationDayOfWeek._(TfArg<String> _)
    implements TfArg<String> {
  SsmcontactsRotationDayOfWeek.variable(String name)
    : this._(TfArg.variable(name));
  SsmcontactsRotationDayOfWeek.expression(String template)
    : this._(TfArg.expression(template));
  const SsmcontactsRotationDayOfWeek.arg(TfArg<String> arg) : this._(arg);

  static const mon = SsmcontactsRotationDayOfWeek._(TfArgLiteral('MON'));
  static const tue = SsmcontactsRotationDayOfWeek._(TfArgLiteral('TUE'));
  static const wed = SsmcontactsRotationDayOfWeek._(TfArgLiteral('WED'));
  static const thu = SsmcontactsRotationDayOfWeek._(TfArgLiteral('THU'));
  static const fri = SsmcontactsRotationDayOfWeek._(TfArgLiteral('FRI'));
  static const sat = SsmcontactsRotationDayOfWeek._(TfArgLiteral('SAT'));
  static const sun = SsmcontactsRotationDayOfWeek._(TfArgLiteral('SUN'));

  static const List<SsmcontactsRotationDayOfWeek> values = [
    mon,
    tue,
    wed,
    thu,
    fri,
    sat,
    sun,
  ];
}

/// Factory wrapper for `aws_ssmcontacts_rotation`.
final class AwsSsmcontactsRotation extends Resource {
  static const String tfType = 'aws_ssmcontacts_rotation';

  AwsSsmcontactsRotation(
    super.localName, {
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
           'region': ?region,
           'start_time': ?startTime,
           'tags': ?tags,
           'time_zone_id': timeZoneId,
           if (recurrence != null)
             'recurrence': TfArg.literal([
               for (final e in recurrence) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSsmcontactsRotationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSsmcontactsRotation>`.
  RefTo<AwsSsmcontactsRotation> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `contact_ids` attribute.
  TfRef<List<String>> get contactIds =>
      TfRef.attribute<List<String>>(this, 'contact_ids');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `start_time` attribute.
  TfRef<String> get startTime => TfRef.attribute<String>(this, 'start_time');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `time_zone_id` attribute.
  TfRef<String> get timeZoneId => TfRef.attribute<String>(this, 'time_zone_id');
}
