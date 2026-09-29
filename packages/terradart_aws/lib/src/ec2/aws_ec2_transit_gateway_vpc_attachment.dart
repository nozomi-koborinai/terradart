// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../ec2/aws_vpc.dart' show AwsVpc;

/// Sensitive field paths for `aws_ec2_transit_gateway_vpc_attachment`.
const Set<String> _awsEc2TransitGatewayVpcAttachmentSensitive = <String>{};

/// Ec2 Transit Gateway Vpc Attachment Appliance Mode enum for `appliance_mode_support`.
enum Ec2TransitGatewayVpcAttachmentApplianceModeSupport
    implements TerraformEnum {
  enable('enable'),
  disable('disable');

  const Ec2TransitGatewayVpcAttachmentApplianceModeSupport(this.terraformValue);
  @override
  final String terraformValue;
}

/// Ec2 Transit Gateway Vpc Attachment Dns enum for `dns_support`.
enum Ec2TransitGatewayVpcAttachmentDnsSupport implements TerraformEnum {
  enable('enable'),
  disable('disable');

  const Ec2TransitGatewayVpcAttachmentDnsSupport(this.terraformValue);
  @override
  final String terraformValue;
}

/// Ec2 Transit Gateway Vpc Attachment Ipv6 enum for `ipv6_support`.
enum Ec2TransitGatewayVpcAttachmentIpv6Support implements TerraformEnum {
  enable('enable'),
  disable('disable');

  const Ec2TransitGatewayVpcAttachmentIpv6Support(this.terraformValue);
  @override
  final String terraformValue;
}

/// Ec2 Transit Gateway Vpc Attachment Security Group Referencing enum for `security_group_referencing_support`.
enum Ec2TransitGatewayVpcAttachmentSecurityGroupReferencingSupport
    implements TerraformEnum {
  enable('enable'),
  disable('disable');

  const Ec2TransitGatewayVpcAttachmentSecurityGroupReferencingSupport(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_ec2_transit_gateway_vpc_attachment`.
final class AwsEc2TransitGatewayVpcAttachment extends Resource {
  static const String tfType = 'aws_ec2_transit_gateway_vpc_attachment';

  AwsEc2TransitGatewayVpcAttachment({
    required super.localName,
    TfArg<Ec2TransitGatewayVpcAttachmentApplianceModeSupport>?
    applianceModeSupport,
    TfArg<Ec2TransitGatewayVpcAttachmentDnsSupport>? dnsSupport,
    TfArg<Ec2TransitGatewayVpcAttachmentIpv6Support>? ipv6Support,
    TfArg<String>? region,
    TfArg<Ec2TransitGatewayVpcAttachmentSecurityGroupReferencingSupport>?
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
           if (applianceModeSupport != null)
             'appliance_mode_support': applianceModeSupport,
           if (dnsSupport != null) 'dns_support': dnsSupport,
           if (ipv6Support != null) 'ipv6_support': ipv6Support,
           if (region != null) 'region': region,
           if (securityGroupReferencingSupport != null)
             'security_group_referencing_support':
                 securityGroupReferencingSupport,
           'subnet_ids': subnetIds.encodeAs('id'),
           if (tags != null) 'tags': tags,
           if (transitGatewayDefaultRouteTableAssociation != null)
             'transit_gateway_default_route_table_association':
                 transitGatewayDefaultRouteTableAssociation,
           if (transitGatewayDefaultRouteTablePropagation != null)
             'transit_gateway_default_route_table_propagation':
                 transitGatewayDefaultRouteTablePropagation,
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
}
