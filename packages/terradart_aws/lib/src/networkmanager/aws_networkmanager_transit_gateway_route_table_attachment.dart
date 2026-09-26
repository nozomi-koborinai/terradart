// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_networkmanager_transit_gateway_route_table_attachment`.
const Set<String>
_awsNetworkmanagerTransitGatewayRouteTableAttachmentSensitive = <String>{};

/// Factory wrapper for `aws_networkmanager_transit_gateway_route_table_attachment`.
final class AwsNetworkmanagerTransitGatewayRouteTableAttachment
    extends Resource {
  static const String tfType =
      'aws_networkmanager_transit_gateway_route_table_attachment';

  AwsNetworkmanagerTransitGatewayRouteTableAttachment({
    required super.localName,
    required TfArg<String> peeringId,
    TfArg<String>? routingPolicyLabel,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> transitGatewayRouteTableArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'peering_id': peeringId,
           if (routingPolicyLabel != null)
             'routing_policy_label': routingPolicyLabel,
           if (tags != null) 'tags': tags,
           'transit_gateway_route_table_arn': transitGatewayRouteTableArn,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsNetworkmanagerTransitGatewayRouteTableAttachmentSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `attachment_policy_rule_number` attribute.
  TfRef<num> get attachmentPolicyRuleNumber =>
      TfRef.attribute<num>(this, 'attachment_policy_rule_number');

  /// Reference to `attachment_type` attribute.
  TfRef<String> get attachmentType =>
      TfRef.attribute<String>(this, 'attachment_type');

  /// Reference to `core_network_arn` attribute.
  TfRef<String> get coreNetworkArn =>
      TfRef.attribute<String>(this, 'core_network_arn');

  /// Reference to `core_network_id` attribute.
  TfRef<String> get coreNetworkId =>
      TfRef.attribute<String>(this, 'core_network_id');

  /// Reference to `edge_location` attribute.
  TfRef<String> get edgeLocation =>
      TfRef.attribute<String>(this, 'edge_location');

  /// Reference to `owner_account_id` attribute.
  TfRef<String> get ownerAccountId =>
      TfRef.attribute<String>(this, 'owner_account_id');

  /// Reference to `resource_arn` attribute.
  TfRef<String> get resourceArn =>
      TfRef.attribute<String>(this, 'resource_arn');

  /// Reference to `segment_name` attribute.
  TfRef<String> get segmentName =>
      TfRef.attribute<String>(this, 'segment_name');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}
