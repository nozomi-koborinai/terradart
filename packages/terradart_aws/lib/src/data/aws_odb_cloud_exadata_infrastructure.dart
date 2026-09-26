// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_odb_cloud_exadata_infrastructure`.
const Set<String> _awsOdbCloudExadataInfrastructureSensitive = <String>{};

/// Factory wrapper for `aws_odb_cloud_exadata_infrastructure`.
final class DataAwsOdbCloudExadataInfrastructure extends Data {
  static const String tfType = 'aws_odb_cloud_exadata_infrastructure';

  DataAwsOdbCloudExadataInfrastructure({
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
  Set<String> get sensitiveFields => _awsOdbCloudExadataInfrastructureSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `activated_storage_count` attribute.
  TfRef<num> get activatedStorageCount =>
      TfRef.attribute<num>(this, 'activated_storage_count');

  /// Reference to `additional_storage_count` attribute.
  TfRef<num> get additionalStorageCount =>
      TfRef.attribute<num>(this, 'additional_storage_count');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `availability_zone` attribute.
  TfRef<String> get availabilityZone =>
      TfRef.attribute<String>(this, 'availability_zone');

  /// Reference to `availability_zone_id` attribute.
  TfRef<String> get availabilityZoneId =>
      TfRef.attribute<String>(this, 'availability_zone_id');

  /// Reference to `available_storage_size_in_gbs` attribute.
  TfRef<num> get availableStorageSizeInGbs =>
      TfRef.attribute<num>(this, 'available_storage_size_in_gbs');

  /// Reference to `compute_count` attribute.
  TfRef<num> get computeCount => TfRef.attribute<num>(this, 'compute_count');

  /// Reference to `compute_model` attribute.
  TfRef<String> get computeModel =>
      TfRef.attribute<String>(this, 'compute_model');

  /// Reference to `cpu_count` attribute.
  TfRef<num> get cpuCount => TfRef.attribute<num>(this, 'cpu_count');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `customer_contacts_to_send_to_oci` attribute.
  TfRef<List<Map<String, Object?>>> get customerContactsToSendToOci =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'customer_contacts_to_send_to_oci',
      );

  /// Reference to `data_storage_size_in_tbs` attribute.
  TfRef<num> get dataStorageSizeInTbs =>
      TfRef.attribute<num>(this, 'data_storage_size_in_tbs');

  /// Reference to `database_server_type` attribute.
  TfRef<String> get databaseServerType =>
      TfRef.attribute<String>(this, 'database_server_type');

  /// Reference to `db_node_storage_size_in_gbs` attribute.
  TfRef<num> get dbNodeStorageSizeInGbs =>
      TfRef.attribute<num>(this, 'db_node_storage_size_in_gbs');

  /// Reference to `db_server_version` attribute.
  TfRef<String> get dbServerVersion =>
      TfRef.attribute<String>(this, 'db_server_version');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `last_maintenance_run_id` attribute.
  TfRef<String> get lastMaintenanceRunId =>
      TfRef.attribute<String>(this, 'last_maintenance_run_id');

  /// Reference to `maintenance_window` attribute.
  TfRef<List<Map<String, Object?>>> get maintenanceWindow =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'maintenance_window');

  /// Reference to `max_cpu_count` attribute.
  TfRef<num> get maxCpuCount => TfRef.attribute<num>(this, 'max_cpu_count');

  /// Reference to `max_data_storage_in_tbs` attribute.
  TfRef<num> get maxDataStorageInTbs =>
      TfRef.attribute<num>(this, 'max_data_storage_in_tbs');

  /// Reference to `max_db_node_storage_size_in_gbs` attribute.
  TfRef<num> get maxDbNodeStorageSizeInGbs =>
      TfRef.attribute<num>(this, 'max_db_node_storage_size_in_gbs');

  /// Reference to `max_memory_in_gbs` attribute.
  TfRef<num> get maxMemoryInGbs =>
      TfRef.attribute<num>(this, 'max_memory_in_gbs');

  /// Reference to `memory_size_in_gbs` attribute.
  TfRef<num> get memorySizeInGbs =>
      TfRef.attribute<num>(this, 'memory_size_in_gbs');

  /// Reference to `monthly_db_server_version` attribute.
  TfRef<String> get monthlyDbServerVersion =>
      TfRef.attribute<String>(this, 'monthly_db_server_version');

  /// Reference to `monthly_storage_server_version` attribute.
  TfRef<String> get monthlyStorageServerVersion =>
      TfRef.attribute<String>(this, 'monthly_storage_server_version');

  /// Reference to `next_maintenance_run_id` attribute.
  TfRef<String> get nextMaintenanceRunId =>
      TfRef.attribute<String>(this, 'next_maintenance_run_id');

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

  /// Reference to `shape` attribute.
  TfRef<String> get shape => TfRef.attribute<String>(this, 'shape');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `status_reason` attribute.
  TfRef<String> get statusReason =>
      TfRef.attribute<String>(this, 'status_reason');

  /// Reference to `storage_count` attribute.
  TfRef<num> get storageCount => TfRef.attribute<num>(this, 'storage_count');

  /// Reference to `storage_server_type` attribute.
  TfRef<String> get storageServerType =>
      TfRef.attribute<String>(this, 'storage_server_type');

  /// Reference to `storage_server_version` attribute.
  TfRef<String> get storageServerVersion =>
      TfRef.attribute<String>(this, 'storage_server_version');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `total_storage_size_in_gbs` attribute.
  TfRef<num> get totalStorageSizeInGbs =>
      TfRef.attribute<num>(this, 'total_storage_size_in_gbs');
}
