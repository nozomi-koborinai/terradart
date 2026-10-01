// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../cloudwatch/aws_cloudwatch_log_group.dart' show AwsCloudwatchLogGroup;
import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_mskconnect_connector`.
const Set<String> _awsMskconnectConnectorSensitive = <String>{};

/// Exactly one of `autoscaling`, `provisioned_capacity` on the `capacity` block of `aws_mskconnect_connector`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.autoscaling(...)`.
sealed class MskconnectConnectorCapacity {
  const MskconnectConnectorCapacity();

  /// Sets `autoscaling`.
  const factory MskconnectConnectorCapacity.autoscaling(
    MskconnectConnectorAutoscaling autoscaling,
  ) = MskconnectConnectorCapacityAutoscaling;

  /// Sets `provisioned_capacity`.
  const factory MskconnectConnectorCapacity.provisionedCapacity(
    MskconnectConnectorProvisionedCapacity provisionedCapacity,
  ) = MskconnectConnectorProvisionedCapacityChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [MskconnectConnectorCapacity.autoscaling] choice: sets `autoscaling`.
final class MskconnectConnectorCapacityAutoscaling
    extends MskconnectConnectorCapacity {
  const MskconnectConnectorCapacityAutoscaling(this.autoscaling);

  final MskconnectConnectorAutoscaling autoscaling;

  @override
  String get blockKey => 'autoscaling';

  @override
  Map<String, Object?> encode() => {'autoscaling': autoscaling.encode()};
}

/// The [MskconnectConnectorCapacity.provisionedCapacity] choice: sets `provisioned_capacity`.
final class MskconnectConnectorProvisionedCapacityChoice
    extends MskconnectConnectorCapacity {
  const MskconnectConnectorProvisionedCapacityChoice(this.provisionedCapacity);

  final MskconnectConnectorProvisionedCapacity provisionedCapacity;

  @override
  String get blockKey => 'provisioned_capacity';

  @override
  Map<String, Object?> encode() => {
    'provisioned_capacity': provisionedCapacity.encode(),
  };
}

/// Typed helper for the `capacity.autoscaling` block of
/// `aws_mskconnect_connector` (derived from provider schema).
@immutable
final class MskconnectConnectorAutoscaling {
  const MskconnectConnectorAutoscaling({
    required this.maxWorkerCount,
    this.mcuCount,
    required this.minWorkerCount,
    this.scaleInPolicy,
    this.scaleOutPolicy,
  });

  final TfArg<num> maxWorkerCount;

  final TfArg<num>? mcuCount;

  final TfArg<num> minWorkerCount;

  final MskconnectConnectorScaleInPolicy? scaleInPolicy;

  final MskconnectConnectorScaleOutPolicy? scaleOutPolicy;

  Map<String, Object?> encode() => {
    'max_worker_count': maxWorkerCount.toTfJson(),
    'mcu_count': ?mcuCount?.toTfJson(),
    'min_worker_count': minWorkerCount.toTfJson(),
    'scale_in_policy': ?scaleInPolicy?.encode(),
    'scale_out_policy': ?scaleOutPolicy?.encode(),
  };
}

/// Typed helper for the `capacity.autoscaling.scale_in_policy` block of
/// `aws_mskconnect_connector` (derived from provider schema).
@immutable
final class MskconnectConnectorScaleInPolicy {
  const MskconnectConnectorScaleInPolicy({this.cpuUtilizationPercentage});

  final TfArg<num>? cpuUtilizationPercentage;

  Map<String, Object?> encode() => {
    'cpu_utilization_percentage': ?cpuUtilizationPercentage?.toTfJson(),
  };
}

/// Typed helper for the `capacity.autoscaling.scale_out_policy` block of
/// `aws_mskconnect_connector` (derived from provider schema).
@immutable
final class MskconnectConnectorScaleOutPolicy {
  const MskconnectConnectorScaleOutPolicy({this.cpuUtilizationPercentage});

  final TfArg<num>? cpuUtilizationPercentage;

  Map<String, Object?> encode() => {
    'cpu_utilization_percentage': ?cpuUtilizationPercentage?.toTfJson(),
  };
}

/// Typed helper for the `capacity.provisioned_capacity` block of
/// `aws_mskconnect_connector` (derived from provider schema).
@immutable
final class MskconnectConnectorProvisionedCapacity {
  const MskconnectConnectorProvisionedCapacity({
    this.mcuCount,
    required this.workerCount,
  });

  final TfArg<num>? mcuCount;

  final TfArg<num> workerCount;

  Map<String, Object?> encode() => {
    'mcu_count': ?mcuCount?.toTfJson(),
    'worker_count': workerCount.toTfJson(),
  };
}

/// Typed helper for the `kafka_cluster` block of
/// `aws_mskconnect_connector` (derived from provider schema).
@immutable
final class MskconnectConnectorKafkaCluster {
  const MskconnectConnectorKafkaCluster({required this.apacheKafkaCluster});

  final MskconnectConnectorApacheKafkaCluster apacheKafkaCluster;

  Map<String, Object?> encode() => {
    'apache_kafka_cluster': apacheKafkaCluster.encode(),
  };
}

/// Typed helper for the `kafka_cluster.apache_kafka_cluster` block of
/// `aws_mskconnect_connector` (derived from provider schema).
@immutable
final class MskconnectConnectorApacheKafkaCluster {
  const MskconnectConnectorApacheKafkaCluster({
    required this.bootstrapServers,
    required this.vpc,
  });

  final TfArg<String> bootstrapServers;

  final MskconnectConnectorVpc vpc;

