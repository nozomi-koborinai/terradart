// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_data_protection_backup_policy_blob_storage`.
const Set<String> _azurermDataProtectionBackupPolicyBlobStorageSensitive =
    <String>{};

/// Typed helper for the `retention_rule` block of
/// `azurerm_data_protection_backup_policy_blob_storage` (derived from provider schema).
@immutable
final class DataProtectionBackupPolicyBlobStorageRetentionRule {
  const DataProtectionBackupPolicyBlobStorageRetentionRule({
    required this.name,
    required this.priority,
    required this.criteria,
    required this.lifeCycle,
  });

  final TfArg<String> name;

  final TfArg<num> priority;

  final DataProtectionBackupPolicyBlobStorageCriteria criteria;

  final DataProtectionBackupPolicyBlobStorageLifeCycle lifeCycle;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'priority': priority.toTfJson(),
    'criteria': criteria.encode(),
    'life_cycle': lifeCycle.encode(),
  };
}

/// Typed helper for the `retention_rule.criteria` block of
/// `azurerm_data_protection_backup_policy_blob_storage` (derived from provider schema).
@immutable
final class DataProtectionBackupPolicyBlobStorageCriteria {
  const DataProtectionBackupPolicyBlobStorageCriteria({
    this.absoluteCriteria,
    this.daysOfMonth,
    this.daysOfWeek,
    this.monthsOfYear,
    this.scheduledBackupTimes,
    this.weeksOfMonth,
  });

  final DataProtectionBackupPolicyBlobStorageAbsoluteCriteria? absoluteCriteria;

  final TfArg<List<num>>? daysOfMonth;

  final TfArg<List<String>>? daysOfWeek;

  final TfArg<List<String>>? monthsOfYear;

  final TfArg<List<String>>? scheduledBackupTimes;

  final EnumList<DataProtectionBackupPolicyBlobStorageWeeksOfMonth>?
  weeksOfMonth;

  @internal
  Map<String, Object?> encode() => {
    'absolute_criteria': ?absoluteCriteria?.toTfJson(),
    'days_of_month': ?daysOfMonth?.toTfJson(),
    'days_of_week': ?daysOfWeek?.toTfJson(),
    'months_of_year': ?monthsOfYear?.toTfJson(),
    'scheduled_backup_times': ?scheduledBackupTimes?.toTfJson(),
    'weeks_of_month': ?weeksOfMonth?.toTfJson(),
  };
}

/// `absolute_criteria` — derived from the provider schema description.
extension type const DataProtectionBackupPolicyBlobStorageAbsoluteCriteria._(
  TfArg<String> _
) implements TfArg<String> {
  DataProtectionBackupPolicyBlobStorageAbsoluteCriteria.variable(String name)
    : this._(TfArg.variable(name));
  DataProtectionBackupPolicyBlobStorageAbsoluteCriteria.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const DataProtectionBackupPolicyBlobStorageAbsoluteCriteria.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const allbackup =
      DataProtectionBackupPolicyBlobStorageAbsoluteCriteria._(
        TfArgLiteral('AllBackup'),
      );
  static const firstofday =
      DataProtectionBackupPolicyBlobStorageAbsoluteCriteria._(
        TfArgLiteral('FirstOfDay'),
      );
  static const firstofmonth =
      DataProtectionBackupPolicyBlobStorageAbsoluteCriteria._(
        TfArgLiteral('FirstOfMonth'),
      );
  static const firstofweek =
      DataProtectionBackupPolicyBlobStorageAbsoluteCriteria._(
        TfArgLiteral('FirstOfWeek'),
      );
  static const firstofyear =
      DataProtectionBackupPolicyBlobStorageAbsoluteCriteria._(
        TfArgLiteral('FirstOfYear'),
      );

  static const List<DataProtectionBackupPolicyBlobStorageAbsoluteCriteria>
  values = [allbackup, firstofday, firstofmonth, firstofweek, firstofyear];
}

