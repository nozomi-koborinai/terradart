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
           'connected_link_id': ?connectedLinkId,
           'description': ?description,
           'device_id': deviceId,
           'global_network_id': globalNetworkId,
           'link_id': ?linkId,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNetworkmanagerConnectionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsNetworkmanagerConnection>`.
  RefTo<AwsNetworkmanagerConnection> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `connected_device_id` attribute.
  TfRef<String> get connectedDeviceIdRef =>
      TfRef.attribute<String>(this, 'connected_device_id');

  /// Reference to `connected_link_id` attribute.
  TfRef<String> get connectedLinkIdRef =>
      TfRef.attribute<String>(this, 'connected_link_id');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `device_id` attribute.
  TfRef<String> get deviceIdRef => TfRef.attribute<String>(this, 'device_id');

  /// Reference to `global_network_id` attribute.
  TfRef<String> get globalNetworkIdRef =>
      TfRef.attribute<String>(this, 'global_network_id');

  /// Reference to `link_id` attribute.
  TfRef<String> get linkIdRef => TfRef.attribute<String>(this, 'link_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
