// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_transit_gateway_connect`.
const Set<String> _awsEc2TransitGatewayConnectSensitive = <String>{};

/// Factory wrapper for `aws_ec2_transit_gateway_connect`.
final class AwsEc2TransitGatewayConnect extends Resource {
  static const String tfType = 'aws_ec2_transit_gateway_connect';

  AwsEc2TransitGatewayConnect({
    required super.localName,
    TfArg<String>? protocol,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<bool>? transitGatewayDefaultRouteTableAssociation,
    TfArg<bool>? transitGatewayDefaultRouteTablePropagation,
    required TfArg<String> transitGatewayId,
    required TfArg<String> transportAttachmentId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (protocol != null) 'protocol': protocol,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (transitGatewayDefaultRouteTableAssociation != null)
             'transit_gateway_default_route_table_association':
                 transitGatewayDefaultRouteTableAssociation,
           if (transitGatewayDefaultRouteTablePropagation != null)
             'transit_gateway_default_route_table_propagation':
                 transitGatewayDefaultRouteTablePropagation,
           'transit_gateway_id': transitGatewayId,
           'transport_attachment_id': transportAttachmentId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2TransitGatewayConnectSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
