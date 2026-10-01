// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../ec2/aws_vpc.dart' show AwsVpc;

/// Sensitive field paths for `aws_ec2_transit_gateway_vpc_attachment`.
const Set<String> _awsEc2TransitGatewayVpcAttachmentSensitive = <String>{};

/// Ec2 Transit Gateway Vpc Attachment Appliance Mode enum for `appliance_mode_support`.
extension type const Ec2TransitGatewayVpcAttachmentApplianceModeSupport._(
  TfArg<String> _
) implements TfArg<String> {
  Ec2TransitGatewayVpcAttachmentApplianceModeSupport.variable(String name)
    : this._(TfArg.variable(name));
  Ec2TransitGatewayVpcAttachmentApplianceModeSupport.expression(String template)
    : this._(TfArg.expression(template));
  const Ec2TransitGatewayVpcAttachmentApplianceModeSupport.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const enable = Ec2TransitGatewayVpcAttachmentApplianceModeSupport._(
    TfArgLiteral('enable'),
  );
  static const disable = Ec2TransitGatewayVpcAttachmentApplianceModeSupport._(
    TfArgLiteral('disable'),
  );

  static const List<Ec2TransitGatewayVpcAttachmentApplianceModeSupport> values =
      [enable, disable];
}

/// Ec2 Transit Gateway Vpc Attachment Dns enum for `dns_support`.
extension type const Ec2TransitGatewayVpcAttachmentDnsSupport._(TfArg<String> _)
    implements TfArg<String> {
  Ec2TransitGatewayVpcAttachmentDnsSupport.variable(String name)
    : this._(TfArg.variable(name));
  Ec2TransitGatewayVpcAttachmentDnsSupport.expression(String template)
    : this._(TfArg.expression(template));
  const Ec2TransitGatewayVpcAttachmentDnsSupport.arg(TfArg<String> arg)
    : this._(arg);

  static const enable = Ec2TransitGatewayVpcAttachmentDnsSupport._(
    TfArgLiteral('enable'),
  );
  static const disable = Ec2TransitGatewayVpcAttachmentDnsSupport._(
    TfArgLiteral('disable'),
  );

  static const List<Ec2TransitGatewayVpcAttachmentDnsSupport> values = [
    enable,
    disable,
  ];
}

/// Ec2 Transit Gateway Vpc Attachment Ipv6 enum for `ipv6_support`.
extension type const Ec2TransitGatewayVpcAttachmentIpv6Support._(
  TfArg<String> _
) implements TfArg<String> {
  Ec2TransitGatewayVpcAttachmentIpv6Support.variable(String name)
    : this._(TfArg.variable(name));
  Ec2TransitGatewayVpcAttachmentIpv6Support.expression(String template)
    : this._(TfArg.expression(template));
  const Ec2TransitGatewayVpcAttachmentIpv6Support.arg(TfArg<String> arg)
    : this._(arg);

  static const enable = Ec2TransitGatewayVpcAttachmentIpv6Support._(
    TfArgLiteral('enable'),
  );
  static const disable = Ec2TransitGatewayVpcAttachmentIpv6Support._(
    TfArgLiteral('disable'),
  );

  static const List<Ec2TransitGatewayVpcAttachmentIpv6Support> values = [
    enable,
    disable,
  ];
}

/// Ec2 Transit Gateway Vpc Attachment Security Group Referencing enum for `security_group_referencing_support`.
extension type const Ec2TransitGatewayVpcAttachmentSecurityGroupReferencingSupport._(
  TfArg<String> _
) implements TfArg<String> {
  Ec2TransitGatewayVpcAttachmentSecurityGroupReferencingSupport.variable(
    String name,
  ) : this._(TfArg.variable(name));
  Ec2TransitGatewayVpcAttachmentSecurityGroupReferencingSupport.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const Ec2TransitGatewayVpcAttachmentSecurityGroupReferencingSupport.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const enable =
      Ec2TransitGatewayVpcAttachmentSecurityGroupReferencingSupport._(
        TfArgLiteral('enable'),
      );
  static const disable =
      Ec2TransitGatewayVpcAttachmentSecurityGroupReferencingSupport._(
        TfArgLiteral('disable'),
      );

  static const List<
    Ec2TransitGatewayVpcAttachmentSecurityGroupReferencingSupport
  >
  values = [enable, disable];
}

