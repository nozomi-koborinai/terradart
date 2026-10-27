// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_data_protection_backup_policy_postgresql_flexible_server`.
const Set<String>
_azurermDataProtectionBackupPolicyPostgresqlFlexibleServerSensitive =
    <String>{};

/// Typed helper for the `default_retention_rule` block of
/// `azurerm_data_protection_backup_policy_postgresql_flexible_server` (derived from provider schema).
@immutable
final class DataProtectionBackupPolicyPostgresqlFlexibleServerDefaultRetentionRule {
  const DataProtectionBackupPolicyPostgresqlFlexibleServerDefaultRetentionRule({
    required this.lifeCycle,
  });

  final List<DataProtectionBackupPolicyPostgresqlFlexibleServerLifeCycle>
  lifeCycle;

  @internal
  Map<String, Object?> encode() => {
    'life_cycle': [for (final e in lifeCycle) e.encode()],
  };
}

/// Typed helper for the `default_retention_rule.life_cycle` block of
/// `azurerm_data_protection_backup_policy_postgresql_flexible_server` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataProtectionBackupPolicyPostgresqlFlexibleServerLifeCycle {
  const DataProtectionBackupPolicyPostgresqlFlexibleServerLifeCycle({
    required this.dataStoreType,
    required this.duration,
  });

  final TfArg<String> dataStoreType;

  final TfArg<String> duration;

  @internal
  Map<String, Object?> encode() => {
    'data_store_type': dataStoreType.toTfJson(),
    'duration': duration.toTfJson(),
  };
}

/// Typed helper for the `retention_rule` block of
/// `azurerm_data_protection_backup_policy_postgresql_flexible_server` (derived from provider schema).
@immutable
final class DataProtectionBackupPolicyPostgresqlFlexibleServerRetentionRule {
  const DataProtectionBackupPolicyPostgresqlFlexibleServerRetentionRule({
    required this.name,
    required this.priority,
    required this.criteria,
    required this.lifeCycle,
  });

  final TfArg<String> name;

  final TfArg<num> priority;

  final DataProtectionBackupPolicyPostgresqlFlexibleServerCriteria criteria;

  final List<DataProtectionBackupPolicyPostgresqlFlexibleServerLifeCycle>
  lifeCycle;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'priority': priority.toTfJson(),
    'criteria': criteria.encode(),
    'life_cycle': [for (final e in lifeCycle) e.encode()],
  };
}

/// Typed helper for the `retention_rule.criteria` block of
/// `azurerm_data_protection_backup_policy_postgresql_flexible_server` (derived from provider schema).
@immutable
final class DataProtectionBackupPolicyPostgresqlFlexibleServerCriteria {
  const DataProtectionBackupPolicyPostgresqlFlexibleServerCriteria({
    this.absoluteCriteria,
    this.daysOfWeek,
    this.monthsOfYear,
    this.scheduledBackupTimes,
    this.weeksOfMonth,
  });

  final DataProtectionBackupPolicyPostgresqlFlexibleServerAbsoluteCriteria?
  absoluteCriteria;

  final List<DataProtectionBackupPolicyPostgresqlFlexibleServerDaysOfWeek>?
  daysOfWeek;

  final List<DataProtectionBackupPolicyPostgresqlFlexibleServerMonthsOfYear>?
  monthsOfYear;

  final TfArg<List<String>>? scheduledBackupTimes;

  final List<DataProtectionBackupPolicyPostgresqlFlexibleServerWeeksOfMonth>?
  weeksOfMonth;

  @internal
  Map<String, Object?> encode() => {
    'absolute_criteria': ?absoluteCriteria?.toTfJson(),
    if (daysOfWeek != null)
      'days_of_week': [for (final e in daysOfWeek!) e.toTfJson()],
    if (monthsOfYear != null)
      'months_of_year': [for (final e in monthsOfYear!) e.toTfJson()],
    'scheduled_backup_times': ?scheduledBackupTimes?.toTfJson(),
    if (weeksOfMonth != null)
      'weeks_of_month': [for (final e in weeksOfMonth!) e.toTfJson()],
  };
}

