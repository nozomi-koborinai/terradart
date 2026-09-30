// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_odb_cloud_vm_cluster`.
const Set<String> _awsOdbCloudVmClusterSensitive = <String>{};

/// Typed helper for the `data_collection_options` block of
/// `aws_odb_cloud_vm_cluster` (derived from provider schema).
@immutable
final class OdbCloudVmClusterDataCollectionOptions {
  const OdbCloudVmClusterDataCollectionOptions({
    required this.isDiagnosticsEventsEnabled,
    required this.isHealthMonitoringEnabled,
    required this.isIncidentLogsEnabled,
  });

  final TfArg<bool> isDiagnosticsEventsEnabled;

  final TfArg<bool> isHealthMonitoringEnabled;

  final TfArg<bool> isIncidentLogsEnabled;

  Map<String, Object?> encode() => {
    'is_diagnostics_events_enabled': isDiagnosticsEventsEnabled.toTfJson(),
    'is_health_monitoring_enabled': isHealthMonitoringEnabled.toTfJson(),
    'is_incident_logs_enabled': isIncidentLogsEnabled.toTfJson(),
  };
}

/// Factory wrapper for `aws_odb_cloud_vm_cluster`.
final class AwsOdbCloudVmCluster extends Resource {
  static const String tfType = 'aws_odb_cloud_vm_cluster';

