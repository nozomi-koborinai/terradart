// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_transit_gateway_multicast_group_member`.
const Set<String> _awsEc2TransitGatewayMulticastGroupMemberSensitive =
    <String>{};

/// Factory wrapper for `aws_ec2_transit_gateway_multicast_group_member`.
final class AwsEc2TransitGatewayMulticastGroupMember extends Resource {
  static const String tfType = 'aws_ec2_transit_gateway_multicast_group_member';

  AwsEc2TransitGatewayMulticastGroupMember({
    required super.localName,
    required TfArg<String> groupIpAddress,
    required TfArg<String> networkInterfaceId,
    TfArg<String>? region,
    required TfArg<String> transitGatewayMulticastDomainId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'group_ip_address': groupIpAddress,
           'network_interface_id': networkInterfaceId,
           if (region != null) 'region': region,
           'transit_gateway_multicast_domain_id':
               transitGatewayMulticastDomainId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsEc2TransitGatewayMulticastGroupMemberSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
