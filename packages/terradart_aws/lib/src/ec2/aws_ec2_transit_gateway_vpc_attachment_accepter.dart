// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_transit_gateway_vpc_attachment_accepter`.
const Set<String> _awsEc2TransitGatewayVpcAttachmentAccepterSensitive =
    <String>{};

/// Factory wrapper for `aws_ec2_transit_gateway_vpc_attachment_accepter`.
final class AwsEc2TransitGatewayVpcAttachmentAccepter extends Resource {
  static const String tfType =
      'aws_ec2_transit_gateway_vpc_attachment_accepter';

  AwsEc2TransitGatewayVpcAttachmentAccepter({
    required super.localName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> transitGatewayAttachmentId,
    TfArg<bool>? transitGatewayDefaultRouteTableAssociation,
    TfArg<bool>? transitGatewayDefaultRouteTablePropagation,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'transit_gateway_attachment_id': transitGatewayAttachmentId,
           if (transitGatewayDefaultRouteTableAssociation != null)
             'transit_gateway_default_route_table_association':
                 transitGatewayDefaultRouteTableAssociation,
           if (transitGatewayDefaultRouteTablePropagation != null)
             'transit_gateway_default_route_table_propagation':
                 transitGatewayDefaultRouteTablePropagation,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsEc2TransitGatewayVpcAttachmentAccepterSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `appliance_mode_support` attribute.
  TfRef<String> get applianceModeSupport =>
      TfRef.attribute<String>(this, 'appliance_mode_support');

  /// Reference to `dns_support` attribute.
  TfRef<String> get dnsSupport => TfRef.attribute<String>(this, 'dns_support');

  /// Reference to `ipv6_support` attribute.
  TfRef<String> get ipv6Support =>
      TfRef.attribute<String>(this, 'ipv6_support');

  /// Reference to `security_group_referencing_support` attribute.
  TfRef<String> get securityGroupReferencingSupport =>
      TfRef.attribute<String>(this, 'security_group_referencing_support');

  /// Reference to `subnet_ids` attribute.
  TfRef<List<String>> get subnetIds =>
      TfRef.attribute<List<String>>(this, 'subnet_ids');

  /// Reference to `transit_gateway_id` attribute.
  TfRef<String> get transitGatewayId =>
      TfRef.attribute<String>(this, 'transit_gateway_id');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');

  /// Reference to `vpc_owner_id` attribute.
  TfRef<String> get vpcOwnerId => TfRef.attribute<String>(this, 'vpc_owner_id');
}
