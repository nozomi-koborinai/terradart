// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_networkmanager_connections`.
const Set<String> _awsNetworkmanagerConnectionsSensitive = <String>{};

/// Factory wrapper for `aws_networkmanager_connections`.
final class DataAwsNetworkmanagerConnections extends Data {
  static const String tfType = 'aws_networkmanager_connections';

  DataAwsNetworkmanagerConnections({
    required super.localName,
    TfArg<String>? deviceId,
    required TfArg<String> globalNetworkId,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'device_id': ?deviceId,
           'global_network_id': globalNetworkId,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNetworkmanagerConnectionsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ids` attribute.
  TfRef<List<String>> get ids => TfRef.attribute<List<String>>(this, 'ids');

  /// Reference to `device_id` attribute.
  TfRef<String> get deviceId => TfRef.attribute<String>(this, 'device_id');

  /// Reference to `global_network_id` attribute.
  TfRef<String> get globalNetworkId =>
      TfRef.attribute<String>(this, 'global_network_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
