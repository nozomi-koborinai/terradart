// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_networkmanager_attachment_routing_policy_label`.
const Set<String> _awsNetworkmanagerAttachmentRoutingPolicyLabelSensitive =
    <String>{};

/// Factory wrapper for `aws_networkmanager_attachment_routing_policy_label`.
final class AwsNetworkmanagerAttachmentRoutingPolicyLabel extends Resource {
  static const String tfType =
      'aws_networkmanager_attachment_routing_policy_label';

  AwsNetworkmanagerAttachmentRoutingPolicyLabel({
    required super.localName,
    required TfArg<String> attachmentId,
    required TfArg<String> coreNetworkId,
    required TfArg<String> routingPolicyLabel,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'attachment_id': attachmentId,
           'core_network_id': coreNetworkId,
           'routing_policy_label': routingPolicyLabel,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsNetworkmanagerAttachmentRoutingPolicyLabelSensitive;
}
