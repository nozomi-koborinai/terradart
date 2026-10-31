// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_data_protection_backup_policy_data_lake_storage`.
const Set<String> _azurermDataProtectionBackupPolicyDataLakeStorageSensitive =
    <String>{};

/// Typed helper for the `retention_rule` block of
/// `azurerm_data_protection_backup_policy_data_lake_storage` (derived from provider schema).
@immutable
final class DataProtectionBackupPolicyDataLakeStorageRetentionRule {
  const DataProtectionBackupPolicyDataLakeStorageRetentionRule({
    this.absoluteCriteria,
    this.daysOfWeek,
    required this.duration,
    this.monthsOfYear,
    required this.name,
    this.scheduledBackupTimes,
    this.weeksOfMonth,
  });

  final DataProtectionBackupPolicyDataLakeStorageAbsoluteCriteria?
  absoluteCriteria;

  final EnumList<DataProtectionBackupPolicyDataLakeStorageDaysOfWeek>?
  daysOfWeek;

  final TfArg<String> duration;

  final EnumList<DataProtectionBackupPolicyDataLakeStorageMonthsOfYear>?
  monthsOfYear;

  final TfArg<String> name;

  final TfArg<List<String>>? scheduledBackupTimes;

  final EnumList<DataProtectionBackupPolicyDataLakeStorageWeeksOfMonth>?
  weeksOfMonth;

  @internal
  Map<String, Object?> encode() => {
    'absolute_criteria': ?absoluteCriteria?.toTfJson(),
    'days_of_week': ?daysOfWeek?.toTfJson(),
    'duration': duration.toTfJson(),
    'months_of_year': ?monthsOfYear?.toTfJson(),
    'name': name.toTfJson(),
    'scheduled_backup_times': ?scheduledBackupTimes?.toTfJson(),
    'weeks_of_month': ?weeksOfMonth?.toTfJson(),
  };
}

/// `absolute_criteria` — derived from the provider schema description.
extension type const DataProtectionBackupPolicyDataLakeStorageAbsoluteCriteria._(
  TfArg<String> _
) implements TfArg<String> {
  DataProtectionBackupPolicyDataLakeStorageAbsoluteCriteria.variable(
    String name,
  ) : this._(TfArg.variable(name));
  DataProtectionBackupPolicyDataLakeStorageAbsoluteCriteria.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const DataProtectionBackupPolicyDataLakeStorageAbsoluteCriteria.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const allbackup =
      DataProtectionBackupPolicyDataLakeStorageAbsoluteCriteria._(
        TfArgLiteral('AllBackup'),
      );
  static const firstofday =
      DataProtectionBackupPolicyDataLakeStorageAbsoluteCriteria._(
        TfArgLiteral('FirstOfDay'),
      );
  static const firstofmonth =
      DataProtectionBackupPolicyDataLakeStorageAbsoluteCriteria._(
        TfArgLiteral('FirstOfMonth'),
      );
  static const firstofweek =
      DataProtectionBackupPolicyDataLakeStorageAbsoluteCriteria._(
        TfArgLiteral('FirstOfWeek'),
      );
  static const firstofyear =
      DataProtectionBackupPolicyDataLakeStorageAbsoluteCriteria._(
        TfArgLiteral('FirstOfYear'),
      );

  static const List<DataProtectionBackupPolicyDataLakeStorageAbsoluteCriteria>
  values = [allbackup, firstofday, firstofmonth, firstofweek, firstofyear];
}

/// `days_of_week` — derived from the provider schema description.
extension type const DataProtectionBackupPolicyDataLakeStorageDaysOfWeek._(
  TfArg<String> _
) implements TfArg<String> {
  DataProtectionBackupPolicyDataLakeStorageDaysOfWeek.variable(String name)
    : this._(TfArg.variable(name));
  DataProtectionBackupPolicyDataLakeStorageDaysOfWeek.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const DataProtectionBackupPolicyDataLakeStorageDaysOfWeek.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const friday = DataProtectionBackupPolicyDataLakeStorageDaysOfWeek._(
    TfArgLiteral('Friday'),
  );
  static const monday = DataProtectionBackupPolicyDataLakeStorageDaysOfWeek._(
    TfArgLiteral('Monday'),
  );
  static const saturday = DataProtectionBackupPolicyDataLakeStorageDaysOfWeek._(
    TfArgLiteral('Saturday'),
  );
  static const sunday = DataProtectionBackupPolicyDataLakeStorageDaysOfWeek._(
    TfArgLiteral('Sunday'),
  );
  static const thursday = DataProtectionBackupPolicyDataLakeStorageDaysOfWeek._(
    TfArgLiteral('Thursday'),
  );
  static const tuesday = DataProtectionBackupPolicyDataLakeStorageDaysOfWeek._(
    TfArgLiteral('Tuesday'),
  );
  static const wednesday =
      DataProtectionBackupPolicyDataLakeStorageDaysOfWeek._(
        TfArgLiteral('Wednesday'),
      );

  static const List<DataProtectionBackupPolicyDataLakeStorageDaysOfWeek>
  values = [friday, monday, saturday, sunday, thursday, tuesday, wednesday];
}

