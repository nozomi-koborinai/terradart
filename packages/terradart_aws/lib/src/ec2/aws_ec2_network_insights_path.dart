// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_network_insights_path`.
const Set<String> _awsEc2NetworkInsightsPathSensitive = <String>{};

/// Ec2 Network Insights Path enum for `protocol`.
enum Ec2NetworkInsightsPathProtocol implements TerraformEnum {
  tcp('tcp'),
  udp('udp');

  const Ec2NetworkInsightsPathProtocol(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `filter_at_destination` block of
/// `aws_ec2_network_insights_path` (derived from provider schema).
@immutable
final class Ec2NetworkInsightsPathFilterAtDestination {
  const Ec2NetworkInsightsPathFilterAtDestination({
    this.destinationAddress,
    this.sourceAddress,
    this.destinationPortRange,
    this.sourcePortRange,
  });

  final TfArg<String>? destinationAddress;

  final TfArg<String>? sourceAddress;

  final Ec2NetworkInsightsPathDestinationPortRange? destinationPortRange;

  final Ec2NetworkInsightsPathSourcePortRange? sourcePortRange;

  Map<String, Object?> encode() => {
    'destination_address': ?destinationAddress?.toTfJson(),
    'source_address': ?sourceAddress?.toTfJson(),
    'destination_port_range': ?destinationPortRange?.encode(),
    'source_port_range': ?sourcePortRange?.encode(),
  };
}

/// Typed helper for the `filter_at_destination.destination_port_range` block of
/// `aws_ec2_network_insights_path` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Ec2NetworkInsightsPathDestinationPortRange {
  const Ec2NetworkInsightsPathDestinationPortRange({
    this.fromPort,
    this.toPort,
  });

  final TfArg<num>? fromPort;

  final TfArg<num>? toPort;

  Map<String, Object?> encode() => {
    'from_port': ?fromPort?.toTfJson(),
    'to_port': ?toPort?.toTfJson(),
  };
}

/// Typed helper for the `filter_at_destination.source_port_range` block of
/// `aws_ec2_network_insights_path` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Ec2NetworkInsightsPathSourcePortRange {
  const Ec2NetworkInsightsPathSourcePortRange({this.fromPort, this.toPort});

  final TfArg<num>? fromPort;

  final TfArg<num>? toPort;

  Map<String, Object?> encode() => {
    'from_port': ?fromPort?.toTfJson(),
    'to_port': ?toPort?.toTfJson(),
  };
}

/// Typed helper for the `filter_at_source` block of
/// `aws_ec2_network_insights_path` (derived from provider schema).
@immutable
final class Ec2NetworkInsightsPathFilterAtSource {
  const Ec2NetworkInsightsPathFilterAtSource({
    this.destinationAddress,
    this.sourceAddress,
    this.destinationPortRange,
    this.sourcePortRange,
  });

  final TfArg<String>? destinationAddress;

  final TfArg<String>? sourceAddress;

  final Ec2NetworkInsightsPathDestinationPortRange? destinationPortRange;

  final Ec2NetworkInsightsPathSourcePortRange? sourcePortRange;

  Map<String, Object?> encode() => {
    'destination_address': ?destinationAddress?.toTfJson(),
    'source_address': ?sourceAddress?.toTfJson(),
    'destination_port_range': ?destinationPortRange?.encode(),
    'source_port_range': ?sourcePortRange?.encode(),
  };
}

/// Factory wrapper for `aws_ec2_network_insights_path`.
final class AwsEc2NetworkInsightsPath extends Resource {
  static const String tfType = 'aws_ec2_network_insights_path';

  AwsEc2NetworkInsightsPath({
    required super.localName,
    TfArg<String>? destination,
    TfArg<String>? destinationIp,
    TfArg<num>? destinationPort,
    required TfArg<Ec2NetworkInsightsPathProtocol> protocol,
    TfArg<String>? region,
    required TfArg<String> source,
    TfArg<String>? sourceIp,
    TfArg<Map<String, String>>? tags,
    Ec2NetworkInsightsPathFilterAtDestination? filterAtDestination,
    Ec2NetworkInsightsPathFilterAtSource? filterAtSource,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'destination': ?destination,
           'destination_ip': ?destinationIp,
           'destination_port': ?destinationPort,
           'protocol': protocol,
           'region': ?region,
           'source': source,
           'source_ip': ?sourceIp,
           'tags': ?tags,
           if (filterAtDestination != null)
             'filter_at_destination': TfArg.literal(
               filterAtDestination.encode(),
             ),
           if (filterAtSource != null)
             'filter_at_source': TfArg.literal(filterAtSource.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2NetworkInsightsPathSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEc2NetworkInsightsPath>`.
  RefTo<AwsEc2NetworkInsightsPath> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `destination_arn` attribute.
  TfRef<String> get destinationArn =>
      TfRef.attribute<String>(this, 'destination_arn');

  /// Reference to `source_arn` attribute.
  TfRef<String> get sourceArn => TfRef.attribute<String>(this, 'source_arn');

  /// Reference to `destination` attribute.
  TfRef<String> get destinationRef =>
      TfRef.attribute<String>(this, 'destination');

  /// Reference to `destination_ip` attribute.
  TfRef<String> get destinationIpRef =>
      TfRef.attribute<String>(this, 'destination_ip');

  /// Reference to `destination_port` attribute.
  TfRef<num> get destinationPortRef =>
      TfRef.attribute<num>(this, 'destination_port');

  /// Reference to `protocol` attribute.
  TfRef<String> get protocolRef => TfRef.attribute<String>(this, 'protocol');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `source` attribute.
  TfRef<String> get sourceRef => TfRef.attribute<String>(this, 'source');

  /// Reference to `source_ip` attribute.
  TfRef<String> get sourceIpRef => TfRef.attribute<String>(this, 'source_ip');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
