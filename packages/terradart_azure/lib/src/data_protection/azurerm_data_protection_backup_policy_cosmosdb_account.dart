// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_data_protection_backup_policy_cosmosdb_account`.
const Set<String> _azurermDataProtectionBackupPolicyCosmosdbAccountSensitive =
    <String>{};

/// Typed helper for the `monthly_retention_rule` block of
/// `azurerm_data_protection_backup_policy_cosmosdb_account` (derived from provider schema).
@immutable
final class DataProtectionBackupPolicyCosmosdbAccountMonthlyRetentionRule {
  const DataProtectionBackupPolicyCosmosdbAccountMonthlyRetentionRule({
    this.daysOfWeek,
    required this.duration,
    this.weeksOfMonth,
  });

  final List<DataProtectionBackupPolicyCosmosdbAccountDaysOfWeek>? daysOfWeek;

  final TfArg<String> duration;

  final List<DataProtectionBackupPolicyCosmosdbAccountWeeksOfMonth>?
  weeksOfMonth;

  @internal
  Map<String, Object?> encode() => {
    if (daysOfWeek != null)
      'days_of_week': [for (final e in daysOfWeek!) e.toTfJson()],
    'duration': duration.toTfJson(),
    if (weeksOfMonth != null)
      'weeks_of_month': [for (final e in weeksOfMonth!) e.toTfJson()],
  };
}

/// `days_of_week` — derived from the provider schema description.
extension type const DataProtectionBackupPolicyCosmosdbAccountDaysOfWeek._(
  TfArg<String> _
) implements TfArg<String> {
  DataProtectionBackupPolicyCosmosdbAccountDaysOfWeek.variable(String name)
    : this._(TfArg.variable(name));
  DataProtectionBackupPolicyCosmosdbAccountDaysOfWeek.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const DataProtectionBackupPolicyCosmosdbAccountDaysOfWeek.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const friday = DataProtectionBackupPolicyCosmosdbAccountDaysOfWeek._(
    TfArgLiteral('Friday'),
  );
  static const monday = DataProtectionBackupPolicyCosmosdbAccountDaysOfWeek._(
    TfArgLiteral('Monday'),
  );
  static const saturday = DataProtectionBackupPolicyCosmosdbAccountDaysOfWeek._(
    TfArgLiteral('Saturday'),
  );
  static const sunday = DataProtectionBackupPolicyCosmosdbAccountDaysOfWeek._(
    TfArgLiteral('Sunday'),
  );
  static const thursday = DataProtectionBackupPolicyCosmosdbAccountDaysOfWeek._(
    TfArgLiteral('Thursday'),
  );
  static const tuesday = DataProtectionBackupPolicyCosmosdbAccountDaysOfWeek._(
    TfArgLiteral('Tuesday'),
  );
  static const wednesday =
      DataProtectionBackupPolicyCosmosdbAccountDaysOfWeek._(
        TfArgLiteral('Wednesday'),
      );

  static const List<DataProtectionBackupPolicyCosmosdbAccountDaysOfWeek>
  values = [friday, monday, saturday, sunday, thursday, tuesday, wednesday];
}

/// `weeks_of_month` — derived from the provider schema description.
extension type const DataProtectionBackupPolicyCosmosdbAccountWeeksOfMonth._(
  TfArg<String> _
) implements TfArg<String> {
  DataProtectionBackupPolicyCosmosdbAccountWeeksOfMonth.variable(String name)
    : this._(TfArg.variable(name));
  DataProtectionBackupPolicyCosmosdbAccountWeeksOfMonth.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const DataProtectionBackupPolicyCosmosdbAccountWeeksOfMonth.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const first = DataProtectionBackupPolicyCosmosdbAccountWeeksOfMonth._(
    TfArgLiteral('First'),
  );
  static const fourth = DataProtectionBackupPolicyCosmosdbAccountWeeksOfMonth._(
    TfArgLiteral('Fourth'),
  );
  static const last = DataProtectionBackupPolicyCosmosdbAccountWeeksOfMonth._(
    TfArgLiteral('Last'),
  );
  static const second = DataProtectionBackupPolicyCosmosdbAccountWeeksOfMonth._(
    TfArgLiteral('Second'),
  );
  static const third = DataProtectionBackupPolicyCosmosdbAccountWeeksOfMonth._(
    TfArgLiteral('Third'),
  );

  static const List<DataProtectionBackupPolicyCosmosdbAccountWeeksOfMonth>
  values = [first, fourth, last, second, third];
}

