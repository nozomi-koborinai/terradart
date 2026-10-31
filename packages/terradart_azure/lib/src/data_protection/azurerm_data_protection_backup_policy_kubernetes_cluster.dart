// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_data_protection_backup_policy_kubernetes_cluster`.
const Set<String> _azurermDataProtectionBackupPolicyKubernetesClusterSensitive =
    <String>{};

/// Typed helper for the `default_retention_rule` block of
/// `azurerm_data_protection_backup_policy_kubernetes_cluster` (derived from provider schema).
@immutable
final class DataProtectionBackupPolicyKubernetesClusterDefaultRetentionRule {
  const DataProtectionBackupPolicyKubernetesClusterDefaultRetentionRule({
    required this.lifeCycle,
  });

  final List<DataProtectionBackupPolicyKubernetesClusterLifeCycle> lifeCycle;

  @internal
  Map<String, Object?> encode() => {
    'life_cycle': [for (final e in lifeCycle) e.encode()],
  };
}

/// Typed helper for the `default_retention_rule.life_cycle` block of
/// `azurerm_data_protection_backup_policy_kubernetes_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataProtectionBackupPolicyKubernetesClusterLifeCycle {
  const DataProtectionBackupPolicyKubernetesClusterLifeCycle({
    required this.dataStoreType,
    required this.duration,
  });

  final DataProtectionBackupPolicyKubernetesClusterDataStoreType dataStoreType;

  final TfArg<String> duration;

  @internal
  Map<String, Object?> encode() => {
    'data_store_type': dataStoreType.toTfJson(),
    'duration': duration.toTfJson(),
  };
}

/// `data_store_type` — derived from the provider schema description.
extension type const DataProtectionBackupPolicyKubernetesClusterDataStoreType._(
  TfArg<String> _
) implements TfArg<String> {
  DataProtectionBackupPolicyKubernetesClusterDataStoreType.variable(String name)
    : this._(TfArg.variable(name));
  DataProtectionBackupPolicyKubernetesClusterDataStoreType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const DataProtectionBackupPolicyKubernetesClusterDataStoreType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const operationalstore =
      DataProtectionBackupPolicyKubernetesClusterDataStoreType._(
        TfArgLiteral('OperationalStore'),
      );
  static const vaultstore =
      DataProtectionBackupPolicyKubernetesClusterDataStoreType._(
        TfArgLiteral('VaultStore'),
      );

  static const List<DataProtectionBackupPolicyKubernetesClusterDataStoreType>
  values = [operationalstore, vaultstore];
}

/// Typed helper for the `retention_rule` block of
/// `azurerm_data_protection_backup_policy_kubernetes_cluster` (derived from provider schema).
@immutable
final class DataProtectionBackupPolicyKubernetesClusterRetentionRule {
  const DataProtectionBackupPolicyKubernetesClusterRetentionRule({
    required this.name,
    required this.priority,
    required this.criteria,
    required this.lifeCycle,
  });

  final TfArg<String> name;

  final TfArg<num> priority;

  final DataProtectionBackupPolicyKubernetesClusterCriteria criteria;

  final List<DataProtectionBackupPolicyKubernetesClusterLifeCycle> lifeCycle;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'priority': priority.toTfJson(),
    'criteria': criteria.encode(),
    'life_cycle': [for (final e in lifeCycle) e.encode()],
  };
}

/// Typed helper for the `retention_rule.criteria` block of
/// `azurerm_data_protection_backup_policy_kubernetes_cluster` (derived from provider schema).
@immutable
final class DataProtectionBackupPolicyKubernetesClusterCriteria {
  const DataProtectionBackupPolicyKubernetesClusterCriteria({
    this.absoluteCriteria,
    this.daysOfWeek,
    this.monthsOfYear,
    this.scheduledBackupTimes,
    this.weeksOfMonth,
  });

  final DataProtectionBackupPolicyKubernetesClusterAbsoluteCriteria?
  absoluteCriteria;

  final TfArg<List<String>>? daysOfWeek;

  final TfArg<List<String>>? monthsOfYear;

  final TfArg<List<String>>? scheduledBackupTimes;

  final EnumList<DataProtectionBackupPolicyKubernetesClusterWeeksOfMonth>?
  weeksOfMonth;

  @internal
  Map<String, Object?> encode() => {
    'absolute_criteria': ?absoluteCriteria?.toTfJson(),
    'days_of_week': ?daysOfWeek?.toTfJson(),
    'months_of_year': ?monthsOfYear?.toTfJson(),
    'scheduled_backup_times': ?scheduledBackupTimes?.toTfJson(),
    'weeks_of_month': ?weeksOfMonth?.toTfJson(),
  };
}

