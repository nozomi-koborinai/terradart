// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_mssql_virtual_machine`.
const Set<String> _azurermMssqlVirtualMachineSensitive = <String>{
  'auto_backup.encryption_password',
  'key_vault_credential.key_vault_url',
  'key_vault_credential.service_principal_name',
  'key_vault_credential.service_principal_secret',
  'sql_connectivity_update_password',
  'sql_connectivity_update_username',
  'wsfc_domain_credential.cluster_bootstrap_account_password',
  'wsfc_domain_credential.cluster_operator_account_password',
  'wsfc_domain_credential.sql_service_account_password',
};

/// Mssql Virtual Machine Sql Connectivity enum for `sql_connectivity_type`.
extension type const MssqlVirtualMachineSqlConnectivityType._(TfArg<String> _)
    implements TfArg<String> {
  MssqlVirtualMachineSqlConnectivityType.variable(String name)
    : this._(TfArg.variable(name));
  MssqlVirtualMachineSqlConnectivityType.expression(String template)
    : this._(TfArg.expression(template));
  const MssqlVirtualMachineSqlConnectivityType.arg(TfArg<String> arg)
    : this._(arg);

  static const local = MssqlVirtualMachineSqlConnectivityType._(
    TfArgLiteral('LOCAL'),
  );
  static const private = MssqlVirtualMachineSqlConnectivityType._(
    TfArgLiteral('PRIVATE'),
  );
  static const public = MssqlVirtualMachineSqlConnectivityType._(
    TfArgLiteral('PUBLIC'),
  );

  static const List<MssqlVirtualMachineSqlConnectivityType> values = [
    local,
    private,
    public,
  ];
}

/// Mssql Virtual Machine Sql License enum for `sql_license_type`.
extension type const MssqlVirtualMachineSqlLicenseType._(TfArg<String> _)
    implements TfArg<String> {
  MssqlVirtualMachineSqlLicenseType.variable(String name)
    : this._(TfArg.variable(name));
  MssqlVirtualMachineSqlLicenseType.expression(String template)
    : this._(TfArg.expression(template));
  const MssqlVirtualMachineSqlLicenseType.arg(TfArg<String> arg) : this._(arg);

  static const ahub = MssqlVirtualMachineSqlLicenseType._(TfArgLiteral('AHUB'));
  static const dr = MssqlVirtualMachineSqlLicenseType._(TfArgLiteral('DR'));
  static const payg = MssqlVirtualMachineSqlLicenseType._(TfArgLiteral('PAYG'));

  static const List<MssqlVirtualMachineSqlLicenseType> values = [
    ahub,
    dr,
    payg,
  ];
}

/// Typed helper for the `assessment` block of
/// `azurerm_mssql_virtual_machine` (derived from provider schema).
@immutable
final class MssqlVirtualMachineAssessment {
  const MssqlVirtualMachineAssessment({
    this.enabled,
    this.runImmediately,
    this.schedule,
  });

  final TfArg<bool>? enabled;

  final TfArg<bool>? runImmediately;

  final MssqlVirtualMachineSchedule? schedule;

  @internal
  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'run_immediately': ?runImmediately?.toTfJson(),
    'schedule': ?schedule?.encode(),
  };
}

/// Typed helper for the `assessment.schedule` block of
/// `azurerm_mssql_virtual_machine` (derived from provider schema).
@immutable
final class MssqlVirtualMachineSchedule {
  const MssqlVirtualMachineSchedule({
    required this.dayOfWeek,
    this.monthlyOccurrence,
    required this.startTime,
    this.weeklyInterval,
  });

  final MssqlVirtualMachineDayOfWeek dayOfWeek;

  final TfArg<num>? monthlyOccurrence;

  final TfArg<String> startTime;

  final TfArg<num>? weeklyInterval;

  @internal
  Map<String, Object?> encode() => {
    'day_of_week': dayOfWeek.toTfJson(),
    'monthly_occurrence': ?monthlyOccurrence?.toTfJson(),
    'start_time': startTime.toTfJson(),
    'weekly_interval': ?weeklyInterval?.toTfJson(),
  };
}

