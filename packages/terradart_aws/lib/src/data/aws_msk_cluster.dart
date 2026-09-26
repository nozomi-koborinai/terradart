// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_msk_cluster`.
const Set<String> _awsMskClusterSensitive = <String>{};

/// Factory wrapper for `aws_msk_cluster`.
final class DataAwsMskCluster extends Data {
  static const String tfType = 'aws_msk_cluster';

  DataAwsMskCluster({
    required super.localName,
    required TfArg<String> clusterName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_name': clusterName,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
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

  /// Reference to `bootstrap_brokers_sasl_scram` attribute.
  TfRef<String> get bootstrapBrokersSaslScram =>
      TfRef.attribute<String>(this, 'bootstrap_brokers_sasl_scram');

  /// Reference to `bootstrap_brokers_tls` attribute.
  TfRef<String> get bootstrapBrokersTls =>
      TfRef.attribute<String>(this, 'bootstrap_brokers_tls');

  /// Reference to `broker_node_group_info` attribute.
  TfRef<List<Map<String, Object?>>> get brokerNodeGroupInfo =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'broker_node_group_info',
      );

  /// Reference to `cluster_uuid` attribute.
  TfRef<String> get clusterUuid =>
      TfRef.attribute<String>(this, 'cluster_uuid');

  /// Reference to `customer_action_status` attribute.
  TfRef<String> get customerActionStatus =>
      TfRef.attribute<String>(this, 'customer_action_status');

  /// Reference to `kafka_version` attribute.
  TfRef<String> get kafkaVersion =>
      TfRef.attribute<String>(this, 'kafka_version');

  /// Reference to `number_of_broker_nodes` attribute.
  TfRef<num> get numberOfBrokerNodes =>
      TfRef.attribute<num>(this, 'number_of_broker_nodes');

  /// Reference to `zookeeper_connect_string` attribute.
  TfRef<String> get zookeeperConnectString =>
      TfRef.attribute<String>(this, 'zookeeper_connect_string');

  /// Reference to `zookeeper_connect_string_tls` attribute.
  TfRef<String> get zookeeperConnectStringTls =>
      TfRef.attribute<String>(this, 'zookeeper_connect_string_tls');
}
