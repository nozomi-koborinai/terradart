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
extension type const MskClusterEnhancedMonitoring._(TfArg<String> _)
    implements TfArg<String> {
  MskClusterEnhancedMonitoring.variable(String name)
    : this._(TfArg.variable(name));
  MskClusterEnhancedMonitoring.expression(String template)
    : this._(TfArg.expression(template));
  const MskClusterEnhancedMonitoring.arg(TfArg<String> arg) : this._(arg);

  static const defaultCase = MskClusterEnhancedMonitoring._(
    TfArgLiteral('DEFAULT'),
  );
  static const perBroker = MskClusterEnhancedMonitoring._(
    TfArgLiteral('PER_BROKER'),
  );
  static const perTopicPerBroker = MskClusterEnhancedMonitoring._(
    TfArgLiteral('PER_TOPIC_PER_BROKER'),
  );
  static const perTopicPerPartition = MskClusterEnhancedMonitoring._(
    TfArgLiteral('PER_TOPIC_PER_PARTITION'),
  );

  static const List<MskClusterEnhancedMonitoring> values = [
    defaultCase,
    perBroker,
    perTopicPerBroker,
    perTopicPerPartition,
  ];
}

/// Msk Cluster Storage enum for `storage_mode`.
extension type const MskClusterStorageMode._(TfArg<String> _)
    implements TfArg<String> {
  MskClusterStorageMode.variable(String name) : this._(TfArg.variable(name));
  MskClusterStorageMode.expression(String template)
    : this._(TfArg.expression(template));
  const MskClusterStorageMode.arg(TfArg<String> arg) : this._(arg);

  static const local = MskClusterStorageMode._(TfArgLiteral('LOCAL'));
  static const tiered = MskClusterStorageMode._(TfArgLiteral('TIERED'));

  static const List<MskClusterStorageMode> values = [local, tiered];
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

  final MskClusterAzDistribution? azDistribution;

  final TfArg<List<String>> clientSubnets;

  final TfArg<String> instanceType;

  final TfArg<List<RefTo<AwsSecurityGroup>>> securityGroups;

  final MskClusterConnectivityInfo? connectivityInfo;

  final MskClusterStorageInfo? storageInfo;

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
extension type const MskClusterAzDistribution._(TfArg<String> _)
    implements TfArg<String> {
  MskClusterAzDistribution.variable(String name) : this._(TfArg.variable(name));
  MskClusterAzDistribution.expression(String template)
    : this._(TfArg.expression(template));
  const MskClusterAzDistribution.arg(TfArg<String> arg) : this._(arg);

  static const defaultCase = MskClusterAzDistribution._(
    TfArgLiteral('DEFAULT'),
  );

  static const List<MskClusterAzDistribution> values = [defaultCase];
}

/// Typed helper for the `broker_node_group_info.connectivity_info` block of
/// `aws_msk_cluster` (derived from provider schema).
@immutable
final class MskClusterConnectivityInfo {
  const MskClusterConnectivityInfo({
    this.networkType,
    this.publicAccess,
    this.vpcConnectivity,
  });

  final MskClusterNetworkType? networkType;

  final MskClusterPublicAccess? publicAccess;

  final MskClusterVpcConnectivity? vpcConnectivity;

  Map<String, Object?> encode() => {
    'network_type': ?networkType?.toTfJson(),
    'public_access': ?publicAccess?.encode(),
    'vpc_connectivity': ?vpcConnectivity?.encode(),
  };
}

/// `network_type` — derived from the provider schema description.
extension type const MskClusterNetworkType._(TfArg<String> _)
    implements TfArg<String> {
  MskClusterNetworkType.variable(String name) : this._(TfArg.variable(name));
  MskClusterNetworkType.expression(String template)
    : this._(TfArg.expression(template));
  const MskClusterNetworkType.arg(TfArg<String> arg) : this._(arg);

  static const ipv4 = MskClusterNetworkType._(TfArgLiteral('IPV4'));
  static const dual = MskClusterNetworkType._(TfArgLiteral('DUAL'));

  static const List<MskClusterNetworkType> values = [ipv4, dual];
}

/// Typed helper for the `broker_node_group_info.connectivity_info.public_access` block of
/// `aws_msk_cluster` (derived from provider schema).
@immutable
final class MskClusterPublicAccess {
  const MskClusterPublicAccess({this.type});

  final MskClusterType? type;

  Map<String, Object?> encode() => {'type': ?type?.toTfJson()};
}

/// `type` — derived from the provider schema description.
extension type const MskClusterType._(TfArg<String> _)
    implements TfArg<String> {
  MskClusterType.variable(String name) : this._(TfArg.variable(name));
  MskClusterType.expression(String template)
    : this._(TfArg.expression(template));
  const MskClusterType.arg(TfArg<String> arg) : this._(arg);

  static const disabled = MskClusterType._(TfArgLiteral('DISABLED'));
  static const serviceProvidedEips = MskClusterType._(
    TfArgLiteral('SERVICE_PROVIDED_EIPS'),
  );

  static const List<MskClusterType> values = [disabled, serviceProvidedEips];
}

/// Typed helper for the `broker_node_group_info.connectivity_info.vpc_connectivity` block of
/// `aws_msk_cluster` (derived from provider schema).
@immutable
final class MskClusterVpcConnectivity {
  const MskClusterVpcConnectivity({this.clientAuthentication});

  final MskClusterVpcConnectivityClientAuthentication? clientAuthentication;

  Map<String, Object?> encode() => {
    'client_authentication': ?clientAuthentication?.encode(),
  };
}

/// Typed helper for the `broker_node_group_info.connectivity_info.vpc_connectivity.client_authentication` block of
/// `aws_msk_cluster` (derived from provider schema).
@immutable
final class MskClusterVpcConnectivityClientAuthentication {
  const MskClusterVpcConnectivityClientAuthentication({this.tls, this.sasl});

  final TfArg<bool>? tls;

  final MskClusterSasl? sasl;

  Map<String, Object?> encode() => {
    'tls': ?tls?.toTfJson(),
    'sasl': ?sasl?.encode(),
  };
}

/// Typed helper for the `client_authentication.sasl` block of
/// `aws_msk_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class MskClusterSasl {
  const MskClusterSasl({this.iam, this.scram});

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
final class MskClusterStorageInfo {
  const MskClusterStorageInfo({this.ebsStorageInfo});

  final MskClusterEbsStorageInfo? ebsStorageInfo;

  Map<String, Object?> encode() => {
    'ebs_storage_info': ?ebsStorageInfo?.encode(),
  };
}

/// Typed helper for the `broker_node_group_info.storage_info.ebs_storage_info` block of
/// `aws_msk_cluster` (derived from provider schema).
@immutable
final class MskClusterEbsStorageInfo {
  const MskClusterEbsStorageInfo({this.volumeSize, this.provisionedThroughput});

  final TfArg<num>? volumeSize;

  final MskClusterProvisionedThroughput? provisionedThroughput;

  Map<String, Object?> encode() => {
    'volume_size': ?volumeSize?.toTfJson(),
    'provisioned_throughput': ?provisionedThroughput?.encode(),
  };
}

/// Typed helper for the `broker_node_group_info.storage_info.ebs_storage_info.provisioned_throughput` block of
/// `aws_msk_cluster` (derived from provider schema).
@immutable
final class MskClusterProvisionedThroughput {
  const MskClusterProvisionedThroughput({this.enabled, this.volumeThroughput});

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

  final MskClusterSasl? sasl;

  final MskClusterTls? tls;

  Map<String, Object?> encode() => {
    'unauthenticated': ?unauthenticated?.toTfJson(),
    'sasl': ?sasl?.encode(),
    'tls': ?tls?.encode(),
  };
}

/// Typed helper for the `client_authentication.tls` block of
/// `aws_msk_cluster` (derived from provider schema).
@immutable
final class MskClusterTls {
  const MskClusterTls({this.certificateAuthorityArns});

  final TfArg<List<String>>? certificateAuthorityArns;

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

  final MskClusterEncryptionInTransit? encryptionInTransit;

  Map<String, Object?> encode() => {
    'encryption_at_rest_kms_key_arn': ?encryptionAtRestKmsKeyArn?.toTfJson(),
    'encryption_in_transit': ?encryptionInTransit?.encode(),
  };
}

/// Typed helper for the `encryption_info.encryption_in_transit` block of
/// `aws_msk_cluster` (derived from provider schema).
@immutable
final class MskClusterEncryptionInTransit {
  const MskClusterEncryptionInTransit({this.clientBroker, this.inCluster});

  final MskClusterClientBroker? clientBroker;

  final TfArg<bool>? inCluster;

  Map<String, Object?> encode() => {
    'client_broker': ?clientBroker?.toTfJson(),
    'in_cluster': ?inCluster?.toTfJson(),
  };
}

/// `client_broker` — derived from the provider schema description.
extension type const MskClusterClientBroker._(TfArg<String> _)
    implements TfArg<String> {
  MskClusterClientBroker.variable(String name) : this._(TfArg.variable(name));
  MskClusterClientBroker.expression(String template)
    : this._(TfArg.expression(template));
  const MskClusterClientBroker.arg(TfArg<String> arg) : this._(arg);

  static const tls = MskClusterClientBroker._(TfArgLiteral('TLS'));
  static const tlsPlaintext = MskClusterClientBroker._(
    TfArgLiteral('TLS_PLAINTEXT'),
  );
  static const plaintext = MskClusterClientBroker._(TfArgLiteral('PLAINTEXT'));

  static const List<MskClusterClientBroker> values = [
    tls,
    tlsPlaintext,
    plaintext,
  ];
}

/// Typed helper for the `logging_info` block of
/// `aws_msk_cluster` (derived from provider schema).
@immutable
final class MskClusterLoggingInfo {
  const MskClusterLoggingInfo({required this.brokerLogs});

  final MskClusterBrokerLogs brokerLogs;

  Map<String, Object?> encode() => {'broker_logs': brokerLogs.encode()};
}

/// Typed helper for the `logging_info.broker_logs` block of
/// `aws_msk_cluster` (derived from provider schema).
@immutable
final class MskClusterBrokerLogs {
  const MskClusterBrokerLogs({this.cloudwatchLogs, this.firehose, this.s3});

  final MskClusterCloudwatchLogs? cloudwatchLogs;

  final MskClusterFirehose? firehose;

  final MskClusterS3? s3;

  Map<String, Object?> encode() => {
    'cloudwatch_logs': ?cloudwatchLogs?.encode(),
    'firehose': ?firehose?.encode(),
    's3': ?s3?.encode(),
  };
}

/// Typed helper for the `logging_info.broker_logs.cloudwatch_logs` block of
/// `aws_msk_cluster` (derived from provider schema).
@immutable
final class MskClusterCloudwatchLogs {
  const MskClusterCloudwatchLogs({required this.enabled, this.logGroup});

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
final class MskClusterFirehose {
  const MskClusterFirehose({this.deliveryStream, required this.enabled});

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
final class MskClusterS3 {
  const MskClusterS3({this.bucket, required this.enabled, this.prefix});

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

  final MskClusterPrometheus prometheus;

  Map<String, Object?> encode() => {'prometheus': prometheus.encode()};
}

/// Typed helper for the `open_monitoring.prometheus` block of
/// `aws_msk_cluster` (derived from provider schema).
@immutable
final class MskClusterPrometheus {
  const MskClusterPrometheus({this.jmxExporter, this.nodeExporter});

  final MskClusterJmxExporter? jmxExporter;

  final MskClusterNodeExporter? nodeExporter;

  Map<String, Object?> encode() => {
    'jmx_exporter': ?jmxExporter?.encode(),
    'node_exporter': ?nodeExporter?.encode(),
  };
}

/// Typed helper for the `open_monitoring.prometheus.jmx_exporter` block of
/// `aws_msk_cluster` (derived from provider schema).
@immutable
final class MskClusterJmxExporter {
  const MskClusterJmxExporter({required this.enabledInBroker});

  final TfArg<bool> enabledInBroker;

  Map<String, Object?> encode() => {
    'enabled_in_broker': enabledInBroker.toTfJson(),
  };
}

/// Typed helper for the `open_monitoring.prometheus.node_exporter` block of
/// `aws_msk_cluster` (derived from provider schema).
@immutable
final class MskClusterNodeExporter {
  const MskClusterNodeExporter({required this.enabledInBroker});

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

  final MskClusterStatus status;

  Map<String, Object?> encode() => {'status': status.toTfJson()};
}

/// `status` — derived from the provider schema description.
extension type const MskClusterStatus._(TfArg<String> _)
    implements TfArg<String> {
  MskClusterStatus.variable(String name) : this._(TfArg.variable(name));
  MskClusterStatus.expression(String template)
    : this._(TfArg.expression(template));
  const MskClusterStatus.arg(TfArg<String> arg) : this._(arg);

  static const paused = MskClusterStatus._(TfArgLiteral('PAUSED'));
  static const active = MskClusterStatus._(TfArgLiteral('ACTIVE'));

  static const List<MskClusterStatus> values = [paused, active];
}

/// Factory wrapper for `aws_msk_cluster`.
final class AwsMskCluster extends Resource {
  static const String tfType = 'aws_msk_cluster';

  AwsMskCluster(
    super.localName, {
    required TfArg<String> clusterName,
    MskClusterEnhancedMonitoring? enhancedMonitoring,
    required TfArg<String> kafkaVersion,
    required TfArg<num> numberOfBrokerNodes,
    TfArg<String>? region,
    MskClusterStorageMode? storageMode,
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

  /// Reference to `cluster_name` attribute.
  TfRef<String> get clusterName =>
      TfRef.attribute<String>(this, 'cluster_name');

  /// Reference to `enhanced_monitoring` attribute.
  TfRef<String> get enhancedMonitoring =>
      TfRef.attribute<String>(this, 'enhanced_monitoring');

  /// Reference to `kafka_version` attribute.
  TfRef<String> get kafkaVersion =>
      TfRef.attribute<String>(this, 'kafka_version');

  /// Reference to `number_of_broker_nodes` attribute.
  TfRef<num> get numberOfBrokerNodes =>
      TfRef.attribute<num>(this, 'number_of_broker_nodes');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `storage_mode` attribute.
  TfRef<String> get storageMode =>
      TfRef.attribute<String>(this, 'storage_mode');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
