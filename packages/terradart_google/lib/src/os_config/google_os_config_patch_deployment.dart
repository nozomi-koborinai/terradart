// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_os_config_patch_deployment`.
const Set<String> _googleOsConfigPatchDeploymentSensitive = <String>{};

// ===========================================================================
// OsConfigPatchDeploymentSchedule — sealed (OneTime | Recurring)
// ===========================================================================

/// Choice of patch schedule. Sealed so exactly one of
/// `one_time_schedule` / `recurring_schedule` is emitted.
sealed class OsConfigPatchDeploymentSchedule {
  const OsConfigPatchDeploymentSchedule();

  String get blockKey;

  List<Map<String, Object?>> encode();
}

/// `one_time_schedule` block — run the patch job once at [executeTime].
@immutable
final class OsConfigPatchDeploymentOneTimeSchedule
    extends OsConfigPatchDeploymentSchedule {
  const OsConfigPatchDeploymentOneTimeSchedule({required this.executeTime});

  final TfArg<String> executeTime;

  @override
  String get blockKey => 'one_time_schedule';

  @override
  List<Map<String, Object?>> encode() => [
    {'execute_time': executeTime.toTfJson()},
  ];
}

/// `recurring_schedule` block — run patch jobs on a cadence.
@immutable
final class OsConfigPatchDeploymentRecurringSchedule
    extends OsConfigPatchDeploymentSchedule {
  const OsConfigPatchDeploymentRecurringSchedule({
    required this.timeZone,
    this.startTime,
    this.endTime,
    this.timeOfDay,
    this.weekly,
    this.monthly,
  });

  final OsConfigPatchDeploymentRecurringScheduleTimeZone timeZone;
  final TfArg<String>? startTime;
  final TfArg<String>? endTime;
  final OsConfigPatchDeploymentRecurringScheduleTimeOfDay? timeOfDay;
  final OsConfigPatchDeploymentRecurringScheduleWeekly? weekly;
  final OsConfigPatchDeploymentRecurringScheduleMonthly? monthly;

  @override
  String get blockKey => 'recurring_schedule';

  @override
  List<Map<String, Object?>> encode() => [
    {
      'time_zone': [timeZone.encode()],
      if (startTime != null) 'start_time': startTime!.toTfJson(),
      if (endTime != null) 'end_time': endTime!.toTfJson(),
      if (timeOfDay != null) 'time_of_day': [timeOfDay!.encode()],
      if (weekly != null) 'weekly': [weekly!.encode()],
      if (monthly != null) 'monthly': [monthly!.encode()],
    },
  ];
}

@immutable
final class OsConfigPatchDeploymentRecurringScheduleTimeZone {
  const OsConfigPatchDeploymentRecurringScheduleTimeZone({
    required this.id,
    this.version,
  });

  final TfArg<String> id;
  final TfArg<String>? version;

  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    if (version != null) 'version': version!.toTfJson(),
  };
}

@immutable
final class OsConfigPatchDeploymentRecurringScheduleTimeOfDay {
  const OsConfigPatchDeploymentRecurringScheduleTimeOfDay({
    required this.hours,
    required this.minutes,
    required this.seconds,
    required this.nanos,
  });

  final TfArg<num> hours;
  final TfArg<num> minutes;
  final TfArg<num> seconds;
  final TfArg<num> nanos;

  Map<String, Object?> encode() => {
    'hours': hours.toTfJson(),
    'minutes': minutes.toTfJson(),
    'seconds': seconds.toTfJson(),
    'nanos': nanos.toTfJson(),
  };
}

@immutable
final class OsConfigPatchDeploymentRecurringScheduleWeekly {
  const OsConfigPatchDeploymentRecurringScheduleWeekly({
    required this.dayOfWeek,
  });

  final OsConfigPatchDeploymentDayOfWeek dayOfWeek;

  Map<String, Object?> encode() => {'day_of_week': dayOfWeek.terraformValue};
}

@immutable
final class OsConfigPatchDeploymentRecurringScheduleMonthly {
  const OsConfigPatchDeploymentRecurringScheduleMonthly.weekDayOfMonth({
    required this.weekDayOfMonth,
  }) : monthDay = null;

