// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_elasticache_replication_group`.
const Set<String> _awsElasticacheReplicationGroupSensitive = <String>{
  'auth_token',
  'auth_token_wo',
};

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

  final TfArg<String> destinationType;

  final TfArg<String> logFormat;

  final TfArg<String> logType;

  Map<String, Object?> encode() => {
    'destination': destination.toTfJson(),
    'destination_type': destinationType.toTfJson(),
    'log_format': logFormat.toTfJson(),
    'log_type': logType.toTfJson(),
  };
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

  final TfArg<List<Object?>>? replicaAvailabilityZones;

  final TfArg<num>? replicaCount;

  final TfArg<List<Object?>>? replicaOutpostArns;

  final TfArg<String>? slots;

  Map<String, Object?> encode() => {
    if (nodeGroupId != null) 'node_group_id': nodeGroupId!.toTfJson(),
    if (primaryAvailabilityZone != null)
      'primary_availability_zone': primaryAvailabilityZone!.toTfJson(),
    if (primaryOutpostArn != null)
      'primary_outpost_arn': primaryOutpostArn!.toTfJson(),
    if (replicaAvailabilityZones != null)
      'replica_availability_zones': replicaAvailabilityZones!.toTfJson(),
    if (replicaCount != null) 'replica_count': replicaCount!.toTfJson(),
    if (replicaOutpostArns != null)
      'replica_outpost_arns': replicaOutpostArns!.toTfJson(),
    if (slots != null) 'slots': slots!.toTfJson(),
  };
}

/// Factory wrapper for `aws_elasticache_replication_group`.
final class AwsElasticacheReplicationGroup extends Resource {
  static const String tfType = 'aws_elasticache_replication_group';

  AwsElasticacheReplicationGroup({
    required super.localName,
    TfArg<bool>? applyImmediately,
    TfArg<String>? atRestEncryptionEnabled,
    TfArg<String>? authToken,
    TfArg<String>? authTokenUpdateStrategy,
    TfArg<String>? authTokenWo,
    TfArg<num>? authTokenWoVersion,
    TfArg<String>? autoMinorVersionUpgrade,
    TfArg<bool>? automaticFailoverEnabled,
    TfArg<String>? clusterMode,
    TfArg<bool>? dataTieringEnabled,
    required TfArg<String> description,
    TfArg<String>? durability,
    TfArg<String>? engine,
    TfArg<String>? engineVersion,
    TfArg<String>? finalSnapshotIdentifier,
    TfArg<String>? globalReplicationGroupId,
    TfArg<String>? ipDiscovery,
    TfArg<String>? kmsKeyId,
    TfArg<String>? maintenanceWindow,
    TfArg<bool>? multiAzEnabled,
    TfArg<String>? networkType,
    TfArg<String>? nodeType,
    TfArg<String>? notificationTopicArn,
    TfArg<num>? numCacheClusters,
    TfArg<num>? numNodeGroups,
    TfArg<String>? parameterGroupName,
    TfArg<num>? port,
    TfArg<List<String>>? preferredCacheClusterAzs,
    TfArg<String>? region,
    TfArg<num>? replicasPerNodeGroup,
    required TfArg<String> replicationGroupId,
    TfArg<List<String>>? securityGroupIds,
    TfArg<List<String>>? securityGroupNames,
    TfArg<List<String>>? snapshotArns,
    TfArg<String>? snapshotName,
    TfArg<num>? snapshotRetentionLimit,
    TfArg<String>? snapshotWindow,
    TfArg<String>? subnetGroupName,
    TfArg<Map<String, String>>? tags,
    TfArg<bool>? transitEncryptionEnabled,
    TfArg<String>? transitEncryptionMode,
    TfArg<List<String>>? userGroupIds,
    List<ElasticacheReplicationGroupLogDeliveryConfiguration>?
    logDeliveryConfiguration,
    List<ElasticacheReplicationGroupNodeGroupConfiguration>?
    nodeGroupConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (applyImmediately != null) 'apply_immediately': applyImmediately,
           if (atRestEncryptionEnabled != null)
             'at_rest_encryption_enabled': atRestEncryptionEnabled,
           if (authToken != null) 'auth_token': authToken,
           if (authTokenUpdateStrategy != null)
             'auth_token_update_strategy': authTokenUpdateStrategy,
           if (authTokenWo != null) 'auth_token_wo': authTokenWo,
           if (authTokenWoVersion != null)
             'auth_token_wo_version': authTokenWoVersion,
           if (autoMinorVersionUpgrade != null)
             'auto_minor_version_upgrade': autoMinorVersionUpgrade,
           if (automaticFailoverEnabled != null)
             'automatic_failover_enabled': automaticFailoverEnabled,
           if (clusterMode != null) 'cluster_mode': clusterMode,
           if (dataTieringEnabled != null)
             'data_tiering_enabled': dataTieringEnabled,
           'description': description,
           if (durability != null) 'durability': durability,
           if (engine != null) 'engine': engine,
           if (engineVersion != null) 'engine_version': engineVersion,
           if (finalSnapshotIdentifier != null)
             'final_snapshot_identifier': finalSnapshotIdentifier,
           if (globalReplicationGroupId != null)
             'global_replication_group_id': globalReplicationGroupId,
           if (ipDiscovery != null) 'ip_discovery': ipDiscovery,
           if (kmsKeyId != null) 'kms_key_id': kmsKeyId,
           if (maintenanceWindow != null)
             'maintenance_window': maintenanceWindow,
           if (multiAzEnabled != null) 'multi_az_enabled': multiAzEnabled,
           if (networkType != null) 'network_type': networkType,
           if (nodeType != null) 'node_type': nodeType,
           if (notificationTopicArn != null)
             'notification_topic_arn': notificationTopicArn,
           if (numCacheClusters != null) 'num_cache_clusters': numCacheClusters,
           if (numNodeGroups != null) 'num_node_groups': numNodeGroups,
           if (parameterGroupName != null)
             'parameter_group_name': parameterGroupName,
           if (port != null) 'port': port,
           if (preferredCacheClusterAzs != null)
             'preferred_cache_cluster_azs': preferredCacheClusterAzs,
           if (region != null) 'region': region,
           if (replicasPerNodeGroup != null)
             'replicas_per_node_group': replicasPerNodeGroup,
           'replication_group_id': replicationGroupId,
           if (securityGroupIds != null) 'security_group_ids': securityGroupIds,
           if (securityGroupNames != null)
             'security_group_names': securityGroupNames,
           if (snapshotArns != null) 'snapshot_arns': snapshotArns,
           if (snapshotName != null) 'snapshot_name': snapshotName,
           if (snapshotRetentionLimit != null)
             'snapshot_retention_limit': snapshotRetentionLimit,
           if (snapshotWindow != null) 'snapshot_window': snapshotWindow,
           if (subnetGroupName != null) 'subnet_group_name': subnetGroupName,
           if (tags != null) 'tags': tags,
           if (transitEncryptionEnabled != null)
             'transit_encryption_enabled': transitEncryptionEnabled,
           if (transitEncryptionMode != null)
             'transit_encryption_mode': transitEncryptionMode,
           if (userGroupIds != null) 'user_group_ids': userGroupIds,
           if (logDeliveryConfiguration != null)
             'log_delivery_configuration': TfArg.literal([
               for (final e in logDeliveryConfiguration) e.encode(),
             ]),
           if (nodeGroupConfiguration != null)
             'node_group_configuration': TfArg.literal([
               for (final e in nodeGroupConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsElasticacheReplicationGroupSensitive;

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
}
