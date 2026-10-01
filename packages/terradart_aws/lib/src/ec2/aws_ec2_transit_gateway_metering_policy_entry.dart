// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_transit_gateway_metering_policy_entry`.
const Set<String> _awsEc2TransitGatewayMeteringPolicyEntrySensitive =
    <String>{};

/// Ec2 Transit Gateway Metering Policy Entry Destination Transit Gateway Attachment enum for `destination_transit_gateway_attachment_type`.
extension type const Ec2TransitGatewayMeteringPolicyEntryDestinationTransitGatewayAttachmentType._(
  TfArg<String> _
) implements TfArg<String> {
  Ec2TransitGatewayMeteringPolicyEntryDestinationTransitGatewayAttachmentType.variable(
    String name,
  ) : this._(TfArg.variable(name));
  Ec2TransitGatewayMeteringPolicyEntryDestinationTransitGatewayAttachmentType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const Ec2TransitGatewayMeteringPolicyEntryDestinationTransitGatewayAttachmentType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const vpc =
      Ec2TransitGatewayMeteringPolicyEntryDestinationTransitGatewayAttachmentType._(
        TfArgLiteral('vpc'),
      );
  static const vpn =
      Ec2TransitGatewayMeteringPolicyEntryDestinationTransitGatewayAttachmentType._(
        TfArgLiteral('vpn'),
      );
  static const vpnConcentrator =
      Ec2TransitGatewayMeteringPolicyEntryDestinationTransitGatewayAttachmentType._(
        TfArgLiteral('vpn-concentrator'),
      );
  static const directConnectGateway =
      Ec2TransitGatewayMeteringPolicyEntryDestinationTransitGatewayAttachmentType._(
        TfArgLiteral('direct-connect-gateway'),
      );
  static const connect =
      Ec2TransitGatewayMeteringPolicyEntryDestinationTransitGatewayAttachmentType._(
        TfArgLiteral('connect'),
      );
  static const peering =
      Ec2TransitGatewayMeteringPolicyEntryDestinationTransitGatewayAttachmentType._(
        TfArgLiteral('peering'),
      );
  static const tgwPeering =
      Ec2TransitGatewayMeteringPolicyEntryDestinationTransitGatewayAttachmentType._(
        TfArgLiteral('tgw-peering'),
      );
  static const networkFunction =
      Ec2TransitGatewayMeteringPolicyEntryDestinationTransitGatewayAttachmentType._(
        TfArgLiteral('network-function'),
      );
  static const clientVpn =
      Ec2TransitGatewayMeteringPolicyEntryDestinationTransitGatewayAttachmentType._(
        TfArgLiteral('client-vpn'),
      );

  static const List<
    Ec2TransitGatewayMeteringPolicyEntryDestinationTransitGatewayAttachmentType
  >
  values = [
    vpc,
    vpn,
    vpnConcentrator,
    directConnectGateway,
    connect,
    peering,
    tgwPeering,
    networkFunction,
    clientVpn,
  ];
}

/// Ec2 Transit Gateway Metering Policy Entry Metered enum for `metered_account`.
extension type const Ec2TransitGatewayMeteringPolicyEntryMeteredAccount._(
  TfArg<String> _
) implements TfArg<String> {
  Ec2TransitGatewayMeteringPolicyEntryMeteredAccount.variable(String name)
    : this._(TfArg.variable(name));
  Ec2TransitGatewayMeteringPolicyEntryMeteredAccount.expression(String template)
    : this._(TfArg.expression(template));
  const Ec2TransitGatewayMeteringPolicyEntryMeteredAccount.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const sourceAttachmentOwner =
      Ec2TransitGatewayMeteringPolicyEntryMeteredAccount._(
        TfArgLiteral('source-attachment-owner'),
      );
  static const destinationAttachmentOwner =
      Ec2TransitGatewayMeteringPolicyEntryMeteredAccount._(
        TfArgLiteral('destination-attachment-owner'),
      );
  static const transitGatewayOwner =
      Ec2TransitGatewayMeteringPolicyEntryMeteredAccount._(
        TfArgLiteral('transit-gateway-owner'),
      );

  static const List<Ec2TransitGatewayMeteringPolicyEntryMeteredAccount> values =
      [sourceAttachmentOwner, destinationAttachmentOwner, transitGatewayOwner];
}

/// Ec2 Transit Gateway Metering Policy Entry Source Transit Gateway Attachment enum for `source_transit_gateway_attachment_type`.
extension type const Ec2TransitGatewayMeteringPolicyEntrySourceTransitGatewayAttachmentType._(
  TfArg<String> _
) implements TfArg<String> {
  Ec2TransitGatewayMeteringPolicyEntrySourceTransitGatewayAttachmentType.variable(
    String name,
  ) : this._(TfArg.variable(name));
  Ec2TransitGatewayMeteringPolicyEntrySourceTransitGatewayAttachmentType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const Ec2TransitGatewayMeteringPolicyEntrySourceTransitGatewayAttachmentType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const vpc =
      Ec2TransitGatewayMeteringPolicyEntrySourceTransitGatewayAttachmentType._(
        TfArgLiteral('vpc'),
      );
  static const vpn =
      Ec2TransitGatewayMeteringPolicyEntrySourceTransitGatewayAttachmentType._(
        TfArgLiteral('vpn'),
      );
  static const vpnConcentrator =
      Ec2TransitGatewayMeteringPolicyEntrySourceTransitGatewayAttachmentType._(
        TfArgLiteral('vpn-concentrator'),
      );
  static const directConnectGateway =
      Ec2TransitGatewayMeteringPolicyEntrySourceTransitGatewayAttachmentType._(
        TfArgLiteral('direct-connect-gateway'),
      );
  static const connect =
      Ec2TransitGatewayMeteringPolicyEntrySourceTransitGatewayAttachmentType._(
        TfArgLiteral('connect'),
      );
  static const peering =
      Ec2TransitGatewayMeteringPolicyEntrySourceTransitGatewayAttachmentType._(
        TfArgLiteral('peering'),
      );
  static const tgwPeering =
      Ec2TransitGatewayMeteringPolicyEntrySourceTransitGatewayAttachmentType._(
        TfArgLiteral('tgw-peering'),
      );
  static const networkFunction =
      Ec2TransitGatewayMeteringPolicyEntrySourceTransitGatewayAttachmentType._(
        TfArgLiteral('network-function'),
      );
  static const clientVpn =
      Ec2TransitGatewayMeteringPolicyEntrySourceTransitGatewayAttachmentType._(
        TfArgLiteral('client-vpn'),
      );

  static const List<
    Ec2TransitGatewayMeteringPolicyEntrySourceTransitGatewayAttachmentType
  >
  values = [
    vpc,
    vpn,
    vpnConcentrator,
    directConnectGateway,
    connect,
    peering,
    tgwPeering,
    networkFunction,
    clientVpn,
  ];
}

