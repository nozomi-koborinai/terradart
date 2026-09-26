// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_mskconnect_connector`.
const Set<String> _awsMskconnectConnectorSensitive = <String>{};

/// Typed helper for the `capacity` block of
/// `aws_mskconnect_connector` (derived from provider schema).
@immutable
final class MskconnectConnectorCapacity {
  const MskconnectConnectorCapacity({
    this.autoscaling,
    this.provisionedCapacity,
  });

  final MskconnectConnectorCapacityAutoscaling? autoscaling;

  final MskconnectConnectorCapacityProvisionedCapacity? provisionedCapacity;

  Map<String, Object?> encode() => {
    if (autoscaling != null) 'autoscaling': autoscaling!.encode(),
    if (provisionedCapacity != null)
      'provisioned_capacity': provisionedCapacity!.encode(),
  };
}

/// Typed helper for the `capacity.autoscaling` block of
/// `aws_mskconnect_connector` (derived from provider schema).
@immutable
final class MskconnectConnectorCapacityAutoscaling {
  const MskconnectConnectorCapacityAutoscaling({
    required this.maxWorkerCount,
    this.mcuCount,
    required this.minWorkerCount,
    this.scaleInPolicy,
    this.scaleOutPolicy,
  });

  final TfArg<num> maxWorkerCount;

  final TfArg<num>? mcuCount;

  final TfArg<num> minWorkerCount;

  final MskconnectConnectorCapacityAutoscalingScaleInPolicy? scaleInPolicy;

  final MskconnectConnectorCapacityAutoscalingScaleOutPolicy? scaleOutPolicy;

  Map<String, Object?> encode() => {
    'max_worker_count': maxWorkerCount.toTfJson(),
    if (mcuCount != null) 'mcu_count': mcuCount!.toTfJson(),
    'min_worker_count': minWorkerCount.toTfJson(),
    if (scaleInPolicy != null) 'scale_in_policy': scaleInPolicy!.encode(),
    if (scaleOutPolicy != null) 'scale_out_policy': scaleOutPolicy!.encode(),
  };
}

/// Typed helper for the `capacity.autoscaling.scale_in_policy` block of
/// `aws_mskconnect_connector` (derived from provider schema).
@immutable
final class MskconnectConnectorCapacityAutoscalingScaleInPolicy {
  const MskconnectConnectorCapacityAutoscalingScaleInPolicy({
    this.cpuUtilizationPercentage,
  });

  final TfArg<num>? cpuUtilizationPercentage;

  Map<String, Object?> encode() => {
    if (cpuUtilizationPercentage != null)
      'cpu_utilization_percentage': cpuUtilizationPercentage!.toTfJson(),
  };
}

/// Typed helper for the `capacity.autoscaling.scale_out_policy` block of
/// `aws_mskconnect_connector` (derived from provider schema).
@immutable
final class MskconnectConnectorCapacityAutoscalingScaleOutPolicy {
  const MskconnectConnectorCapacityAutoscalingScaleOutPolicy({
    this.cpuUtilizationPercentage,
  });

  final TfArg<num>? cpuUtilizationPercentage;

  Map<String, Object?> encode() => {
    if (cpuUtilizationPercentage != null)
      'cpu_utilization_percentage': cpuUtilizationPercentage!.toTfJson(),
  };
}

/// Typed helper for the `capacity.provisioned_capacity` block of
/// `aws_mskconnect_connector` (derived from provider schema).
@immutable
final class MskconnectConnectorCapacityProvisionedCapacity {
  const MskconnectConnectorCapacityProvisionedCapacity({
    this.mcuCount,
    required this.workerCount,
  });

  final TfArg<num>? mcuCount;

  final TfArg<num> workerCount;

  Map<String, Object?> encode() => {
    if (mcuCount != null) 'mcu_count': mcuCount!.toTfJson(),
    'worker_count': workerCount.toTfJson(),
  };
}

