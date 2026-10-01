// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_client_vpn_route`.
const Set<String> _awsEc2ClientVpnRouteSensitive = <String>{};

/// Factory wrapper for `aws_ec2_client_vpn_route`.
final class AwsEc2ClientVpnRoute extends Resource {
  static const String tfType = 'aws_ec2_client_vpn_route';

  AwsEc2ClientVpnRoute(
    super.localName, {
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
           'description': ?description,
           'destination_cidr_block': destinationCidrBlock,
           'region': ?region,
           'target_vpc_subnet_id': ?targetVpcSubnetId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2ClientVpnRouteSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEc2ClientVpnRoute>`.
  RefTo<AwsEc2ClientVpnRoute> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `origin` attribute.
  TfRef<String> get origin => TfRef.attribute<String>(this, 'origin');

  /// Reference to `transit_gateway_attachment_id` attribute.
  TfRef<String> get transitGatewayAttachmentId =>
      TfRef.attribute<String>(this, 'transit_gateway_attachment_id');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `client_vpn_endpoint_id` attribute.
  TfRef<String> get clientVpnEndpointId =>
      TfRef.attribute<String>(this, 'client_vpn_endpoint_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `destination_cidr_block` attribute.
  TfRef<String> get destinationCidrBlock =>
      TfRef.attribute<String>(this, 'destination_cidr_block');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `target_vpc_subnet_id` attribute.
  TfRef<String> get targetVpcSubnetId =>
      TfRef.attribute<String>(this, 'target_vpc_subnet_id');
}