  Map<String, Object?> encode() => {
    'bootstrap_servers': bootstrapServers.toTfJson(),
    'vpc': vpc.encode(),
  };
}

/// Typed helper for the `kafka_cluster.apache_kafka_cluster.vpc` block of
/// `aws_mskconnect_connector` (derived from provider schema).
@immutable
final class MskconnectConnectorVpc {
  const MskconnectConnectorVpc({
    required this.securityGroups,
    required this.subnets,
  });

  final TfArg<List<RefTo<AwsSecurityGroup>>> securityGroups;

  final TfArg<List<RefTo<AwsSubnet>>> subnets;

  Map<String, Object?> encode() => {
    'security_groups': securityGroups.encodeAs('id').toTfJson(),
    'subnets': subnets.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `kafka_cluster_client_authentication` block of
/// `aws_mskconnect_connector` (derived from provider schema).
@immutable
final class MskconnectConnectorKafkaClusterClientAuthentication {
  const MskconnectConnectorKafkaClusterClientAuthentication({
    this.authenticationType,
  });

  final TfArg<MskconnectConnectorAuthenticationType>? authenticationType;

  Map<String, Object?> encode() => {
    'authentication_type': ?authenticationType?.toTfJson(),
  };
}

/// `authentication_type` — derived from the provider schema description.
enum MskconnectConnectorAuthenticationType implements TerraformEnum {
  none('NONE'),
  iam('IAM');

  const MskconnectConnectorAuthenticationType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `kafka_cluster_encryption_in_transit` block of
/// `aws_mskconnect_connector` (derived from provider schema).
@immutable
final class MskconnectConnectorKafkaClusterEncryptionInTransit {
  const MskconnectConnectorKafkaClusterEncryptionInTransit({
    this.encryptionType,
  });

  final TfArg<MskconnectConnectorEncryptionType>? encryptionType;

  Map<String, Object?> encode() => {
    'encryption_type': ?encryptionType?.toTfJson(),
  };
}

/// `encryption_type` — derived from the provider schema description.
enum MskconnectConnectorEncryptionType implements TerraformEnum {
  plaintext('PLAINTEXT'),
  tls('TLS');

  const MskconnectConnectorEncryptionType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `log_delivery` block of
/// `aws_mskconnect_connector` (derived from provider schema).
@immutable
final class MskconnectConnectorLogDelivery {
  const MskconnectConnectorLogDelivery({required this.workerLogDelivery});

  final MskconnectConnectorWorkerLogDelivery workerLogDelivery;

  Map<String, Object?> encode() => {
    'worker_log_delivery': workerLogDelivery.encode(),
  };
}

/// Typed helper for the `log_delivery.worker_log_delivery` block of
/// `aws_mskconnect_connector` (derived from provider schema).
@immutable
final class MskconnectConnectorWorkerLogDelivery {
  const MskconnectConnectorWorkerLogDelivery({
    this.cloudwatchLogs,
    this.firehose,
    this.s3,
  });

  final MskconnectConnectorCloudwatchLogs? cloudwatchLogs;

  final MskconnectConnectorFirehose? firehose;

  final MskconnectConnectorS3? s3;

  Map<String, Object?> encode() => {
    'cloudwatch_logs': ?cloudwatchLogs?.encode(),
    'firehose': ?firehose?.encode(),
    's3': ?s3?.encode(),
  };
}

/// Typed helper for the `log_delivery.worker_log_delivery.cloudwatch_logs` block of
/// `aws_mskconnect_connector` (derived from provider schema).
@immutable
final class MskconnectConnectorCloudwatchLogs {
  const MskconnectConnectorCloudwatchLogs({
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

/// Typed helper for the `log_delivery.worker_log_delivery.firehose` block of
/// `aws_mskconnect_connector` (derived from provider schema).
@immutable
final class MskconnectConnectorFirehose {
  const MskconnectConnectorFirehose({
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

/// Typed helper for the `log_delivery.worker_log_delivery.s3` block of
/// `aws_mskconnect_connector` (derived from provider schema).
@immutable
final class MskconnectConnectorS3 {
  const MskconnectConnectorS3({
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

/// Typed helper for the `plugin` block of
/// `aws_mskconnect_connector` (derived from provider schema).
@immutable
final class MskconnectConnectorPlugin {
  const MskconnectConnectorPlugin({required this.customPlugin});

  final MskconnectConnectorCustomPlugin customPlugin;

  Map<String, Object?> encode() => {'custom_plugin': customPlugin.encode()};
}

/// Typed helper for the `plugin.custom_plugin` block of
/// `aws_mskconnect_connector` (derived from provider schema).
@immutable
final class MskconnectConnectorCustomPlugin {
  const MskconnectConnectorCustomPlugin({
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
           'description': ?description,
           'kafkaconnect_version': kafkaconnectVersion,
           'name': name,
           'region': ?region,
           'service_execution_role_arn': serviceExecutionRoleArn,
           'tags': ?tags,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsMskconnectConnector>`.
  RefTo<AwsMskconnectConnector> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');

  /// Reference to `connector_configuration` attribute.
  TfRef<Map<String, String>> get connectorConfiguration =>
      TfRef.attribute<Map<String, String>>(this, 'connector_configuration');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `kafkaconnect_version` attribute.
  TfRef<String> get kafkaconnectVersion =>
      TfRef.attribute<String>(this, 'kafkaconnect_version');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `service_execution_role_arn` attribute.
  TfRef<String> get serviceExecutionRoleArn =>
      TfRef.attribute<String>(this, 'service_execution_role_arn');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
