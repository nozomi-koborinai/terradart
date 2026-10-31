// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_automanage_configuration`.
const Set<String> _azurermAutomanageConfigurationSensitive = <String>{};

/// Typed helper for the `antimalware` block of
/// `azurerm_automanage_configuration` (derived from provider schema).
@immutable
final class AutomanageConfigurationAntimalware {
  const AutomanageConfigurationAntimalware({
    this.realTimeProtectionEnabled,
    this.scheduledScanDay,
    this.scheduledScanEnabled,
    this.scheduledScanTimeInMinutes,
    this.scheduledScanType,
    this.exclusions,
  });

  final TfArg<bool>? realTimeProtectionEnabled;

  final TfArg<num>? scheduledScanDay;

  final TfArg<bool>? scheduledScanEnabled;

  final TfArg<num>? scheduledScanTimeInMinutes;

  final AutomanageConfigurationScheduledScanType? scheduledScanType;

  final AutomanageConfigurationExclusions? exclusions;

  @internal
  Map<String, Object?> encode() => {
    'real_time_protection_enabled': ?realTimeProtectionEnabled?.toTfJson(),
    'scheduled_scan_day': ?scheduledScanDay?.toTfJson(),
    'scheduled_scan_enabled': ?scheduledScanEnabled?.toTfJson(),
    'scheduled_scan_time_in_minutes': ?scheduledScanTimeInMinutes?.toTfJson(),
    'scheduled_scan_type': ?scheduledScanType?.toTfJson(),
    'exclusions': ?exclusions?.encode(),
  };
}

/// `scheduled_scan_type` — derived from the provider schema description.
extension type const AutomanageConfigurationScheduledScanType._(TfArg<String> _)
    implements TfArg<String> {
  AutomanageConfigurationScheduledScanType.variable(String name)
    : this._(TfArg.variable(name));
  AutomanageConfigurationScheduledScanType.expression(String template)
    : this._(TfArg.expression(template));
  const AutomanageConfigurationScheduledScanType.arg(TfArg<String> arg)
    : this._(arg);

  static const quick = AutomanageConfigurationScheduledScanType._(
    TfArgLiteral('Quick'),
  );
  static const full = AutomanageConfigurationScheduledScanType._(
    TfArgLiteral('Full'),
  );

  static const List<AutomanageConfigurationScheduledScanType> values = [
    quick,
    full,
  ];
}

/// Typed helper for the `antimalware.exclusions` block of
/// `azurerm_automanage_configuration` (derived from provider schema).
@immutable
final class AutomanageConfigurationExclusions {
  const AutomanageConfigurationExclusions({
    this.extensions,
    this.paths,
    this.processes,
  });

  final TfArg<String>? extensions;

  final TfArg<String>? paths;

  final TfArg<String>? processes;

  @internal
  Map<String, Object?> encode() => {
    'extensions': ?extensions?.toTfJson(),
    'paths': ?paths?.toTfJson(),
    'processes': ?processes?.toTfJson(),
  };
}

/// Typed helper for the `azure_security_baseline` block of
/// `azurerm_automanage_configuration` (derived from provider schema).
@immutable
final class AutomanageConfigurationAzureSecurityBaseline {
  const AutomanageConfigurationAzureSecurityBaseline({this.assignmentType});

  final AutomanageConfigurationAssignmentType? assignmentType;

  @internal
  Map<String, Object?> encode() => {
    'assignment_type': ?assignmentType?.toTfJson(),
  };
}

/// `assignment_type` — derived from the provider schema description.
extension type const AutomanageConfigurationAssignmentType._(TfArg<String> _)
    implements TfArg<String> {
  AutomanageConfigurationAssignmentType.variable(String name)
    : this._(TfArg.variable(name));
  AutomanageConfigurationAssignmentType.expression(String template)
    : this._(TfArg.expression(template));
  const AutomanageConfigurationAssignmentType.arg(TfArg<String> arg)
    : this._(arg);

  static const applyandautocorrect = AutomanageConfigurationAssignmentType._(
    TfArgLiteral('ApplyAndAutoCorrect'),
  );
  static const applyandmonitor = AutomanageConfigurationAssignmentType._(
    TfArgLiteral('ApplyAndMonitor'),
  );
  static const audit = AutomanageConfigurationAssignmentType._(
    TfArgLiteral('Audit'),
  );
  static const deployandautocorrect = AutomanageConfigurationAssignmentType._(
    TfArgLiteral('DeployAndAutoCorrect'),
  );

  static const List<AutomanageConfigurationAssignmentType> values = [
    applyandautocorrect,
    applyandmonitor,
    audit,
    deployandautocorrect,
  ];
}