/// `day_of_week` — derived from the provider schema description.
extension type const MssqlVirtualMachineDayOfWeek._(TfArg<String> _)
    implements TfArg<String> {
  MssqlVirtualMachineDayOfWeek.variable(String name)
    : this._(TfArg.variable(name));
  MssqlVirtualMachineDayOfWeek.expression(String template)
    : this._(TfArg.expression(template));
  const MssqlVirtualMachineDayOfWeek.arg(TfArg<String> arg) : this._(arg);

  static const friday = MssqlVirtualMachineDayOfWeek._(TfArgLiteral('Friday'));
  static const monday = MssqlVirtualMachineDayOfWeek._(TfArgLiteral('Monday'));
  static const saturday = MssqlVirtualMachineDayOfWeek._(
    TfArgLiteral('Saturday'),
  );
  static const sunday = MssqlVirtualMachineDayOfWeek._(TfArgLiteral('Sunday'));
  static const thursday = MssqlVirtualMachineDayOfWeek._(
    TfArgLiteral('Thursday'),
  );
  static const tuesday = MssqlVirtualMachineDayOfWeek._(
    TfArgLiteral('Tuesday'),
  );
  static const wednesday = MssqlVirtualMachineDayOfWeek._(
    TfArgLiteral('Wednesday'),
  );

  static const List<MssqlVirtualMachineDayOfWeek> values = [
    friday,
    monday,
    saturday,
    sunday,
    thursday,
    tuesday,
    wednesday,
  ];
}

/// Typed helper for the `auto_backup` block of
/// `azurerm_mssql_virtual_machine` (derived from provider schema).
@immutable
final class MssqlVirtualMachineAutoBackup {
  const MssqlVirtualMachineAutoBackup({
    this.encryptionPassword,
    required this.retentionPeriodInDays,
    required this.storageAccountAccessKey,
    required this.storageBlobEndpoint,
    this.systemDatabasesBackupEnabled,
    this.manualSchedule,
  });

  final Sensitive<String>? encryptionPassword;

  final TfArg<num> retentionPeriodInDays;

  final TfArg<String> storageAccountAccessKey;

  final TfArg<String> storageBlobEndpoint;

  final TfArg<bool>? systemDatabasesBackupEnabled;

  final MssqlVirtualMachineManualSchedule? manualSchedule;

  @internal
  Map<String, Object?> encode() => {
    'encryption_password': ?encryptionPassword?.toTfJson(),
    'retention_period_in_days': retentionPeriodInDays.toTfJson(),
    'storage_account_access_key': storageAccountAccessKey.toTfJson(),
    'storage_blob_endpoint': storageBlobEndpoint.toTfJson(),
    'system_databases_backup_enabled': ?systemDatabasesBackupEnabled
        ?.toTfJson(),
    'manual_schedule': ?manualSchedule?.encode(),
  };
}

/// Typed helper for the `auto_backup.manual_schedule` block of
/// `azurerm_mssql_virtual_machine` (derived from provider schema).
@immutable
final class MssqlVirtualMachineManualSchedule {
  const MssqlVirtualMachineManualSchedule({
    this.daysOfWeek,
    required this.fullBackupFrequency,
    required this.fullBackupStartHour,
    required this.fullBackupWindowInHours,
    required this.logBackupFrequencyInMinutes,
  });

  final List<MssqlVirtualMachineDaysOfWeek>? daysOfWeek;

  final MssqlVirtualMachineFullBackupFrequency fullBackupFrequency;

  final TfArg<num> fullBackupStartHour;

  final TfArg<num> fullBackupWindowInHours;

  final TfArg<num> logBackupFrequencyInMinutes;

  @internal
  Map<String, Object?> encode() => {
    if (daysOfWeek != null)
      'days_of_week': [for (final e in daysOfWeek!) e.toTfJson()],
    'full_backup_frequency': fullBackupFrequency.toTfJson(),
    'full_backup_start_hour': fullBackupStartHour.toTfJson(),
    'full_backup_window_in_hours': fullBackupWindowInHours.toTfJson(),
    'log_backup_frequency_in_minutes': logBackupFrequencyInMinutes.toTfJson(),
  };
}

