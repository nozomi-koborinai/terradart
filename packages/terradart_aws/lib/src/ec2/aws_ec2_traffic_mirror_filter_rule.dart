// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_traffic_mirror_filter_rule`.
const Set<String> _awsEc2TrafficMirrorFilterRuleSensitive = <String>{};

/// Ec2 Traffic Mirror Filter Rule enum for `rule_action`.
enum Ec2TrafficMirrorFilterRuleAction implements TerraformEnum {
  accept('accept'),
  reject('reject');

  const Ec2TrafficMirrorFilterRuleAction(this.terraformValue);
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
    'from_port': ?fromPort?.toTfJson(),
    'to_port': ?toPort?.toTfJson(),
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
    'from_port': ?fromPort?.toTfJson(),
    'to_port': ?toPort?.toTfJson(),
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
    required TfArg<Ec2TrafficMirrorFilterRuleAction> ruleAction,
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
           'description': ?description,
           'destination_cidr_block': destinationCidrBlock,
           'protocol': ?protocol,
           'region': ?region,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEc2TrafficMirrorFilterRule>`.
  RefTo<AwsEc2TrafficMirrorFilterRule> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `destination_cidr_block` attribute.
  TfRef<String> get destinationCidrBlockRef =>
      TfRef.attribute<String>(this, 'destination_cidr_block');

  /// Reference to `protocol` attribute.
  TfRef<num> get protocolRef => TfRef.attribute<num>(this, 'protocol');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `rule_action` attribute.
  TfRef<String> get ruleActionRef =>
      TfRef.attribute<String>(this, 'rule_action');

  /// Reference to `rule_number` attribute.
  TfRef<num> get ruleNumberRef => TfRef.attribute<num>(this, 'rule_number');

  /// Reference to `source_cidr_block` attribute.
  TfRef<String> get sourceCidrBlockRef =>
      TfRef.attribute<String>(this, 'source_cidr_block');

  /// Reference to `traffic_direction` attribute.
  TfRef<String> get trafficDirectionRef =>
      TfRef.attribute<String>(this, 'traffic_direction');

  /// Reference to `traffic_mirror_filter_id` attribute.
  TfRef<String> get trafficMirrorFilterIdRef =>
      TfRef.attribute<String>(this, 'traffic_mirror_filter_id');
}