/// Typed helper for the `kafka_cluster` block of
/// `aws_mskconnect_connector` (derived from provider schema).
@immutable
final class MskconnectConnectorKafkaCluster {
  const MskconnectConnectorKafkaCluster({required this.apacheKafkaCluster});

  final MskconnectConnectorKafkaClusterApacheKafkaCluster apacheKafkaCluster;

  Map<String, Object?> encode() => {
    'apache_kafka_cluster': apacheKafkaCluster.encode(),
  };
}

/// Typed helper for the `kafka_cluster.apache_kafka_cluster` block of
/// `aws_mskconnect_connector` (derived from provider schema).
@immutable
final class MskconnectConnectorKafkaClusterApacheKafkaCluster {
  const MskconnectConnectorKafkaClusterApacheKafkaCluster({
    required this.bootstrapServers,
    required this.vpc,
  });

  final TfArg<String> bootstrapServers;

  final MskconnectConnectorKafkaClusterApacheKafkaClusterVpc vpc;

  Map<String, Object?> encode() => {
    'bootstrap_servers': bootstrapServers.toTfJson(),
    'vpc': vpc.encode(),
  };
}

/// Typed helper for the `kafka_cluster.apache_kafka_cluster.vpc` block of
/// `aws_mskconnect_connector` (derived from provider schema).
@immutable
final class MskconnectConnectorKafkaClusterApacheKafkaClusterVpc {
  const MskconnectConnectorKafkaClusterApacheKafkaClusterVpc({
    required this.securityGroups,
    required this.subnets,
  });

  final TfArg<List<Object?>> securityGroups;

  final TfArg<List<Object?>> subnets;

  Map<String, Object?> encode() => {
    'security_groups': securityGroups.toTfJson(),
    'subnets': subnets.toTfJson(),
  };
}

/// Typed helper for the `kafka_cluster_client_authentication` block of
/// `aws_mskconnect_connector` (derived from provider schema).
@immutable
final class MskconnectConnectorKafkaClusterClientAuthentication {
  const MskconnectConnectorKafkaClusterClientAuthentication({
    this.authenticationType,
  });

  final TfArg<String>? authenticationType;

  Map<String, Object?> encode() => {
    if (authenticationType != null)
      'authentication_type': authenticationType!.toTfJson(),
  };
}

/// Typed helper for the `kafka_cluster_encryption_in_transit` block of
/// `aws_mskconnect_connector` (derived from provider schema).
@immutable
final class MskconnectConnectorKafkaClusterEncryptionInTransit {
  const MskconnectConnectorKafkaClusterEncryptionInTransit({
    this.encryptionType,
  });

  final TfArg<String>? encryptionType;

  Map<String, Object?> encode() => {
    if (encryptionType != null) 'encryption_type': encryptionType!.toTfJson(),
  };
}

/// Typed helper for the `log_delivery` block of
/// `aws_mskconnect_connector` (derived from provider schema).
@immutable
final class MskconnectConnectorLogDelivery {
  const MskconnectConnectorLogDelivery({required this.workerLogDelivery});

  final MskconnectConnectorLogDeliveryWorkerLogDelivery workerLogDelivery;

  Map<String, Object?> encode() => {
    'worker_log_delivery': workerLogDelivery.encode(),
  };
}

/// Typed helper for the `log_delivery.worker_log_delivery` block of
/// `aws_mskconnect_connector` (derived from provider schema).
@immutable
final class MskconnectConnectorLogDeliveryWorkerLogDelivery {
  const MskconnectConnectorLogDeliveryWorkerLogDelivery({
    this.cloudwatchLogs,
    this.firehose,
    this.s3,
  });

  final MskconnectConnectorLogDeliveryWorkerLogDeliveryCloudwatchLogs?
  cloudwatchLogs;

  final MskconnectConnectorLogDeliveryWorkerLogDeliveryFirehose? firehose;

  final MskconnectConnectorLogDeliveryWorkerLogDeliveryS3? s3;

  Map<String, Object?> encode() => {
    if (cloudwatchLogs != null) 'cloudwatch_logs': cloudwatchLogs!.encode(),
    if (firehose != null) 'firehose': firehose!.encode(),
    if (s3 != null) 's3': s3!.encode(),
  };
}

