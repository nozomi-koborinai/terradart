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

  final BackupDrBackupPlanStandardSchedule standardSchedule;

  Map<String, Object?> encode() => {
    'backup_retention_days': backupRetentionDays.toTfJson(),
    'rule_id': ruleId.toTfJson(),
    'standard_schedule': standardSchedule.encode(),
  };
}

/// Typed helper for the `backup_rules.standard_schedule` block of
/// `google_backup_dr_backup_plan` (derived from provider schema).
@immutable
final class BackupDrBackupPlanStandardSchedule {
  const BackupDrBackupPlanStandardSchedule({
    this.daysOfMonth,
    this.daysOfWeek,
    this.hourlyFrequency,
    this.months,
    required this.recurrenceType,
    required this.timeZone,
    this.backupWindow,
    this.weekDayOfMonth,
  });

  final TfArg<List<num>>? daysOfMonth;

  final List<TfArg<BackupDrBackupPlanDaysOfWeek>>? daysOfWeek;

  final TfArg<num>? hourlyFrequency;

  final List<TfArg<BackupDrBackupPlanMonths>>? months;

  final TfArg<BackupDrBackupPlanRecurrenceType> recurrenceType;

  final TfArg<String> timeZone;

  final BackupDrBackupPlanBackupWindow? backupWindow;

  final BackupDrBackupPlanWeekDayOfMonth? weekDayOfMonth;

  Map<String, Object?> encode() => {
    'days_of_month': ?daysOfMonth?.toTfJson(),
    if (daysOfWeek != null)
      'days_of_week': [for (final e in daysOfWeek!) e.toTfJson()],
    'hourly_frequency': ?hourlyFrequency?.toTfJson(),
    if (months != null) 'months': [for (final e in months!) e.toTfJson()],
    'recurrence_type': recurrenceType.toTfJson(),
    'time_zone': timeZone.toTfJson(),
    'backup_window': ?backupWindow?.encode(),
    'week_day_of_month': ?weekDayOfMonth?.encode(),
  };
}

/// `days_of_week` — derived from the provider schema description.
enum BackupDrBackupPlanDaysOfWeek implements TerraformEnum {
  dayOfWeekUnspecified('DAY_OF_WEEK_UNSPECIFIED'),
  monday('MONDAY'),
  tuesday('TUESDAY'),
  wednesday('WEDNESDAY'),
  thursday('THURSDAY'),
  friday('FRIDAY'),
  saturday('SATURDAY'),
  sunday('SUNDAY');

  const BackupDrBackupPlanDaysOfWeek(this.terraformValue);
  @override
  final String terraformValue;
}

/// `months` — derived from the provider schema description.
enum BackupDrBackupPlanMonths implements TerraformEnum {
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

  const BackupDrBackupPlanMonths(this.terraformValue);
  @override
  final String terraformValue;
}

/// `recurrence_type` — derived from the provider schema description.
enum BackupDrBackupPlanRecurrenceType implements TerraformEnum {
  hourly('HOURLY'),
  daily('DAILY'),
  weekly('WEEKLY'),
  monthly('MONTHLY'),
  yearly('YEARLY');

  const BackupDrBackupPlanRecurrenceType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `backup_rules.standard_schedule.backup_window` block of
/// `google_backup_dr_backup_plan` (derived from provider schema).
@immutable
final class BackupDrBackupPlanBackupWindow {
  const BackupDrBackupPlanBackupWindow({
    this.endHourOfDay,
    required this.startHourOfDay,
  });

  final TfArg<num>? endHourOfDay;

  final TfArg<num> startHourOfDay;

  Map<String, Object?> encode() => {
    'end_hour_of_day': ?endHourOfDay?.toTfJson(),
    'start_hour_of_day': startHourOfDay.toTfJson(),
  };
}

/// Typed helper for the `backup_rules.standard_schedule.week_day_of_month` block of
/// `google_backup_dr_backup_plan` (derived from provider schema).
@immutable
final class BackupDrBackupPlanWeekDayOfMonth {
  const BackupDrBackupPlanWeekDayOfMonth({
    required this.dayOfWeek,
    required this.weekOfMonth,
  });

  final TfArg<BackupDrBackupPlanDayOfWeek> dayOfWeek;

  final TfArg<BackupDrBackupPlanWeekOfMonth> weekOfMonth;

  Map<String, Object?> encode() => {
    'day_of_week': dayOfWeek.toTfJson(),
    'week_of_month': weekOfMonth.toTfJson(),
  };
}

/// `day_of_week` — derived from the provider schema description.
enum BackupDrBackupPlanDayOfWeek implements TerraformEnum {
  dayOfWeekUnspecified('DAY_OF_WEEK_UNSPECIFIED'),
  monday('MONDAY'),
  tuesday('TUESDAY'),
  wednesday('WEDNESDAY'),
  thursday('THURSDAY'),
  friday('FRIDAY'),
  saturday('SATURDAY'),
  sunday('SUNDAY');

  const BackupDrBackupPlanDayOfWeek(this.terraformValue);
  @override
  final String terraformValue;
}

/// `week_of_month` — derived from the provider schema description.
enum BackupDrBackupPlanWeekOfMonth implements TerraformEnum {
  weekOfMonthUnspecified('WEEK_OF_MONTH_UNSPECIFIED'),
  first('FIRST'),
  second('SECOND'),
  third('THIRD'),
  fourth('FOURTH'),
  last('LAST');

  const BackupDrBackupPlanWeekOfMonth(this.terraformValue);
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
    super.provider,
    super.timeouts,
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
           'description': ?description,
           'log_retention_days': ?logRetentionDays,
           'max_custom_on_demand_retention_days':
               ?maxCustomOnDemandRetentionDays,
           if (computeInstanceBackupPlanProperties != null)
             'compute_instance_backup_plan_properties': TfArg.literal(
               computeInstanceBackupPlanProperties.encode(),
             ),
           if (diskBackupPlanProperties != null)
             'disk_backup_plan_properties': TfArg.literal(
               diskBackupPlanProperties.encode(),
             ),
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBackupDrBackupPlanSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBackupDrBackupPlan>`.
  RefTo<GoogleBackupDrBackupPlan> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `backup_plan_id` attribute.
  TfRef<String> get backupPlanId =>
      TfRef.attribute<String>(this, 'backup_plan_id');

  /// Reference to `backup_vault` attribute.
  TfRef<String> get backupVault =>
      TfRef.attribute<String>(this, 'backup_vault');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `log_retention_days` attribute.
  TfRef<num> get logRetentionDays =>
      TfRef.attribute<num>(this, 'log_retention_days');

  /// Reference to `max_custom_on_demand_retention_days` attribute.
  TfRef<num> get maxCustomOnDemandRetentionDays =>
      TfRef.attribute<num>(this, 'max_custom_on_demand_retention_days');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `resource_type` attribute.
  TfRef<String> get resourceType =>
      TfRef.attribute<String>(this, 'resource_type');
}
