// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_transit_gateway_prefix_list_reference`.
const Set<String> _awsEc2TransitGatewayPrefixListReferenceSensitive =
    <String>{};

/// Factory wrapper for `aws_ec2_transit_gateway_prefix_list_reference`.
final class AwsEc2TransitGatewayPrefixListReference extends Resource {
  static const String tfType = 'aws_ec2_transit_gateway_prefix_list_reference';

  AwsEc2TransitGatewayPrefixListReference({
    required super.localName,
    TfArg<bool>? blackhole,
    required TfArg<String> prefixListId,
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
           'prefix_list_id': prefixListId,
           if (region != null) 'region': region,
           if (transitGatewayAttachmentId != null)
             'transit_gateway_attachment_id': transitGatewayAttachmentId,
           'transit_gateway_route_table_id': transitGatewayRouteTableId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsEc2TransitGatewayPrefixListReferenceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `prefix_list_owner_id` attribute.
  TfRef<String> get prefixListOwnerId =>
      TfRef.attribute<String>(this, 'prefix_list_owner_id');
}
