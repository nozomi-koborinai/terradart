// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_memorydb_cluster`.
const Set<String> _awsMemorydbClusterSensitive = <String>{};

/// Factory wrapper for `aws_memorydb_cluster`.
final class AwsMemorydbCluster extends Resource {
  static const String tfType = 'aws_memorydb_cluster';

  AwsMemorydbCluster({
    required super.localName,
    required TfArg<String> aclName,
    TfArg<bool>? autoMinorVersionUpgrade,
    TfArg<bool>? dataTiering,
    TfArg<String>? description,
    TfArg<String>? engine,
    TfArg<String>? engineVersion,
    TfArg<String>? finalSnapshotName,
    TfArg<String>? ipDiscovery,
    TfArg<String>? kmsKeyArn,
    TfArg<String>? maintenanceWindow,
    TfArg<String>? multiRegionClusterName,
    TfArg<String>? name,
    TfArg<String>? namePrefix,
    TfArg<String>? networkType,
    required TfArg<String> nodeType,
    TfArg<num>? numReplicasPerShard,
    TfArg<num>? numShards,
    TfArg<String>? parameterGroupName,
    TfArg<num>? port,
    TfArg<String>? region,
    TfArg<List<String>>? securityGroupIds,
    TfArg<List<String>>? snapshotArns,
    TfArg<String>? snapshotName,
    TfArg<num>? snapshotRetentionLimit,
    TfArg<String>? snapshotWindow,
    TfArg<String>? snsTopicArn,
    TfArg<String>? subnetGroupName,
    TfArg<Map<String, String>>? tags,
    TfArg<bool>? tlsEnabled,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'acl_name': aclName,
           if (autoMinorVersionUpgrade != null)
             'auto_minor_version_upgrade': autoMinorVersionUpgrade,
           if (dataTiering != null) 'data_tiering': dataTiering,
           if (description != null) 'description': description,
           if (engine != null) 'engine': engine,
           if (engineVersion != null) 'engine_version': engineVersion,
           if (finalSnapshotName != null)
             'final_snapshot_name': finalSnapshotName,
           if (ipDiscovery != null) 'ip_discovery': ipDiscovery,
           if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn,
           if (maintenanceWindow != null)
             'maintenance_window': maintenanceWindow,
           if (multiRegionClusterName != null)
             'multi_region_cluster_name': multiRegionClusterName,
           if (name != null) 'name': name,
           if (namePrefix != null) 'name_prefix': namePrefix,
           if (networkType != null) 'network_type': networkType,
           'node_type': nodeType,
           if (numReplicasPerShard != null)
             'num_replicas_per_shard': numReplicasPerShard,
           if (numShards != null) 'num_shards': numShards,
           if (parameterGroupName != null)
             'parameter_group_name': parameterGroupName,
           if (port != null) 'port': port,
           if (region != null) 'region': region,
           if (securityGroupIds != null) 'security_group_ids': securityGroupIds,
           if (snapshotArns != null) 'snapshot_arns': snapshotArns,
           if (snapshotName != null) 'snapshot_name': snapshotName,
           if (snapshotRetentionLimit != null)
             'snapshot_retention_limit': snapshotRetentionLimit,
           if (snapshotWindow != null) 'snapshot_window': snapshotWindow,
           if (snsTopicArn != null) 'sns_topic_arn': snsTopicArn,
           if (subnetGroupName != null) 'subnet_group_name': subnetGroupName,
           if (tags != null) 'tags': tags,
           if (tlsEnabled != null) 'tls_enabled': tlsEnabled,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMemorydbClusterSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `cluster_endpoint` attribute.
  TfRef<List<Map<String, Object?>>> get clusterEndpoint =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'cluster_endpoint');

  /// Reference to `engine_patch_version` attribute.
  TfRef<String> get enginePatchVersion =>
      TfRef.attribute<String>(this, 'engine_patch_version');

  /// Reference to `shards` attribute.
  TfRef<List<Map<String, Object?>>> get shards =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'shards');
}
