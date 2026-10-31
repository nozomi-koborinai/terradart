// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_backup_policy_vm`.
const Set<String> _azurermBackupPolicyVmSensitive = <String>{};

/// Backup Policy Vm Consistency enum for `consistency_type`.
extension type const BackupPolicyVmConsistencyType._(TfArg<String> _)
    implements TfArg<String> {
  BackupPolicyVmConsistencyType.variable(String name)
    : this._(TfArg.variable(name));
  BackupPolicyVmConsistencyType.expression(String template)
    : this._(TfArg.expression(template));
  const BackupPolicyVmConsistencyType.arg(TfArg<String> arg) : this._(arg);

  static const onlycrashconsistent = BackupPolicyVmConsistencyType._(
    TfArgLiteral('OnlyCrashConsistent'),
  );

  static const List<BackupPolicyVmConsistencyType> values = [
    onlycrashconsistent,
  ];
}

/// Backup Policy Vm Policy enum for `policy_type`.
extension type const BackupPolicyVmPolicyType._(TfArg<String> _)
    implements TfArg<String> {
  BackupPolicyVmPolicyType.variable(String name) : this._(TfArg.variable(name));
  BackupPolicyVmPolicyType.expression(String template)
    : this._(TfArg.expression(template));
  const BackupPolicyVmPolicyType.arg(TfArg<String> arg) : this._(arg);

  static const v1 = BackupPolicyVmPolicyType._(TfArgLiteral('V1'));
  static const v2 = BackupPolicyVmPolicyType._(TfArgLiteral('V2'));

  static const List<BackupPolicyVmPolicyType> values = [v1, v2];
}

/// Typed helper for the `backup` block of
/// `azurerm_backup_policy_vm` (derived from provider schema).
@immutable
final class BackupPolicyVmBackup {
  const BackupPolicyVmBackup({
    required this.frequency,
    this.hourDuration,
    this.hourInterval,
    required this.time,
    this.weekdays,
  });

  final BackupPolicyVmFrequency frequency;

  final TfArg<num>? hourDuration;

  final TfArg<num>? hourInterval;

  final TfArg<String> time;

  final TfArg<List<String>>? weekdays;

  @internal
  Map<String, Object?> encode() => {
    'frequency': frequency.toTfJson(),
    'hour_duration': ?hourDuration?.toTfJson(),
    'hour_interval': ?hourInterval?.toTfJson(),
    'time': time.toTfJson(),
    'weekdays': ?weekdays?.toTfJson(),
  };
}

/// `frequency` — derived from the provider schema description.
extension type const BackupPolicyVmFrequency._(TfArg<String> _)
    implements TfArg<String> {
  BackupPolicyVmFrequency.variable(String name) : this._(TfArg.variable(name));
  BackupPolicyVmFrequency.expression(String template)
    : this._(TfArg.expression(template));
  const BackupPolicyVmFrequency.arg(TfArg<String> arg) : this._(arg);

  static const hourly = BackupPolicyVmFrequency._(TfArgLiteral('Hourly'));
  static const daily = BackupPolicyVmFrequency._(TfArgLiteral('Daily'));
  static const weekly = BackupPolicyVmFrequency._(TfArgLiteral('Weekly'));

  static const List<BackupPolicyVmFrequency> values = [hourly, daily, weekly];
}

/// Typed helper for the `instant_restore_resource_group` block of
/// `azurerm_backup_policy_vm` (derived from provider schema).
@immutable
final class BackupPolicyVmInstantRestoreResourceGroup {
  const BackupPolicyVmInstantRestoreResourceGroup({
    required this.prefix,
    this.suffix,
  });

  final TfArg<String> prefix;

  final TfArg<String>? suffix;

  @internal
  Map<String, Object?> encode() => {
    'prefix': prefix.toTfJson(),
    'suffix': ?suffix?.toTfJson(),
  };
}

/// Typed helper for the `retention_daily` block of
/// `azurerm_backup_policy_vm` (derived from provider schema).
@immutable
final class BackupPolicyVmRetentionDaily {
  const BackupPolicyVmRetentionDaily({required this.count});

  final TfArg<num> count;

  @internal
  Map<String, Object?> encode() => {'count': count.toTfJson()};
}