/// `absolute_criteria` — derived from the provider schema description.
extension type const DataProtectionBackupPolicyPostgresqlFlexibleServerAbsoluteCriteria._(
  TfArg<String> _
) implements TfArg<String> {
  DataProtectionBackupPolicyPostgresqlFlexibleServerAbsoluteCriteria.variable(
    String name,
  ) : this._(TfArg.variable(name));
  DataProtectionBackupPolicyPostgresqlFlexibleServerAbsoluteCriteria.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const DataProtectionBackupPolicyPostgresqlFlexibleServerAbsoluteCriteria.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const allbackup =
      DataProtectionBackupPolicyPostgresqlFlexibleServerAbsoluteCriteria._(
        TfArgLiteral('AllBackup'),
      );
  static const firstofday =
      DataProtectionBackupPolicyPostgresqlFlexibleServerAbsoluteCriteria._(
        TfArgLiteral('FirstOfDay'),
      );
  static const firstofmonth =
      DataProtectionBackupPolicyPostgresqlFlexibleServerAbsoluteCriteria._(
        TfArgLiteral('FirstOfMonth'),
      );
  static const firstofweek =
      DataProtectionBackupPolicyPostgresqlFlexibleServerAbsoluteCriteria._(
        TfArgLiteral('FirstOfWeek'),
      );
  static const firstofyear =
      DataProtectionBackupPolicyPostgresqlFlexibleServerAbsoluteCriteria._(
        TfArgLiteral('FirstOfYear'),
      );

  static const List<
    DataProtectionBackupPolicyPostgresqlFlexibleServerAbsoluteCriteria
  >
  values = [allbackup, firstofday, firstofmonth, firstofweek, firstofyear];
}

/// `days_of_week` — derived from the provider schema description.
extension type const DataProtectionBackupPolicyPostgresqlFlexibleServerDaysOfWeek._(
  TfArg<String> _
) implements TfArg<String> {
  DataProtectionBackupPolicyPostgresqlFlexibleServerDaysOfWeek.variable(
    String name,
  ) : this._(TfArg.variable(name));
  DataProtectionBackupPolicyPostgresqlFlexibleServerDaysOfWeek.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const DataProtectionBackupPolicyPostgresqlFlexibleServerDaysOfWeek.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const friday =
      DataProtectionBackupPolicyPostgresqlFlexibleServerDaysOfWeek._(
        TfArgLiteral('Friday'),
      );
  static const monday =
      DataProtectionBackupPolicyPostgresqlFlexibleServerDaysOfWeek._(
        TfArgLiteral('Monday'),
      );
  static const saturday =
      DataProtectionBackupPolicyPostgresqlFlexibleServerDaysOfWeek._(
        TfArgLiteral('Saturday'),
      );
  static const sunday =
      DataProtectionBackupPolicyPostgresqlFlexibleServerDaysOfWeek._(
        TfArgLiteral('Sunday'),
      );
  static const thursday =
      DataProtectionBackupPolicyPostgresqlFlexibleServerDaysOfWeek._(
        TfArgLiteral('Thursday'),
      );
  static const tuesday =
      DataProtectionBackupPolicyPostgresqlFlexibleServerDaysOfWeek._(
        TfArgLiteral('Tuesday'),
      );
  static const wednesday =
      DataProtectionBackupPolicyPostgresqlFlexibleServerDaysOfWeek._(
        TfArgLiteral('Wednesday'),
      );

  static const List<
    DataProtectionBackupPolicyPostgresqlFlexibleServerDaysOfWeek
  >
  values = [friday, monday, saturday, sunday, thursday, tuesday, wednesday];
}