/// `days_of_week` — derived from the provider schema description.
extension type const MssqlVirtualMachineDaysOfWeek._(TfArg<String> _)
    implements TfArg<String> {
  MssqlVirtualMachineDaysOfWeek.variable(String name)
    : this._(TfArg.variable(name));
  MssqlVirtualMachineDaysOfWeek.expression(String template)
    : this._(TfArg.expression(template));
  const MssqlVirtualMachineDaysOfWeek.arg(TfArg<String> arg) : this._(arg);

  static const friday = MssqlVirtualMachineDaysOfWeek._(TfArgLiteral('Friday'));
  static const monday = MssqlVirtualMachineDaysOfWeek._(TfArgLiteral('Monday'));
  static const saturday = MssqlVirtualMachineDaysOfWeek._(
    TfArgLiteral('Saturday'),
  );
  static const sunday = MssqlVirtualMachineDaysOfWeek._(TfArgLiteral('Sunday'));
  static const thursday = MssqlVirtualMachineDaysOfWeek._(
    TfArgLiteral('Thursday'),
  );
  static const tuesday = MssqlVirtualMachineDaysOfWeek._(
    TfArgLiteral('Tuesday'),
  );
  static const wednesday = MssqlVirtualMachineDaysOfWeek._(
    TfArgLiteral('Wednesday'),
  );

  static const List<MssqlVirtualMachineDaysOfWeek> values = [
    friday,
    monday,
    saturday,
    sunday,
    thursday,
    tuesday,
    wednesday,
  ];
}

/// `full_backup_frequency` — derived from the provider schema description.
extension type const MssqlVirtualMachineFullBackupFrequency._(TfArg<String> _)
    implements TfArg<String> {
  MssqlVirtualMachineFullBackupFrequency.variable(String name)
    : this._(TfArg.variable(name));
  MssqlVirtualMachineFullBackupFrequency.expression(String template)
    : this._(TfArg.expression(template));
  const MssqlVirtualMachineFullBackupFrequency.arg(TfArg<String> arg)
    : this._(arg);

  static const daily = MssqlVirtualMachineFullBackupFrequency._(
    TfArgLiteral('Daily'),
  );
  static const weekly = MssqlVirtualMachineFullBackupFrequency._(
    TfArgLiteral('Weekly'),
  );

  static const List<MssqlVirtualMachineFullBackupFrequency> values = [
    daily,
    weekly,
  ];
}

/// Typed helper for the `auto_patching` block of
/// `azurerm_mssql_virtual_machine` (derived from provider schema).
@immutable
final class MssqlVirtualMachineAutoPatching {
  const MssqlVirtualMachineAutoPatching({
    required this.dayOfWeek,
    required this.maintenanceWindowDurationInMinutes,
    required this.maintenanceWindowStartingHour,
  });

  final TfArg<String> dayOfWeek;

  final TfArg<num> maintenanceWindowDurationInMinutes;

  final TfArg<num> maintenanceWindowStartingHour;

  @internal
  Map<String, Object?> encode() => {
    'day_of_week': dayOfWeek.toTfJson(),
    'maintenance_window_duration_in_minutes': maintenanceWindowDurationInMinutes
        .toTfJson(),
    'maintenance_window_starting_hour': maintenanceWindowStartingHour
        .toTfJson(),
  };
}

/// Typed helper for the `key_vault_credential` block of
/// `azurerm_mssql_virtual_machine` (derived from provider schema).
@immutable
final class MssqlVirtualMachineKeyVaultCredential {
  const MssqlVirtualMachineKeyVaultCredential({
    required this.keyVaultUrl,
    required this.name,
    required this.servicePrincipalName,
    required this.servicePrincipalSecret,
  });

  final Sensitive<String> keyVaultUrl;

  final TfArg<String> name;

  final Sensitive<String> servicePrincipalName;

  final Sensitive<String> servicePrincipalSecret;

  @internal
  Map<String, Object?> encode() => {
    'key_vault_url': keyVaultUrl.toTfJson(),
    'name': name.toTfJson(),
    'service_principal_name': servicePrincipalName.toTfJson(),
    'service_principal_secret': servicePrincipalSecret.toTfJson(),
  };
}

