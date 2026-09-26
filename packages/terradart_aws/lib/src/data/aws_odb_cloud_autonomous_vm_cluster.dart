// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_odb_cloud_autonomous_vm_cluster`.
const Set<String> _awsOdbCloudAutonomousVmClusterSensitive = <String>{};

/// Factory wrapper for `aws_odb_cloud_autonomous_vm_cluster`.
final class DataAwsOdbCloudAutonomousVmCluster extends Data {
  static const String tfType = 'aws_odb_cloud_autonomous_vm_cluster';

  DataAwsOdbCloudAutonomousVmCluster({
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
  Set<String> get sensitiveFields => _awsOdbCloudAutonomousVmClusterSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `autonomous_data_storage_percentage` attribute.
  TfRef<num> get autonomousDataStoragePercentage =>
      TfRef.attribute<num>(this, 'autonomous_data_storage_percentage');

  /// Reference to `autonomous_data_storage_size_in_tbs` attribute.
  TfRef<num> get autonomousDataStorageSizeInTbs =>
      TfRef.attribute<num>(this, 'autonomous_data_storage_size_in_tbs');

  /// Reference to `available_autonomous_data_storage_size_in_tbs` attribute.
  TfRef<num> get availableAutonomousDataStorageSizeInTbs =>
      TfRef.attribute<num>(
        this,
        'available_autonomous_data_storage_size_in_tbs',
      );

  /// Reference to `available_container_databases` attribute.
  TfRef<num> get availableContainerDatabases =>
      TfRef.attribute<num>(this, 'available_container_databases');

  /// Reference to `available_cpus` attribute.
  TfRef<num> get availableCpus => TfRef.attribute<num>(this, 'available_cpus');

  /// Reference to `cloud_exadata_infrastructure_arn` attribute.
  TfRef<String> get cloudExadataInfrastructureArn =>
      TfRef.attribute<String>(this, 'cloud_exadata_infrastructure_arn');

  /// Reference to `cloud_exadata_infrastructure_id` attribute.
  TfRef<String> get cloudExadataInfrastructureId =>
      TfRef.attribute<String>(this, 'cloud_exadata_infrastructure_id');

  /// Reference to `compute_model` attribute.
  TfRef<String> get computeModel =>
      TfRef.attribute<String>(this, 'compute_model');

  /// Reference to `cpu_core_count` attribute.
  TfRef<num> get cpuCoreCount => TfRef.attribute<num>(this, 'cpu_core_count');

  /// Reference to `cpu_core_count_per_node` attribute.
  TfRef<num> get cpuCoreCountPerNode =>
      TfRef.attribute<num>(this, 'cpu_core_count_per_node');

  /// Reference to `cpu_percentage` attribute.
  TfRef<num> get cpuPercentage => TfRef.attribute<num>(this, 'cpu_percentage');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `data_storage_size_in_gbs` attribute.
  TfRef<num> get dataStorageSizeInGbs =>
      TfRef.attribute<num>(this, 'data_storage_size_in_gbs');

  /// Reference to `data_storage_size_in_tbs` attribute.
  TfRef<num> get dataStorageSizeInTbs =>
      TfRef.attribute<num>(this, 'data_storage_size_in_tbs');

  /// Reference to `db_servers` attribute.
  TfRef<List<String>> get dbServers =>
      TfRef.attribute<List<String>>(this, 'db_servers');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `domain` attribute.
  TfRef<String> get domain => TfRef.attribute<String>(this, 'domain');

  /// Reference to `exadata_storage_in_tbs_lowest_scaled_value` attribute.
  TfRef<num> get exadataStorageInTbsLowestScaledValue =>
      TfRef.attribute<num>(this, 'exadata_storage_in_tbs_lowest_scaled_value');

  /// Reference to `hostname` attribute.
  TfRef<String> get hostname => TfRef.attribute<String>(this, 'hostname');

  /// Reference to `is_mtls_enabled_vm_cluster` attribute.
  TfRef<bool> get isMtlsEnabledVmCluster =>
      TfRef.attribute<bool>(this, 'is_mtls_enabled_vm_cluster');

  /// Reference to `license_model` attribute.
  TfRef<String> get licenseModel =>
      TfRef.attribute<String>(this, 'license_model');

  /// Reference to `maintenance_window` attribute.
  TfRef<List<Map<String, Object?>>> get maintenanceWindow =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'maintenance_window');

  /// Reference to `max_acds_lowest_scaled_value` attribute.
  TfRef<num> get maxAcdsLowestScaledValue =>
      TfRef.attribute<num>(this, 'max_acds_lowest_scaled_value');

  /// Reference to `memory_per_oracle_compute_unit_in_gbs` attribute.
  TfRef<num> get memoryPerOracleComputeUnitInGbs =>
      TfRef.attribute<num>(this, 'memory_per_oracle_compute_unit_in_gbs');

  /// Reference to `memory_size_in_gbs` attribute.
  TfRef<num> get memorySizeInGbs =>
      TfRef.attribute<num>(this, 'memory_size_in_gbs');

  /// Reference to `node_count` attribute.
  TfRef<num> get nodeCount => TfRef.attribute<num>(this, 'node_count');

  /// Reference to `non_provisionable_autonomous_container_databases` attribute.
  TfRef<num> get nonProvisionableAutonomousContainerDatabases =>
      TfRef.attribute<num>(
        this,
        'non_provisionable_autonomous_container_databases',
      );

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

  /// Reference to `odb_node_storage_size_in_gbs` attribute.
  TfRef<num> get odbNodeStorageSizeInGbs =>
      TfRef.attribute<num>(this, 'odb_node_storage_size_in_gbs');

  /// Reference to `percent_progress` attribute.
  TfRef<num> get percentProgress =>
      TfRef.attribute<num>(this, 'percent_progress');

  /// Reference to `provisionable_autonomous_container_databases` attribute.
  TfRef<num> get provisionableAutonomousContainerDatabases =>
      TfRef.attribute<num>(
        this,
        'provisionable_autonomous_container_databases',
      );

  /// Reference to `provisioned_autonomous_container_databases` attribute.
  TfRef<num> get provisionedAutonomousContainerDatabases =>
      TfRef.attribute<num>(this, 'provisioned_autonomous_container_databases');

  /// Reference to `provisioned_cpus` attribute.
  TfRef<num> get provisionedCpus =>
      TfRef.attribute<num>(this, 'provisioned_cpus');

  /// Reference to `reclaimable_cpus` attribute.
  TfRef<num> get reclaimableCpus =>
      TfRef.attribute<num>(this, 'reclaimable_cpus');

  /// Reference to `reserved_cpus` attribute.
  TfRef<num> get reservedCpus => TfRef.attribute<num>(this, 'reserved_cpus');

  /// Reference to `scan_listener_port_non_tls` attribute.
  TfRef<num> get scanListenerPortNonTls =>
      TfRef.attribute<num>(this, 'scan_listener_port_non_tls');

  /// Reference to `scan_listener_port_tls` attribute.
  TfRef<num> get scanListenerPortTls =>
      TfRef.attribute<num>(this, 'scan_listener_port_tls');

  /// Reference to `shape` attribute.
  TfRef<String> get shape => TfRef.attribute<String>(this, 'shape');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `status_reason` attribute.
  TfRef<String> get statusReason =>
      TfRef.attribute<String>(this, 'status_reason');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `time_database_ssl_certificate_expires` attribute.
  TfRef<String> get timeDatabaseSslCertificateExpires =>
      TfRef.attribute<String>(this, 'time_database_ssl_certificate_expires');

  /// Reference to `time_ords_certificate_expires` attribute.
  TfRef<String> get timeOrdsCertificateExpires =>
      TfRef.attribute<String>(this, 'time_ords_certificate_expires');

  /// Reference to `time_zone` attribute.
  TfRef<String> get timeZone => TfRef.attribute<String>(this, 'time_zone');

  /// Reference to `total_container_databases` attribute.
  TfRef<num> get totalContainerDatabases =>
      TfRef.attribute<num>(this, 'total_container_databases');
}
