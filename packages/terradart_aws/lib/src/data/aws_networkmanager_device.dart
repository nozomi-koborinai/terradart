// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_networkmanager_device`.
const Set<String> _awsNetworkmanagerDeviceSensitive = <String>{};

/// Factory wrapper for `aws_networkmanager_device`.
final class DataAwsNetworkmanagerDevice extends Data {
  static const String tfType = 'aws_networkmanager_device';

  DataAwsNetworkmanagerDevice({
    required super.localName,
    required TfArg<String> deviceId,
    required TfArg<String> globalNetworkId,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'device_id': deviceId,
           'global_network_id': globalNetworkId,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNetworkmanagerDeviceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `aws_location` attribute.
  TfRef<List<Map<String, Object?>>> get awsLocation =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'aws_location');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `location` attribute.
  TfRef<List<Map<String, Object?>>> get location =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'location');

  /// Reference to `model` attribute.
  TfRef<String> get model => TfRef.attribute<String>(this, 'model');

  /// Reference to `serial_number` attribute.
  TfRef<String> get serialNumber =>
      TfRef.attribute<String>(this, 'serial_number');

  /// Reference to `site_id` attribute.
  TfRef<String> get siteId => TfRef.attribute<String>(this, 'site_id');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `vendor` attribute.
  TfRef<String> get vendor => TfRef.attribute<String>(this, 'vendor');
}
