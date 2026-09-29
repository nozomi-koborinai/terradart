// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_vpc.dart' show AwsVpc;

/// Sensitive field paths for `aws_vpn_gateway_attachment`.
const Set<String> _awsVpnGatewayAttachmentSensitive = <String>{};

/// Factory wrapper for `aws_vpn_gateway_attachment`.
final class AwsVpnGatewayAttachment extends Resource {
  static const String tfType = 'aws_vpn_gateway_attachment';

  AwsVpnGatewayAttachment({
    required super.localName,
    TfArg<String>? region,
    required RefTo<AwsVpc> vpcId,
    required TfArg<String> vpnGatewayId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'vpc_id': vpcId.encodeAs('id'),
           'vpn_gateway_id': vpnGatewayId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpnGatewayAttachmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsVpnGatewayAttachment>`.
  RefTo<AwsVpnGatewayAttachment> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
