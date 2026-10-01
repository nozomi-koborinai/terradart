// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_networkmanager_transit_gateway_peering`.
const Set<String> _awsNetworkmanagerTransitGatewayPeeringSensitive = <String>{};

/// Factory wrapper for `aws_networkmanager_transit_gateway_peering`.
final class AwsNetworkmanagerTransitGatewayPeering extends Resource {
  static const String tfType = 'aws_networkmanager_transit_gateway_peering';

  AwsNetworkmanagerTransitGatewayPeering({
    required super.localName,
    required TfArg<String> coreNetworkId,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> transitGatewayArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'core_network_id': coreNetworkId,
           'tags': ?tags,
           'transit_gateway_arn': transitGatewayArn,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsNetworkmanagerTransitGatewayPeeringSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsNetworkmanagerTransitGatewayPeering>`.
  RefTo<AwsNetworkmanagerTransitGatewayPeering> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `core_network_arn` attribute.
  TfRef<String> get coreNetworkArn =>
      TfRef.attribute<String>(this, 'core_network_arn');

  /// Reference to `edge_location` attribute.
  TfRef<String> get edgeLocation =>
      TfRef.attribute<String>(this, 'edge_location');

  /// Reference to `owner_account_id` attribute.
  TfRef<String> get ownerAccountId =>
      TfRef.attribute<String>(this, 'owner_account_id');

  /// Reference to `peering_type` attribute.
  TfRef<String> get peeringType =>
      TfRef.attribute<String>(this, 'peering_type');

  /// Reference to `resource_arn` attribute.
  TfRef<String> get resourceArn =>
      TfRef.attribute<String>(this, 'resource_arn');

  /// Reference to `transit_gateway_peering_attachment_id` attribute.
  TfRef<String> get transitGatewayPeeringAttachmentId =>
      TfRef.attribute<String>(this, 'transit_gateway_peering_attachment_id');

  /// Reference to `core_network_id` attribute.
  TfRef<String> get coreNetworkId =>
      TfRef.attribute<String>(this, 'core_network_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `transit_gateway_arn` attribute.
  TfRef<String> get transitGatewayArn =>
      TfRef.attribute<String>(this, 'transit_gateway_arn');
}
