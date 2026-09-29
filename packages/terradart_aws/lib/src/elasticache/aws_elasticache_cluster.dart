// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;

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

/// Exactly one of `engine`, `replication_group_id` on `aws_elasticache_cluster`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.engine(...)`.
sealed class ElasticacheClusterSource {
  const ElasticacheClusterSource();

  /// Sets `engine`.
  const factory ElasticacheClusterSource.engine(
    TfArg<ElasticacheClusterEngine> engine,
  ) = ElasticacheClusterSourceEngine;

  /// Sets `replication_group_id`.
  const factory ElasticacheClusterSource.replicationGroupId(
    TfArg<String> replicationGroupId,
  ) = ElasticacheClusterSourceReplicationGroupId;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ElasticacheClusterSource.engine] choice: sets `engine`.
final class ElasticacheClusterSourceEngine extends ElasticacheClusterSource {
  const ElasticacheClusterSourceEngine(this.engine);

  final TfArg<ElasticacheClusterEngine> engine;

  @override
  String get blockKey => 'engine';

  @override
  Map<String, Object?> encode() => {'engine': engine.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'engine': engine};
}

/// The [ElasticacheClusterSource.replicationGroupId] choice: sets `replication_group_id`.
final class ElasticacheClusterSourceReplicationGroupId
    extends ElasticacheClusterSource {
  const ElasticacheClusterSourceReplicationGroupId(this.replicationGroupId);

  final TfArg<String> replicationGroupId;

  @override
  String get blockKey => 'replication_group_id';

  @override
  Map<String, Object?> encode() => {
    'replication_group_id': replicationGroupId.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'replication_group_id': replicationGroupId,
  };
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
    required ElasticacheClusterSource source,
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
    TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroupIds,
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
           'apply_immediately': ?applyImmediately,
           'auto_minor_version_upgrade': ?autoMinorVersionUpgrade,
           'availability_zone': ?availabilityZone,
           'az_mode': ?azMode,
           'cluster_id': clusterId,
           ...source.argMap,
           'engine_version': ?engineVersion,
           'final_snapshot_identifier': ?finalSnapshotIdentifier,
           'ip_discovery': ?ipDiscovery,
           'maintenance_window': ?maintenanceWindow,
           'network_type': ?networkType,
           'node_type': ?nodeType,
           'notification_topic_arn': ?notificationTopicArn,
           'num_cache_nodes': ?numCacheNodes,
           'outpost_mode': ?outpostMode,
           'parameter_group_name': ?parameterGroupName,
           'port': ?port,
           'preferred_availability_zones': ?preferredAvailabilityZones,
           'preferred_outpost_arn': ?preferredOutpostArn,
           'region': ?region,
           'security_group_ids': ?securityGroupIds?.encodeAs('id'),
           'snapshot_arns': ?snapshotArns,
           'snapshot_name': ?snapshotName,
           'snapshot_retention_limit': ?snapshotRetentionLimit,
           'snapshot_window': ?snapshotWindow,
           'subnet_group_name': ?subnetGroupName,
           'tags': ?tags,
           'transit_encryption_enabled': ?transitEncryptionEnabled,
           if (logDeliveryConfiguration != null)
             'log_delivery_configuration': TfArg.literal([
               for (final e in logDeliveryConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsElasticacheClusterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsElasticacheCluster>`.
  RefTo<AwsElasticacheCluster> get ref => RefTo.of(this);

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