/// `weeks_of_month` — derived from the provider schema description.
extension type const DataProtectionBackupPolicyBlobStorageWeeksOfMonth._(
  TfArg<String> _
) implements TfArg<String> {
  DataProtectionBackupPolicyBlobStorageWeeksOfMonth.variable(String name)
    : this._(TfArg.variable(name));
  DataProtectionBackupPolicyBlobStorageWeeksOfMonth.expression(String template)
    : this._(TfArg.expression(template));
  const DataProtectionBackupPolicyBlobStorageWeeksOfMonth.arg(TfArg<String> arg)
    : this._(arg);

  static const first = DataProtectionBackupPolicyBlobStorageWeeksOfMonth._(
    TfArgLiteral('First'),
  );
  static const fourth = DataProtectionBackupPolicyBlobStorageWeeksOfMonth._(
    TfArgLiteral('Fourth'),
  );
  static const last = DataProtectionBackupPolicyBlobStorageWeeksOfMonth._(
    TfArgLiteral('Last'),
  );
  static const second = DataProtectionBackupPolicyBlobStorageWeeksOfMonth._(
    TfArgLiteral('Second'),
  );
  static const third = DataProtectionBackupPolicyBlobStorageWeeksOfMonth._(
    TfArgLiteral('Third'),
  );

  static const List<DataProtectionBackupPolicyBlobStorageWeeksOfMonth> values =
      [first, fourth, last, second, third];
}

/// Typed helper for the `retention_rule.life_cycle` block of
/// `azurerm_data_protection_backup_policy_blob_storage` (derived from provider schema).
@immutable
final class DataProtectionBackupPolicyBlobStorageLifeCycle {
  const DataProtectionBackupPolicyBlobStorageLifeCycle({
    required this.dataStoreType,
    required this.duration,
  });

  final DataProtectionBackupPolicyBlobStorageDataStoreType dataStoreType;

  final TfArg<String> duration;

  @internal
  Map<String, Object?> encode() => {
    'data_store_type': dataStoreType.toTfJson(),
    'duration': duration.toTfJson(),
  };
}

/// `data_store_type` — derived from the provider schema description.
extension type const DataProtectionBackupPolicyBlobStorageDataStoreType._(
  TfArg<String> _
) implements TfArg<String> {
  DataProtectionBackupPolicyBlobStorageDataStoreType.variable(String name)
    : this._(TfArg.variable(name));
  DataProtectionBackupPolicyBlobStorageDataStoreType.expression(String template)
    : this._(TfArg.expression(template));
  const DataProtectionBackupPolicyBlobStorageDataStoreType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const vaultstore =
      DataProtectionBackupPolicyBlobStorageDataStoreType._(
        TfArgLiteral('VaultStore'),
      );

  static const List<DataProtectionBackupPolicyBlobStorageDataStoreType> values =
      [vaultstore];
}

/// Factory wrapper for `azurerm_data_protection_backup_policy_blob_storage`.
final class AzurermDataProtectionBackupPolicyBlobStorage extends Resource {
  static const String tfType =
      'azurerm_data_protection_backup_policy_blob_storage';

  AzurermDataProtectionBackupPolicyBlobStorage(
    super.localName, {
    TfArg<List<String>>? backupRepeatingTimeIntervals,
    required TfArg<String> name,
    TfArg<String>? operationalDefaultRetentionDuration,
    TfArg<String>? timeZone,
    TfArg<String>? vaultDefaultRetentionDuration,
    required TfArg<String> vaultId,
    List<DataProtectionBackupPolicyBlobStorageRetentionRule>? retentionRule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'backup_repeating_time_intervals': ?backupRepeatingTimeIntervals,
           'name': name,
           'operational_default_retention_duration':
               ?operationalDefaultRetentionDuration,
           'time_zone': ?timeZone,
           'vault_default_retention_duration': ?vaultDefaultRetentionDuration,
           'vault_id': vaultId,
           if (retentionRule != null)
             'retention_rule': TfArg.literal([
               for (final e in retentionRule) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDataProtectionBackupPolicyBlobStorageSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDataProtectionBackupPolicyBlobStorage>`.
  RefTo<AzurermDataProtectionBackupPolicyBlobStorage> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `backup_repeating_time_intervals` attribute.
  TfRef<List<String>> get backupRepeatingTimeIntervals =>
      TfRef.attribute<List<String>>(this, 'backup_repeating_time_intervals');

  /// Reference to `operational_default_retention_duration` attribute.
  TfRef<String> get operationalDefaultRetentionDuration =>
      TfRef.attribute<String>(this, 'operational_default_retention_duration');

  /// Reference to `time_zone` attribute.
  TfRef<String> get timeZone => TfRef.attribute<String>(this, 'time_zone');

  /// Reference to `vault_default_retention_duration` attribute.
  TfRef<String> get vaultDefaultRetentionDuration =>
      TfRef.attribute<String>(this, 'vault_default_retention_duration');

  /// Reference to `vault_id` attribute.
  TfRef<String> get vaultId => TfRef.attribute<String>(this, 'vault_id');
}
