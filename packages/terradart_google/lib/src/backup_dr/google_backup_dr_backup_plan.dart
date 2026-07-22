// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_backup_dr_backup_plan`.
const Set<String> _googleBackupDrBackupPlanSensitive = <String>{};

/// Typed helper for the `backup_rules` block of
/// `google_backup_dr_backup_plan` (derived from provider schema).
@immutable
final class BackupDrBackupPlanBackupRules {
  const BackupDrBackupPlanBackupRules({
    required this.backupRetentionDays,
    required this.ruleId,
    required this.standardSchedule,
  });

  final TfArg<num> backupRetentionDays;

  final TfArg<String> ruleId;

  final BackupDrBackupPlanBackupRulesStandardSchedule standardSchedule;

  Map<String, Object?> encode() => {
    'backup_retention_days': backupRetentionDays.toTfJson(),
    'rule_id': ruleId.toTfJson(),
    'standard_schedule': standardSchedule.encode(),
  };
}

/// Typed helper for the `backup_rules.standard_schedule` block of
/// `google_backup_dr_backup_plan` (derived from provider schema).
@immutable
final class BackupDrBackupPlanBackupRulesStandardSchedule {
  const BackupDrBackupPlanBackupRulesStandardSchedule({
    this.daysOfMonth,
    this.daysOfWeek,
    this.hourlyFrequency,
    this.months,
    required this.recurrenceType,
    required this.timeZone,
    this.backupWindow,
    this.weekDayOfMonth,
  });

  final TfArg<List<Object?>>? daysOfMonth;

  final List<TfArg<BackupDrBackupPlanBackupRulesStandardScheduleDaysOfWeek>>?
  daysOfWeek;

  final TfArg<num>? hourlyFrequency;

  final List<TfArg<BackupDrBackupPlanBackupRulesStandardScheduleMonths>>?
  months;

  final TfArg<BackupDrBackupPlanBackupRulesStandardScheduleRecurrenceType>
  recurrenceType;

  final TfArg<String> timeZone;

  final BackupDrBackupPlanBackupRulesStandardScheduleBackupWindow? backupWindow;

  final BackupDrBackupPlanBackupRulesStandardScheduleWeekDayOfMonth?
  weekDayOfMonth;

  Map<String, Object?> encode() => {
    if (daysOfMonth != null) 'days_of_month': daysOfMonth!.toTfJson(),
    if (daysOfWeek != null)
      'days_of_week': [for (final e in daysOfWeek!) e.toTfJson()],
    if (hourlyFrequency != null)
      'hourly_frequency': hourlyFrequency!.toTfJson(),
    if (months != null) 'months': [for (final e in months!) e.toTfJson()],
    'recurrence_type': recurrenceType.toTfJson(),
    'time_zone': timeZone.toTfJson(),
    if (backupWindow != null) 'backup_window': backupWindow!.encode(),
    if (weekDayOfMonth != null) 'week_day_of_month': weekDayOfMonth!.encode(),
  };
}