/// Typed helper for the `backup` block of
/// `azurerm_automanage_configuration` (derived from provider schema).
@immutable
final class AutomanageConfigurationBackup {
  const AutomanageConfigurationBackup({
    this.instantRpRetentionRangeInDays,
    this.policyName,
    this.timeZone,
    this.retentionPolicy,
    this.schedulePolicy,
  });

  final TfArg<num>? instantRpRetentionRangeInDays;

  final TfArg<String>? policyName;

  final TfArg<String>? timeZone;

  final AutomanageConfigurationRetentionPolicy? retentionPolicy;

  final AutomanageConfigurationSchedulePolicy? schedulePolicy;

  @internal
  Map<String, Object?> encode() => {
    'instant_rp_retention_range_in_days': ?instantRpRetentionRangeInDays
        ?.toTfJson(),
    'policy_name': ?policyName?.toTfJson(),
    'time_zone': ?timeZone?.toTfJson(),
    'retention_policy': ?retentionPolicy?.encode(),
    'schedule_policy': ?schedulePolicy?.encode(),
  };
}

/// Typed helper for the `backup.retention_policy` block of
/// `azurerm_automanage_configuration` (derived from provider schema).
@immutable
final class AutomanageConfigurationRetentionPolicy {
  const AutomanageConfigurationRetentionPolicy({
    this.retentionPolicyType,
    this.dailySchedule,
    this.weeklySchedule,
  });

  final AutomanageConfigurationRetentionPolicyType? retentionPolicyType;

  final AutomanageConfigurationDailySchedule? dailySchedule;

  final AutomanageConfigurationWeeklySchedule? weeklySchedule;

  @internal
  Map<String, Object?> encode() => {
    'retention_policy_type': ?retentionPolicyType?.toTfJson(),
    'daily_schedule': ?dailySchedule?.encode(),
    'weekly_schedule': ?weeklySchedule?.encode(),
  };
}

/// `retention_policy_type` — derived from the provider schema description.
extension type const AutomanageConfigurationRetentionPolicyType._(
  TfArg<String> _
) implements TfArg<String> {
  AutomanageConfigurationRetentionPolicyType.variable(String name)
    : this._(TfArg.variable(name));
  AutomanageConfigurationRetentionPolicyType.expression(String template)
    : this._(TfArg.expression(template));
  const AutomanageConfigurationRetentionPolicyType.arg(TfArg<String> arg)
    : this._(arg);

  static const longtermretentionpolicy =
      AutomanageConfigurationRetentionPolicyType._(
        TfArgLiteral('LongTermRetentionPolicy'),
      );

  static const List<AutomanageConfigurationRetentionPolicyType> values = [
    longtermretentionpolicy,
  ];
}

/// Typed helper for the `backup.retention_policy.daily_schedule` block of
/// `azurerm_automanage_configuration` (derived from provider schema).
@immutable
final class AutomanageConfigurationDailySchedule {
  const AutomanageConfigurationDailySchedule({
    this.retentionTimes,
    this.retentionDuration,
  });

  final TfArg<List<String>>? retentionTimes;

  final AutomanageConfigurationDailyScheduleRetentionDuration?
  retentionDuration;

  @internal
  Map<String, Object?> encode() => {
    'retention_times': ?retentionTimes?.toTfJson(),
    'retention_duration': ?retentionDuration?.encode(),
  };
}

/// Typed helper for the `backup.retention_policy.daily_schedule.retention_duration` block of
/// `azurerm_automanage_configuration` (derived from provider schema).
@immutable
final class AutomanageConfigurationDailyScheduleRetentionDuration {
  const AutomanageConfigurationDailyScheduleRetentionDuration({
    this.count,
    this.durationType,
  });

  final TfArg<num>? count;

  final AutomanageConfigurationDailyScheduleDurationType? durationType;

  @internal
  Map<String, Object?> encode() => {
    'count': ?count?.toTfJson(),
    'duration_type': ?durationType?.toTfJson(),
  };
}

/// `duration_type` — derived from the provider schema description.
extension type const AutomanageConfigurationDailyScheduleDurationType._(
  TfArg<String> _
) implements TfArg<String> {
  AutomanageConfigurationDailyScheduleDurationType.variable(String name)
    : this._(TfArg.variable(name));
  AutomanageConfigurationDailyScheduleDurationType.expression(String template)
    : this._(TfArg.expression(template));
  const AutomanageConfigurationDailyScheduleDurationType.arg(TfArg<String> arg)
    : this._(arg);

  static const days = AutomanageConfigurationDailyScheduleDurationType._(
    TfArgLiteral('Days'),
  );

  static const List<AutomanageConfigurationDailyScheduleDurationType> values = [
    days,
  ];
}

