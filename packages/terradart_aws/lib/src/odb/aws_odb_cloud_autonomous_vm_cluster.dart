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

  final TfArg<List<Object?>>? hoursOfDay;

  final TfArg<num>? leadTimeInWeeks;

  final TfArg<List<Object?>>? months;

  final TfArg<String> preference;

  final TfArg<List<Object?>>? weeksOfMonth;

  Map<String, Object?> encode() => {
    if (daysOfWeek != null) 'days_of_week': daysOfWeek!.toTfJson(),
    if (hoursOfDay != null) 'hours_of_day': hoursOfDay!.toTfJson(),
    if (leadTimeInWeeks != null)
      'lead_time_in_weeks': leadTimeInWeeks!.toTfJson(),
    if (months != null) 'months': months!.toTfJson(),
    'preference': preference.toTfJson(),
    if (weeksOfMonth != null) 'weeks_of_month': weeksOfMonth!.toTfJson(),
  };
}

/// Factory wrapper for `aws_odb_cloud_autonomous_vm_cluster`.
final class AwsOdbCloudAutonomousVmCluster extends Resource {
  static const String tfType = 'aws_odb_cloud_autonomous_vm_cluster';

  AwsOdbCloudAutonomousVmCluster({
    required super.localName,
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
           if (cloudExadataInfrastructureArn != null)
             'cloud_exadata_infrastructure_arn': cloudExadataInfrastructureArn,
           if (cloudExadataInfrastructureId != null)
             'cloud_exadata_infrastructure_id': cloudExadataInfrastructureId,
           'cpu_core_count_per_node': cpuCoreCountPerNode,
           'db_servers': dbServers,
           if (description != null) 'description': description,
           'display_name': displayName,
           if (isMtlsEnabledVmCluster != null)
             'is_mtls_enabled_vm_cluster': isMtlsEnabledVmCluster,
           if (licenseModel != null) 'license_model': licenseModel,
           'memory_per_oracle_compute_unit_in_gbs':
               memoryPerOracleComputeUnitInGbs,
           if (odbNetworkArn != null) 'odb_network_arn': odbNetworkArn,
           if (odbNetworkId != null) 'odb_network_id': odbNetworkId,
           if (region != null) 'region': region,
           'scan_listener_port_non_tls': scanListenerPortNonTls,
           'scan_listener_port_tls': scanListenerPortTls,
           if (tags != null) 'tags': tags,
           if (timeZone != null) 'time_zone': timeZone,
           'total_container_databases': totalContainerDatabases,
           if (maintenanceWindow != null)
             'maintenance_window': TfArg.literal([
               for (final e in maintenanceWindow) e.encode(),
             ]),
         },
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
}
