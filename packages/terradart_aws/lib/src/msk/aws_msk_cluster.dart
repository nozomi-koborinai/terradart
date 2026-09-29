// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../cloudwatch/aws_cloudwatch_log_group.dart' show AwsCloudwatchLogGroup;
import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_msk_cluster`.
const Set<String> _awsMskClusterSensitive = <String>{};

/// Msk Cluster Enhanced enum for `enhanced_monitoring`.
enum MskClusterEnhancedMonitoring implements TerraformEnum {
  defaultCase('DEFAULT'),
  perBroker('PER_BROKER'),
  perTopicPerBroker('PER_TOPIC_PER_BROKER'),
  perTopicPerPartition('PER_TOPIC_PER_PARTITION');

  const MskClusterEnhancedMonitoring(this.terraformValue);
  @override
  final String terraformValue;
}

/// Msk Cluster Storage enum for `storage_mode`.
enum MskClusterStorageMode implements TerraformEnum {
  local('LOCAL'),
  tiered('TIERED');

  const MskClusterStorageMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `broker_node_group_info` block of
/// `aws_msk_cluster` (derived from provider schema).
@immutable
final class MskClusterBrokerNodeGroupInfo {
  const MskClusterBrokerNodeGroupInfo({
    this.azDistribution,
    required this.clientSubnets,
    required this.instanceType,
    required this.securityGroups,
    this.connectivityInfo,
    this.storageInfo,
  });

  final TfArg<MskClusterBrokerNodeGroupInfoAzDistribution>? azDistribution;

  final TfArg<List<Object?>> clientSubnets;

  final TfArg<String> instanceType;

  final TfArg<List<RefTo<AwsSecurityGroup>>> securityGroups;

  final MskClusterBrokerNodeGroupInfoConnectivityInfo? connectivityInfo;

  final MskClusterBrokerNodeGroupInfoStorageInfo? storageInfo;

  Map<String, Object?> encode() => {
    'az_distribution': ?azDistribution?.toTfJson(),
    'client_subnets': clientSubnets.toTfJson(),
    'instance_type': instanceType.toTfJson(),
    'security_groups': securityGroups.encodeAs('id').toTfJson(),
    'connectivity_info': ?connectivityInfo?.encode(),
    'storage_info': ?storageInfo?.encode(),
  };
}

/// `az_distribution` — derived from the provider schema description.
enum MskClusterBrokerNodeGroupInfoAzDistribution implements TerraformEnum {
  defaultCase('DEFAULT');

  const MskClusterBrokerNodeGroupInfoAzDistribution(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `broker_node_group_info.connectivity_info` block of
/// `aws_msk_cluster` (derived from provider schema).
@immutable
final class MskClusterBrokerNodeGroupInfoConnectivityInfo {
  const MskClusterBrokerNodeGroupInfoConnectivityInfo({
    this.networkType,
    this.publicAccess,
    this.vpcConnectivity,
  });

  final TfArg<MskClusterBrokerNodeGroupInfoConnectivityInfoNetworkType>?
  networkType;

  final MskClusterBrokerNodeGroupInfoConnectivityInfoPublicAccess? publicAccess;

  final MskClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivity?
  vpcConnectivity;

  Map<String, Object?> encode() => {
    'network_type': ?networkType?.toTfJson(),
    'public_access': ?publicAccess?.encode(),
    'vpc_connectivity': ?vpcConnectivity?.encode(),
  };
}

/// `network_type` — derived from the provider schema description.
enum MskClusterBrokerNodeGroupInfoConnectivityInfoNetworkType
    implements TerraformEnum {
  ipv4('IPV4'),
  dual('DUAL');

  const MskClusterBrokerNodeGroupInfoConnectivityInfoNetworkType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `broker_node_group_info.connectivity_info.public_access` block of
/// `aws_msk_cluster` (derived from provider schema).
@immutable
final class MskClusterBrokerNodeGroupInfoConnectivityInfoPublicAccess {
  const MskClusterBrokerNodeGroupInfoConnectivityInfoPublicAccess({this.type});

  final TfArg<MskClusterBrokerNodeGroupInfoConnectivityInfoPublicAccessType>?
  type;

  Map<String, Object?> encode() => {'type': ?type?.toTfJson()};
}

/// `type` — derived from the provider schema description.
enum MskClusterBrokerNodeGroupInfoConnectivityInfoPublicAccessType
    implements TerraformEnum {
  disabled('DISABLED'),
  serviceProvidedEips('SERVICE_PROVIDED_EIPS');

  const MskClusterBrokerNodeGroupInfoConnectivityInfoPublicAccessType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `broker_node_group_info.connectivity_info.vpc_connectivity` block of
/// `aws_msk_cluster` (derived from provider schema).
@immutable
final class MskClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivity {
  const MskClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivity({
    this.clientAuthentication,
  });

  final MskClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthentication?
  clientAuthentication;

  Map<String, Object?> encode() => {
    'client_authentication': ?clientAuthentication?.encode(),
  };
}

/// Typed helper for the `broker_node_group_info.connectivity_info.vpc_connectivity.client_authentication` block of
/// `aws_msk_cluster` (derived from provider schema).
@immutable
final class MskClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthentication {
  const MskClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthentication({
    this.tls,
    this.sasl,
  });

  final TfArg<bool>? tls;

  final MskClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthenticationSasl?
  sasl;

  Map<String, Object?> encode() => {
    'tls': ?tls?.toTfJson(),
    'sasl': ?sasl?.encode(),
  };
}

/// Typed helper for the `broker_node_group_info.connectivity_info.vpc_connectivity.client_authentication.sasl` block of
/// `aws_msk_cluster` (derived from provider schema).
@immutable
final class MskClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthenticationSasl {
  const MskClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthenticationSasl({
    this.iam,
    this.scram,
  });

  final TfArg<bool>? iam;

  final TfArg<bool>? scram;

  Map<String, Object?> encode() => {
    'iam': ?iam?.toTfJson(),
    'scram': ?scram?.toTfJson(),
  };
}

/// Typed helper for the `broker_node_group_info.storage_info` block of
/// `aws_msk_cluster` (derived from provider schema).
@immutable
final class MskClusterBrokerNodeGroupInfoStorageInfo {
  const MskClusterBrokerNodeGroupInfoStorageInfo({this.ebsStorageInfo});

  final MskClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfo? ebsStorageInfo;

  Map<String, Object?> encode() => {
    'ebs_storage_info': ?ebsStorageInfo?.encode(),
  };
}

/// Typed helper for the `broker_node_group_info.storage_info.ebs_storage_info` block of
/// `aws_msk_cluster` (derived from provider schema).
@immutable
final class MskClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfo {
  const MskClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfo({
    this.volumeSize,
    this.provisionedThroughput,
  });

  final TfArg<num>? volumeSize;

  final MskClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfoProvisionedThroughput?
  provisionedThroughput;

  Map<String, Object?> encode() => {
    'volume_size': ?volumeSize?.toTfJson(),
    'provisioned_throughput': ?provisionedThroughput?.encode(),
  };
}

/// Typed helper for the `broker_node_group_info.storage_info.ebs_storage_info.provisioned_throughput` block of
/// `aws_msk_cluster` (derived from provider schema).
@immutable
final class MskClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfoProvisionedThroughput {
  const MskClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfoProvisionedThroughput({
    this.enabled,
    this.volumeThroughput,
  });

  final TfArg<bool>? enabled;

  final TfArg<num>? volumeThroughput;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'volume_throughput': ?volumeThroughput?.toTfJson(),
  };
}

/// Typed helper for the `client_authentication` block of
/// `aws_msk_cluster` (derived from provider schema).
@immutable
final class MskClusterClientAuthentication {
  const MskClusterClientAuthentication({
    this.unauthenticated,
    this.sasl,
    this.tls,
  });

  final TfArg<bool>? unauthenticated;

  final MskClusterClientAuthenticationSasl? sasl;

  final MskClusterClientAuthenticationTls? tls;

  Map<String, Object?> encode() => {
    'unauthenticated': ?unauthenticated?.toTfJson(),
    'sasl': ?sasl?.encode(),
    'tls': ?tls?.encode(),
  };
}

/// Typed helper for the `client_authentication.sasl` block of
/// `aws_msk_cluster` (derived from provider schema).
@immutable
final class MskClusterClientAuthenticationSasl {
  const MskClusterClientAuthenticationSasl({this.iam, this.scram});

  final TfArg<bool>? iam;

  final TfArg<bool>? scram;

  Map<String, Object?> encode() => {
    'iam': ?iam?.toTfJson(),
    'scram': ?scram?.toTfJson(),
  };
}

/// Typed helper for the `client_authentication.tls` block of
/// `aws_msk_cluster` (derived from provider schema).
@immutable
final class MskClusterClientAuthenticationTls {
  const MskClusterClientAuthenticationTls({this.certificateAuthorityArns});

  final TfArg<List<Object?>>? certificateAuthorityArns;

  Map<String, Object?> encode() => {
    'certificate_authority_arns': ?certificateAuthorityArns?.toTfJson(),
  };
}

/// Typed helper for the `configuration_info` block of
/// `aws_msk_cluster` (derived from provider schema).
@immutable
final class MskClusterConfigurationInfo {
  const MskClusterConfigurationInfo({
    required this.arn,
    required this.revision,
  });

  final TfArg<String> arn;

  final TfArg<num> revision;

  Map<String, Object?> encode() => {
    'arn': arn.toTfJson(),
    'revision': revision.toTfJson(),
  };
}

/// Typed helper for the `encryption_info` block of
/// `aws_msk_cluster` (derived from provider schema).
@immutable
final class MskClusterEncryptionInfo {
  const MskClusterEncryptionInfo({
    this.encryptionAtRestKmsKeyArn,
    this.encryptionInTransit,
  });

  final TfArg<String>? encryptionAtRestKmsKeyArn;

  final MskClusterEncryptionInfoEncryptionInTransit? encryptionInTransit;

  Map<String, Object?> encode() => {
    'encryption_at_rest_kms_key_arn': ?encryptionAtRestKmsKeyArn?.toTfJson(),
    'encryption_in_transit': ?encryptionInTransit?.encode(),
  };
}

/// Typed helper for the `encryption_info.encryption_in_transit` block of
/// `aws_msk_cluster` (derived from provider schema).
@immutable
final class MskClusterEncryptionInfoEncryptionInTransit {
  const MskClusterEncryptionInfoEncryptionInTransit({
    this.clientBroker,
    this.inCluster,
  });

  final TfArg<MskClusterEncryptionInfoEncryptionInTransitClientBroker>?
  clientBroker;

  final TfArg<bool>? inCluster;

  Map<String, Object?> encode() => {
    'client_broker': ?clientBroker?.toTfJson(),
    'in_cluster': ?inCluster?.toTfJson(),
  };
}

/// `client_broker` — derived from the provider schema description.
enum MskClusterEncryptionInfoEncryptionInTransitClientBroker
    implements TerraformEnum {
  tls('TLS'),
  tlsPlaintext('TLS_PLAINTEXT'),
  plaintext('PLAINTEXT');

  const MskClusterEncryptionInfoEncryptionInTransitClientBroker(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `logging_info` block of
/// `aws_msk_cluster` (derived from provider schema).
@immutable
final class MskClusterLoggingInfo {
  const MskClusterLoggingInfo({required this.brokerLogs});

  final MskClusterLoggingInfoBrokerLogs brokerLogs;

  Map<String, Object?> encode() => {'broker_logs': brokerLogs.encode()};
}

/// Typed helper for the `logging_info.broker_logs` block of
/// `aws_msk_cluster` (derived from provider schema).
@immutable
final class MskClusterLoggingInfoBrokerLogs {
  const MskClusterLoggingInfoBrokerLogs({
    this.cloudwatchLogs,
    this.firehose,
    this.s3,
  });

  final MskClusterLoggingInfoBrokerLogsCloudwatchLogs? cloudwatchLogs;

  final MskClusterLoggingInfoBrokerLogsFirehose? firehose;

  final MskClusterLoggingInfoBrokerLogsS3? s3;

  Map<String, Object?> encode() => {
    'cloudwatch_logs': ?cloudwatchLogs?.encode(),
    'firehose': ?firehose?.encode(),
    's3': ?s3?.encode(),
  };
}

/// Typed helper for the `logging_info.broker_logs.cloudwatch_logs` block of
/// `aws_msk_cluster` (derived from provider schema).
@immutable
final class MskClusterLoggingInfoBrokerLogsCloudwatchLogs {
  const MskClusterLoggingInfoBrokerLogsCloudwatchLogs({
    required this.enabled,
    this.logGroup,
  });

  final TfArg<bool> enabled;

  final RefTo<AwsCloudwatchLogGroup>? logGroup;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'log_group': ?logGroup?.encodeAs('name').toTfJson(),
  };
}

/// Typed helper for the `logging_info.broker_logs.firehose` block of
/// `aws_msk_cluster` (derived from provider schema).
@immutable
final class MskClusterLoggingInfoBrokerLogsFirehose {
  const MskClusterLoggingInfoBrokerLogsFirehose({
    this.deliveryStream,
    required this.enabled,
  });

  final TfArg<String>? deliveryStream;

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {
    'delivery_stream': ?deliveryStream?.toTfJson(),
    'enabled': enabled.toTfJson(),
  };
}

/// Typed helper for the `logging_info.broker_logs.s3` block of
/// `aws_msk_cluster` (derived from provider schema).
@immutable
final class MskClusterLoggingInfoBrokerLogsS3 {
  const MskClusterLoggingInfoBrokerLogsS3({
    this.bucket,
    required this.enabled,
    this.prefix,
  });

  final RefTo<AwsS3Bucket>? bucket;

  final TfArg<bool> enabled;

  final TfArg<String>? prefix;

  Map<String, Object?> encode() => {
    'bucket': ?bucket?.encodeAs('id').toTfJson(),
    'enabled': enabled.toTfJson(),
    'prefix': ?prefix?.toTfJson(),
  };
}

/// Typed helper for the `open_monitoring` block of
/// `aws_msk_cluster` (derived from provider schema).
@immutable
final class MskClusterOpenMonitoring {
  const MskClusterOpenMonitoring({required this.prometheus});

  final MskClusterOpenMonitoringPrometheus prometheus;

  Map<String, Object?> encode() => {'prometheus': prometheus.encode()};
}

/// Typed helper for the `open_monitoring.prometheus` block of
/// `aws_msk_cluster` (derived from provider schema).
@immutable
final class MskClusterOpenMonitoringPrometheus {
  const MskClusterOpenMonitoringPrometheus({
    this.jmxExporter,
    this.nodeExporter,
  });

  final MskClusterOpenMonitoringPrometheusJmxExporter? jmxExporter;

  final MskClusterOpenMonitoringPrometheusNodeExporter? nodeExporter;

  Map<String, Object?> encode() => {
    'jmx_exporter': ?jmxExporter?.encode(),
    'node_exporter': ?nodeExporter?.encode(),
  };
}

/// Typed helper for the `open_monitoring.prometheus.jmx_exporter` block of
/// `aws_msk_cluster` (derived from provider schema).
@immutable
final class MskClusterOpenMonitoringPrometheusJmxExporter {
  const MskClusterOpenMonitoringPrometheusJmxExporter({
    required this.enabledInBroker,
  });

  final TfArg<bool> enabledInBroker;

  Map<String, Object?> encode() => {
    'enabled_in_broker': enabledInBroker.toTfJson(),
  };
}

/// Typed helper for the `open_monitoring.prometheus.node_exporter` block of
/// `aws_msk_cluster` (derived from provider schema).
@immutable
final class MskClusterOpenMonitoringPrometheusNodeExporter {
  const MskClusterOpenMonitoringPrometheusNodeExporter({
    required this.enabledInBroker,
  });

  final TfArg<bool> enabledInBroker;

  Map<String, Object?> encode() => {
    'enabled_in_broker': enabledInBroker.toTfJson(),
  };
}

/// Typed helper for the `rebalancing` block of
/// `aws_msk_cluster` (derived from provider schema).
@immutable
final class MskClusterRebalancing {
  const MskClusterRebalancing({required this.status});

  final TfArg<MskClusterRebalancingStatus> status;

  Map<String, Object?> encode() => {'status': status.toTfJson()};
}

/// `status` — derived from the provider schema description.
enum MskClusterRebalancingStatus implements TerraformEnum {
  paused('PAUSED'),
  active('ACTIVE');

  const MskClusterRebalancingStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_msk_cluster`.
