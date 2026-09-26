// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_networkmanager_attachment_accepter`.
const Set<String> _awsNetworkmanagerAttachmentAccepterSensitive = <String>{};

/// Factory wrapper for `aws_networkmanager_attachment_accepter`.
final class AwsNetworkmanagerAttachmentAccepter extends Resource {
  static const String tfType = 'aws_networkmanager_attachment_accepter';

  AwsNetworkmanagerAttachmentAccepter({
    required super.localName,
    required TfArg<String> attachmentId,
    required TfArg<String> attachmentType,
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
}
