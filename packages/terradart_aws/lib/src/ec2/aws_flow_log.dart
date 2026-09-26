// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_flow_log`.
const Set<String> _awsFlowLogSensitive = <String>{};

/// Typed helper for the `destination_options` block of
/// `aws_flow_log` (derived from provider schema).
@immutable
final class FlowLogDestinationOptions {
  const FlowLogDestinationOptions({
    this.fileFormat,
    this.hiveCompatiblePartitions,
    this.perHourPartition,
  });

  final TfArg<String>? fileFormat;

  final TfArg<bool>? hiveCompatiblePartitions;

  final TfArg<bool>? perHourPartition;

  Map<String, Object?> encode() => {
    if (fileFormat != null) 'file_format': fileFormat!.toTfJson(),
    if (hiveCompatiblePartitions != null)
      'hive_compatible_partitions': hiveCompatiblePartitions!.toTfJson(),
    if (perHourPartition != null)
      'per_hour_partition': perHourPartition!.toTfJson(),
  };
}

/// Typed helper for the `tag_field_specification` block of
/// `aws_flow_log` (derived from provider schema).
@immutable
final class FlowLogTagFieldSpecification {
  const FlowLogTagFieldSpecification({
    required this.resourceType,
    required this.tagKeys,
  });

  final TfArg<String> resourceType;

  final TfArg<List<Object?>> tagKeys;

  Map<String, Object?> encode() => {
    'resource_type': resourceType.toTfJson(),
    'tag_keys': tagKeys.toTfJson(),
  };
}

/// Factory wrapper for `aws_flow_log`.
final class AwsFlowLog extends Resource {
  static const String tfType = 'aws_flow_log';

  AwsFlowLog({
    required super.localName,
    TfArg<String>? deliverCrossAccountRole,
    TfArg<String>? eniId,
    TfArg<String>? iamRoleArn,
    TfArg<String>? logDestination,
    TfArg<String>? logDestinationType,
    TfArg<String>? logFormat,
    TfArg<num>? maxAggregationInterval,
    TfArg<String>? region,
    TfArg<String>? regionalNatGatewayId,
    TfArg<String>? subnetId,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? trafficType,
    TfArg<String>? transitGatewayAttachmentId,
    TfArg<String>? transitGatewayId,
    TfArg<String>? vpcId,
    FlowLogDestinationOptions? destinationOptions,
    List<FlowLogTagFieldSpecification>? tagFieldSpecification,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (deliverCrossAccountRole != null)
             'deliver_cross_account_role': deliverCrossAccountRole,
           if (eniId != null) 'eni_id': eniId,
           if (iamRoleArn != null) 'iam_role_arn': iamRoleArn,
           if (logDestination != null) 'log_destination': logDestination,
           if (logDestinationType != null)
             'log_destination_type': logDestinationType,
           if (logFormat != null) 'log_format': logFormat,
           if (maxAggregationInterval != null)
             'max_aggregation_interval': maxAggregationInterval,
           if (region != null) 'region': region,
           if (regionalNatGatewayId != null)
             'regional_nat_gateway_id': regionalNatGatewayId,
           if (subnetId != null) 'subnet_id': subnetId,
           if (tags != null) 'tags': tags,
           if (trafficType != null) 'traffic_type': trafficType,
           if (transitGatewayAttachmentId != null)
             'transit_gateway_attachment_id': transitGatewayAttachmentId,
           if (transitGatewayId != null) 'transit_gateway_id': transitGatewayId,
           if (vpcId != null) 'vpc_id': vpcId,
           if (destinationOptions != null)
             'destination_options': TfArg.literal(destinationOptions.encode()),
           if (tagFieldSpecification != null)
             'tag_field_specification': TfArg.literal([
               for (final e in tagFieldSpecification) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsFlowLogSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
