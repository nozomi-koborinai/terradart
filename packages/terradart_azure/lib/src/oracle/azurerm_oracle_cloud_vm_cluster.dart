// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../network/azurerm_virtual_network.dart' show AzurermVirtualNetwork;
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;
import '../subnet/azurerm_subnet.dart' show AzurermSubnet;

/// Sensitive field paths for `azurerm_oracle_cloud_vm_cluster`.
const Set<String> _azurermOracleCloudVmClusterSensitive = <String>{};

/// Typed helper for the `data_collection_options` block of
/// `azurerm_oracle_cloud_vm_cluster` (derived from provider schema).
@immutable
final class OracleCloudVmClusterDataCollectionOptions {
  const OracleCloudVmClusterDataCollectionOptions({
    this.diagnosticsEventsEnabled,
    this.healthMonitoringEnabled,
    this.incidentLogsEnabled,
  });

  final TfArg<bool>? diagnosticsEventsEnabled;

  final TfArg<bool>? healthMonitoringEnabled;

  final TfArg<bool>? incidentLogsEnabled;

  @internal
  Map<String, Object?> encode() => {
    'diagnostics_events_enabled': ?diagnosticsEventsEnabled?.toTfJson(),
    'health_monitoring_enabled': ?healthMonitoringEnabled?.toTfJson(),
    'incident_logs_enabled': ?incidentLogsEnabled?.toTfJson(),
  };
}

/// Typed helper for the `file_system_configuration` block of
/// `azurerm_oracle_cloud_vm_cluster` (derived from provider schema).
@immutable
final class OracleCloudVmClusterFileSystemConfiguration {
  const OracleCloudVmClusterFileSystemConfiguration({
    this.mountPoint,
    this.sizeInGb,
  });

  final TfArg<String>? mountPoint;

  final TfArg<num>? sizeInGb;

