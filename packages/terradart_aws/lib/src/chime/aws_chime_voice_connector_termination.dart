// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_chime_voice_connector_termination`.
const Set<String> _awsChimeVoiceConnectorTerminationSensitive = <String>{};

/// Factory wrapper for `aws_chime_voice_connector_termination`.
final class AwsChimeVoiceConnectorTermination extends Resource {
  static const String tfType = 'aws_chime_voice_connector_termination';

  AwsChimeVoiceConnectorTermination({
    required super.localName,
    required TfArg<List<String>> callingRegions,
    required TfArg<List<String>> cidrAllowList,
    TfArg<num>? cpsLimit,
    TfArg<String>? defaultPhoneNumber,
    TfArg<bool>? disabled,
    TfArg<String>? region,
    required TfArg<String> voiceConnectorId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'calling_regions': callingRegions,
           'cidr_allow_list': cidrAllowList,
           if (cpsLimit != null) 'cps_limit': cpsLimit,
           if (defaultPhoneNumber != null)
             'default_phone_number': defaultPhoneNumber,
           if (disabled != null) 'disabled': disabled,
           if (region != null) 'region': region,
           'voice_connector_id': voiceConnectorId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsChimeVoiceConnectorTerminationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