/// Factory wrapper for `aws_ec2_transit_gateway_vpc_attachment`.
final class AwsEc2TransitGatewayVpcAttachment extends Resource {
  static const String tfType = 'aws_ec2_transit_gateway_vpc_attachment';

  AwsEc2TransitGatewayVpcAttachment(
    super.localName, {
    Ec2TransitGatewayVpcAttachmentApplianceModeSupport? applianceModeSupport,
    Ec2TransitGatewayVpcAttachmentDnsSupport? dnsSupport,
    Ec2TransitGatewayVpcAttachmentIpv6Support? ipv6Support,
    TfArg<String>? region,
    Ec2TransitGatewayVpcAttachmentSecurityGroupReferencingSupport?
    securityGroupReferencingSupport,
    required TfArg<List<RefTo<AwsSubnet>>> subnetIds,
    TfArg<Map<String, String>>? tags,
    TfArg<bool>? transitGatewayDefaultRouteTableAssociation,
    TfArg<bool>? transitGatewayDefaultRouteTablePropagation,
    required TfArg<String> transitGatewayId,
    required RefTo<AwsVpc> vpcId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'appliance_mode_support': ?applianceModeSupport,
           'dns_support': ?dnsSupport,
           'ipv6_support': ?ipv6Support,
           'region': ?region,
           'security_group_referencing_support':
               ?securityGroupReferencingSupport,
           'subnet_ids': subnetIds.encodeAs('id'),
           'tags': ?tags,
           'transit_gateway_default_route_table_association':
               ?transitGatewayDefaultRouteTableAssociation,
           'transit_gateway_default_route_table_propagation':
               ?transitGatewayDefaultRouteTablePropagation,
           'transit_gateway_id': transitGatewayId,
           'vpc_id': vpcId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsEc2TransitGatewayVpcAttachmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEc2TransitGatewayVpcAttachment>`.
  RefTo<AwsEc2TransitGatewayVpcAttachment> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `vpc_owner_id` attribute.
  TfRef<String> get vpcOwnerId => TfRef.attribute<String>(this, 'vpc_owner_id');

  /// Reference to `appliance_mode_support` attribute.
  TfRef<String> get applianceModeSupport =>
      TfRef.attribute<String>(this, 'appliance_mode_support');

  /// Reference to `dns_support` attribute.
  TfRef<String> get dnsSupport => TfRef.attribute<String>(this, 'dns_support');

  /// Reference to `ipv6_support` attribute.
  TfRef<String> get ipv6Support =>
      TfRef.attribute<String>(this, 'ipv6_support');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `security_group_referencing_support` attribute.
  TfRef<String> get securityGroupReferencingSupport =>
      TfRef.attribute<String>(this, 'security_group_referencing_support');

  /// Reference to `subnet_ids` attribute.
  TfRef<List<String>> get subnetIds =>
      TfRef.attribute<List<String>>(this, 'subnet_ids');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `transit_gateway_default_route_table_association` attribute.
  TfRef<bool> get transitGatewayDefaultRouteTableAssociation =>
      TfRef.attribute<bool>(
        this,
        'transit_gateway_default_route_table_association',
      );

  /// Reference to `transit_gateway_default_route_table_propagation` attribute.
  TfRef<bool> get transitGatewayDefaultRouteTablePropagation =>
      TfRef.attribute<bool>(
        this,
        'transit_gateway_default_route_table_propagation',
      );

  /// Reference to `transit_gateway_id` attribute.
  TfRef<String> get transitGatewayId =>
      TfRef.attribute<String>(this, 'transit_gateway_id');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');
}
