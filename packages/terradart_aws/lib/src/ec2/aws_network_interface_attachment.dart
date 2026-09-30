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
           'network_card_index': ?networkCardIndex,
           'network_interface_id': networkInterfaceId,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNetworkInterfaceAttachmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsNetworkInterfaceAttachment>`.
  RefTo<AwsNetworkInterfaceAttachment> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `attachment_id` attribute.
  TfRef<String> get attachmentId =>
      TfRef.attribute<String>(this, 'attachment_id');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `device_index` attribute.
  TfRef<num> get deviceIndexRef => TfRef.attribute<num>(this, 'device_index');

  /// Reference to `instance_id` attribute.
  TfRef<String> get instanceIdRef =>
      TfRef.attribute<String>(this, 'instance_id');

  /// Reference to `network_card_index` attribute.
  TfRef<num> get networkCardIndexRef =>
      TfRef.attribute<num>(this, 'network_card_index');

  /// Reference to `network_interface_id` attribute.
  TfRef<String> get networkInterfaceIdRef =>
      TfRef.attribute<String>(this, 'network_interface_id');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