  AwsOdbCloudVmCluster({
    required super.localName,
    TfArg<String>? cloudExadataInfrastructureArn,
    TfArg<String>? cloudExadataInfrastructureId,
    TfArg<String>? clusterName,
    required TfArg<num> cpuCoreCount,
    required TfArg<num> dataStorageSizeInTbs,
    TfArg<num>? dbNodeStorageSizeInGbs,
    required TfArg<List<String>> dbServers,
    required TfArg<String> displayName,
    required TfArg<String> giVersion,
    required TfArg<String> hostnamePrefix,
    TfArg<bool>? isLocalBackupEnabled,
    TfArg<bool>? isSparseDiskgroupEnabled,
    TfArg<String>? licenseModel,
    TfArg<num>? memorySizeInGbs,
    TfArg<String>? odbNetworkArn,
    TfArg<String>? odbNetworkId,
    TfArg<String>? region,
    TfArg<num>? scanListenerPortTcp,
    required TfArg<List<String>> sshPublicKeys,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? timezone,
    List<OdbCloudVmClusterDataCollectionOptions>? dataCollectionOptions,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cloud_exadata_infrastructure_arn': ?cloudExadataInfrastructureArn,
           'cloud_exadata_infrastructure_id': ?cloudExadataInfrastructureId,
           'cluster_name': ?clusterName,
           'cpu_core_count': cpuCoreCount,
           'data_storage_size_in_tbs': dataStorageSizeInTbs,
           'db_node_storage_size_in_gbs': ?dbNodeStorageSizeInGbs,
           'db_servers': dbServers,
           'display_name': displayName,
           'gi_version': giVersion,
           'hostname_prefix': hostnamePrefix,
           'is_local_backup_enabled': ?isLocalBackupEnabled,
           'is_sparse_diskgroup_enabled': ?isSparseDiskgroupEnabled,
           'license_model': ?licenseModel,
           'memory_size_in_gbs': ?memorySizeInGbs,
           'odb_network_arn': ?odbNetworkArn,
           'odb_network_id': ?odbNetworkId,
           'region': ?region,
           'scan_listener_port_tcp': ?scanListenerPortTcp,
           'ssh_public_keys': sshPublicKeys,
           'tags': ?tags,
           'timezone': ?timezone,
           if (dataCollectionOptions != null)
             'data_collection_options': TfArg.literal([
               for (final e in dataCollectionOptions) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsOdbCloudVmClusterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsOdbCloudVmCluster>`.
  RefTo<AwsOdbCloudVmCluster> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `compute_model` attribute.
  TfRef<String> get computeModel =>
      TfRef.attribute<String>(this, 'compute_model');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `disk_redundancy` attribute.
  TfRef<String> get diskRedundancy =>
      TfRef.attribute<String>(this, 'disk_redundancy');

  /// Reference to `domain` attribute.
  TfRef<String> get domain => TfRef.attribute<String>(this, 'domain');

  /// Reference to `gi_version_computed` attribute.
  TfRef<String> get giVersionComputed =>
      TfRef.attribute<String>(this, 'gi_version_computed');

  /// Reference to `hostname_prefix_computed` attribute.
  TfRef<String> get hostnamePrefixComputed =>
      TfRef.attribute<String>(this, 'hostname_prefix_computed');

  /// Reference to `iorm_config_cache` attribute.
  TfRef<List<Map<String, Object?>>> get iormConfigCache =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'iorm_config_cache');

  /// Reference to `last_update_history_entry_id` attribute.
  TfRef<String> get lastUpdateHistoryEntryId =>
      TfRef.attribute<String>(this, 'last_update_history_entry_id');

  /// Reference to `listener_port` attribute.
  TfRef<num> get listenerPort => TfRef.attribute<num>(this, 'listener_port');

  /// Reference to `node_count` attribute.
  TfRef<num> get nodeCount => TfRef.attribute<num>(this, 'node_count');

  /// Reference to `oci_resource_anchor_name` attribute.
  TfRef<String> get ociResourceAnchorName =>
      TfRef.attribute<String>(this, 'oci_resource_anchor_name');

  /// Reference to `oci_url` attribute.
  TfRef<String> get ociUrl => TfRef.attribute<String>(this, 'oci_url');

  /// Reference to `ocid` attribute.
  TfRef<String> get ocid => TfRef.attribute<String>(this, 'ocid');

  /// Reference to `percent_progress` attribute.
  TfRef<num> get percentProgress =>
      TfRef.attribute<num>(this, 'percent_progress');

  /// Reference to `scan_dns_name` attribute.
  TfRef<String> get scanDnsName =>
      TfRef.attribute<String>(this, 'scan_dns_name');

  /// Reference to `scan_dns_record_id` attribute.
  TfRef<String> get scanDnsRecordId =>
      TfRef.attribute<String>(this, 'scan_dns_record_id');

  /// Reference to `scan_ip_ids` attribute.
  TfRef<List<String>> get scanIpIds =>
      TfRef.attribute<List<String>>(this, 'scan_ip_ids');

  /// Reference to `shape` attribute.
  TfRef<String> get shape => TfRef.attribute<String>(this, 'shape');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `status_reason` attribute.
  TfRef<String> get statusReason =>
      TfRef.attribute<String>(this, 'status_reason');

  /// Reference to `storage_size_in_gbs` attribute.
  TfRef<num> get storageSizeInGbs =>
      TfRef.attribute<num>(this, 'storage_size_in_gbs');

  /// Reference to `system_version` attribute.
  TfRef<String> get systemVersion =>
      TfRef.attribute<String>(this, 'system_version');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `vip_ids` attribute.
  TfRef<List<String>> get vipIds =>
      TfRef.attribute<List<String>>(this, 'vip_ids');

  /// Reference to `cloud_exadata_infrastructure_arn` attribute.
  TfRef<String> get cloudExadataInfrastructureArnRef =>
      TfRef.attribute<String>(this, 'cloud_exadata_infrastructure_arn');

  /// Reference to `cloud_exadata_infrastructure_id` attribute.
  TfRef<String> get cloudExadataInfrastructureIdRef =>
      TfRef.attribute<String>(this, 'cloud_exadata_infrastructure_id');

  /// Reference to `cluster_name` attribute.
  TfRef<String> get clusterNameRef =>
      TfRef.attribute<String>(this, 'cluster_name');

  /// Reference to `cpu_core_count` attribute.
  TfRef<num> get cpuCoreCountRef =>
      TfRef.attribute<num>(this, 'cpu_core_count');

  /// Reference to `data_storage_size_in_tbs` attribute.
  TfRef<num> get dataStorageSizeInTbsRef =>
      TfRef.attribute<num>(this, 'data_storage_size_in_tbs');

  /// Reference to `db_node_storage_size_in_gbs` attribute.
  TfRef<num> get dbNodeStorageSizeInGbsRef =>
      TfRef.attribute<num>(this, 'db_node_storage_size_in_gbs');

  /// Reference to `db_servers` attribute.
  TfRef<List<String>> get dbServersRef =>
      TfRef.attribute<List<String>>(this, 'db_servers');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayNameRef =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `gi_version` attribute.
  TfRef<String> get giVersionRef => TfRef.attribute<String>(this, 'gi_version');

  /// Reference to `hostname_prefix` attribute.
  TfRef<String> get hostnamePrefixRef =>
      TfRef.attribute<String>(this, 'hostname_prefix');

  /// Reference to `is_local_backup_enabled` attribute.
  TfRef<bool> get isLocalBackupEnabledRef =>
      TfRef.attribute<bool>(this, 'is_local_backup_enabled');

  /// Reference to `is_sparse_diskgroup_enabled` attribute.
  TfRef<bool> get isSparseDiskgroupEnabledRef =>
      TfRef.attribute<bool>(this, 'is_sparse_diskgroup_enabled');

  /// Reference to `license_model` attribute.
  TfRef<String> get licenseModelRef =>
      TfRef.attribute<String>(this, 'license_model');

  /// Reference to `memory_size_in_gbs` attribute.
  TfRef<num> get memorySizeInGbsRef =>
      TfRef.attribute<num>(this, 'memory_size_in_gbs');

  /// Reference to `odb_network_arn` attribute.
  TfRef<String> get odbNetworkArnRef =>
      TfRef.attribute<String>(this, 'odb_network_arn');

  /// Reference to `odb_network_id` attribute.
  TfRef<String> get odbNetworkIdRef =>
      TfRef.attribute<String>(this, 'odb_network_id');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `scan_listener_port_tcp` attribute.
  TfRef<num> get scanListenerPortTcpRef =>
      TfRef.attribute<num>(this, 'scan_listener_port_tcp');

  /// Reference to `ssh_public_keys` attribute.
  TfRef<List<String>> get sshPublicKeysRef =>
      TfRef.attribute<List<String>>(this, 'ssh_public_keys');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `timezone` attribute.
  TfRef<String> get timezoneRef => TfRef.attribute<String>(this, 'timezone');
}