/// Factory wrapper for `aws_ec2_transit_gateway_metering_policy_entry`.
final class AwsEc2TransitGatewayMeteringPolicyEntry extends Resource {
  static const String tfType = 'aws_ec2_transit_gateway_metering_policy_entry';

  AwsEc2TransitGatewayMeteringPolicyEntry(
    super.localName, {
    TfArg<String>? destinationCidrBlock,
    TfArg<String>? destinationPortRange,
    TfArg<String>? destinationTransitGatewayAttachmentId,
    Ec2TransitGatewayMeteringPolicyEntryDestinationTransitGatewayAttachmentType?
    destinationTransitGatewayAttachmentType,
    required Ec2TransitGatewayMeteringPolicyEntryMeteredAccount meteredAccount,
    required TfArg<num> policyRuleNumber,
    TfArg<String>? protocol,
    TfArg<String>? region,
    TfArg<String>? sourceCidrBlock,
    TfArg<String>? sourcePortRange,
    TfArg<String>? sourceTransitGatewayAttachmentId,
    Ec2TransitGatewayMeteringPolicyEntrySourceTransitGatewayAttachmentType?
    sourceTransitGatewayAttachmentType,
    required TfArg<String> transitGatewayMeteringPolicyId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'destination_cidr_block': ?destinationCidrBlock,
           'destination_port_range': ?destinationPortRange,
           'destination_transit_gateway_attachment_id':
               ?destinationTransitGatewayAttachmentId,
           'destination_transit_gateway_attachment_type':
               ?destinationTransitGatewayAttachmentType,
           'metered_account': meteredAccount,
           'policy_rule_number': policyRuleNumber,
           'protocol': ?protocol,
           'region': ?region,
           'source_cidr_block': ?sourceCidrBlock,
           'source_port_range': ?sourcePortRange,
           'source_transit_gateway_attachment_id':
               ?sourceTransitGatewayAttachmentId,
           'source_transit_gateway_attachment_type':
               ?sourceTransitGatewayAttachmentType,
           'transit_gateway_metering_policy_id': transitGatewayMeteringPolicyId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsEc2TransitGatewayMeteringPolicyEntrySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEc2TransitGatewayMeteringPolicyEntry>`.
  RefTo<AwsEc2TransitGatewayMeteringPolicyEntry> get ref => RefTo.of(this);

  /// Reference to `destination_cidr_block` attribute.
  TfRef<String> get destinationCidrBlock =>
      TfRef.attribute<String>(this, 'destination_cidr_block');

  /// Reference to `destination_port_range` attribute.
  TfRef<String> get destinationPortRange =>
      TfRef.attribute<String>(this, 'destination_port_range');

  /// Reference to `destination_transit_gateway_attachment_id` attribute.
  TfRef<String> get destinationTransitGatewayAttachmentId =>
      TfRef.attribute<String>(
        this,
        'destination_transit_gateway_attachment_id',
      );

  /// Reference to `destination_transit_gateway_attachment_type` attribute.
  TfRef<String> get destinationTransitGatewayAttachmentType =>
      TfRef.attribute<String>(
        this,
        'destination_transit_gateway_attachment_type',
      );

  /// Reference to `metered_account` attribute.
  TfRef<String> get meteredAccount =>
      TfRef.attribute<String>(this, 'metered_account');

  /// Reference to `policy_rule_number` attribute.
  TfRef<num> get policyRuleNumber =>
      TfRef.attribute<num>(this, 'policy_rule_number');

  /// Reference to `protocol` attribute.
  TfRef<String> get protocol => TfRef.attribute<String>(this, 'protocol');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `source_cidr_block` attribute.
  TfRef<String> get sourceCidrBlock =>
      TfRef.attribute<String>(this, 'source_cidr_block');

  /// Reference to `source_port_range` attribute.
  TfRef<String> get sourcePortRange =>
      TfRef.attribute<String>(this, 'source_port_range');

  /// Reference to `source_transit_gateway_attachment_id` attribute.
  TfRef<String> get sourceTransitGatewayAttachmentId =>
      TfRef.attribute<String>(this, 'source_transit_gateway_attachment_id');

  /// Reference to `source_transit_gateway_attachment_type` attribute.
  TfRef<String> get sourceTransitGatewayAttachmentType =>
      TfRef.attribute<String>(this, 'source_transit_gateway_attachment_type');

  /// Reference to `transit_gateway_metering_policy_id` attribute.
  TfRef<String> get transitGatewayMeteringPolicyId =>
      TfRef.attribute<String>(this, 'transit_gateway_metering_policy_id');
}