/// `absolute_criteria` — derived from the provider schema description.
extension type const DataProtectionBackupPolicyKubernetesClusterAbsoluteCriteria._(
  TfArg<String> _
) implements TfArg<String> {
  DataProtectionBackupPolicyKubernetesClusterAbsoluteCriteria.variable(
    String name,
  ) : this._(TfArg.variable(name));
  DataProtectionBackupPolicyKubernetesClusterAbsoluteCriteria.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const DataProtectionBackupPolicyKubernetesClusterAbsoluteCriteria.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const allbackup =
      DataProtectionBackupPolicyKubernetesClusterAbsoluteCriteria._(
        TfArgLiteral('AllBackup'),
      );
  static const firstofday =
      DataProtectionBackupPolicyKubernetesClusterAbsoluteCriteria._(
        TfArgLiteral('FirstOfDay'),
      );
  static const firstofmonth =
      DataProtectionBackupPolicyKubernetesClusterAbsoluteCriteria._(
        TfArgLiteral('FirstOfMonth'),
      );
  static const firstofweek =
      DataProtectionBackupPolicyKubernetesClusterAbsoluteCriteria._(
        TfArgLiteral('FirstOfWeek'),
      );
  static const firstofyear =
      DataProtectionBackupPolicyKubernetesClusterAbsoluteCriteria._(
        TfArgLiteral('FirstOfYear'),
      );

  static const List<DataProtectionBackupPolicyKubernetesClusterAbsoluteCriteria>
  values = [allbackup, firstofday, firstofmonth, firstofweek, firstofyear];
}

/// `weeks_of_month` — derived from the provider schema description.
extension type const DataProtectionBackupPolicyKubernetesClusterWeeksOfMonth._(
  TfArg<String> _
) implements TfArg<String> {
  DataProtectionBackupPolicyKubernetesClusterWeeksOfMonth.variable(String name)
    : this._(TfArg.variable(name));
  DataProtectionBackupPolicyKubernetesClusterWeeksOfMonth.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const DataProtectionBackupPolicyKubernetesClusterWeeksOfMonth.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const first =
      DataProtectionBackupPolicyKubernetesClusterWeeksOfMonth._(
        TfArgLiteral('First'),
      );
  static const fourth =
      DataProtectionBackupPolicyKubernetesClusterWeeksOfMonth._(
        TfArgLiteral('Fourth'),
      );
  static const last = DataProtectionBackupPolicyKubernetesClusterWeeksOfMonth._(
    TfArgLiteral('Last'),
  );
  static const second =
      DataProtectionBackupPolicyKubernetesClusterWeeksOfMonth._(
        TfArgLiteral('Second'),
      );
  static const third =
      DataProtectionBackupPolicyKubernetesClusterWeeksOfMonth._(
        TfArgLiteral('Third'),
      );

  static const List<DataProtectionBackupPolicyKubernetesClusterWeeksOfMonth>
  values = [first, fourth, last, second, third];
}

/// Factory wrapper for `azurerm_data_protection_backup_policy_kubernetes_cluster`.
final class AzurermDataProtectionBackupPolicyKubernetesCluster
    extends Resource {
  static const String tfType =
      'azurerm_data_protection_backup_policy_kubernetes_cluster';

  AzurermDataProtectionBackupPolicyKubernetesCluster(
    super.localName, {
    required TfArg<List<String>> backupRepeatingTimeIntervals,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<String>? timeZone,
    required TfArg<String> vaultName,
    required DataProtectionBackupPolicyKubernetesClusterDefaultRetentionRule
    defaultRetentionRule,
    List<DataProtectionBackupPolicyKubernetesClusterRetentionRule>?
    retentionRule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'backup_repeating_time_intervals': backupRepeatingTimeIntervals,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'time_zone': ?timeZone,
           'vault_name': vaultName,
           'default_retention_rule': TfArg.literal(
             defaultRetentionRule.encode(),
           ),
           if (retentionRule != null)
             'retention_rule': TfArg.literal([
               for (final e in retentionRule) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDataProtectionBackupPolicyKubernetesClusterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDataProtectionBackupPolicyKubernetesCluster>`.
  RefTo<AzurermDataProtectionBackupPolicyKubernetesCluster> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `backup_repeating_time_intervals` attribute.
  TfRef<List<String>> get backupRepeatingTimeIntervals =>
      TfRef.attribute<List<String>>(this, 'backup_repeating_time_intervals');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `time_zone` attribute.
  TfRef<String> get timeZone => TfRef.attribute<String>(this, 'time_zone');

  /// Reference to `vault_name` attribute.
  TfRef<String> get vaultName => TfRef.attribute<String>(this, 'vault_name');
}
