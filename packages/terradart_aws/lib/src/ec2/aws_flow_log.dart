// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../ec2/aws_vpc.dart' show AwsVpc;
import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_flow_log`.
const Set<String> _awsFlowLogSensitive = <String>{};

/// Flow Log Destination enum for `log_destination_type`.
enum FlowLogDestinationType implements TerraformEnum {
  cloudWatchLogs('cloud-watch-logs'),
  s3('s3'),
  kinesisDataFirehose('kinesis-data-firehose');

  const FlowLogDestinationType(this.terraformValue);
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
  const factory FlowLogSource.subnetId(RefTo<AwsSubnet> subnetId) =
      FlowLogSourceSubnetId;

  /// Sets `transit_gateway_attachment_id`.
  const factory FlowLogSource.transitGatewayAttachmentId(
    TfArg<String> transitGatewayAttachmentId,
  ) = FlowLogSourceTransitGatewayAttachmentId;

  /// Sets `transit_gateway_id`.
  const factory FlowLogSource.transitGatewayId(TfArg<String> transitGatewayId) =
      FlowLogSourceTransitGatewayId;

  /// Sets `vpc_id`.
  const factory FlowLogSource.vpcId(RefTo<AwsVpc> vpcId) = FlowLogSourceVpcId;

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

  final RefTo<AwsSubnet> subnetId;

  @override
  String get blockKey => 'subnet_id';

  @override
  Map<String, Object?> encode() => {
    'subnet_id': subnetId.encodeAs('id').toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'subnet_id': subnetId.encodeAs('id'),
  };
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

  final RefTo<AwsVpc> vpcId;

  @override
  String get blockKey => 'vpc_id';

  @override
  Map<String, Object?> encode() => {'vpc_id': vpcId.encodeAs('id').toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'vpc_id': vpcId.encodeAs('id')};
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

  final TfArg<FlowLogFileFormat>? fileFormat;

  final TfArg<bool>? hiveCompatiblePartitions;

  final TfArg<bool>? perHourPartition;

  Map<String, Object?> encode() => {
    'file_format': ?fileFormat?.toTfJson(),
    'hive_compatible_partitions': ?hiveCompatiblePartitions?.toTfJson(),
    'per_hour_partition': ?perHourPartition?.toTfJson(),
  };
}

/// `file_format` — derived from the provider schema description.
enum FlowLogFileFormat implements TerraformEnum {
  plainText('plain-text'),
  parquet('parquet');

  const FlowLogFileFormat(this.terraformValue);
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

  final TfArg<FlowLogResourceType> resourceType;

  final TfArg<List<String>> tagKeys;

  Map<String, Object?> encode() => {
    'resource_type': resourceType.toTfJson(),
    'tag_keys': tagKeys.toTfJson(),
  };
}

/// `resource_type` — derived from the provider schema description.
enum FlowLogResourceType implements TerraformEnum {
  networkInterface('network-interface'),
  instance('instance'),
  autoScalingGroup('auto-scaling-group');

  const FlowLogResourceType(this.terraformValue);
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
    TfArg<FlowLogDestinationType>? logDestinationType,
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
           'deliver_cross_account_role': ?deliverCrossAccountRole,
           ...source.argMap,
           'iam_role_arn': ?iamRoleArn?.encodeAs('arn'),
           'log_destination': ?logDestination,
           'log_destination_type': ?logDestinationType,
           'log_format': ?logFormat,
           'max_aggregation_interval': ?maxAggregationInterval,
           'region': ?region,
           'tags': ?tags,
           'traffic_type': ?trafficType,
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

  /// Reference to `deliver_cross_account_role` attribute.
  TfRef<String> get deliverCrossAccountRole =>
      TfRef.attribute<String>(this, 'deliver_cross_account_role');

  /// Reference to `eni_id` attribute.
  TfRef<String> get eniId => TfRef.attribute<String>(this, 'eni_id');

  /// Reference to `iam_role_arn` attribute.
  TfRef<String> get iamRoleArn => TfRef.attribute<String>(this, 'iam_role_arn');

  /// Reference to `log_destination` attribute.
  TfRef<String> get logDestination =>
      TfRef.attribute<String>(this, 'log_destination');

  /// Reference to `log_destination_type` attribute.
  TfRef<String> get logDestinationType =>
      TfRef.attribute<String>(this, 'log_destination_type');

  /// Reference to `log_format` attribute.
  TfRef<String> get logFormat => TfRef.attribute<String>(this, 'log_format');

  /// Reference to `max_aggregation_interval` attribute.
  TfRef<num> get maxAggregationInterval =>
      TfRef.attribute<num>(this, 'max_aggregation_interval');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `regional_nat_gateway_id` attribute.
  TfRef<String> get regionalNatGatewayId =>
      TfRef.attribute<String>(this, 'regional_nat_gateway_id');

  /// Reference to `subnet_id` attribute.
  TfRef<String> get subnetId => TfRef.attribute<String>(this, 'subnet_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `traffic_type` attribute.
  TfRef<String> get trafficType =>
      TfRef.attribute<String>(this, 'traffic_type');

  /// Reference to `transit_gateway_attachment_id` attribute.
  TfRef<String> get transitGatewayAttachmentId =>
      TfRef.attribute<String>(this, 'transit_gateway_attachment_id');

  /// Reference to `transit_gateway_id` attribute.
  TfRef<String> get transitGatewayId =>
      TfRef.attribute<String>(this, 'transit_gateway_id');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');
}
