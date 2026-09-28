// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_elasticache_cluster`.
const Set<String> _awsElasticacheClusterSensitive = <String>{};

/// Elasticache Cluster Az enum for `az_mode`.
enum ElasticacheClusterAzMode implements TerraformEnum {
  singleAz('single-az'),
  crossAz('cross-az');

  const ElasticacheClusterAzMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Elasticache Cluster enum for `engine`.
enum ElasticacheClusterEngine implements TerraformEnum {
  memcached('memcached'),
  redis('redis');

  const ElasticacheClusterEngine(this.terraformValue);
  @override
  final String terraformValue;
}

/// Elasticache Cluster Ip enum for `ip_discovery`.
enum ElasticacheClusterIpDiscovery implements TerraformEnum {
  ipv4('ipv4'),
  ipv6('ipv6');

  const ElasticacheClusterIpDiscovery(this.terraformValue);
  @override
  final String terraformValue;
}

/// Elasticache Cluster Network enum for `network_type`.
enum ElasticacheClusterNetworkType implements TerraformEnum {
  ipv4('ipv4'),
  ipv6('ipv6'),
  dualStack('dual_stack');

  const ElasticacheClusterNetworkType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Elasticache Cluster Outpost enum for `outpost_mode`.
enum ElasticacheClusterOutpostMode implements TerraformEnum {
  singleOutpost('single-outpost'),
  crossOutpost('cross-outpost');

  const ElasticacheClusterOutpostMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `log_delivery_configuration` block of
/// `aws_elasticache_cluster` (derived from provider schema).
@immutable
final class ElasticacheClusterLogDeliveryConfiguration {
  const ElasticacheClusterLogDeliveryConfiguration({
    required this.destination,
    required this.destinationType,
    required this.logFormat,
    required this.logType,
  });

  final TfArg<String> destination;

  final TfArg<ElasticacheClusterLogDeliveryConfigurationDestinationType>
  destinationType;

  final TfArg<ElasticacheClusterLogDeliveryConfigurationLogFormat> logFormat;

  final TfArg<ElasticacheClusterLogDeliveryConfigurationLogType> logType;

