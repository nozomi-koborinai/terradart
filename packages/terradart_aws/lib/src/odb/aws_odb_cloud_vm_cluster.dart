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
           if (cloudExadataInfrastructureArn != null)
             'cloud_exadata_infrastructure_arn': cloudExadataInfrastructureArn,
           if (cloudExadataInfrastructureId != null)
             'cloud_exadata_infrastructure_id': cloudExadataInfrastructureId,
           if (clusterName != null) 'cluster_name': clusterName,
           'cpu_core_count': cpuCoreCount,
           'data_storage_size_in_tbs': dataStorageSizeInTbs,
           if (dbNodeStorageSizeInGbs != null)
             'db_node_storage_size_in_gbs': dbNodeStorageSizeInGbs,
           'db_servers': dbServers,
           'display_name': displayName,
           'gi_version': giVersion,
           'hostname_prefix': hostnamePrefix,
           if (isLocalBackupEnabled != null)
             'is_local_backup_enabled': isLocalBackupEnabled,
           if (isSparseDiskgroupEnabled != null)
             'is_sparse_diskgroup_enabled': isSparseDiskgroupEnabled,
           if (licenseModel != null) 'license_model': licenseModel,
           if (memorySizeInGbs != null) 'memory_size_in_gbs': memorySizeInGbs,
           if (odbNetworkArn != null) 'odb_network_arn': odbNetworkArn,
           if (odbNetworkId != null) 'odb_network_id': odbNetworkId,
           if (region != null) 'region': region,
           if (scanListenerPortTcp != null)
             'scan_listener_port_tcp': scanListenerPortTcp,
           'ssh_public_keys': sshPublicKeys,
           if (tags != null) 'tags': tags,
           if (timezone != null) 'timezone': timezone,
           if (dataCollectionOptions != null)
             'data_collection_options': TfArg.literal([
               for (final e in dataCollectionOptions) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsOdbCloudVmClusterSensitive;

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
}
