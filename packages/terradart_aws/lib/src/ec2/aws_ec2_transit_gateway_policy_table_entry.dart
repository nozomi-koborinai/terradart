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

  final List<Ec2TransitGatewayPolicyTableEntryMetadata>? metadata;

  Map<String, Object?> encode() => {
    'destination_cidr_block': ?destinationCidrBlock?.toTfJson(),
    'destination_port_range': ?destinationPortRange?.toTfJson(),
    'protocol': ?protocol?.toTfJson(),
    'source_cidr_block': ?sourceCidrBlock?.toTfJson(),
    'source_port_range': ?sourcePortRange?.toTfJson(),
    if (metadata != null) 'metadata': [for (final e in metadata!) e.encode()],
  };
}

/// Typed helper for the `policy_rule.metadata` block of
/// `aws_ec2_transit_gateway_policy_table_entry` (derived from provider schema).
@immutable
final class Ec2TransitGatewayPolicyTableEntryMetadata {
  const Ec2TransitGatewayPolicyTableEntryMetadata({this.key, this.value});

  final TfArg<String>? key;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'key': ?key?.toTfJson(),
    'value': ?value?.toTfJson(),
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
           'region': ?region,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEc2TransitGatewayPolicyTableEntry>`.
  RefTo<AwsEc2TransitGatewayPolicyTableEntry> get ref => RefTo.of(this);

  /// Reference to `policy_rule_number` attribute.
  TfRef<String> get policyRuleNumberRef =>
      TfRef.attribute<String>(this, 'policy_rule_number');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `target_route_table_id` attribute.
  TfRef<String> get targetRouteTableIdRef =>
      TfRef.attribute<String>(this, 'target_route_table_id');

  /// Reference to `transit_gateway_policy_table_id` attribute.
  TfRef<String> get transitGatewayPolicyTableIdRef =>
      TfRef.attribute<String>(this, 'transit_gateway_policy_table_id');
}
