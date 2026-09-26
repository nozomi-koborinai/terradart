// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_networkmanager_devices`.
const Set<String> _awsNetworkmanagerDevicesSensitive = <String>{};

/// Factory wrapper for `aws_networkmanager_devices`.
final class DataAwsNetworkmanagerDevices extends Data {
  static const String tfType = 'aws_networkmanager_devices';

  DataAwsNetworkmanagerDevices({
    required super.localName,
    required TfArg<String> globalNetworkId,
    TfArg<String>? siteId,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'global_network_id': globalNetworkId,
           if (siteId != null) 'site_id': siteId,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNetworkmanagerDevicesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ids` attribute.
  TfRef<List<String>> get ids => TfRef.attribute<List<String>>(this, 'ids');
}
