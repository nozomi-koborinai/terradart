// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_pinpoint_gcm_channel`.
const Set<String> _awsPinpointGcmChannelSensitive = <String>{
  'api_key',
  'service_json',
};

/// Pinpoint Gcm Channel Default Authentication enum for `default_authentication_method`.
extension type const PinpointGcmChannelDefaultAuthenticationMethod._(
  TfArg<String> _
) implements TfArg<String> {
  PinpointGcmChannelDefaultAuthenticationMethod.variable(String name)
    : this._(TfArg.variable(name));
  PinpointGcmChannelDefaultAuthenticationMethod.expression(String template)
    : this._(TfArg.expression(template));
  const PinpointGcmChannelDefaultAuthenticationMethod.arg(TfArg<String> arg)
    : this._(arg);

  static const key = PinpointGcmChannelDefaultAuthenticationMethod._(
    TfArgLiteral('KEY'),
  );
  static const token = PinpointGcmChannelDefaultAuthenticationMethod._(
    TfArgLiteral('TOKEN'),
  );

  static const List<PinpointGcmChannelDefaultAuthenticationMethod> values = [
    key,
    token,
  ];
}

/// Exactly one of `api_key`, `service_json` on `aws_pinpoint_gcm_channel`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.apiKey(...)`.
sealed class PinpointGcmChannelCredentials {
  const PinpointGcmChannelCredentials();

  /// Sets `api_key`.
  const factory PinpointGcmChannelCredentials.apiKey(TfArg<String> apiKey) =
      PinpointGcmChannelCredentialsApiKey;

  /// Sets `service_json`.
  const factory PinpointGcmChannelCredentials.serviceJson(
    TfArg<String> serviceJson,
  ) = PinpointGcmChannelCredentialsServiceJson;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [PinpointGcmChannelCredentials.apiKey] choice: sets `api_key`.
final class PinpointGcmChannelCredentialsApiKey
    extends PinpointGcmChannelCredentials {
  const PinpointGcmChannelCredentialsApiKey(this.apiKey);

  final TfArg<String> apiKey;

  @override
  String get blockKey => 'api_key';

  @override
  Map<String, Object?> encode() => {'api_key': apiKey.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'api_key': apiKey};
}

/// The [PinpointGcmChannelCredentials.serviceJson] choice: sets `service_json`.
final class PinpointGcmChannelCredentialsServiceJson
    extends PinpointGcmChannelCredentials {
  const PinpointGcmChannelCredentialsServiceJson(this.serviceJson);

  final TfArg<String> serviceJson;

  @override
  String get blockKey => 'service_json';

  @override
  Map<String, Object?> encode() => {'service_json': serviceJson.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'service_json': serviceJson};
}

/// Factory wrapper for `aws_pinpoint_gcm_channel`.
final class AwsPinpointGcmChannel extends Resource {
  static const String tfType = 'aws_pinpoint_gcm_channel';

  AwsPinpointGcmChannel(
    super.localName, {
    required PinpointGcmChannelCredentials credentials,
    required TfArg<String> applicationId,
    PinpointGcmChannelDefaultAuthenticationMethod? defaultAuthenticationMethod,
    TfArg<bool>? enabled,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...credentials.argMap,
           'application_id': applicationId,
           'default_authentication_method': ?defaultAuthenticationMethod,
           'enabled': ?enabled,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsPinpointGcmChannelSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsPinpointGcmChannel>`.
  RefTo<AwsPinpointGcmChannel> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_key` attribute.
  TfRef<String> get apiKey => TfRef.attribute<String>(this, 'api_key');

  /// Reference to `application_id` attribute.
  TfRef<String> get applicationId =>
      TfRef.attribute<String>(this, 'application_id');

  /// Reference to `default_authentication_method` attribute.
  TfRef<String> get defaultAuthenticationMethod =>
      TfRef.attribute<String>(this, 'default_authentication_method');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `service_json` attribute.
  TfRef<String> get serviceJson =>
      TfRef.attribute<String>(this, 'service_json');
}
