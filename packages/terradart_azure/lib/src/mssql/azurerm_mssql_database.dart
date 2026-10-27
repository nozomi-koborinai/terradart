// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_mssql_database`.
const Set<String> _azurermMssqlDatabaseSensitive = <String>{
  'import.administrator_login_password',
  'import.storage_key',
  'threat_detection_policy.storage_account_access_key',
};

/// Mssql Database Create enum for `create_mode`.
extension type const MssqlDatabaseCreateMode._(TfArg<String> _)
    implements TfArg<String> {
  MssqlDatabaseCreateMode.variable(String name) : this._(TfArg.variable(name));
  MssqlDatabaseCreateMode.expression(String template)
    : this._(TfArg.expression(template));
  const MssqlDatabaseCreateMode.arg(TfArg<String> arg) : this._(arg);

  static const copy = MssqlDatabaseCreateMode._(TfArgLiteral('Copy'));
  static const defaultCase = MssqlDatabaseCreateMode._(TfArgLiteral('Default'));
  static const onlinesecondary = MssqlDatabaseCreateMode._(
    TfArgLiteral('OnlineSecondary'),
  );
  static const pointintimerestore = MssqlDatabaseCreateMode._(
    TfArgLiteral('PointInTimeRestore'),
  );
  static const recovery = MssqlDatabaseCreateMode._(TfArgLiteral('Recovery'));
  static const restore = MssqlDatabaseCreateMode._(TfArgLiteral('Restore'));
  static const restoreexternalbackup = MssqlDatabaseCreateMode._(
    TfArgLiteral('RestoreExternalBackup'),
  );
  static const restoreexternalbackupsecondary = MssqlDatabaseCreateMode._(
    TfArgLiteral('RestoreExternalBackupSecondary'),
  );
  static const restorelongtermretentionbackup = MssqlDatabaseCreateMode._(
    TfArgLiteral('RestoreLongTermRetentionBackup'),
  );
  static const secondary = MssqlDatabaseCreateMode._(TfArgLiteral('Secondary'));

  static const List<MssqlDatabaseCreateMode> values = [
    copy,
    defaultCase,
    onlinesecondary,
    pointintimerestore,
    recovery,
    restore,
    restoreexternalbackup,
    restoreexternalbackupsecondary,
    restorelongtermretentionbackup,
    secondary,
  ];
}

/// Mssql Database Enclave enum for `enclave_type`.
extension type const MssqlDatabaseEnclaveType._(TfArg<String> _)
    implements TfArg<String> {
  MssqlDatabaseEnclaveType.variable(String name) : this._(TfArg.variable(name));
  MssqlDatabaseEnclaveType.expression(String template)
    : this._(TfArg.expression(template));
  const MssqlDatabaseEnclaveType.arg(TfArg<String> arg) : this._(arg);

  static const defaultCase = MssqlDatabaseEnclaveType._(
    TfArgLiteral('Default'),
  );
  static const vbs = MssqlDatabaseEnclaveType._(TfArgLiteral('VBS'));

  static const List<MssqlDatabaseEnclaveType> values = [defaultCase, vbs];
}

/// Mssql Database License enum for `license_type`.
extension type const MssqlDatabaseLicenseType._(TfArg<String> _)
    implements TfArg<String> {
  MssqlDatabaseLicenseType.variable(String name) : this._(TfArg.variable(name));
  MssqlDatabaseLicenseType.expression(String template)
    : this._(TfArg.expression(template));
  const MssqlDatabaseLicenseType.arg(TfArg<String> arg) : this._(arg);

  static const baseprice = MssqlDatabaseLicenseType._(
    TfArgLiteral('BasePrice'),
  );
  static const licenseincluded = MssqlDatabaseLicenseType._(
    TfArgLiteral('LicenseIncluded'),
  );

  static const List<MssqlDatabaseLicenseType> values = [
    baseprice,
    licenseincluded,
  ];
}

/// Mssql Database Secondary enum for `secondary_type`.
extension type const MssqlDatabaseSecondaryType._(TfArg<String> _)
    implements TfArg<String> {
  MssqlDatabaseSecondaryType.variable(String name)
    : this._(TfArg.variable(name));
  MssqlDatabaseSecondaryType.expression(String template)
    : this._(TfArg.expression(template));
  const MssqlDatabaseSecondaryType.arg(TfArg<String> arg) : this._(arg);

  static const geo = MssqlDatabaseSecondaryType._(TfArgLiteral('Geo'));
  static const named = MssqlDatabaseSecondaryType._(TfArgLiteral('Named'));
  static const standby = MssqlDatabaseSecondaryType._(TfArgLiteral('Standby'));

  static const List<MssqlDatabaseSecondaryType> values = [geo, named, standby];
}

