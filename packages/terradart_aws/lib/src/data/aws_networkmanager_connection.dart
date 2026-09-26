// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_networkmanager_connection`.
const Set<String> _awsNetworkmanagerConnectionSensitive = <String>{};

/// Factory wrapper for `aws_networkmanager_connection`.
final class DataAwsNetworkmanagerConnection extends Data {
  static const String tfType = 'aws_networkmanager_connection';

  DataAwsNetworkmanagerConnection({
    required super.localName,
    required TfArg<String> connectionId,
    required TfArg<String> globalNetworkId,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'connection_id': connectionId,
           'global_network_id': globalNetworkId,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNetworkmanagerConnectionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `connected_device_id` attribute.
  TfRef<String> get connectedDeviceId =>
      TfRef.attribute<String>(this, 'connected_device_id');

  /// Reference to `connected_link_id` attribute.
  TfRef<String> get connectedLinkId =>
      TfRef.attribute<String>(this, 'connected_link_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `device_id` attribute.
  TfRef<String> get deviceId => TfRef.attribute<String>(this, 'device_id');

  /// Reference to `link_id` attribute.
  TfRef<String> get linkId => TfRef.attribute<String>(this, 'link_id');
}
