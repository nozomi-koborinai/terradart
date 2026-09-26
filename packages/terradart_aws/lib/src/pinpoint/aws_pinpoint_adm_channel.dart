// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_pinpoint_adm_channel`.
const Set<String> _awsPinpointAdmChannelSensitive = <String>{
  'client_id',
  'client_secret',
};

/// Factory wrapper for `aws_pinpoint_adm_channel`.
final class AwsPinpointAdmChannel extends Resource {
  static const String tfType = 'aws_pinpoint_adm_channel';

  AwsPinpointAdmChannel({
    required super.localName,
    required TfArg<String> applicationId,
    required TfArg<String> clientId,
    required TfArg<String> clientSecret,
    TfArg<bool>? enabled,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_id': applicationId,
           'client_id': clientId,
           'client_secret': clientSecret,
           if (enabled != null) 'enabled': enabled,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsPinpointAdmChannelSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
