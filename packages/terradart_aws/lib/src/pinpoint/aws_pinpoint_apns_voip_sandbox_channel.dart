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

  /// Reference to `application_id` attribute.
  TfRef<String> get applicationId =>
      TfRef.attribute<String>(this, 'application_id');

  /// Reference to `bundle_id` attribute.
  TfRef<String> get bundleId => TfRef.attribute<String>(this, 'bundle_id');

  /// Reference to `certificate` attribute.
  TfRef<String> get certificate => TfRef.attribute<String>(this, 'certificate');

  /// Reference to `default_authentication_method` attribute.
  TfRef<String> get defaultAuthenticationMethod =>
      TfRef.attribute<String>(this, 'default_authentication_method');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `private_key` attribute.
  TfRef<String> get privateKey => TfRef.attribute<String>(this, 'private_key');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `team_id` attribute.
  TfRef<String> get teamId => TfRef.attribute<String>(this, 'team_id');

  /// Reference to `token_key` attribute.
  TfRef<String> get tokenKey => TfRef.attribute<String>(this, 'token_key');

  /// Reference to `token_key_id` attribute.
  TfRef<String> get tokenKeyId => TfRef.attribute<String>(this, 'token_key_id');
}