/// Typed helper for the `sql_instance` block of
/// `azurerm_mssql_virtual_machine` (derived from provider schema).
@immutable
final class MssqlVirtualMachineSqlInstance {
  const MssqlVirtualMachineSqlInstance({
    this.adhocWorkloadsOptimizationEnabled,
    this.collation,
    this.instantFileInitializationEnabled,
    this.lockPagesInMemoryEnabled,
    this.maxDop,
    this.maxServerMemoryMb,
    this.minServerMemoryMb,
  });

  final TfArg<bool>? adhocWorkloadsOptimizationEnabled;

  final TfArg<String>? collation;

  final TfArg<bool>? instantFileInitializationEnabled;

  final TfArg<bool>? lockPagesInMemoryEnabled;

  final TfArg<num>? maxDop;

  final TfArg<num>? maxServerMemoryMb;

  final TfArg<num>? minServerMemoryMb;

  @internal
  Map<String, Object?> encode() => {
    'adhoc_workloads_optimization_enabled': ?adhocWorkloadsOptimizationEnabled
        ?.toTfJson(),
    'collation': ?collation?.toTfJson(),
    'instant_file_initialization_enabled': ?instantFileInitializationEnabled
        ?.toTfJson(),
    'lock_pages_in_memory_enabled': ?lockPagesInMemoryEnabled?.toTfJson(),
    'max_dop': ?maxDop?.toTfJson(),
    'max_server_memory_mb': ?maxServerMemoryMb?.toTfJson(),
    'min_server_memory_mb': ?minServerMemoryMb?.toTfJson(),
  };
}

/// Typed helper for the `storage_configuration` block of
/// `azurerm_mssql_virtual_machine` (derived from provider schema).
@immutable
final class MssqlVirtualMachineStorageConfiguration {
  const MssqlVirtualMachineStorageConfiguration({
    required this.diskType,
    required this.storageWorkloadType,
    this.systemDbOnDataDiskEnabled,
    this.dataSettings,
    this.logSettings,
    this.tempDbSettings,
  });

  final MssqlVirtualMachineDiskType diskType;

  final MssqlVirtualMachineStorageWorkloadType storageWorkloadType;

  final TfArg<bool>? systemDbOnDataDiskEnabled;

  final MssqlVirtualMachineDataSettings? dataSettings;

  final MssqlVirtualMachineLogSettings? logSettings;

  final MssqlVirtualMachineTempDbSettings? tempDbSettings;

  @internal
  Map<String, Object?> encode() => {
    'disk_type': diskType.toTfJson(),
    'storage_workload_type': storageWorkloadType.toTfJson(),
    'system_db_on_data_disk_enabled': ?systemDbOnDataDiskEnabled?.toTfJson(),
    'data_settings': ?dataSettings?.encode(),
    'log_settings': ?logSettings?.encode(),
    'temp_db_settings': ?tempDbSettings?.encode(),
  };
}

/// `disk_type` — derived from the provider schema description.
extension type const MssqlVirtualMachineDiskType._(TfArg<String> _)
    implements TfArg<String> {
  MssqlVirtualMachineDiskType.variable(String name)
    : this._(TfArg.variable(name));
  MssqlVirtualMachineDiskType.expression(String template)
    : this._(TfArg.expression(template));
  const MssqlVirtualMachineDiskType.arg(TfArg<String> arg) : this._(arg);

  static const add = MssqlVirtualMachineDiskType._(TfArgLiteral('ADD'));
  static const extend = MssqlVirtualMachineDiskType._(TfArgLiteral('EXTEND'));
  static const newCase = MssqlVirtualMachineDiskType._(TfArgLiteral('NEW'));

  static const List<MssqlVirtualMachineDiskType> values = [
    add,
    extend,
    newCase,
  ];
}

