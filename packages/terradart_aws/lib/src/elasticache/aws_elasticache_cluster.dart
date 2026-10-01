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

  final TfArg<ElasticacheClusterDestinationType> destinationType;

  final TfArg<ElasticacheClusterLogFormat> logFormat;

  final TfArg<ElasticacheClusterLogType> logType;

  Map<String, Object?> encode() => {
    'destination': destination.toTfJson(),
    'destination_type': destinationType.toTfJson(),
    'log_format': logFormat.toTfJson(),
    'log_type': logType.toTfJson(),
  };
}

/// `destination_type` — derived from the provider schema description.
enum ElasticacheClusterDestinationType implements TerraformEnum {
  cloudwatchLogs('cloudwatch-logs'),
  kinesisFirehose('kinesis-firehose');

  const ElasticacheClusterDestinationType(this.terraformValue);
  @override
  final String terraformValue;
}

/// `log_format` — derived from the provider schema description.
enum ElasticacheClusterLogFormat implements TerraformEnum {
  text('text'),
  json('json');

  const ElasticacheClusterLogFormat(this.terraformValue);
  @override
  final String terraformValue;
}

/// `log_type` — derived from the provider schema description.
enum ElasticacheClusterLogType implements TerraformEnum {
  slowLog('slow-log'),
  engineLog('engine-log');

  const ElasticacheClusterLogType(this.terraformValue);
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

  /// Reference to `apply_immediately` attribute.
  TfRef<bool> get applyImmediately =>
      TfRef.attribute<bool>(this, 'apply_immediately');

  /// Reference to `auto_minor_version_upgrade` attribute.
  TfRef<String> get autoMinorVersionUpgrade =>
      TfRef.attribute<String>(this, 'auto_minor_version_upgrade');

  /// Reference to `availability_zone` attribute.
  TfRef<String> get availabilityZone =>
      TfRef.attribute<String>(this, 'availability_zone');

  /// Reference to `az_mode` attribute.
  TfRef<String> get azMode => TfRef.attribute<String>(this, 'az_mode');

  /// Reference to `cluster_id` attribute.
  TfRef<String> get clusterId => TfRef.attribute<String>(this, 'cluster_id');

  /// Reference to `engine` attribute.
  TfRef<String> get engine => TfRef.attribute<String>(this, 'engine');

  /// Reference to `engine_version` attribute.
  TfRef<String> get engineVersion =>
      TfRef.attribute<String>(this, 'engine_version');

  /// Reference to `final_snapshot_identifier` attribute.
  TfRef<String> get finalSnapshotIdentifier =>
      TfRef.attribute<String>(this, 'final_snapshot_identifier');

  /// Reference to `ip_discovery` attribute.
  TfRef<String> get ipDiscovery =>
      TfRef.attribute<String>(this, 'ip_discovery');

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

  /// Reference to `outpost_mode` attribute.
  TfRef<String> get outpostMode =>
      TfRef.attribute<String>(this, 'outpost_mode');

  /// Reference to `parameter_group_name` attribute.
  TfRef<String> get parameterGroupName =>
      TfRef.attribute<String>(this, 'parameter_group_name');

  /// Reference to `port` attribute.
  TfRef<num> get port => TfRef.attribute<num>(this, 'port');

  /// Reference to `preferred_availability_zones` attribute.
  TfRef<List<String>> get preferredAvailabilityZones =>
      TfRef.attribute<List<String>>(this, 'preferred_availability_zones');

  /// Reference to `preferred_outpost_arn` attribute.
  TfRef<String> get preferredOutpostArn =>
      TfRef.attribute<String>(this, 'preferred_outpost_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `replication_group_id` attribute.
  TfRef<String> get replicationGroupId =>
      TfRef.attribute<String>(this, 'replication_group_id');

  /// Reference to `security_group_ids` attribute.
  TfRef<List<String>> get securityGroupIds =>
      TfRef.attribute<List<String>>(this, 'security_group_ids');

  /// Reference to `snapshot_arns` attribute.
  TfRef<List<String>> get snapshotArns =>
      TfRef.attribute<List<String>>(this, 'snapshot_arns');

  /// Reference to `snapshot_name` attribute.
  TfRef<String> get snapshotName =>
      TfRef.attribute<String>(this, 'snapshot_name');

  /// Reference to `snapshot_retention_limit` attribute.
  TfRef<num> get snapshotRetentionLimit =>
      TfRef.attribute<num>(this, 'snapshot_retention_limit');

  /// Reference to `snapshot_window` attribute.
  TfRef<String> get snapshotWindow =>
      TfRef.attribute<String>(this, 'snapshot_window');

  /// Reference to `subnet_group_name` attribute.
  TfRef<String> get subnetGroupName =>
      TfRef.attribute<String>(this, 'subnet_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `transit_encryption_enabled` attribute.
  TfRef<bool> get transitEncryptionEnabled =>
      TfRef.attribute<bool>(this, 'transit_encryption_enabled');
}
