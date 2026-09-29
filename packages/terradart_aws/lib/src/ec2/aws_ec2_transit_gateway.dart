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
           if (amazonSideAsn != null) 'amazon_side_asn': amazonSideAsn,
           if (autoAcceptSharedAttachments != null)
             'auto_accept_shared_attachments': autoAcceptSharedAttachments,
           if (defaultRouteTableAssociation != null)
             'default_route_table_association': defaultRouteTableAssociation,
           if (defaultRouteTablePropagation != null)
             'default_route_table_propagation': defaultRouteTablePropagation,
           if (description != null) 'description': description,
           if (dnsSupport != null) 'dns_support': dnsSupport,
           if (encryptionSupport != null)
             'encryption_support': encryptionSupport,
           if (multicastSupport != null) 'multicast_support': multicastSupport,
           if (region != null) 'region': region,
           if (securityGroupReferencingSupport != null)
             'security_group_referencing_support':
                 securityGroupReferencingSupport,
           if (tags != null) 'tags': tags,
           if (transitGatewayCidrBlocks != null)
             'transit_gateway_cidr_blocks': transitGatewayCidrBlocks,
           if (vpnEcmpSupport != null) 'vpn_ecmp_support': vpnEcmpSupport,
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
}