/// Typed helper for the `weekly_retention_rule` block of
/// `azurerm_data_protection_backup_policy_cosmosdb_account` (derived from provider schema).
@immutable
final class DataProtectionBackupPolicyCosmosdbAccountWeeklyRetentionRule {
  const DataProtectionBackupPolicyCosmosdbAccountWeeklyRetentionRule({
    this.daysOfWeek,
    required this.duration,
  });

  final List<DataProtectionBackupPolicyCosmosdbAccountDaysOfWeek>? daysOfWeek;

  final TfArg<String> duration;

  @internal
  Map<String, Object?> encode() => {
    if (daysOfWeek != null)
      'days_of_week': [for (final e in daysOfWeek!) e.toTfJson()],
    'duration': duration.toTfJson(),
  };
}

/// Typed helper for the `yearly_retention_rule` block of
/// `azurerm_data_protection_backup_policy_cosmosdb_account` (derived from provider schema).
@immutable
final class DataProtectionBackupPolicyCosmosdbAccountYearlyRetentionRule {
  const DataProtectionBackupPolicyCosmosdbAccountYearlyRetentionRule({
    this.daysOfWeek,
    required this.duration,
    this.monthsOfYear,
    this.weeksOfMonth,
  });

  final List<DataProtectionBackupPolicyCosmosdbAccountDaysOfWeek>? daysOfWeek;

  final TfArg<String> duration;

  final List<DataProtectionBackupPolicyCosmosdbAccountMonthsOfYear>?
  monthsOfYear;

  final List<DataProtectionBackupPolicyCosmosdbAccountWeeksOfMonth>?
  weeksOfMonth;

  @internal
  Map<String, Object?> encode() => {
    if (daysOfWeek != null)
      'days_of_week': [for (final e in daysOfWeek!) e.toTfJson()],
    'duration': duration.toTfJson(),
    if (monthsOfYear != null)
      'months_of_year': [for (final e in monthsOfYear!) e.toTfJson()],
    if (weeksOfMonth != null)
      'weeks_of_month': [for (final e in weeksOfMonth!) e.toTfJson()],
  };
}

