// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../oracle/google_oracle_database_exascale_db_storage_vault.dart'
    show GoogleOracleDatabaseExascaleDbStorageVault;
import '../oracle/google_oracle_database_odb_network.dart'
    show GoogleOracleDatabaseOdbNetwork;
import '../oracle/google_oracle_database_odb_subnet.dart'
    show GoogleOracleDatabaseOdbSubnet;

/// Sensitive field paths for `google_oracle_database_exadb_vm_cluster`.
const Set<String> _googleOracleDatabaseExadbVmClusterSensitive = <String>{};

/// Terraform `deletion_policy` for ExaDB VM clusters.
enum OracleDatabaseExadbVmClusterDeletionPolicy implements TerraformEnum {
  delete('DELETE'),
  prevent('PREVENT'),
  abandon('ABANDON');

  const OracleDatabaseExadbVmClusterDeletionPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `properties` block of
/// `google_oracle_database_exadb_vm_cluster` (derived from provider schema).
@immutable
final class OracleDatabaseExadbVmClusterProperties {
  const OracleDatabaseExadbVmClusterProperties({
    this.additionalEcpuCountPerNode,
    this.clusterName,
    required this.enabledEcpuCountPerNode,
    required this.exascaleDbStorageVault,
    required this.gridImageId,
    required this.hostnamePrefix,
    this.licenseModel,
    required this.nodeCount,
    this.scanListenerPortTcp,
    required this.shapeAttribute,
    required this.sshPublicKeys,
    this.dataCollectionOptions,
    this.timeZone,
    required this.vmFileSystemStorage,
  });

  final TfArg<num>? additionalEcpuCountPerNode;

  final TfArg<String>? clusterName;

  final TfArg<num> enabledEcpuCountPerNode;

  final RefTo<GoogleOracleDatabaseExascaleDbStorageVault>
  exascaleDbStorageVault;

  final TfArg<String> gridImageId;

  final TfArg<String> hostnamePrefix;

  final TfArg<String>? licenseModel;

  final TfArg<num> nodeCount;

  final TfArg<num>? scanListenerPortTcp;

  final TfArg<String> shapeAttribute;

  final TfArg<List<String>> sshPublicKeys;

  final OracleDatabaseExadbVmClusterDataCollectionOptions?
  dataCollectionOptions;

  final OracleDatabaseExadbVmClusterTimeZone? timeZone;

  final OracleDatabaseExadbVmClusterVmFileSystemStorage vmFileSystemStorage;

  Map<String, Object?> encode() => {
    'additional_ecpu_count_per_node': ?additionalEcpuCountPerNode?.toTfJson(),
    'cluster_name': ?clusterName?.toTfJson(),
    'enabled_ecpu_count_per_node': enabledEcpuCountPerNode.toTfJson(),
    'exascale_db_storage_vault': exascaleDbStorageVault
        .encodeAs('id')
        .toTfJson(),
    'grid_image_id': gridImageId.toTfJson(),
    'hostname_prefix': hostnamePrefix.toTfJson(),
    'license_model': ?licenseModel?.toTfJson(),
    'node_count': nodeCount.toTfJson(),
    'scan_listener_port_tcp': ?scanListenerPortTcp?.toTfJson(),
    'shape_attribute': shapeAttribute.toTfJson(),
    'ssh_public_keys': sshPublicKeys.toTfJson(),
    'data_collection_options': ?dataCollectionOptions?.encode(),
    'time_zone': ?timeZone?.encode(),
    'vm_file_system_storage': vmFileSystemStorage.encode(),
  };
}

/// Typed helper for the `properties.data_collection_options` block of
/// `google_oracle_database_exadb_vm_cluster` (derived from provider schema).
@immutable
final class OracleDatabaseExadbVmClusterDataCollectionOptions {
  const OracleDatabaseExadbVmClusterDataCollectionOptions({
    this.isDiagnosticsEventsEnabled,
    this.isHealthMonitoringEnabled,
    this.isIncidentLogsEnabled,
  });

  final TfArg<bool>? isDiagnosticsEventsEnabled;

