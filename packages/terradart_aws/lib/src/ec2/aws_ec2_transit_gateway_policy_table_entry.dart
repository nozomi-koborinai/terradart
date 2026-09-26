// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_transit_gateway_policy_table_entry`.
const Set<String> _awsEc2TransitGatewayPolicyTableEntrySensitive = <String>{};

/// Typed helper for the `policy_rule` block of
/// `aws_ec2_transit_gateway_policy_table_entry` (derived from provider schema).
@immutable
final class Ec2TransitGatewayPolicyTableEntryPolicyRule {
  const Ec2TransitGatewayPolicyTableEntryPolicyRule({
    this.destinationCidrBlock,
    this.destinationPortRange,
    this.protocol,
    this.sourceCidrBlock,
    this.sourcePortRange,
    this.metadata,
  });

  final TfArg<String>? destinationCidrBlock;

  final TfArg<String>? destinationPortRange;

  final TfArg<String>? protocol;

  final TfArg<String>? sourceCidrBlock;

  final TfArg<String>? sourcePortRange;

  final List<Ec2TransitGatewayPolicyTableEntryPolicyRuleMetadata>? metadata;

  Map<String, Object?> encode() => {
    if (destinationCidrBlock != null)
      'destination_cidr_block': destinationCidrBlock!.toTfJson(),
    if (destinationPortRange != null)
      'destination_port_range': destinationPortRange!.toTfJson(),
    if (protocol != null) 'protocol': protocol!.toTfJson(),
    if (sourceCidrBlock != null)
      'source_cidr_block': sourceCidrBlock!.toTfJson(),
    if (sourcePortRange != null)
      'source_port_range': sourcePortRange!.toTfJson(),
    if (metadata != null) 'metadata': [for (final e in metadata!) e.encode()],
  };
}

/// Typed helper for the `policy_rule.metadata` block of
/// `aws_ec2_transit_gateway_policy_table_entry` (derived from provider schema).
@immutable
final class Ec2TransitGatewayPolicyTableEntryPolicyRuleMetadata {
  const Ec2TransitGatewayPolicyTableEntryPolicyRuleMetadata({
    this.key,
    this.value,
  });

  final TfArg<String>? key;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    if (key != null) 'key': key!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Factory wrapper for `aws_ec2_transit_gateway_policy_table_entry`.
final class AwsEc2TransitGatewayPolicyTableEntry extends Resource {
  static const String tfType = 'aws_ec2_transit_gateway_policy_table_entry';

  AwsEc2TransitGatewayPolicyTableEntry({
    required super.localName,
    required TfArg<String> policyRuleNumber,
    TfArg<String>? region,
    required TfArg<String> targetRouteTableId,
    required TfArg<String> transitGatewayPolicyTableId,
    List<Ec2TransitGatewayPolicyTableEntryPolicyRule>? policyRule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'policy_rule_number': policyRuleNumber,
           if (region != null) 'region': region,
           'target_route_table_id': targetRouteTableId,
           'transit_gateway_policy_table_id': transitGatewayPolicyTableId,
           if (policyRule != null)
             'policy_rule': TfArg.literal([
               for (final e in policyRule) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsEc2TransitGatewayPolicyTableEntrySensitive;
}