/// Mssql Database Storage Account enum for `storage_account_type`.
extension type const MssqlDatabaseStorageAccountType._(TfArg<String> _)
    implements TfArg<String> {
  MssqlDatabaseStorageAccountType.variable(String name)
    : this._(TfArg.variable(name));
  MssqlDatabaseStorageAccountType.expression(String template)
    : this._(TfArg.expression(template));
  const MssqlDatabaseStorageAccountType.arg(TfArg<String> arg) : this._(arg);

  static const geo = MssqlDatabaseStorageAccountType._(TfArgLiteral('Geo'));
  static const geozone = MssqlDatabaseStorageAccountType._(
    TfArgLiteral('GeoZone'),
  );
  static const local = MssqlDatabaseStorageAccountType._(TfArgLiteral('Local'));
  static const zone = MssqlDatabaseStorageAccountType._(TfArgLiteral('Zone'));

  static const List<MssqlDatabaseStorageAccountType> values = [
    geo,
    geozone,
    local,
    zone,
  ];
}

/// At most one of `create_mode`, `import` on `azurerm_mssql_database`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.createMode(...)`.
sealed class MssqlDatabaseCreateModeOrImport {
  const MssqlDatabaseCreateModeOrImport();

  /// Sets `create_mode`.
  const factory MssqlDatabaseCreateModeOrImport.createMode(
    MssqlDatabaseCreateMode createMode,
  ) = MssqlDatabaseCreateModeOrImportCreateMode;

  /// Sets `import`.
  const factory MssqlDatabaseCreateModeOrImport.import(
    MssqlDatabaseImport import,
  ) = MssqlDatabaseCreateModeOrImportChoice;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [MssqlDatabaseCreateModeOrImport.createMode] choice: sets `create_mode`.
final class MssqlDatabaseCreateModeOrImportCreateMode
    extends MssqlDatabaseCreateModeOrImport {
  const MssqlDatabaseCreateModeOrImportCreateMode(this.createMode);

  final MssqlDatabaseCreateMode createMode;

  @internal
  @override
  String get blockKey => 'create_mode';

  @internal
  @override
  Map<String, Object?> encode() => {'create_mode': createMode.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'create_mode': createMode};
}

/// The [MssqlDatabaseCreateModeOrImport.import] choice: sets `import`.
final class MssqlDatabaseCreateModeOrImportChoice
    extends MssqlDatabaseCreateModeOrImport {
  const MssqlDatabaseCreateModeOrImportChoice(this.import);

  final MssqlDatabaseImport import;

  @internal
  @override
  String get blockKey => 'import';

  @internal
  @override
  Map<String, Object?> encode() => {'import': import.encode()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'import': TfArg.literal(import.encode()),
  };
}

/// At most one of `elastic_pool_id`, `maintenance_configuration_name` on `azurerm_mssql_database`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.elasticPoolId(...)`.
sealed class MssqlDatabaseElasticPoolIdOrMaintenanceConfigurationName {
  const MssqlDatabaseElasticPoolIdOrMaintenanceConfigurationName();

  /// Sets `elastic_pool_id`.
  const factory MssqlDatabaseElasticPoolIdOrMaintenanceConfigurationName.elasticPoolId(
    TfArg<String> elasticPoolId,
  ) = MssqlDatabaseElasticPoolIdOrMaintenanceConfigurationNameElasticPoolId;

