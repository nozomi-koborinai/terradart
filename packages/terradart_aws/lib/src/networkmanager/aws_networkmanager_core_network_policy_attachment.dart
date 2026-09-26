// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_networkmanager_core_network_policy_attachment`.
const Set<String> _awsNetworkmanagerCoreNetworkPolicyAttachmentSensitive =
    <String>{};

/// Factory wrapper for `aws_networkmanager_core_network_policy_attachment`.
final class AwsNetworkmanagerCoreNetworkPolicyAttachment extends Resource {
  static const String tfType =
      'aws_networkmanager_core_network_policy_attachment';

  AwsNetworkmanagerCoreNetworkPolicyAttachment({
    required super.localName,
    required TfArg<String> coreNetworkId,
    required TfArg<String> policyDocument,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'core_network_id': coreNetworkId,
           'policy_document': policyDocument,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsNetworkmanagerCoreNetworkPolicyAttachmentSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}
