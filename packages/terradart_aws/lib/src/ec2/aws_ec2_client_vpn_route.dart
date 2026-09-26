// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_client_vpn_route`.
const Set<String> _awsEc2ClientVpnRouteSensitive = <String>{};

/// Factory wrapper for `aws_ec2_client_vpn_route`.
final class AwsEc2ClientVpnRoute extends Resource {
  static const String tfType = 'aws_ec2_client_vpn_route';

  AwsEc2ClientVpnRoute({
    required super.localName,
    required TfArg<String> clientVpnEndpointId,
    TfArg<String>? description,
    required TfArg<String> destinationCidrBlock,
    TfArg<String>? region,
    TfArg<String>? targetVpcSubnetId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'client_vpn_endpoint_id': clientVpnEndpointId,
           if (description != null) 'description': description,
           'destination_cidr_block': destinationCidrBlock,
           if (region != null) 'region': region,
           if (targetVpcSubnetId != null)
             'target_vpc_subnet_id': targetVpcSubnetId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2ClientVpnRouteSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `origin` attribute.
  TfRef<String> get origin => TfRef.attribute<String>(this, 'origin');

  /// Reference to `transit_gateway_attachment_id` attribute.
  TfRef<String> get transitGatewayAttachmentId =>
      TfRef.attribute<String>(this, 'transit_gateway_attachment_id');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
