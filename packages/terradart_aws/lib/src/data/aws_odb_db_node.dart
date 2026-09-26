// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_odb_db_node`.
const Set<String> _awsOdbDbNodeSensitive = <String>{};

/// Factory wrapper for `aws_odb_db_node`.
final class DataAwsOdbDbNode extends Data {
  static const String tfType = 'aws_odb_db_node';

  DataAwsOdbDbNode({
    required super.localName,
    required TfArg<String> cloudVmClusterId,
    required TfArg<String> id,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cloud_vm_cluster_id': cloudVmClusterId,
           'id': id,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsOdbDbNodeSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `additional_details` attribute.
  TfRef<String> get additionalDetails =>
      TfRef.attribute<String>(this, 'additional_details');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `backup_ip_id` attribute.
  TfRef<String> get backupIpId => TfRef.attribute<String>(this, 'backup_ip_id');

  /// Reference to `backup_vnic2_id` attribute.
  TfRef<String> get backupVnic2Id =>
      TfRef.attribute<String>(this, 'backup_vnic2_id');

  /// Reference to `backup_vnic_id` attribute.
  TfRef<String> get backupVnicId =>
      TfRef.attribute<String>(this, 'backup_vnic_id');

  /// Reference to `cpu_core_count` attribute.
  TfRef<num> get cpuCoreCount => TfRef.attribute<num>(this, 'cpu_core_count');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `db_server_id` attribute.
  TfRef<String> get dbServerId => TfRef.attribute<String>(this, 'db_server_id');

  /// Reference to `db_storage_size_in_gbs` attribute.
  TfRef<num> get dbStorageSizeInGbs =>
      TfRef.attribute<num>(this, 'db_storage_size_in_gbs');

  /// Reference to `db_system_id` attribute.
  TfRef<String> get dbSystemId => TfRef.attribute<String>(this, 'db_system_id');

  /// Reference to `fault_domain` attribute.
  TfRef<String> get faultDomain =>
      TfRef.attribute<String>(this, 'fault_domain');

  /// Reference to `floating_ip_address` attribute.
  TfRef<String> get floatingIpAddress =>
      TfRef.attribute<String>(this, 'floating_ip_address');

  /// Reference to `host_ip_id` attribute.
  TfRef<String> get hostIpId => TfRef.attribute<String>(this, 'host_ip_id');

  /// Reference to `hostname` attribute.
  TfRef<String> get hostname => TfRef.attribute<String>(this, 'hostname');

  /// Reference to `maintenance_type` attribute.
  TfRef<String> get maintenanceType =>
      TfRef.attribute<String>(this, 'maintenance_type');

  /// Reference to `memory_size_in_gbs` attribute.
  TfRef<num> get memorySizeInGbs =>
      TfRef.attribute<num>(this, 'memory_size_in_gbs');

  /// Reference to `oci_resource_anchor_name` attribute.
  TfRef<String> get ociResourceAnchorName =>
      TfRef.attribute<String>(this, 'oci_resource_anchor_name');

  /// Reference to `ocid` attribute.
  TfRef<String> get ocid => TfRef.attribute<String>(this, 'ocid');

  /// Reference to `private_ip_address` attribute.
  TfRef<String> get privateIpAddress =>
      TfRef.attribute<String>(this, 'private_ip_address');

  /// Reference to `software_storage_size_in_gbs` attribute.
  TfRef<num> get softwareStorageSizeInGbs =>
      TfRef.attribute<num>(this, 'software_storage_size_in_gbs');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `status_reason` attribute.
  TfRef<String> get statusReason =>
      TfRef.attribute<String>(this, 'status_reason');

  /// Reference to `time_maintenance_window_end` attribute.
  TfRef<String> get timeMaintenanceWindowEnd =>
      TfRef.attribute<String>(this, 'time_maintenance_window_end');

  /// Reference to `time_maintenance_window_start` attribute.
  TfRef<String> get timeMaintenanceWindowStart =>
      TfRef.attribute<String>(this, 'time_maintenance_window_start');

  /// Reference to `total_cpu_core_count` attribute.
  TfRef<num> get totalCpuCoreCount =>
      TfRef.attribute<num>(this, 'total_cpu_core_count');

  /// Reference to `vnic2_id` attribute.
  TfRef<String> get vnic2Id => TfRef.attribute<String>(this, 'vnic2_id');

  /// Reference to `vnic_id` attribute.
  TfRef<String> get vnicId => TfRef.attribute<String>(this, 'vnic_id');
}