  final TfArg<bool>? isHealthMonitoringEnabled;

  final TfArg<bool>? isIncidentLogsEnabled;

  Map<String, Object?> encode() => {
    'is_diagnostics_events_enabled': ?isDiagnosticsEventsEnabled?.toTfJson(),
    'is_health_monitoring_enabled': ?isHealthMonitoringEnabled?.toTfJson(),
    'is_incident_logs_enabled': ?isIncidentLogsEnabled?.toTfJson(),
  };
}

/// Typed helper for the `properties.time_zone` block of
/// `google_oracle_database_exadb_vm_cluster` (derived from provider schema).
@immutable
final class OracleDatabaseExadbVmClusterTimeZone {
  const OracleDatabaseExadbVmClusterTimeZone({this.id, this.version});

  final TfArg<String>? id;

  final TfArg<String>? version;

  Map<String, Object?> encode() => {
    'id': ?id?.toTfJson(),
    'version': ?version?.toTfJson(),
  };
}

/// Typed helper for the `properties.vm_file_system_storage` block of
/// `google_oracle_database_exadb_vm_cluster` (derived from provider schema).
@immutable
final class OracleDatabaseExadbVmClusterVmFileSystemStorage {
  const OracleDatabaseExadbVmClusterVmFileSystemStorage({
    required this.sizeInGbsPerNode,
  });

  final TfArg<num> sizeInGbsPerNode;

  Map<String, Object?> encode() => {
    'size_in_gbs_per_node': sizeInGbsPerNode.toTfJson(),
  };
}

/// Factory wrapper for `google_oracle_database_exadb_vm_cluster`.
///
/// Description
///
/// Oracle Exadata VM cluster (ExaDB) on Oracle Database@Google Cloud.
///
/// Enable `oracledatabase.googleapis.com` before apply. Requires client and
/// backup [odb_subnet] refs plus [properties] with Exascale vault wiring,
/// `shape_attribute`, and SSH public keys.
final class GoogleOracleDatabaseExadbVmCluster extends Resource {
  static const String tfType = 'google_oracle_database_exadb_vm_cluster';

  GoogleOracleDatabaseExadbVmCluster({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> exadbVmClusterId,
    required TfArg<String> displayName,
    required RefTo<GoogleOracleDatabaseOdbSubnet> odbSubnet,
    required RefTo<GoogleOracleDatabaseOdbSubnet> backupOdbSubnet,
    RefTo<GoogleOracleDatabaseOdbNetwork>? odbNetwork,
    required OracleDatabaseExadbVmClusterProperties properties,
    TfArg<Map<String, String>>? labels,
    TfArg<OracleDatabaseExadbVmClusterDeletionPolicy>? deletionPolicy,
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
           'exadb_vm_cluster_id': exadbVmClusterId,
           'display_name': displayName,
           'odb_subnet': odbSubnet.encodeAs('name'),
           'backup_odb_subnet': backupOdbSubnet.encodeAs('name'),
           'odb_network': ?odbNetwork?.encodeAs('name'),
           'properties': TfArg.literal(properties.encode()),
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'deletion_protection': ?deletionProtection,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleOracleDatabaseExadbVmClusterSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleOracleDatabaseExadbVmCluster>`.
  RefTo<GoogleOracleDatabaseExadbVmCluster> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `entitlement_id` attribute.
  TfRef<String> get entitlementId =>
      TfRef.attribute<String>(this, 'entitlement_id');

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

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deletion_protection` attribute.
  TfRef<bool> get deletionProtection =>
      TfRef.attribute<bool>(this, 'deletion_protection');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `exadb_vm_cluster_id` attribute.
  TfRef<String> get exadbVmClusterId =>
      TfRef.attribute<String>(this, 'exadb_vm_cluster_id');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `odb_network` attribute.
  TfRef<String> get odbNetwork => TfRef.attribute<String>(this, 'odb_network');

  /// Reference to `odb_subnet` attribute.
  TfRef<String> get odbSubnet => TfRef.attribute<String>(this, 'odb_subnet');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
