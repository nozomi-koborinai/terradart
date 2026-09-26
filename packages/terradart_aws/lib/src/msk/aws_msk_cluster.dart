// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_msk_cluster`.
const Set<String> _awsMskClusterSensitive = <String>{};

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

  final TfArg<String>? azDistribution;

  final TfArg<List<Object?>> clientSubnets;

  final TfArg<String> instanceType;

  final TfArg<List<Object?>> securityGroups;

  final MskClusterBrokerNodeGroupInfoConnectivityInfo? connectivityInfo;

  final MskClusterBrokerNodeGroupInfoStorageInfo? storageInfo;

  Map<String, Object?> encode() => {
    if (azDistribution != null) 'az_distribution': azDistribution!.toTfJson(),
    'client_subnets': clientSubnets.toTfJson(),
    'instance_type': instanceType.toTfJson(),
    'security_groups': securityGroups.toTfJson(),
    if (connectivityInfo != null)
      'connectivity_info': connectivityInfo!.encode(),
    if (storageInfo != null) 'storage_info': storageInfo!.encode(),
  };
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

  final TfArg<String>? networkType;

  final MskClusterBrokerNodeGroupInfoConnectivityInfoPublicAccess? publicAccess;

  final MskClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivity?
  vpcConnectivity;

  Map<String, Object?> encode() => {
    if (networkType != null) 'network_type': networkType!.toTfJson(),
    if (publicAccess != null) 'public_access': publicAccess!.encode(),
    if (vpcConnectivity != null) 'vpc_connectivity': vpcConnectivity!.encode(),
  };
}

/// Typed helper for the `broker_node_group_info.connectivity_info.public_access` block of
/// `aws_msk_cluster` (derived from provider schema).
@immutable
final class MskClusterBrokerNodeGroupInfoConnectivityInfoPublicAccess {
  const MskClusterBrokerNodeGroupInfoConnectivityInfoPublicAccess({this.type});

  final TfArg<String>? type;

  Map<String, Object?> encode() => {if (type != null) 'type': type!.toTfJson()};
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
    if (clientAuthentication != null)
      'client_authentication': clientAuthentication!.encode(),
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
    if (tls != null) 'tls': tls!.toTfJson(),
    if (sasl != null) 'sasl': sasl!.encode(),
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
    if (iam != null) 'iam': iam!.toTfJson(),
    if (scram != null) 'scram': scram!.toTfJson(),
  };
}

/// Typed helper for the `broker_node_group_info.storage_info` block of
/// `aws_msk_cluster` (derived from provider schema).
@immutable
final class MskClusterBrokerNodeGroupInfoStorageInfo {
  const MskClusterBrokerNodeGroupInfoStorageInfo({this.ebsStorageInfo});

  final MskClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfo? ebsStorageInfo;

  Map<String, Object?> encode() => {
    if (ebsStorageInfo != null) 'ebs_storage_info': ebsStorageInfo!.encode(),
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
    if (volumeSize != null) 'volume_size': volumeSize!.toTfJson(),
    if (provisionedThroughput != null)
      'provisioned_throughput': provisionedThroughput!.encode(),
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
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (volumeThroughput != null)
      'volume_throughput': volumeThroughput!.toTfJson(),
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
    if (unauthenticated != null) 'unauthenticated': unauthenticated!.toTfJson(),
    if (sasl != null) 'sasl': sasl!.encode(),
    if (tls != null) 'tls': tls!.encode(),
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
    if (iam != null) 'iam': iam!.toTfJson(),
    if (scram != null) 'scram': scram!.toTfJson(),
  };
}

/// Typed helper for the `client_authentication.tls` block of
/// `aws_msk_cluster` (derived from provider schema).
@immutable
final class MskClusterClientAuthenticationTls {
  const MskClusterClientAuthenticationTls({this.certificateAuthorityArns});

  final TfArg<List<Object?>>? certificateAuthorityArns;

  Map<String, Object?> encode() => {
    if (certificateAuthorityArns != null)
      'certificate_authority_arns': certificateAuthorityArns!.toTfJson(),
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
    if (encryptionAtRestKmsKeyArn != null)
      'encryption_at_rest_kms_key_arn': encryptionAtRestKmsKeyArn!.toTfJson(),
    if (encryptionInTransit != null)
      'encryption_in_transit': encryptionInTransit!.encode(),
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

  final TfArg<String>? clientBroker;

  final TfArg<bool>? inCluster;

  Map<String, Object?> encode() => {
    if (clientBroker != null) 'client_broker': clientBroker!.toTfJson(),
    if (inCluster != null) 'in_cluster': inCluster!.toTfJson(),
  };
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
    if (cloudwatchLogs != null) 'cloudwatch_logs': cloudwatchLogs!.encode(),
    if (firehose != null) 'firehose': firehose!.encode(),
    if (s3 != null) 's3': s3!.encode(),
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

  final TfArg<String>? logGroup;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    if (logGroup != null) 'log_group': logGroup!.toTfJson(),
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
    if (deliveryStream != null) 'delivery_stream': deliveryStream!.toTfJson(),
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

  final TfArg<String>? bucket;

  final TfArg<bool> enabled;

  final TfArg<String>? prefix;

  Map<String, Object?> encode() => {
    if (bucket != null) 'bucket': bucket!.toTfJson(),
    'enabled': enabled.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
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
    if (jmxExporter != null) 'jmx_exporter': jmxExporter!.encode(),
    if (nodeExporter != null) 'node_exporter': nodeExporter!.encode(),
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

  final TfArg<String> status;

  Map<String, Object?> encode() => {'status': status.toTfJson()};
}

/// Factory wrapper for `aws_msk_cluster`.
final class AwsMskCluster extends Resource {
  static const String tfType = 'aws_msk_cluster';

  AwsMskCluster({
    required super.localName,
    required TfArg<String> clusterName,
    TfArg<String>? enhancedMonitoring,
    required TfArg<String> kafkaVersion,
    required TfArg<num> numberOfBrokerNodes,
    TfArg<String>? region,
    TfArg<String>? storageMode,
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
           if (enhancedMonitoring != null)
             'enhanced_monitoring': enhancedMonitoring,
           'kafka_version': kafkaVersion,
           'number_of_broker_nodes': numberOfBrokerNodes,
           if (region != null) 'region': region,
           if (storageMode != null) 'storage_mode': storageMode,
           if (tags != null) 'tags': tags,
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