final class AwsMskCluster extends Resource {
  static const String tfType = 'aws_msk_cluster';

  AwsMskCluster({
    required super.localName,
    required TfArg<String> clusterName,
    TfArg<MskClusterEnhancedMonitoring>? enhancedMonitoring,
    required TfArg<String> kafkaVersion,
    required TfArg<num> numberOfBrokerNodes,
    TfArg<String>? region,
    TfArg<MskClusterStorageMode>? storageMode,
    TfArg<Map<String, String>>? tags,
    required MskClusterBrokerNodeGroupInfo brokerNodeGroupInfo,
    MskClusterClientAuthentication? clientAuthentication,
    MskClusterConfigurationInfo? configurationInfo,
    MskClusterEncryptionInfo? encryptionInfo,
    MskClusterLoggingInfo? loggingInfo,
    MskClusterOpenMonitoring? openMonitoring,
    MskClusterRebalancing? rebalancing,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_name': clusterName,
           'enhanced_monitoring': ?enhancedMonitoring,
           'kafka_version': kafkaVersion,
           'number_of_broker_nodes': numberOfBrokerNodes,
           'region': ?region,
           'storage_mode': ?storageMode,
           'tags': ?tags,
           'broker_node_group_info': TfArg.literal(
             brokerNodeGroupInfo.encode(),
           ),
           if (clientAuthentication != null)
             'client_authentication': TfArg.literal(
               clientAuthentication.encode(),
             ),
           if (configurationInfo != null)
             'configuration_info': TfArg.literal(configurationInfo.encode()),
           if (encryptionInfo != null)
             'encryption_info': TfArg.literal(encryptionInfo.encode()),
           if (loggingInfo != null)
             'logging_info': TfArg.literal(loggingInfo.encode()),
           if (openMonitoring != null)
             'open_monitoring': TfArg.literal(openMonitoring.encode()),
           if (rebalancing != null)
             'rebalancing': TfArg.literal(rebalancing.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMskClusterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsMskCluster>`.
  RefTo<AwsMskCluster> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `bootstrap_brokers` attribute.
  TfRef<String> get bootstrapBrokers =>
      TfRef.attribute<String>(this, 'bootstrap_brokers');

  /// Reference to `bootstrap_brokers_ipv6` attribute.
  TfRef<String> get bootstrapBrokersIpv6 =>
      TfRef.attribute<String>(this, 'bootstrap_brokers_ipv6');

  /// Reference to `bootstrap_brokers_public_sasl_iam` attribute.
  TfRef<String> get bootstrapBrokersPublicSaslIam =>
      TfRef.attribute<String>(this, 'bootstrap_brokers_public_sasl_iam');

  /// Reference to `bootstrap_brokers_public_sasl_scram` attribute.
  TfRef<String> get bootstrapBrokersPublicSaslScram =>
      TfRef.attribute<String>(this, 'bootstrap_brokers_public_sasl_scram');

  /// Reference to `bootstrap_brokers_public_tls` attribute.
  TfRef<String> get bootstrapBrokersPublicTls =>
      TfRef.attribute<String>(this, 'bootstrap_brokers_public_tls');

  /// Reference to `bootstrap_brokers_sasl_iam` attribute.
  TfRef<String> get bootstrapBrokersSaslIam =>
      TfRef.attribute<String>(this, 'bootstrap_brokers_sasl_iam');

  /// Reference to `bootstrap_brokers_sasl_iam_ipv6` attribute.
  TfRef<String> get bootstrapBrokersSaslIamIpv6 =>
      TfRef.attribute<String>(this, 'bootstrap_brokers_sasl_iam_ipv6');

  /// Reference to `bootstrap_brokers_sasl_scram` attribute.
  TfRef<String> get bootstrapBrokersSaslScram =>
      TfRef.attribute<String>(this, 'bootstrap_brokers_sasl_scram');

  /// Reference to `bootstrap_brokers_sasl_scram_ipv6` attribute.
  TfRef<String> get bootstrapBrokersSaslScramIpv6 =>
      TfRef.attribute<String>(this, 'bootstrap_brokers_sasl_scram_ipv6');

  /// Reference to `bootstrap_brokers_tls` attribute.
  TfRef<String> get bootstrapBrokersTls =>
      TfRef.attribute<String>(this, 'bootstrap_brokers_tls');

  /// Reference to `bootstrap_brokers_tls_ipv6` attribute.
  TfRef<String> get bootstrapBrokersTlsIpv6 =>
      TfRef.attribute<String>(this, 'bootstrap_brokers_tls_ipv6');

  /// Reference to `bootstrap_brokers_vpc_connectivity_sasl_iam` attribute.
  TfRef<String> get bootstrapBrokersVpcConnectivitySaslIam =>
      TfRef.attribute<String>(
        this,
        'bootstrap_brokers_vpc_connectivity_sasl_iam',
      );

  /// Reference to `bootstrap_brokers_vpc_connectivity_sasl_scram` attribute.
  TfRef<String> get bootstrapBrokersVpcConnectivitySaslScram =>
      TfRef.attribute<String>(
        this,
        'bootstrap_brokers_vpc_connectivity_sasl_scram',
      );

  /// Reference to `bootstrap_brokers_vpc_connectivity_tls` attribute.
  TfRef<String> get bootstrapBrokersVpcConnectivityTls =>
      TfRef.attribute<String>(this, 'bootstrap_brokers_vpc_connectivity_tls');

  /// Reference to `cluster_uuid` attribute.
  TfRef<String> get clusterUuid =>
      TfRef.attribute<String>(this, 'cluster_uuid');

  /// Reference to `current_version` attribute.
  TfRef<String> get currentVersion =>
      TfRef.attribute<String>(this, 'current_version');

  /// Reference to `customer_action_status` attribute.
  TfRef<String> get customerActionStatus =>
      TfRef.attribute<String>(this, 'customer_action_status');

  /// Reference to `zookeeper_connect_string` attribute.
  TfRef<String> get zookeeperConnectString =>
      TfRef.attribute<String>(this, 'zookeeper_connect_string');

  /// Reference to `zookeeper_connect_string_tls` attribute.
  TfRef<String> get zookeeperConnectStringTls =>
      TfRef.attribute<String>(this, 'zookeeper_connect_string_tls');
}
