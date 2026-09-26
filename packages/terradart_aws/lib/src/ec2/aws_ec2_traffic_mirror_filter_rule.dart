// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_traffic_mirror_filter_rule`.
const Set<String> _awsEc2TrafficMirrorFilterRuleSensitive = <String>{};

/// Typed helper for the `destination_port_range` block of
/// `aws_ec2_traffic_mirror_filter_rule` (derived from provider schema).
@immutable
final class Ec2TrafficMirrorFilterRuleDestinationPortRange {
  const Ec2TrafficMirrorFilterRuleDestinationPortRange({
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

/// Typed helper for the `source_port_range` block of
/// `aws_ec2_traffic_mirror_filter_rule` (derived from provider schema).
@immutable
final class Ec2TrafficMirrorFilterRuleSourcePortRange {
  const Ec2TrafficMirrorFilterRuleSourcePortRange({this.fromPort, this.toPort});

  final TfArg<num>? fromPort;

  final TfArg<num>? toPort;

  Map<String, Object?> encode() => {
    if (fromPort != null) 'from_port': fromPort!.toTfJson(),
    if (toPort != null) 'to_port': toPort!.toTfJson(),
  };
}

/// Factory wrapper for `aws_ec2_traffic_mirror_filter_rule`.
final class AwsEc2TrafficMirrorFilterRule extends Resource {
  static const String tfType = 'aws_ec2_traffic_mirror_filter_rule';

  AwsEc2TrafficMirrorFilterRule({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> destinationCidrBlock,
    TfArg<num>? protocol,
    TfArg<String>? region,
    required TfArg<String> ruleAction,
    required TfArg<num> ruleNumber,
    required TfArg<String> sourceCidrBlock,
    required TfArg<String> trafficDirection,
    required TfArg<String> trafficMirrorFilterId,
    Ec2TrafficMirrorFilterRuleDestinationPortRange? destinationPortRange,
    Ec2TrafficMirrorFilterRuleSourcePortRange? sourcePortRange,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           'destination_cidr_block': destinationCidrBlock,
           if (protocol != null) 'protocol': protocol,
           if (region != null) 'region': region,
           'rule_action': ruleAction,
           'rule_number': ruleNumber,
           'source_cidr_block': sourceCidrBlock,
           'traffic_direction': trafficDirection,
           'traffic_mirror_filter_id': trafficMirrorFilterId,
           if (destinationPortRange != null)
             'destination_port_range': TfArg.literal(
               destinationPortRange.encode(),
             ),
           if (sourcePortRange != null)
             'source_port_range': TfArg.literal(sourcePortRange.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2TrafficMirrorFilterRuleSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