/// `days_of_week` — derived from the provider schema description.
enum BackupDrBackupPlanBackupRulesStandardScheduleDaysOfWeek
    implements TerraformEnum {
  dayOfWeekUnspecified('DAY_OF_WEEK_UNSPECIFIED'),
  monday('MONDAY'),
  tuesday('TUESDAY'),
  wednesday('WEDNESDAY'),
  thursday('THURSDAY'),
  friday('FRIDAY'),
  saturday('SATURDAY'),
  sunday('SUNDAY');

  const BackupDrBackupPlanBackupRulesStandardScheduleDaysOfWeek(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `months` — derived from the provider schema description.
enum BackupDrBackupPlanBackupRulesStandardScheduleMonths
    implements TerraformEnum {
  monthUnspecified('MONTH_UNSPECIFIED'),
  january('JANUARY'),
  february('FEBRUARY'),
  march('MARCH'),
  april('APRIL'),
  may('MAY'),
  june('JUNE'),
  july('JULY'),
  august('AUGUST'),
  september('SEPTEMBER'),
  october('OCTOBER'),
  november('NOVEMBER'),
  december('DECEMBER');

  const BackupDrBackupPlanBackupRulesStandardScheduleMonths(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `recurrence_type` — derived from the provider schema description.
enum BackupDrBackupPlanBackupRulesStandardScheduleRecurrenceType
    implements TerraformEnum {
  hourly('HOURLY'),
  daily('DAILY'),
  weekly('WEEKLY'),
  monthly('MONTHLY'),
  yearly('YEARLY');

  const BackupDrBackupPlanBackupRulesStandardScheduleRecurrenceType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `backup_rules.standard_schedule.backup_window` block of
/// `google_backup_dr_backup_plan` (derived from provider schema).
@immutable
final class BackupDrBackupPlanBackupRulesStandardScheduleBackupWindow {
  const BackupDrBackupPlanBackupRulesStandardScheduleBackupWindow({
    this.endHourOfDay,
    required this.startHourOfDay,
  });

  final TfArg<num>? endHourOfDay;

  final TfArg<num> startHourOfDay;

  Map<String, Object?> encode() => {
    if (endHourOfDay != null) 'end_hour_of_day': endHourOfDay!.toTfJson(),
    'start_hour_of_day': startHourOfDay.toTfJson(),
  };
}

/// Typed helper for the `backup_rules.standard_schedule.week_day_of_month` block of
/// `google_backup_dr_backup_plan` (derived from provider schema).
@immutable
final class BackupDrBackupPlanBackupRulesStandardScheduleWeekDayOfMonth {
  const BackupDrBackupPlanBackupRulesStandardScheduleWeekDayOfMonth({
    required this.dayOfWeek,
    required this.weekOfMonth,
  });

  final TfArg<
    BackupDrBackupPlanBackupRulesStandardScheduleWeekDayOfMonthDayOfWeek
  >
  dayOfWeek;

  final TfArg<
    BackupDrBackupPlanBackupRulesStandardScheduleWeekDayOfMonthWeekOfMonth
  >
  weekOfMonth;

  Map<String, Object?> encode() => {
    'day_of_week': dayOfWeek.toTfJson(),
    'week_of_month': weekOfMonth.toTfJson(),
  };
}

/// `day_of_week` — derived from the provider schema description.
enum BackupDrBackupPlanBackupRulesStandardScheduleWeekDayOfMonthDayOfWeek
    implements TerraformEnum {
  dayOfWeekUnspecified('DAY_OF_WEEK_UNSPECIFIED'),
  monday('MONDAY'),
  tuesday('TUESDAY'),
  wednesday('WEDNESDAY'),
  thursday('THURSDAY'),
  friday('FRIDAY'),
  saturday('SATURDAY'),
  sunday('SUNDAY');

  const BackupDrBackupPlanBackupRulesStandardScheduleWeekDayOfMonthDayOfWeek(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `week_of_month` — derived from the provider schema description.
enum BackupDrBackupPlanBackupRulesStandardScheduleWeekDayOfMonthWeekOfMonth
    implements TerraformEnum {
  weekOfMonthUnspecified('WEEK_OF_MONTH_UNSPECIFIED'),
  first('FIRST'),
  second('SECOND'),
  third('THIRD'),
  fourth('FOURTH'),
  last('LAST');

  const BackupDrBackupPlanBackupRulesStandardScheduleWeekDayOfMonthWeekOfMonth(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `compute_instance_backup_plan_properties` block of
/// `google_backup_dr_backup_plan` (derived from provider schema).
@immutable
final class BackupDrBackupPlanComputeInstanceBackupPlanProperties {
  const BackupDrBackupPlanComputeInstanceBackupPlanProperties({
    required this.guestFlush,
  });

  final TfArg<bool> guestFlush;

  Map<String, Object?> encode() => {'guest_flush': guestFlush.toTfJson()};
}

/// Typed helper for the `disk_backup_plan_properties` block of
/// `google_backup_dr_backup_plan` (derived from provider schema).
@immutable
final class BackupDrBackupPlanDiskBackupPlanProperties {
  const BackupDrBackupPlanDiskBackupPlanProperties({required this.guestFlush});

  final TfArg<bool> guestFlush;

  Map<String, Object?> encode() => {'guest_flush': guestFlush.toTfJson()};
}

/// Factory wrapper for `google_backup_dr_backup_plan`.
///
/// A backup plan defines when and how to back up a resource, including the
/// backup's schedule, retention, and location.
///
/// Backup and DR Service **backup plan** — schedule and retention rules
/// targeting a [GoogleBackupDrBackupVault].
///
/// **Cost:** plan metadata alone has no separate SKU under BackupDR
/// `3DAD-299B-0D94`; charges accrue when associations protect resources
/// (management + vault storage). Deferred with the never_apply vault /
/// management-server Wave (no apply-smoke quickstart).
///
/// Enable `backupdr.googleapis.com` via [GoogleProjectService] before apply.
final class GoogleBackupDrBackupPlan extends Resource {
  static const String tfType = 'google_backup_dr_backup_plan';

  GoogleBackupDrBackupPlan({
    required super.localName,
    required TfArg<String> backupPlanId,
    required TfArg<String> location,
    required TfArg<String> backupVault,
    required TfArg<String> resourceType,
    List<BackupDrBackupPlanBackupRules>? backupRules,
    TfArg<String>? description,
    TfArg<num>? logRetentionDays,
    TfArg<num>? maxCustomOnDemandRetentionDays,
    BackupDrBackupPlanComputeInstanceBackupPlanProperties?
    computeInstanceBackupPlanProperties,
    BackupDrBackupPlanDiskBackupPlanProperties? diskBackupPlanProperties,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'backup_plan_id': backupPlanId,
           'location': location,
           'backup_vault': backupVault,
           'resource_type': resourceType,
           if (backupRules != null)
             'backup_rules': TfArg.literal([
               for (final e in backupRules) e.encode(),
             ]),
           if (description != null) 'description': description,
           if (logRetentionDays != null) 'log_retention_days': logRetentionDays,
           if (maxCustomOnDemandRetentionDays != null)
             'max_custom_on_demand_retention_days':
                 maxCustomOnDemandRetentionDays,
           if (computeInstanceBackupPlanProperties != null)
             'compute_instance_backup_plan_properties': TfArg.literal(
               computeInstanceBackupPlanProperties.encode(),
             ),
           if (diskBackupPlanProperties != null)
             'disk_backup_plan_properties': TfArg.literal(
               diskBackupPlanProperties.encode(),
             ),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBackupDrBackupPlanSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `backup_vault_service_account` attribute.
  TfRef<String> get backupVaultServiceAccount =>
      TfRef.attribute<String>(this, 'backup_vault_service_account');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `supported_resource_types` attribute.
  TfRef<List<String>> get supportedResourceTypes =>
      TfRef.attribute<List<String>>(this, 'supported_resource_types');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `backup_plan_id` attribute.
  TfRef<String> get backupPlanIdRef =>
      TfRef.attribute<String>(this, 'backup_plan_id');
}
