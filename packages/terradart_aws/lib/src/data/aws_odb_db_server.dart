// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_odb_db_server`.
const Set<String> _awsOdbDbServerSensitive = <String>{};

/// Factory wrapper for `aws_odb_db_server`.
final class DataAwsOdbDbServer extends Data {
  static const String tfType = 'aws_odb_db_server';

  DataAwsOdbDbServer({
    required super.localName,
    required TfArg<String> cloudExadataInfrastructureId,
    required TfArg<String> id,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cloud_exadata_infrastructure_id': cloudExadataInfrastructureId,
           'id': id,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsOdbDbServerSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `autonomous_virtual_machine_ids` attribute.
  TfRef<List<String>> get autonomousVirtualMachineIds =>
      TfRef.attribute<List<String>>(this, 'autonomous_virtual_machine_ids');

  /// Reference to `autonomous_vm_cluster_ids` attribute.
  TfRef<List<String>> get autonomousVmClusterIds =>
      TfRef.attribute<List<String>>(this, 'autonomous_vm_cluster_ids');

  /// Reference to `compute_model` attribute.
  TfRef<String> get computeModel =>
      TfRef.attribute<String>(this, 'compute_model');

  /// Reference to `cpu_core_count` attribute.
  TfRef<num> get cpuCoreCount => TfRef.attribute<num>(this, 'cpu_core_count');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `db_node_storage_size_in_gbs` attribute.
  TfRef<num> get dbNodeStorageSizeInGbs =>
      TfRef.attribute<num>(this, 'db_node_storage_size_in_gbs');

  /// Reference to `db_server_patching_details` attribute.
  TfRef<List<Map<String, Object?>>> get dbServerPatchingDetails =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'db_server_patching_details',
      );

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `exadata_infrastructure_id` attribute.
  TfRef<String> get exadataInfrastructureId =>
      TfRef.attribute<String>(this, 'exadata_infrastructure_id');

  /// Reference to `max_cpu_count` attribute.
  TfRef<num> get maxCpuCount => TfRef.attribute<num>(this, 'max_cpu_count');

  /// Reference to `max_db_node_storage_in_gbs` attribute.
  TfRef<num> get maxDbNodeStorageInGbs =>
      TfRef.attribute<num>(this, 'max_db_node_storage_in_gbs');

  /// Reference to `max_memory_in_gbs` attribute.
  TfRef<num> get maxMemoryInGbs =>
      TfRef.attribute<num>(this, 'max_memory_in_gbs');

  /// Reference to `memory_size_in_gbs` attribute.
  TfRef<num> get memorySizeInGbs =>
      TfRef.attribute<num>(this, 'memory_size_in_gbs');

  /// Reference to `oci_resource_anchor_name` attribute.
  TfRef<String> get ociResourceAnchorName =>
      TfRef.attribute<String>(this, 'oci_resource_anchor_name');

  /// Reference to `ocid` attribute.
  TfRef<String> get ocid => TfRef.attribute<String>(this, 'ocid');

  /// Reference to `shape` attribute.
  TfRef<String> get shape => TfRef.attribute<String>(this, 'shape');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `status_reason` attribute.
  TfRef<String> get statusReason =>
      TfRef.attribute<String>(this, 'status_reason');

  /// Reference to `vm_cluster_ids` attribute.
  TfRef<List<String>> get vmClusterIds =>
      TfRef.attribute<List<String>>(this, 'vm_cluster_ids');
}
