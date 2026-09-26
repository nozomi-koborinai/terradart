// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_network_interface_sg_attachment`.
const Set<String> _awsNetworkInterfaceSgAttachmentSensitive = <String>{};

/// Factory wrapper for `aws_network_interface_sg_attachment`.
final class AwsNetworkInterfaceSgAttachment extends Resource {
  static const String tfType = 'aws_network_interface_sg_attachment';

  AwsNetworkInterfaceSgAttachment({
    required super.localName,
    required TfArg<String> networkInterfaceId,
    TfArg<String>? region,
    required TfArg<String> securityGroupId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'network_interface_id': networkInterfaceId,
           if (region != null) 'region': region,
           'security_group_id': securityGroupId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNetworkInterfaceSgAttachmentSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
