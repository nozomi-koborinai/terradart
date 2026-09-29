// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_flow_log`.
const Set<String> _awsFlowLogSensitive = <String>{};

/// Flow Log Log Destination enum for `log_destination_type`.
enum FlowLogLogDestinationType implements TerraformEnum {
  cloudWatchLogs('cloud-watch-logs'),
  s3('s3'),
  kinesisDataFirehose('kinesis-data-firehose');

  const FlowLogLogDestinationType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Flow Log Traffic enum for `traffic_type`.
enum FlowLogTrafficType implements TerraformEnum {
  accept('ACCEPT'),
  reject('REJECT'),
  all('ALL');

  const FlowLogTrafficType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Exactly one of `eni_id`, `regional_nat_gateway_id`, `subnet_id`, `transit_gateway_attachment_id`, `transit_gateway_id`, `vpc_id` on `aws_flow_log`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.eniId(...)`.
sealed class FlowLogSource {
  const FlowLogSource();

  /// Sets `eni_id`.
  const factory FlowLogSource.eniId(TfArg<String> eniId) = FlowLogSourceEniId;

  /// Sets `regional_nat_gateway_id`.
  const factory FlowLogSource.regionalNatGatewayId(
    TfArg<String> regionalNatGatewayId,
  ) = FlowLogSourceRegionalNatGatewayId;

  /// Sets `subnet_id`.
  const factory FlowLogSource.subnetId(TfArg<String> subnetId) =
      FlowLogSourceSubnetId;

  /// Sets `transit_gateway_attachment_id`.
  const factory FlowLogSource.transitGatewayAttachmentId(
    TfArg<String> transitGatewayAttachmentId,
  ) = FlowLogSourceTransitGatewayAttachmentId;

  /// Sets `transit_gateway_id`.
  const factory FlowLogSource.transitGatewayId(TfArg<String> transitGatewayId) =
      FlowLogSourceTransitGatewayId;

  /// Sets `vpc_id`.
  const factory FlowLogSource.vpcId(TfArg<String> vpcId) = FlowLogSourceVpcId;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [FlowLogSource.eniId] choice: sets `eni_id`.
final class FlowLogSourceEniId extends FlowLogSource {
  const FlowLogSourceEniId(this.eniId);

  final TfArg<String> eniId;

  @override
  String get blockKey => 'eni_id';

  @override
  Map<String, Object?> encode() => {'eni_id': eniId.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'eni_id': eniId};
}

/// The [FlowLogSource.regionalNatGatewayId] choice: sets `regional_nat_gateway_id`.
final class FlowLogSourceRegionalNatGatewayId extends FlowLogSource {
  const FlowLogSourceRegionalNatGatewayId(this.regionalNatGatewayId);

  final TfArg<String> regionalNatGatewayId;

  @override
  String get blockKey => 'regional_nat_gateway_id';

  @override
  Map<String, Object?> encode() => {
    'regional_nat_gateway_id': regionalNatGatewayId.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'regional_nat_gateway_id': regionalNatGatewayId,
  };
}

/// The [FlowLogSource.subnetId] choice: sets `subnet_id`.
final class FlowLogSourceSubnetId extends FlowLogSource {
  const FlowLogSourceSubnetId(this.subnetId);

  final TfArg<String> subnetId;

  @override
  String get blockKey => 'subnet_id';

  @override
  Map<String, Object?> encode() => {'subnet_id': subnetId.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'subnet_id': subnetId};
}

/// The [FlowLogSource.transitGatewayAttachmentId] choice: sets `transit_gateway_attachment_id`.
final class FlowLogSourceTransitGatewayAttachmentId extends FlowLogSource {
  const FlowLogSourceTransitGatewayAttachmentId(
    this.transitGatewayAttachmentId,
  );

  final TfArg<String> transitGatewayAttachmentId;

  @override
  String get blockKey => 'transit_gateway_attachment_id';

  @override
  Map<String, Object?> encode() => {
    'transit_gateway_attachment_id': transitGatewayAttachmentId.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'transit_gateway_attachment_id': transitGatewayAttachmentId,
  };
}

/// The [FlowLogSource.transitGatewayId] choice: sets `transit_gateway_id`.
final class FlowLogSourceTransitGatewayId extends FlowLogSource {
  const FlowLogSourceTransitGatewayId(this.transitGatewayId);

  final TfArg<String> transitGatewayId;

  @override
  String get blockKey => 'transit_gateway_id';

  @override
  Map<String, Object?> encode() => {
    'transit_gateway_id': transitGatewayId.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'transit_gateway_id': transitGatewayId,
  };
}

/// The [FlowLogSource.vpcId] choice: sets `vpc_id`.
final class FlowLogSourceVpcId extends FlowLogSource {
  const FlowLogSourceVpcId(this.vpcId);

  final TfArg<String> vpcId;

  @override
  String get blockKey => 'vpc_id';

  @override
  Map<String, Object?> encode() => {'vpc_id': vpcId.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'vpc_id': vpcId};
}

/// Typed helper for the `destination_options` block of
/// `aws_flow_log` (derived from provider schema).
@immutable
final class FlowLogDestinationOptions {
  const FlowLogDestinationOptions({
    this.fileFormat,
    this.hiveCompatiblePartitions,
    this.perHourPartition,
  });

  final TfArg<FlowLogDestinationOptionsFileFormat>? fileFormat;

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

/// `file_format` — derived from the provider schema description.
enum FlowLogDestinationOptionsFileFormat implements TerraformEnum {
  plainText('plain-text'),
  parquet('parquet');

  const FlowLogDestinationOptionsFileFormat(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `tag_field_specification` block of
/// `aws_flow_log` (derived from provider schema).
@immutable
final class FlowLogTagFieldSpecification {
  const FlowLogTagFieldSpecification({
    required this.resourceType,
    required this.tagKeys,
  });

  final TfArg<FlowLogTagFieldSpecificationResourceType> resourceType;

  final TfArg<List<Object?>> tagKeys;

  Map<String, Object?> encode() => {
    'resource_type': resourceType.toTfJson(),
    'tag_keys': tagKeys.toTfJson(),
  };
}

/// `resource_type` — derived from the provider schema description.
enum FlowLogTagFieldSpecificationResourceType implements TerraformEnum {
  networkInterface('network-interface'),
  instance('instance'),
  autoScalingGroup('auto-scaling-group');

  const FlowLogTagFieldSpecificationResourceType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_flow_log`.
final class AwsFlowLog extends Resource {
  static const String tfType = 'aws_flow_log';

  AwsFlowLog({
    required super.localName,
    TfArg<String>? deliverCrossAccountRole,
    required FlowLogSource source,
    RefTo<AwsIamRole>? iamRoleArn,
    TfArg<String>? logDestination,
    TfArg<FlowLogLogDestinationType>? logDestinationType,
    TfArg<String>? logFormat,
    TfArg<num>? maxAggregationInterval,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<FlowLogTrafficType>? trafficType,
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
           ...source.argMap,
           if (iamRoleArn != null) 'iam_role_arn': iamRoleArn.encodeAs('arn'),
           if (logDestination != null) 'log_destination': logDestination,
           if (logDestinationType != null)
             'log_destination_type': logDestinationType,
           if (logFormat != null) 'log_format': logFormat,
           if (maxAggregationInterval != null)
             'max_aggregation_interval': maxAggregationInterval,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (trafficType != null) 'traffic_type': trafficType,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsFlowLog>`.
  RefTo<AwsFlowLog> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
