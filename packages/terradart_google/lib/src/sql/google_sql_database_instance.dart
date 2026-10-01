// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;
import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_sql_database_instance`.
const Set<String> _googleSqlDatabaseInstanceSensitive = <String>{
  'replica_configuration.password',
  'root_password',
  'server_ca_cert',
};

// ===========================================================================
// Top-level enums
// ===========================================================================

/// Engine + major version for a Cloud SQL instance. Mapped from the
/// `database_version` schema string (see the schema attribute description
/// for the canonical supported set). Picking a major family is **forcing**
/// — Terraform recreates the instance on change.
enum DatabaseVersion implements TerraformEnum {
  mysql56('MYSQL_5_6'),
  mysql57('MYSQL_5_7'),
  mysql80('MYSQL_8_0'),
  mysql84('MYSQL_8_4'),
  postgres96('POSTGRES_9_6'),
  postgres10('POSTGRES_10'),
  postgres11('POSTGRES_11'),
  postgres12('POSTGRES_12'),
  postgres13('POSTGRES_13'),
  postgres14('POSTGRES_14'),
  postgres15('POSTGRES_15'),
  postgres16('POSTGRES_16'),
  postgres17('POSTGRES_17'),
  postgres18('POSTGRES_18'),
  sqlserver2022Standard('SQLSERVER_2022_STANDARD'),
  sqlserver2022Enterprise('SQLSERVER_2022_ENTERPRISE'),
  sqlserver2022Express('SQLSERVER_2022_EXPRESS'),
  sqlserver2022Web('SQLSERVER_2022_WEB'),
  sqlserver2025Standard('SQLSERVER_2025_STANDARD'),
  sqlserver2025Enterprise('SQLSERVER_2025_ENTERPRISE'),
  sqlserver2025Express('SQLSERVER_2025_EXPRESS'),
  sqlserver2025Web('SQLSERVER_2025_WEB');

  const DatabaseVersion(this.terraformValue);
  @override
  final String terraformValue;
}

/// `settings.availability_type`. `regional` is HA (across 2 zones in the
/// region, automatic failover); `zonal` is single-zone (cheaper). HA
/// also requires backup_configuration to be enabled (and binary logs on
/// MySQL / point-in-time recovery on Postgres).
enum SqlAvailabilityType implements TerraformEnum {
  regional('REGIONAL'),
  zonal('ZONAL');

  const SqlAvailabilityType(this.terraformValue);
  @override
  final String terraformValue;
}

/// `settings.edition`. `enterprisePlus` unlocks data cache, advanced
/// disaster recovery, and the read-pool instance type.
enum SqlEdition implements TerraformEnum {
  enterprise('ENTERPRISE'),
  enterprisePlus('ENTERPRISE_PLUS');

  const SqlEdition(this.terraformValue);
  @override
  final String terraformValue;
}

/// `settings.activation_policy`. `always` (default) keeps the instance
/// running 24/7; `never` keeps it stopped (the underlying storage is
/// preserved). `onDemand` is legacy — kept for backwards compatibility.
enum SqlActivationPolicy implements TerraformEnum {
  always('ALWAYS'),
  never('NEVER'),
  onDemand('ON_DEMAND');

  const SqlActivationPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// `settings.disk_type`. Tier-dependent — `hyperdiskBalanced` is only
/// available on Enterprise Plus.
enum SqlDiskType implements TerraformEnum {
  pdSsd('PD_SSD'),
  pdHdd('PD_HDD'),
  hyperdiskBalanced('HYPERDISK_BALANCED');

  const SqlDiskType(this.terraformValue);
  @override
  final String terraformValue;
}

// ===========================================================================
// SqlDatabaseInstanceSettings + nested helpers
// ===========================================================================

// ===========================================================================
// replica_configuration (top-level, separate from settings)
// ===========================================================================

/// Typed helper for the `clone` block of
/// `google_sql_database_instance` (derived from provider schema).
@immutable
final class SqlDatabaseInstanceClone {
  const SqlDatabaseInstanceClone({
    this.allocatedIpRange,
    this.databaseNames,
    this.pointInTime,
    this.preferredZone,
    this.sourceInstanceDeletionTime,
    required this.sourceInstanceName,
    this.sourceProject,
  });

  final TfArg<String>? allocatedIpRange;

  final TfArg<List<String>>? databaseNames;

  final TfArg<String>? pointInTime;

  final TfArg<String>? preferredZone;

  final TfArg<String>? sourceInstanceDeletionTime;

  final TfArg<String> sourceInstanceName;

  final TfArg<String>? sourceProject;

  Map<String, Object?> encode() => {
    'allocated_ip_range': ?allocatedIpRange?.toTfJson(),
    'database_names': ?databaseNames?.toTfJson(),
    'point_in_time': ?pointInTime?.toTfJson(),
    'preferred_zone': ?preferredZone?.toTfJson(),
    'source_instance_deletion_time': ?sourceInstanceDeletionTime?.toTfJson(),
    'source_instance_name': sourceInstanceName.toTfJson(),
    'source_project': ?sourceProject?.toTfJson(),
  };
}

/// Typed helper for the `point_in_time_restore_context` block of
/// `google_sql_database_instance` (derived from provider schema).
@immutable
final class SqlDatabaseInstancePointInTimeRestoreContext {
  const SqlDatabaseInstancePointInTimeRestoreContext({
    this.allocatedIpRange,
    required this.datasource,
    this.pointInTime,
    this.preferredZone,
    this.region,
    this.targetInstance,
  });

  final TfArg<String>? allocatedIpRange;

  final TfArg<String> datasource;

  final TfArg<String>? pointInTime;

  final TfArg<String>? preferredZone;

  final TfArg<String>? region;

  final TfArg<String>? targetInstance;

  Map<String, Object?> encode() => {
    'allocated_ip_range': ?allocatedIpRange?.toTfJson(),
    'datasource': datasource.toTfJson(),
    'point_in_time': ?pointInTime?.toTfJson(),
    'preferred_zone': ?preferredZone?.toTfJson(),
    'region': ?region?.toTfJson(),
    'target_instance': ?targetInstance?.toTfJson(),
  };
}

/// Typed helper for the `replica_configuration` block of
/// `google_sql_database_instance` (derived from provider schema).
@immutable
final class SqlDatabaseInstanceReplicaConfiguration {
  const SqlDatabaseInstanceReplicaConfiguration({
    this.caCertificate,
    this.cascadableReplica,
    this.clientCertificate,
    this.clientKey,
    this.connectRetryInterval,
    this.dumpFilePath,
    this.failoverTarget,
    this.masterHeartbeatPeriod,
    this.password,
    this.sslCipher,
    this.username,
    this.verifyServerCertificate,
  });

  final TfArg<String>? caCertificate;

  final TfArg<bool>? cascadableReplica;

  final TfArg<String>? clientCertificate;

  final TfArg<String>? clientKey;

  final TfArg<num>? connectRetryInterval;

  final TfArg<String>? dumpFilePath;

  final TfArg<bool>? failoverTarget;

  final TfArg<num>? masterHeartbeatPeriod;

  final TfArg<String>? password;

  final TfArg<String>? sslCipher;

  final TfArg<String>? username;

  final TfArg<bool>? verifyServerCertificate;

  Map<String, Object?> encode() => {
    'ca_certificate': ?caCertificate?.toTfJson(),
    'cascadable_replica': ?cascadableReplica?.toTfJson(),
    'client_certificate': ?clientCertificate?.toTfJson(),
    'client_key': ?clientKey?.toTfJson(),
    'connect_retry_interval': ?connectRetryInterval?.toTfJson(),
    'dump_file_path': ?dumpFilePath?.toTfJson(),
    'failover_target': ?failoverTarget?.toTfJson(),
    'master_heartbeat_period': ?masterHeartbeatPeriod?.toTfJson(),
    'password': ?password?.toTfJson(),
    'ssl_cipher': ?sslCipher?.toTfJson(),
    'username': ?username?.toTfJson(),
    'verify_server_certificate': ?verifyServerCertificate?.toTfJson(),
  };
}

/// Typed helper for the `replication_cluster` block of
/// `google_sql_database_instance` (derived from provider schema).
@immutable
final class SqlDatabaseInstanceReplicationCluster {
  const SqlDatabaseInstanceReplicationCluster({
    this.failoverDrReplicaName,
    this.psaWriteEndpoint,
  });

  final TfArg<String>? failoverDrReplicaName;

  final TfArg<String>? psaWriteEndpoint;

  Map<String, Object?> encode() => {
    'failover_dr_replica_name': ?failoverDrReplicaName?.toTfJson(),
    'psa_write_endpoint': ?psaWriteEndpoint?.toTfJson(),
  };
}

/// Typed helper for the `restore_backup_context` block of
/// `google_sql_database_instance` (derived from provider schema).
@immutable
final class SqlDatabaseInstanceRestoreBackupContext {
  const SqlDatabaseInstanceRestoreBackupContext({
    required this.backupRunId,
    this.instanceId,
    this.project,
  });

  final TfArg<num> backupRunId;

  final TfArg<String>? instanceId;

  final TfArg<String>? project;

  Map<String, Object?> encode() => {
    'backup_run_id': backupRunId.toTfJson(),
    'instance_id': ?instanceId?.toTfJson(),
    'project': ?project?.toTfJson(),
  };
}

/// Typed helper for the `settings` block of
/// `google_sql_database_instance` (derived from provider schema).
@immutable
final class SqlDatabaseInstanceSettings {
  const SqlDatabaseInstanceSettings({
    this.activationPolicy,
    this.autoUpgradeEnabled,
    this.availabilityType,
    this.collation,
    this.connectorEnforcement,
    this.dataApiAccess,
    this.dataDiskProvisionedIops,
    this.dataDiskProvisionedThroughput,
    this.deletionProtectionEnabled,
    this.diskAutoresize,
    this.diskAutoresizeLimit,
    this.diskSize,
    this.diskType,
    this.edition,
    this.enableDataplexIntegration,
    this.enableGoogleMlIntegration,
    this.pricingPlan,
    this.replicationLagMaxSeconds,
    this.retainBackupsOnDelete,
    required this.tier,
    this.timeZone,
    this.userLabels,
    this.activeDirectoryConfig,
    this.advancedMachineFeatures,
    this.backupConfiguration,
    this.connectionPoolConfig,
    this.dataCacheConfig,
    this.databaseFlags,
    this.denyMaintenancePeriod,
    this.entraidConfig,
    this.finalBackupConfig,
    this.insightsConfig,
    this.ipConfiguration,
    this.locationPreference,
    this.maintenanceWindow,
    this.passwordValidationPolicy,
    this.readPoolAutoScaleConfig,
    this.sqlServerAuditConfig,
  });

  final TfArg<SqlActivationPolicy>? activationPolicy;

  final TfArg<bool>? autoUpgradeEnabled;

  final TfArg<SqlAvailabilityType>? availabilityType;

  final TfArg<String>? collation;

  final TfArg<String>? connectorEnforcement;

  final TfArg<String>? dataApiAccess;

  final TfArg<num>? dataDiskProvisionedIops;

  final TfArg<num>? dataDiskProvisionedThroughput;

  final TfArg<bool>? deletionProtectionEnabled;

  final TfArg<bool>? diskAutoresize;

  final TfArg<num>? diskAutoresizeLimit;

  final TfArg<num>? diskSize;

  final TfArg<SqlDiskType>? diskType;

  final TfArg<SqlEdition>? edition;

  final TfArg<bool>? enableDataplexIntegration;

  final TfArg<bool>? enableGoogleMlIntegration;

  final TfArg<String>? pricingPlan;

  final TfArg<num>? replicationLagMaxSeconds;

  final TfArg<bool>? retainBackupsOnDelete;

  final TfArg<String> tier;

  final TfArg<String>? timeZone;

  final TfArg<Map<String, String>>? userLabels;

  final SqlDatabaseInstanceActiveDirectoryConfig? activeDirectoryConfig;

  final SqlDatabaseInstanceAdvancedMachineFeatures? advancedMachineFeatures;

  final SqlDatabaseInstanceBackupConfiguration? backupConfiguration;

  final List<SqlDatabaseInstanceConnectionPoolConfig>? connectionPoolConfig;

  final SqlDatabaseInstanceDataCacheConfig? dataCacheConfig;

  final List<SqlDatabaseInstanceDatabaseFlags>? databaseFlags;

  final SqlDatabaseInstanceDenyMaintenancePeriod? denyMaintenancePeriod;

  final SqlDatabaseInstanceEntraidConfig? entraidConfig;

  final SqlDatabaseInstanceFinalBackupConfig? finalBackupConfig;

  final SqlDatabaseInstanceInsightsConfig? insightsConfig;

  final SqlDatabaseInstanceIpConfiguration? ipConfiguration;

  final SqlDatabaseInstanceLocationPreference? locationPreference;

  final SqlDatabaseInstanceMaintenanceWindow? maintenanceWindow;

  final SqlDatabaseInstancePasswordValidationPolicy? passwordValidationPolicy;

  final SqlDatabaseInstanceReadPoolAutoScaleConfig? readPoolAutoScaleConfig;

  final SqlDatabaseInstanceSqlServerAuditConfig? sqlServerAuditConfig;

  Map<String, Object?> encode() => {
    'activation_policy': ?activationPolicy?.toTfJson(),
    'auto_upgrade_enabled': ?autoUpgradeEnabled?.toTfJson(),
    'availability_type': ?availabilityType?.toTfJson(),
    'collation': ?collation?.toTfJson(),
    'connector_enforcement': ?connectorEnforcement?.toTfJson(),
    'data_api_access': ?dataApiAccess?.toTfJson(),
    'data_disk_provisioned_iops': ?dataDiskProvisionedIops?.toTfJson(),
    'data_disk_provisioned_throughput': ?dataDiskProvisionedThroughput
        ?.toTfJson(),
    'deletion_protection_enabled': ?deletionProtectionEnabled?.toTfJson(),
    'disk_autoresize': ?diskAutoresize?.toTfJson(),
    'disk_autoresize_limit': ?diskAutoresizeLimit?.toTfJson(),
    'disk_size': ?diskSize?.toTfJson(),
    'disk_type': ?diskType?.toTfJson(),
    'edition': ?edition?.toTfJson(),
    'enable_dataplex_integration': ?enableDataplexIntegration?.toTfJson(),
    'enable_google_ml_integration': ?enableGoogleMlIntegration?.toTfJson(),
    'pricing_plan': ?pricingPlan?.toTfJson(),
    'replication_lag_max_seconds': ?replicationLagMaxSeconds?.toTfJson(),
    'retain_backups_on_delete': ?retainBackupsOnDelete?.toTfJson(),
    'tier': tier.toTfJson(),
    'time_zone': ?timeZone?.toTfJson(),
    'user_labels': ?userLabels?.toTfJson(),
    'active_directory_config': ?activeDirectoryConfig?.encode(),
    'advanced_machine_features': ?advancedMachineFeatures?.encode(),
    'backup_configuration': ?backupConfiguration?.encode(),
    if (connectionPoolConfig != null)
      'connection_pool_config': [
        for (final e in connectionPoolConfig!) e.encode(),
      ],
    'data_cache_config': ?dataCacheConfig?.encode(),
    if (databaseFlags != null)
      'database_flags': [for (final e in databaseFlags!) e.encode()],
    'deny_maintenance_period': ?denyMaintenancePeriod?.encode(),
    'entraid_config': ?entraidConfig?.encode(),
    'final_backup_config': ?finalBackupConfig?.encode(),
    'insights_config': ?insightsConfig?.encode(),
    'ip_configuration': ?ipConfiguration?.encode(),
    'location_preference': ?locationPreference?.encode(),
    'maintenance_window': ?maintenanceWindow?.encode(),
    'password_validation_policy': ?passwordValidationPolicy?.encode(),
    'read_pool_auto_scale_config': ?readPoolAutoScaleConfig?.encode(),
    'sql_server_audit_config': ?sqlServerAuditConfig?.encode(),
  };
}

/// Typed helper for the `settings.active_directory_config` block of
/// `google_sql_database_instance` (derived from provider schema).
@immutable
final class SqlDatabaseInstanceActiveDirectoryConfig {
  const SqlDatabaseInstanceActiveDirectoryConfig({
    this.adminCredentialSecretName,
    this.dnsServers,
    required this.domain,
    this.mode,
    this.organizationalUnit,
  });

  final TfArg<String>? adminCredentialSecretName;

  final TfArg<List<String>>? dnsServers;

  final TfArg<String> domain;

  final TfArg<String>? mode;

  final TfArg<String>? organizationalUnit;

  Map<String, Object?> encode() => {
    'admin_credential_secret_name': ?adminCredentialSecretName?.toTfJson(),
    'dns_servers': ?dnsServers?.toTfJson(),
    'domain': domain.toTfJson(),
    'mode': ?mode?.toTfJson(),
    'organizational_unit': ?organizationalUnit?.toTfJson(),
  };
}

/// Typed helper for the `settings.advanced_machine_features` block of
/// `google_sql_database_instance` (derived from provider schema).
@immutable
final class SqlDatabaseInstanceAdvancedMachineFeatures {
  const SqlDatabaseInstanceAdvancedMachineFeatures({this.threadsPerCore});

  final TfArg<num>? threadsPerCore;

  Map<String, Object?> encode() => {
    'threads_per_core': ?threadsPerCore?.toTfJson(),
  };
}

/// Typed helper for the `settings.backup_configuration` block of
/// `google_sql_database_instance` (derived from provider schema).
@immutable
final class SqlDatabaseInstanceBackupConfiguration {
  const SqlDatabaseInstanceBackupConfiguration({
    this.binaryLogEnabled,
    this.enabled,
    this.location,
    this.pointInTimeRecoveryEnabled,
    this.startTime,
    this.transactionLogRetentionDays,
    this.backupRetentionSettings,
  });

  final TfArg<bool>? binaryLogEnabled;

  final TfArg<bool>? enabled;

  final TfArg<String>? location;

  final TfArg<bool>? pointInTimeRecoveryEnabled;

  final TfArg<String>? startTime;

  final TfArg<num>? transactionLogRetentionDays;

  final SqlDatabaseInstanceBackupRetentionSettings? backupRetentionSettings;

  Map<String, Object?> encode() => {
    'binary_log_enabled': ?binaryLogEnabled?.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
    'location': ?location?.toTfJson(),
    'point_in_time_recovery_enabled': ?pointInTimeRecoveryEnabled?.toTfJson(),
    'start_time': ?startTime?.toTfJson(),
    'transaction_log_retention_days': ?transactionLogRetentionDays?.toTfJson(),
    'backup_retention_settings': ?backupRetentionSettings?.encode(),
  };
}

/// Typed helper for the `settings.backup_configuration.backup_retention_settings` block of
/// `google_sql_database_instance` (derived from provider schema).
@immutable
final class SqlDatabaseInstanceBackupRetentionSettings {
  const SqlDatabaseInstanceBackupRetentionSettings({
    required this.retainedBackups,
    this.retentionUnit,
  });

  final TfArg<num> retainedBackups;

  final TfArg<String>? retentionUnit;

  Map<String, Object?> encode() => {
    'retained_backups': retainedBackups.toTfJson(),
    'retention_unit': ?retentionUnit?.toTfJson(),
  };
}

/// Typed helper for the `settings.connection_pool_config` block of
/// `google_sql_database_instance` (derived from provider schema).
@immutable
final class SqlDatabaseInstanceConnectionPoolConfig {
  const SqlDatabaseInstanceConnectionPoolConfig({
    this.connectionPoolingEnabled,
    this.flags,
  });

  final TfArg<bool>? connectionPoolingEnabled;

  final List<SqlDatabaseInstanceFlags>? flags;

  Map<String, Object?> encode() => {
    'connection_pooling_enabled': ?connectionPoolingEnabled?.toTfJson(),
    if (flags != null) 'flags': [for (final e in flags!) e.encode()],
  };
}

/// Typed helper for the `settings.connection_pool_config.flags` block of
/// `google_sql_database_instance` (derived from provider schema).
@immutable
final class SqlDatabaseInstanceFlags {
  const SqlDatabaseInstanceFlags({required this.name, required this.value});

  final TfArg<String> name;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `settings.data_cache_config` block of
/// `google_sql_database_instance` (derived from provider schema).
@immutable
final class SqlDatabaseInstanceDataCacheConfig {
  const SqlDatabaseInstanceDataCacheConfig({this.dataCacheEnabled});

  final TfArg<bool>? dataCacheEnabled;

  Map<String, Object?> encode() => {
    'data_cache_enabled': ?dataCacheEnabled?.toTfJson(),
  };
}

/// Typed helper for the `settings.database_flags` block of
/// `google_sql_database_instance` (derived from provider schema).
@immutable
final class SqlDatabaseInstanceDatabaseFlags {
  const SqlDatabaseInstanceDatabaseFlags({
    required this.name,
    required this.value,
  });

  final TfArg<String> name;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `settings.deny_maintenance_period` block of
/// `google_sql_database_instance` (derived from provider schema).
@immutable
final class SqlDatabaseInstanceDenyMaintenancePeriod {
  const SqlDatabaseInstanceDenyMaintenancePeriod({
    required this.endDate,
    required this.startDate,
    required this.time,
  });

  final TfArg<String> endDate;

  final TfArg<String> startDate;

  final TfArg<String> time;

  Map<String, Object?> encode() => {
    'end_date': endDate.toTfJson(),
    'start_date': startDate.toTfJson(),
    'time': time.toTfJson(),
  };
}

/// Typed helper for the `settings.entraid_config` block of
/// `google_sql_database_instance` (derived from provider schema).
@immutable
final class SqlDatabaseInstanceEntraidConfig {
  const SqlDatabaseInstanceEntraidConfig({this.applicationId, this.tenantId});

  final TfArg<String>? applicationId;

  final TfArg<String>? tenantId;

  Map<String, Object?> encode() => {
    'application_id': ?applicationId?.toTfJson(),
    'tenant_id': ?tenantId?.toTfJson(),
  };
}

/// Typed helper for the `settings.final_backup_config` block of
/// `google_sql_database_instance` (derived from provider schema).
@immutable
final class SqlDatabaseInstanceFinalBackupConfig {
  const SqlDatabaseInstanceFinalBackupConfig({
    this.enabled,
    this.retentionDays,
  });

  final TfArg<bool>? enabled;

  final TfArg<num>? retentionDays;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'retention_days': ?retentionDays?.toTfJson(),
  };
}

/// Typed helper for the `settings.insights_config` block of
/// `google_sql_database_instance` (derived from provider schema).
@immutable
final class SqlDatabaseInstanceInsightsConfig {
  const SqlDatabaseInstanceInsightsConfig({
    this.enhancedQueryInsightsEnabled,
    this.queryInsightsEnabled,
    this.queryPlansPerMinute,
    this.queryStringLength,
    this.recordApplicationTags,
    this.recordClientAddress,
  });

  final TfArg<bool>? enhancedQueryInsightsEnabled;

  final TfArg<bool>? queryInsightsEnabled;

  final TfArg<num>? queryPlansPerMinute;

  final TfArg<num>? queryStringLength;

  final TfArg<bool>? recordApplicationTags;

  final TfArg<bool>? recordClientAddress;

  Map<String, Object?> encode() => {
    'enhanced_query_insights_enabled': ?enhancedQueryInsightsEnabled
        ?.toTfJson(),
    'query_insights_enabled': ?queryInsightsEnabled?.toTfJson(),
    'query_plans_per_minute': ?queryPlansPerMinute?.toTfJson(),
    'query_string_length': ?queryStringLength?.toTfJson(),
    'record_application_tags': ?recordApplicationTags?.toTfJson(),
    'record_client_address': ?recordClientAddress?.toTfJson(),
  };
}

/// Typed helper for the `settings.ip_configuration` block of
/// `google_sql_database_instance` (derived from provider schema).
@immutable
final class SqlDatabaseInstanceIpConfiguration {
  const SqlDatabaseInstanceIpConfiguration({
    this.allocatedIpRange,
    this.customSubjectAlternativeNames,
    this.enablePrivatePathForGoogleCloudServices,
    this.ipv4Enabled,
    this.privateNetwork,
    this.serverCaMode,
    this.serverCaPool,
    this.serverCertificateRotationMode,
    this.sslMode,
    this.authorizedNetworks,
    this.pscConfig,
  });

  final TfArg<String>? allocatedIpRange;

  final TfArg<List<String>>? customSubjectAlternativeNames;

  final TfArg<bool>? enablePrivatePathForGoogleCloudServices;

  final TfArg<bool>? ipv4Enabled;

  final TfArg<String>? privateNetwork;

  final TfArg<String>? serverCaMode;

  final TfArg<String>? serverCaPool;

  final TfArg<String>? serverCertificateRotationMode;

  final TfArg<String>? sslMode;

  final List<SqlDatabaseInstanceAuthorizedNetworks>? authorizedNetworks;

  final List<SqlDatabaseInstancePscConfig>? pscConfig;

  Map<String, Object?> encode() => {
    'allocated_ip_range': ?allocatedIpRange?.toTfJson(),
    'custom_subject_alternative_names': ?customSubjectAlternativeNames
        ?.toTfJson(),
    'enable_private_path_for_google_cloud_services':
        ?enablePrivatePathForGoogleCloudServices?.toTfJson(),
    'ipv4_enabled': ?ipv4Enabled?.toTfJson(),
    'private_network': ?privateNetwork?.toTfJson(),
    'server_ca_mode': ?serverCaMode?.toTfJson(),
    'server_ca_pool': ?serverCaPool?.toTfJson(),
    'server_certificate_rotation_mode': ?serverCertificateRotationMode
        ?.toTfJson(),
    'ssl_mode': ?sslMode?.toTfJson(),
    if (authorizedNetworks != null)
      'authorized_networks': [for (final e in authorizedNetworks!) e.encode()],
    if (pscConfig != null)
      'psc_config': [for (final e in pscConfig!) e.encode()],
  };
}

/// Typed helper for the `settings.ip_configuration.authorized_networks` block of
/// `google_sql_database_instance` (derived from provider schema).
@immutable
final class SqlDatabaseInstanceAuthorizedNetworks {
  const SqlDatabaseInstanceAuthorizedNetworks({
    this.expirationTime,
    this.name,
    required this.value,
  });

  final TfArg<String>? expirationTime;

  final TfArg<String>? name;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'expiration_time': ?expirationTime?.toTfJson(),
    'name': ?name?.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `settings.ip_configuration.psc_config` block of
/// `google_sql_database_instance` (derived from provider schema).
@immutable
final class SqlDatabaseInstancePscConfig {
  const SqlDatabaseInstancePscConfig({
    this.allowedConsumerProjects,
    this.networkAttachmentUri,
    this.pscAutoConnectionPolicyEnabled,
    this.pscAutoDnsEnabled,
    this.pscEnabled,
    this.pscWriteEndpointDnsEnabled,
    this.pscAutoConnections,
  });

  final TfArg<List<String>>? allowedConsumerProjects;

  final TfArg<String>? networkAttachmentUri;

  final TfArg<bool>? pscAutoConnectionPolicyEnabled;

  final TfArg<bool>? pscAutoDnsEnabled;

  final TfArg<bool>? pscEnabled;

  final TfArg<bool>? pscWriteEndpointDnsEnabled;

  final List<SqlDatabaseInstancePscAutoConnections>? pscAutoConnections;

  Map<String, Object?> encode() => {
    'allowed_consumer_projects': ?allowedConsumerProjects?.toTfJson(),
    'network_attachment_uri': ?networkAttachmentUri?.toTfJson(),
    'psc_auto_connection_policy_enabled': ?pscAutoConnectionPolicyEnabled
        ?.toTfJson(),
    'psc_auto_dns_enabled': ?pscAutoDnsEnabled?.toTfJson(),
    'psc_enabled': ?pscEnabled?.toTfJson(),
    'psc_write_endpoint_dns_enabled': ?pscWriteEndpointDnsEnabled?.toTfJson(),
    if (pscAutoConnections != null)
      'psc_auto_connections': [for (final e in pscAutoConnections!) e.encode()],
  };
}

/// Typed helper for the `settings.ip_configuration.psc_config.psc_auto_connections` block of
/// `google_sql_database_instance` (derived from provider schema).
@immutable
final class SqlDatabaseInstancePscAutoConnections {
  const SqlDatabaseInstancePscAutoConnections({
    required this.consumerNetwork,
    this.consumerServiceProjectId,
  });

  final RefTo<GoogleComputeNetwork> consumerNetwork;

  final TfArg<String>? consumerServiceProjectId;

  Map<String, Object?> encode() => {
    'consumer_network': consumerNetwork.encodeAs('id').toTfJson(),
    'consumer_service_project_id': ?consumerServiceProjectId?.toTfJson(),
  };
}

/// Typed helper for the `settings.location_preference` block of
/// `google_sql_database_instance` (derived from provider schema).
@immutable
final class SqlDatabaseInstanceLocationPreference {
  const SqlDatabaseInstanceLocationPreference({
    this.followGaeApplication,
    this.secondaryZone,
    this.zone,
  });

  final TfArg<String>? followGaeApplication;

  final TfArg<String>? secondaryZone;

  final TfArg<String>? zone;

  Map<String, Object?> encode() => {
    'follow_gae_application': ?followGaeApplication?.toTfJson(),
    'secondary_zone': ?secondaryZone?.toTfJson(),
    'zone': ?zone?.toTfJson(),
  };
}

/// Typed helper for the `settings.maintenance_window` block of
/// `google_sql_database_instance` (derived from provider schema).
@immutable
final class SqlDatabaseInstanceMaintenanceWindow {
  const SqlDatabaseInstanceMaintenanceWindow({
    this.day,
    this.hour,
    this.updateTrack,
  });

  final TfArg<num>? day;

  final TfArg<num>? hour;

  final TfArg<String>? updateTrack;

  Map<String, Object?> encode() => {
    'day': ?day?.toTfJson(),
    'hour': ?hour?.toTfJson(),
    'update_track': ?updateTrack?.toTfJson(),
  };
}

/// Typed helper for the `settings.password_validation_policy` block of
/// `google_sql_database_instance` (derived from provider schema).
@immutable
final class SqlDatabaseInstancePasswordValidationPolicy {
  const SqlDatabaseInstancePasswordValidationPolicy({
    this.complexity,
    this.disallowUsernameSubstring,
    required this.enablePasswordPolicy,
    this.minLength,
    this.passwordChangeInterval,
    this.reuseInterval,
  });

  final TfArg<String>? complexity;

  final TfArg<bool>? disallowUsernameSubstring;

  final TfArg<bool> enablePasswordPolicy;

  final TfArg<num>? minLength;

  final TfArg<String>? passwordChangeInterval;

  final TfArg<num>? reuseInterval;

  Map<String, Object?> encode() => {
    'complexity': ?complexity?.toTfJson(),
    'disallow_username_substring': ?disallowUsernameSubstring?.toTfJson(),
    'enable_password_policy': enablePasswordPolicy.toTfJson(),
    'min_length': ?minLength?.toTfJson(),
    'password_change_interval': ?passwordChangeInterval?.toTfJson(),
    'reuse_interval': ?reuseInterval?.toTfJson(),
  };
}

/// Typed helper for the `settings.read_pool_auto_scale_config` block of
/// `google_sql_database_instance` (derived from provider schema).
@immutable
final class SqlDatabaseInstanceReadPoolAutoScaleConfig {
  const SqlDatabaseInstanceReadPoolAutoScaleConfig({
    this.disableScaleIn,
    this.enabled,
    this.maxNodeCount,
    this.minNodeCount,
    this.scaleInCooldownSeconds,
    this.scaleOutCooldownSeconds,
    this.targetMetrics,
  });

  final TfArg<bool>? disableScaleIn;

  final TfArg<bool>? enabled;

  final TfArg<num>? maxNodeCount;

  final TfArg<num>? minNodeCount;

  final TfArg<num>? scaleInCooldownSeconds;

  final TfArg<num>? scaleOutCooldownSeconds;

  final List<SqlDatabaseInstanceTargetMetrics>? targetMetrics;

  Map<String, Object?> encode() => {
    'disable_scale_in': ?disableScaleIn?.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
    'max_node_count': ?maxNodeCount?.toTfJson(),
    'min_node_count': ?minNodeCount?.toTfJson(),
    'scale_in_cooldown_seconds': ?scaleInCooldownSeconds?.toTfJson(),
    'scale_out_cooldown_seconds': ?scaleOutCooldownSeconds?.toTfJson(),
    if (targetMetrics != null)
      'target_metrics': [for (final e in targetMetrics!) e.encode()],
  };
}

/// Typed helper for the `settings.read_pool_auto_scale_config.target_metrics` block of
/// `google_sql_database_instance` (derived from provider schema).
@immutable
final class SqlDatabaseInstanceTargetMetrics {
  const SqlDatabaseInstanceTargetMetrics({this.metric, this.targetValue});

  final TfArg<String>? metric;

  final TfArg<num>? targetValue;

  Map<String, Object?> encode() => {
    'metric': ?metric?.toTfJson(),
    'target_value': ?targetValue?.toTfJson(),
  };
}

/// Typed helper for the `settings.sql_server_audit_config` block of
/// `google_sql_database_instance` (derived from provider schema).
@immutable
final class SqlDatabaseInstanceSqlServerAuditConfig {
  const SqlDatabaseInstanceSqlServerAuditConfig({
    this.bucket,
    this.retentionInterval,
    this.uploadInterval,
  });

  final TfArg<String>? bucket;

  final TfArg<String>? retentionInterval;

  final TfArg<String>? uploadInterval;

  Map<String, Object?> encode() => {
    'bucket': ?bucket?.toTfJson(),
    'retention_interval': ?retentionInterval?.toTfJson(),
    'upload_interval': ?uploadInterval?.toTfJson(),
  };
}

/// Factory wrapper for `google_sql_database_instance`.
///
/// Manages a Cloud SQL instance — a managed MySQL, PostgreSQL, or SQL
/// Server engine. The schema is large; this wrapper exposes the
/// commonly-used fields as typed helpers ([SqlDatabaseInstanceSettings], [SqlDatabaseInstanceIpConfiguration],
/// [SqlDatabaseInstanceBackupConfiguration], [SqlDatabaseInstanceDatabaseFlags], [SqlDatabaseInstanceLocationPreference],
/// [SqlDatabaseInstanceMaintenanceWindow], [SqlDatabaseInstanceReplicaConfiguration]) and leaves the rarely-set
/// knobs (e.g. `active_directory_config`, `sql_server_audit_config`,
/// `password_validation_policy`) on the
/// [SqlDatabaseInstanceSettings.extra] / [SqlDatabaseInstanceSettings.advancedExtra] escape hatches so the
/// curation surface stays manageable.
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_sql_database_instance.`).
/// - `databaseVersion`: engine + major version (e.g.
///   [DatabaseVersion.postgres15], [DatabaseVersion.mysql80]). Forces
///   replacement when the major family changes (Postgres → MySQL etc.);
///   minor in-family upgrades are in-place.
///
/// Strongly recommended:
/// - `name`: instance name. When `null` Terraform picks a random one —
///   surprising in CI, set explicitly in production.
/// - `region`: GCP region (e.g. `'asia-northeast1'`). Falls back to the
///   provider's region.
/// - `settings.tier`: machine type (e.g. `'db-perf-optimized-N-2'`,
///   `'db-custom-2-7680'`, or the lower-cost `'db-f1-micro'` legacy
///   shared-core tier for dev).
///
/// Private-IP wiring (the canonical Wave 5 chain):
///
/// ```
/// google_compute_network              ┐
/// google_compute_global_address       ├─ build the peering bridge first
/// google_service_networking_connection┘
///                  ↓
/// google_sql_database_instance        ── private_network points at
///                                        the network above; ipv4Enabled
///                                        is false → private-only.
/// ```
///
/// Example (private-IP PostgreSQL primary — see the
/// `cloud_sql_quickstart` example for the full chain):
/// ```dart
/// final primary = GoogleSqlDatabaseInstance(
///   localName: 'primary',
///   name: TfArg.literal('orders-primary'),
///   databaseVersion: TfArg.literal(DatabaseVersion.postgres15),
///   region: TfArg.literal('asia-northeast1'),
///   deletionProtection: TfArg.literal(false), // dev / quickstart
///   settings: SqlDatabaseInstanceSettings(
///     tier: TfArg.literal('db-custom-2-7680'),
///     availabilityType: TfArg.literal(SqlAvailabilityType.regional),
///     edition: TfArg.literal(SqlEdition.enterprise),
///     diskSize: TfArg.literal(20),
///     diskType: TfArg.literal(SqlDiskType.pdSsd),
///     ipConfiguration: SqlDatabaseInstanceIpConfiguration(
///       ipv4Enabled: TfArg.literal(false),
///       privateNetwork: TfArg.ref(vpc.selfLink),
///     ),
///     backupConfiguration: SqlDatabaseInstanceBackupConfiguration(
///       enabled: TfArg.literal(true),
///       pointInTimeRecoveryEnabled: TfArg.literal(true),
///       startTime: TfArg.literal('03:00'),
///     ),
///   ),
/// );
/// ```
///
/// `root_password` is sensitive in the schema and round-trips through
/// the generated `sensitiveFields` set — synth masks it. Prefer
/// `root_password_wo` (write-only, never stored in state, requires
/// Terraform >= 1.11) for new deployments.
final class GoogleSqlDatabaseInstance extends Resource {
  static const String tfType = 'google_sql_database_instance';

