// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_network_interface_attachment`.
const Set<String> _awsNetworkInterfaceAttachmentSensitive = <String>{};

/// Factory wrapper for `aws_network_interface_attachment`.
final class AwsNetworkInterfaceAttachment extends Resource {
  static const String tfType = 'aws_network_interface_attachment';

  AwsNetworkInterfaceAttachment({
    required super.localName,
    required TfArg<num> deviceIndex,
    required TfArg<String> instanceId,
    TfArg<num>? networkCardIndex,
    required TfArg<String> networkInterfaceId,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'device_index': deviceIndex,
           'instance_id': instanceId,
           if (networkCardIndex != null) 'network_card_index': networkCardIndex,
           'network_interface_id': networkInterfaceId,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNetworkInterfaceAttachmentSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `attachment_id` attribute.
  TfRef<String> get attachmentId =>
      TfRef.attribute<String>(this, 'attachment_id');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
