// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../cloudwatch/aws_cloudwatch_log_group.dart' show AwsCloudwatchLogGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_msk_replicator`.
const Set<String> _awsMskReplicatorSensitive = <String>{};

/// Typed helper for the `kafka_cluster` block of
/// `aws_msk_replicator` (derived from provider schema).
@immutable
final class MskReplicatorKafkaCluster {
  const MskReplicatorKafkaCluster({
    this.amazonMskCluster,
    this.apacheKafkaCluster,
    this.clientAuthentication,
    this.encryptionInTransit,
    this.vpcConfig,
  });

  final MskReplicatorKafkaClusterAmazonMskCluster? amazonMskCluster;

  final MskReplicatorKafkaClusterApacheKafkaCluster? apacheKafkaCluster;

  final MskReplicatorKafkaClusterClientAuthentication? clientAuthentication;

  final MskReplicatorKafkaClusterEncryptionInTransit? encryptionInTransit;

  final MskReplicatorKafkaClusterVpcConfig? vpcConfig;

  Map<String, Object?> encode() => {
    if (amazonMskCluster != null)
      'amazon_msk_cluster': amazonMskCluster!.encode(),
    if (apacheKafkaCluster != null)
      'apache_kafka_cluster': apacheKafkaCluster!.encode(),
    if (clientAuthentication != null)
      'client_authentication': clientAuthentication!.encode(),
    if (encryptionInTransit != null)
      'encryption_in_transit': encryptionInTransit!.encode(),
    if (vpcConfig != null) 'vpc_config': vpcConfig!.encode(),
  };
}

/// Typed helper for the `kafka_cluster.amazon_msk_cluster` block of
/// `aws_msk_replicator` (derived from provider schema).
@immutable
final class MskReplicatorKafkaClusterAmazonMskCluster {
  const MskReplicatorKafkaClusterAmazonMskCluster({
    required this.mskClusterArn,
  });

  final TfArg<String> mskClusterArn;

  Map<String, Object?> encode() => {
    'msk_cluster_arn': mskClusterArn.toTfJson(),
  };
}

/// Typed helper for the `kafka_cluster.apache_kafka_cluster` block of
/// `aws_msk_replicator` (derived from provider schema).
@immutable
final class MskReplicatorKafkaClusterApacheKafkaCluster {
  const MskReplicatorKafkaClusterApacheKafkaCluster({
    required this.apacheKafkaClusterId,
    required this.bootstrapBrokerString,
  });

  final TfArg<String> apacheKafkaClusterId;

  final TfArg<String> bootstrapBrokerString;

  Map<String, Object?> encode() => {
    'apache_kafka_cluster_id': apacheKafkaClusterId.toTfJson(),
    'bootstrap_broker_string': bootstrapBrokerString.toTfJson(),
  };
}

/// Typed helper for the `kafka_cluster.client_authentication` block of
/// `aws_msk_replicator` (derived from provider schema).
@immutable
final class MskReplicatorKafkaClusterClientAuthentication {
  const MskReplicatorKafkaClusterClientAuthentication({
    this.mtls,
    this.saslScram,
  });

  final MskReplicatorKafkaClusterClientAuthenticationMtls? mtls;

  final MskReplicatorKafkaClusterClientAuthenticationSaslScram? saslScram;

  Map<String, Object?> encode() => {
    if (mtls != null) 'mtls': mtls!.encode(),
    if (saslScram != null) 'sasl_scram': saslScram!.encode(),
  };
}

/// Typed helper for the `kafka_cluster.client_authentication.mtls` block of
/// `aws_msk_replicator` (derived from provider schema).
@immutable
final class MskReplicatorKafkaClusterClientAuthenticationMtls {
  const MskReplicatorKafkaClusterClientAuthenticationMtls({
    required this.secretArn,
  });

  final TfArg<String> secretArn;

  Map<String, Object?> encode() => {'secret_arn': secretArn.toTfJson()};
}

/// Typed helper for the `kafka_cluster.client_authentication.sasl_scram` block of
/// `aws_msk_replicator` (derived from provider schema).
@immutable
final class MskReplicatorKafkaClusterClientAuthenticationSaslScram {
  const MskReplicatorKafkaClusterClientAuthenticationSaslScram({
    required this.mechanism,
    required this.secretArn,
  });

  final TfArg<MskReplicatorKafkaClusterClientAuthenticationSaslScramMechanism>
  mechanism;

  final TfArg<String> secretArn;

