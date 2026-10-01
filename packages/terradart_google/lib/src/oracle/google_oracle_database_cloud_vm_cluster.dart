// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;

/// Sensitive field paths for `google_oracle_database_cloud_vm_cluster`.
const Set<String> _googleOracleDatabaseCloudVmClusterSensitive = <String>{};

/// Terraform `deletion_policy` for Cloud VM clusters.
enum OracleDatabaseCloudVmClusterDeletionPolicy implements TerraformEnum {
  delete('DELETE'),
  prevent('PREVENT'),
  abandon('ABANDON');

  const OracleDatabaseCloudVmClusterDeletionPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `properties` block of
/// `google_oracle_database_cloud_vm_cluster` (derived from provider schema).
@immutable
final class OracleDatabaseCloudVmClusterProperties {
  const OracleDatabaseCloudVmClusterProperties({
    this.clusterName,
    required this.cpuCoreCount,
    this.dataStorageSizeTb,
    this.dbNodeStorageSizeGb,
    this.dbServerOcids,
    this.diskRedundancy,
    this.giVersion,
    this.hostnamePrefix,
    required this.licenseType,
    this.localBackupEnabled,
    this.memorySizeGb,
    this.nodeCount,
    this.ocpuCount,
    this.sparseDiskgroupEnabled,
    this.sshPublicKeys,
    this.diagnosticsDataCollectionOptions,
    this.timeZone,
  });

  final TfArg<String>? clusterName;

  final TfArg<num> cpuCoreCount;

  final TfArg<num>? dataStorageSizeTb;

  final TfArg<num>? dbNodeStorageSizeGb;

  final TfArg<List<String>>? dbServerOcids;

  final TfArg<String>? diskRedundancy;

  final TfArg<String>? giVersion;

  final TfArg<String>? hostnamePrefix;

  final TfArg<String> licenseType;

  final TfArg<bool>? localBackupEnabled;

  final TfArg<num>? memorySizeGb;

  final TfArg<num>? nodeCount;

  final TfArg<num>? ocpuCount;

  final TfArg<bool>? sparseDiskgroupEnabled;

  final TfArg<List<String>>? sshPublicKeys;

  final OracleDatabaseCloudVmClusterDiagnosticsDataCollectionOptions?
  diagnosticsDataCollectionOptions;

  final OracleDatabaseCloudVmClusterTimeZone? timeZone;

  Map<String, Object?> encode() => {
    'cluster_name': ?clusterName?.toTfJson(),
    'cpu_core_count': cpuCoreCount.toTfJson(),
    'data_storage_size_tb': ?dataStorageSizeTb?.toTfJson(),
    'db_node_storage_size_gb': ?dbNodeStorageSizeGb?.toTfJson(),
    'db_server_ocids': ?dbServerOcids?.toTfJson(),
    'disk_redundancy': ?diskRedundancy?.toTfJson(),
    'gi_version': ?giVersion?.toTfJson(),
    'hostname_prefix': ?hostnamePrefix?.toTfJson(),
    'license_type': licenseType.toTfJson(),
    'local_backup_enabled': ?localBackupEnabled?.toTfJson(),
    'memory_size_gb': ?memorySizeGb?.toTfJson(),
    'node_count': ?nodeCount?.toTfJson(),
    'ocpu_count': ?ocpuCount?.toTfJson(),
    'sparse_diskgroup_enabled': ?sparseDiskgroupEnabled?.toTfJson(),
    'ssh_public_keys': ?sshPublicKeys?.toTfJson(),
    'diagnostics_data_collection_options': ?diagnosticsDataCollectionOptions
        ?.encode(),
    'time_zone': ?timeZone?.encode(),
  };
}

/// Typed helper for the `properties.diagnostics_data_collection_options` block of
/// `google_oracle_database_cloud_vm_cluster` (derived from provider schema).
@immutable
final class OracleDatabaseCloudVmClusterDiagnosticsDataCollectionOptions {
  const OracleDatabaseCloudVmClusterDiagnosticsDataCollectionOptions({
    this.diagnosticsEventsEnabled,
    this.healthMonitoringEnabled,
    this.incidentLogsEnabled,
  });

  final TfArg<bool>? diagnosticsEventsEnabled;

  final TfArg<bool>? healthMonitoringEnabled;

  final TfArg<bool>? incidentLogsEnabled;

