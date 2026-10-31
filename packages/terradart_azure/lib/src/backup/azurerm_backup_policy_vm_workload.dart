// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_backup_policy_vm_workload`.
const Set<String> _azurermBackupPolicyVmWorkloadSensitive = <String>{};

/// Backup Policy Vm Workload enum for `workload_type`.
extension type const BackupPolicyVmWorkloadType._(TfArg<String> _)
    implements TfArg<String> {
  BackupPolicyVmWorkloadType.variable(String name)
    : this._(TfArg.variable(name));
  BackupPolicyVmWorkloadType.expression(String template)
    : this._(TfArg.expression(template));
  const BackupPolicyVmWorkloadType.arg(TfArg<String> arg) : this._(arg);

  static const sqldatabase = BackupPolicyVmWorkloadType._(
    TfArgLiteral('SQLDataBase'),
  );
  static const saphanadatabase = BackupPolicyVmWorkloadType._(
    TfArgLiteral('SAPHanaDatabase'),
  );

  static const List<BackupPolicyVmWorkloadType> values = [
    sqldatabase,
    saphanadatabase,
  ];
}

/// Typed helper for the `protection_policy` block of
/// `azurerm_backup_policy_vm_workload` (derived from provider schema).
@immutable
final class BackupPolicyVmWorkloadProtectionPolicy {
  const BackupPolicyVmWorkloadProtectionPolicy({
    required this.policyType,
    required this.backup,
    this.retentionDaily,
    this.retentionMonthly,
    this.retentionWeekly,
    this.retentionYearly,
    this.simpleRetention,
  });

  final BackupPolicyVmWorkloadPolicyType policyType;

  final BackupPolicyVmWorkloadBackup backup;

  final BackupPolicyVmWorkloadRetentionDaily? retentionDaily;

  final BackupPolicyVmWorkloadRetentionMonthly? retentionMonthly;

  final BackupPolicyVmWorkloadRetentionWeekly? retentionWeekly;

  final BackupPolicyVmWorkloadRetentionYearly? retentionYearly;

  final BackupPolicyVmWorkloadSimpleRetention? simpleRetention;

  @internal
  Map<String, Object?> encode() => {
    'policy_type': policyType.toTfJson(),
    'backup': backup.encode(),
    'retention_daily': ?retentionDaily?.encode(),
    'retention_monthly': ?retentionMonthly?.encode(),
    'retention_weekly': ?retentionWeekly?.encode(),
    'retention_yearly': ?retentionYearly?.encode(),
    'simple_retention': ?simpleRetention?.encode(),
  };
}

/// `policy_type` — derived from the provider schema description.
extension type const BackupPolicyVmWorkloadPolicyType._(TfArg<String> _)
    implements TfArg<String> {
  BackupPolicyVmWorkloadPolicyType.variable(String name)
    : this._(TfArg.variable(name));
  BackupPolicyVmWorkloadPolicyType.expression(String template)
    : this._(TfArg.expression(template));
  const BackupPolicyVmWorkloadPolicyType.arg(TfArg<String> arg) : this._(arg);

  static const differential = BackupPolicyVmWorkloadPolicyType._(
    TfArgLiteral('Differential'),
  );
  static const full = BackupPolicyVmWorkloadPolicyType._(TfArgLiteral('Full'));
  static const incremental = BackupPolicyVmWorkloadPolicyType._(
    TfArgLiteral('Incremental'),
  );
  static const log = BackupPolicyVmWorkloadPolicyType._(TfArgLiteral('Log'));

  static const List<BackupPolicyVmWorkloadPolicyType> values = [
    differential,
    full,
    incremental,
    log,
  ];
}

/// Typed helper for the `protection_policy.backup` block of
/// `azurerm_backup_policy_vm_workload` (derived from provider schema).
@immutable
final class BackupPolicyVmWorkloadBackup {
  const BackupPolicyVmWorkloadBackup({
    this.frequency,
    this.frequencyInMinutes,
    this.time,
    this.weekdays,
  });

  final BackupPolicyVmWorkloadFrequency? frequency;