/// `months_of_year` — derived from the provider schema description.
extension type const DataProtectionBackupPolicyPostgresqlFlexibleServerMonthsOfYear._(
  TfArg<String> _
) implements TfArg<String> {
  DataProtectionBackupPolicyPostgresqlFlexibleServerMonthsOfYear.variable(
    String name,
  ) : this._(TfArg.variable(name));
  DataProtectionBackupPolicyPostgresqlFlexibleServerMonthsOfYear.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const DataProtectionBackupPolicyPostgresqlFlexibleServerMonthsOfYear.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const april =
      DataProtectionBackupPolicyPostgresqlFlexibleServerMonthsOfYear._(
        TfArgLiteral('April'),
      );
  static const august =
      DataProtectionBackupPolicyPostgresqlFlexibleServerMonthsOfYear._(
        TfArgLiteral('August'),
      );
  static const december =
      DataProtectionBackupPolicyPostgresqlFlexibleServerMonthsOfYear._(
        TfArgLiteral('December'),
      );
  static const february =
      DataProtectionBackupPolicyPostgresqlFlexibleServerMonthsOfYear._(
        TfArgLiteral('February'),
      );
  static const january =
      DataProtectionBackupPolicyPostgresqlFlexibleServerMonthsOfYear._(
        TfArgLiteral('January'),
      );
  static const july =
      DataProtectionBackupPolicyPostgresqlFlexibleServerMonthsOfYear._(
        TfArgLiteral('July'),
      );
  static const june =
      DataProtectionBackupPolicyPostgresqlFlexibleServerMonthsOfYear._(
        TfArgLiteral('June'),
      );
  static const march =
      DataProtectionBackupPolicyPostgresqlFlexibleServerMonthsOfYear._(
        TfArgLiteral('March'),
      );
  static const may =
      DataProtectionBackupPolicyPostgresqlFlexibleServerMonthsOfYear._(
        TfArgLiteral('May'),
      );
  static const november =
      DataProtectionBackupPolicyPostgresqlFlexibleServerMonthsOfYear._(
        TfArgLiteral('November'),
      );
  static const october =
      DataProtectionBackupPolicyPostgresqlFlexibleServerMonthsOfYear._(
        TfArgLiteral('October'),
      );
  static const september =
      DataProtectionBackupPolicyPostgresqlFlexibleServerMonthsOfYear._(
        TfArgLiteral('September'),
      );

  static const List<
    DataProtectionBackupPolicyPostgresqlFlexibleServerMonthsOfYear
  >
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
extension type const DataProtectionBackupPolicyPostgresqlFlexibleServerWeeksOfMonth._(
  TfArg<String> _
) implements TfArg<String> {
  DataProtectionBackupPolicyPostgresqlFlexibleServerWeeksOfMonth.variable(
    String name,
  ) : this._(TfArg.variable(name));
  DataProtectionBackupPolicyPostgresqlFlexibleServerWeeksOfMonth.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const DataProtectionBackupPolicyPostgresqlFlexibleServerWeeksOfMonth.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const first =
      DataProtectionBackupPolicyPostgresqlFlexibleServerWeeksOfMonth._(
        TfArgLiteral('First'),
      );
  static const fourth =
      DataProtectionBackupPolicyPostgresqlFlexibleServerWeeksOfMonth._(
        TfArgLiteral('Fourth'),
      );
  static const last =
      DataProtectionBackupPolicyPostgresqlFlexibleServerWeeksOfMonth._(
        TfArgLiteral('Last'),
      );
  static const second =
      DataProtectionBackupPolicyPostgresqlFlexibleServerWeeksOfMonth._(
        TfArgLiteral('Second'),
      );
  static const third =
      DataProtectionBackupPolicyPostgresqlFlexibleServerWeeksOfMonth._(
        TfArgLiteral('Third'),
      );

  static const List<
    DataProtectionBackupPolicyPostgresqlFlexibleServerWeeksOfMonth
  >
  values = [first, fourth, last, second, third];
}

/// Factory wrapper for `azurerm_data_protection_backup_policy_postgresql_flexible_server`.
final class AzurermDataProtectionBackupPolicyPostgresqlFlexibleServer
    extends Resource {
  static const String tfType =
      'azurerm_data_protection_backup_policy_postgresql_flexible_server';

  AzurermDataProtectionBackupPolicyPostgresqlFlexibleServer(
    super.localName, {
    required TfArg<List<String>> backupRepeatingTimeIntervals,
    required TfArg<String> name,
    TfArg<String>? timeZone,
    required TfArg<String> vaultId,
    required DataProtectionBackupPolicyPostgresqlFlexibleServerDefaultRetentionRule
    defaultRetentionRule,
    List<DataProtectionBackupPolicyPostgresqlFlexibleServerRetentionRule>?
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
      _azurermDataProtectionBackupPolicyPostgresqlFlexibleServerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDataProtectionBackupPolicyPostgresqlFlexibleServer>`.
  RefTo<AzurermDataProtectionBackupPolicyPostgresqlFlexibleServer> get ref =>
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
