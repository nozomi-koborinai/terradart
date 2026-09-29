// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_pinpoint_apns_voip_sandbox_channel`.
const Set<String> _awsPinpointApnsVoipSandboxChannelSensitive = <String>{
  'bundle_id',
  'certificate',
  'private_key',
  'team_id',
  'token_key',
  'token_key_id',
};

/// Factory wrapper for `aws_pinpoint_apns_voip_sandbox_channel`.
final class AwsPinpointApnsVoipSandboxChannel extends Resource {
  static const String tfType = 'aws_pinpoint_apns_voip_sandbox_channel';

  AwsPinpointApnsVoipSandboxChannel({
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
           'bundle_id': ?bundleId,
           'certificate': ?certificate,
           'default_authentication_method': ?defaultAuthenticationMethod,
           'enabled': ?enabled,
           'private_key': ?privateKey,
           'region': ?region,
           'team_id': ?teamId,
           'token_key': ?tokenKey,
           'token_key_id': ?tokenKeyId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsPinpointApnsVoipSandboxChannelSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsPinpointApnsVoipSandboxChannel>`.
  RefTo<AwsPinpointApnsVoipSandboxChannel> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
