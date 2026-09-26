// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_elasticache_cluster`.
const Set<String> _awsElasticacheClusterSensitive = <String>{};

/// Factory wrapper for `aws_elasticache_cluster`.
final class DataAwsElasticacheCluster extends Data {
  static const String tfType = 'aws_elasticache_cluster';

  DataAwsElasticacheCluster({
    required super.localName,
    required TfArg<String> clusterId,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_id': clusterId,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsElasticacheClusterSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `availability_zone` attribute.
  TfRef<String> get availabilityZone =>
      TfRef.attribute<String>(this, 'availability_zone');

  /// Reference to `cache_nodes` attribute.
  TfRef<List<Map<String, Object?>>> get cacheNodes =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'cache_nodes');

  /// Reference to `cluster_address` attribute.
  TfRef<String> get clusterAddress =>
      TfRef.attribute<String>(this, 'cluster_address');

  /// Reference to `configuration_endpoint` attribute.
  TfRef<String> get configurationEndpoint =>
      TfRef.attribute<String>(this, 'configuration_endpoint');

  /// Reference to `engine` attribute.
  TfRef<String> get engine => TfRef.attribute<String>(this, 'engine');

  /// Reference to `engine_version` attribute.
  TfRef<String> get engineVersion =>
      TfRef.attribute<String>(this, 'engine_version');

  /// Reference to `ip_discovery` attribute.
  TfRef<String> get ipDiscovery =>
      TfRef.attribute<String>(this, 'ip_discovery');

  /// Reference to `log_delivery_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get logDeliveryConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'log_delivery_configuration',
      );

  /// Reference to `maintenance_window` attribute.
  TfRef<String> get maintenanceWindow =>
      TfRef.attribute<String>(this, 'maintenance_window');

  /// Reference to `network_type` attribute.
  TfRef<String> get networkType =>
      TfRef.attribute<String>(this, 'network_type');

  /// Reference to `node_type` attribute.
  TfRef<String> get nodeType => TfRef.attribute<String>(this, 'node_type');

  /// Reference to `notification_topic_arn` attribute.
  TfRef<String> get notificationTopicArn =>
      TfRef.attribute<String>(this, 'notification_topic_arn');

  /// Reference to `num_cache_nodes` attribute.
  TfRef<num> get numCacheNodes => TfRef.attribute<num>(this, 'num_cache_nodes');

  /// Reference to `parameter_group_name` attribute.
  TfRef<String> get parameterGroupName =>
      TfRef.attribute<String>(this, 'parameter_group_name');

  /// Reference to `port` attribute.
  TfRef<num> get port => TfRef.attribute<num>(this, 'port');

  /// Reference to `preferred_outpost_arn` attribute.
  TfRef<String> get preferredOutpostArn =>
      TfRef.attribute<String>(this, 'preferred_outpost_arn');

  /// Reference to `replication_group_id` attribute.
  TfRef<String> get replicationGroupId =>
      TfRef.attribute<String>(this, 'replication_group_id');

  /// Reference to `security_group_ids` attribute.
  TfRef<List<String>> get securityGroupIds =>
      TfRef.attribute<List<String>>(this, 'security_group_ids');

  /// Reference to `snapshot_retention_limit` attribute.
  TfRef<num> get snapshotRetentionLimit =>
      TfRef.attribute<num>(this, 'snapshot_retention_limit');

  /// Reference to `snapshot_window` attribute.
  TfRef<String> get snapshotWindow =>
      TfRef.attribute<String>(this, 'snapshot_window');

  /// Reference to `subnet_group_name` attribute.
  TfRef<String> get subnetGroupName =>
      TfRef.attribute<String>(this, 'subnet_group_name');
}
