// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_traffic_mirror_filter_rule`.
const Set<String> _awsEc2TrafficMirrorFilterRuleSensitive = <String>{};

/// Ec2 Traffic Mirror Filter Rule enum for `rule_action`.
extension type const Ec2TrafficMirrorFilterRuleAction._(TfArg<String> _)
    implements TfArg<String> {
  Ec2TrafficMirrorFilterRuleAction.variable(String name)
    : this._(TfArg.variable(name));
  Ec2TrafficMirrorFilterRuleAction.expression(String template)
    : this._(TfArg.expression(template));
  const Ec2TrafficMirrorFilterRuleAction.arg(TfArg<String> arg) : this._(arg);

  static const accept = Ec2TrafficMirrorFilterRuleAction._(
    TfArgLiteral('accept'),
  );
  static const reject = Ec2TrafficMirrorFilterRuleAction._(
    TfArgLiteral('reject'),
  );

  static const List<Ec2TrafficMirrorFilterRuleAction> values = [accept, reject];
}

/// Ec2 Traffic Mirror Filter Rule Traffic enum for `traffic_direction`.
extension type const Ec2TrafficMirrorFilterRuleTrafficDirection._(
  TfArg<String> _
) implements TfArg<String> {
  Ec2TrafficMirrorFilterRuleTrafficDirection.variable(String name)
    : this._(TfArg.variable(name));
  Ec2TrafficMirrorFilterRuleTrafficDirection.expression(String template)
    : this._(TfArg.expression(template));
  const Ec2TrafficMirrorFilterRuleTrafficDirection.arg(TfArg<String> arg)
    : this._(arg);

  static const ingress = Ec2TrafficMirrorFilterRuleTrafficDirection._(
    TfArgLiteral('ingress'),
  );
  static const egress = Ec2TrafficMirrorFilterRuleTrafficDirection._(
    TfArgLiteral('egress'),
  );

  static const List<Ec2TrafficMirrorFilterRuleTrafficDirection> values = [
    ingress,
    egress,
  ];
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

  AwsEc2TrafficMirrorFilterRule(
    super.localName, {
    TfArg<String>? description,
    required TfArg<String> destinationCidrBlock,
    TfArg<num>? protocol,
    TfArg<String>? region,
    required Ec2TrafficMirrorFilterRuleAction ruleAction,
    required TfArg<num> ruleNumber,
    required TfArg<String> sourceCidrBlock,
    required Ec2TrafficMirrorFilterRuleTrafficDirection trafficDirection,
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
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `destination_cidr_block` attribute.
  TfRef<String> get destinationCidrBlock =>
      TfRef.attribute<String>(this, 'destination_cidr_block');

  /// Reference to `protocol` attribute.
  TfRef<num> get protocol => TfRef.attribute<num>(this, 'protocol');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `rule_action` attribute.
  TfRef<String> get ruleAction => TfRef.attribute<String>(this, 'rule_action');

  /// Reference to `rule_number` attribute.
  TfRef<num> get ruleNumber => TfRef.attribute<num>(this, 'rule_number');

  /// Reference to `source_cidr_block` attribute.
  TfRef<String> get sourceCidrBlock =>
      TfRef.attribute<String>(this, 'source_cidr_block');

  /// Reference to `traffic_direction` attribute.
  TfRef<String> get trafficDirection =>
      TfRef.attribute<String>(this, 'traffic_direction');

  /// Reference to `traffic_mirror_filter_id` attribute.
  TfRef<String> get trafficMirrorFilterId =>
      TfRef.attribute<String>(this, 'traffic_mirror_filter_id');
}
