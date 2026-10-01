// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_elasticache_replication_group`.
const Set<String> _awsElasticacheReplicationGroupSensitive = <String>{
  'auth_token',
  'auth_token_wo',
};

/// Elasticache Replication Group Auth Token Update enum for `auth_token_update_strategy`.
enum ElasticacheReplicationGroupAuthTokenUpdateStrategy
    implements TerraformEnum {
  set('SET'),
  rotate('ROTATE'),
  delete('DELETE');

  const ElasticacheReplicationGroupAuthTokenUpdateStrategy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Elasticache Replication Group Cluster enum for `cluster_mode`.
enum ElasticacheReplicationGroupClusterMode implements TerraformEnum {
  enabled('enabled'),
  disabled('disabled'),
  compatible('compatible');

  const ElasticacheReplicationGroupClusterMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Elasticache Replication Group enum for `durability`.
enum ElasticacheReplicationGroupDurability implements TerraformEnum {
  defaultCase('default'),
  async('async'),
  sync('sync'),
  disabled('disabled');

  const ElasticacheReplicationGroupDurability(this.terraformValue);
  @override
  final String terraformValue;
}

/// Elasticache Replication Group enum for `engine`.
enum ElasticacheReplicationGroupEngine implements TerraformEnum {
  redis('redis'),
  valkey('valkey');

  const ElasticacheReplicationGroupEngine(this.terraformValue);
  @override
  final String terraformValue;
}

/// Elasticache Replication Group Ip enum for `ip_discovery`.
enum ElasticacheReplicationGroupIpDiscovery implements TerraformEnum {
  ipv4('ipv4'),
  ipv6('ipv6');

  const ElasticacheReplicationGroupIpDiscovery(this.terraformValue);
  @override
  final String terraformValue;
}

/// Elasticache Replication Group Network enum for `network_type`.
enum ElasticacheReplicationGroupNetworkType implements TerraformEnum {
  ipv4('ipv4'),
  ipv6('ipv6'),
  dualStack('dual_stack');

  const ElasticacheReplicationGroupNetworkType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Elasticache Replication Group Transit Encryption enum for `transit_encryption_mode`.
enum ElasticacheReplicationGroupTransitEncryptionMode implements TerraformEnum {
  preferred('preferred'),
  required('required');

  const ElasticacheReplicationGroupTransitEncryptionMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `auth_token`, `auth_token_wo`, `user_group_ids` on `aws_elasticache_replication_group`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.authToken(...)`.
sealed class ElasticacheReplicationGroupAuth {
  const ElasticacheReplicationGroupAuth();

  /// Sets `auth_token`.
  const factory ElasticacheReplicationGroupAuth.authToken(
    TfArg<String> authToken,
  ) = ElasticacheReplicationGroupAuthToken;

  /// Sets `auth_token_wo`.
  const factory ElasticacheReplicationGroupAuth.authTokenWo(
    TfArg<String> authTokenWo,
  ) = ElasticacheReplicationGroupAuthTokenWo;

  /// Sets `user_group_ids`.
  const factory ElasticacheReplicationGroupAuth.userGroupIds(
    TfArg<List<String>> userGroupIds,
  ) = ElasticacheReplicationGroupAuthUserGroupIds;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ElasticacheReplicationGroupAuth.authToken] choice: sets `auth_token`.
final class ElasticacheReplicationGroupAuthToken
    extends ElasticacheReplicationGroupAuth {
  const ElasticacheReplicationGroupAuthToken(this.authToken);

  final TfArg<String> authToken;

  @override
  String get blockKey => 'auth_token';

  @override
  Map<String, Object?> encode() => {'auth_token': authToken.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'auth_token': authToken};
}

/// The [ElasticacheReplicationGroupAuth.authTokenWo] choice: sets `auth_token_wo`.
final class ElasticacheReplicationGroupAuthTokenWo
    extends ElasticacheReplicationGroupAuth {
  const ElasticacheReplicationGroupAuthTokenWo(this.authTokenWo);

  final TfArg<String> authTokenWo;

  @override
  String get blockKey => 'auth_token_wo';

  @override
  Map<String, Object?> encode() => {'auth_token_wo': authTokenWo.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'auth_token_wo': authTokenWo};
}

/// The [ElasticacheReplicationGroupAuth.userGroupIds] choice: sets `user_group_ids`.
final class ElasticacheReplicationGroupAuthUserGroupIds
    extends ElasticacheReplicationGroupAuth {
  const ElasticacheReplicationGroupAuthUserGroupIds(this.userGroupIds);

  final TfArg<List<String>> userGroupIds;

  @override
  String get blockKey => 'user_group_ids';

  @override
  Map<String, Object?> encode() => {'user_group_ids': userGroupIds.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'user_group_ids': userGroupIds};
}

/// At most one of `node_group_configuration`, `preferred_cache_cluster_azs` on `aws_elasticache_replication_group`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.nodeGroupConfiguration(...)`.
sealed class ElasticacheReplicationGroupTopology {
  const ElasticacheReplicationGroupTopology();

  /// Sets `node_group_configuration`.
  const factory ElasticacheReplicationGroupTopology.nodeGroupConfiguration(
    List<ElasticacheReplicationGroupNodeGroupConfiguration>
    nodeGroupConfiguration,
  ) = ElasticacheReplicationGroupTopologyNodeGroupConfiguration;

  /// Sets `preferred_cache_cluster_azs`.
  const factory ElasticacheReplicationGroupTopology.preferredCacheClusterAzs(
    TfArg<List<String>> preferredCacheClusterAzs,
  ) = ElasticacheReplicationGroupTopologyPreferredCacheClusterAzs;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ElasticacheReplicationGroupTopology.nodeGroupConfiguration] choice: sets `node_group_configuration`.
final class ElasticacheReplicationGroupTopologyNodeGroupConfiguration
    extends ElasticacheReplicationGroupTopology {
  const ElasticacheReplicationGroupTopologyNodeGroupConfiguration(
    this.nodeGroupConfiguration,
  );

  final List<ElasticacheReplicationGroupNodeGroupConfiguration>
  nodeGroupConfiguration;

  @override
  String get blockKey => 'node_group_configuration';

  @override
  Map<String, Object?> encode() => {
    'node_group_configuration': [
      for (final e in nodeGroupConfiguration) e.encode(),
    ],
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'node_group_configuration': TfArg.literal([
      for (final e in nodeGroupConfiguration) e.encode(),
    ]),
  };
}

/// The [ElasticacheReplicationGroupTopology.preferredCacheClusterAzs] choice: sets `preferred_cache_cluster_azs`.
final class ElasticacheReplicationGroupTopologyPreferredCacheClusterAzs
    extends ElasticacheReplicationGroupTopology {
  const ElasticacheReplicationGroupTopologyPreferredCacheClusterAzs(
    this.preferredCacheClusterAzs,
  );

  final TfArg<List<String>> preferredCacheClusterAzs;

  @override
  String get blockKey => 'preferred_cache_cluster_azs';

  @override
  Map<String, Object?> encode() => {
    'preferred_cache_cluster_azs': preferredCacheClusterAzs.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'preferred_cache_cluster_azs': preferredCacheClusterAzs,
  };
}

/// Typed helper for the `log_delivery_configuration` block of
/// `aws_elasticache_replication_group` (derived from provider schema).
@immutable
final class ElasticacheReplicationGroupLogDeliveryConfiguration {
  const ElasticacheReplicationGroupLogDeliveryConfiguration({
    required this.destination,
    required this.destinationType,
    required this.logFormat,
    required this.logType,
  });

  final TfArg<String> destination;

  final TfArg<ElasticacheReplicationGroupDestinationType> destinationType;

  final TfArg<ElasticacheReplicationGroupLogFormat> logFormat;

  final TfArg<ElasticacheReplicationGroupLogType> logType;

  Map<String, Object?> encode() => {
    'destination': destination.toTfJson(),
    'destination_type': destinationType.toTfJson(),
    'log_format': logFormat.toTfJson(),
    'log_type': logType.toTfJson(),
  };
}

/// `destination_type` — derived from the provider schema description.
enum ElasticacheReplicationGroupDestinationType implements TerraformEnum {
  cloudwatchLogs('cloudwatch-logs'),
  kinesisFirehose('kinesis-firehose');

  const ElasticacheReplicationGroupDestinationType(this.terraformValue);
  @override
  final String terraformValue;
}

/// `log_format` — derived from the provider schema description.
enum ElasticacheReplicationGroupLogFormat implements TerraformEnum {
  text('text'),
  json('json');

  const ElasticacheReplicationGroupLogFormat(this.terraformValue);
  @override
  final String terraformValue;
}

/// `log_type` — derived from the provider schema description.
enum ElasticacheReplicationGroupLogType implements TerraformEnum {
  slowLog('slow-log'),
  engineLog('engine-log');

  const ElasticacheReplicationGroupLogType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `node_group_configuration` block of
/// `aws_elasticache_replication_group` (derived from provider schema).
@immutable
final class ElasticacheReplicationGroupNodeGroupConfiguration {
  const ElasticacheReplicationGroupNodeGroupConfiguration({
    this.nodeGroupId,
    this.primaryAvailabilityZone,
    this.primaryOutpostArn,
    this.replicaAvailabilityZones,
    this.replicaCount,
    this.replicaOutpostArns,
    this.slots,
  });

  final TfArg<String>? nodeGroupId;

  final TfArg<String>? primaryAvailabilityZone;

  final TfArg<String>? primaryOutpostArn;

  final TfArg<List<String>>? replicaAvailabilityZones;

  final TfArg<num>? replicaCount;

  final TfArg<List<String>>? replicaOutpostArns;

  final TfArg<String>? slots;

  Map<String, Object?> encode() => {
    'node_group_id': ?nodeGroupId?.toTfJson(),
    'primary_availability_zone': ?primaryAvailabilityZone?.toTfJson(),
    'primary_outpost_arn': ?primaryOutpostArn?.toTfJson(),
    'replica_availability_zones': ?replicaAvailabilityZones?.toTfJson(),
    'replica_count': ?replicaCount?.toTfJson(),
    'replica_outpost_arns': ?replicaOutpostArns?.toTfJson(),
    'slots': ?slots?.toTfJson(),
  };
}

/// Factory wrapper for `aws_elasticache_replication_group`.
final class AwsElasticacheReplicationGroup extends Resource {
  static const String tfType = 'aws_elasticache_replication_group';

  AwsElasticacheReplicationGroup(
    super.localName, {
    TfArg<bool>? applyImmediately,
    TfArg<String>? atRestEncryptionEnabled,
    ElasticacheReplicationGroupAuth? auth,
    TfArg<ElasticacheReplicationGroupAuthTokenUpdateStrategy>?
    authTokenUpdateStrategy,
    TfArg<num>? authTokenWoVersion,
    TfArg<String>? autoMinorVersionUpgrade,
    TfArg<bool>? automaticFailoverEnabled,
    TfArg<ElasticacheReplicationGroupClusterMode>? clusterMode,
    TfArg<bool>? dataTieringEnabled,
    required TfArg<String> description,
    TfArg<ElasticacheReplicationGroupDurability>? durability,
    TfArg<ElasticacheReplicationGroupEngine>? engine,
    TfArg<String>? engineVersion,
    TfArg<String>? finalSnapshotIdentifier,
    TfArg<String>? globalReplicationGroupId,
    TfArg<ElasticacheReplicationGroupIpDiscovery>? ipDiscovery,
    RefTo<AwsKmsKey>? kmsKeyId,
    TfArg<String>? maintenanceWindow,
    TfArg<bool>? multiAzEnabled,
    TfArg<ElasticacheReplicationGroupNetworkType>? networkType,
    TfArg<String>? nodeType,
    TfArg<String>? notificationTopicArn,
    TfArg<num>? numCacheClusters,
    TfArg<num>? numNodeGroups,
    TfArg<String>? parameterGroupName,
    TfArg<num>? port,
    ElasticacheReplicationGroupTopology? topology,
    TfArg<String>? region,
    TfArg<num>? replicasPerNodeGroup,
    required TfArg<String> replicationGroupId,
    TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroupIds,
    TfArg<List<String>>? securityGroupNames,
    TfArg<List<String>>? snapshotArns,
    TfArg<String>? snapshotName,
    TfArg<num>? snapshotRetentionLimit,
    TfArg<String>? snapshotWindow,
    TfArg<String>? subnetGroupName,
    TfArg<Map<String, String>>? tags,
    TfArg<bool>? transitEncryptionEnabled,
    TfArg<ElasticacheReplicationGroupTransitEncryptionMode>?
    transitEncryptionMode,
    List<ElasticacheReplicationGroupLogDeliveryConfiguration>?
    logDeliveryConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'apply_immediately': ?applyImmediately,
           'at_rest_encryption_enabled': ?atRestEncryptionEnabled,
           ...?auth?.argMap,
           'auth_token_update_strategy': ?authTokenUpdateStrategy,
           'auth_token_wo_version': ?authTokenWoVersion,
           'auto_minor_version_upgrade': ?autoMinorVersionUpgrade,
           'automatic_failover_enabled': ?automaticFailoverEnabled,
           'cluster_mode': ?clusterMode,
           'data_tiering_enabled': ?dataTieringEnabled,
           'description': description,
           'durability': ?durability,
           'engine': ?engine,
           'engine_version': ?engineVersion,
           'final_snapshot_identifier': ?finalSnapshotIdentifier,
           'global_replication_group_id': ?globalReplicationGroupId,
           'ip_discovery': ?ipDiscovery,
           'kms_key_id': ?kmsKeyId?.encodeAs('arn'),
           'maintenance_window': ?maintenanceWindow,
           'multi_az_enabled': ?multiAzEnabled,
           'network_type': ?networkType,
           'node_type': ?nodeType,
           'notification_topic_arn': ?notificationTopicArn,
           'num_cache_clusters': ?numCacheClusters,
           'num_node_groups': ?numNodeGroups,
           'parameter_group_name': ?parameterGroupName,
           'port': ?port,
           ...?topology?.argMap,
           'region': ?region,
           'replicas_per_node_group': ?replicasPerNodeGroup,
           'replication_group_id': replicationGroupId,
           'security_group_ids': ?securityGroupIds?.encodeAs('id'),
           'security_group_names': ?securityGroupNames,
           'snapshot_arns': ?snapshotArns,
           'snapshot_name': ?snapshotName,
           'snapshot_retention_limit': ?snapshotRetentionLimit,
           'snapshot_window': ?snapshotWindow,
           'subnet_group_name': ?subnetGroupName,
           'tags': ?tags,
           'transit_encryption_enabled': ?transitEncryptionEnabled,
           'transit_encryption_mode': ?transitEncryptionMode,
           if (logDeliveryConfiguration != null)
             'log_delivery_configuration': TfArg.literal([
               for (final e in logDeliveryConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsElasticacheReplicationGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsElasticacheReplicationGroup>`.
  RefTo<AwsElasticacheReplicationGroup> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `cluster_enabled` attribute.
  TfRef<bool> get clusterEnabled =>
      TfRef.attribute<bool>(this, 'cluster_enabled');

  /// Reference to `configuration_endpoint_address` attribute.
  TfRef<String> get configurationEndpointAddress =>
      TfRef.attribute<String>(this, 'configuration_endpoint_address');

  /// Reference to `engine_version_actual` attribute.
  TfRef<String> get engineVersionActual =>
      TfRef.attribute<String>(this, 'engine_version_actual');

  /// Reference to `member_clusters` attribute.
  TfRef<List<String>> get memberClusters =>
      TfRef.attribute<List<String>>(this, 'member_clusters');

  /// Reference to `primary_endpoint_address` attribute.
  TfRef<String> get primaryEndpointAddress =>
      TfRef.attribute<String>(this, 'primary_endpoint_address');

  /// Reference to `reader_endpoint_address` attribute.
  TfRef<String> get readerEndpointAddress =>
      TfRef.attribute<String>(this, 'reader_endpoint_address');

  /// Reference to `apply_immediately` attribute.
  TfRef<bool> get applyImmediately =>
      TfRef.attribute<bool>(this, 'apply_immediately');

  /// Reference to `at_rest_encryption_enabled` attribute.
  TfRef<String> get atRestEncryptionEnabled =>
      TfRef.attribute<String>(this, 'at_rest_encryption_enabled');

  /// Reference to `auth_token` attribute.
  TfRef<String> get authToken => TfRef.attribute<String>(this, 'auth_token');

  /// Reference to `auth_token_update_strategy` attribute.
  TfRef<String> get authTokenUpdateStrategy =>
      TfRef.attribute<String>(this, 'auth_token_update_strategy');

  /// Reference to `auth_token_wo_version` attribute.
  TfRef<num> get authTokenWoVersion =>
      TfRef.attribute<num>(this, 'auth_token_wo_version');

  /// Reference to `auto_minor_version_upgrade` attribute.
  TfRef<String> get autoMinorVersionUpgrade =>
      TfRef.attribute<String>(this, 'auto_minor_version_upgrade');

  /// Reference to `automatic_failover_enabled` attribute.
  TfRef<bool> get automaticFailoverEnabled =>
      TfRef.attribute<bool>(this, 'automatic_failover_enabled');

  /// Reference to `cluster_mode` attribute.
  TfRef<String> get clusterMode =>
      TfRef.attribute<String>(this, 'cluster_mode');

  /// Reference to `data_tiering_enabled` attribute.
  TfRef<bool> get dataTieringEnabled =>
      TfRef.attribute<bool>(this, 'data_tiering_enabled');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `durability` attribute.
  TfRef<String> get durability => TfRef.attribute<String>(this, 'durability');

  /// Reference to `engine` attribute.
  TfRef<String> get engine => TfRef.attribute<String>(this, 'engine');

  /// Reference to `engine_version` attribute.
  TfRef<String> get engineVersion =>
      TfRef.attribute<String>(this, 'engine_version');

  /// Reference to `final_snapshot_identifier` attribute.
  TfRef<String> get finalSnapshotIdentifier =>
      TfRef.attribute<String>(this, 'final_snapshot_identifier');

  /// Reference to `global_replication_group_id` attribute.
  TfRef<String> get globalReplicationGroupId =>
      TfRef.attribute<String>(this, 'global_replication_group_id');

  /// Reference to `ip_discovery` attribute.
  TfRef<String> get ipDiscovery =>
      TfRef.attribute<String>(this, 'ip_discovery');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyId => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `maintenance_window` attribute.
  TfRef<String> get maintenanceWindow =>
      TfRef.attribute<String>(this, 'maintenance_window');

  /// Reference to `multi_az_enabled` attribute.
  TfRef<bool> get multiAzEnabled =>
      TfRef.attribute<bool>(this, 'multi_az_enabled');

  /// Reference to `network_type` attribute.
  TfRef<String> get networkType =>
      TfRef.attribute<String>(this, 'network_type');

  /// Reference to `node_type` attribute.
  TfRef<String> get nodeType => TfRef.attribute<String>(this, 'node_type');

  /// Reference to `notification_topic_arn` attribute.
  TfRef<String> get notificationTopicArn =>
      TfRef.attribute<String>(this, 'notification_topic_arn');

  /// Reference to `num_cache_clusters` attribute.
  TfRef<num> get numCacheClusters =>
      TfRef.attribute<num>(this, 'num_cache_clusters');

  /// Reference to `num_node_groups` attribute.
  TfRef<num> get numNodeGroups => TfRef.attribute<num>(this, 'num_node_groups');

  /// Reference to `parameter_group_name` attribute.
  TfRef<String> get parameterGroupName =>
      TfRef.attribute<String>(this, 'parameter_group_name');

  /// Reference to `port` attribute.
  TfRef<num> get port => TfRef.attribute<num>(this, 'port');

  /// Reference to `preferred_cache_cluster_azs` attribute.
  TfRef<List<String>> get preferredCacheClusterAzs =>
      TfRef.attribute<List<String>>(this, 'preferred_cache_cluster_azs');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `replicas_per_node_group` attribute.
  TfRef<num> get replicasPerNodeGroup =>
      TfRef.attribute<num>(this, 'replicas_per_node_group');

  /// Reference to `replication_group_id` attribute.
  TfRef<String> get replicationGroupId =>
      TfRef.attribute<String>(this, 'replication_group_id');

  /// Reference to `security_group_ids` attribute.
  TfRef<List<String>> get securityGroupIds =>
      TfRef.attribute<List<String>>(this, 'security_group_ids');

  /// Reference to `security_group_names` attribute.
  TfRef<List<String>> get securityGroupNames =>
      TfRef.attribute<List<String>>(this, 'security_group_names');

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

  /// Reference to `transit_encryption_mode` attribute.
  TfRef<String> get transitEncryptionMode =>
      TfRef.attribute<String>(this, 'transit_encryption_mode');

  /// Reference to `user_group_ids` attribute.
  TfRef<List<String>> get userGroupIds =>
      TfRef.attribute<List<String>>(this, 'user_group_ids');
}
