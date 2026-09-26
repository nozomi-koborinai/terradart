// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_odb_cloud_vm_cluster`.
const Set<String> _awsOdbCloudVmClusterSensitive = <String>{};

/// Factory wrapper for `aws_odb_cloud_vm_cluster`.
final class DataAwsOdbCloudVmCluster extends Data {
  static const String tfType = 'aws_odb_cloud_vm_cluster';

  DataAwsOdbCloudVmCluster({
    required super.localName,
    required TfArg<String> id,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'id': id, if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields => _awsOdbCloudVmClusterSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `cloud_exadata_infrastructure_arn` attribute.
  TfRef<String> get cloudExadataInfrastructureArn =>
      TfRef.attribute<String>(this, 'cloud_exadata_infrastructure_arn');

  /// Reference to `cloud_exadata_infrastructure_id` attribute.
  TfRef<String> get cloudExadataInfrastructureId =>
      TfRef.attribute<String>(this, 'cloud_exadata_infrastructure_id');

  /// Reference to `cluster_name` attribute.
  TfRef<String> get clusterName =>
      TfRef.attribute<String>(this, 'cluster_name');

  /// Reference to `compute_model` attribute.
  TfRef<String> get computeModel =>
      TfRef.attribute<String>(this, 'compute_model');

  /// Reference to `cpu_core_count` attribute.
  TfRef<num> get cpuCoreCount => TfRef.attribute<num>(this, 'cpu_core_count');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `data_collection_options` attribute.
  TfRef<List<Map<String, Object?>>> get dataCollectionOptions =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'data_collection_options',
      );

  /// Reference to `data_storage_size_in_tbs` attribute.
  TfRef<num> get dataStorageSizeInTbs =>
      TfRef.attribute<num>(this, 'data_storage_size_in_tbs');

  /// Reference to `db_node_storage_size_in_gbs` attribute.
  TfRef<num> get dbNodeStorageSizeInGbs =>
      TfRef.attribute<num>(this, 'db_node_storage_size_in_gbs');

  /// Reference to `db_servers` attribute.
  TfRef<List<String>> get dbServers =>
      TfRef.attribute<List<String>>(this, 'db_servers');

  /// Reference to `disk_redundancy` attribute.
  TfRef<String> get diskRedundancy =>
      TfRef.attribute<String>(this, 'disk_redundancy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `domain` attribute.
  TfRef<String> get domain => TfRef.attribute<String>(this, 'domain');

  /// Reference to `gi_version` attribute.
  TfRef<String> get giVersion => TfRef.attribute<String>(this, 'gi_version');

  /// Reference to `hostname_prefix_computed` attribute.
  TfRef<String> get hostnamePrefixComputed =>
      TfRef.attribute<String>(this, 'hostname_prefix_computed');

  /// Reference to `iorm_config_cache` attribute.
  TfRef<List<Map<String, Object?>>> get iormConfigCache =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'iorm_config_cache');

  /// Reference to `is_local_backup_enabled` attribute.
  TfRef<bool> get isLocalBackupEnabled =>
      TfRef.attribute<bool>(this, 'is_local_backup_enabled');

  /// Reference to `is_sparse_disk_group_enabled` attribute.
  TfRef<bool> get isSparseDiskGroupEnabled =>
      TfRef.attribute<bool>(this, 'is_sparse_disk_group_enabled');

  /// Reference to `last_update_history_entry_id` attribute.
  TfRef<String> get lastUpdateHistoryEntryId =>
      TfRef.attribute<String>(this, 'last_update_history_entry_id');

  /// Reference to `license_model` attribute.
  TfRef<String> get licenseModel =>
      TfRef.attribute<String>(this, 'license_model');

  /// Reference to `listener_port` attribute.
  TfRef<num> get listenerPort => TfRef.attribute<num>(this, 'listener_port');

  /// Reference to `memory_size_in_gbs` attribute.
  TfRef<num> get memorySizeInGbs =>
      TfRef.attribute<num>(this, 'memory_size_in_gbs');

  /// Reference to `node_count` attribute.
  TfRef<num> get nodeCount => TfRef.attribute<num>(this, 'node_count');

  /// Reference to `oci_resource_anchor_name` attribute.
  TfRef<String> get ociResourceAnchorName =>
      TfRef.attribute<String>(this, 'oci_resource_anchor_name');

  /// Reference to `oci_url` attribute.
  TfRef<String> get ociUrl => TfRef.attribute<String>(this, 'oci_url');

  /// Reference to `ocid` attribute.
  TfRef<String> get ocid => TfRef.attribute<String>(this, 'ocid');

  /// Reference to `odb_network_arn` attribute.
  TfRef<String> get odbNetworkArn =>
      TfRef.attribute<String>(this, 'odb_network_arn');

  /// Reference to `odb_network_id` attribute.
  TfRef<String> get odbNetworkId =>
      TfRef.attribute<String>(this, 'odb_network_id');

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

  /// Reference to `ssh_public_keys` attribute.
  TfRef<List<String>> get sshPublicKeys =>
      TfRef.attribute<List<String>>(this, 'ssh_public_keys');

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

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `timezone` attribute.
  TfRef<String> get timezone => TfRef.attribute<String>(this, 'timezone');

  /// Reference to `vip_ids` attribute.
  TfRef<List<String>> get vipIds =>
      TfRef.attribute<List<String>>(this, 'vip_ids');
}
