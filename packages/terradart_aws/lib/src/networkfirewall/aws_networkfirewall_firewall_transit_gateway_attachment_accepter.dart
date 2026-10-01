// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_networkfirewall_firewall_transit_gateway_attachment_accepter`.
const Set<String>
_awsNetworkfirewallFirewallTransitGatewayAttachmentAccepterSensitive =
    <String>{};

/// Factory wrapper for `aws_networkfirewall_firewall_transit_gateway_attachment_accepter`.
final class AwsNetworkfirewallFirewallTransitGatewayAttachmentAccepter
    extends Resource {
  static const String tfType =
      'aws_networkfirewall_firewall_transit_gateway_attachment_accepter';

  AwsNetworkfirewallFirewallTransitGatewayAttachmentAccepter({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> transitGatewayAttachmentId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'region': ?region,
           'transit_gateway_attachment_id': transitGatewayAttachmentId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsNetworkfirewallFirewallTransitGatewayAttachmentAccepterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsNetworkfirewallFirewallTransitGatewayAttachmentAccepter>`.
  RefTo<AwsNetworkfirewallFirewallTransitGatewayAttachmentAccepter> get ref =>
      RefTo.of(this);

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `transit_gateway_attachment_id` attribute.
  TfRef<String> get transitGatewayAttachmentId =>
      TfRef.attribute<String>(this, 'transit_gateway_attachment_id');
}
