// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;
import '../oracle/google_oracle_database_odb_network.dart'
    show GoogleOracleDatabaseOdbNetwork;
import '../oracle/google_oracle_database_odb_subnet.dart'
    show GoogleOracleDatabaseOdbSubnet;

/// Sensitive field paths for `google_oracle_database_autonomous_database`.
const Set<String> _googleOracleDatabaseAutonomousDatabaseSensitive = <String>{};

/// Terraform `deletion_policy` for Autonomous Databases.
enum OracleDatabaseAutonomousDatabaseDeletionPolicy implements TerraformEnum {
  delete('DELETE'),
  prevent('PREVENT'),
  abandon('ABANDON');

  const OracleDatabaseAutonomousDatabaseDeletionPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Autonomous Database workload type.
enum OracleDatabaseAutonomousDatabaseDbWorkload implements TerraformEnum {
  dbWorkloadUnspecified('DB_WORKLOAD_UNSPECIFIED'),
  oltp('OLTP'),
  dw('DW'),
  ajd('AJD'),
  apex('APEX');

  const OracleDatabaseAutonomousDatabaseDbWorkload(this.terraformValue);
  @override
  final String terraformValue;
}

/// Autonomous Database license type.
enum OracleDatabaseAutonomousDatabaseLicenseType implements TerraformEnum {
  licenseTypeUnspecified('LICENSE_TYPE_UNSPECIFIED'),
  licenseIncluded('LICENSE_INCLUDED'),
  bringYourOwnLicense('BRING_YOUR_OWN_LICENSE');

  const OracleDatabaseAutonomousDatabaseLicenseType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `properties` block of
/// `google_oracle_database_autonomous_database` (derived from provider schema).
@immutable
final class OracleDatabaseAutonomousDatabaseProperties {
  const OracleDatabaseAutonomousDatabaseProperties({
    this.backupRetentionPeriodDays,
    this.characterSet,
    this.computeCount,
    this.cpuCoreCount,
    this.dataStorageSizeGb,
    this.dataStorageSizeTb,
    this.dbEdition,
    this.dbVersion,
    required this.dbWorkload,
    this.isAutoScalingEnabled,
    this.isStorageAutoScalingEnabled,
    required this.licenseType,
    this.maintenanceScheduleType,
    this.mtlsConnectionRequired,
    this.nCharacterSet,
    this.operationsInsightsState,
    this.privateEndpointIp,
    this.privateEndpointLabel,
    this.secretId,
    this.vaultId,
    this.customerContacts,
  });

  final TfArg<num>? backupRetentionPeriodDays;

  final TfArg<String>? characterSet;

  final TfArg<num>? computeCount;

  final TfArg<num>? cpuCoreCount;

  final TfArg<num>? dataStorageSizeGb;

  final TfArg<num>? dataStorageSizeTb;

  final TfArg<String>? dbEdition;

  final TfArg<String>? dbVersion;

  final TfArg<OracleDatabaseAutonomousDatabaseDbWorkload> dbWorkload;

  final TfArg<bool>? isAutoScalingEnabled;

  final TfArg<bool>? isStorageAutoScalingEnabled;

  final TfArg<OracleDatabaseAutonomousDatabaseLicenseType> licenseType;

  final TfArg<String>? maintenanceScheduleType;

  final TfArg<bool>? mtlsConnectionRequired;

  final TfArg<String>? nCharacterSet;

  final TfArg<String>? operationsInsightsState;

  final TfArg<String>? privateEndpointIp;

  final TfArg<String>? privateEndpointLabel;

  final TfArg<String>? secretId;

  final TfArg<String>? vaultId;

  final List<OracleDatabaseAutonomousDatabaseCustomerContacts>?
  customerContacts;

  Map<String, Object?> encode() => {
    'backup_retention_period_days': ?backupRetentionPeriodDays?.toTfJson(),
    'character_set': ?characterSet?.toTfJson(),
    'compute_count': ?computeCount?.toTfJson(),
    'cpu_core_count': ?cpuCoreCount?.toTfJson(),
    'data_storage_size_gb': ?dataStorageSizeGb?.toTfJson(),
    'data_storage_size_tb': ?dataStorageSizeTb?.toTfJson(),
    'db_edition': ?dbEdition?.toTfJson(),
    'db_version': ?dbVersion?.toTfJson(),
    'db_workload': dbWorkload.toTfJson(),
    'is_auto_scaling_enabled': ?isAutoScalingEnabled?.toTfJson(),
    'is_storage_auto_scaling_enabled': ?isStorageAutoScalingEnabled?.toTfJson(),
    'license_type': licenseType.toTfJson(),
    'maintenance_schedule_type': ?maintenanceScheduleType?.toTfJson(),
    'mtls_connection_required': ?mtlsConnectionRequired?.toTfJson(),
    'n_character_set': ?nCharacterSet?.toTfJson(),
    'operations_insights_state': ?operationsInsightsState?.toTfJson(),
    'private_endpoint_ip': ?privateEndpointIp?.toTfJson(),
    'private_endpoint_label': ?privateEndpointLabel?.toTfJson(),
    'secret_id': ?secretId?.toTfJson(),
    'vault_id': ?vaultId?.toTfJson(),
    if (customerContacts != null)
      'customer_contacts': [for (final e in customerContacts!) e.encode()],
  };
}

/// Typed helper for the `properties.customer_contacts` block of
/// `google_oracle_database_autonomous_database` (derived from provider schema).
@immutable
final class OracleDatabaseAutonomousDatabaseCustomerContacts {
  const OracleDatabaseAutonomousDatabaseCustomerContacts({required this.email});