  final TfArg<num>? frequencyInMinutes;

  final TfArg<String>? time;

  final TfArg<List<String>>? weekdays;

  @internal
  Map<String, Object?> encode() => {
    'frequency': ?frequency?.toTfJson(),
    'frequency_in_minutes': ?frequencyInMinutes?.toTfJson(),
    'time': ?time?.toTfJson(),
    'weekdays': ?weekdays?.toTfJson(),
  };
}

/// `frequency` — derived from the provider schema description.
extension type const BackupPolicyVmWorkloadFrequency._(TfArg<String> _)
    implements TfArg<String> {
  BackupPolicyVmWorkloadFrequency.variable(String name)
    : this._(TfArg.variable(name));
  BackupPolicyVmWorkloadFrequency.expression(String template)
    : this._(TfArg.expression(template));
  const BackupPolicyVmWorkloadFrequency.arg(TfArg<String> arg) : this._(arg);

  static const daily = BackupPolicyVmWorkloadFrequency._(TfArgLiteral('Daily'));
  static const weekly = BackupPolicyVmWorkloadFrequency._(
    TfArgLiteral('Weekly'),
  );

  static const List<BackupPolicyVmWorkloadFrequency> values = [daily, weekly];
}

/// Typed helper for the `protection_policy.retention_daily` block of
/// `azurerm_backup_policy_vm_workload` (derived from provider schema).
@immutable
final class BackupPolicyVmWorkloadRetentionDaily {
  const BackupPolicyVmWorkloadRetentionDaily({required this.count});

  final TfArg<num> count;

  @internal
  Map<String, Object?> encode() => {'count': count.toTfJson()};
}

/// Typed helper for the `protection_policy.retention_monthly` block of
/// `azurerm_backup_policy_vm_workload` (derived from provider schema).
@immutable
final class BackupPolicyVmWorkloadRetentionMonthly {
  const BackupPolicyVmWorkloadRetentionMonthly({
    required this.count,
    required this.formatType,
    this.monthdays,
    this.weekdays,
    this.weeks,
  });

  final TfArg<num> count;

  final BackupPolicyVmWorkloadFormatType formatType;

  final TfArg<List<num>>? monthdays;

  final TfArg<List<String>>? weekdays;

  final List<BackupPolicyVmWorkloadWeeks>? weeks;

  @internal
  Map<String, Object?> encode() => {
    'count': count.toTfJson(),
    'format_type': formatType.toTfJson(),
    'monthdays': ?monthdays?.toTfJson(),
    'weekdays': ?weekdays?.toTfJson(),
    if (weeks != null) 'weeks': [for (final e in weeks!) e.toTfJson()],
  };
}

/// `format_type` — derived from the provider schema description.
extension type const BackupPolicyVmWorkloadFormatType._(TfArg<String> _)
    implements TfArg<String> {
  BackupPolicyVmWorkloadFormatType.variable(String name)
    : this._(TfArg.variable(name));
  BackupPolicyVmWorkloadFormatType.expression(String template)
    : this._(TfArg.expression(template));
  const BackupPolicyVmWorkloadFormatType.arg(TfArg<String> arg) : this._(arg);

  static const daily = BackupPolicyVmWorkloadFormatType._(
    TfArgLiteral('Daily'),
  );
  static const weekly = BackupPolicyVmWorkloadFormatType._(
    TfArgLiteral('Weekly'),
  );

  static const List<BackupPolicyVmWorkloadFormatType> values = [daily, weekly];
}

