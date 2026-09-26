// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_pinpoint_apns_channel`.
const Set<String> _awsPinpointApnsChannelSensitive = <String>{
  'bundle_id',
  'certificate',
  'private_key',
  'team_id',
  'token_key',
  'token_key_id',
};

/// Factory wrapper for `aws_pinpoint_apns_channel`.
final class AwsPinpointApnsChannel extends Resource {
  static const String tfType = 'aws_pinpoint_apns_channel';

  AwsPinpointApnsChannel({
    required super.localName,
    required TfArg<String> applicationId,
    TfArg<String>? bundleId,
    TfArg<String>? certificate,
    TfArg<String>? defaultAuthenticationMethod,
    TfArg<bool>? enabled,
    TfArg<String>? privateKey,
    TfArg<String>? region,
    TfArg<String>? teamId,
    TfArg<String>? tokenKey,
    TfArg<String>? tokenKeyId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_id': applicationId,
           if (bundleId != null) 'bundle_id': bundleId,
           if (certificate != null) 'certificate': certificate,
           if (defaultAuthenticationMethod != null)
             'default_authentication_method': defaultAuthenticationMethod,
           if (enabled != null) 'enabled': enabled,
           if (privateKey != null) 'private_key': privateKey,
           if (region != null) 'region': region,
           if (teamId != null) 'team_id': teamId,
           if (tokenKey != null) 'token_key': tokenKey,
           if (tokenKeyId != null) 'token_key_id': tokenKeyId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsPinpointApnsChannelSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