  Map<String, Object?> encode() => {
    'diagnostics_events_enabled': ?diagnosticsEventsEnabled?.toTfJson(),
    'health_monitoring_enabled': ?healthMonitoringEnabled?.toTfJson(),
    'incident_logs_enabled': ?incidentLogsEnabled?.toTfJson(),
  };
}

/// Typed helper for the `properties.time_zone` block of
/// `google_oracle_database_cloud_vm_cluster` (derived from provider schema).
@immutable
final class OracleDatabaseCloudVmClusterTimeZone {
  const OracleDatabaseCloudVmClusterTimeZone({this.id, this.version});

  final TfArg<String>? id;

  final TfArg<String>? version;

  Map<String, Object?> encode() => {
    'id': ?id?.toTfJson(),
    'version': ?version?.toTfJson(),
  };
}

/// Factory wrapper for `google_oracle_database_cloud_vm_cluster`.
///
/// A CloudVmCluster resource.
///
/// Oracle Exadata VM cluster on Oracle Database@Google Cloud.
///
/// Enable `oracledatabase.googleapis.com` before apply. Requires
/// [exadata_infrastructure] from [GoogleOracleDatabaseCloudExadataInfrastructure].
/// For ODB networking, wire [odb_network], [odb_subnet], and
/// [backup_odb_subnet] to [GoogleOracleDatabaseOdbNetwork] / subnet refs.
final class GoogleOracleDatabaseCloudVmCluster extends Resource {
  static const String tfType = 'google_oracle_database_cloud_vm_cluster';

  GoogleOracleDatabaseCloudVmCluster({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> cloudVmClusterId,
    TfArg<String>? displayName,
    required TfArg<String> exadataInfrastructure,
    TfArg<String>? odbNetwork,
    TfArg<String>? odbSubnet,
    TfArg<String>? backupOdbSubnet,
    OracleDatabaseCloudVmClusterProperties? properties,
    TfArg<Map<String, String>>? labels,
    TfArg<OracleDatabaseCloudVmClusterDeletionPolicy>? deletionPolicy,
    TfArg<bool>? deletionProtection,
    TfArg<String>? project,
    TfArg<String>? backupSubnetCidr,
    TfArg<String>? cidr,
    TfArg<String>? exascaleDbStorageVault,
    RefTo<GoogleComputeNetwork>? network,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'cloud_vm_cluster_id': cloudVmClusterId,
           'display_name': ?displayName,
           'exadata_infrastructure': exadataInfrastructure,
           'odb_network': ?odbNetwork,
           'odb_subnet': ?odbSubnet,
           'backup_odb_subnet': ?backupOdbSubnet,
           if (properties != null)
             'properties': TfArg.literal(properties.encode()),
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'deletion_protection': ?deletionProtection,
           'project': ?project,
           'backup_subnet_cidr': ?backupSubnetCidr,
           'cidr': ?cidr,
           'exascale_db_storage_vault': ?exascaleDbStorageVault,
           'network': ?network?.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleOracleDatabaseCloudVmClusterSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleOracleDatabaseCloudVmCluster>`.
  RefTo<GoogleOracleDatabaseCloudVmCluster> get ref => RefTo.of(this);

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `gcp_oracle_zone` attribute.
  TfRef<String> get gcpOracleZone =>
      TfRef.attribute<String>(this, 'gcp_oracle_zone');

  /// Reference to `identity_connector` attribute.
  TfRef<List<Map<String, Object?>>> get identityConnector =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'identity_connector');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `backup_odb_subnet` attribute.
  TfRef<String> get backupOdbSubnetRef =>
      TfRef.attribute<String>(this, 'backup_odb_subnet');

  /// Reference to `backup_subnet_cidr` attribute.
  TfRef<String> get backupSubnetCidrRef =>
      TfRef.attribute<String>(this, 'backup_subnet_cidr');

  /// Reference to `cidr` attribute.
  TfRef<String> get cidrRef => TfRef.attribute<String>(this, 'cidr');

  /// Reference to `cloud_vm_cluster_id` attribute.
  TfRef<String> get cloudVmClusterIdRef =>
      TfRef.attribute<String>(this, 'cloud_vm_cluster_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deletion_protection` attribute.
  TfRef<bool> get deletionProtectionRef =>
      TfRef.attribute<bool>(this, 'deletion_protection');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayNameRef =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `exadata_infrastructure` attribute.
  TfRef<String> get exadataInfrastructureRef =>
      TfRef.attribute<String>(this, 'exadata_infrastructure');

  /// Reference to `exascale_db_storage_vault` attribute.
  TfRef<String> get exascaleDbStorageVaultRef =>
      TfRef.attribute<String>(this, 'exascale_db_storage_vault');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `network` attribute.
  TfRef<String> get networkRef => TfRef.attribute<String>(this, 'network');

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
