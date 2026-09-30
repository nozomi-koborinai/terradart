// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_transit_gateway_multicast_group_source`.
const Set<String> _awsEc2TransitGatewayMulticastGroupSourceSensitive =
    <String>{};

/// Factory wrapper for `aws_ec2_transit_gateway_multicast_group_source`.
final class AwsEc2TransitGatewayMulticastGroupSource extends Resource {
  static const String tfType = 'aws_ec2_transit_gateway_multicast_group_source';

  AwsEc2TransitGatewayMulticastGroupSource({
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
           'region': ?region,
           'transit_gateway_multicast_domain_id':
               transitGatewayMulticastDomainId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsEc2TransitGatewayMulticastGroupSourceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEc2TransitGatewayMulticastGroupSource>`.
  RefTo<AwsEc2TransitGatewayMulticastGroupSource> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `group_ip_address` attribute.
  TfRef<String> get groupIpAddressRef =>
      TfRef.attribute<String>(this, 'group_ip_address');

  /// Reference to `network_interface_id` attribute.
  TfRef<String> get networkInterfaceIdRef =>
      TfRef.attribute<String>(this, 'network_interface_id');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `transit_gateway_multicast_domain_id` attribute.
  TfRef<String> get transitGatewayMulticastDomainIdRef =>
      TfRef.attribute<String>(this, 'transit_gateway_multicast_domain_id');
}
