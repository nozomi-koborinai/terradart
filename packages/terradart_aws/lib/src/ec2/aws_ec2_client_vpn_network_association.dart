// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_subnet.dart' show AwsSubnet;

/// Sensitive field paths for `aws_ec2_client_vpn_network_association`.
const Set<String> _awsEc2ClientVpnNetworkAssociationSensitive = <String>{};

/// Factory wrapper for `aws_ec2_client_vpn_network_association`.
final class AwsEc2ClientVpnNetworkAssociation extends Resource {
  static const String tfType = 'aws_ec2_client_vpn_network_association';

  AwsEc2ClientVpnNetworkAssociation({
    required super.localName,
    required TfArg<String> clientVpnEndpointId,
    TfArg<String>? region,
    required RefTo<AwsSubnet> subnetId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'client_vpn_endpoint_id': clientVpnEndpointId,
           if (region != null) 'region': region,
           'subnet_id': subnetId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsEc2ClientVpnNetworkAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEc2ClientVpnNetworkAssociation>`.
  RefTo<AwsEc2ClientVpnNetworkAssociation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `association_id` attribute.
  TfRef<String> get associationId =>
      TfRef.attribute<String>(this, 'association_id');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');
}