  const OsConfigPatchDeploymentRecurringScheduleMonthly.monthDay({
    required this.monthDay,
  }) : weekDayOfMonth = null;

  final OsConfigPatchDeploymentRecurringScheduleMonthlyWeekDayOfMonth?
  weekDayOfMonth;
  final TfArg<num>? monthDay;

  Map<String, Object?> encode() => {
    if (weekDayOfMonth != null) 'week_day_of_month': [weekDayOfMonth!.encode()],
    if (monthDay != null) 'month_day': monthDay!.toTfJson(),
  };
}

@immutable
final class OsConfigPatchDeploymentRecurringScheduleMonthlyWeekDayOfMonth {
  const OsConfigPatchDeploymentRecurringScheduleMonthlyWeekDayOfMonth({
    required this.weekOfMonth,
    required this.dayOfWeek,
  });

  final TfArg<num> weekOfMonth;
  final OsConfigPatchDeploymentDayOfWeek dayOfWeek;

  Map<String, Object?> encode() => {
    'week_of_month': weekOfMonth.toTfJson(),
    'day_of_week': dayOfWeek.terraformValue,
  };
}

enum OsConfigPatchDeploymentDayOfWeek implements TerraformEnum {
  monday('MONDAY'),
  tuesday('TUESDAY'),
  wednesday('WEDNESDAY'),
  thursday('THURSDAY'),
  friday('FRIDAY'),
  saturday('SATURDAY'),
  sunday('SUNDAY');

  const OsConfigPatchDeploymentDayOfWeek(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_os_config_patch_deployment`.
///
/// Patch deployments are configurations that individual patch jobs use to
/// complete a patch. These configurations include instance filter, package
/// repository settings, and a schedule.
///
/// OS Config patch deployment — schedules OS patch jobs against a filtered
/// set of VM instances (one-time or recurring).
///
/// Enable `osconfig.googleapis.com` before apply. Choose exactly one
/// schedule via [OsConfigPatchDeploymentSchedule]:
/// - [OsConfigPatchDeploymentOneTimeSchedule]
/// - [OsConfigPatchDeploymentRecurringSchedule]
///
/// Example:
/// ```dart
/// GoogleOsConfigPatchDeployment(
///   localName: 'monthly_patches',
///   patchDeploymentId: TfArg.literal('monthly-patches'),
///   description: TfArg.literal('Monthly security patches'),
///   instanceFilter: OsConfigPatchDeploymentInstanceFilter(
///     all: TfArg.literal(true),
///   ),
///   patchConfig: OsConfigPatchDeploymentPatchConfig(
///     migInstancesAllowed: TfArg.literal(true),
///   ),
///   schedule: OsConfigPatchDeploymentOneTimeSchedule(
///     executeTime: TfArg.literal('2026-07-01T02:00:00Z'),
///   ),
/// );
/// ```
final class GoogleOsConfigPatchDeployment extends Resource {
  static const String tfType = 'google_os_config_patch_deployment';

  GoogleOsConfigPatchDeployment({
    required super.localName,
    required TfArg<String> patchDeploymentId,
    TfArg<String>? description,
    required TfArg<Map<String, dynamic>> instanceFilter,
    TfArg<Map<String, dynamic>>? patchConfig,
    required OsConfigPatchDeploymentSchedule schedule,
    TfArg<String>? duration,
    TfArg<Map<String, dynamic>>? rollout,
    TfArg<String>? project,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'patch_deployment_id': patchDeploymentId,
           if (description != null) 'description': description,
           'instance_filter': instanceFilter,
           if (patchConfig != null) 'patch_config': patchConfig,
           if (duration != null) 'duration': duration,
           if (rollout != null) 'rollout': rollout,
           if (project != null) 'project': project,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           schedule.blockKey: TfArg.literal(schedule.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleOsConfigPatchDeploymentSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `last_execute_time` attribute.
  TfRef<String> get lastExecuteTime =>
      TfRef.attribute<String>(this, 'last_execute_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