/// `storage_workload_type` — derived from the provider schema description.
extension type const MssqlVirtualMachineStorageWorkloadType._(TfArg<String> _)
    implements TfArg<String> {
  MssqlVirtualMachineStorageWorkloadType.variable(String name)
    : this._(TfArg.variable(name));
  MssqlVirtualMachineStorageWorkloadType.expression(String template)
    : this._(TfArg.expression(template));
  const MssqlVirtualMachineStorageWorkloadType.arg(TfArg<String> arg)
    : this._(arg);

  static const dw = MssqlVirtualMachineStorageWorkloadType._(
    TfArgLiteral('DW'),
  );
  static const general = MssqlVirtualMachineStorageWorkloadType._(
    TfArgLiteral('GENERAL'),
  );
  static const oltp = MssqlVirtualMachineStorageWorkloadType._(
    TfArgLiteral('OLTP'),
  );

  static const List<MssqlVirtualMachineStorageWorkloadType> values = [
    dw,
    general,
    oltp,
  ];
}

/// Typed helper for the `storage_configuration.data_settings` block of
/// `azurerm_mssql_virtual_machine` (derived from provider schema).
@immutable
final class MssqlVirtualMachineDataSettings {
  const MssqlVirtualMachineDataSettings({
    required this.defaultFilePath,
    required this.luns,
  });

  final TfArg<String> defaultFilePath;

  final TfArg<List<num>> luns;

  @internal
  Map<String, Object?> encode() => {
    'default_file_path': defaultFilePath.toTfJson(),
    'luns': luns.toTfJson(),
  };
}

/// Typed helper for the `storage_configuration.log_settings` block of
/// `azurerm_mssql_virtual_machine` (derived from provider schema).
@immutable
final class MssqlVirtualMachineLogSettings {
  const MssqlVirtualMachineLogSettings({
    required this.defaultFilePath,
    required this.luns,
  });

  final TfArg<String> defaultFilePath;

  final TfArg<List<num>> luns;

  @internal
  Map<String, Object?> encode() => {
    'default_file_path': defaultFilePath.toTfJson(),
    'luns': luns.toTfJson(),
  };
}

/// Typed helper for the `storage_configuration.temp_db_settings` block of
/// `azurerm_mssql_virtual_machine` (derived from provider schema).
@immutable
final class MssqlVirtualMachineTempDbSettings {
  const MssqlVirtualMachineTempDbSettings({
    this.dataFileCount,
    this.dataFileGrowthInMb,
    this.dataFileSizeMb,
    required this.defaultFilePath,
    this.logFileGrowthMb,
    this.logFileSizeMb,
    required this.luns,
  });

  final TfArg<num>? dataFileCount;

  final TfArg<num>? dataFileGrowthInMb;

  final TfArg<num>? dataFileSizeMb;

  final TfArg<String> defaultFilePath;

  final TfArg<num>? logFileGrowthMb;

  final TfArg<num>? logFileSizeMb;

  final TfArg<List<num>> luns;

  @internal
  Map<String, Object?> encode() => {
    'data_file_count': ?dataFileCount?.toTfJson(),
    'data_file_growth_in_mb': ?dataFileGrowthInMb?.toTfJson(),
    'data_file_size_mb': ?dataFileSizeMb?.toTfJson(),
    'default_file_path': defaultFilePath.toTfJson(),
    'log_file_growth_mb': ?logFileGrowthMb?.toTfJson(),
    'log_file_size_mb': ?logFileSizeMb?.toTfJson(),
    'luns': luns.toTfJson(),
  };
}

/// Typed helper for the `wsfc_domain_credential` block of
/// `azurerm_mssql_virtual_machine` (derived from provider schema).
@immutable
final class MssqlVirtualMachineWsfcDomainCredential {
  const MssqlVirtualMachineWsfcDomainCredential({
    required this.clusterBootstrapAccountPassword,
    required this.clusterOperatorAccountPassword,
    required this.sqlServiceAccountPassword,
  });

  final Sensitive<String> clusterBootstrapAccountPassword;

  final Sensitive<String> clusterOperatorAccountPassword;

  final Sensitive<String> sqlServiceAccountPassword;

