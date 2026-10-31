// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_data_protection_backup_policy_mysql_flexible_server`.
const Set<String>
_azurermDataProtectionBackupPolicyMysqlFlexibleServerSensitive = <String>{};

/// Typed helper for the `default_retention_rule` block of
/// `azurerm_data_protection_backup_policy_mysql_flexible_server` (derived from provider schema).
@immutable
final class DataProtectionBackupPolicyMysqlFlexibleServerDefaultRetentionRule {
  const DataProtectionBackupPolicyMysqlFlexibleServerDefaultRetentionRule({
    required this.lifeCycle,
  });

  final List<DataProtectionBackupPolicyMysqlFlexibleServerLifeCycle> lifeCycle;

  @internal
  Map<String, Object?> encode() => {
    'life_cycle': [for (final e in lifeCycle) e.encode()],
  };
}

/// Typed helper for the `default_retention_rule.life_cycle` block of
/// `azurerm_data_protection_backup_policy_mysql_flexible_server` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataProtectionBackupPolicyMysqlFlexibleServerLifeCycle {
  const DataProtectionBackupPolicyMysqlFlexibleServerLifeCycle({
    required this.dataStoreType,
    required this.duration,
  });

  final DataProtectionBackupPolicyMysqlFlexibleServerDataStoreType
  dataStoreType;

  final TfArg<String> duration;

  @internal
  Map<String, Object?> encode() => {
    'data_store_type': dataStoreType.toTfJson(),
    'duration': duration.toTfJson(),
  };
}

/// `data_store_type` — derived from the provider schema description.
extension type const DataProtectionBackupPolicyMysqlFlexibleServerDataStoreType._(
  TfArg<String> _
) implements TfArg<String> {
  DataProtectionBackupPolicyMysqlFlexibleServerDataStoreType.variable(
    String name,
  ) : this._(TfArg.variable(name));
  DataProtectionBackupPolicyMysqlFlexibleServerDataStoreType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const DataProtectionBackupPolicyMysqlFlexibleServerDataStoreType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const vaultstore =
      DataProtectionBackupPolicyMysqlFlexibleServerDataStoreType._(
        TfArgLiteral('VaultStore'),
      );

  static const List<DataProtectionBackupPolicyMysqlFlexibleServerDataStoreType>
  values = [vaultstore];
}

/// Typed helper for the `retention_rule` block of
/// `azurerm_data_protection_backup_policy_mysql_flexible_server` (derived from provider schema).
@immutable
final class DataProtectionBackupPolicyMysqlFlexibleServerRetentionRule {
  const DataProtectionBackupPolicyMysqlFlexibleServerRetentionRule({
    required this.name,
    required this.priority,
    required this.criteria,
    required this.lifeCycle,
  });

  final TfArg<String> name;

  final TfArg<num> priority;

  final DataProtectionBackupPolicyMysqlFlexibleServerCriteria criteria;

  final List<DataProtectionBackupPolicyMysqlFlexibleServerLifeCycle> lifeCycle;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'priority': priority.toTfJson(),
    'criteria': criteria.encode(),
    'life_cycle': [for (final e in lifeCycle) e.encode()],
  };
}

/// Typed helper for the `retention_rule.criteria` block of
/// `azurerm_data_protection_backup_policy_mysql_flexible_server` (derived from provider schema).
@immutable
final class DataProtectionBackupPolicyMysqlFlexibleServerCriteria {
  const DataProtectionBackupPolicyMysqlFlexibleServerCriteria({
    this.absoluteCriteria,
    this.daysOfWeek,
    this.monthsOfYear,
    this.scheduledBackupTimes,
    this.weeksOfMonth,
  });

  final DataProtectionBackupPolicyMysqlFlexibleServerAbsoluteCriteria?
  absoluteCriteria;

  final EnumList<DataProtectionBackupPolicyMysqlFlexibleServerDaysOfWeek>?
  daysOfWeek;

  final EnumList<DataProtectionBackupPolicyMysqlFlexibleServerMonthsOfYear>?
  monthsOfYear;

  final TfArg<List<String>>? scheduledBackupTimes;

