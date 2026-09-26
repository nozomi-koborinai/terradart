// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_elasticache_replication_group`.
const Set<String> _awsElasticacheReplicationGroupSensitive = <String>{};

/// Factory wrapper for `aws_elasticache_replication_group`.
final class DataAwsElasticacheReplicationGroup extends Data {
  static const String tfType = 'aws_elasticache_replication_group';

  DataAwsElasticacheReplicationGroup({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> replicationGroupId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'replication_group_id': replicationGroupId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsElasticacheReplicationGroupSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `auth_token_enabled` attribute.
  TfRef<bool> get authTokenEnabled =>
      TfRef.attribute<bool>(this, 'auth_token_enabled');

  /// Reference to `automatic_failover_enabled` attribute.
  TfRef<bool> get automaticFailoverEnabled =>
      TfRef.attribute<bool>(this, 'automatic_failover_enabled');

  /// Reference to `cluster_mode` attribute.
  TfRef<String> get clusterMode =>
      TfRef.attribute<String>(this, 'cluster_mode');

  /// Reference to `configuration_endpoint_address` attribute.
  TfRef<String> get configurationEndpointAddress =>
      TfRef.attribute<String>(this, 'configuration_endpoint_address');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `log_delivery_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get logDeliveryConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'log_delivery_configuration',
      );

  /// Reference to `member_clusters` attribute.
  TfRef<List<String>> get memberClusters =>
      TfRef.attribute<List<String>>(this, 'member_clusters');

  /// Reference to `multi_az_enabled` attribute.
  TfRef<bool> get multiAzEnabled =>
      TfRef.attribute<bool>(this, 'multi_az_enabled');

  /// Reference to `node_group_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get nodeGroupConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'node_group_configuration',
      );

  /// Reference to `node_type` attribute.
  TfRef<String> get nodeType => TfRef.attribute<String>(this, 'node_type');

  /// Reference to `num_cache_clusters` attribute.
  TfRef<num> get numCacheClusters =>
      TfRef.attribute<num>(this, 'num_cache_clusters');

  /// Reference to `num_node_groups` attribute.
  TfRef<num> get numNodeGroups => TfRef.attribute<num>(this, 'num_node_groups');

  /// Reference to `port` attribute.
  TfRef<num> get port => TfRef.attribute<num>(this, 'port');

  /// Reference to `primary_endpoint_address` attribute.
  TfRef<String> get primaryEndpointAddress =>
      TfRef.attribute<String>(this, 'primary_endpoint_address');

  /// Reference to `reader_endpoint_address` attribute.
  TfRef<String> get readerEndpointAddress =>
      TfRef.attribute<String>(this, 'reader_endpoint_address');

  /// Reference to `replicas_per_node_group` attribute.
  TfRef<num> get replicasPerNodeGroup =>
      TfRef.attribute<num>(this, 'replicas_per_node_group');

  /// Reference to `snapshot_retention_limit` attribute.
  TfRef<num> get snapshotRetentionLimit =>
      TfRef.attribute<num>(this, 'snapshot_retention_limit');

  /// Reference to `snapshot_window` attribute.
  TfRef<String> get snapshotWindow =>
      TfRef.attribute<String>(this, 'snapshot_window');
}
