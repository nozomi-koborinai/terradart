// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_transit_gateway`.
const Set<String> _awsEc2TransitGatewaySensitive = <String>{};

/// Ec2 Transit Gateway Auto Accept Shared enum for `auto_accept_shared_attachments`.
extension type const Ec2TransitGatewayAutoAcceptSharedAttachments._(
  TfArg<String> _
) implements TfArg<String> {
  Ec2TransitGatewayAutoAcceptSharedAttachments.variable(String name)
    : this._(TfArg.variable(name));
  Ec2TransitGatewayAutoAcceptSharedAttachments.expression(String template)
    : this._(TfArg.expression(template));
  const Ec2TransitGatewayAutoAcceptSharedAttachments.arg(TfArg<String> arg)
    : this._(arg);

  static const enable = Ec2TransitGatewayAutoAcceptSharedAttachments._(
    TfArgLiteral('enable'),
  );
  static const disable = Ec2TransitGatewayAutoAcceptSharedAttachments._(
    TfArgLiteral('disable'),
  );

  static const List<Ec2TransitGatewayAutoAcceptSharedAttachments> values = [
    enable,
    disable,
  ];
}

/// Ec2 Transit Gateway Default Route Table enum for `default_route_table_association`.
extension type const Ec2TransitGatewayDefaultRouteTableAssociation._(
  TfArg<String> _
) implements TfArg<String> {
  Ec2TransitGatewayDefaultRouteTableAssociation.variable(String name)
    : this._(TfArg.variable(name));
  Ec2TransitGatewayDefaultRouteTableAssociation.expression(String template)
    : this._(TfArg.expression(template));
  const Ec2TransitGatewayDefaultRouteTableAssociation.arg(TfArg<String> arg)
    : this._(arg);

  static const enable = Ec2TransitGatewayDefaultRouteTableAssociation._(
    TfArgLiteral('enable'),
  );
  static const disable = Ec2TransitGatewayDefaultRouteTableAssociation._(
    TfArgLiteral('disable'),
  );

  static const List<Ec2TransitGatewayDefaultRouteTableAssociation> values = [
    enable,
    disable,
  ];
}

/// Ec2 Transit Gateway Default Route Table enum for `default_route_table_propagation`.
extension type const Ec2TransitGatewayDefaultRouteTablePropagation._(
  TfArg<String> _
) implements TfArg<String> {
  Ec2TransitGatewayDefaultRouteTablePropagation.variable(String name)
    : this._(TfArg.variable(name));
  Ec2TransitGatewayDefaultRouteTablePropagation.expression(String template)
    : this._(TfArg.expression(template));
  const Ec2TransitGatewayDefaultRouteTablePropagation.arg(TfArg<String> arg)
    : this._(arg);

  static const enable = Ec2TransitGatewayDefaultRouteTablePropagation._(
    TfArgLiteral('enable'),
  );
  static const disable = Ec2TransitGatewayDefaultRouteTablePropagation._(
    TfArgLiteral('disable'),
  );

  static const List<Ec2TransitGatewayDefaultRouteTablePropagation> values = [
    enable,
    disable,
  ];
}

/// Ec2 Transit Gateway Dns enum for `dns_support`.
extension type const Ec2TransitGatewayDnsSupport._(TfArg<String> _)
    implements TfArg<String> {
  Ec2TransitGatewayDnsSupport.variable(String name)
    : this._(TfArg.variable(name));
  Ec2TransitGatewayDnsSupport.expression(String template)
    : this._(TfArg.expression(template));
  const Ec2TransitGatewayDnsSupport.arg(TfArg<String> arg) : this._(arg);

  static const enable = Ec2TransitGatewayDnsSupport._(TfArgLiteral('enable'));
  static const disable = Ec2TransitGatewayDnsSupport._(TfArgLiteral('disable'));

  static const List<Ec2TransitGatewayDnsSupport> values = [enable, disable];
}

/// Ec2 Transit Gateway Encryption enum for `encryption_support`.
extension type const Ec2TransitGatewayEncryptionSupport._(TfArg<String> _)
    implements TfArg<String> {
  Ec2TransitGatewayEncryptionSupport.variable(String name)
    : this._(TfArg.variable(name));
  Ec2TransitGatewayEncryptionSupport.expression(String template)
    : this._(TfArg.expression(template));
  const Ec2TransitGatewayEncryptionSupport.arg(TfArg<String> arg) : this._(arg);

  static const enable = Ec2TransitGatewayEncryptionSupport._(
    TfArgLiteral('enable'),
  );
  static const disable = Ec2TransitGatewayEncryptionSupport._(
    TfArgLiteral('disable'),
  );

  static const List<Ec2TransitGatewayEncryptionSupport> values = [
    enable,
    disable,
  ];
}

/// Ec2 Transit Gateway Multicast enum for `multicast_support`.
extension type const Ec2TransitGatewayMulticastSupport._(TfArg<String> _)
    implements TfArg<String> {
  Ec2TransitGatewayMulticastSupport.variable(String name)
    : this._(TfArg.variable(name));
  Ec2TransitGatewayMulticastSupport.expression(String template)
    : this._(TfArg.expression(template));
  const Ec2TransitGatewayMulticastSupport.arg(TfArg<String> arg) : this._(arg);

  static const enable = Ec2TransitGatewayMulticastSupport._(
    TfArgLiteral('enable'),
  );
  static const disable = Ec2TransitGatewayMulticastSupport._(
    TfArgLiteral('disable'),
  );

  static const List<Ec2TransitGatewayMulticastSupport> values = [
    enable,
    disable,
  ];
}