  final EnumList<DataProtectionBackupPolicyMysqlFlexibleServerWeeksOfMonth>?
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
extension type const DataProtectionBackupPolicyMysqlFlexibleServerAbsoluteCriteria._(
  TfArg<String> _
) implements TfArg<String> {
  DataProtectionBackupPolicyMysqlFlexibleServerAbsoluteCriteria.variable(
    String name,
  ) : this._(TfArg.variable(name));
  DataProtectionBackupPolicyMysqlFlexibleServerAbsoluteCriteria.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const DataProtectionBackupPolicyMysqlFlexibleServerAbsoluteCriteria.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const allbackup =
      DataProtectionBackupPolicyMysqlFlexibleServerAbsoluteCriteria._(
        TfArgLiteral('AllBackup'),
      );
  static const firstofday =
      DataProtectionBackupPolicyMysqlFlexibleServerAbsoluteCriteria._(
        TfArgLiteral('FirstOfDay'),
      );
  static const firstofmonth =
      DataProtectionBackupPolicyMysqlFlexibleServerAbsoluteCriteria._(
        TfArgLiteral('FirstOfMonth'),
      );
  static const firstofweek =
      DataProtectionBackupPolicyMysqlFlexibleServerAbsoluteCriteria._(
        TfArgLiteral('FirstOfWeek'),
      );
  static const firstofyear =
      DataProtectionBackupPolicyMysqlFlexibleServerAbsoluteCriteria._(
        TfArgLiteral('FirstOfYear'),
      );

  static const List<
    DataProtectionBackupPolicyMysqlFlexibleServerAbsoluteCriteria
  >
  values = [allbackup, firstofday, firstofmonth, firstofweek, firstofyear];
}

/// `days_of_week` — derived from the provider schema description.
extension type const DataProtectionBackupPolicyMysqlFlexibleServerDaysOfWeek._(
  TfArg<String> _
) implements TfArg<String> {
  DataProtectionBackupPolicyMysqlFlexibleServerDaysOfWeek.variable(String name)
    : this._(TfArg.variable(name));
  DataProtectionBackupPolicyMysqlFlexibleServerDaysOfWeek.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const DataProtectionBackupPolicyMysqlFlexibleServerDaysOfWeek.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const friday =
      DataProtectionBackupPolicyMysqlFlexibleServerDaysOfWeek._(
        TfArgLiteral('Friday'),
      );
  static const monday =
      DataProtectionBackupPolicyMysqlFlexibleServerDaysOfWeek._(
        TfArgLiteral('Monday'),
      );
  static const saturday =
      DataProtectionBackupPolicyMysqlFlexibleServerDaysOfWeek._(
        TfArgLiteral('Saturday'),
      );
  static const sunday =
      DataProtectionBackupPolicyMysqlFlexibleServerDaysOfWeek._(
        TfArgLiteral('Sunday'),
      );
  static const thursday =
      DataProtectionBackupPolicyMysqlFlexibleServerDaysOfWeek._(
        TfArgLiteral('Thursday'),
      );
  static const tuesday =
      DataProtectionBackupPolicyMysqlFlexibleServerDaysOfWeek._(
        TfArgLiteral('Tuesday'),
      );
  static const wednesday =
      DataProtectionBackupPolicyMysqlFlexibleServerDaysOfWeek._(
        TfArgLiteral('Wednesday'),
      );

  static const List<DataProtectionBackupPolicyMysqlFlexibleServerDaysOfWeek>
  values = [friday, monday, saturday, sunday, thursday, tuesday, wednesday];
}

/// `months_of_year` — derived from the provider schema description.
extension type const DataProtectionBackupPolicyMysqlFlexibleServerMonthsOfYear._(
  TfArg<String> _
) implements TfArg<String> {
  DataProtectionBackupPolicyMysqlFlexibleServerMonthsOfYear.variable(
    String name,
  ) : this._(TfArg.variable(name));
  DataProtectionBackupPolicyMysqlFlexibleServerMonthsOfYear.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const DataProtectionBackupPolicyMysqlFlexibleServerMonthsOfYear.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const april =
      DataProtectionBackupPolicyMysqlFlexibleServerMonthsOfYear._(
        TfArgLiteral('April'),
      );
  static const august =
      DataProtectionBackupPolicyMysqlFlexibleServerMonthsOfYear._(
        TfArgLiteral('August'),
      );
  static const december =
      DataProtectionBackupPolicyMysqlFlexibleServerMonthsOfYear._(
        TfArgLiteral('December'),
      );
  static const february =
      DataProtectionBackupPolicyMysqlFlexibleServerMonthsOfYear._(
        TfArgLiteral('February'),
      );
  static const january =
      DataProtectionBackupPolicyMysqlFlexibleServerMonthsOfYear._(
        TfArgLiteral('January'),
      );
  static const july =
      DataProtectionBackupPolicyMysqlFlexibleServerMonthsOfYear._(
        TfArgLiteral('July'),
      );
  static const june =
      DataProtectionBackupPolicyMysqlFlexibleServerMonthsOfYear._(
        TfArgLiteral('June'),
      );
  static const march =
      DataProtectionBackupPolicyMysqlFlexibleServerMonthsOfYear._(
        TfArgLiteral('March'),
      );
  static const may =
      DataProtectionBackupPolicyMysqlFlexibleServerMonthsOfYear._(
        TfArgLiteral('May'),
      );
  static const november =
      DataProtectionBackupPolicyMysqlFlexibleServerMonthsOfYear._(
        TfArgLiteral('November'),
      );
  static const october =
      DataProtectionBackupPolicyMysqlFlexibleServerMonthsOfYear._(
        TfArgLiteral('October'),
      );
  static const september =
      DataProtectionBackupPolicyMysqlFlexibleServerMonthsOfYear._(
        TfArgLiteral('September'),
      );

  static const List<DataProtectionBackupPolicyMysqlFlexibleServerMonthsOfYear>
  values = [
    april,
    august,
    december,
    february,
    january,
    july,
    june,
    march,
    may,
    november,
    october,
    september,
  ];
}

/// `weeks_of_month` — derived from the provider schema description.
extension type const DataProtectionBackupPolicyMysqlFlexibleServerWeeksOfMonth._(
  TfArg<String> _
) implements TfArg<String> {
  DataProtectionBackupPolicyMysqlFlexibleServerWeeksOfMonth.variable(
    String name,
  ) : this._(TfArg.variable(name));
  DataProtectionBackupPolicyMysqlFlexibleServerWeeksOfMonth.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const DataProtectionBackupPolicyMysqlFlexibleServerWeeksOfMonth.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const first =
      DataProtectionBackupPolicyMysqlFlexibleServerWeeksOfMonth._(
        TfArgLiteral('First'),
      );
  static const fourth =
      DataProtectionBackupPolicyMysqlFlexibleServerWeeksOfMonth._(
        TfArgLiteral('Fourth'),
      );
  static const last =
      DataProtectionBackupPolicyMysqlFlexibleServerWeeksOfMonth._(
        TfArgLiteral('Last'),
      );
  static const second =
      DataProtectionBackupPolicyMysqlFlexibleServerWeeksOfMonth._(
        TfArgLiteral('Second'),
      );
  static const third =
      DataProtectionBackupPolicyMysqlFlexibleServerWeeksOfMonth._(
        TfArgLiteral('Third'),
      );

  static const List<DataProtectionBackupPolicyMysqlFlexibleServerWeeksOfMonth>
  values = [first, fourth, last, second, third];
}

/// Factory wrapper for `azurerm_data_protection_backup_policy_mysql_flexible_server`.
final class AzurermDataProtectionBackupPolicyMysqlFlexibleServer
    extends Resource {
  static const String tfType =
      'azurerm_data_protection_backup_policy_mysql_flexible_server';

  AzurermDataProtectionBackupPolicyMysqlFlexibleServer(
    super.localName, {
    required TfArg<List<String>> backupRepeatingTimeIntervals,
    required TfArg<String> name,
    TfArg<String>? timeZone,
    required TfArg<String> vaultId,
    required DataProtectionBackupPolicyMysqlFlexibleServerDefaultRetentionRule
    defaultRetentionRule,
    List<DataProtectionBackupPolicyMysqlFlexibleServerRetentionRule>?
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
           'time_zone': ?timeZone,
           'vault_id': vaultId,
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
      _azurermDataProtectionBackupPolicyMysqlFlexibleServerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDataProtectionBackupPolicyMysqlFlexibleServer>`.
  RefTo<AzurermDataProtectionBackupPolicyMysqlFlexibleServer> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `backup_repeating_time_intervals` attribute.
  TfRef<List<String>> get backupRepeatingTimeIntervals =>
      TfRef.attribute<List<String>>(this, 'backup_repeating_time_intervals');

  /// Reference to `time_zone` attribute.
  TfRef<String> get timeZone => TfRef.attribute<String>(this, 'time_zone');

  /// Reference to `vault_id` attribute.
  TfRef<String> get vaultId => TfRef.attribute<String>(this, 'vault_id');
}