/// Typed helper for the `log_delivery.worker_log_delivery.cloudwatch_logs` block of
/// `aws_mskconnect_connector` (derived from provider schema).
@immutable
final class MskconnectConnectorLogDeliveryWorkerLogDeliveryCloudwatchLogs {
  const MskconnectConnectorLogDeliveryWorkerLogDeliveryCloudwatchLogs({
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

/// Typed helper for the `log_delivery.worker_log_delivery.firehose` block of
/// `aws_mskconnect_connector` (derived from provider schema).
@immutable
final class MskconnectConnectorLogDeliveryWorkerLogDeliveryFirehose {
  const MskconnectConnectorLogDeliveryWorkerLogDeliveryFirehose({
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

/// Typed helper for the `log_delivery.worker_log_delivery.s3` block of
/// `aws_mskconnect_connector` (derived from provider schema).
@immutable
final class MskconnectConnectorLogDeliveryWorkerLogDeliveryS3 {
  const MskconnectConnectorLogDeliveryWorkerLogDeliveryS3({
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

/// Typed helper for the `plugin` block of
/// `aws_mskconnect_connector` (derived from provider schema).
@immutable
final class MskconnectConnectorPlugin {
  const MskconnectConnectorPlugin({required this.customPlugin});

  final MskconnectConnectorPluginCustomPlugin customPlugin;

  Map<String, Object?> encode() => {'custom_plugin': customPlugin.encode()};
}

/// Typed helper for the `plugin.custom_plugin` block of
/// `aws_mskconnect_connector` (derived from provider schema).
@immutable
final class MskconnectConnectorPluginCustomPlugin {
  const MskconnectConnectorPluginCustomPlugin({
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

/// Typed helper for the `worker_configuration` block of
/// `aws_mskconnect_connector` (derived from provider schema).
@immutable
final class MskconnectConnectorWorkerConfiguration {
  const MskconnectConnectorWorkerConfiguration({
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

/// Factory wrapper for `aws_mskconnect_connector`.
final class AwsMskconnectConnector extends Resource {
  static const String tfType = 'aws_mskconnect_connector';

  AwsMskconnectConnector({
    required super.localName,
    required TfArg<Map<String, String>> connectorConfiguration,
    TfArg<String>? description,
    required TfArg<String> kafkaconnectVersion,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> serviceExecutionRoleArn,
    TfArg<Map<String, String>>? tags,
    required MskconnectConnectorCapacity capacity,
    required MskconnectConnectorKafkaCluster kafkaCluster,
    required MskconnectConnectorKafkaClusterClientAuthentication
    kafkaClusterClientAuthentication,
    required MskconnectConnectorKafkaClusterEncryptionInTransit
    kafkaClusterEncryptionInTransit,
    MskconnectConnectorLogDelivery? logDelivery,
    required List<MskconnectConnectorPlugin> plugin,
    MskconnectConnectorWorkerConfiguration? workerConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'connector_configuration': connectorConfiguration,
           if (description != null) 'description': description,
           'kafkaconnect_version': kafkaconnectVersion,
           'name': name,
           if (region != null) 'region': region,
           'service_execution_role_arn': serviceExecutionRoleArn,
           if (tags != null) 'tags': tags,
           'capacity': TfArg.literal(capacity.encode()),
           'kafka_cluster': TfArg.literal(kafkaCluster.encode()),
           'kafka_cluster_client_authentication': TfArg.literal(
             kafkaClusterClientAuthentication.encode(),
           ),
           'kafka_cluster_encryption_in_transit': TfArg.literal(
             kafkaClusterEncryptionInTransit.encode(),
           ),
           if (logDelivery != null)
             'log_delivery': TfArg.literal(logDelivery.encode()),
           'plugin': TfArg.literal([for (final e in plugin) e.encode()]),
           if (workerConfiguration != null)
             'worker_configuration': TfArg.literal(
               workerConfiguration.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMskconnectConnectorSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