/// `months_of_year` — derived from the provider schema description.
extension type const DataProtectionBackupPolicyCosmosdbAccountMonthsOfYear._(
  TfArg<String> _
) implements TfArg<String> {
  DataProtectionBackupPolicyCosmosdbAccountMonthsOfYear.variable(String name)
    : this._(TfArg.variable(name));
  DataProtectionBackupPolicyCosmosdbAccountMonthsOfYear.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const DataProtectionBackupPolicyCosmosdbAccountMonthsOfYear.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const april = DataProtectionBackupPolicyCosmosdbAccountMonthsOfYear._(
    TfArgLiteral('April'),
  );
  static const august = DataProtectionBackupPolicyCosmosdbAccountMonthsOfYear._(
    TfArgLiteral('August'),
  );
  static const december =
      DataProtectionBackupPolicyCosmosdbAccountMonthsOfYear._(
        TfArgLiteral('December'),
      );
  static const february =
      DataProtectionBackupPolicyCosmosdbAccountMonthsOfYear._(
        TfArgLiteral('February'),
      );
  static const january =
      DataProtectionBackupPolicyCosmosdbAccountMonthsOfYear._(
        TfArgLiteral('January'),
      );
  static const july = DataProtectionBackupPolicyCosmosdbAccountMonthsOfYear._(
    TfArgLiteral('July'),
  );
  static const june = DataProtectionBackupPolicyCosmosdbAccountMonthsOfYear._(
    TfArgLiteral('June'),
  );
  static const march = DataProtectionBackupPolicyCosmosdbAccountMonthsOfYear._(
    TfArgLiteral('March'),
  );
  static const may = DataProtectionBackupPolicyCosmosdbAccountMonthsOfYear._(
    TfArgLiteral('May'),
  );
  static const november =
      DataProtectionBackupPolicyCosmosdbAccountMonthsOfYear._(
        TfArgLiteral('November'),
      );
  static const october =
      DataProtectionBackupPolicyCosmosdbAccountMonthsOfYear._(
        TfArgLiteral('October'),
      );
  static const september =
      DataProtectionBackupPolicyCosmosdbAccountMonthsOfYear._(
        TfArgLiteral('September'),
      );

  static const List<DataProtectionBackupPolicyCosmosdbAccountMonthsOfYear>
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

/// Factory wrapper for `azurerm_data_protection_backup_policy_cosmosdb_account`.
final class AzurermDataProtectionBackupPolicyCosmosdbAccount extends Resource {
  static const String tfType =
      'azurerm_data_protection_backup_policy_cosmosdb_account';

  AzurermDataProtectionBackupPolicyCosmosdbAccount(
    super.localName, {
    TfArg<String>? backupFrequency,
    required TfArg<String> backupSchedule,
    required TfArg<String> dataProtectionBackupVaultId,
    required TfArg<String> defaultRetentionDuration,
    required TfArg<String> name,
    DataProtectionBackupPolicyCosmosdbAccountMonthlyRetentionRule?
    monthlyRetentionRule,
    DataProtectionBackupPolicyCosmosdbAccountWeeklyRetentionRule?
    weeklyRetentionRule,
    DataProtectionBackupPolicyCosmosdbAccountYearlyRetentionRule?
    yearlyRetentionRule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'backup_frequency': ?backupFrequency,
           'backup_schedule': backupSchedule,
           'data_protection_backup_vault_id': dataProtectionBackupVaultId,
           'default_retention_duration': defaultRetentionDuration,
           'name': name,
           if (monthlyRetentionRule != null)
             'monthly_retention_rule': TfArg.literal(
               monthlyRetentionRule.encode(),
             ),
           if (weeklyRetentionRule != null)
             'weekly_retention_rule': TfArg.literal(
               weeklyRetentionRule.encode(),
             ),
           if (yearlyRetentionRule != null)
             'yearly_retention_rule': TfArg.literal(
               yearlyRetentionRule.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDataProtectionBackupPolicyCosmosdbAccountSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDataProtectionBackupPolicyCosmosdbAccount>`.
  RefTo<AzurermDataProtectionBackupPolicyCosmosdbAccount> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `incremental_backup_schedules` attribute.
  TfRef<List<String>> get incrementalBackupSchedules =>
      TfRef.attribute<List<String>>(this, 'incremental_backup_schedules');

  /// Reference to `backup_frequency` attribute.
  TfRef<String> get backupFrequency =>
      TfRef.attribute<String>(this, 'backup_frequency');

  /// Reference to `backup_schedule` attribute.
  TfRef<String> get backupSchedule =>
      TfRef.attribute<String>(this, 'backup_schedule');

  /// Reference to `data_protection_backup_vault_id` attribute.
  TfRef<String> get dataProtectionBackupVaultId =>
      TfRef.attribute<String>(this, 'data_protection_backup_vault_id');

  /// Reference to `default_retention_duration` attribute.
  TfRef<String> get defaultRetentionDuration =>
      TfRef.attribute<String>(this, 'default_retention_duration');
}