/// `weeks` — derived from the provider schema description.
extension type const BackupPolicyVmWorkloadWeeks._(TfArg<String> _)
    implements TfArg<String> {
  BackupPolicyVmWorkloadWeeks.variable(String name)
    : this._(TfArg.variable(name));
  BackupPolicyVmWorkloadWeeks.expression(String template)
    : this._(TfArg.expression(template));
  const BackupPolicyVmWorkloadWeeks.arg(TfArg<String> arg) : this._(arg);

  static const first = BackupPolicyVmWorkloadWeeks._(TfArgLiteral('First'));
  static const second = BackupPolicyVmWorkloadWeeks._(TfArgLiteral('Second'));
  static const third = BackupPolicyVmWorkloadWeeks._(TfArgLiteral('Third'));
  static const fourth = BackupPolicyVmWorkloadWeeks._(TfArgLiteral('Fourth'));
  static const last = BackupPolicyVmWorkloadWeeks._(TfArgLiteral('Last'));

  static const List<BackupPolicyVmWorkloadWeeks> values = [
    first,
    second,
    third,
    fourth,
    last,
  ];
}

/// Typed helper for the `protection_policy.retention_weekly` block of
/// `azurerm_backup_policy_vm_workload` (derived from provider schema).
@immutable
final class BackupPolicyVmWorkloadRetentionWeekly {
  const BackupPolicyVmWorkloadRetentionWeekly({
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

/// Typed helper for the `protection_policy.retention_yearly` block of
/// `azurerm_backup_policy_vm_workload` (derived from provider schema).
@immutable
final class BackupPolicyVmWorkloadRetentionYearly {
  const BackupPolicyVmWorkloadRetentionYearly({
    required this.count,
    required this.formatType,
    this.monthdays,
    required this.months,
    this.weekdays,
    this.weeks,
  });

  final TfArg<num> count;

  final BackupPolicyVmWorkloadFormatType formatType;

  final TfArg<List<num>>? monthdays;

  final TfArg<List<String>> months;

  final TfArg<List<String>>? weekdays;

  final List<BackupPolicyVmWorkloadWeeks>? weeks;

  @internal
  Map<String, Object?> encode() => {
    'count': count.toTfJson(),
    'format_type': formatType.toTfJson(),
    'monthdays': ?monthdays?.toTfJson(),
    'months': months.toTfJson(),
    'weekdays': ?weekdays?.toTfJson(),
    if (weeks != null) 'weeks': [for (final e in weeks!) e.toTfJson()],
  };
}

/// Typed helper for the `protection_policy.simple_retention` block of
/// `azurerm_backup_policy_vm_workload` (derived from provider schema).
@immutable
final class BackupPolicyVmWorkloadSimpleRetention {
  const BackupPolicyVmWorkloadSimpleRetention({required this.count});

  final TfArg<num> count;

  @internal
  Map<String, Object?> encode() => {'count': count.toTfJson()};
}

/// Typed helper for the `settings` block of
/// `azurerm_backup_policy_vm_workload` (derived from provider schema).
@immutable
final class BackupPolicyVmWorkloadSettings {
  const BackupPolicyVmWorkloadSettings({
    this.compressionEnabled,
    required this.timeZone,
  });

  final TfArg<bool>? compressionEnabled;

  final TfArg<String> timeZone;

  @internal
  Map<String, Object?> encode() => {
    'compression_enabled': ?compressionEnabled?.toTfJson(),
    'time_zone': timeZone.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_backup_policy_vm_workload`.
final class AzurermBackupPolicyVmWorkload extends Resource {
  static const String tfType = 'azurerm_backup_policy_vm_workload';

  AzurermBackupPolicyVmWorkload(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> recoveryVaultName,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required BackupPolicyVmWorkloadType workloadType,
    required List<BackupPolicyVmWorkloadProtectionPolicy> protectionPolicy,
    required BackupPolicyVmWorkloadSettings settings,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'recovery_vault_name': recoveryVaultName,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'workload_type': workloadType,
           'protection_policy': TfArg.literal([
             for (final e in protectionPolicy) e.encode(),
           ]),
           'settings': TfArg.literal(settings.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermBackupPolicyVmWorkloadSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermBackupPolicyVmWorkload>`.
  RefTo<AzurermBackupPolicyVmWorkload> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `recovery_vault_name` attribute.
  TfRef<String> get recoveryVaultName =>
      TfRef.attribute<String>(this, 'recovery_vault_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `workload_type` attribute.
  TfRef<String> get workloadType =>
      TfRef.attribute<String>(this, 'workload_type');
}