  final TfArg<String> email;

  Map<String, Object?> encode() => {'email': email.toTfJson()};
}

/// Typed helper for the `source_config` block of
/// `google_oracle_database_autonomous_database` (derived from provider schema).
@immutable
final class OracleDatabaseAutonomousDatabaseSourceConfig {
  const OracleDatabaseAutonomousDatabaseSourceConfig({
    this.automaticBackupsReplicationEnabled,
    this.autonomousDatabase,
  });

  final TfArg<bool>? automaticBackupsReplicationEnabled;

  final TfArg<String>? autonomousDatabase;

  Map<String, Object?> encode() => {
    'automatic_backups_replication_enabled': ?automaticBackupsReplicationEnabled
        ?.toTfJson(),
    'autonomous_database': ?autonomousDatabase?.toTfJson(),
  };
}

/// Factory wrapper for `google_oracle_database_autonomous_database`.
///
/// An AutonomousDatabase resource.
///
/// Oracle Autonomous Database on Oracle Database@Google Cloud.
///
/// Enable `oracledatabase.googleapis.com` before apply. Set [properties]
/// with `db_workload` and `license_type`. For private networking, wire
/// [odb_subnet] / [odb_network] to [GoogleOracleDatabaseOdbSubnet] refs.
final class GoogleOracleDatabaseAutonomousDatabase extends Resource {
  static const String tfType = 'google_oracle_database_autonomous_database';

  GoogleOracleDatabaseAutonomousDatabase({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> autonomousDatabaseId,
    TfArg<String>? database,
    TfArg<String>? displayName,
    TfArg<String>? adminPassword,
    OracleDatabaseAutonomousDatabaseProperties? properties,
    RefTo<GoogleOracleDatabaseOdbSubnet>? odbSubnet,
    RefTo<GoogleOracleDatabaseOdbNetwork>? odbNetwork,
    RefTo<GoogleComputeNetwork>? network,
    TfArg<String>? cidr,
    TfArg<Map<String, String>>? labels,
    OracleDatabaseAutonomousDatabaseSourceConfig? sourceConfig,
    TfArg<OracleDatabaseAutonomousDatabaseDeletionPolicy>? deletionPolicy,
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
           'autonomous_database_id': autonomousDatabaseId,
           'database': ?database,
           'display_name': ?displayName,
           'admin_password': ?adminPassword,
           if (properties != null)
             'properties': TfArg.literal(properties.encode()),
           'odb_subnet': ?odbSubnet?.encodeAs('name'),
           'odb_network': ?odbNetwork?.encodeAs('name'),
           'network': ?network?.encodeAs('id'),
           'cidr': ?cidr,
           'labels': ?labels,
           if (sourceConfig != null)
             'source_config': TfArg.literal(sourceConfig.encode()),
           'deletion_policy': ?deletionPolicy,
           'deletion_protection': ?deletionProtection,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleOracleDatabaseAutonomousDatabaseSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleOracleDatabaseAutonomousDatabase>`.
  RefTo<GoogleOracleDatabaseAutonomousDatabase> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `disaster_recovery_supported_locations` attribute.
  TfRef<List<String>> get disasterRecoverySupportedLocations =>
      TfRef.attribute<List<String>>(
        this,
        'disaster_recovery_supported_locations',
      );

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `entitlement_id` attribute.
  TfRef<String> get entitlementId =>
      TfRef.attribute<String>(this, 'entitlement_id');

  /// Reference to `peer_autonomous_databases` attribute.
  TfRef<List<String>> get peerAutonomousDatabases =>
      TfRef.attribute<List<String>>(this, 'peer_autonomous_databases');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `admin_password` attribute.
  TfRef<String> get adminPassword =>
      TfRef.attribute<String>(this, 'admin_password');

  /// Reference to `autonomous_database_id` attribute.
  TfRef<String> get autonomousDatabaseId =>
      TfRef.attribute<String>(this, 'autonomous_database_id');

  /// Reference to `cidr` attribute.
  TfRef<String> get cidr => TfRef.attribute<String>(this, 'cidr');

  /// Reference to `database` attribute.
  TfRef<String> get database => TfRef.attribute<String>(this, 'database');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deletion_protection` attribute.
  TfRef<bool> get deletionProtection =>
      TfRef.attribute<bool>(this, 'deletion_protection');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `network` attribute.
  TfRef<String> get network => TfRef.attribute<String>(this, 'network');

  /// Reference to `odb_network` attribute.
  TfRef<String> get odbNetwork => TfRef.attribute<String>(this, 'odb_network');

  /// Reference to `odb_subnet` attribute.
  TfRef<String> get odbSubnet => TfRef.attribute<String>(this, 'odb_subnet');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
