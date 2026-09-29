// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_transit_gateway_metering_policy_entry`.
const Set<String> _awsEc2TransitGatewayMeteringPolicyEntrySensitive =
    <String>{};

/// Ec2 Transit Gateway Metering Policy Entry Destination Transit Gateway Attachment enum for `destination_transit_gateway_attachment_type`.
enum Ec2TransitGatewayMeteringPolicyEntryDestinationTransitGatewayAttachmentType
    implements TerraformEnum {
  vpc('vpc'),
  vpn('vpn'),
  vpnConcentrator('vpn-concentrator'),
  directConnectGateway('direct-connect-gateway'),
  connect('connect'),
  peering('peering'),
  tgwPeering('tgw-peering'),
  networkFunction('network-function'),
  clientVpn('client-vpn');

  const Ec2TransitGatewayMeteringPolicyEntryDestinationTransitGatewayAttachmentType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Ec2 Transit Gateway Metering Policy Entry Metered enum for `metered_account`.
enum Ec2TransitGatewayMeteringPolicyEntryMeteredAccount
    implements TerraformEnum {
  sourceAttachmentOwner('source-attachment-owner'),
  destinationAttachmentOwner('destination-attachment-owner'),
  transitGatewayOwner('transit-gateway-owner');

  const Ec2TransitGatewayMeteringPolicyEntryMeteredAccount(this.terraformValue);
  @override
  final String terraformValue;
}

/// Ec2 Transit Gateway Metering Policy Entry Source Transit Gateway Attachment enum for `source_transit_gateway_attachment_type`.
enum Ec2TransitGatewayMeteringPolicyEntrySourceTransitGatewayAttachmentType
    implements TerraformEnum {
  vpc('vpc'),
  vpn('vpn'),
  vpnConcentrator('vpn-concentrator'),
  directConnectGateway('direct-connect-gateway'),
  connect('connect'),
  peering('peering'),
  tgwPeering('tgw-peering'),
  networkFunction('network-function'),
  clientVpn('client-vpn');

  const Ec2TransitGatewayMeteringPolicyEntrySourceTransitGatewayAttachmentType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_ec2_transit_gateway_metering_policy_entry`.
final class AwsEc2TransitGatewayMeteringPolicyEntry extends Resource {
  static const String tfType = 'aws_ec2_transit_gateway_metering_policy_entry';

  AwsEc2TransitGatewayMeteringPolicyEntry({
    required super.localName,
    TfArg<String>? destinationCidrBlock,
    TfArg<String>? destinationPortRange,
    TfArg<String>? destinationTransitGatewayAttachmentId,
    TfArg<
      Ec2TransitGatewayMeteringPolicyEntryDestinationTransitGatewayAttachmentType
    >?
    destinationTransitGatewayAttachmentType,
    required TfArg<Ec2TransitGatewayMeteringPolicyEntryMeteredAccount>
    meteredAccount,
    required TfArg<num> policyRuleNumber,
    TfArg<String>? protocol,
    TfArg<String>? region,
    TfArg<String>? sourceCidrBlock,
    TfArg<String>? sourcePortRange,
    TfArg<String>? sourceTransitGatewayAttachmentId,
    TfArg<
      Ec2TransitGatewayMeteringPolicyEntrySourceTransitGatewayAttachmentType
    >?
    sourceTransitGatewayAttachmentType,
    required TfArg<String> transitGatewayMeteringPolicyId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (destinationCidrBlock != null)
             'destination_cidr_block': destinationCidrBlock,
           if (destinationPortRange != null)
             'destination_port_range': destinationPortRange,
           if (destinationTransitGatewayAttachmentId != null)
             'destination_transit_gateway_attachment_id':
                 destinationTransitGatewayAttachmentId,
           if (destinationTransitGatewayAttachmentType != null)
             'destination_transit_gateway_attachment_type':
                 destinationTransitGatewayAttachmentType,
           'metered_account': meteredAccount,
           'policy_rule_number': policyRuleNumber,
           if (protocol != null) 'protocol': protocol,
           if (region != null) 'region': region,
           if (sourceCidrBlock != null) 'source_cidr_block': sourceCidrBlock,
           if (sourcePortRange != null) 'source_port_range': sourcePortRange,
           if (sourceTransitGatewayAttachmentId != null)
             'source_transit_gateway_attachment_id':
                 sourceTransitGatewayAttachmentId,
           if (sourceTransitGatewayAttachmentType != null)
             'source_transit_gateway_attachment_type':
                 sourceTransitGatewayAttachmentType,
           'transit_gateway_metering_policy_id': transitGatewayMeteringPolicyId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsEc2TransitGatewayMeteringPolicyEntrySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEc2TransitGatewayMeteringPolicyEntry>`.
  RefTo<AwsEc2TransitGatewayMeteringPolicyEntry> get ref => RefTo.of(this);
}
