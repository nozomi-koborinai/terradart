// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_traffic_mirror_filter_rule`.
const Set<String> _awsEc2TrafficMirrorFilterRuleSensitive = <String>{};

/// Ec2 Traffic Mirror Filter Rule Rule enum for `rule_action`.
enum Ec2TrafficMirrorFilterRuleRuleAction implements TerraformEnum {
  accept('accept'),
  reject('reject');

  const Ec2TrafficMirrorFilterRuleRuleAction(this.terraformValue);
  @override
  final String terraformValue;
}

/// Ec2 Traffic Mirror Filter Rule Traffic enum for `traffic_direction`.
enum Ec2TrafficMirrorFilterRuleTrafficDirection implements TerraformEnum {
  ingress('ingress'),
  egress('egress');

  const Ec2TrafficMirrorFilterRuleTrafficDirection(this.terraformValue);
  @override
  final String terraformValue;
}

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
    required TfArg<Ec2TrafficMirrorFilterRuleRuleAction> ruleAction,
    required TfArg<num> ruleNumber,
    required TfArg<String> sourceCidrBlock,
    required TfArg<Ec2TrafficMirrorFilterRuleTrafficDirection> trafficDirection,
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
