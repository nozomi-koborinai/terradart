// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_networkmanager_dx_gateway_attachment`.
const Set<String> _awsNetworkmanagerDxGatewayAttachmentSensitive = <String>{};

/// Factory wrapper for `aws_networkmanager_dx_gateway_attachment`.
final class AwsNetworkmanagerDxGatewayAttachment extends Resource {
  static const String tfType = 'aws_networkmanager_dx_gateway_attachment';

  AwsNetworkmanagerDxGatewayAttachment({
    required super.localName,
    required TfArg<String> coreNetworkId,
    required TfArg<String> directConnectGatewayArn,
    required TfArg<List<String>> edgeLocations,
    TfArg<String>? routingPolicyLabel,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'core_network_id': coreNetworkId,
           'direct_connect_gateway_arn': directConnectGatewayArn,
           'edge_locations': edgeLocations,
           'routing_policy_label': ?routingPolicyLabel,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsNetworkmanagerDxGatewayAttachmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsNetworkmanagerDxGatewayAttachment>`.
  RefTo<AwsNetworkmanagerDxGatewayAttachment> get ref => RefTo.of(this);

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

  /// Reference to `owner_account_id` attribute.
  TfRef<String> get ownerAccountId =>
      TfRef.attribute<String>(this, 'owner_account_id');

  /// Reference to `segment_name` attribute.
  TfRef<String> get segmentName =>
      TfRef.attribute<String>(this, 'segment_name');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `core_network_id` attribute.
  TfRef<String> get coreNetworkIdRef =>
      TfRef.attribute<String>(this, 'core_network_id');

  /// Reference to `direct_connect_gateway_arn` attribute.
  TfRef<String> get directConnectGatewayArnRef =>
      TfRef.attribute<String>(this, 'direct_connect_gateway_arn');

  /// Reference to `edge_locations` attribute.
  TfRef<List<String>> get edgeLocationsRef =>
      TfRef.attribute<List<String>>(this, 'edge_locations');

  /// Reference to `routing_policy_label` attribute.
  TfRef<String> get routingPolicyLabelRef =>
      TfRef.attribute<String>(this, 'routing_policy_label');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