/// Typed helper for the `backup.retention_policy.weekly_schedule` block of
/// `azurerm_automanage_configuration` (derived from provider schema).
@immutable
final class AutomanageConfigurationWeeklySchedule {
  const AutomanageConfigurationWeeklySchedule({
    this.retentionTimes,
    this.retentionDuration,
  });

  final TfArg<List<String>>? retentionTimes;

  final AutomanageConfigurationWeeklyScheduleRetentionDuration?
  retentionDuration;

  @internal
  Map<String, Object?> encode() => {
    'retention_times': ?retentionTimes?.toTfJson(),
    'retention_duration': ?retentionDuration?.encode(),
  };
}

/// Typed helper for the `backup.retention_policy.weekly_schedule.retention_duration` block of
/// `azurerm_automanage_configuration` (derived from provider schema).
@immutable
final class AutomanageConfigurationWeeklyScheduleRetentionDuration {
  const AutomanageConfigurationWeeklyScheduleRetentionDuration({
    this.count,
    this.durationType,
  });

  final TfArg<num>? count;

  final AutomanageConfigurationWeeklyScheduleDurationType? durationType;

  @internal
  Map<String, Object?> encode() => {
    'count': ?count?.toTfJson(),
    'duration_type': ?durationType?.toTfJson(),
  };
}

/// `duration_type` — derived from the provider schema description.
extension type const AutomanageConfigurationWeeklyScheduleDurationType._(
  TfArg<String> _
) implements TfArg<String> {
  AutomanageConfigurationWeeklyScheduleDurationType.variable(String name)
    : this._(TfArg.variable(name));
  AutomanageConfigurationWeeklyScheduleDurationType.expression(String template)
    : this._(TfArg.expression(template));
  const AutomanageConfigurationWeeklyScheduleDurationType.arg(TfArg<String> arg)
    : this._(arg);

  static const weeks = AutomanageConfigurationWeeklyScheduleDurationType._(
    TfArgLiteral('Weeks'),
  );

  static const List<AutomanageConfigurationWeeklyScheduleDurationType> values =
      [weeks];
}

/// Typed helper for the `backup.schedule_policy` block of
/// `azurerm_automanage_configuration` (derived from provider schema).
@immutable
final class AutomanageConfigurationSchedulePolicy {
  const AutomanageConfigurationSchedulePolicy({
    this.schedulePolicyType,
    this.scheduleRunDays,
    this.scheduleRunFrequency,
    this.scheduleRunTimes,
  });

  final AutomanageConfigurationSchedulePolicyType? schedulePolicyType;

  final List<AutomanageConfigurationScheduleRunDays>? scheduleRunDays;

  final AutomanageConfigurationScheduleRunFrequency? scheduleRunFrequency;

  final TfArg<List<String>>? scheduleRunTimes;

  @internal
  Map<String, Object?> encode() => {
    'schedule_policy_type': ?schedulePolicyType?.toTfJson(),
    if (scheduleRunDays != null)
      'schedule_run_days': [for (final e in scheduleRunDays!) e.toTfJson()],
    'schedule_run_frequency': ?scheduleRunFrequency?.toTfJson(),
    'schedule_run_times': ?scheduleRunTimes?.toTfJson(),
  };
}

/// `schedule_policy_type` — derived from the provider schema description.
extension type const AutomanageConfigurationSchedulePolicyType._(
  TfArg<String> _
) implements TfArg<String> {
  AutomanageConfigurationSchedulePolicyType.variable(String name)
    : this._(TfArg.variable(name));
  AutomanageConfigurationSchedulePolicyType.expression(String template)
    : this._(TfArg.expression(template));
  const AutomanageConfigurationSchedulePolicyType.arg(TfArg<String> arg)
    : this._(arg);

  static const simpleschedulepolicy =
      AutomanageConfigurationSchedulePolicyType._(
        TfArgLiteral('SimpleSchedulePolicy'),
      );

  static const List<AutomanageConfigurationSchedulePolicyType> values = [
    simpleschedulepolicy,
  ];
}