/// `months_of_year` — derived from the provider schema description.
extension type const DataProtectionBackupPolicyDataLakeStorageMonthsOfYear._(
  TfArg<String> _
) implements TfArg<String> {
  DataProtectionBackupPolicyDataLakeStorageMonthsOfYear.variable(String name)
    : this._(TfArg.variable(name));
  DataProtectionBackupPolicyDataLakeStorageMonthsOfYear.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const DataProtectionBackupPolicyDataLakeStorageMonthsOfYear.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const april = DataProtectionBackupPolicyDataLakeStorageMonthsOfYear._(
    TfArgLiteral('April'),
  );
  static const august = DataProtectionBackupPolicyDataLakeStorageMonthsOfYear._(
    TfArgLiteral('August'),
  );
  static const december =
      DataProtectionBackupPolicyDataLakeStorageMonthsOfYear._(
        TfArgLiteral('December'),
      );
  static const february =
      DataProtectionBackupPolicyDataLakeStorageMonthsOfYear._(
        TfArgLiteral('February'),
      );
  static const january =
      DataProtectionBackupPolicyDataLakeStorageMonthsOfYear._(
        TfArgLiteral('January'),
      );
  static const july = DataProtectionBackupPolicyDataLakeStorageMonthsOfYear._(
    TfArgLiteral('July'),
  );
  static const june = DataProtectionBackupPolicyDataLakeStorageMonthsOfYear._(
    TfArgLiteral('June'),
  );
  static const march = DataProtectionBackupPolicyDataLakeStorageMonthsOfYear._(
    TfArgLiteral('March'),
  );
  static const may = DataProtectionBackupPolicyDataLakeStorageMonthsOfYear._(
    TfArgLiteral('May'),
  );
  static const november =
      DataProtectionBackupPolicyDataLakeStorageMonthsOfYear._(
        TfArgLiteral('November'),
      );
  static const october =
      DataProtectionBackupPolicyDataLakeStorageMonthsOfYear._(
        TfArgLiteral('October'),
      );
  static const september =
      DataProtectionBackupPolicyDataLakeStorageMonthsOfYear._(
        TfArgLiteral('September'),
      );

  static const List<DataProtectionBackupPolicyDataLakeStorageMonthsOfYear>
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
extension type const DataProtectionBackupPolicyDataLakeStorageWeeksOfMonth._(
  TfArg<String> _
) implements TfArg<String> {
  DataProtectionBackupPolicyDataLakeStorageWeeksOfMonth.variable(String name)
    : this._(TfArg.variable(name));
  DataProtectionBackupPolicyDataLakeStorageWeeksOfMonth.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const DataProtectionBackupPolicyDataLakeStorageWeeksOfMonth.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const first = DataProtectionBackupPolicyDataLakeStorageWeeksOfMonth._(
    TfArgLiteral('First'),
  );
  static const fourth = DataProtectionBackupPolicyDataLakeStorageWeeksOfMonth._(
    TfArgLiteral('Fourth'),
  );
  static const last = DataProtectionBackupPolicyDataLakeStorageWeeksOfMonth._(
    TfArgLiteral('Last'),
  );
  static const second = DataProtectionBackupPolicyDataLakeStorageWeeksOfMonth._(
    TfArgLiteral('Second'),
  );
  static const third = DataProtectionBackupPolicyDataLakeStorageWeeksOfMonth._(
    TfArgLiteral('Third'),
  );

  static const List<DataProtectionBackupPolicyDataLakeStorageWeeksOfMonth>
  values = [first, fourth, last, second, third];
}

/// Factory wrapper for `azurerm_data_protection_backup_policy_data_lake_storage`.
final class AzurermDataProtectionBackupPolicyDataLakeStorage extends Resource {
  static const String tfType =
      'azurerm_data_protection_backup_policy_data_lake_storage';

  AzurermDataProtectionBackupPolicyDataLakeStorage(
    super.localName, {
    required TfArg<List<String>> backupSchedule,
    required TfArg<String> dataProtectionBackupVaultId,
    required TfArg<String> defaultRetentionDuration,
    required TfArg<String> name,
    TfArg<String>? timeZone,
    List<DataProtectionBackupPolicyDataLakeStorageRetentionRule>? retentionRule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'backup_schedule': backupSchedule,
           'data_protection_backup_vault_id': dataProtectionBackupVaultId,
           'default_retention_duration': defaultRetentionDuration,
           'name': name,
           'time_zone': ?timeZone,
           if (retentionRule != null)
             'retention_rule': TfArg.literal([
               for (final e in retentionRule) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDataProtectionBackupPolicyDataLakeStorageSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDataProtectionBackupPolicyDataLakeStorage>`.
  RefTo<AzurermDataProtectionBackupPolicyDataLakeStorage> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `backup_schedule` attribute.
  TfRef<List<String>> get backupSchedule =>
      TfRef.attribute<List<String>>(this, 'backup_schedule');

  /// Reference to `data_protection_backup_vault_id` attribute.
  TfRef<String> get dataProtectionBackupVaultId =>
      TfRef.attribute<String>(this, 'data_protection_backup_vault_id');

  /// Reference to `default_retention_duration` attribute.
  TfRef<String> get defaultRetentionDuration =>
      TfRef.attribute<String>(this, 'default_retention_duration');

  /// Reference to `time_zone` attribute.
  TfRef<String> get timeZone => TfRef.attribute<String>(this, 'time_zone');
}