  @internal
  Map<String, Object?> encode() => {
    'mount_point': ?mountPoint?.toTfJson(),
    'size_in_gb': ?sizeInGb?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_oracle_cloud_vm_cluster`.
final class AzurermOracleCloudVmCluster extends Resource {
  static const String tfType = 'azurerm_oracle_cloud_vm_cluster';

  AzurermOracleCloudVmCluster(
    super.localName, {
    TfArg<String>? backupSubnetCidr,
    required TfArg<String> cloudExadataInfrastructureId,
    TfArg<String>? clusterName,
    required TfArg<num> cpuCoreCount,
    TfArg<num>? dataStoragePercentage,
    TfArg<num>? dataStorageSizeInTbs,
    TfArg<num>? dbNodeStorageSizeInGbs,
    required TfArg<List<String>> dbServers,
    required TfArg<String> displayName,
    TfArg<String>? domain,
    required TfArg<String> giVersion,
    required TfArg<String> hostname,
    required TfArg<String> licenseModel,
    TfArg<bool>? localBackupEnabled,
    required TfArg<String> location,
    TfArg<num>? memorySizeInGbs,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<num>? scanListenerPortTcp,
    TfArg<num>? scanListenerPortTcpSsl,
    TfArg<bool>? sparseDiskgroupEnabled,
    required TfArg<List<String>> sshPublicKeys,
    required RefTo<AzurermSubnet> subnetId,
    TfArg<String>? systemVersion,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? timeZone,
    required RefTo<AzurermVirtualNetwork> virtualNetworkId,
    TfArg<String>? zoneId,
    OracleCloudVmClusterDataCollectionOptions? dataCollectionOptions,
    List<OracleCloudVmClusterFileSystemConfiguration>? fileSystemConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'backup_subnet_cidr': ?backupSubnetCidr,
           'cloud_exadata_infrastructure_id': cloudExadataInfrastructureId,
           'cluster_name': ?clusterName,
           'cpu_core_count': cpuCoreCount,
           'data_storage_percentage': ?dataStoragePercentage,
           'data_storage_size_in_tbs': ?dataStorageSizeInTbs,
           'db_node_storage_size_in_gbs': ?dbNodeStorageSizeInGbs,
           'db_servers': dbServers,
           'display_name': displayName,
           'domain': ?domain,
           'gi_version': giVersion,
           'hostname': hostname,
           'license_model': licenseModel,
           'local_backup_enabled': ?localBackupEnabled,
           'location': location,
           'memory_size_in_gbs': ?memorySizeInGbs,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'scan_listener_port_tcp': ?scanListenerPortTcp,
           'scan_listener_port_tcp_ssl': ?scanListenerPortTcpSsl,
           'sparse_diskgroup_enabled': ?sparseDiskgroupEnabled,
           'ssh_public_keys': sshPublicKeys,
           'subnet_id': subnetId.encodeAs('id'),
           'system_version': ?systemVersion,
           'tags': ?tags,
           'time_zone': ?timeZone,
           'virtual_network_id': virtualNetworkId.encodeAs('id'),
           'zone_id': ?zoneId,
           if (dataCollectionOptions != null)
             'data_collection_options': TfArg.literal(
               dataCollectionOptions.encode(),
             ),
           if (fileSystemConfiguration != null)
             'file_system_configuration': TfArg.literal([
               for (final e in fileSystemConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermOracleCloudVmClusterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermOracleCloudVmCluster>`.
  RefTo<AzurermOracleCloudVmCluster> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `hostname_actual` attribute.
  TfRef<String> get hostnameActual =>
      TfRef.attribute<String>(this, 'hostname_actual');

  /// Reference to `ocid` attribute.
  TfRef<String> get ocid => TfRef.attribute<String>(this, 'ocid');

  /// Reference to `backup_subnet_cidr` attribute.
  TfRef<String> get backupSubnetCidr =>
      TfRef.attribute<String>(this, 'backup_subnet_cidr');

  /// Reference to `cloud_exadata_infrastructure_id` attribute.
  TfRef<String> get cloudExadataInfrastructureId =>
      TfRef.attribute<String>(this, 'cloud_exadata_infrastructure_id');

  /// Reference to `cluster_name` attribute.
  TfRef<String> get clusterName =>
      TfRef.attribute<String>(this, 'cluster_name');

  /// Reference to `cpu_core_count` attribute.
  TfRef<num> get cpuCoreCount => TfRef.attribute<num>(this, 'cpu_core_count');

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

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `domain` attribute.
  TfRef<String> get domain => TfRef.attribute<String>(this, 'domain');

  /// Reference to `gi_version` attribute.
  TfRef<String> get giVersion => TfRef.attribute<String>(this, 'gi_version');

  /// Reference to `hostname` attribute.
  TfRef<String> get hostname => TfRef.attribute<String>(this, 'hostname');

  /// Reference to `license_model` attribute.
  TfRef<String> get licenseModel =>
      TfRef.attribute<String>(this, 'license_model');

  /// Reference to `local_backup_enabled` attribute.
  TfRef<bool> get localBackupEnabled =>
      TfRef.attribute<bool>(this, 'local_backup_enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `memory_size_in_gbs` attribute.
  TfRef<num> get memorySizeInGbs =>
      TfRef.attribute<num>(this, 'memory_size_in_gbs');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `scan_listener_port_tcp` attribute.
  TfRef<num> get scanListenerPortTcp =>
      TfRef.attribute<num>(this, 'scan_listener_port_tcp');

  /// Reference to `scan_listener_port_tcp_ssl` attribute.
  TfRef<num> get scanListenerPortTcpSsl =>
      TfRef.attribute<num>(this, 'scan_listener_port_tcp_ssl');

  /// Reference to `sparse_diskgroup_enabled` attribute.
  TfRef<bool> get sparseDiskgroupEnabled =>
      TfRef.attribute<bool>(this, 'sparse_diskgroup_enabled');

  /// Reference to `ssh_public_keys` attribute.
  TfRef<List<String>> get sshPublicKeys =>
      TfRef.attribute<List<String>>(this, 'ssh_public_keys');

  /// Reference to `subnet_id` attribute.
  TfRef<String> get subnetId => TfRef.attribute<String>(this, 'subnet_id');

  /// Reference to `system_version` attribute.
  TfRef<String> get systemVersion =>
      TfRef.attribute<String>(this, 'system_version');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `time_zone` attribute.
  TfRef<String> get timeZone => TfRef.attribute<String>(this, 'time_zone');

  /// Reference to `virtual_network_id` attribute.
  TfRef<String> get virtualNetworkId =>
      TfRef.attribute<String>(this, 'virtual_network_id');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