  /// Sets `maintenance_configuration_name`.
  const factory MssqlDatabaseElasticPoolIdOrMaintenanceConfigurationName.maintenanceConfigurationName(
    TfArg<String> maintenanceConfigurationName,
  ) = MssqlDatabaseElasticPoolIdOrMaintenanceConfigurationNameChoice;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [MssqlDatabaseElasticPoolIdOrMaintenanceConfigurationName.elasticPoolId] choice: sets `elastic_pool_id`.
final class MssqlDatabaseElasticPoolIdOrMaintenanceConfigurationNameElasticPoolId
    extends MssqlDatabaseElasticPoolIdOrMaintenanceConfigurationName {
  const MssqlDatabaseElasticPoolIdOrMaintenanceConfigurationNameElasticPoolId(
    this.elasticPoolId,
  );

  final TfArg<String> elasticPoolId;

  @internal
  @override
  String get blockKey => 'elastic_pool_id';

  @internal
  @override
  Map<String, Object?> encode() => {
    'elastic_pool_id': elasticPoolId.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'elastic_pool_id': elasticPoolId};
}

/// The [MssqlDatabaseElasticPoolIdOrMaintenanceConfigurationName.maintenanceConfigurationName] choice: sets `maintenance_configuration_name`.
final class MssqlDatabaseElasticPoolIdOrMaintenanceConfigurationNameChoice
    extends MssqlDatabaseElasticPoolIdOrMaintenanceConfigurationName {
  const MssqlDatabaseElasticPoolIdOrMaintenanceConfigurationNameChoice(
    this.maintenanceConfigurationName,
  );

  final TfArg<String> maintenanceConfigurationName;

  @internal
  @override
  String get blockKey => 'maintenance_configuration_name';

  @internal
  @override
  Map<String, Object?> encode() => {
    'maintenance_configuration_name': maintenanceConfigurationName.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'maintenance_configuration_name': maintenanceConfigurationName,
  };
}

/// Typed helper for the `identity` block of
/// `azurerm_mssql_database` (derived from provider schema).
@immutable
final class MssqlDatabaseIdentity {
  const MssqlDatabaseIdentity({required this.identityIds, required this.type});

  final TfArg<List<String>> identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': identityIds.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `import` block of
/// `azurerm_mssql_database` (derived from provider schema).
@immutable
final class MssqlDatabaseImport {
  const MssqlDatabaseImport({
    required this.administratorLogin,
    required this.administratorLoginPassword,
    required this.authenticationType,
    this.storageAccountId,
    required this.storageKey,
    required this.storageKeyType,
    required this.storageUri,
  });

  final TfArg<String> administratorLogin;

  final Sensitive<String> administratorLoginPassword;

  final MssqlDatabaseAuthenticationType authenticationType;

  final TfArg<String>? storageAccountId;

  final Sensitive<String> storageKey;

  final TfArg<String> storageKeyType;

  final TfArg<String> storageUri;

  @internal
  Map<String, Object?> encode() => {
    'administrator_login': administratorLogin.toTfJson(),
    'administrator_login_password': administratorLoginPassword.toTfJson(),
    'authentication_type': authenticationType.toTfJson(),
    'storage_account_id': ?storageAccountId?.toTfJson(),
    'storage_key': storageKey.toTfJson(),
    'storage_key_type': storageKeyType.toTfJson(),
    'storage_uri': storageUri.toTfJson(),
  };
}

/// `authentication_type` — derived from the provider schema description.
extension type const MssqlDatabaseAuthenticationType._(TfArg<String> _)
    implements TfArg<String> {
  MssqlDatabaseAuthenticationType.variable(String name)
    : this._(TfArg.variable(name));
  MssqlDatabaseAuthenticationType.expression(String template)
    : this._(TfArg.expression(template));
  const MssqlDatabaseAuthenticationType.arg(TfArg<String> arg) : this._(arg);

  static const adpassword = MssqlDatabaseAuthenticationType._(
    TfArgLiteral('ADPassword'),
  );
  static const sql = MssqlDatabaseAuthenticationType._(TfArgLiteral('Sql'));

  static const List<MssqlDatabaseAuthenticationType> values = [adpassword, sql];
}

/// Typed helper for the `long_term_retention_policy` block of
/// `azurerm_mssql_database` (derived from provider schema).
@immutable
final class MssqlDatabaseLongTermRetentionPolicy {
  const MssqlDatabaseLongTermRetentionPolicy({
    this.monthlyRetention,
    this.weekOfYear,
    this.weeklyRetention,
    this.yearlyRetention,
  });

  final TfArg<String>? monthlyRetention;

  final TfArg<num>? weekOfYear;

  final TfArg<String>? weeklyRetention;

  final TfArg<String>? yearlyRetention;

