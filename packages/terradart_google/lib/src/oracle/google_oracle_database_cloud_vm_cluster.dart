// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;
import '../oracle/google_oracle_database_cloud_exadata_infrastructure.dart'
    show GoogleOracleDatabaseCloudExadataInfrastructure;
import '../oracle/google_oracle_database_exascale_db_storage_vault.dart'
    show GoogleOracleDatabaseExascaleDbStorageVault;
import '../oracle/google_oracle_database_odb_network.dart'
    show GoogleOracleDatabaseOdbNetwork;
import '../oracle/google_oracle_database_odb_subnet.dart'
    show GoogleOracleDatabaseOdbSubnet;

/// Sensitive field paths for `google_oracle_database_cloud_vm_cluster`.
const Set<String> _googleOracleDatabaseCloudVmClusterSensitive = <String>{};

/// Terraform `deletion_policy` for Cloud VM clusters.
extension type const OracleDatabaseCloudVmClusterDeletionPolicy._(
  TfArg<String> _
) implements TfArg<String> {
  OracleDatabaseCloudVmClusterDeletionPolicy.variable(String name)
    : this._(TfArg.variable(name));
  OracleDatabaseCloudVmClusterDeletionPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const OracleDatabaseCloudVmClusterDeletionPolicy.arg(TfArg<String> arg)
    : this._(arg);

  static const delete = OracleDatabaseCloudVmClusterDeletionPolicy._(
    TfArgLiteral('DELETE'),
  );
  static const prevent = OracleDatabaseCloudVmClusterDeletionPolicy._(
    TfArgLiteral('PREVENT'),
  );
  static const abandon = OracleDatabaseCloudVmClusterDeletionPolicy._(
    TfArgLiteral('ABANDON'),
  );

  static const List<OracleDatabaseCloudVmClusterDeletionPolicy> values = [
    delete,
    prevent,
    abandon,
  ];
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

  GoogleOracleDatabaseCloudVmCluster(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> cloudVmClusterId,
    TfArg<String>? displayName,
    required RefTo<GoogleOracleDatabaseCloudExadataInfrastructure>
    exadataInfrastructure,
    RefTo<GoogleOracleDatabaseOdbNetwork>? odbNetwork,
    RefTo<GoogleOracleDatabaseOdbSubnet>? odbSubnet,
    RefTo<GoogleOracleDatabaseOdbSubnet>? backupOdbSubnet,
    OracleDatabaseCloudVmClusterProperties? properties,
    TfArg<Map<String, String>>? labels,
    OracleDatabaseCloudVmClusterDeletionPolicy? deletionPolicy,
    TfArg<bool>? deletionProtection,
    TfArg<String>? project,
    TfArg<String>? backupSubnetCidr,
    TfArg<String>? cidr,
    RefTo<GoogleOracleDatabaseExascaleDbStorageVault>? exascaleDbStorageVault,
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
           'exadata_infrastructure': exadataInfrastructure.encodeAs('id'),
           'odb_network': ?odbNetwork?.encodeAs('name'),
           'odb_subnet': ?odbSubnet?.encodeAs('name'),
           'backup_odb_subnet': ?backupOdbSubnet?.encodeAs('name'),
           if (properties != null)
             'properties': TfArg.literal(properties.encode()),
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'deletion_protection': ?deletionProtection,
           'project': ?project,
           'backup_subnet_cidr': ?backupSubnetCidr,
           'cidr': ?cidr,
           'exascale_db_storage_vault': ?exascaleDbStorageVault?.encodeAs('id'),
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

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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
  TfRef<String> get backupOdbSubnet =>
      TfRef.attribute<String>(this, 'backup_odb_subnet');

  /// Reference to `backup_subnet_cidr` attribute.
  TfRef<String> get backupSubnetCidr =>
      TfRef.attribute<String>(this, 'backup_subnet_cidr');

  /// Reference to `cidr` attribute.
  TfRef<String> get cidr => TfRef.attribute<String>(this, 'cidr');

  /// Reference to `cloud_vm_cluster_id` attribute.
  TfRef<String> get cloudVmClusterId =>
      TfRef.attribute<String>(this, 'cloud_vm_cluster_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deletion_protection` attribute.
  TfRef<bool> get deletionProtection =>
      TfRef.attribute<bool>(this, 'deletion_protection');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `exadata_infrastructure` attribute.
  TfRef<String> get exadataInfrastructure =>
      TfRef.attribute<String>(this, 'exadata_infrastructure');

  /// Reference to `exascale_db_storage_vault` attribute.
  TfRef<String> get exascaleDbStorageVault =>
      TfRef.attribute<String>(this, 'exascale_db_storage_vault');

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