  GoogleSqlDatabaseInstance({
    required super.localName,
    required TfArg<DatabaseVersion> databaseVersion,
    TfArg<String>? name,
    TfArg<String>? region,
    SqlDatabaseInstanceSettings? settings,
    TfArg<String>? rootPassword,
    TfArg<String>? rootPasswordWo,
    TfArg<String>? rootPasswordWoVersion,
    TfArg<bool>? deletionProtection,
    TfArg<String>? masterInstanceName,
    SqlDatabaseInstanceReplicaConfiguration? replicaConfiguration,
    TfArg<String>? instanceType,
    TfArg<num>? nodeCount,
    TfArg<String>? maintenanceVersion,
    RefTo<GoogleKmsCryptoKey>? encryptionKeyName,
    TfArg<List<String>>? replicaNames,
    TfArg<String>? finalBackupDescription,
    TfArg<String>? backupdrBackup,
    TfArg<String>? project,
    TfArg<bool>? enforceNewSqlNetworkArchitecture,
    TfArg<bool>? includeReplicasForMajorVersionUpgrade,
    TfArg<bool>? switchTransactionLogsToCloudStorageEnabled,
    SqlDatabaseInstanceClone? clone,
    SqlDatabaseInstancePointInTimeRestoreContext? pointInTimeRestoreContext,
    SqlDatabaseInstanceReplicationCluster? replicationCluster,
    SqlDatabaseInstanceRestoreBackupContext? restoreBackupContext,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'database_version': databaseVersion,
           'name': ?name,
           'region': ?region,
           if (settings != null) 'settings': TfArg.literal(settings.encode()),
           'root_password': ?rootPassword,
           'root_password_wo': ?rootPasswordWo,
           'root_password_wo_version': ?rootPasswordWoVersion,
           'deletion_protection': ?deletionProtection,
           'master_instance_name': ?masterInstanceName,
           if (replicaConfiguration != null)
             'replica_configuration': TfArg.literal(
               replicaConfiguration.encode(),
             ),
           'instance_type': ?instanceType,
           'node_count': ?nodeCount,
           'maintenance_version': ?maintenanceVersion,
           'encryption_key_name': ?encryptionKeyName?.encodeAs('id'),
           'replica_names': ?replicaNames,
           'final_backup_description': ?finalBackupDescription,
           'backupdr_backup': ?backupdrBackup,
           'project': ?project,
           'enforce_new_sql_network_architecture':
               ?enforceNewSqlNetworkArchitecture,
           'include_replicas_for_major_version_upgrade':
               ?includeReplicasForMajorVersionUpgrade,
           'switch_transaction_logs_to_cloud_storage_enabled':
               ?switchTransactionLogsToCloudStorageEnabled,
           if (clone != null) 'clone': TfArg.literal(clone.encode()),
           if (pointInTimeRestoreContext != null)
             'point_in_time_restore_context': TfArg.literal(
               pointInTimeRestoreContext.encode(),
             ),
           if (replicationCluster != null)
             'replication_cluster': TfArg.literal(replicationCluster.encode()),
           if (restoreBackupContext != null)
             'restore_backup_context': TfArg.literal(
               restoreBackupContext.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSqlDatabaseInstanceSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleSqlDatabaseInstance>`.
  RefTo<GoogleSqlDatabaseInstance> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `available_maintenance_versions` attribute.
  TfRef<List<String>> get availableMaintenanceVersions =>
      TfRef.attribute<List<String>>(this, 'available_maintenance_versions');

  /// Reference to `connection_name` attribute.
  TfRef<String> get connectionName =>
      TfRef.attribute<String>(this, 'connection_name');

  /// Reference to `dns_name` attribute.
  TfRef<String> get dnsName => TfRef.attribute<String>(this, 'dns_name');

  /// Reference to `dns_names` attribute.
  TfRef<List<Map<String, Object?>>> get dnsNames =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'dns_names');

  /// Reference to `first_ip_address` attribute.
  TfRef<String> get firstIpAddress =>
      TfRef.attribute<String>(this, 'first_ip_address');

  /// Reference to `ip_address` attribute.
  TfRef<List<Map<String, Object?>>> get ipAddress =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'ip_address');

  /// Reference to `private_ip_address` attribute.
  TfRef<String> get privateIpAddress =>
      TfRef.attribute<String>(this, 'private_ip_address');

  /// Reference to `psc_service_attachment_link` attribute.
  TfRef<String> get pscServiceAttachmentLink =>
      TfRef.attribute<String>(this, 'psc_service_attachment_link');

  /// Reference to `public_ip_address` attribute.
  TfRef<String> get publicIpAddress =>
      TfRef.attribute<String>(this, 'public_ip_address');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `server_ca_cert` attribute.
  TfRef<List<Map<String, Object?>>> get serverCaCert =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'server_ca_cert');

  /// Reference to `service_account_email_address` attribute.
  TfRef<String> get serviceAccountEmailAddress =>
      TfRef.attribute<String>(this, 'service_account_email_address');

  /// Reference to `backupdr_backup` attribute.
  TfRef<String> get backupdrBackupRef =>
      TfRef.attribute<String>(this, 'backupdr_backup');

  /// Reference to `database_version` attribute.
  TfRef<String> get databaseVersionRef =>
      TfRef.attribute<String>(this, 'database_version');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deletion_protection` attribute.
  TfRef<bool> get deletionProtectionRef =>
      TfRef.attribute<bool>(this, 'deletion_protection');

  /// Reference to `encryption_key_name` attribute.
  TfRef<String> get encryptionKeyNameRef =>
      TfRef.attribute<String>(this, 'encryption_key_name');

  /// Reference to `enforce_new_sql_network_architecture` attribute.
  TfRef<bool> get enforceNewSqlNetworkArchitectureRef =>
      TfRef.attribute<bool>(this, 'enforce_new_sql_network_architecture');

  /// Reference to `final_backup_description` attribute.
  TfRef<String> get finalBackupDescriptionRef =>
      TfRef.attribute<String>(this, 'final_backup_description');

  /// Reference to `include_replicas_for_major_version_upgrade` attribute.
  TfRef<bool> get includeReplicasForMajorVersionUpgradeRef =>
      TfRef.attribute<bool>(this, 'include_replicas_for_major_version_upgrade');

  /// Reference to `instance_type` attribute.
  TfRef<String> get instanceTypeRef =>
      TfRef.attribute<String>(this, 'instance_type');

  /// Reference to `maintenance_version` attribute.
  TfRef<String> get maintenanceVersionRef =>
      TfRef.attribute<String>(this, 'maintenance_version');

  /// Reference to `master_instance_name` attribute.
  TfRef<String> get masterInstanceNameRef =>
      TfRef.attribute<String>(this, 'master_instance_name');

  /// Reference to `node_count` attribute.
  TfRef<num> get nodeCountRef => TfRef.attribute<num>(this, 'node_count');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `replica_names` attribute.
  TfRef<List<String>> get replicaNamesRef =>
      TfRef.attribute<List<String>>(this, 'replica_names');

  /// Reference to `root_password` attribute.
  TfRef<String> get rootPasswordRef =>
      TfRef.attribute<String>(this, 'root_password');

  /// Reference to `root_password_wo_version` attribute.
  TfRef<String> get rootPasswordWoVersionRef =>
      TfRef.attribute<String>(this, 'root_password_wo_version');

  /// Reference to `switch_transaction_logs_to_cloud_storage_enabled` attribute.
  TfRef<bool> get switchTransactionLogsToCloudStorageEnabledRef =>
      TfRef.attribute<bool>(
        this,
        'switch_transaction_logs_to_cloud_storage_enabled',
      );
}
