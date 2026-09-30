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
           'enabled': ?enabled,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsPinpointAdmChannelSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsPinpointAdmChannel>`.
  RefTo<AwsPinpointAdmChannel> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `application_id` attribute.
  TfRef<String> get applicationIdRef =>
      TfRef.attribute<String>(this, 'application_id');

  /// Reference to `client_id` attribute.
  TfRef<String> get clientIdRef => TfRef.attribute<String>(this, 'client_id');

  /// Reference to `client_secret` attribute.
  TfRef<String> get clientSecretRef =>
      TfRef.attribute<String>(this, 'client_secret');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabledRef => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
