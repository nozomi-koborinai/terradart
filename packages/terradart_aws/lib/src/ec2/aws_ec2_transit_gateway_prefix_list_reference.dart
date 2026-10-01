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

  AwsEc2TransitGatewayPrefixListReference(
    super.localName, {
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
           'blackhole': ?blackhole,
           'prefix_list_id': prefixListId,
           'region': ?region,
           'transit_gateway_attachment_id': ?transitGatewayAttachmentId,
           'transit_gateway_route_table_id': transitGatewayRouteTableId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsEc2TransitGatewayPrefixListReferenceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEc2TransitGatewayPrefixListReference>`.
  RefTo<AwsEc2TransitGatewayPrefixListReference> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `prefix_list_owner_id` attribute.
  TfRef<String> get prefixListOwnerId =>
      TfRef.attribute<String>(this, 'prefix_list_owner_id');

  /// Reference to `blackhole` attribute.
  TfRef<bool> get blackhole => TfRef.attribute<bool>(this, 'blackhole');

  /// Reference to `prefix_list_id` attribute.
  TfRef<String> get prefixListId =>
      TfRef.attribute<String>(this, 'prefix_list_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `transit_gateway_attachment_id` attribute.
  TfRef<String> get transitGatewayAttachmentId =>
      TfRef.attribute<String>(this, 'transit_gateway_attachment_id');

  /// Reference to `transit_gateway_route_table_id` attribute.
  TfRef<String> get transitGatewayRouteTableId =>
      TfRef.attribute<String>(this, 'transit_gateway_route_table_id');
}