/// Typed helper for the `retention_monthly` block of
/// `azurerm_backup_policy_vm` (derived from provider schema).
@immutable
final class BackupPolicyVmRetentionMonthly {
  const BackupPolicyVmRetentionMonthly({
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

  final List<BackupPolicyVmWeeks>? weeks;

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
extension type const BackupPolicyVmWeeks._(TfArg<String> _)
    implements TfArg<String> {
  BackupPolicyVmWeeks.variable(String name) : this._(TfArg.variable(name));
  BackupPolicyVmWeeks.expression(String template)
    : this._(TfArg.expression(template));
  const BackupPolicyVmWeeks.arg(TfArg<String> arg) : this._(arg);

  static const first = BackupPolicyVmWeeks._(TfArgLiteral('First'));
  static const second = BackupPolicyVmWeeks._(TfArgLiteral('Second'));
  static const third = BackupPolicyVmWeeks._(TfArgLiteral('Third'));
  static const fourth = BackupPolicyVmWeeks._(TfArgLiteral('Fourth'));
  static const last = BackupPolicyVmWeeks._(TfArgLiteral('Last'));

  static const List<BackupPolicyVmWeeks> values = [
    first,
    second,
    third,
    fourth,
    last,
  ];
}

/// Typed helper for the `retention_weekly` block of
/// `azurerm_backup_policy_vm` (derived from provider schema).
@immutable
final class BackupPolicyVmRetentionWeekly {
  const BackupPolicyVmRetentionWeekly({
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
/// `azurerm_backup_policy_vm` (derived from provider schema).
@immutable
final class BackupPolicyVmRetentionYearly {
  const BackupPolicyVmRetentionYearly({
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

  final List<BackupPolicyVmWeeks>? weeks;

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

/// Typed helper for the `tiering_policy` block of
/// `azurerm_backup_policy_vm` (derived from provider schema).
@immutable
final class BackupPolicyVmTieringPolicy {
  const BackupPolicyVmTieringPolicy({required this.archivedRestorePoint});

  final BackupPolicyVmArchivedRestorePoint archivedRestorePoint;

  @internal
  Map<String, Object?> encode() => {
    'archived_restore_point': archivedRestorePoint.encode(),
  };
}

/// Typed helper for the `tiering_policy.archived_restore_point` block of
/// `azurerm_backup_policy_vm` (derived from provider schema).
@immutable
final class BackupPolicyVmArchivedRestorePoint {
  const BackupPolicyVmArchivedRestorePoint({
    this.duration,
    this.durationType,
    required this.mode,
  });

  final TfArg<num>? duration;

  final BackupPolicyVmDurationType? durationType;

  final BackupPolicyVmMode mode;

  @internal
  Map<String, Object?> encode() => {
    'duration': ?duration?.toTfJson(),
    'duration_type': ?durationType?.toTfJson(),
    'mode': mode.toTfJson(),
  };
}

/// `duration_type` — derived from the provider schema description.
extension type const BackupPolicyVmDurationType._(TfArg<String> _)
    implements TfArg<String> {
  BackupPolicyVmDurationType.variable(String name)
    : this._(TfArg.variable(name));
  BackupPolicyVmDurationType.expression(String template)
    : this._(TfArg.expression(template));
  const BackupPolicyVmDurationType.arg(TfArg<String> arg) : this._(arg);

  static const days = BackupPolicyVmDurationType._(TfArgLiteral('Days'));
  static const weeks = BackupPolicyVmDurationType._(TfArgLiteral('Weeks'));
  static const months = BackupPolicyVmDurationType._(TfArgLiteral('Months'));
  static const years = BackupPolicyVmDurationType._(TfArgLiteral('Years'));

  static const List<BackupPolicyVmDurationType> values = [
    days,
    weeks,
    months,
    years,
  ];
}

/// `mode` — derived from the provider schema description.
extension type const BackupPolicyVmMode._(TfArg<String> _)
    implements TfArg<String> {
  BackupPolicyVmMode.variable(String name) : this._(TfArg.variable(name));
  BackupPolicyVmMode.expression(String template)
    : this._(TfArg.expression(template));
  const BackupPolicyVmMode.arg(TfArg<String> arg) : this._(arg);

  static const tierafter = BackupPolicyVmMode._(TfArgLiteral('TierAfter'));
  static const tierrecommended = BackupPolicyVmMode._(
    TfArgLiteral('TierRecommended'),
  );

  static const List<BackupPolicyVmMode> values = [tierafter, tierrecommended];
}

/// Factory wrapper for `azurerm_backup_policy_vm`.
final class AzurermBackupPolicyVm extends Resource {
  static const String tfType = 'azurerm_backup_policy_vm';

  AzurermBackupPolicyVm(
    super.localName, {
    BackupPolicyVmConsistencyType? consistencyType,
    TfArg<num>? instantRestoreRetentionDays,
    required TfArg<String> name,
    BackupPolicyVmPolicyType? policyType,
    required TfArg<String> recoveryVaultName,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<String>? timezone,
    required BackupPolicyVmBackup backup,
    BackupPolicyVmInstantRestoreResourceGroup? instantRestoreResourceGroup,
    BackupPolicyVmRetentionDaily? retentionDaily,
    BackupPolicyVmRetentionMonthly? retentionMonthly,
    BackupPolicyVmRetentionWeekly? retentionWeekly,
    BackupPolicyVmRetentionYearly? retentionYearly,
    BackupPolicyVmTieringPolicy? tieringPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'consistency_type': ?consistencyType,
           'instant_restore_retention_days': ?instantRestoreRetentionDays,
           'name': name,
           'policy_type': ?policyType,
           'recovery_vault_name': recoveryVaultName,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'timezone': ?timezone,
           'backup': TfArg.literal(backup.encode()),
           if (instantRestoreResourceGroup != null)
             'instant_restore_resource_group': TfArg.literal(
               instantRestoreResourceGroup.encode(),
             ),
           if (retentionDaily != null)
             'retention_daily': TfArg.literal(retentionDaily.encode()),
           if (retentionMonthly != null)
             'retention_monthly': TfArg.literal(retentionMonthly.encode()),
           if (retentionWeekly != null)
             'retention_weekly': TfArg.literal(retentionWeekly.encode()),
           if (retentionYearly != null)
             'retention_yearly': TfArg.literal(retentionYearly.encode()),
           if (tieringPolicy != null)
             'tiering_policy': TfArg.literal(tieringPolicy.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermBackupPolicyVmSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermBackupPolicyVm>`.
  RefTo<AzurermBackupPolicyVm> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `consistency_type` attribute.
  TfRef<String> get consistencyType =>
      TfRef.attribute<String>(this, 'consistency_type');

  /// Reference to `instant_restore_retention_days` attribute.
  TfRef<num> get instantRestoreRetentionDays =>
      TfRef.attribute<num>(this, 'instant_restore_retention_days');

  /// Reference to `policy_type` attribute.
  TfRef<String> get policyType => TfRef.attribute<String>(this, 'policy_type');

  /// Reference to `recovery_vault_name` attribute.
  TfRef<String> get recoveryVaultName =>
      TfRef.attribute<String>(this, 'recovery_vault_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `timezone` attribute.
  TfRef<String> get timezone => TfRef.attribute<String>(this, 'timezone');
}