/// Ec2 Transit Gateway Security Group Referencing enum for `security_group_referencing_support`.
extension type const Ec2TransitGatewaySecurityGroupReferencingSupport._(
  TfArg<String> _
) implements TfArg<String> {
  Ec2TransitGatewaySecurityGroupReferencingSupport.variable(String name)
    : this._(TfArg.variable(name));
  Ec2TransitGatewaySecurityGroupReferencingSupport.expression(String template)
    : this._(TfArg.expression(template));
  const Ec2TransitGatewaySecurityGroupReferencingSupport.arg(TfArg<String> arg)
    : this._(arg);

  static const enable = Ec2TransitGatewaySecurityGroupReferencingSupport._(
    TfArgLiteral('enable'),
  );
  static const disable = Ec2TransitGatewaySecurityGroupReferencingSupport._(
    TfArgLiteral('disable'),
  );

  static const List<Ec2TransitGatewaySecurityGroupReferencingSupport> values = [
    enable,
    disable,
  ];
}

/// Ec2 Transit Gateway Vpn Ecmp enum for `vpn_ecmp_support`.
extension type const Ec2TransitGatewayVpnEcmpSupport._(TfArg<String> _)
    implements TfArg<String> {
  Ec2TransitGatewayVpnEcmpSupport.variable(String name)
    : this._(TfArg.variable(name));
  Ec2TransitGatewayVpnEcmpSupport.expression(String template)
    : this._(TfArg.expression(template));
  const Ec2TransitGatewayVpnEcmpSupport.arg(TfArg<String> arg) : this._(arg);

  static const enable = Ec2TransitGatewayVpnEcmpSupport._(
    TfArgLiteral('enable'),
  );
  static const disable = Ec2TransitGatewayVpnEcmpSupport._(
    TfArgLiteral('disable'),
  );

  static const List<Ec2TransitGatewayVpnEcmpSupport> values = [enable, disable];
}

/// Factory wrapper for `aws_ec2_transit_gateway`.
final class AwsEc2TransitGateway extends Resource {
  static const String tfType = 'aws_ec2_transit_gateway';

  AwsEc2TransitGateway(
    super.localName, {
    TfArg<num>? amazonSideAsn,
    Ec2TransitGatewayAutoAcceptSharedAttachments? autoAcceptSharedAttachments,
    Ec2TransitGatewayDefaultRouteTableAssociation? defaultRouteTableAssociation,
    Ec2TransitGatewayDefaultRouteTablePropagation? defaultRouteTablePropagation,
    TfArg<String>? description,
    Ec2TransitGatewayDnsSupport? dnsSupport,
    Ec2TransitGatewayEncryptionSupport? encryptionSupport,
    Ec2TransitGatewayMulticastSupport? multicastSupport,
    TfArg<String>? region,
    Ec2TransitGatewaySecurityGroupReferencingSupport?
    securityGroupReferencingSupport,
    TfArg<Map<String, String>>? tags,
    TfArg<List<String>>? transitGatewayCidrBlocks,
    Ec2TransitGatewayVpnEcmpSupport? vpnEcmpSupport,
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
  TfRef<num> get amazonSideAsn => TfRef.attribute<num>(this, 'amazon_side_asn');

  /// Reference to `auto_accept_shared_attachments` attribute.
  TfRef<String> get autoAcceptSharedAttachments =>
      TfRef.attribute<String>(this, 'auto_accept_shared_attachments');

  /// Reference to `default_route_table_association` attribute.
  TfRef<String> get defaultRouteTableAssociation =>
      TfRef.attribute<String>(this, 'default_route_table_association');

  /// Reference to `default_route_table_propagation` attribute.
  TfRef<String> get defaultRouteTablePropagation =>
      TfRef.attribute<String>(this, 'default_route_table_propagation');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `dns_support` attribute.
  TfRef<String> get dnsSupport => TfRef.attribute<String>(this, 'dns_support');

  /// Reference to `encryption_support` attribute.
  TfRef<String> get encryptionSupport =>
      TfRef.attribute<String>(this, 'encryption_support');

  /// Reference to `multicast_support` attribute.
  TfRef<String> get multicastSupport =>
      TfRef.attribute<String>(this, 'multicast_support');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `security_group_referencing_support` attribute.
  TfRef<String> get securityGroupReferencingSupport =>
      TfRef.attribute<String>(this, 'security_group_referencing_support');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `transit_gateway_cidr_blocks` attribute.
  TfRef<List<String>> get transitGatewayCidrBlocks =>
      TfRef.attribute<List<String>>(this, 'transit_gateway_cidr_blocks');

  /// Reference to `vpn_ecmp_support` attribute.
  TfRef<String> get vpnEcmpSupport =>
      TfRef.attribute<String>(this, 'vpn_ecmp_support');
}