  Map<String, Object?> encode() => {
    'destination': destination.toTfJson(),
    'destination_type': destinationType.toTfJson(),
    'log_format': logFormat.toTfJson(),
    'log_type': logType.toTfJson(),
  };
}

/// `destination_type` — derived from the provider schema description.
enum ElasticacheClusterLogDeliveryConfigurationDestinationType
    implements TerraformEnum {
  cloudwatchLogs('cloudwatch-logs'),
  kinesisFirehose('kinesis-firehose');

  const ElasticacheClusterLogDeliveryConfigurationDestinationType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `log_format` — derived from the provider schema description.
enum ElasticacheClusterLogDeliveryConfigurationLogFormat
    implements TerraformEnum {
  text('text'),
  json('json');

  const ElasticacheClusterLogDeliveryConfigurationLogFormat(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `log_type` — derived from the provider schema description.
enum ElasticacheClusterLogDeliveryConfigurationLogType
    implements TerraformEnum {
  slowLog('slow-log'),
  engineLog('engine-log');

  const ElasticacheClusterLogDeliveryConfigurationLogType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_elasticache_cluster`.
final class AwsElasticacheCluster extends Resource {
  static const String tfType = 'aws_elasticache_cluster';

  AwsElasticacheCluster({
    required super.localName,
    TfArg<bool>? applyImmediately,
    TfArg<String>? autoMinorVersionUpgrade,
    TfArg<String>? availabilityZone,
    TfArg<ElasticacheClusterAzMode>? azMode,
    required TfArg<String> clusterId,
    TfArg<ElasticacheClusterEngine>? engine,
    TfArg<String>? engineVersion,
    TfArg<String>? finalSnapshotIdentifier,
    TfArg<ElasticacheClusterIpDiscovery>? ipDiscovery,
    TfArg<String>? maintenanceWindow,
    TfArg<ElasticacheClusterNetworkType>? networkType,
    TfArg<String>? nodeType,
    TfArg<String>? notificationTopicArn,
    TfArg<num>? numCacheNodes,
    TfArg<ElasticacheClusterOutpostMode>? outpostMode,
    TfArg<String>? parameterGroupName,
    TfArg<num>? port,
    TfArg<List<String>>? preferredAvailabilityZones,
    TfArg<String>? preferredOutpostArn,
    TfArg<String>? region,
    TfArg<String>? replicationGroupId,
    TfArg<List<String>>? securityGroupIds,
    TfArg<List<String>>? snapshotArns,
    TfArg<String>? snapshotName,
    TfArg<num>? snapshotRetentionLimit,
    TfArg<String>? snapshotWindow,
    TfArg<String>? subnetGroupName,
    TfArg<Map<String, String>>? tags,
    TfArg<bool>? transitEncryptionEnabled,
    List<ElasticacheClusterLogDeliveryConfiguration>? logDeliveryConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (applyImmediately != null) 'apply_immediately': applyImmediately,
           if (autoMinorVersionUpgrade != null)
             'auto_minor_version_upgrade': autoMinorVersionUpgrade,
           if (availabilityZone != null) 'availability_zone': availabilityZone,
           if (azMode != null) 'az_mode': azMode,
           'cluster_id': clusterId,
           if (engine != null) 'engine': engine,
           if (engineVersion != null) 'engine_version': engineVersion,
           if (finalSnapshotIdentifier != null)
             'final_snapshot_identifier': finalSnapshotIdentifier,
           if (ipDiscovery != null) 'ip_discovery': ipDiscovery,
           if (maintenanceWindow != null)
             'maintenance_window': maintenanceWindow,
           if (networkType != null) 'network_type': networkType,
           if (nodeType != null) 'node_type': nodeType,
           if (notificationTopicArn != null)
             'notification_topic_arn': notificationTopicArn,
           if (numCacheNodes != null) 'num_cache_nodes': numCacheNodes,
           if (outpostMode != null) 'outpost_mode': outpostMode,
           if (parameterGroupName != null)
             'parameter_group_name': parameterGroupName,
           if (port != null) 'port': port,
           if (preferredAvailabilityZones != null)
             'preferred_availability_zones': preferredAvailabilityZones,
           if (preferredOutpostArn != null)
             'preferred_outpost_arn': preferredOutpostArn,
           if (region != null) 'region': region,
           if (replicationGroupId != null)
             'replication_group_id': replicationGroupId,
           if (securityGroupIds != null) 'security_group_ids': securityGroupIds,
           if (snapshotArns != null) 'snapshot_arns': snapshotArns,
           if (snapshotName != null) 'snapshot_name': snapshotName,
           if (snapshotRetentionLimit != null)
             'snapshot_retention_limit': snapshotRetentionLimit,
           if (snapshotWindow != null) 'snapshot_window': snapshotWindow,
           if (subnetGroupName != null) 'subnet_group_name': subnetGroupName,
           if (tags != null) 'tags': tags,
           if (transitEncryptionEnabled != null)
             'transit_encryption_enabled': transitEncryptionEnabled,
           if (logDeliveryConfiguration != null)
             'log_delivery_configuration': TfArg.literal([
               for (final e in logDeliveryConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsElasticacheClusterSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `cache_nodes` attribute.
  TfRef<List<Map<String, Object?>>> get cacheNodes =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'cache_nodes');

  /// Reference to `cluster_address` attribute.
  TfRef<String> get clusterAddress =>
      TfRef.attribute<String>(this, 'cluster_address');

  /// Reference to `configuration_endpoint` attribute.
  TfRef<String> get configurationEndpoint =>
      TfRef.attribute<String>(this, 'configuration_endpoint');

  /// Reference to `engine_version_actual` attribute.
  TfRef<String> get engineVersionActual =>
      TfRef.attribute<String>(this, 'engine_version_actual');
}
