// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_odb_cloud_autonomous_vm_cluster`.
const Set<String> _awsOdbCloudAutonomousVmClusterSensitive = <String>{};

/// Typed helper for the `maintenance_window` block of
/// `aws_odb_cloud_autonomous_vm_cluster` (derived from provider schema).
@immutable
final class OdbCloudAutonomousVmClusterMaintenanceWindow {
  const OdbCloudAutonomousVmClusterMaintenanceWindow({
    this.daysOfWeek,
    this.hoursOfDay,
    this.leadTimeInWeeks,
    this.months,
    required this.preference,
    this.weeksOfMonth,
  });

  final TfArg<List<Object?>>? daysOfWeek;

  final TfArg<List<num>>? hoursOfDay;

  final TfArg<num>? leadTimeInWeeks;

  final TfArg<List<Object?>>? months;

  final TfArg<OdbCloudAutonomousVmClusterPreference> preference;

  final TfArg<List<num>>? weeksOfMonth;

  Map<String, Object?> encode() => {
    'days_of_week': ?daysOfWeek?.toTfJson(),
    'hours_of_day': ?hoursOfDay?.toTfJson(),
    'lead_time_in_weeks': ?leadTimeInWeeks?.toTfJson(),
    'months': ?months?.toTfJson(),
    'preference': preference.toTfJson(),
    'weeks_of_month': ?weeksOfMonth?.toTfJson(),
  };
}

/// `preference` — derived from the provider schema description.
enum OdbCloudAutonomousVmClusterPreference implements TerraformEnum {
  noPreference('NO_PREFERENCE'),
  customPreference('CUSTOM_PREFERENCE');

