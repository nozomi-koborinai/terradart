// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_oracle_database_db_system`.
const Set<String> _googleOracleDatabaseDbSystemSensitive = <String>{};

/// Terraform `deletion_policy` for DB Systems.
enum OracleDatabaseDbSystemDeletionPolicy implements TerraformEnum {
  delete('DELETE'),
  prevent('PREVENT'),
  abandon('ABANDON');

  const OracleDatabaseDbSystemDeletionPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// DB System database edition.
enum OracleDatabaseDbSystemDatabaseEdition implements TerraformEnum {
  standardEdition('STANDARD_EDITION'),
  enterpriseEdition('ENTERPRISE_EDITION');

  const OracleDatabaseDbSystemDatabaseEdition(this.terraformValue);
  @override
  final String terraformValue;
}

/// DB System license model.
enum OracleDatabaseDbSystemLicenseModel implements TerraformEnum {
  licenseIncluded('LICENSE_INCLUDED'),
  bringYourOwnLicense('BRING_YOUR_OWN_LICENSE');

  const OracleDatabaseDbSystemLicenseModel(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `properties` block of
/// `google_oracle_database_db_system` (derived from provider schema).
@immutable
final class OracleDatabaseDbSystemProperties {
  const OracleDatabaseDbSystemProperties({
    required this.computeCount,
    this.computeModel,
    this.dataStorageSizeGb,
    required this.databaseEdition,
    this.domain,
    this.hostnamePrefix,
    required this.initialDataStorageSizeGb,
    required this.licenseModel,
    this.memorySizeGb,
    this.nodeCount,
    this.privateIp,
    this.recoStorageSizeGb,
    required this.shape,
    required this.sshPublicKeys,
    this.dataCollectionOptions,
    this.dbHome,
    this.dbSystemOptions,
    this.timeZone,
  });

  final TfArg<num> computeCount;

  final TfArg<String>? computeModel;

  final TfArg<num>? dataStorageSizeGb;

  final TfArg<OracleDatabaseDbSystemDatabaseEdition> databaseEdition;

  final TfArg<String>? domain;

  final TfArg<String>? hostnamePrefix;

  final TfArg<num> initialDataStorageSizeGb;

  final TfArg<OracleDatabaseDbSystemLicenseModel> licenseModel;

  final TfArg<num>? memorySizeGb;

  final TfArg<num>? nodeCount;

  final TfArg<String>? privateIp;

  final TfArg<num>? recoStorageSizeGb;

  final TfArg<String> shape;

  final TfArg<List<String>> sshPublicKeys;

  final OracleDatabaseDbSystemPropertiesDataCollectionOptions?
  dataCollectionOptions;

  final OracleDatabaseDbSystemPropertiesDbHome? dbHome;

  final OracleDatabaseDbSystemPropertiesDbSystemOptions? dbSystemOptions;

  final OracleDatabaseDbSystemPropertiesTimeZone? timeZone;

  Map<String, Object?> encode() => {
    'compute_count': computeCount.toTfJson(),
    'compute_model': ?computeModel?.toTfJson(),
    'data_storage_size_gb': ?dataStorageSizeGb?.toTfJson(),
    'database_edition': databaseEdition.toTfJson(),
    'domain': ?domain?.toTfJson(),
    'hostname_prefix': ?hostnamePrefix?.toTfJson(),
    'initial_data_storage_size_gb': initialDataStorageSizeGb.toTfJson(),
    'license_model': licenseModel.toTfJson(),
    'memory_size_gb': ?memorySizeGb?.toTfJson(),
    'node_count': ?nodeCount?.toTfJson(),
    'private_ip': ?privateIp?.toTfJson(),
    'reco_storage_size_gb': ?recoStorageSizeGb?.toTfJson(),
    'shape': shape.toTfJson(),
    'ssh_public_keys': sshPublicKeys.toTfJson(),
    'data_collection_options': ?dataCollectionOptions?.encode(),
    'db_home': ?dbHome?.encode(),
    'db_system_options': ?dbSystemOptions?.encode(),
    'time_zone': ?timeZone?.encode(),
  };
}

/// Typed helper for the `properties.data_collection_options` block of
/// `google_oracle_database_db_system` (derived from provider schema).
@immutable
final class OracleDatabaseDbSystemPropertiesDataCollectionOptions {
  const OracleDatabaseDbSystemPropertiesDataCollectionOptions({
    this.isDiagnosticsEventsEnabled,
    this.isIncidentLogsEnabled,
  });

  final TfArg<bool>? isDiagnosticsEventsEnabled;

  final TfArg<bool>? isIncidentLogsEnabled;

  Map<String, Object?> encode() => {
    'is_diagnostics_events_enabled': ?isDiagnosticsEventsEnabled?.toTfJson(),
    'is_incident_logs_enabled': ?isIncidentLogsEnabled?.toTfJson(),
  };
}

/// Typed helper for the `properties.db_home` block of
/// `google_oracle_database_db_system` (derived from provider schema).
@immutable
final class OracleDatabaseDbSystemPropertiesDbHome {
  const OracleDatabaseDbSystemPropertiesDbHome({
    required this.dbVersion,
    this.displayName,
    this.isUnifiedAuditingEnabled,
    required this.database,
  });

  final TfArg<String> dbVersion;

  final TfArg<String>? displayName;

  final TfArg<bool>? isUnifiedAuditingEnabled;

  final OracleDatabaseDbSystemPropertiesDbHomeDatabase database;

  Map<String, Object?> encode() => {
    'db_version': dbVersion.toTfJson(),
    'display_name': ?displayName?.toTfJson(),
    'is_unified_auditing_enabled': ?isUnifiedAuditingEnabled?.toTfJson(),
    'database': database.encode(),
  };
}

/// Typed helper for the `properties.db_home.database` block of
/// `google_oracle_database_db_system` (derived from provider schema).
@immutable
final class OracleDatabaseDbSystemPropertiesDbHomeDatabase {
  const OracleDatabaseDbSystemPropertiesDbHomeDatabase({
    required this.adminPassword,
    this.characterSet,
    required this.databaseId,
    this.dbHomeName,
    this.dbName,
    this.dbUniqueName,
    this.gcpOracleZone,
    this.ncharacterSet,
    this.pluggableDatabaseId,
    this.pluggableDatabaseName,
    this.tdeWalletPassword,
    this.properties,
  });

  final TfArg<String> adminPassword;

  final TfArg<String>? characterSet;

  final TfArg<String> databaseId;

  final TfArg<String>? dbHomeName;

  final TfArg<String>? dbName;

  final TfArg<String>? dbUniqueName;

  final TfArg<String>? gcpOracleZone;

  final TfArg<String>? ncharacterSet;

  final TfArg<String>? pluggableDatabaseId;

  final TfArg<String>? pluggableDatabaseName;

  final TfArg<String>? tdeWalletPassword;

  final OracleDatabaseDbSystemPropertiesDbHomeDatabaseProperties? properties;

  Map<String, Object?> encode() => {
    'admin_password': adminPassword.toTfJson(),
    'character_set': ?characterSet?.toTfJson(),
    'database_id': databaseId.toTfJson(),
    'db_home_name': ?dbHomeName?.toTfJson(),
    'db_name': ?dbName?.toTfJson(),
    'db_unique_name': ?dbUniqueName?.toTfJson(),
    'gcp_oracle_zone': ?gcpOracleZone?.toTfJson(),
    'ncharacter_set': ?ncharacterSet?.toTfJson(),
    'pluggable_database_id': ?pluggableDatabaseId?.toTfJson(),
    'pluggable_database_name': ?pluggableDatabaseName?.toTfJson(),
    'tde_wallet_password': ?tdeWalletPassword?.toTfJson(),
    'properties': ?properties?.encode(),
  };
}

/// Typed helper for the `properties.db_home.database.properties` block of
/// `google_oracle_database_db_system` (derived from provider schema).
@immutable
final class OracleDatabaseDbSystemPropertiesDbHomeDatabaseProperties {
  const OracleDatabaseDbSystemPropertiesDbHomeDatabaseProperties({
    required this.dbVersion,
    this.dbBackupConfig,
  });

  final TfArg<String> dbVersion;

  final OracleDatabaseDbSystemPropertiesDbHomeDatabasePropertiesDbBackupConfig?
  dbBackupConfig;

  Map<String, Object?> encode() => {
    'db_version': dbVersion.toTfJson(),
    'db_backup_config': ?dbBackupConfig?.encode(),
  };
}

/// Typed helper for the `properties.db_home.database.properties.db_backup_config` block of
/// `google_oracle_database_db_system` (derived from provider schema).
@immutable
final class OracleDatabaseDbSystemPropertiesDbHomeDatabasePropertiesDbBackupConfig {
  const OracleDatabaseDbSystemPropertiesDbHomeDatabasePropertiesDbBackupConfig({
    this.autoBackupEnabled,
    this.autoFullBackupDay,
    this.autoFullBackupWindow,
    this.autoIncrementalBackupWindow,
    this.backupDeletionPolicy,
    this.retentionPeriodDays,
    this.backupDestinationDetails,
  });

  final TfArg<bool>? autoBackupEnabled;

  final TfArg<String>? autoFullBackupDay;

  final TfArg<String>? autoFullBackupWindow;

  final TfArg<String>? autoIncrementalBackupWindow;

  final TfArg<String>? backupDeletionPolicy;

  final TfArg<num>? retentionPeriodDays;

  final List<
    OracleDatabaseDbSystemPropertiesDbHomeDatabasePropertiesDbBackupConfigBackupDestinationDetails
  >?
  backupDestinationDetails;

  Map<String, Object?> encode() => {
    'auto_backup_enabled': ?autoBackupEnabled?.toTfJson(),
    'auto_full_backup_day': ?autoFullBackupDay?.toTfJson(),
    'auto_full_backup_window': ?autoFullBackupWindow?.toTfJson(),
    'auto_incremental_backup_window': ?autoIncrementalBackupWindow?.toTfJson(),
    'backup_deletion_policy': ?backupDeletionPolicy?.toTfJson(),
    'retention_period_days': ?retentionPeriodDays?.toTfJson(),
    if (backupDestinationDetails != null)
      'backup_destination_details': [
        for (final e in backupDestinationDetails!) e.encode(),
      ],
  };
}

/// Typed helper for the `properties.db_home.database.properties.db_backup_config.backup_destination_details` block of
/// `google_oracle_database_db_system` (derived from provider schema).
@immutable
final class OracleDatabaseDbSystemPropertiesDbHomeDatabasePropertiesDbBackupConfigBackupDestinationDetails {
  const OracleDatabaseDbSystemPropertiesDbHomeDatabasePropertiesDbBackupConfigBackupDestinationDetails({
    this.type,
  });

  final TfArg<String>? type;

  Map<String, Object?> encode() => {'type': ?type?.toTfJson()};
}

/// Typed helper for the `properties.db_system_options` block of
/// `google_oracle_database_db_system` (derived from provider schema).
@immutable
final class OracleDatabaseDbSystemPropertiesDbSystemOptions {
  const OracleDatabaseDbSystemPropertiesDbSystemOptions({
    this.storageManagement,
  });

  final TfArg<String>? storageManagement;

  Map<String, Object?> encode() => {
    'storage_management': ?storageManagement?.toTfJson(),
  };
}

/// Typed helper for the `properties.time_zone` block of
/// `google_oracle_database_db_system` (derived from provider schema).
@immutable
final class OracleDatabaseDbSystemPropertiesTimeZone {
  const OracleDatabaseDbSystemPropertiesTimeZone({this.id});

  final TfArg<String>? id;

  Map<String, Object?> encode() => {'id': ?id?.toTfJson()};
}

/// Factory wrapper for `google_oracle_database_db_system`.
///
/// A DbSystem Resource
///
/// Oracle Base Database DB System on Oracle Database@Google Cloud.
///
/// Enable `oracledatabase.googleapis.com` before apply. Requires
/// [odb_subnet] (and typically [GoogleOracleDatabaseOdbSubnet] refs) plus
/// [properties] with shape, edition, license model, and SSH public keys.
final class GoogleOracleDatabaseDbSystem extends Resource {
  static const String tfType = 'google_oracle_database_db_system';

  GoogleOracleDatabaseDbSystem({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> dbSystemId,
    required TfArg<String> displayName,
    required TfArg<String> odbSubnet,
    OracleDatabaseDbSystemProperties? properties,
    TfArg<String>? odbNetwork,
    TfArg<String>? gcpOracleZone,
    TfArg<Map<String, String>>? labels,
    TfArg<OracleDatabaseDbSystemDeletionPolicy>? deletionPolicy,
    TfArg<bool>? deletionProtection,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'db_system_id': dbSystemId,
           'display_name': displayName,
           'odb_subnet': odbSubnet,
           if (properties != null)
             'properties': TfArg.literal(properties.encode()),
           'odb_network': ?odbNetwork,
           'gcp_oracle_zone': ?gcpOracleZone,
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'deletion_protection': ?deletionProtection,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleOracleDatabaseDbSystemSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleOracleDatabaseDbSystem>`.
  RefTo<GoogleOracleDatabaseDbSystem> get ref => RefTo.of(this);

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `entitlement_id` attribute.
  TfRef<String> get entitlementId =>
      TfRef.attribute<String>(this, 'entitlement_id');

  /// Reference to `oci_url` attribute.
  TfRef<String> get ociUrl => TfRef.attribute<String>(this, 'oci_url');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `db_system_id` attribute.
  TfRef<String> get dbSystemIdRef =>
      TfRef.attribute<String>(this, 'db_system_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deletion_protection` attribute.
  TfRef<bool> get deletionProtectionRef =>
      TfRef.attribute<bool>(this, 'deletion_protection');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayNameRef =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `gcp_oracle_zone` attribute.
  TfRef<String> get gcpOracleZoneRef =>
      TfRef.attribute<String>(this, 'gcp_oracle_zone');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `odb_network` attribute.
  TfRef<String> get odbNetworkRef =>
      TfRef.attribute<String>(this, 'odb_network');

  /// Reference to `odb_subnet` attribute.
  TfRef<String> get odbSubnetRef => TfRef.attribute<String>(this, 'odb_subnet');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
