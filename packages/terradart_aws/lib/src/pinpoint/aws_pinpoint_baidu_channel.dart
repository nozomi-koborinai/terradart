// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_pinpoint_baidu_channel`.
const Set<String> _awsPinpointBaiduChannelSensitive = <String>{
  'api_key',
  'secret_key',
};

/// Factory wrapper for `aws_pinpoint_baidu_channel`.
final class AwsPinpointBaiduChannel extends Resource {
  static const String tfType = 'aws_pinpoint_baidu_channel';

  AwsPinpointBaiduChannel({
    required super.localName,
    required TfArg<String> apiKey,
    required TfArg<String> applicationId,
    TfArg<bool>? enabled,
    TfArg<String>? region,
    required TfArg<String> secretKey,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_key': apiKey,
           'application_id': applicationId,
           if (enabled != null) 'enabled': enabled,
           if (region != null) 'region': region,
           'secret_key': secretKey,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsPinpointBaiduChannelSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
