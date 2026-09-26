// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_transit_gateway_multicast_domain_association`.
const Set<String> _awsEc2TransitGatewayMulticastDomainAssociationSensitive =
    <String>{};

/// Factory wrapper for `aws_ec2_transit_gateway_multicast_domain_association`.
final class AwsEc2TransitGatewayMulticastDomainAssociation extends Resource {
  static const String tfType =
      'aws_ec2_transit_gateway_multicast_domain_association';

  AwsEc2TransitGatewayMulticastDomainAssociation({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> subnetId,
    required TfArg<String> transitGatewayAttachmentId,
    required TfArg<String> transitGatewayMulticastDomainId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'subnet_id': subnetId,
           'transit_gateway_attachment_id': transitGatewayAttachmentId,
           'transit_gateway_multicast_domain_id':
               transitGatewayMulticastDomainId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsEc2TransitGatewayMulticastDomainAssociationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