  @internal
  Map<String, Object?> encode() => {
    'monthly_retention': ?monthlyRetention?.toTfJson(),
    'week_of_year': ?weekOfYear?.toTfJson(),
    'weekly_retention': ?weeklyRetention?.toTfJson(),
    'yearly_retention': ?yearlyRetention?.toTfJson(),
  };
}

/// Typed helper for the `short_term_retention_policy` block of
/// `azurerm_mssql_database` (derived from provider schema).
@immutable
final class MssqlDatabaseShortTermRetentionPolicy {
  const MssqlDatabaseShortTermRetentionPolicy({
    this.backupIntervalInHours,
    required this.retentionDays,
  });

  final TfArg<num>? backupIntervalInHours;

  final TfArg<num> retentionDays;

  @internal
  Map<String, Object?> encode() => {
    'backup_interval_in_hours': ?backupIntervalInHours?.toTfJson(),
    'retention_days': retentionDays.toTfJson(),
  };
}

/// Typed helper for the `threat_detection_policy` block of
/// `azurerm_mssql_database` (derived from provider schema).
@immutable
final class MssqlDatabaseThreatDetectionPolicy {
  const MssqlDatabaseThreatDetectionPolicy({
    this.disabledAlerts,
    this.emailAccountAdminsEnabled,
    this.emailAddresses,
    this.retentionDays,
    this.state,
    this.storageAccountAccessKey,
    this.storageEndpoint,
  });

  final List<MssqlDatabaseDisabledAlerts>? disabledAlerts;

  final TfArg<bool>? emailAccountAdminsEnabled;

  final TfArg<List<String>>? emailAddresses;

  final TfArg<num>? retentionDays;

  final MssqlDatabaseState? state;

  final Sensitive<String>? storageAccountAccessKey;

  final TfArg<String>? storageEndpoint;

  @internal
  Map<String, Object?> encode() => {
    if (disabledAlerts != null)
      'disabled_alerts': [for (final e in disabledAlerts!) e.toTfJson()],
    'email_account_admins_enabled': ?emailAccountAdminsEnabled?.toTfJson(),
    'email_addresses': ?emailAddresses?.toTfJson(),
    'retention_days': ?retentionDays?.toTfJson(),
    'state': ?state?.toTfJson(),
    'storage_account_access_key': ?storageAccountAccessKey?.toTfJson(),
    'storage_endpoint': ?storageEndpoint?.toTfJson(),
  };
}

/// `disabled_alerts` — derived from the provider schema description.
extension type const MssqlDatabaseDisabledAlerts._(TfArg<String> _)
    implements TfArg<String> {
  MssqlDatabaseDisabledAlerts.variable(String name)
    : this._(TfArg.variable(name));
  MssqlDatabaseDisabledAlerts.expression(String template)
    : this._(TfArg.expression(template));
  const MssqlDatabaseDisabledAlerts.arg(TfArg<String> arg) : this._(arg);

  static const sqlInjection = MssqlDatabaseDisabledAlerts._(
    TfArgLiteral('Sql_Injection'),
  );
  static const sqlInjectionVulnerability = MssqlDatabaseDisabledAlerts._(
    TfArgLiteral('Sql_Injection_Vulnerability'),
  );
  static const accessAnomaly = MssqlDatabaseDisabledAlerts._(
    TfArgLiteral('Access_Anomaly'),
  );

  static const List<MssqlDatabaseDisabledAlerts> values = [
    sqlInjection,
    sqlInjectionVulnerability,
    accessAnomaly,
  ];
}

/// `state` — derived from the provider schema description.
extension type const MssqlDatabaseState._(TfArg<String> _)
    implements TfArg<String> {
  MssqlDatabaseState.variable(String name) : this._(TfArg.variable(name));
  MssqlDatabaseState.expression(String template)
    : this._(TfArg.expression(template));
  const MssqlDatabaseState.arg(TfArg<String> arg) : this._(arg);

  static const disabled = MssqlDatabaseState._(TfArgLiteral('Disabled'));
  static const enabled = MssqlDatabaseState._(TfArgLiteral('Enabled'));

  static const List<MssqlDatabaseState> values = [disabled, enabled];
}

/// Factory wrapper for `azurerm_mssql_database`.
final class AzurermMssqlDatabase extends Resource {
  static const String tfType = 'azurerm_mssql_database';

