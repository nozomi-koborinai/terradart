// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_backup_policy_file_share`.
const Set<String> _azurermBackupPolicyFileShareSensitive = <String>{};

/// Backup Policy File Share Backup enum for `backup_tier`.
extension type const BackupPolicyFileShareBackupTier._(TfArg<String> _)
    implements TfArg<String> {
  BackupPolicyFileShareBackupTier.variable(String name)
    : this._(TfArg.variable(name));
  BackupPolicyFileShareBackupTier.expression(String template)
    : this._(TfArg.expression(template));
  const BackupPolicyFileShareBackupTier.arg(TfArg<String> arg) : this._(arg);

  static const snapshot = BackupPolicyFileShareBackupTier._(
    TfArgLiteral('snapshot'),
  );
  static const vaultStandard = BackupPolicyFileShareBackupTier._(
    TfArgLiteral('vault-standard'),
  );

  static const List<BackupPolicyFileShareBackupTier> values = [
    snapshot,
    vaultStandard,
  ];
}

/// Typed helper for the `backup` block of
/// `azurerm_backup_policy_file_share` (derived from provider schema).
@immutable
final class BackupPolicyFileShareBackup {
  const BackupPolicyFileShareBackup({
    required this.frequency,
    required this.schedule,
  });

  final BackupPolicyFileShareFrequency frequency;

  final BackupPolicyFileShareSchedule schedule;

  @internal
  Map<String, Object?> encode() => {
    'frequency': frequency.toTfJson(),
    ...schedule.encode(),
  };
}

/// Exactly one of `hourly`, `time` on the `backup` block of `azurerm_backup_policy_file_share`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.hourly(...)`.
sealed class BackupPolicyFileShareSchedule {
  const BackupPolicyFileShareSchedule();

  /// Sets `hourly`.
  const factory BackupPolicyFileShareSchedule.hourly(
    BackupPolicyFileShareHourly hourly,
  ) = BackupPolicyFileShareScheduleHourly;

  /// Sets `time`.
  const factory BackupPolicyFileShareSchedule.time(TfArg<String> time) =
      BackupPolicyFileShareScheduleTime;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [BackupPolicyFileShareSchedule.hourly] choice: sets `hourly`.
final class BackupPolicyFileShareScheduleHourly
    extends BackupPolicyFileShareSchedule {
  const BackupPolicyFileShareScheduleHourly(this.hourly);

  final BackupPolicyFileShareHourly hourly;

  @internal
  @override
  String get blockKey => 'hourly';

  @internal
  @override
  Map<String, Object?> encode() => {'hourly': hourly.encode()};
}

/// The [BackupPolicyFileShareSchedule.time] choice: sets `time`.
final class BackupPolicyFileShareScheduleTime
    extends BackupPolicyFileShareSchedule {
  const BackupPolicyFileShareScheduleTime(this.time);

  final TfArg<String> time;

  @internal
  @override
  String get blockKey => 'time';

  @internal
  @override
  Map<String, Object?> encode() => {'time': time.toTfJson()};
}

/// `frequency` — derived from the provider schema description.
extension type const BackupPolicyFileShareFrequency._(TfArg<String> _)
    implements TfArg<String> {
  BackupPolicyFileShareFrequency.variable(String name)
    : this._(TfArg.variable(name));
  BackupPolicyFileShareFrequency.expression(String template)
    : this._(TfArg.expression(template));
  const BackupPolicyFileShareFrequency.arg(TfArg<String> arg) : this._(arg);

  static const daily = BackupPolicyFileShareFrequency._(TfArgLiteral('Daily'));
  static const hourly = BackupPolicyFileShareFrequency._(
    TfArgLiteral('Hourly'),
  );

  static const List<BackupPolicyFileShareFrequency> values = [daily, hourly];
}

/// Typed helper for the `backup.hourly` block of
/// `azurerm_backup_policy_file_share` (derived from provider schema).
@immutable
final class BackupPolicyFileShareHourly {
  const BackupPolicyFileShareHourly({
    required this.interval,
    required this.startTime,
    required this.windowDuration,
  });

  final TfArg<num> interval;

  final TfArg<String> startTime;

  final TfArg<num> windowDuration;

  @internal
  Map<String, Object?> encode() => {
    'interval': interval.toTfJson(),
    'start_time': startTime.toTfJson(),
    'window_duration': windowDuration.toTfJson(),
  };
}

/// Typed helper for the `retention_daily` block of
/// `azurerm_backup_policy_file_share` (derived from provider schema).
@immutable
final class BackupPolicyFileShareRetentionDaily {
  const BackupPolicyFileShareRetentionDaily({required this.count});

  final TfArg<num> count;

  @internal
  Map<String, Object?> encode() => {'count': count.toTfJson()};
}

/// Typed helper for the `retention_monthly` block of
/// `azurerm_backup_policy_file_share` (derived from provider schema).
@immutable
final class BackupPolicyFileShareRetentionMonthly {
  const BackupPolicyFileShareRetentionMonthly({
    required this.count,
    this.days,
    this.includeLastDays,
    this.weekdays,
    this.weeks,
  });

  final TfArg<num> count;

  final TfArg<List<num>>? days;

  final TfArg<bool>? includeLastDays;

  final TfArg<List<String>>? weekdays;

