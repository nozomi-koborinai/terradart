// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../oracle/azurerm_oracle_cloud_vm_cluster.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_oracle_cloud_vm_cluster`.
const Set<String> _azurermOracleCloudVmClusterSensitive = <String>{};

/// Factory wrapper for `azurerm_oracle_cloud_vm_cluster`.
final class DataAzurermOracleCloudVmCluster extends Data {
  static const String tfType = 'azurerm_oracle_cloud_vm_cluster';

  DataAzurermOracleCloudVmCluster(
    super.localName, {
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermOracleCloudVmClusterSensitive;

  /// A reference to the `azurerm_oracle_cloud_vm_cluster` this data source reads, for
  /// arguments typed `RefTo<AzurermOracleCloudVmCluster>`.
  RefTo<AzurermOracleCloudVmCluster> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `backup_subnet_cidr` attribute.
  TfRef<String> get backupSubnetCidr =>
      TfRef.attribute<String>(this, 'backup_subnet_cidr');

  /// Reference to `cloud_exadata_infrastructure_id` attribute.
  TfRef<String> get cloudExadataInfrastructureId =>
      TfRef.attribute<String>(this, 'cloud_exadata_infrastructure_id');

  /// Reference to `cluster_name` attribute.
  TfRef<String> get clusterName =>
      TfRef.attribute<String>(this, 'cluster_name');

  /// Reference to `compartment_id` attribute.
  TfRef<String> get compartmentId =>
      TfRef.attribute<String>(this, 'compartment_id');

  /// Reference to `compute_model` attribute.
  TfRef<String> get computeModel =>
      TfRef.attribute<String>(this, 'compute_model');

  /// Reference to `compute_nodes` attribute.
  TfRef<List<String>> get computeNodes =>
      TfRef.attribute<List<String>>(this, 'compute_nodes');

  /// Reference to `cpu_core_count` attribute.
  TfRef<num> get cpuCoreCount => TfRef.attribute<num>(this, 'cpu_core_count');

  /// Reference to `data_collection_options` attribute.
  TfRef<List<Map<String, Object?>>> get dataCollectionOptions =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'data_collection_options',
      );

  /// Reference to `data_storage_percentage` attribute.
  TfRef<num> get dataStoragePercentage =>
      TfRef.attribute<num>(this, 'data_storage_percentage');

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

  /// Reference to `file_system_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get fileSystemConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'file_system_configuration',
      );

  /// Reference to `gi_version` attribute.
  TfRef<String> get giVersion => TfRef.attribute<String>(this, 'gi_version');

  /// Reference to `hostname` attribute.
  TfRef<String> get hostname => TfRef.attribute<String>(this, 'hostname');

  /// Reference to `hostname_actual` attribute.
  TfRef<String> get hostnameActual =>
      TfRef.attribute<String>(this, 'hostname_actual');

  /// Reference to `iorm_config_cache` attribute.
  TfRef<List<Map<String, Object?>>> get iormConfigCache =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'iorm_config_cache');

  /// Reference to `last_update_history_entry_id` attribute.
  TfRef<String> get lastUpdateHistoryEntryId =>
      TfRef.attribute<String>(this, 'last_update_history_entry_id');

  /// Reference to `license_model` attribute.
  TfRef<String> get licenseModel =>
      TfRef.attribute<String>(this, 'license_model');

  /// Reference to `lifecycle_details` attribute.
  TfRef<String> get lifecycleDetails =>
      TfRef.attribute<String>(this, 'lifecycle_details');

  /// Reference to `lifecycle_state` attribute.
  TfRef<String> get lifecycleState =>
      TfRef.attribute<String>(this, 'lifecycle_state');

  /// Reference to `listener_port` attribute.
  TfRef<num> get listenerPort => TfRef.attribute<num>(this, 'listener_port');

  /// Reference to `local_backup_enabled` attribute.
  TfRef<bool> get localBackupEnabled =>
      TfRef.attribute<bool>(this, 'local_backup_enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `memory_size_in_gbs` attribute.
  TfRef<num> get memorySizeInGbs =>
      TfRef.attribute<num>(this, 'memory_size_in_gbs');

  /// Reference to `node_count` attribute.
  TfRef<num> get nodeCount => TfRef.attribute<num>(this, 'node_count');

  /// Reference to `nsg_url` attribute.
  TfRef<String> get nsgUrl => TfRef.attribute<String>(this, 'nsg_url');

  /// Reference to `oci_url` attribute.
  TfRef<String> get ociUrl => TfRef.attribute<String>(this, 'oci_url');

  /// Reference to `ocid` attribute.
  TfRef<String> get ocid => TfRef.attribute<String>(this, 'ocid');

  /// Reference to `ocpu_count` attribute.
  TfRef<num> get ocpuCount => TfRef.attribute<num>(this, 'ocpu_count');

  /// Reference to `scan_dns_name` attribute.
  TfRef<String> get scanDnsName =>
      TfRef.attribute<String>(this, 'scan_dns_name');

  /// Reference to `scan_dns_record_id` attribute.
  TfRef<String> get scanDnsRecordId =>
      TfRef.attribute<String>(this, 'scan_dns_record_id');

  /// Reference to `scan_ip_ids` attribute.
  TfRef<List<String>> get scanIpIds =>
      TfRef.attribute<List<String>>(this, 'scan_ip_ids');

  /// Reference to `scan_listener_port_tcp` attribute.
  TfRef<num> get scanListenerPortTcp =>
      TfRef.attribute<num>(this, 'scan_listener_port_tcp');

  /// Reference to `scan_listener_port_tcp_ssl` attribute.
  TfRef<num> get scanListenerPortTcpSsl =>
      TfRef.attribute<num>(this, 'scan_listener_port_tcp_ssl');

  /// Reference to `shape` attribute.
  TfRef<String> get shape => TfRef.attribute<String>(this, 'shape');

  /// Reference to `sparse_diskgroup_enabled` attribute.
  TfRef<bool> get sparseDiskgroupEnabled =>
      TfRef.attribute<bool>(this, 'sparse_diskgroup_enabled');

  /// Reference to `ssh_public_keys` attribute.
  TfRef<List<String>> get sshPublicKeys =>
      TfRef.attribute<List<String>>(this, 'ssh_public_keys');

  /// Reference to `storage_size_in_gbs` attribute.
  TfRef<num> get storageSizeInGbs =>
      TfRef.attribute<num>(this, 'storage_size_in_gbs');

  /// Reference to `subnet_id` attribute.
  TfRef<String> get subnetId => TfRef.attribute<String>(this, 'subnet_id');

  /// Reference to `subnet_ocid` attribute.
  TfRef<String> get subnetOcid => TfRef.attribute<String>(this, 'subnet_ocid');

  /// Reference to `system_version` attribute.
  TfRef<String> get systemVersion =>
      TfRef.attribute<String>(this, 'system_version');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `time_created` attribute.
  TfRef<String> get timeCreated =>
      TfRef.attribute<String>(this, 'time_created');

  /// Reference to `time_zone` attribute.
  TfRef<String> get timeZone => TfRef.attribute<String>(this, 'time_zone');

  /// Reference to `vip_ods` attribute.
  TfRef<List<String>> get vipOds =>
      TfRef.attribute<List<String>>(this, 'vip_ods');

  /// Reference to `virtual_network_id` attribute.
  TfRef<String> get virtualNetworkId =>
      TfRef.attribute<String>(this, 'virtual_network_id');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
