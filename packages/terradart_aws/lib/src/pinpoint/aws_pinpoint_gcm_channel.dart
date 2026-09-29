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
enum PinpointGcmChannelDefaultAuthenticationMethod implements TerraformEnum {
  key('KEY'),
  token('TOKEN');

  const PinpointGcmChannelDefaultAuthenticationMethod(this.terraformValue);
  @override
  final String terraformValue;
}

/// Exactly one of `api_key`, `service_json` on `aws_pinpoint_gcm_channel`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.apiKey(...)`.
sealed class PinpointGcmChannelApiKeyOrServiceJson {
  const PinpointGcmChannelApiKeyOrServiceJson();

  /// Sets `api_key`.
  const factory PinpointGcmChannelApiKeyOrServiceJson.apiKey(
    TfArg<String> apiKey,
  ) = PinpointGcmChannelApiKeyOrServiceJsonApiKey;

  /// Sets `service_json`.
  const factory PinpointGcmChannelApiKeyOrServiceJson.serviceJson(
    TfArg<String> serviceJson,
  ) = PinpointGcmChannelApiKeyOrServiceJsonServiceJson;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [PinpointGcmChannelApiKeyOrServiceJson.apiKey] choice: sets `api_key`.
final class PinpointGcmChannelApiKeyOrServiceJsonApiKey
    extends PinpointGcmChannelApiKeyOrServiceJson {
  const PinpointGcmChannelApiKeyOrServiceJsonApiKey(this.apiKey);

  final TfArg<String> apiKey;

  @override
  String get blockKey => 'api_key';

  @override
  Map<String, Object?> encode() => {'api_key': apiKey.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'api_key': apiKey};
}

/// The [PinpointGcmChannelApiKeyOrServiceJson.serviceJson] choice: sets `service_json`.
final class PinpointGcmChannelApiKeyOrServiceJsonServiceJson
    extends PinpointGcmChannelApiKeyOrServiceJson {
  const PinpointGcmChannelApiKeyOrServiceJsonServiceJson(this.serviceJson);

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

  AwsPinpointGcmChannel({
    required super.localName,
    required PinpointGcmChannelApiKeyOrServiceJson apiKeyOrServiceJson,
    required TfArg<String> applicationId,
    TfArg<PinpointGcmChannelDefaultAuthenticationMethod>?
    defaultAuthenticationMethod,
    TfArg<bool>? enabled,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...apiKeyOrServiceJson.argMap,
           'application_id': applicationId,
           if (defaultAuthenticationMethod != null)
             'default_authentication_method': defaultAuthenticationMethod,
           if (enabled != null) 'enabled': enabled,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsPinpointGcmChannelSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsPinpointGcmChannel>`.
  RefTo<AwsPinpointGcmChannel> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