  AzurermMssqlDatabase(
    super.localName, {
    TfArg<num>? autoPauseDelayInMinutes,
    TfArg<String>? collation,
    MssqlDatabaseCreateModeOrImport? createModeOrImport,
    TfArg<String>? creationSourceDatabaseId,
    MssqlDatabaseElasticPoolIdOrMaintenanceConfigurationName?
    elasticPoolIdOrMaintenanceConfigurationName,
    MssqlDatabaseEnclaveType? enclaveType,
    TfArg<bool>? geoBackupEnabled,
    TfArg<bool>? ledgerEnabled,
    MssqlDatabaseLicenseType? licenseType,
    TfArg<num>? maxSizeGb,
    TfArg<num>? minCapacity,
    required TfArg<String> name,
    TfArg<num>? readReplicaCount,
    TfArg<bool>? readScale,
    TfArg<String>? recoverDatabaseId,
    TfArg<String>? recoveryPointId,
    TfArg<String>? restoreDroppedDatabaseId,
    TfArg<String>? restoreLongTermRetentionBackupId,
    TfArg<String>? restorePointInTime,
    TfArg<String>? sampleName,
    MssqlDatabaseSecondaryType? secondaryType,
    required TfArg<String> serverId,
    TfArg<String>? skuName,
    MssqlDatabaseStorageAccountType? storageAccountType,
    TfArg<Map<String, String>>? tags,
    TfArg<bool>? transparentDataEncryptionEnabled,
    TfArg<bool>? transparentDataEncryptionKeyAutomaticRotationEnabled,
    TfArg<String>? transparentDataEncryptionKeyVaultKeyId,
    TfArg<bool>? zoneRedundant,
    MssqlDatabaseIdentity? identity,
    MssqlDatabaseLongTermRetentionPolicy? longTermRetentionPolicy,
    MssqlDatabaseShortTermRetentionPolicy? shortTermRetentionPolicy,
    MssqlDatabaseThreatDetectionPolicy? threatDetectionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'auto_pause_delay_in_minutes': ?autoPauseDelayInMinutes,
           'collation': ?collation,
           ...?createModeOrImport?.argMap,
           'creation_source_database_id': ?creationSourceDatabaseId,
           ...?elasticPoolIdOrMaintenanceConfigurationName?.argMap,
           'enclave_type': ?enclaveType,
           'geo_backup_enabled': ?geoBackupEnabled,
           'ledger_enabled': ?ledgerEnabled,
           'license_type': ?licenseType,
           'max_size_gb': ?maxSizeGb,
           'min_capacity': ?minCapacity,
           'name': name,
           'read_replica_count': ?readReplicaCount,
           'read_scale': ?readScale,
           'recover_database_id': ?recoverDatabaseId,
           'recovery_point_id': ?recoveryPointId,
           'restore_dropped_database_id': ?restoreDroppedDatabaseId,
           'restore_long_term_retention_backup_id':
               ?restoreLongTermRetentionBackupId,
           'restore_point_in_time': ?restorePointInTime,
           'sample_name': ?sampleName,
           'secondary_type': ?secondaryType,
           'server_id': serverId,
           'sku_name': ?skuName,
           'storage_account_type': ?storageAccountType,
           'tags': ?tags,
           'transparent_data_encryption_enabled':
               ?transparentDataEncryptionEnabled,
           'transparent_data_encryption_key_automatic_rotation_enabled':
               ?transparentDataEncryptionKeyAutomaticRotationEnabled,
           'transparent_data_encryption_key_vault_key_id':
               ?transparentDataEncryptionKeyVaultKeyId,
           'zone_redundant': ?zoneRedundant,
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
           if (longTermRetentionPolicy != null)
             'long_term_retention_policy': TfArg.literal(
               longTermRetentionPolicy.encode(),
             ),
           if (shortTermRetentionPolicy != null)
             'short_term_retention_policy': TfArg.literal(
               shortTermRetentionPolicy.encode(),
             ),
           if (threatDetectionPolicy != null)
             'threat_detection_policy': TfArg.literal(
               threatDetectionPolicy.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermMssqlDatabaseSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMssqlDatabase>`.
  RefTo<AzurermMssqlDatabase> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `auto_pause_delay_in_minutes` attribute.
  TfRef<num> get autoPauseDelayInMinutes =>
      TfRef.attribute<num>(this, 'auto_pause_delay_in_minutes');

  /// Reference to `collation` attribute.
  TfRef<String> get collation => TfRef.attribute<String>(this, 'collation');

  /// Reference to `create_mode` attribute.
  TfRef<String> get createMode => TfRef.attribute<String>(this, 'create_mode');

  /// Reference to `creation_source_database_id` attribute.
  TfRef<String> get creationSourceDatabaseId =>
      TfRef.attribute<String>(this, 'creation_source_database_id');

  /// Reference to `elastic_pool_id` attribute.
  TfRef<String> get elasticPoolId =>
      TfRef.attribute<String>(this, 'elastic_pool_id');

  /// Reference to `enclave_type` attribute.
  TfRef<String> get enclaveType =>
      TfRef.attribute<String>(this, 'enclave_type');

  /// Reference to `geo_backup_enabled` attribute.
  TfRef<bool> get geoBackupEnabled =>
      TfRef.attribute<bool>(this, 'geo_backup_enabled');

  /// Reference to `ledger_enabled` attribute.
  TfRef<bool> get ledgerEnabled =>
      TfRef.attribute<bool>(this, 'ledger_enabled');

  /// Reference to `license_type` attribute.
  TfRef<String> get licenseType =>
      TfRef.attribute<String>(this, 'license_type');

  /// Reference to `maintenance_configuration_name` attribute.
  TfRef<String> get maintenanceConfigurationName =>
      TfRef.attribute<String>(this, 'maintenance_configuration_name');

  /// Reference to `max_size_gb` attribute.
  TfRef<num> get maxSizeGb => TfRef.attribute<num>(this, 'max_size_gb');

  /// Reference to `min_capacity` attribute.
  TfRef<num> get minCapacity => TfRef.attribute<num>(this, 'min_capacity');

  /// Reference to `read_replica_count` attribute.
  TfRef<num> get readReplicaCount =>
      TfRef.attribute<num>(this, 'read_replica_count');

  /// Reference to `read_scale` attribute.
  TfRef<bool> get readScale => TfRef.attribute<bool>(this, 'read_scale');

  /// Reference to `recover_database_id` attribute.
  TfRef<String> get recoverDatabaseId =>
      TfRef.attribute<String>(this, 'recover_database_id');

  /// Reference to `recovery_point_id` attribute.
  TfRef<String> get recoveryPointId =>
      TfRef.attribute<String>(this, 'recovery_point_id');

  /// Reference to `restore_dropped_database_id` attribute.
  TfRef<String> get restoreDroppedDatabaseId =>
      TfRef.attribute<String>(this, 'restore_dropped_database_id');

  /// Reference to `restore_long_term_retention_backup_id` attribute.
  TfRef<String> get restoreLongTermRetentionBackupId =>
      TfRef.attribute<String>(this, 'restore_long_term_retention_backup_id');

  /// Reference to `restore_point_in_time` attribute.
  TfRef<String> get restorePointInTime =>
      TfRef.attribute<String>(this, 'restore_point_in_time');

  /// Reference to `sample_name` attribute.
  TfRef<String> get sampleName => TfRef.attribute<String>(this, 'sample_name');

  /// Reference to `secondary_type` attribute.
  TfRef<String> get secondaryType =>
      TfRef.attribute<String>(this, 'secondary_type');

  /// Reference to `server_id` attribute.
  TfRef<String> get serverId => TfRef.attribute<String>(this, 'server_id');

  /// Reference to `sku_name` attribute.
  TfRef<String> get skuName => TfRef.attribute<String>(this, 'sku_name');

  /// Reference to `storage_account_type` attribute.
  TfRef<String> get storageAccountType =>
      TfRef.attribute<String>(this, 'storage_account_type');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `transparent_data_encryption_enabled` attribute.
  TfRef<bool> get transparentDataEncryptionEnabled =>
      TfRef.attribute<bool>(this, 'transparent_data_encryption_enabled');

  /// Reference to `transparent_data_encryption_key_automatic_rotation_enabled` attribute.
  TfRef<bool> get transparentDataEncryptionKeyAutomaticRotationEnabled =>
      TfRef.attribute<bool>(
        this,
        'transparent_data_encryption_key_automatic_rotation_enabled',
      );

  /// Reference to `transparent_data_encryption_key_vault_key_id` attribute.
  TfRef<String> get transparentDataEncryptionKeyVaultKeyId =>
      TfRef.attribute<String>(
        this,
        'transparent_data_encryption_key_vault_key_id',
      );

  /// Reference to `zone_redundant` attribute.
  TfRef<bool> get zoneRedundant =>
      TfRef.attribute<bool>(this, 'zone_redundant');
}
