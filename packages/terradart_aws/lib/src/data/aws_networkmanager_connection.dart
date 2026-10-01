// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../networkmanager/aws_networkmanager_connection.dart';

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
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNetworkmanagerConnectionSensitive;

  /// A reference to the `aws_networkmanager_connection` this data source reads, for
  /// arguments typed `RefTo<AwsNetworkmanagerConnection>`.
  RefTo<AwsNetworkmanagerConnection> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

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

  /// Reference to `connection_id` attribute.
  TfRef<String> get connectionId =>
      TfRef.attribute<String>(this, 'connection_id');

  /// Reference to `global_network_id` attribute.
  TfRef<String> get globalNetworkId =>
      TfRef.attribute<String>(this, 'global_network_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
