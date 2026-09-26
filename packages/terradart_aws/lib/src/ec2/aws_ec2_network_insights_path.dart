// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_network_insights_path`.
const Set<String> _awsEc2NetworkInsightsPathSensitive = <String>{};

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

  final Ec2NetworkInsightsPathFilterAtDestinationDestinationPortRange?
  destinationPortRange;

  final Ec2NetworkInsightsPathFilterAtDestinationSourcePortRange?
  sourcePortRange;

  Map<String, Object?> encode() => {
    if (destinationAddress != null)
      'destination_address': destinationAddress!.toTfJson(),
    if (sourceAddress != null) 'source_address': sourceAddress!.toTfJson(),
    if (destinationPortRange != null)
      'destination_port_range': destinationPortRange!.encode(),
    if (sourcePortRange != null) 'source_port_range': sourcePortRange!.encode(),
  };
}

/// Typed helper for the `filter_at_destination.destination_port_range` block of
/// `aws_ec2_network_insights_path` (derived from provider schema).
@immutable
final class Ec2NetworkInsightsPathFilterAtDestinationDestinationPortRange {
  const Ec2NetworkInsightsPathFilterAtDestinationDestinationPortRange({
    this.fromPort,
    this.toPort,
  });

  final TfArg<num>? fromPort;

  final TfArg<num>? toPort;

  Map<String, Object?> encode() => {
    if (fromPort != null) 'from_port': fromPort!.toTfJson(),
    if (toPort != null) 'to_port': toPort!.toTfJson(),
  };
}

/// Typed helper for the `filter_at_destination.source_port_range` block of
/// `aws_ec2_network_insights_path` (derived from provider schema).
@immutable
final class Ec2NetworkInsightsPathFilterAtDestinationSourcePortRange {
  const Ec2NetworkInsightsPathFilterAtDestinationSourcePortRange({
    this.fromPort,
    this.toPort,
  });

  final TfArg<num>? fromPort;

  final TfArg<num>? toPort;

  Map<String, Object?> encode() => {
    if (fromPort != null) 'from_port': fromPort!.toTfJson(),
    if (toPort != null) 'to_port': toPort!.toTfJson(),
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

  final Ec2NetworkInsightsPathFilterAtSourceDestinationPortRange?
  destinationPortRange;

  final Ec2NetworkInsightsPathFilterAtSourceSourcePortRange? sourcePortRange;

  Map<String, Object?> encode() => {
    if (destinationAddress != null)
      'destination_address': destinationAddress!.toTfJson(),
    if (sourceAddress != null) 'source_address': sourceAddress!.toTfJson(),
    if (destinationPortRange != null)
      'destination_port_range': destinationPortRange!.encode(),
    if (sourcePortRange != null) 'source_port_range': sourcePortRange!.encode(),
  };
}

/// Typed helper for the `filter_at_source.destination_port_range` block of
/// `aws_ec2_network_insights_path` (derived from provider schema).
@immutable
final class Ec2NetworkInsightsPathFilterAtSourceDestinationPortRange {
  const Ec2NetworkInsightsPathFilterAtSourceDestinationPortRange({
    this.fromPort,
    this.toPort,
  });

  final TfArg<num>? fromPort;

  final TfArg<num>? toPort;

  Map<String, Object?> encode() => {
    if (fromPort != null) 'from_port': fromPort!.toTfJson(),
    if (toPort != null) 'to_port': toPort!.toTfJson(),
  };
}

/// Typed helper for the `filter_at_source.source_port_range` block of
/// `aws_ec2_network_insights_path` (derived from provider schema).
@immutable
final class Ec2NetworkInsightsPathFilterAtSourceSourcePortRange {
  const Ec2NetworkInsightsPathFilterAtSourceSourcePortRange({
    this.fromPort,
    this.toPort,
  });

  final TfArg<num>? fromPort;

  final TfArg<num>? toPort;

  Map<String, Object?> encode() => {
    if (fromPort != null) 'from_port': fromPort!.toTfJson(),
    if (toPort != null) 'to_port': toPort!.toTfJson(),
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
    required TfArg<String> protocol,
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
           if (destination != null) 'destination': destination,
           if (destinationIp != null) 'destination_ip': destinationIp,
           if (destinationPort != null) 'destination_port': destinationPort,
           'protocol': protocol,
           if (region != null) 'region': region,
           'source': source,
           if (sourceIp != null) 'source_ip': sourceIp,
           if (tags != null) 'tags': tags,
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

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `destination_arn` attribute.
  TfRef<String> get destinationArn =>
      TfRef.attribute<String>(this, 'destination_arn');

  /// Reference to `source_arn` attribute.
  TfRef<String> get sourceArn => TfRef.attribute<String>(this, 'source_arn');
}
