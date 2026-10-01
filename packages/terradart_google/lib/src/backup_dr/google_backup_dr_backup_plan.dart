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

  final List<BackupDrBackupPlanDaysOfWeek>? daysOfWeek;

  final TfArg<num>? hourlyFrequency;

  final List<BackupDrBackupPlanMonths>? months;

  final BackupDrBackupPlanRecurrenceType recurrenceType;

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
extension type const BackupDrBackupPlanDaysOfWeek._(TfArg<String> _)
    implements TfArg<String> {
  BackupDrBackupPlanDaysOfWeek.variable(String name)
    : this._(TfArg.variable(name));
  BackupDrBackupPlanDaysOfWeek.expression(String template)
    : this._(TfArg.expression(template));
  const BackupDrBackupPlanDaysOfWeek.arg(TfArg<String> arg) : this._(arg);

  static const dayOfWeekUnspecified = BackupDrBackupPlanDaysOfWeek._(
    TfArgLiteral('DAY_OF_WEEK_UNSPECIFIED'),
  );
  static const monday = BackupDrBackupPlanDaysOfWeek._(TfArgLiteral('MONDAY'));
  static const tuesday = BackupDrBackupPlanDaysOfWeek._(
    TfArgLiteral('TUESDAY'),
  );
  static const wednesday = BackupDrBackupPlanDaysOfWeek._(
    TfArgLiteral('WEDNESDAY'),
  );
  static const thursday = BackupDrBackupPlanDaysOfWeek._(
    TfArgLiteral('THURSDAY'),
  );
  static const friday = BackupDrBackupPlanDaysOfWeek._(TfArgLiteral('FRIDAY'));
  static const saturday = BackupDrBackupPlanDaysOfWeek._(
    TfArgLiteral('SATURDAY'),
  );
  static const sunday = BackupDrBackupPlanDaysOfWeek._(TfArgLiteral('SUNDAY'));

  static const List<BackupDrBackupPlanDaysOfWeek> values = [
    dayOfWeekUnspecified,
    monday,
    tuesday,
    wednesday,
    thursday,
    friday,
    saturday,
    sunday,
  ];
}

/// `months` — derived from the provider schema description.
extension type const BackupDrBackupPlanMonths._(TfArg<String> _)
    implements TfArg<String> {
  BackupDrBackupPlanMonths.variable(String name) : this._(TfArg.variable(name));
  BackupDrBackupPlanMonths.expression(String template)
    : this._(TfArg.expression(template));
  const BackupDrBackupPlanMonths.arg(TfArg<String> arg) : this._(arg);

  static const monthUnspecified = BackupDrBackupPlanMonths._(
    TfArgLiteral('MONTH_UNSPECIFIED'),
  );
  static const january = BackupDrBackupPlanMonths._(TfArgLiteral('JANUARY'));
  static const february = BackupDrBackupPlanMonths._(TfArgLiteral('FEBRUARY'));
  static const march = BackupDrBackupPlanMonths._(TfArgLiteral('MARCH'));
  static const april = BackupDrBackupPlanMonths._(TfArgLiteral('APRIL'));
  static const may = BackupDrBackupPlanMonths._(TfArgLiteral('MAY'));
  static const june = BackupDrBackupPlanMonths._(TfArgLiteral('JUNE'));
  static const july = BackupDrBackupPlanMonths._(TfArgLiteral('JULY'));
  static const august = BackupDrBackupPlanMonths._(TfArgLiteral('AUGUST'));
  static const september = BackupDrBackupPlanMonths._(
    TfArgLiteral('SEPTEMBER'),
  );
  static const october = BackupDrBackupPlanMonths._(TfArgLiteral('OCTOBER'));
  static const november = BackupDrBackupPlanMonths._(TfArgLiteral('NOVEMBER'));
  static const december = BackupDrBackupPlanMonths._(TfArgLiteral('DECEMBER'));

  static const List<BackupDrBackupPlanMonths> values = [
    monthUnspecified,
    january,
    february,
    march,
    april,
    may,
    june,
    july,
    august,
    september,
    october,
    november,
    december,
  ];
}

