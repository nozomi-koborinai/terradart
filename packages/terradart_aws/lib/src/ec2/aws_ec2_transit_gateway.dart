// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_transit_gateway`.
const Set<String> _awsEc2TransitGatewaySensitive = <String>{};

/// Ec2 Transit Gateway Auto Accept Shared enum for `auto_accept_shared_attachments`.
enum Ec2TransitGatewayAutoAcceptSharedAttachments implements TerraformEnum {
  enable('enable'),
  disable('disable');

  const Ec2TransitGatewayAutoAcceptSharedAttachments(this.terraformValue);
  @override
  final String terraformValue;
}

/// Ec2 Transit Gateway Default Route Table enum for `default_route_table_association`.
enum Ec2TransitGatewayDefaultRouteTableAssociation implements TerraformEnum {
  enable('enable'),
  disable('disable');

  const Ec2TransitGatewayDefaultRouteTableAssociation(this.terraformValue);
  @override
  final String terraformValue;
}

/// Ec2 Transit Gateway Default Route Table enum for `default_route_table_propagation`.
enum Ec2TransitGatewayDefaultRouteTablePropagation implements TerraformEnum {
  enable('enable'),
  disable('disable');

  const Ec2TransitGatewayDefaultRouteTablePropagation(this.terraformValue);
  @override
  final String terraformValue;
}

/// Ec2 Transit Gateway Dns enum for `dns_support`.
enum Ec2TransitGatewayDnsSupport implements TerraformEnum {
  enable('enable'),
  disable('disable');

  const Ec2TransitGatewayDnsSupport(this.terraformValue);
  @override
  final String terraformValue;
}

/// Ec2 Transit Gateway Encryption enum for `encryption_support`.
enum Ec2TransitGatewayEncryptionSupport implements TerraformEnum {
  enable('enable'),
  disable('disable');

  const Ec2TransitGatewayEncryptionSupport(this.terraformValue);
  @override
  final String terraformValue;
}

/// Ec2 Transit Gateway Multicast enum for `multicast_support`.
enum Ec2TransitGatewayMulticastSupport implements TerraformEnum {
  enable('enable'),
  disable('disable');

  const Ec2TransitGatewayMulticastSupport(this.terraformValue);
  @override
  final String terraformValue;
}

/// Ec2 Transit Gateway Security Group Referencing enum for `security_group_referencing_support`.
enum Ec2TransitGatewaySecurityGroupReferencingSupport implements TerraformEnum {
  enable('enable'),
  disable('disable');

  const Ec2TransitGatewaySecurityGroupReferencingSupport(this.terraformValue);
  @override
  final String terraformValue;
}

/// Ec2 Transit Gateway Vpn Ecmp enum for `vpn_ecmp_support`.
enum Ec2TransitGatewayVpnEcmpSupport implements TerraformEnum {
  enable('enable'),
  disable('disable');

  const Ec2TransitGatewayVpnEcmpSupport(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_ec2_transit_gateway`.
final class AwsEc2TransitGateway extends Resource {
  static const String tfType = 'aws_ec2_transit_gateway';

  AwsEc2TransitGateway({
    required super.localName,
    TfArg<num>? amazonSideAsn,
    TfArg<Ec2TransitGatewayAutoAcceptSharedAttachments>?
    autoAcceptSharedAttachments,
    TfArg<Ec2TransitGatewayDefaultRouteTableAssociation>?
    defaultRouteTableAssociation,
    TfArg<Ec2TransitGatewayDefaultRouteTablePropagation>?
    defaultRouteTablePropagation,
    TfArg<String>? description,
    TfArg<Ec2TransitGatewayDnsSupport>? dnsSupport,
    TfArg<Ec2TransitGatewayEncryptionSupport>? encryptionSupport,
    TfArg<Ec2TransitGatewayMulticastSupport>? multicastSupport,
    TfArg<String>? region,
    TfArg<Ec2TransitGatewaySecurityGroupReferencingSupport>?
    securityGroupReferencingSupport,
    TfArg<Map<String, String>>? tags,
    TfArg<List<String>>? transitGatewayCidrBlocks,
    TfArg<Ec2TransitGatewayVpnEcmpSupport>? vpnEcmpSupport,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'amazon_side_asn': ?amazonSideAsn,
           'auto_accept_shared_attachments': ?autoAcceptSharedAttachments,
           'default_route_table_association': ?defaultRouteTableAssociation,
           'default_route_table_propagation': ?defaultRouteTablePropagation,
           'description': ?description,
           'dns_support': ?dnsSupport,
           'encryption_support': ?encryptionSupport,
           'multicast_support': ?multicastSupport,
           'region': ?region,
           'security_group_referencing_support':
               ?securityGroupReferencingSupport,
           'tags': ?tags,
           'transit_gateway_cidr_blocks': ?transitGatewayCidrBlocks,
           'vpn_ecmp_support': ?vpnEcmpSupport,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2TransitGatewaySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEc2TransitGateway>`.
  RefTo<AwsEc2TransitGateway> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `association_default_route_table_id` attribute.
  TfRef<String> get associationDefaultRouteTableId =>
      TfRef.attribute<String>(this, 'association_default_route_table_id');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `propagation_default_route_table_id` attribute.
  TfRef<String> get propagationDefaultRouteTableId =>
      TfRef.attribute<String>(this, 'propagation_default_route_table_id');

  /// Reference to `amazon_side_asn` attribute.
  TfRef<num> get amazonSideAsnRef =>
      TfRef.attribute<num>(this, 'amazon_side_asn');

  /// Reference to `auto_accept_shared_attachments` attribute.
  TfRef<String> get autoAcceptSharedAttachmentsRef =>
      TfRef.attribute<String>(this, 'auto_accept_shared_attachments');

  /// Reference to `default_route_table_association` attribute.
  TfRef<String> get defaultRouteTableAssociationRef =>
      TfRef.attribute<String>(this, 'default_route_table_association');

  /// Reference to `default_route_table_propagation` attribute.
  TfRef<String> get defaultRouteTablePropagationRef =>
      TfRef.attribute<String>(this, 'default_route_table_propagation');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `dns_support` attribute.
  TfRef<String> get dnsSupportRef =>
      TfRef.attribute<String>(this, 'dns_support');

  /// Reference to `encryption_support` attribute.
  TfRef<String> get encryptionSupportRef =>
      TfRef.attribute<String>(this, 'encryption_support');

  /// Reference to `multicast_support` attribute.
  TfRef<String> get multicastSupportRef =>
      TfRef.attribute<String>(this, 'multicast_support');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `security_group_referencing_support` attribute.
  TfRef<String> get securityGroupReferencingSupportRef =>
      TfRef.attribute<String>(this, 'security_group_referencing_support');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `transit_gateway_cidr_blocks` attribute.
  TfRef<List<String>> get transitGatewayCidrBlocksRef =>
      TfRef.attribute<List<String>>(this, 'transit_gateway_cidr_blocks');

  /// Reference to `vpn_ecmp_support` attribute.
  TfRef<String> get vpnEcmpSupportRef =>
      TfRef.attribute<String>(this, 'vpn_ecmp_support');
}
