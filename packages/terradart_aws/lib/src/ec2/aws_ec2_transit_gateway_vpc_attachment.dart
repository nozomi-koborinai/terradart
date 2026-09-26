// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_transit_gateway_vpc_attachment`.
const Set<String> _awsEc2TransitGatewayVpcAttachmentSensitive = <String>{};

/// Factory wrapper for `aws_ec2_transit_gateway_vpc_attachment`.
final class AwsEc2TransitGatewayVpcAttachment extends Resource {
  static const String tfType = 'aws_ec2_transit_gateway_vpc_attachment';

  AwsEc2TransitGatewayVpcAttachment({
    required super.localName,
    TfArg<String>? applianceModeSupport,
    TfArg<String>? dnsSupport,
    TfArg<String>? ipv6Support,
    TfArg<String>? region,
    TfArg<String>? securityGroupReferencingSupport,
    required TfArg<List<String>> subnetIds,
    TfArg<Map<String, String>>? tags,
    TfArg<bool>? transitGatewayDefaultRouteTableAssociation,
    TfArg<bool>? transitGatewayDefaultRouteTablePropagation,
    required TfArg<String> transitGatewayId,
    required TfArg<String> vpcId,
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
           'subnet_ids': subnetIds,
           if (tags != null) 'tags': tags,
           if (transitGatewayDefaultRouteTableAssociation != null)
             'transit_gateway_default_route_table_association':
                 transitGatewayDefaultRouteTableAssociation,
           if (transitGatewayDefaultRouteTablePropagation != null)
             'transit_gateway_default_route_table_propagation':
                 transitGatewayDefaultRouteTablePropagation,
           'transit_gateway_id': transitGatewayId,
           'vpc_id': vpcId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsEc2TransitGatewayVpcAttachmentSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `vpc_owner_id` attribute.
  TfRef<String> get vpcOwnerId => TfRef.attribute<String>(this, 'vpc_owner_id');
}
