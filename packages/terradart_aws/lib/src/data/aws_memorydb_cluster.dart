// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_memorydb_cluster`.
const Set<String> _awsMemorydbClusterSensitive = <String>{};

/// Factory wrapper for `aws_memorydb_cluster`.
final class DataAwsMemorydbCluster extends Data {
  static const String tfType = 'aws_memorydb_cluster';

  DataAwsMemorydbCluster({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMemorydbClusterSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `acl_name` attribute.
  TfRef<String> get aclName => TfRef.attribute<String>(this, 'acl_name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `auto_minor_version_upgrade` attribute.
  TfRef<bool> get autoMinorVersionUpgrade =>
      TfRef.attribute<bool>(this, 'auto_minor_version_upgrade');

  /// Reference to `cluster_endpoint` attribute.
  TfRef<List<Map<String, Object?>>> get clusterEndpoint =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'cluster_endpoint');

  /// Reference to `data_tiering` attribute.
  TfRef<bool> get dataTiering => TfRef.attribute<bool>(this, 'data_tiering');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `engine` attribute.
  TfRef<String> get engine => TfRef.attribute<String>(this, 'engine');

  /// Reference to `engine_patch_version` attribute.
  TfRef<String> get enginePatchVersion =>
      TfRef.attribute<String>(this, 'engine_patch_version');

  /// Reference to `engine_version` attribute.
  TfRef<String> get engineVersion =>
      TfRef.attribute<String>(this, 'engine_version');

  /// Reference to `final_snapshot_name` attribute.
  TfRef<String> get finalSnapshotName =>
      TfRef.attribute<String>(this, 'final_snapshot_name');

  /// Reference to `ip_discovery` attribute.
  TfRef<String> get ipDiscovery =>
      TfRef.attribute<String>(this, 'ip_discovery');

  /// Reference to `kms_key_arn` attribute.
  TfRef<String> get kmsKeyArn => TfRef.attribute<String>(this, 'kms_key_arn');

  /// Reference to `maintenance_window` attribute.
  TfRef<String> get maintenanceWindow =>
      TfRef.attribute<String>(this, 'maintenance_window');

  /// Reference to `network_type` attribute.
  TfRef<String> get networkType =>
      TfRef.attribute<String>(this, 'network_type');

  /// Reference to `node_type` attribute.
  TfRef<String> get nodeType => TfRef.attribute<String>(this, 'node_type');

  /// Reference to `num_replicas_per_shard` attribute.
  TfRef<num> get numReplicasPerShard =>
      TfRef.attribute<num>(this, 'num_replicas_per_shard');

  /// Reference to `num_shards` attribute.
  TfRef<num> get numShards => TfRef.attribute<num>(this, 'num_shards');

  /// Reference to `parameter_group_name` attribute.
  TfRef<String> get parameterGroupName =>
      TfRef.attribute<String>(this, 'parameter_group_name');

  /// Reference to `port` attribute.
  TfRef<num> get port => TfRef.attribute<num>(this, 'port');

  /// Reference to `security_group_ids` attribute.
  TfRef<List<String>> get securityGroupIds =>
      TfRef.attribute<List<String>>(this, 'security_group_ids');

  /// Reference to `shards` attribute.
  TfRef<List<Map<String, Object?>>> get shards =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'shards');

  /// Reference to `snapshot_retention_limit` attribute.
  TfRef<num> get snapshotRetentionLimit =>
      TfRef.attribute<num>(this, 'snapshot_retention_limit');

  /// Reference to `snapshot_window` attribute.
  TfRef<String> get snapshotWindow =>
      TfRef.attribute<String>(this, 'snapshot_window');

  /// Reference to `sns_topic_arn` attribute.
  TfRef<String> get snsTopicArn =>
      TfRef.attribute<String>(this, 'sns_topic_arn');

  /// Reference to `subnet_group_name` attribute.
  TfRef<String> get subnetGroupName =>
      TfRef.attribute<String>(this, 'subnet_group_name');

  /// Reference to `tls_enabled` attribute.
  TfRef<bool> get tlsEnabled => TfRef.attribute<bool>(this, 'tls_enabled');
}
