// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_pinpoint_gcm_channel`.
const Set<String> _awsPinpointGcmChannelSensitive = <String>{
  'api_key',
  'service_json',
};

/// Factory wrapper for `aws_pinpoint_gcm_channel`.
final class AwsPinpointGcmChannel extends Resource {
  static const String tfType = 'aws_pinpoint_gcm_channel';

  AwsPinpointGcmChannel({
    required super.localName,
    TfArg<String>? apiKey,
    required TfArg<String> applicationId,
    TfArg<String>? defaultAuthenticationMethod,
    TfArg<bool>? enabled,
    TfArg<String>? region,
    TfArg<String>? serviceJson,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (apiKey != null) 'api_key': apiKey,
           'application_id': applicationId,
           if (defaultAuthenticationMethod != null)
             'default_authentication_method': defaultAuthenticationMethod,
           if (enabled != null) 'enabled': enabled,
           if (region != null) 'region': region,
           if (serviceJson != null) 'service_json': serviceJson,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsPinpointGcmChannelSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