  @internal
  Map<String, Object?> encode() => {
    'cluster_bootstrap_account_password': clusterBootstrapAccountPassword
        .toTfJson(),
    'cluster_operator_account_password': clusterOperatorAccountPassword
        .toTfJson(),
    'sql_service_account_password': sqlServiceAccountPassword.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_mssql_virtual_machine`.
final class AzurermMssqlVirtualMachine extends Resource {
  static const String tfType = 'azurerm_mssql_virtual_machine';

  AzurermMssqlVirtualMachine(
    super.localName, {
    TfArg<bool>? rServicesEnabled,
    TfArg<num>? sqlConnectivityPort,
    MssqlVirtualMachineSqlConnectivityType? sqlConnectivityType,
    Sensitive<String>? sqlConnectivityUpdatePassword,
    Sensitive<String>? sqlConnectivityUpdateUsername,
    MssqlVirtualMachineSqlLicenseType? sqlLicenseType,
    TfArg<String>? sqlVirtualMachineGroupId,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> virtualMachineId,
    MssqlVirtualMachineAssessment? assessment,
    MssqlVirtualMachineAutoBackup? autoBackup,
    MssqlVirtualMachineAutoPatching? autoPatching,
    MssqlVirtualMachineKeyVaultCredential? keyVaultCredential,
    MssqlVirtualMachineSqlInstance? sqlInstance,
    MssqlVirtualMachineStorageConfiguration? storageConfiguration,
    MssqlVirtualMachineWsfcDomainCredential? wsfcDomainCredential,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'r_services_enabled': ?rServicesEnabled,
           'sql_connectivity_port': ?sqlConnectivityPort,
           'sql_connectivity_type': ?sqlConnectivityType,
           'sql_connectivity_update_password': ?sqlConnectivityUpdatePassword,
           'sql_connectivity_update_username': ?sqlConnectivityUpdateUsername,
           'sql_license_type': ?sqlLicenseType,
           'sql_virtual_machine_group_id': ?sqlVirtualMachineGroupId,
           'tags': ?tags,
           'virtual_machine_id': virtualMachineId,
           if (assessment != null)
             'assessment': TfArg.literal(assessment.encode()),
           if (autoBackup != null)
             'auto_backup': TfArg.literal(autoBackup.encode()),
           if (autoPatching != null)
             'auto_patching': TfArg.literal(autoPatching.encode()),
           if (keyVaultCredential != null)
             'key_vault_credential': TfArg.literal(keyVaultCredential.encode()),
           if (sqlInstance != null)
             'sql_instance': TfArg.literal(sqlInstance.encode()),
           if (storageConfiguration != null)
             'storage_configuration': TfArg.literal(
               storageConfiguration.encode(),
             ),
           if (wsfcDomainCredential != null)
             'wsfc_domain_credential': TfArg.literal(
               wsfcDomainCredential.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermMssqlVirtualMachineSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMssqlVirtualMachine>`.
  RefTo<AzurermMssqlVirtualMachine> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `r_services_enabled` attribute.
  TfRef<bool> get rServicesEnabled =>
      TfRef.attribute<bool>(this, 'r_services_enabled');

  /// Reference to `sql_connectivity_port` attribute.
  TfRef<num> get sqlConnectivityPort =>
      TfRef.attribute<num>(this, 'sql_connectivity_port');

  /// Reference to `sql_connectivity_type` attribute.
  TfRef<String> get sqlConnectivityType =>
      TfRef.attribute<String>(this, 'sql_connectivity_type');

  /// Reference to `sql_connectivity_update_password` attribute.
  TfRef<String> get sqlConnectivityUpdatePassword =>
      TfRef.attribute<String>(this, 'sql_connectivity_update_password');

  /// Reference to `sql_connectivity_update_username` attribute.
  TfRef<String> get sqlConnectivityUpdateUsername =>
      TfRef.attribute<String>(this, 'sql_connectivity_update_username');

  /// Reference to `sql_license_type` attribute.
  TfRef<String> get sqlLicenseType =>
      TfRef.attribute<String>(this, 'sql_license_type');

  /// Reference to `sql_virtual_machine_group_id` attribute.
  TfRef<String> get sqlVirtualMachineGroupId =>
      TfRef.attribute<String>(this, 'sql_virtual_machine_group_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `virtual_machine_id` attribute.
  TfRef<String> get virtualMachineId =>
      TfRef.attribute<String>(this, 'virtual_machine_id');
}