  final List<BackupPolicyFileShareWeeks>? weeks;

  @internal
  Map<String, Object?> encode() => {
    'count': count.toTfJson(),
    'days': ?days?.toTfJson(),
    'include_last_days': ?includeLastDays?.toTfJson(),
    'weekdays': ?weekdays?.toTfJson(),
    if (weeks != null) 'weeks': [for (final e in weeks!) e.toTfJson()],
  };
}

/// `weeks` — derived from the provider schema description.
extension type const BackupPolicyFileShareWeeks._(TfArg<String> _)
    implements TfArg<String> {
  BackupPolicyFileShareWeeks.variable(String name)
    : this._(TfArg.variable(name));
  BackupPolicyFileShareWeeks.expression(String template)
    : this._(TfArg.expression(template));
  const BackupPolicyFileShareWeeks.arg(TfArg<String> arg) : this._(arg);

  static const first = BackupPolicyFileShareWeeks._(TfArgLiteral('First'));
  static const second = BackupPolicyFileShareWeeks._(TfArgLiteral('Second'));
  static const third = BackupPolicyFileShareWeeks._(TfArgLiteral('Third'));
  static const fourth = BackupPolicyFileShareWeeks._(TfArgLiteral('Fourth'));
  static const last = BackupPolicyFileShareWeeks._(TfArgLiteral('Last'));

  static const List<BackupPolicyFileShareWeeks> values = [
    first,
    second,
    third,
    fourth,
    last,
  ];
}

/// Typed helper for the `retention_weekly` block of
/// `azurerm_backup_policy_file_share` (derived from provider schema).
@immutable
final class BackupPolicyFileShareRetentionWeekly {
  const BackupPolicyFileShareRetentionWeekly({
    required this.count,
    required this.weekdays,
  });

  final TfArg<num> count;

  final TfArg<List<String>> weekdays;

  @internal
  Map<String, Object?> encode() => {
    'count': count.toTfJson(),
    'weekdays': weekdays.toTfJson(),
  };
}

/// Typed helper for the `retention_yearly` block of
/// `azurerm_backup_policy_file_share` (derived from provider schema).
@immutable
final class BackupPolicyFileShareRetentionYearly {
  const BackupPolicyFileShareRetentionYearly({
    required this.count,
    this.days,
    this.includeLastDays,
    required this.months,
    this.weekdays,
    this.weeks,
  });

  final TfArg<num> count;

  final TfArg<List<num>>? days;

  final TfArg<bool>? includeLastDays;

  final TfArg<List<String>> months;

  final TfArg<List<String>>? weekdays;

  final List<BackupPolicyFileShareWeeks>? weeks;

  @internal
  Map<String, Object?> encode() => {
    'count': count.toTfJson(),
    'days': ?days?.toTfJson(),
    'include_last_days': ?includeLastDays?.toTfJson(),
    'months': months.toTfJson(),
    'weekdays': ?weekdays?.toTfJson(),
    if (weeks != null) 'weeks': [for (final e in weeks!) e.toTfJson()],
  };
}

/// Factory wrapper for `azurerm_backup_policy_file_share`.
final class AzurermBackupPolicyFileShare extends Resource {
  static const String tfType = 'azurerm_backup_policy_file_share';

  AzurermBackupPolicyFileShare(
    super.localName, {
    BackupPolicyFileShareBackupTier? backupTier,
    required TfArg<String> name,
    required TfArg<String> recoveryVaultName,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<num>? snapshotRetentionInDays,
    TfArg<String>? timezone,
    required BackupPolicyFileShareBackup backup,
    required BackupPolicyFileShareRetentionDaily retentionDaily,
    BackupPolicyFileShareRetentionMonthly? retentionMonthly,
    BackupPolicyFileShareRetentionWeekly? retentionWeekly,
    BackupPolicyFileShareRetentionYearly? retentionYearly,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'backup_tier': ?backupTier,
           'name': name,
           'recovery_vault_name': recoveryVaultName,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'snapshot_retention_in_days': ?snapshotRetentionInDays,
           'timezone': ?timezone,
           'backup': TfArg.literal(backup.encode()),
           'retention_daily': TfArg.literal(retentionDaily.encode()),
           if (retentionMonthly != null)
             'retention_monthly': TfArg.literal(retentionMonthly.encode()),
           if (retentionWeekly != null)
             'retention_weekly': TfArg.literal(retentionWeekly.encode()),
           if (retentionYearly != null)
             'retention_yearly': TfArg.literal(retentionYearly.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermBackupPolicyFileShareSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermBackupPolicyFileShare>`.
  RefTo<AzurermBackupPolicyFileShare> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `backup_tier` attribute.
  TfRef<String> get backupTier => TfRef.attribute<String>(this, 'backup_tier');

  /// Reference to `recovery_vault_name` attribute.
  TfRef<String> get recoveryVaultName =>
      TfRef.attribute<String>(this, 'recovery_vault_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `snapshot_retention_in_days` attribute.
  TfRef<num> get snapshotRetentionInDays =>
      TfRef.attribute<num>(this, 'snapshot_retention_in_days');

  /// Reference to `timezone` attribute.
  TfRef<String> get timezone => TfRef.attribute<String>(this, 'timezone');
}