  Map<String, Object?> encode() => {
    'mechanism': mechanism.toTfJson(),
    'secret_arn': secretArn.toTfJson(),
  };
}

/// `mechanism` — derived from the provider schema description.
enum MskReplicatorKafkaClusterClientAuthenticationSaslScramMechanism
    implements TerraformEnum {
  sha256('SHA256'),
  sha512('SHA512');

  const MskReplicatorKafkaClusterClientAuthenticationSaslScramMechanism(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `kafka_cluster.encryption_in_transit` block of
/// `aws_msk_replicator` (derived from provider schema).
@immutable
final class MskReplicatorKafkaClusterEncryptionInTransit {
  const MskReplicatorKafkaClusterEncryptionInTransit({
    required this.rootCaCertificate,
  });

  final TfArg<String> rootCaCertificate;

  Map<String, Object?> encode() => {
    'root_ca_certificate': rootCaCertificate.toTfJson(),
  };
}

/// Typed helper for the `kafka_cluster.vpc_config` block of
/// `aws_msk_replicator` (derived from provider schema).
@immutable
final class MskReplicatorKafkaClusterVpcConfig {
  const MskReplicatorKafkaClusterVpcConfig({
    this.securityGroupsIds,
    required this.subnetIds,
  });

  final TfArg<List<Object?>>? securityGroupsIds;

  final TfArg<List<RefTo<AwsSubnet>>> subnetIds;

  Map<String, Object?> encode() => {
    if (securityGroupsIds != null)
      'security_groups_ids': securityGroupsIds!.toTfJson(),
    'subnet_ids': subnetIds.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `log_delivery` block of
/// `aws_msk_replicator` (derived from provider schema).
@immutable
final class MskReplicatorLogDelivery {
  const MskReplicatorLogDelivery({this.replicatorLogDelivery});

  final MskReplicatorLogDeliveryReplicatorLogDelivery? replicatorLogDelivery;

  Map<String, Object?> encode() => {
    if (replicatorLogDelivery != null)
      'replicator_log_delivery': replicatorLogDelivery!.encode(),
  };
}

/// Typed helper for the `log_delivery.replicator_log_delivery` block of
/// `aws_msk_replicator` (derived from provider schema).
@immutable
final class MskReplicatorLogDeliveryReplicatorLogDelivery {
  const MskReplicatorLogDeliveryReplicatorLogDelivery({
    this.cloudwatchLogs,
    this.firehose,
    this.s3,
  });

  final MskReplicatorLogDeliveryReplicatorLogDeliveryCloudwatchLogs?
  cloudwatchLogs;

  final MskReplicatorLogDeliveryReplicatorLogDeliveryFirehose? firehose;

  final MskReplicatorLogDeliveryReplicatorLogDeliveryS3? s3;

  Map<String, Object?> encode() => {
    if (cloudwatchLogs != null) 'cloudwatch_logs': cloudwatchLogs!.encode(),
    if (firehose != null) 'firehose': firehose!.encode(),
    if (s3 != null) 's3': s3!.encode(),
  };
}

/// Typed helper for the `log_delivery.replicator_log_delivery.cloudwatch_logs` block of
/// `aws_msk_replicator` (derived from provider schema).
@immutable
final class MskReplicatorLogDeliveryReplicatorLogDeliveryCloudwatchLogs {
  const MskReplicatorLogDeliveryReplicatorLogDeliveryCloudwatchLogs({
    required this.enabled,
    this.logGroup,
  });

  final TfArg<bool> enabled;

  final RefTo<AwsCloudwatchLogGroup>? logGroup;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    if (logGroup != null) 'log_group': logGroup!.encodeAs('name').toTfJson(),
  };
}

/// Typed helper for the `log_delivery.replicator_log_delivery.firehose` block of
/// `aws_msk_replicator` (derived from provider schema).
@immutable
final class MskReplicatorLogDeliveryReplicatorLogDeliveryFirehose {
  const MskReplicatorLogDeliveryReplicatorLogDeliveryFirehose({
    this.deliveryStream,
    required this.enabled,
  });

  final TfArg<String>? deliveryStream;

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {
    if (deliveryStream != null) 'delivery_stream': deliveryStream!.toTfJson(),
    'enabled': enabled.toTfJson(),
  };
}

/// Typed helper for the `log_delivery.replicator_log_delivery.s3` block of
/// `aws_msk_replicator` (derived from provider schema).
@immutable
final class MskReplicatorLogDeliveryReplicatorLogDeliveryS3 {
  const MskReplicatorLogDeliveryReplicatorLogDeliveryS3({
    this.bucket,
    required this.enabled,
    this.prefix,
  });

  final RefTo<AwsS3Bucket>? bucket;

  final TfArg<bool> enabled;

  final TfArg<String>? prefix;

  Map<String, Object?> encode() => {
    if (bucket != null) 'bucket': bucket!.encodeAs('id').toTfJson(),
    'enabled': enabled.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
  };
}

/// Typed helper for the `replication_info_list` block of
/// `aws_msk_replicator` (derived from provider schema).
@immutable
final class MskReplicatorReplicationInfoList {
  const MskReplicatorReplicationInfoList({
    required this.sourceKafkaCluster,
    required this.targetCompressionType,
    required this.targetKafkaCluster,
    required this.consumerGroupReplication,
    required this.topicReplication,
  });

  final MskReplicatorReplicationInfoListSourceKafkaCluster sourceKafkaCluster;

  final TfArg<String> targetCompressionType;

  final MskReplicatorReplicationInfoListTargetKafkaCluster targetKafkaCluster;

  final List<MskReplicatorReplicationInfoListConsumerGroupReplication>
  consumerGroupReplication;

  final List<MskReplicatorReplicationInfoListTopicReplication> topicReplication;

  Map<String, Object?> encode() => {
    ...sourceKafkaCluster.encode(),
    'target_compression_type': targetCompressionType.toTfJson(),
    ...targetKafkaCluster.encode(),
    'consumer_group_replication': [
      for (final e in consumerGroupReplication) e.encode(),
    ],
    'topic_replication': [for (final e in topicReplication) e.encode()],
  };
}

/// Exactly one of `source_kafka_cluster_arn`, `source_kafka_cluster_id` on the `replication_info_list` block of `aws_msk_replicator`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.sourceKafkaClusterArn(...)`.
sealed class MskReplicatorReplicationInfoListSourceKafkaCluster {
  const MskReplicatorReplicationInfoListSourceKafkaCluster();

  /// Sets `source_kafka_cluster_arn`.
  const factory MskReplicatorReplicationInfoListSourceKafkaCluster.sourceKafkaClusterArn(
    TfArg<String> sourceKafkaClusterArn,
  ) = MskReplicatorReplicationInfoListSourceKafkaClusterArn;

  /// Sets `source_kafka_cluster_id`.
  const factory MskReplicatorReplicationInfoListSourceKafkaCluster.sourceKafkaClusterId(
    TfArg<String> sourceKafkaClusterId,
  ) = MskReplicatorReplicationInfoListSourceKafkaClusterId;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [MskReplicatorReplicationInfoListSourceKafkaCluster.sourceKafkaClusterArn] choice: sets `source_kafka_cluster_arn`.
final class MskReplicatorReplicationInfoListSourceKafkaClusterArn
    extends MskReplicatorReplicationInfoListSourceKafkaCluster {
  const MskReplicatorReplicationInfoListSourceKafkaClusterArn(
    this.sourceKafkaClusterArn,
  );

  final TfArg<String> sourceKafkaClusterArn;

  @override
  String get blockKey => 'source_kafka_cluster_arn';

  @override
  Map<String, Object?> encode() => {
    'source_kafka_cluster_arn': sourceKafkaClusterArn.toTfJson(),
  };
}

/// The [MskReplicatorReplicationInfoListSourceKafkaCluster.sourceKafkaClusterId] choice: sets `source_kafka_cluster_id`.
final class MskReplicatorReplicationInfoListSourceKafkaClusterId
    extends MskReplicatorReplicationInfoListSourceKafkaCluster {
  const MskReplicatorReplicationInfoListSourceKafkaClusterId(
    this.sourceKafkaClusterId,
  );

  final TfArg<String> sourceKafkaClusterId;

  @override
  String get blockKey => 'source_kafka_cluster_id';

  @override
  Map<String, Object?> encode() => {
    'source_kafka_cluster_id': sourceKafkaClusterId.toTfJson(),
  };
}

/// Exactly one of `target_kafka_cluster_arn`, `target_kafka_cluster_id` on the `replication_info_list` block of `aws_msk_replicator`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.targetKafkaClusterArn(...)`.
sealed class MskReplicatorReplicationInfoListTargetKafkaCluster {
  const MskReplicatorReplicationInfoListTargetKafkaCluster();

  /// Sets `target_kafka_cluster_arn`.
  const factory MskReplicatorReplicationInfoListTargetKafkaCluster.targetKafkaClusterArn(
    TfArg<String> targetKafkaClusterArn,
  ) = MskReplicatorReplicationInfoListTargetKafkaClusterArn;

  /// Sets `target_kafka_cluster_id`.
  const factory MskReplicatorReplicationInfoListTargetKafkaCluster.targetKafkaClusterId(
    TfArg<String> targetKafkaClusterId,
  ) = MskReplicatorReplicationInfoListTargetKafkaClusterId;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [MskReplicatorReplicationInfoListTargetKafkaCluster.targetKafkaClusterArn] choice: sets `target_kafka_cluster_arn`.
final class MskReplicatorReplicationInfoListTargetKafkaClusterArn
    extends MskReplicatorReplicationInfoListTargetKafkaCluster {
  const MskReplicatorReplicationInfoListTargetKafkaClusterArn(
    this.targetKafkaClusterArn,
  );

  final TfArg<String> targetKafkaClusterArn;

  @override
  String get blockKey => 'target_kafka_cluster_arn';

  @override
  Map<String, Object?> encode() => {
    'target_kafka_cluster_arn': targetKafkaClusterArn.toTfJson(),
  };
}

/// The [MskReplicatorReplicationInfoListTargetKafkaCluster.targetKafkaClusterId] choice: sets `target_kafka_cluster_id`.
final class MskReplicatorReplicationInfoListTargetKafkaClusterId
    extends MskReplicatorReplicationInfoListTargetKafkaCluster {
  const MskReplicatorReplicationInfoListTargetKafkaClusterId(
    this.targetKafkaClusterId,
  );

  final TfArg<String> targetKafkaClusterId;

  @override
  String get blockKey => 'target_kafka_cluster_id';

  @override
  Map<String, Object?> encode() => {
    'target_kafka_cluster_id': targetKafkaClusterId.toTfJson(),
  };
}

/// Typed helper for the `replication_info_list.consumer_group_replication` block of
/// `aws_msk_replicator` (derived from provider schema).
@immutable
final class MskReplicatorReplicationInfoListConsumerGroupReplication {
  const MskReplicatorReplicationInfoListConsumerGroupReplication({
    this.consumerGroupOffsetSyncMode,
    this.consumerGroupsToExclude,
    required this.consumerGroupsToReplicate,
    this.detectAndCopyNewConsumerGroups,
    this.synchroniseConsumerGroupOffsets,
  });

  final TfArg<
    MskReplicatorReplicationInfoListConsumerGroupReplicationConsumerGroupOffsetSyncMode
  >?
  consumerGroupOffsetSyncMode;

  final TfArg<List<Object?>>? consumerGroupsToExclude;

  final TfArg<List<Object?>> consumerGroupsToReplicate;

  final TfArg<bool>? detectAndCopyNewConsumerGroups;

  final TfArg<bool>? synchroniseConsumerGroupOffsets;

  Map<String, Object?> encode() => {
    if (consumerGroupOffsetSyncMode != null)
      'consumer_group_offset_sync_mode': consumerGroupOffsetSyncMode!
          .toTfJson(),
    if (consumerGroupsToExclude != null)
      'consumer_groups_to_exclude': consumerGroupsToExclude!.toTfJson(),
    'consumer_groups_to_replicate': consumerGroupsToReplicate.toTfJson(),
    if (detectAndCopyNewConsumerGroups != null)
      'detect_and_copy_new_consumer_groups': detectAndCopyNewConsumerGroups!
          .toTfJson(),
    if (synchroniseConsumerGroupOffsets != null)
      'synchronise_consumer_group_offsets': synchroniseConsumerGroupOffsets!
          .toTfJson(),
  };
}

/// `consumer_group_offset_sync_mode` — derived from the provider schema description.
enum MskReplicatorReplicationInfoListConsumerGroupReplicationConsumerGroupOffsetSyncMode
    implements TerraformEnum {
  legacy('LEGACY'),
  enhanced('ENHANCED');

  const MskReplicatorReplicationInfoListConsumerGroupReplicationConsumerGroupOffsetSyncMode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `replication_info_list.topic_replication` block of
/// `aws_msk_replicator` (derived from provider schema).
@immutable
final class MskReplicatorReplicationInfoListTopicReplication {
  const MskReplicatorReplicationInfoListTopicReplication({
    this.copyAccessControlListsForTopics,
    this.copyTopicConfigurations,
    this.detectAndCopyNewTopics,
    this.topicsToExclude,
    required this.topicsToReplicate,
    this.startingPosition,
    this.topicNameConfiguration,
  });

  final TfArg<bool>? copyAccessControlListsForTopics;

  final TfArg<bool>? copyTopicConfigurations;

  final TfArg<bool>? detectAndCopyNewTopics;

  final TfArg<List<Object?>>? topicsToExclude;

  final TfArg<List<Object?>> topicsToReplicate;

  final MskReplicatorReplicationInfoListTopicReplicationStartingPosition?
  startingPosition;

  final MskReplicatorReplicationInfoListTopicReplicationTopicNameConfiguration?
  topicNameConfiguration;

  Map<String, Object?> encode() => {
    if (copyAccessControlListsForTopics != null)
      'copy_access_control_lists_for_topics': copyAccessControlListsForTopics!
          .toTfJson(),
    if (copyTopicConfigurations != null)
      'copy_topic_configurations': copyTopicConfigurations!.toTfJson(),
    if (detectAndCopyNewTopics != null)
      'detect_and_copy_new_topics': detectAndCopyNewTopics!.toTfJson(),
    if (topicsToExclude != null)
      'topics_to_exclude': topicsToExclude!.toTfJson(),
    'topics_to_replicate': topicsToReplicate.toTfJson(),
    if (startingPosition != null)
      'starting_position': startingPosition!.encode(),
    if (topicNameConfiguration != null)
      'topic_name_configuration': topicNameConfiguration!.encode(),
  };
}

/// Typed helper for the `replication_info_list.topic_replication.starting_position` block of
/// `aws_msk_replicator` (derived from provider schema).
@immutable
final class MskReplicatorReplicationInfoListTopicReplicationStartingPosition {
  const MskReplicatorReplicationInfoListTopicReplicationStartingPosition({
    this.type,
  });

  final TfArg<
    MskReplicatorReplicationInfoListTopicReplicationStartingPositionType
  >?
  type;

  Map<String, Object?> encode() => {if (type != null) 'type': type!.toTfJson()};
}

/// `type` — derived from the provider schema description.
enum MskReplicatorReplicationInfoListTopicReplicationStartingPositionType
    implements TerraformEnum {
  latest('LATEST'),
  earliest('EARLIEST');

  const MskReplicatorReplicationInfoListTopicReplicationStartingPositionType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `replication_info_list.topic_replication.topic_name_configuration` block of
/// `aws_msk_replicator` (derived from provider schema).
@immutable
final class MskReplicatorReplicationInfoListTopicReplicationTopicNameConfiguration {
  const MskReplicatorReplicationInfoListTopicReplicationTopicNameConfiguration({
    this.type,
  });

  final TfArg<
    MskReplicatorReplicationInfoListTopicReplicationTopicNameConfigurationType
  >?
  type;

  Map<String, Object?> encode() => {if (type != null) 'type': type!.toTfJson()};
}

/// `type` — derived from the provider schema description.
enum MskReplicatorReplicationInfoListTopicReplicationTopicNameConfigurationType
    implements TerraformEnum {
  prefixedWithSourceClusterAlias('PREFIXED_WITH_SOURCE_CLUSTER_ALIAS'),
  identical('IDENTICAL');

  const MskReplicatorReplicationInfoListTopicReplicationTopicNameConfigurationType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_msk_replicator`.
final class AwsMskReplicator extends Resource {
  static const String tfType = 'aws_msk_replicator';

  AwsMskReplicator({
    required super.localName,
    TfArg<String>? description,
    TfArg<String>? region,
    required TfArg<String> replicatorName,
    required TfArg<String> serviceExecutionRoleArn,
    TfArg<Map<String, String>>? tags,
    required List<MskReplicatorKafkaCluster> kafkaCluster,
    MskReplicatorLogDelivery? logDelivery,
    required MskReplicatorReplicationInfoList replicationInfoList,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           if (region != null) 'region': region,
           'replicator_name': replicatorName,
           'service_execution_role_arn': serviceExecutionRoleArn,
           if (tags != null) 'tags': tags,
           'kafka_cluster': TfArg.literal([
             for (final e in kafkaCluster) e.encode(),
           ]),
           if (logDelivery != null)
             'log_delivery': TfArg.literal(logDelivery.encode()),
           'replication_info_list': TfArg.literal(replicationInfoList.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMskReplicatorSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsMskReplicator>`.
  RefTo<AwsMskReplicator> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `current_version` attribute.
  TfRef<String> get currentVersion =>
      TfRef.attribute<String>(this, 'current_version');
}