  const OdbCloudAutonomousVmClusterPreference(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_odb_cloud_autonomous_vm_cluster`.
final class AwsOdbCloudAutonomousVmCluster extends Resource {
  static const String tfType = 'aws_odb_cloud_autonomous_vm_cluster';

  AwsOdbCloudAutonomousVmCluster(
    super.localName, {
    required TfArg<num> autonomousDataStorageSizeInTbs,
    TfArg<String>? cloudExadataInfrastructureArn,
    TfArg<String>? cloudExadataInfrastructureId,
    required TfArg<num> cpuCoreCountPerNode,
    required TfArg<List<String>> dbServers,
    TfArg<String>? description,
    required TfArg<String> displayName,
    TfArg<bool>? isMtlsEnabledVmCluster,
    TfArg<String>? licenseModel,
    required TfArg<num> memoryPerOracleComputeUnitInGbs,
    TfArg<String>? odbNetworkArn,
    TfArg<String>? odbNetworkId,
    TfArg<String>? region,
    required TfArg<num> scanListenerPortNonTls,
    required TfArg<num> scanListenerPortTls,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? timeZone,
    required TfArg<num> totalContainerDatabases,
    List<OdbCloudAutonomousVmClusterMaintenanceWindow>? maintenanceWindow,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'autonomous_data_storage_size_in_tbs':
               autonomousDataStorageSizeInTbs,
           'cloud_exadata_infrastructure_arn': ?cloudExadataInfrastructureArn,
           'cloud_exadata_infrastructure_id': ?cloudExadataInfrastructureId,
           'cpu_core_count_per_node': cpuCoreCountPerNode,
           'db_servers': dbServers,
           'description': ?description,
           'display_name': displayName,
           'is_mtls_enabled_vm_cluster': ?isMtlsEnabledVmCluster,
           'license_model': ?licenseModel,
           'memory_per_oracle_compute_unit_in_gbs':
               memoryPerOracleComputeUnitInGbs,
           'odb_network_arn': ?odbNetworkArn,
           'odb_network_id': ?odbNetworkId,
           'region': ?region,
           'scan_listener_port_non_tls': scanListenerPortNonTls,
           'scan_listener_port_tls': scanListenerPortTls,
           'tags': ?tags,
           'time_zone': ?timeZone,
           'total_container_databases': totalContainerDatabases,
           if (maintenanceWindow != null)
             'maintenance_window': TfArg.literal([
               for (final e in maintenanceWindow) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsOdbCloudAutonomousVmClusterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsOdbCloudAutonomousVmCluster>`.
  RefTo<AwsOdbCloudAutonomousVmCluster> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `autonomous_data_storage_percentage` attribute.
  TfRef<num> get autonomousDataStoragePercentage =>
      TfRef.attribute<num>(this, 'autonomous_data_storage_percentage');

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

  /// Reference to `compute_model` attribute.
  TfRef<String> get computeModel =>
      TfRef.attribute<String>(this, 'compute_model');

  /// Reference to `cpu_core_count` attribute.
  TfRef<num> get cpuCoreCount => TfRef.attribute<num>(this, 'cpu_core_count');

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

  /// Reference to `domain` attribute.
  TfRef<String> get domain => TfRef.attribute<String>(this, 'domain');

  /// Reference to `exadata_storage_in_tbs_lowest_scaled_value` attribute.
  TfRef<num> get exadataStorageInTbsLowestScaledValue =>
      TfRef.attribute<num>(this, 'exadata_storage_in_tbs_lowest_scaled_value');

  /// Reference to `hostname` attribute.
  TfRef<String> get hostname => TfRef.attribute<String>(this, 'hostname');

  /// Reference to `max_acds_lowest_scaled_value` attribute.
  TfRef<num> get maxAcdsLowestScaledValue =>
      TfRef.attribute<num>(this, 'max_acds_lowest_scaled_value');

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

  /// Reference to `shape` attribute.
  TfRef<String> get shape => TfRef.attribute<String>(this, 'shape');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `status_reason` attribute.
  TfRef<String> get statusReason =>
      TfRef.attribute<String>(this, 'status_reason');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `time_database_ssl_certificate_expires` attribute.
  TfRef<String> get timeDatabaseSslCertificateExpires =>
      TfRef.attribute<String>(this, 'time_database_ssl_certificate_expires');

  /// Reference to `time_ords_certificate_expires` attribute.
  TfRef<String> get timeOrdsCertificateExpires =>
      TfRef.attribute<String>(this, 'time_ords_certificate_expires');

  /// Reference to `autonomous_data_storage_size_in_tbs` attribute.
  TfRef<num> get autonomousDataStorageSizeInTbs =>
      TfRef.attribute<num>(this, 'autonomous_data_storage_size_in_tbs');

  /// Reference to `cloud_exadata_infrastructure_arn` attribute.
  TfRef<String> get cloudExadataInfrastructureArn =>
      TfRef.attribute<String>(this, 'cloud_exadata_infrastructure_arn');

  /// Reference to `cloud_exadata_infrastructure_id` attribute.
  TfRef<String> get cloudExadataInfrastructureId =>
      TfRef.attribute<String>(this, 'cloud_exadata_infrastructure_id');

  /// Reference to `cpu_core_count_per_node` attribute.
  TfRef<num> get cpuCoreCountPerNode =>
      TfRef.attribute<num>(this, 'cpu_core_count_per_node');

  /// Reference to `db_servers` attribute.
  TfRef<List<String>> get dbServers =>
      TfRef.attribute<List<String>>(this, 'db_servers');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `is_mtls_enabled_vm_cluster` attribute.
  TfRef<bool> get isMtlsEnabledVmCluster =>
      TfRef.attribute<bool>(this, 'is_mtls_enabled_vm_cluster');

  /// Reference to `license_model` attribute.
  TfRef<String> get licenseModel =>
      TfRef.attribute<String>(this, 'license_model');

  /// Reference to `memory_per_oracle_compute_unit_in_gbs` attribute.
  TfRef<num> get memoryPerOracleComputeUnitInGbs =>
      TfRef.attribute<num>(this, 'memory_per_oracle_compute_unit_in_gbs');

  /// Reference to `odb_network_arn` attribute.
  TfRef<String> get odbNetworkArn =>
      TfRef.attribute<String>(this, 'odb_network_arn');

  /// Reference to `odb_network_id` attribute.
  TfRef<String> get odbNetworkId =>
      TfRef.attribute<String>(this, 'odb_network_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `scan_listener_port_non_tls` attribute.
  TfRef<num> get scanListenerPortNonTls =>
      TfRef.attribute<num>(this, 'scan_listener_port_non_tls');

  /// Reference to `scan_listener_port_tls` attribute.
  TfRef<num> get scanListenerPortTls =>
      TfRef.attribute<num>(this, 'scan_listener_port_tls');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `time_zone` attribute.
  TfRef<String> get timeZone => TfRef.attribute<String>(this, 'time_zone');

  /// Reference to `total_container_databases` attribute.
  TfRef<num> get totalContainerDatabases =>
      TfRef.attribute<num>(this, 'total_container_databases');
}
