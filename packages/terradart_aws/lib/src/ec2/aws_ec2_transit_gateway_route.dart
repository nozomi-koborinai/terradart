// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_transit_gateway_route`.
const Set<String> _awsEc2TransitGatewayRouteSensitive = <String>{};

/// Factory wrapper for `aws_ec2_transit_gateway_route`.
final class AwsEc2TransitGatewayRoute extends Resource {
  static const String tfType = 'aws_ec2_transit_gateway_route';

  AwsEc2TransitGatewayRoute({
    required super.localName,
    TfArg<bool>? blackhole,
    required TfArg<String> destinationCidrBlock,
    TfArg<String>? region,
    TfArg<String>? transitGatewayAttachmentId,
    required TfArg<String> transitGatewayRouteTableId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (blackhole != null) 'blackhole': blackhole,
           'destination_cidr_block': destinationCidrBlock,
           if (region != null) 'region': region,
           if (transitGatewayAttachmentId != null)
             'transit_gateway_attachment_id': transitGatewayAttachmentId,
           'transit_gateway_route_table_id': transitGatewayRouteTableId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2TransitGatewayRouteSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
