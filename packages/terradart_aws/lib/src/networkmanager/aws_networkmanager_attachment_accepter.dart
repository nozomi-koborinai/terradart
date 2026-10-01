// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_networkmanager_attachment_accepter`.
const Set<String> _awsNetworkmanagerAttachmentAccepterSensitive = <String>{};

/// Networkmanager Attachment Accepter Attachment enum for `attachment_type`.
extension type const NetworkmanagerAttachmentAccepterAttachmentType._(
  TfArg<String> _
) implements TfArg<String> {
  NetworkmanagerAttachmentAccepterAttachmentType.variable(String name)
    : this._(TfArg.variable(name));
  NetworkmanagerAttachmentAccepterAttachmentType.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkmanagerAttachmentAccepterAttachmentType.arg(TfArg<String> arg)
    : this._(arg);

  static const connect = NetworkmanagerAttachmentAccepterAttachmentType._(
    TfArgLiteral('CONNECT'),
  );
  static const siteToSiteVpn = NetworkmanagerAttachmentAccepterAttachmentType._(
    TfArgLiteral('SITE_TO_SITE_VPN'),
  );
  static const vpc = NetworkmanagerAttachmentAccepterAttachmentType._(
    TfArgLiteral('VPC'),
  );
  static const directConnectGateway =
      NetworkmanagerAttachmentAccepterAttachmentType._(
        TfArgLiteral('DIRECT_CONNECT_GATEWAY'),
      );
  static const transitGatewayRouteTable =
      NetworkmanagerAttachmentAccepterAttachmentType._(
        TfArgLiteral('TRANSIT_GATEWAY_ROUTE_TABLE'),
      );

  static const List<NetworkmanagerAttachmentAccepterAttachmentType> values = [
    connect,
    siteToSiteVpn,
    vpc,
    directConnectGateway,
    transitGatewayRouteTable,
  ];
}

/// Factory wrapper for `aws_networkmanager_attachment_accepter`.
final class AwsNetworkmanagerAttachmentAccepter extends Resource {
  static const String tfType = 'aws_networkmanager_attachment_accepter';

  AwsNetworkmanagerAttachmentAccepter(
    super.localName, {
    required TfArg<String> attachmentId,
    required NetworkmanagerAttachmentAccepterAttachmentType attachmentType,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'attachment_id': attachmentId,
           'attachment_type': attachmentType,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsNetworkmanagerAttachmentAccepterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsNetworkmanagerAttachmentAccepter>`.
  RefTo<AwsNetworkmanagerAttachmentAccepter> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `attachment_policy_rule_number` attribute.
  TfRef<num> get attachmentPolicyRuleNumber =>
      TfRef.attribute<num>(this, 'attachment_policy_rule_number');

  /// Reference to `core_network_arn` attribute.
  TfRef<String> get coreNetworkArn =>
      TfRef.attribute<String>(this, 'core_network_arn');

  /// Reference to `core_network_id` attribute.
  TfRef<String> get coreNetworkId =>
      TfRef.attribute<String>(this, 'core_network_id');

  /// Reference to `edge_location` attribute.
  TfRef<String> get edgeLocation =>
      TfRef.attribute<String>(this, 'edge_location');

  /// Reference to `edge_locations` attribute.
  TfRef<List<String>> get edgeLocations =>
      TfRef.attribute<List<String>>(this, 'edge_locations');

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

  /// Reference to `attachment_id` attribute.
  TfRef<String> get attachmentId =>
      TfRef.attribute<String>(this, 'attachment_id');

  /// Reference to `attachment_type` attribute.
  TfRef<String> get attachmentType =>
      TfRef.attribute<String>(this, 'attachment_type');
}
