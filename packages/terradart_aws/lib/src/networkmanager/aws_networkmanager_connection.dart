// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_networkmanager_connection`.
const Set<String> _awsNetworkmanagerConnectionSensitive = <String>{};

/// Factory wrapper for `aws_networkmanager_connection`.
final class AwsNetworkmanagerConnection extends Resource {
  static const String tfType = 'aws_networkmanager_connection';

  AwsNetworkmanagerConnection({
    required super.localName,
    required TfArg<String> connectedDeviceId,
    TfArg<String>? connectedLinkId,
    TfArg<String>? description,
    required TfArg<String> deviceId,
    required TfArg<String> globalNetworkId,
    TfArg<String>? linkId,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'connected_device_id': connectedDeviceId,
           if (connectedLinkId != null) 'connected_link_id': connectedLinkId,
           if (description != null) 'description': description,
           'device_id': deviceId,
           'global_network_id': globalNetworkId,
           if (linkId != null) 'link_id': linkId,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNetworkmanagerConnectionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