/// `recurrence_type` — derived from the provider schema description.
extension type const BackupDrBackupPlanRecurrenceType._(TfArg<String> _)
    implements TfArg<String> {
  BackupDrBackupPlanRecurrenceType.variable(String name)
    : this._(TfArg.variable(name));
  BackupDrBackupPlanRecurrenceType.expression(String template)
    : this._(TfArg.expression(template));
  const BackupDrBackupPlanRecurrenceType.arg(TfArg<String> arg) : this._(arg);

  static const hourly = BackupDrBackupPlanRecurrenceType._(
    TfArgLiteral('HOURLY'),
  );
  static const daily = BackupDrBackupPlanRecurrenceType._(
    TfArgLiteral('DAILY'),
  );
  static const weekly = BackupDrBackupPlanRecurrenceType._(
    TfArgLiteral('WEEKLY'),
  );
  static const monthly = BackupDrBackupPlanRecurrenceType._(
    TfArgLiteral('MONTHLY'),
  );
  static const yearly = BackupDrBackupPlanRecurrenceType._(
    TfArgLiteral('YEARLY'),
  );

  static const List<BackupDrBackupPlanRecurrenceType> values = [
    hourly,
    daily,
    weekly,
    monthly,
    yearly,
  ];
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

  final BackupDrBackupPlanDayOfWeek dayOfWeek;

  final BackupDrBackupPlanWeekOfMonth weekOfMonth;

  Map<String, Object?> encode() => {
    'day_of_week': dayOfWeek.toTfJson(),
    'week_of_month': weekOfMonth.toTfJson(),
  };
}

/// `day_of_week` — derived from the provider schema description.
extension type const BackupDrBackupPlanDayOfWeek._(TfArg<String> _)
    implements TfArg<String> {
  BackupDrBackupPlanDayOfWeek.variable(String name)
    : this._(TfArg.variable(name));
  BackupDrBackupPlanDayOfWeek.expression(String template)
    : this._(TfArg.expression(template));
  const BackupDrBackupPlanDayOfWeek.arg(TfArg<String> arg) : this._(arg);

  static const dayOfWeekUnspecified = BackupDrBackupPlanDayOfWeek._(
    TfArgLiteral('DAY_OF_WEEK_UNSPECIFIED'),
  );
  static const monday = BackupDrBackupPlanDayOfWeek._(TfArgLiteral('MONDAY'));
  static const tuesday = BackupDrBackupPlanDayOfWeek._(TfArgLiteral('TUESDAY'));
  static const wednesday = BackupDrBackupPlanDayOfWeek._(
    TfArgLiteral('WEDNESDAY'),
  );
  static const thursday = BackupDrBackupPlanDayOfWeek._(
    TfArgLiteral('THURSDAY'),
  );
  static const friday = BackupDrBackupPlanDayOfWeek._(TfArgLiteral('FRIDAY'));
  static const saturday = BackupDrBackupPlanDayOfWeek._(
    TfArgLiteral('SATURDAY'),
  );
  static const sunday = BackupDrBackupPlanDayOfWeek._(TfArgLiteral('SUNDAY'));

  static const List<BackupDrBackupPlanDayOfWeek> values = [
    dayOfWeekUnspecified,
    monday,
    tuesday,
    wednesday,
    thursday,
    friday,
    saturday,
    sunday,
  ];
}

/// `week_of_month` — derived from the provider schema description.
extension type const BackupDrBackupPlanWeekOfMonth._(TfArg<String> _)
    implements TfArg<String> {
  BackupDrBackupPlanWeekOfMonth.variable(String name)
    : this._(TfArg.variable(name));
  BackupDrBackupPlanWeekOfMonth.expression(String template)
    : this._(TfArg.expression(template));
  const BackupDrBackupPlanWeekOfMonth.arg(TfArg<String> arg) : this._(arg);

  static const weekOfMonthUnspecified = BackupDrBackupPlanWeekOfMonth._(
    TfArgLiteral('WEEK_OF_MONTH_UNSPECIFIED'),
  );
  static const first = BackupDrBackupPlanWeekOfMonth._(TfArgLiteral('FIRST'));
  static const second = BackupDrBackupPlanWeekOfMonth._(TfArgLiteral('SECOND'));
  static const third = BackupDrBackupPlanWeekOfMonth._(TfArgLiteral('THIRD'));
  static const fourth = BackupDrBackupPlanWeekOfMonth._(TfArgLiteral('FOURTH'));
  static const last = BackupDrBackupPlanWeekOfMonth._(TfArgLiteral('LAST'));

  static const List<BackupDrBackupPlanWeekOfMonth> values = [
    weekOfMonthUnspecified,
    first,
    second,
    third,
    fourth,
    last,
  ];
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

  GoogleBackupDrBackupPlan(
    super.localName, {
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