/// `schedule_run_days` — derived from the provider schema description.
extension type const AutomanageConfigurationScheduleRunDays._(TfArg<String> _)
    implements TfArg<String> {
  AutomanageConfigurationScheduleRunDays.variable(String name)
    : this._(TfArg.variable(name));
  AutomanageConfigurationScheduleRunDays.expression(String template)
    : this._(TfArg.expression(template));
  const AutomanageConfigurationScheduleRunDays.arg(TfArg<String> arg)
    : this._(arg);

  static const sunday = AutomanageConfigurationScheduleRunDays._(
    TfArgLiteral('Sunday'),
  );
  static const monday = AutomanageConfigurationScheduleRunDays._(
    TfArgLiteral('Monday'),
  );
  static const tuesday = AutomanageConfigurationScheduleRunDays._(
    TfArgLiteral('Tuesday'),
  );
  static const wednesday = AutomanageConfigurationScheduleRunDays._(
    TfArgLiteral('Wednesday'),
  );
  static const thursday = AutomanageConfigurationScheduleRunDays._(
    TfArgLiteral('Thursday'),
  );
  static const friday = AutomanageConfigurationScheduleRunDays._(
    TfArgLiteral('Friday'),
  );
  static const saturday = AutomanageConfigurationScheduleRunDays._(
    TfArgLiteral('Saturday'),
  );

  static const List<AutomanageConfigurationScheduleRunDays> values = [
    sunday,
    monday,
    tuesday,
    wednesday,
    thursday,
    friday,
    saturday,
  ];
}

/// `schedule_run_frequency` — derived from the provider schema description.
extension type const AutomanageConfigurationScheduleRunFrequency._(
  TfArg<String> _
) implements TfArg<String> {
  AutomanageConfigurationScheduleRunFrequency.variable(String name)
    : this._(TfArg.variable(name));
  AutomanageConfigurationScheduleRunFrequency.expression(String template)
    : this._(TfArg.expression(template));
  const AutomanageConfigurationScheduleRunFrequency.arg(TfArg<String> arg)
    : this._(arg);

  static const daily = AutomanageConfigurationScheduleRunFrequency._(
    TfArgLiteral('Daily'),
  );
  static const weekly = AutomanageConfigurationScheduleRunFrequency._(
    TfArgLiteral('Weekly'),
  );

  static const List<AutomanageConfigurationScheduleRunFrequency> values = [
    daily,
    weekly,
  ];
}

/// Factory wrapper for `azurerm_automanage_configuration`.
final class AzurermAutomanageConfiguration extends Resource {
  static const String tfType = 'azurerm_automanage_configuration';

  AzurermAutomanageConfiguration(
    super.localName, {
    TfArg<bool>? automationAccountEnabled,
    TfArg<bool>? bootDiagnosticsEnabled,
    TfArg<bool>? defenderForCloudEnabled,
    TfArg<bool>? guestConfigurationEnabled,
    required TfArg<String> location,
    TfArg<bool>? logAnalyticsEnabled,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<bool>? statusChangeAlertEnabled,
    TfArg<Map<String, String>>? tags,
    AutomanageConfigurationAntimalware? antimalware,
    AutomanageConfigurationAzureSecurityBaseline? azureSecurityBaseline,
    AutomanageConfigurationBackup? backup,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'automation_account_enabled': ?automationAccountEnabled,
           'boot_diagnostics_enabled': ?bootDiagnosticsEnabled,
           'defender_for_cloud_enabled': ?defenderForCloudEnabled,
           'guest_configuration_enabled': ?guestConfigurationEnabled,
           'location': location,
           'log_analytics_enabled': ?logAnalyticsEnabled,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'status_change_alert_enabled': ?statusChangeAlertEnabled,
           'tags': ?tags,
           if (antimalware != null)
             'antimalware': TfArg.literal(antimalware.encode()),
           if (azureSecurityBaseline != null)
             'azure_security_baseline': TfArg.literal(
               azureSecurityBaseline.encode(),
             ),
           if (backup != null) 'backup': TfArg.literal(backup.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermAutomanageConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermAutomanageConfiguration>`.
  RefTo<AzurermAutomanageConfiguration> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `automation_account_enabled` attribute.
  TfRef<bool> get automationAccountEnabled =>
      TfRef.attribute<bool>(this, 'automation_account_enabled');

  /// Reference to `boot_diagnostics_enabled` attribute.
  TfRef<bool> get bootDiagnosticsEnabled =>
      TfRef.attribute<bool>(this, 'boot_diagnostics_enabled');

  /// Reference to `defender_for_cloud_enabled` attribute.
  TfRef<bool> get defenderForCloudEnabled =>
      TfRef.attribute<bool>(this, 'defender_for_cloud_enabled');

  /// Reference to `guest_configuration_enabled` attribute.
  TfRef<bool> get guestConfigurationEnabled =>
      TfRef.attribute<bool>(this, 'guest_configuration_enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `log_analytics_enabled` attribute.
  TfRef<bool> get logAnalyticsEnabled =>
      TfRef.attribute<bool>(this, 'log_analytics_enabled');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `status_change_alert_enabled` attribute.
  TfRef<bool> get statusChangeAlertEnabled =>
      TfRef.attribute<bool>(this, 'status_change_alert_enabled');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
